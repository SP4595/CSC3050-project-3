/*
 * The main entry point of single level cache simulator
 * It takes a memory trace as input, and output CSV file containing miss rate
 * under various cache configurations
 *
 * Created by He, Hao at 2019-04-27
 */

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
void simulateCache(std::ofstream &csvFile, uint32_t cacheSize, uint32_t blockSize, uint32_t associativity, bool writeBack,bool writeAllocate, bool isExclusive);

bool verbose = false;
bool isSingleStep = false;
const char *traceFilePath;

int main(int argc, char **argv) {
  if (!parseParameters(argc, argv)) {
  }

  traceFilePath = "../cache-trace/trace1.trace";

  // Open CSV file and write header
  std::ofstream csvFile(std::string(traceFilePath) + ".csv");
  csvFile << "cacheSize,blockSize,associativity,writeBack,writeAllocate,"
             "missRate,totalCycles\n";

  // Cache Size: 4 Kb to 1 Mb
  for (uint32_t cacheSize = 4 * 1024; cacheSize <= 1024 * 1024; cacheSize *= 4) {
    // Block Size: 32 byte to 256 byte
    // The maximum block size is imposed by VM page size
    for (uint32_t blockSize = 32; blockSize <= 256; blockSize *= 2) {
      for (uint32_t associativity = 2; associativity <= 32; associativity *= 2) {
        uint32_t blockNum = cacheSize / blockSize;
        if (blockNum % associativity != 0)
          continue;

        simulateCache(csvFile, cacheSize, blockSize, associativity, true, true, false);
        simulateCache(csvFile, cacheSize, blockSize, associativity, true, false, false);
        simulateCache(csvFile, cacheSize, blockSize, associativity, false, true, false);
        simulateCache(csvFile, cacheSize, blockSize, associativity, false, false, false);
      }
    }
  }

  printf("Result has been written to %s\n",
         (std::string(traceFilePath) + ".csv").c_str());
  csvFile.close();
  return 0;
}

bool parseParameters(int argc, char **argv) {
  // Read Parameters
  for (int i = 1; i < argc; ++i) {
    if (argv[i][0] == '-') {
      switch (argv[i][1]) {
      case 'v':
        verbose = 1;
        break;
      case 's':
        isSingleStep = 1;
        break;
      default:
        return false;
      }
    } else {
      if (traceFilePath == nullptr) {
        traceFilePath = argv[i];
      } else {
        return false;
      }
    }
  }
  if (traceFilePath == nullptr) {
    return false;
  }
  return true;
}

void printUsage() {
  printf("Usage: CacheSim trace-file [-s] [-v]\n");
  printf("Parameters: -s single step, -v verbose output\n");
}

void simulateCache(std::ofstream &csvFile, uint32_t cacheSize, uint32_t blockSize, uint32_t associativity, bool writeBack, bool writeAllocate, bool isExclusive) {
  Cache::Policy policy;
  policy.cacheSize = cacheSize;
  policy.blockSize = blockSize;
  policy.blockNum = cacheSize / blockSize;
  policy.associativity = associativity;
  policy.hitLatency = 1;
  policy.missLatency = 8;

  // Initialize memory and cache
  MemoryManager *memory = nullptr;
  Cache *cache = nullptr;
  memory = new MemoryManager();
  cache = new Cache(memory, policy, nullptr, writeBack, writeAllocate, isExclusive);
  memory->setCache(cache);

  cache->printInfo(false);

  // Read and execute trace in cache-trace/ folder
  std::ifstream trace(traceFilePath);
  if (!trace.is_open()) {
    printf("Unable to open file %s\n", traceFilePath);
    exit(-1);
  }

  char type; //'r' for read, 'w' for write
  uint32_t addr;
  while (trace >> type >> std::hex >> addr) {
    if (verbose)
      printf("%c %x\n", type, addr);
    if (!memory->isPageExist(addr))
      memory->addPage(addr);
    switch (type) {
    case 'r':
      cache->getByte(addr);
      break;
    case 'w':
      cache->setByte(addr, 0);
      break;
    default:
      dbgprintf("Illegal type %c\n", type);
      exit(-1);
    }

    if (verbose)
      cache->printInfo(true);

    if (isSingleStep) {
      printf("Press Enter to Continue...");
      getchar();
    }
  }

  // Output Simulation Results
  cache->printStatistics();
  float missRate = (float)cache->statistics.numMiss /
                   (cache->statistics.numHit + cache->statistics.numMiss);
  csvFile << cacheSize << "," << blockSize << "," << associativity << ","
          << writeBack << "," << writeAllocate << "," << missRate << ","
          << cache->statistics.totalCycles << std::endl;

  delete cache;
  delete memory;
}