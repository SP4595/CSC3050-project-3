cmake_minimum_required(VERSION 3.1)

project(RISCV-Simulator)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "-O0 -Wall")

include_directories(${CMAKE_SOURCE_DIR}/include)

#add_executable(
#    CacheSin
#    src/MainSinCache.cpp 
#    src/MemoryManager.cpp 
#    src/Cache.cpp
#)

add_executable(
    CacheMul
    src/MainMulCache.cpp
    src/MemoryManager.cpp
    src/Cache.cpp
)