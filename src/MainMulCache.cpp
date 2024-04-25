#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

#include "Cache.h"
#include "Debug.h"
#include "MemoryManager.h"

bool parseParameters(int argc, char **argv);
void printUsage();

const char *traceFilePath;

int main(int argc, char **argv) {
  if (!parseParameters(argc, argv)) {
  }

  traceFilePath = "../cache-trace/trace1.trace";

  Cache::Policy l1policy, l2policy,l3policy;
  l1policy.cacheSize = 16 * 1024;
  l1policy.blockSize = 64;
  l1policy.blockNum = l1policy.cacheSize / l1policy.blockSize;
  l1policy.associativity = 1;
  l1policy.hitLatency = 1;
  l1policy.missLatency = 8;
  l1policy.hasVictom = true; // enable victom cache

  l2policy.cacheSize = 128 * 1024;
  l2policy.blockSize = 64;
  l2policy.blockNum = l2policy.cacheSize / l2policy.blockSize;
  l2policy.associativity = 8;
  l2policy.hitLatency = 8;
  l2policy.missLatency = 20;

  l3policy.cacheSize = 2 * 1024 * 1024;
  l3policy.blockSize = 64;
  l3policy.blockNum = l3policy.cacheSize / l3policy.blockSize;
  l3policy.associativity = 16;
  l3policy.hitLatency = 20;
  l3policy.missLatency = 100;

  // set exclusive //

  bool isExclusive = false;

  ////////////////////

  // Initialize memory and cache
  MemoryManager *memory = nullptr;
  Cache *l1cache = nullptr, *l2cache = nullptr, *l3cache = nullptr;
  memory = new MemoryManager();
  l3cache = new Cache(memory, l3policy, nullptr, true, true, isExclusive);
  l2cache = new Cache(memory, l2policy, l3cache, true, true, isExclusive);
  l1cache = new Cache(memory, l1policy, l2cache, true, true, isExclusive);
  memory->setCache(l1cache);

  // Read and execute trace in cache-trace/ folder
  std::ifstream trace(traceFilePath);
  if (!trace.is_open()) {
    printf("Unable to open file %s\n", traceFilePath);
    exit(-1);
  }

  char type; //'r' for read, 'w' for write
  uint32_t addr;
  int count = 0;
  while (trace >> type >> std::hex >> addr) {
    if (!memory->isPageExist(addr)) {
      memory->addPage(addr);
    } 
    else {
      std::cout << ++count << "/" << 232612 << " \r" << std::flush; // "\r" can move the cursor to the front of the command line
    }
    switch (type) {
      case 'r':{
        memory->getByte(addr);
        //std::cout << "r " << addr << ": " << memory->getByte(addr) << std::endl;
        break;
      }
      case 'w':{
        uint8_t temp = memory->getByte(addr);
        memory->setByte(addr, 0);
        //std::cout <<"w " << addr << ": " << temp << " -> " << memory->getByte(addr) << std::endl;
        break;
      }
      default:{
        dbgprintf("Illegal type %c\n", type);
        exit(-1);
      }
    }
  }

  // Output Simulation Results
  printf("L1 Cache:\n");
  l1cache->printStatistics();

  delete l1cache;
  delete l2cache;
  delete memory;
  return 0;
}

bool parseParameters(int argc, char **argv) {
  // Read Parameters
  if (argc > 1) {
    traceFilePath = argv[1];
    return true;
  } else {
    return false;
  }
}

void printUsage() { printf("Usage: CacheSim trace-file\n"); }