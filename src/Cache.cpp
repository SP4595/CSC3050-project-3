#include <cstdio>
#include <cstdlib>
#include <cmath>

#include "Cache.h"

Cache::Cache(MemoryManager *manager, Policy policy, Cache *lowerCache, bool writeBack, bool writeAllocate, bool isExclusive, bool isVictom) {
  this->referenceCounter = 0;
  this->memory = manager;
  this->policy = policy;
  this->lowerCache = lowerCache;
  if (!this->isPolicyValid()) {
    fprintf(stderr, "Policy invalid!\n");
    exit(-1);
  }
  this->initCache();
  this->statistics.numRead = 0;
  this->statistics.numWrite = 0;
  this->statistics.numHit = 0;
  this->statistics.numMiss = 0;
  this->statistics.totalCycles = 0;
  this->writeBack = writeBack;
  this->writeAllocate = writeAllocate;
  this->isExclusive = isExclusive;
  this->isVictom = isVictom;
  if (policy.hasVictom) { // create victom cache
    Policy victomPolicy;

    victomPolicy.cacheSize = 8 * 64;
    victomPolicy.blockSize = 64;
    victomPolicy.blockNum = victomPolicy.cacheSize / victomPolicy.blockSize;
    victomPolicy.associativity = 8;
    victomPolicy.hitLatency = 1;
    victomPolicy.missLatency = 20;
    
    victomCache = new Cache(manager, victomPolicy, lowerCache, true, true, true, true);
  }
}

bool Cache::inCache(uint32_t addr) {
  /**
   * check if a address is in address
  */
  return getBlockId(addr) != static_cast<uint32_t>(-1) ? true : false; // can we get block id?
}

uint32_t Cache::getBlockId(uint32_t addr) {
  /**
   * associtive search a block
   * - only for valid data (getReplacementBlockId is for invalid space)
   * - return -1 for not in the set
  */
  uint32_t tag = this->getTag(addr);
  uint32_t id = this->getId(addr); 
  // printf("0x%x 0x%x 0x%x\n", addr, tag, id);
  // iterate over the given set
  for (uint32_t i = id * policy.associativity; i < (id + 1) * policy.associativity; ++i) { // associtive serch in the set
    if (this->blocks[i].id != id) {
      //fprintf(stderr, "Inconsistent ID in block %d\n", i);
      //exit(-1);
    }
    if (this->blocks[i].valid && this->blocks[i].tag == tag) {
      return i;
    }
  }
  return -1;
}

uint8_t Cache::getByte(uint32_t addr, uint32_t *cycles) {
  /**
   * main reference of getbyte
  */
  this->referenceCounter++;
  this->statistics.numRead++;

  // If in cache, return directly
  int blockId;
  if ((blockId = this->getBlockId(addr)) != -1) {
    uint32_t offset = this->getOffset(addr);
    this->statistics.numHit++;
    this->statistics.totalCycles += this->policy.hitLatency;
    this->blocks[blockId].lastReference = this->referenceCounter;
    if (cycles) *cycles = this->policy.hitLatency;
    return this->blocks[blockId].data[offset];
  }

  // Else, find the data in memory or other level of cache
  this->loadBlockFromLowerLevel(addr, cycles);

  // The block is in top level cache now, return directly
  if ((blockId = this->getBlockId(addr)) != -1) {
    uint32_t offset = this->getOffset(addr);
    this->blocks[blockId].lastReference = this->referenceCounter;
    return this->blocks[blockId].data[offset];
  } else {
    fprintf(stderr, "Error: data not in top level cache!\n");
    exit(-1);
  }
}

void Cache::setByte(uint32_t addr, uint8_t val, uint32_t *cycles) {
  /**
   * write byte to the cache (dirty bit = true)
  */
  this->referenceCounter++;
  this->statistics.numWrite++;
  int blockId;

  // If in cache, write to it directly

  if ((blockId = this->getBlockId(addr)) != -1) { // in the cache
    uint32_t offset = this->getOffset(addr);
    this->statistics.numHit++;
    this->statistics.totalCycles += this->policy.hitLatency;
    this->blocks[blockId].modified = true; // dirty bit
    this->blocks[blockId].lastReference = this->referenceCounter; // count for LRU
    this->blocks[blockId].data[offset] = val; // write
    //if (!this->writeBack) {
    //  this->writeBlockToLowerLevel(this->blocks[blockId]);
    //  this->statistics.totalCycles += this->policy.missLatency;
    //}
    if (cycles) *cycles = this->policy.hitLatency;
    return;
  }

  // Else, load the data from cache
  

  if (this->writeAllocate) {
    this->loadBlockFromLowerLevel(addr, cycles);

    if ((blockId = this->getBlockId(addr)) != -1) {
      uint32_t offset = this->getOffset(addr);
      this->blocks[blockId].modified = true;
      this->blocks[blockId].lastReference = this->referenceCounter;
      this->blocks[blockId].data[offset] = val;
      return;
    } else {
      fprintf(stderr, "Error: data not in top level cache!\n");
      exit(-1);
    }
  } else {
    if (this->lowerCache == nullptr) {
      this->memory->setByteNoCache(addr, val);
    } else {
      this->lowerCache->setByte(addr, val);
    }
  }
}

