# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/pixel/Escritorio/TE2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pixel/Escritorio/TE2/build

# Include any dependencies generated for this target.
include CMakeFiles/Benchmark.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Benchmark.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Benchmark.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Benchmark.dir/flags.make

CMakeFiles/Benchmark.dir/src/main.cpp.o: CMakeFiles/Benchmark.dir/flags.make
CMakeFiles/Benchmark.dir/src/main.cpp.o: /home/pixel/Escritorio/TE2/src/main.cpp
CMakeFiles/Benchmark.dir/src/main.cpp.o: CMakeFiles/Benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/pixel/Escritorio/TE2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Benchmark.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Benchmark.dir/src/main.cpp.o -MF CMakeFiles/Benchmark.dir/src/main.cpp.o.d -o CMakeFiles/Benchmark.dir/src/main.cpp.o -c /home/pixel/Escritorio/TE2/src/main.cpp

CMakeFiles/Benchmark.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Benchmark.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pixel/Escritorio/TE2/src/main.cpp > CMakeFiles/Benchmark.dir/src/main.cpp.i

CMakeFiles/Benchmark.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Benchmark.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pixel/Escritorio/TE2/src/main.cpp -o CMakeFiles/Benchmark.dir/src/main.cpp.s

CMakeFiles/Benchmark.dir/src/algoritmos.cpp.o: CMakeFiles/Benchmark.dir/flags.make
CMakeFiles/Benchmark.dir/src/algoritmos.cpp.o: /home/pixel/Escritorio/TE2/src/algoritmos.cpp
CMakeFiles/Benchmark.dir/src/algoritmos.cpp.o: CMakeFiles/Benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/pixel/Escritorio/TE2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Benchmark.dir/src/algoritmos.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Benchmark.dir/src/algoritmos.cpp.o -MF CMakeFiles/Benchmark.dir/src/algoritmos.cpp.o.d -o CMakeFiles/Benchmark.dir/src/algoritmos.cpp.o -c /home/pixel/Escritorio/TE2/src/algoritmos.cpp

CMakeFiles/Benchmark.dir/src/algoritmos.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Benchmark.dir/src/algoritmos.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pixel/Escritorio/TE2/src/algoritmos.cpp > CMakeFiles/Benchmark.dir/src/algoritmos.cpp.i

CMakeFiles/Benchmark.dir/src/algoritmos.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Benchmark.dir/src/algoritmos.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pixel/Escritorio/TE2/src/algoritmos.cpp -o CMakeFiles/Benchmark.dir/src/algoritmos.cpp.s

CMakeFiles/Benchmark.dir/src/benchmark.cpp.o: CMakeFiles/Benchmark.dir/flags.make
CMakeFiles/Benchmark.dir/src/benchmark.cpp.o: /home/pixel/Escritorio/TE2/src/benchmark.cpp
CMakeFiles/Benchmark.dir/src/benchmark.cpp.o: CMakeFiles/Benchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/pixel/Escritorio/TE2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Benchmark.dir/src/benchmark.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Benchmark.dir/src/benchmark.cpp.o -MF CMakeFiles/Benchmark.dir/src/benchmark.cpp.o.d -o CMakeFiles/Benchmark.dir/src/benchmark.cpp.o -c /home/pixel/Escritorio/TE2/src/benchmark.cpp

CMakeFiles/Benchmark.dir/src/benchmark.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Benchmark.dir/src/benchmark.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pixel/Escritorio/TE2/src/benchmark.cpp > CMakeFiles/Benchmark.dir/src/benchmark.cpp.i

CMakeFiles/Benchmark.dir/src/benchmark.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Benchmark.dir/src/benchmark.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pixel/Escritorio/TE2/src/benchmark.cpp -o CMakeFiles/Benchmark.dir/src/benchmark.cpp.s

# Object files for target Benchmark
Benchmark_OBJECTS = \
"CMakeFiles/Benchmark.dir/src/main.cpp.o" \
"CMakeFiles/Benchmark.dir/src/algoritmos.cpp.o" \
"CMakeFiles/Benchmark.dir/src/benchmark.cpp.o"

# External object files for target Benchmark
Benchmark_EXTERNAL_OBJECTS =

Benchmark: CMakeFiles/Benchmark.dir/src/main.cpp.o
Benchmark: CMakeFiles/Benchmark.dir/src/algoritmos.cpp.o
Benchmark: CMakeFiles/Benchmark.dir/src/benchmark.cpp.o
Benchmark: CMakeFiles/Benchmark.dir/build.make
Benchmark: CMakeFiles/Benchmark.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/pixel/Escritorio/TE2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Benchmark"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Benchmark.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Benchmark.dir/build: Benchmark
.PHONY : CMakeFiles/Benchmark.dir/build

CMakeFiles/Benchmark.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Benchmark.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Benchmark.dir/clean

CMakeFiles/Benchmark.dir/depend:
	cd /home/pixel/Escritorio/TE2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pixel/Escritorio/TE2 /home/pixel/Escritorio/TE2 /home/pixel/Escritorio/TE2/build /home/pixel/Escritorio/TE2/build /home/pixel/Escritorio/TE2/build/CMakeFiles/Benchmark.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Benchmark.dir/depend
