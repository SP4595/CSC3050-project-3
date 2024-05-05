cmake_minimum_required(VERSION 3.0)

project(RISCV-Simulator)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "-O0 -Wall")

include_directories(${CMAKE_SOURCE_DIR}/include)

# 1. single value excutable

#add_executable(
#    CacheSin
#    src/MainSinCache.cpp 
#    src/MemoryManager.cpp 
#    src/Cache.cpp
#)

# 2. multi value excutable

add_executable(
    CacheMul
    src/MainMulCache.cpp
    src/MemoryManager.cpp
    src/Cache.cpp
)

# 3. CPU embedding

#add_executable(
#    Simulator 
#    src/MainCPU.cpp 
#    src/Simulator.cpp 
#    src/MemoryManager.cpp 
#    src/Cache.cpp
#)