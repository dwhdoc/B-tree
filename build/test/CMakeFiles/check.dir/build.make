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
CMAKE_SOURCE_DIR = /home/hp/scudb_project2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hp/scudb_project2/build

# Utility rule file for check.

# Include any custom commands dependencies for this target.
include test/CMakeFiles/check.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/check.dir/progress.make

test/CMakeFiles/check:
	cd /home/hp/scudb_project2/build/test && /usr/bin/ctest --verbose

check: test/CMakeFiles/check
check: test/CMakeFiles/check.dir/build.make
.PHONY : check

# Rule to build all files generated by this target.
test/CMakeFiles/check.dir/build: check
.PHONY : test/CMakeFiles/check.dir/build

test/CMakeFiles/check.dir/clean:
	cd /home/hp/scudb_project2/build/test && $(CMAKE_COMMAND) -P CMakeFiles/check.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/check.dir/clean

test/CMakeFiles/check.dir/depend:
	cd /home/hp/scudb_project2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hp/scudb_project2 /home/hp/scudb_project2/test /home/hp/scudb_project2/build /home/hp/scudb_project2/build/test /home/hp/scudb_project2/build/test/CMakeFiles/check.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/check.dir/depend

