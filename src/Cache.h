#ifndef CACHE_H
#define CACHE_H

#include <cstdint>
#include <vector>

#include "MemoryManager.h"

class MemoryManager;

class Cache {
public:
  struct Policy { // policy: all configration
    // In bytes, must be power of 2
    bool hasVictom = false; // do we have victom cache?
    uint32_t cacheSize; 
    uint32_t blockSize;
    uint32_t blockNum;
    uint32_t associativity;
    uint32_t hitLatency;  // in cycles
    uint32_t missLatency; // in cycles
  };

  struct Block { // each cache block
    bool valid; 
    bool modified;
    uint32_t tag;
    uint32_t id;
    uint32_t size;
    uint32_t lastReference;
    std::vector<uint8_t> data;
    Block() {}
    Block(const Block &b) : valid(b.valid), modified(b.modified), tag(b.tag), id(b.id), size(b.size) {data = b.data;}
  };

  struct Statistics {
    uint32_t numRead;
    uint32_t numWrite;
    uint32_t numHit;
    uint32_t numMiss;
    uint64_t totalCycles;
  };

  Cache(MemoryManager *manager, Policy policy, Cache *lowerCache = nullptr, bool writeBack = true, bool writeAllocate = true, bool isExclusive = false, bool isVictom = false);

  bool inCache(uint32_t addr); // check is in
  uint32_t getBlockId(uint32_t addr); // id: the id of the block in a set
  uint8_t getByte(uint32_t addr, uint32_t *cycles = nullptr); // main read interface
  void setByte(uint32_t addr, uint8_t val, uint32_t *cycles = nullptr); // main write interface

  void printInfo(bool verbose);
  void printStatistics();
  void writeBlockToVictom(Block&);

  Statistics statistics;

private:
  uint32_t referenceCounter;
  bool writeBack;     // default true
  bool writeAllocate; // default true
  bool isExclusive = false; // is it exclusive? default false
  bool isVictom = false; // is this cache a victom cache?
  MemoryManager *memory;
  Cache *lowerCache;
  Cache *victomCache = nullptr;
  Policy policy;
  std::vector<Block> blocks; // how many blocks?

  void initCache();
  void loadBlockFromLowerLevel(uint32_t addr, uint32_t *cycles = nullptr); // get a block from lower level
  uint32_t getReplacementBlockId(uint32_t begin, uint32_t end); // find out which Block id can be replaced (begin: the begin index of a block (start of the set))
  void writeBlockToLowerLevel(Block &b); // write to lower level

  // Utility Functions
  bool isPolicyValid();
  bool isPowerOfTwo(uint32_t n);
  uint32_t log2i(uint32_t val); // return log2
  uint32_t getTag(uint32_t addr); // get tag for each possible record
  uint32_t getId(uint32_t addr); // which set it is in?
  uint32_t getOffset(uint32_t addr); // get offset of each block
  uint32_t getAddr(Block &b); // get the address
};

#endif