void Cache::initCache() {
  /**
   * initialize the cache blocks
  */
  this->blocks = std::vector<Block>(policy.blockNum);
  for (uint32_t i = 0; i < this->blocks.size(); ++i) {
    Block &b = this->blocks[i];
    b.valid = false;
    b.modified = false;
    b.size = policy.blockSize;
    b.tag = 0;
    b.id = i / policy.associativity;
    b.lastReference = 0;
    b.data = std::vector<uint8_t>(b.size);
  }
}

void Cache::loadBlockFromLowerLevel(uint32_t addr, uint32_t *cycles) {
  /**
   * if isExclusive, we have to recognize if valid is false
  */
  uint32_t blockSize = this->policy.blockSize;

  // Initialize new block from memory
  Block b;
  b.valid = true;
  b.modified = false;
  b.tag = this->getTag(addr);
  b.id = this->getId(addr);
  b.size = blockSize;
  b.data = std::vector<uint8_t>(b.size);
  uint32_t bits = this->log2i(blockSize);
  uint32_t mask = ~((1 << bits) - 1);
  uint32_t blockAddrBegin = addr & mask;

  int blockIdInCache = -1;

  if (policy.hasVictom) { // check if is in victom cache
    blockIdInCache = this->victomCache->getBlockId(addr);
  }

  if (blockIdInCache != -1) {
    // load from victom cache
    for (uint32_t i = blockAddrBegin; i < blockAddrBegin + blockSize; ++i) {
      b.data[i - blockAddrBegin] = this->victomCache->getByte(i, cycles);
    }
    this->statistics.totalCycles += this->victomCache->policy.hitLatency; // do not count miss
  }
  else {
    // load from lower cache
    this->statistics.numMiss++;
    this->statistics.totalCycles += this->policy.missLatency;

    for (uint32_t i = blockAddrBegin; i < blockAddrBegin + blockSize; ++i) {
      if (this->lowerCache == nullptr) {
        b.data[i - blockAddrBegin] = this->memory->getByteNoCache(i);
        if (cycles) *cycles = 100;
      } 
      else {
        b.data[i - blockAddrBegin] = this->lowerCache->getByte(i, cycles);
      }
    }

    if (isExclusive && this->lowerCache != nullptr) { // delete from lower cache
      this->lowerCache->blocks[lowerCache->getBlockId(blockAddrBegin)].valid = false; // remove from lowerlevel
    }
  }

  // Find replace block
  uint32_t id = this->getId(addr);
  uint32_t blockIdBegin = id * this->policy.associativity;
  uint32_t blockIdEnd = (id + 1) * this->policy.associativity;
  uint32_t replaceId = this->getReplacementBlockId(blockIdBegin, blockIdEnd);
  Block replaceBlock = this->blocks[replaceId];

  if (policy.hasVictom) {
    writeBlockToVictom(replaceBlock);
  }
  
  
  if (this->writeBack && replaceBlock.valid && replaceBlock.modified) { // write back to memory
    if (!isExclusive) {
      this->writeBlockToLowerLevel(replaceBlock);
    }
    else {
      uint32_t addrBegin = this->getAddr(replaceBlock);
      for (uint32_t i = 0; i < replaceBlock.size; ++i) {
        this->memory->setByteNoCache(addrBegin + i, replaceBlock.data[i]); // write back to memory
      }
    }

    this->statistics.totalCycles += this->policy.missLatency;
  }
  

  this->blocks[replaceId] = b;
  

}

uint32_t Cache::getReplacementBlockId(uint32_t begin, uint32_t end) {
  /**
   * get the block in upper cache that will be replaced
   * 
   * begin: begin of the block, end of the block
  */
  // Find invalid block first
  for (uint32_t i = begin; i < end; ++i) {
    if (!this->blocks[i].valid)
      return i;
  }

  // Otherwise use LRU
  uint32_t resultId = begin;
  uint32_t min = this->blocks[begin].lastReference;
  for (uint32_t i = begin; i < end; ++i) {
    if (this->blocks[i].lastReference < min) {
      resultId = i;
      min = this->blocks[i].lastReference;
    }
  }
  return resultId;
}

