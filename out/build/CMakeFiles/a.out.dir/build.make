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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.22.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.22.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/myronphan/cavestory

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/myronphan/cavestory/out/build

# Include any dependencies generated for this target.
include CMakeFiles/a.out.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/a.out.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/a.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/a.out.dir/flags.make

CMakeFiles/a.out.dir/Testing.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/Testing.cpp.o: ../../Testing.cpp
CMakeFiles/a.out.dir/Testing.cpp.o: CMakeFiles/a.out.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/myronphan/cavestory/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/a.out.dir/Testing.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/a.out.dir/Testing.cpp.o -MF CMakeFiles/a.out.dir/Testing.cpp.o.d -o CMakeFiles/a.out.dir/Testing.cpp.o -c /Users/myronphan/cavestory/Testing.cpp

CMakeFiles/a.out.dir/Testing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/Testing.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/myronphan/cavestory/Testing.cpp > CMakeFiles/a.out.dir/Testing.cpp.i

CMakeFiles/a.out.dir/Testing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/Testing.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/myronphan/cavestory/Testing.cpp -o CMakeFiles/a.out.dir/Testing.cpp.s

CMakeFiles/a.out.dir/src/graphics.cpp.o: CMakeFiles/a.out.dir/flags.make
CMakeFiles/a.out.dir/src/graphics.cpp.o: ../../src/graphics.cpp
CMakeFiles/a.out.dir/src/graphics.cpp.o: CMakeFiles/a.out.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/myronphan/cavestory/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/a.out.dir/src/graphics.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/a.out.dir/src/graphics.cpp.o -MF CMakeFiles/a.out.dir/src/graphics.cpp.o.d -o CMakeFiles/a.out.dir/src/graphics.cpp.o -c /Users/myronphan/cavestory/src/graphics.cpp

CMakeFiles/a.out.dir/src/graphics.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a.out.dir/src/graphics.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/myronphan/cavestory/src/graphics.cpp > CMakeFiles/a.out.dir/src/graphics.cpp.i

CMakeFiles/a.out.dir/src/graphics.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a.out.dir/src/graphics.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/myronphan/cavestory/src/graphics.cpp -o CMakeFiles/a.out.dir/src/graphics.cpp.s

# Object files for target a.out
a_out_OBJECTS = \
"CMakeFiles/a.out.dir/Testing.cpp.o" \
"CMakeFiles/a.out.dir/src/graphics.cpp.o"

# External object files for target a.out
a_out_EXTERNAL_OBJECTS =

a.out: CMakeFiles/a.out.dir/Testing.cpp.o
a.out: CMakeFiles/a.out.dir/src/graphics.cpp.o
a.out: CMakeFiles/a.out.dir/build.make
a.out: external/SDL2/libSDL2-2.0.dylib
a.out: CMakeFiles/a.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/myronphan/cavestory/out/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable a.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/a.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/a.out.dir/build: a.out
.PHONY : CMakeFiles/a.out.dir/build

CMakeFiles/a.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/a.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/a.out.dir/clean

CMakeFiles/a.out.dir/depend:
	cd /Users/myronphan/cavestory/out/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/myronphan/cavestory /Users/myronphan/cavestory /Users/myronphan/cavestory/out/build /Users/myronphan/cavestory/out/build /Users/myronphan/cavestory/out/build/CMakeFiles/a.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/a.out.dir/depend

