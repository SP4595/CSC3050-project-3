#include <cstdio>
#include <cstdlib>
#include <string>
#include <iostream>

#include <elfio/elfio.hpp>

#include "MemoryManager.h"
#include "simulator.h"
#include "Cache.h"
#include "Debug.h"

using namespace std;

bool parse_params(int argc, char** argv);
void load_elf_to_memory(ELFIO::elfio* reader, MemoryManager* memory);

char* elf_file = nullptr;
uint32_t stack_base_addr = 0x80000000;
uint32_t stack_size = 0x400000;

// Initialize memory and cache
MemoryManager *memory = nullptr;

int main(int argc, char** argv) {
  // not necessary to implement, can delete
  if (!parse_params(argc, argv)) {
    exit(-1);
  }

  // initialize memory and cache

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
  Cache *l1cache = nullptr, *l2cache = nullptr, *l3cache = nullptr;

  // Exclusive? //

  bool isExclusive = true;

  memory = new MemoryManager();
  l3cache = new Cache(memory, l3policy, nullptr, true, true, isExclusive);
  l2cache = new Cache(memory, l2policy, l3cache, true, true, isExclusive);
  l1cache = new Cache(memory, l1policy, l2cache, true, true, isExclusive);
  memory->setCache(l1cache);

  Simulator simulator(memory); // set simulator
  
  // load test code //

  elf_file = argv[1]; // real test
  //elf_file = "../test-release/qsort.riscv"; // just for debug
  /////////////////////////

  // read elf file
  ELFIO::elfio reader;
  if (!reader.load(elf_file)) {
    fprintf(stderr, "Fail to load ELF file %s!\n", elf_file);
    return -1;
  }

  load_elf_to_memory(&reader, memory);

  // get entry point
  simulator.pc = reader.get_entry();

  // init stack
  simulator.init_stack(stack_base_addr, stack_size);
  simulator.simulate();

  return 0;
}

// not necessary to implement, can delete
bool parse_params(int argc, char** argv) {
  // Read Parameters implementation
  return true;
}

// load elf file to memory
void load_elf_to_memory(ELFIO::elfio* reader, MemoryManager* memory) {
  ELFIO::Elf_Half seg_num = reader->segments.size();
  for (int i = 0; i < seg_num; ++i) {
    const ELFIO::segment* pseg = reader->segments[i];

    uint32_t memory_size = pseg->get_memory_size();
    uint32_t offset = pseg->get_virtual_address();

    // check if the address space is larger than 32bit
    if (offset + memory_size > 0xFFFFFFFF) {
      fprintf(
          stderr,
          "ELF address space larger than 32bit! Seg %d has max addr of 0x%x\n",
          i, offset + memory_size);
      exit(-1);
    }

    uint32_t filesz = pseg->get_file_size();
    uint32_t memsz = pseg->get_memory_size();
    uint32_t addr = (uint32_t)pseg->get_virtual_address();

    for (uint32_t p = addr; p < addr + memsz; ++p) {
      if (!memory->isPageExist(p)) {
        memory->addPage(p);
      }

      if (p < addr + filesz) {
        memory->setByte(p, pseg->get_data()[p - addr]);
      } else {
        memory->setByte(p, 0);
      }
    }
  }
}
