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
include CMakeFiles/Graficar.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Graficar.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Graficar.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Graficar.dir/flags.make

CMakeFiles/Graficar.dir/src/graficar.cpp.o: CMakeFiles/Graficar.dir/flags.make
CMakeFiles/Graficar.dir/src/graficar.cpp.o: /home/pixel/Escritorio/TE2/src/graficar.cpp
CMakeFiles/Graficar.dir/src/graficar.cpp.o: CMakeFiles/Graficar.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/pixel/Escritorio/TE2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Graficar.dir/src/graficar.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Graficar.dir/src/graficar.cpp.o -MF CMakeFiles/Graficar.dir/src/graficar.cpp.o.d -o CMakeFiles/Graficar.dir/src/graficar.cpp.o -c /home/pixel/Escritorio/TE2/src/graficar.cpp

CMakeFiles/Graficar.dir/src/graficar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Graficar.dir/src/graficar.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pixel/Escritorio/TE2/src/graficar.cpp > CMakeFiles/Graficar.dir/src/graficar.cpp.i

CMakeFiles/Graficar.dir/src/graficar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Graficar.dir/src/graficar.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pixel/Escritorio/TE2/src/graficar.cpp -o CMakeFiles/Graficar.dir/src/graficar.cpp.s

# Object files for target Graficar
Graficar_OBJECTS = \
"CMakeFiles/Graficar.dir/src/graficar.cpp.o"

# External object files for target Graficar
Graficar_EXTERNAL_OBJECTS =

Graficar: CMakeFiles/Graficar.dir/src/graficar.cpp.o
Graficar: CMakeFiles/Graficar.dir/build.make
Graficar: CMakeFiles/Graficar.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/pixel/Escritorio/TE2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Graficar"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Graficar.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Graficar.dir/build: Graficar
.PHONY : CMakeFiles/Graficar.dir/build

CMakeFiles/Graficar.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Graficar.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Graficar.dir/clean

CMakeFiles/Graficar.dir/depend:
	cd /home/pixel/Escritorio/TE2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pixel/Escritorio/TE2 /home/pixel/Escritorio/TE2 /home/pixel/Escritorio/TE2/build /home/pixel/Escritorio/TE2/build /home/pixel/Escritorio/TE2/build/CMakeFiles/Graficar.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Graficar.dir/depend
