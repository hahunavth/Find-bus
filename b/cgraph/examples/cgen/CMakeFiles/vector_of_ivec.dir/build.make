# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /home/kryo/Desktop/Tim-bus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kryo/Desktop/Tim-bus/b

# Include any dependencies generated for this target.
include cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/compiler_depend.make

# Include the progress variables for this target.
include cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/progress.make

# Include the compile flags for this target's objects.
include cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/flags.make

cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.o: cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/flags.make
cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.o: ../cgraph/examples/cgen/vector_of_ivec.c
cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.o: cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kryo/Desktop/Tim-bus/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.o"
	cd /home/kryo/Desktop/Tim-bus/b/cgraph/examples/cgen && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.o -MF CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.o.d -o CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.o -c /home/kryo/Desktop/Tim-bus/cgraph/examples/cgen/vector_of_ivec.c

cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.i"
	cd /home/kryo/Desktop/Tim-bus/b/cgraph/examples/cgen && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kryo/Desktop/Tim-bus/cgraph/examples/cgen/vector_of_ivec.c > CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.i

cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.s"
	cd /home/kryo/Desktop/Tim-bus/b/cgraph/examples/cgen && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kryo/Desktop/Tim-bus/cgraph/examples/cgen/vector_of_ivec.c -o CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.s

# Object files for target vector_of_ivec
vector_of_ivec_OBJECTS = \
"CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.o"

# External object files for target vector_of_ivec
vector_of_ivec_EXTERNAL_OBJECTS =

cgraph/examples/cgen/vector_of_ivec: cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/vector_of_ivec.c.o
cgraph/examples/cgen/vector_of_ivec: cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/build.make
cgraph/examples/cgen/vector_of_ivec: cgraph/libcgraph.a
cgraph/examples/cgen/vector_of_ivec: cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kryo/Desktop/Tim-bus/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable vector_of_ivec"
	cd /home/kryo/Desktop/Tim-bus/b/cgraph/examples/cgen && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vector_of_ivec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/build: cgraph/examples/cgen/vector_of_ivec
.PHONY : cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/build

cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/clean:
	cd /home/kryo/Desktop/Tim-bus/b/cgraph/examples/cgen && $(CMAKE_COMMAND) -P CMakeFiles/vector_of_ivec.dir/cmake_clean.cmake
.PHONY : cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/clean

cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/depend:
	cd /home/kryo/Desktop/Tim-bus/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kryo/Desktop/Tim-bus /home/kryo/Desktop/Tim-bus/cgraph/examples/cgen /home/kryo/Desktop/Tim-bus/b /home/kryo/Desktop/Tim-bus/b/cgraph/examples/cgen /home/kryo/Desktop/Tim-bus/b/cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cgraph/examples/cgen/CMakeFiles/vector_of_ivec.dir/depend

