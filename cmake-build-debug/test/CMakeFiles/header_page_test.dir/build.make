# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/hp/CLion_for_Linux/clion-2020.2.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/hp/CLion_for_Linux/clion-2020.2.3/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hp/scudb_project2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hp/scudb_project2/cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/header_page_test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/header_page_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/header_page_test.dir/flags.make

test/CMakeFiles/header_page_test.dir/table/header_page_test.cpp.o: test/CMakeFiles/header_page_test.dir/flags.make
test/CMakeFiles/header_page_test.dir/table/header_page_test.cpp.o: ../test/table/header_page_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hp/scudb_project2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/header_page_test.dir/table/header_page_test.cpp.o"
	cd /home/hp/scudb_project2/cmake-build-debug/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/header_page_test.dir/table/header_page_test.cpp.o -c /home/hp/scudb_project2/test/table/header_page_test.cpp

test/CMakeFiles/header_page_test.dir/table/header_page_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/header_page_test.dir/table/header_page_test.cpp.i"
	cd /home/hp/scudb_project2/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hp/scudb_project2/test/table/header_page_test.cpp > CMakeFiles/header_page_test.dir/table/header_page_test.cpp.i

test/CMakeFiles/header_page_test.dir/table/header_page_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/header_page_test.dir/table/header_page_test.cpp.s"
	cd /home/hp/scudb_project2/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hp/scudb_project2/test/table/header_page_test.cpp -o CMakeFiles/header_page_test.dir/table/header_page_test.cpp.s

# Object files for target header_page_test
header_page_test_OBJECTS = \
"CMakeFiles/header_page_test.dir/table/header_page_test.cpp.o"

# External object files for target header_page_test
header_page_test_EXTERNAL_OBJECTS =

test/header_page_test: test/CMakeFiles/header_page_test.dir/table/header_page_test.cpp.o
test/header_page_test: test/CMakeFiles/header_page_test.dir/build.make
test/header_page_test: lib/libvtable.so
test/header_page_test: lib/libsqlite3.so
test/header_page_test: lib/libgtest.so
test/header_page_test: test/CMakeFiles/header_page_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hp/scudb_project2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable header_page_test"
	cd /home/hp/scudb_project2/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/header_page_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/header_page_test.dir/build: test/header_page_test

.PHONY : test/CMakeFiles/header_page_test.dir/build

test/CMakeFiles/header_page_test.dir/clean:
	cd /home/hp/scudb_project2/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/header_page_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/header_page_test.dir/clean

test/CMakeFiles/header_page_test.dir/depend:
	cd /home/hp/scudb_project2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hp/scudb_project2 /home/hp/scudb_project2/test /home/hp/scudb_project2/cmake-build-debug /home/hp/scudb_project2/cmake-build-debug/test /home/hp/scudb_project2/cmake-build-debug/test/CMakeFiles/header_page_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/header_page_test.dir/depend

