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
include cgraph/examples/CMakeFiles/ivec_as_param2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include cgraph/examples/CMakeFiles/ivec_as_param2.dir/compiler_depend.make

# Include the progress variables for this target.
include cgraph/examples/CMakeFiles/ivec_as_param2.dir/progress.make

# Include the compile flags for this target's objects.
include cgraph/examples/CMakeFiles/ivec_as_param2.dir/flags.make

cgraph/examples/CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.o: cgraph/examples/CMakeFiles/ivec_as_param2.dir/flags.make
cgraph/examples/CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.o: ../cgraph/examples/cgraph_ivec_as_param_demo2.c
cgraph/examples/CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.o: cgraph/examples/CMakeFiles/ivec_as_param2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kryo/Desktop/Tim-bus/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object cgraph/examples/CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.o"
	cd /home/kryo/Desktop/Tim-bus/b/cgraph/examples && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT cgraph/examples/CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.o -MF CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.o.d -o CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.o -c /home/kryo/Desktop/Tim-bus/cgraph/examples/cgraph_ivec_as_param_demo2.c

cgraph/examples/CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.i"
	cd /home/kryo/Desktop/Tim-bus/b/cgraph/examples && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kryo/Desktop/Tim-bus/cgraph/examples/cgraph_ivec_as_param_demo2.c > CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.i

cgraph/examples/CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.s"
	cd /home/kryo/Desktop/Tim-bus/b/cgraph/examples && /usr/lib64/ccache/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kryo/Desktop/Tim-bus/cgraph/examples/cgraph_ivec_as_param_demo2.c -o CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.s

# Object files for target ivec_as_param2
ivec_as_param2_OBJECTS = \
"CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.o"

# External object files for target ivec_as_param2
ivec_as_param2_EXTERNAL_OBJECTS =

cgraph/examples/ivec_as_param2: cgraph/examples/CMakeFiles/ivec_as_param2.dir/cgraph_ivec_as_param_demo2.c.o
cgraph/examples/ivec_as_param2: cgraph/examples/CMakeFiles/ivec_as_param2.dir/build.make
cgraph/examples/ivec_as_param2: cgraph/libcgraph.a
cgraph/examples/ivec_as_param2: cgraph/examples/CMakeFiles/ivec_as_param2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kryo/Desktop/Tim-bus/b/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ivec_as_param2"
	cd /home/kryo/Desktop/Tim-bus/b/cgraph/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ivec_as_param2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cgraph/examples/CMakeFiles/ivec_as_param2.dir/build: cgraph/examples/ivec_as_param2
.PHONY : cgraph/examples/CMakeFiles/ivec_as_param2.dir/build

cgraph/examples/CMakeFiles/ivec_as_param2.dir/clean:
	cd /home/kryo/Desktop/Tim-bus/b/cgraph/examples && $(CMAKE_COMMAND) -P CMakeFiles/ivec_as_param2.dir/cmake_clean.cmake
.PHONY : cgraph/examples/CMakeFiles/ivec_as_param2.dir/clean

cgraph/examples/CMakeFiles/ivec_as_param2.dir/depend:
	cd /home/kryo/Desktop/Tim-bus/b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kryo/Desktop/Tim-bus /home/kryo/Desktop/Tim-bus/cgraph/examples /home/kryo/Desktop/Tim-bus/b /home/kryo/Desktop/Tim-bus/b/cgraph/examples /home/kryo/Desktop/Tim-bus/b/cgraph/examples/CMakeFiles/ivec_as_param2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cgraph/examples/CMakeFiles/ivec_as_param2.dir/depend

