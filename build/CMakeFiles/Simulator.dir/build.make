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
include CMakeFiles/Simulator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Simulator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Simulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Simulator.dir/flags.make

CMakeFiles/Simulator.dir/src/MainCPU.cpp.o: CMakeFiles/Simulator.dir/flags.make
CMakeFiles/Simulator.dir/src/MainCPU.cpp.o: ../src/MainCPU.cpp
CMakeFiles/Simulator.dir/src/MainCPU.cpp.o: CMakeFiles/Simulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Simulator.dir/src/MainCPU.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Simulator.dir/src/MainCPU.cpp.o -MF CMakeFiles/Simulator.dir/src/MainCPU.cpp.o.d -o CMakeFiles/Simulator.dir/src/MainCPU.cpp.o -c /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MainCPU.cpp

CMakeFiles/Simulator.dir/src/MainCPU.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Simulator.dir/src/MainCPU.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MainCPU.cpp > CMakeFiles/Simulator.dir/src/MainCPU.cpp.i

CMakeFiles/Simulator.dir/src/MainCPU.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Simulator.dir/src/MainCPU.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MainCPU.cpp -o CMakeFiles/Simulator.dir/src/MainCPU.cpp.s

CMakeFiles/Simulator.dir/src/Simulator.cpp.o: CMakeFiles/Simulator.dir/flags.make
CMakeFiles/Simulator.dir/src/Simulator.cpp.o: ../src/Simulator.cpp
CMakeFiles/Simulator.dir/src/Simulator.cpp.o: CMakeFiles/Simulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Simulator.dir/src/Simulator.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Simulator.dir/src/Simulator.cpp.o -MF CMakeFiles/Simulator.dir/src/Simulator.cpp.o.d -o CMakeFiles/Simulator.dir/src/Simulator.cpp.o -c /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/Simulator.cpp

CMakeFiles/Simulator.dir/src/Simulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Simulator.dir/src/Simulator.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/Simulator.cpp > CMakeFiles/Simulator.dir/src/Simulator.cpp.i

CMakeFiles/Simulator.dir/src/Simulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Simulator.dir/src/Simulator.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/Simulator.cpp -o CMakeFiles/Simulator.dir/src/Simulator.cpp.s

CMakeFiles/Simulator.dir/src/MemoryManager.cpp.o: CMakeFiles/Simulator.dir/flags.make
CMakeFiles/Simulator.dir/src/MemoryManager.cpp.o: ../src/MemoryManager.cpp
CMakeFiles/Simulator.dir/src/MemoryManager.cpp.o: CMakeFiles/Simulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Simulator.dir/src/MemoryManager.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Simulator.dir/src/MemoryManager.cpp.o -MF CMakeFiles/Simulator.dir/src/MemoryManager.cpp.o.d -o CMakeFiles/Simulator.dir/src/MemoryManager.cpp.o -c /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MemoryManager.cpp

CMakeFiles/Simulator.dir/src/MemoryManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Simulator.dir/src/MemoryManager.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MemoryManager.cpp > CMakeFiles/Simulator.dir/src/MemoryManager.cpp.i

CMakeFiles/Simulator.dir/src/MemoryManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Simulator.dir/src/MemoryManager.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/MemoryManager.cpp -o CMakeFiles/Simulator.dir/src/MemoryManager.cpp.s

CMakeFiles/Simulator.dir/src/Cache.cpp.o: CMakeFiles/Simulator.dir/flags.make
CMakeFiles/Simulator.dir/src/Cache.cpp.o: ../src/Cache.cpp
CMakeFiles/Simulator.dir/src/Cache.cpp.o: CMakeFiles/Simulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Simulator.dir/src/Cache.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Simulator.dir/src/Cache.cpp.o -MF CMakeFiles/Simulator.dir/src/Cache.cpp.o.d -o CMakeFiles/Simulator.dir/src/Cache.cpp.o -c /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/Cache.cpp

CMakeFiles/Simulator.dir/src/Cache.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Simulator.dir/src/Cache.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/Cache.cpp > CMakeFiles/Simulator.dir/src/Cache.cpp.i

CMakeFiles/Simulator.dir/src/Cache.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Simulator.dir/src/Cache.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/src/Cache.cpp -o CMakeFiles/Simulator.dir/src/Cache.cpp.s

# Object files for target Simulator
Simulator_OBJECTS = \
"CMakeFiles/Simulator.dir/src/MainCPU.cpp.o" \
"CMakeFiles/Simulator.dir/src/Simulator.cpp.o" \
"CMakeFiles/Simulator.dir/src/MemoryManager.cpp.o" \
"CMakeFiles/Simulator.dir/src/Cache.cpp.o"

# External object files for target Simulator
Simulator_EXTERNAL_OBJECTS =

Simulator: CMakeFiles/Simulator.dir/src/MainCPU.cpp.o
Simulator: CMakeFiles/Simulator.dir/src/Simulator.cpp.o
Simulator: CMakeFiles/Simulator.dir/src/MemoryManager.cpp.o
Simulator: CMakeFiles/Simulator.dir/src/Cache.cpp.o
Simulator: CMakeFiles/Simulator.dir/build.make
Simulator: CMakeFiles/Simulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Simulator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Simulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Simulator.dir/build: Simulator
.PHONY : CMakeFiles/Simulator.dir/build

CMakeFiles/Simulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Simulator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Simulator.dir/clean

CMakeFiles/Simulator.dir/depend:
	cd /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3 /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3 /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build /home/ubuntu/Desktop/CSC3050-project-3/CSC3050-project-3/build/CMakeFiles/Simulator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Simulator.dir/depend
