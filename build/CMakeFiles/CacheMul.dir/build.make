# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build

# Include any dependencies generated for this target.
include CMakeFiles/CacheMul.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CacheMul.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CacheMul.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CacheMul.dir/flags.make

CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.o: CMakeFiles/CacheMul.dir/flags.make
CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.o: ../src/MainMulCache.cpp
CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.o: CMakeFiles/CacheMul.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.o -MF CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.o.d -o CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.o -c /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MainMulCache.cpp

CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MainMulCache.cpp > CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.i

CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MainMulCache.cpp -o CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.s

CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.o: CMakeFiles/CacheMul.dir/flags.make
CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.o: ../src/MemoryManager.cpp
CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.o: CMakeFiles/CacheMul.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.o -MF CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.o.d -o CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.o -c /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MemoryManager.cpp

CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MemoryManager.cpp > CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.i

CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MemoryManager.cpp -o CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.s

CMakeFiles/CacheMul.dir/src/Cache.cpp.o: CMakeFiles/CacheMul.dir/flags.make
CMakeFiles/CacheMul.dir/src/Cache.cpp.o: ../src/Cache.cpp
CMakeFiles/CacheMul.dir/src/Cache.cpp.o: CMakeFiles/CacheMul.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CacheMul.dir/src/Cache.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CacheMul.dir/src/Cache.cpp.o -MF CMakeFiles/CacheMul.dir/src/Cache.cpp.o.d -o CMakeFiles/CacheMul.dir/src/Cache.cpp.o -c /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/Cache.cpp

CMakeFiles/CacheMul.dir/src/Cache.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CacheMul.dir/src/Cache.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/Cache.cpp > CMakeFiles/CacheMul.dir/src/Cache.cpp.i

CMakeFiles/CacheMul.dir/src/Cache.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CacheMul.dir/src/Cache.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/Cache.cpp -o CMakeFiles/CacheMul.dir/src/Cache.cpp.s

# Object files for target CacheMul
CacheMul_OBJECTS = \
"CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.o" \
"CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.o" \
"CMakeFiles/CacheMul.dir/src/Cache.cpp.o"

# External object files for target CacheMul
CacheMul_EXTERNAL_OBJECTS =

CacheMul: CMakeFiles/CacheMul.dir/src/MainMulCache.cpp.o
CacheMul: CMakeFiles/CacheMul.dir/src/MemoryManager.cpp.o
CacheMul: CMakeFiles/CacheMul.dir/src/Cache.cpp.o
CacheMul: CMakeFiles/CacheMul.dir/build.make
CacheMul: CMakeFiles/CacheMul.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable CacheMul"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CacheMul.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CacheMul.dir/build: CacheMul
.PHONY : CMakeFiles/CacheMul.dir/build

CMakeFiles/CacheMul.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CacheMul.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CacheMul.dir/clean

CMakeFiles/CacheMul.dir/depend:
	cd /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3 /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3 /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles/CacheMul.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CacheMul.dir/depend