void Cache::writeBlockToVictom(Block &replaceBlock) {
  if (policy.hasVictom) { // have a victom cache, then write to victom cache
    // write back to victom cache
    uint32_t Blockid = this->victomCache->getReplacementBlockId(0, victomCache->blocks.size()); // fully associtive
    victomCache->blocks[Blockid] = replaceBlock;
  }
}

void Cache::writeBlockToLowerLevel(Cache::Block &b) {
  /**
   * write back to lower level or directly write back to memory
  */
  uint32_t addrBegin = this->getAddr(b);
    if (this->lowerCache == nullptr) {
      for (uint32_t i = 0; i < b.size; ++i) {
        this->memory->setByteNoCache(addrBegin + i, b.data[i]);
      }
    } else {
      for (uint32_t i = 0; i < b.size; ++i) {
        this->lowerCache->setByte(addrBegin + i, b.data[i]);
      }
    }
}

bool Cache::isPowerOfTwo(uint32_t n) { return n > 0 && (n & (n - 1)) == 0; }

uint32_t Cache::log2i(uint32_t val) {
  if (val == 0)
    return uint32_t(-1);
  if (val == 1)
    return 0;
  uint32_t ret = 0;
  while (val > 1) {
    val >>= 1;
    ret++;
  }
  return ret;
}

uint32_t Cache::getTag(uint32_t addr) { // the tag of the block (if we know the tag of the block, we can reconstruct address with offset)
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);
  uint32_t mask = (1 << (32 - offsetBits - idBits)) - 1;
  return (addr >> (offsetBits + idBits)) & mask;
}

uint32_t Cache::getId(uint32_t addr) { // which set?
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);
  uint32_t mask = (1 << idBits) - 1;
  return (addr >> offsetBits) & mask;
}

uint32_t Cache::getOffset(uint32_t addr) {
  uint32_t bits = log2i(policy.blockSize);
  uint32_t mask = (1 << bits) - 1;
  return addr & mask;
}

uint32_t Cache::getAddr(Cache::Block &b) {
  uint32_t offsetBits = log2i(policy.blockSize);
  uint32_t idBits = log2i(policy.blockNum / policy.associativity);
  return (b.tag << (offsetBits + idBits)) | (b.id << offsetBits);
}




void Cache::printInfo(bool verbose) {
  printf("---------- Cache Info -----------\n");
  printf("Cache Size: %d bytes\n", this->policy.cacheSize);
  printf("Block Size: %d bytes\n", this->policy.blockSize);
  printf("Block Num: %d\n", this->policy.blockNum);
  printf("Associativiy: %d\n", this->policy.associativity);
  printf("Hit Latency: %d\n", this->policy.hitLatency);
  printf("Miss Latency: %d\n", this->policy.missLatency);

  if (verbose) {
    for (int j = 0; j < this->blocks.size(); ++j) {
      const Block &b = this->blocks[j];
      printf("Block %d: tag 0x%x id %d %s %s (last ref %d)\n", j, b.tag, b.id,
             b.valid ? "valid" : "invalid",
             b.modified ? "modified" : "unmodified", b.lastReference);
      // printf("Data: ");
      // for (uint8_t d : b.data)
      // printf("%d ", d);
      // printf("\n");
    }
  }
}

void Cache::printStatistics() {
  printf("-------- STATISTICS ----------\n");
  printf("Num Read: %d\n", this->statistics.numRead);
  printf("Num Write: %d\n", this->statistics.numWrite);
  printf("Num Hit: %d\n", this->statistics.numHit);
  printf("Num Miss: %d\n", this->statistics.numMiss);
  printf("Total Cycles: %llu\n", this->statistics.totalCycles);
  if (this->lowerCache != nullptr) {
    printf("---------- LOWER CACHE ----------\n");
    this->lowerCache->printStatistics();
  }
}

bool Cache::isPolicyValid() {
  if (!this->isPowerOfTwo(policy.cacheSize)) {
    fprintf(stderr, "Invalid Cache Size %d\n", policy.cacheSize);
    return false;
  }
  if (!this->isPowerOfTwo(policy.blockSize)) {
    fprintf(stderr, "Invalid Block Size %d\n", policy.blockSize);
    return false;
  }
  if (policy.cacheSize % policy.blockSize != 0) {
    fprintf(stderr, "cacheSize %% blockSize != 0\n");
    return false;
  }
  if (policy.blockNum * policy.blockSize != policy.cacheSize) {
    fprintf(stderr, "blockNum * blockSize != cacheSize\n");
    return false;
  }
  if (policy.blockNum % policy.associativity != 0) {
    fprintf(stderr, "blockNum %% associativity != 0\n");
    return false;
  }
  return true;
}