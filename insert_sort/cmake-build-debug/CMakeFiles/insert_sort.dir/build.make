# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /home/zenko/jetbrians/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/zenko/jetbrians/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zenko/CLionProjects/insert_sort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zenko/CLionProjects/insert_sort/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/insert_sort.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/insert_sort.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/insert_sort.dir/flags.make

CMakeFiles/insert_sort.dir/main.cpp.o: CMakeFiles/insert_sort.dir/flags.make
CMakeFiles/insert_sort.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zenko/CLionProjects/insert_sort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/insert_sort.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/insert_sort.dir/main.cpp.o -c /home/zenko/CLionProjects/insert_sort/main.cpp

CMakeFiles/insert_sort.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/insert_sort.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zenko/CLionProjects/insert_sort/main.cpp > CMakeFiles/insert_sort.dir/main.cpp.i

CMakeFiles/insert_sort.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/insert_sort.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zenko/CLionProjects/insert_sort/main.cpp -o CMakeFiles/insert_sort.dir/main.cpp.s

CMakeFiles/insert_sort.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/insert_sort.dir/main.cpp.o.requires

CMakeFiles/insert_sort.dir/main.cpp.o.provides: CMakeFiles/insert_sort.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/insert_sort.dir/build.make CMakeFiles/insert_sort.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/insert_sort.dir/main.cpp.o.provides

CMakeFiles/insert_sort.dir/main.cpp.o.provides.build: CMakeFiles/insert_sort.dir/main.cpp.o


# Object files for target insert_sort
insert_sort_OBJECTS = \
"CMakeFiles/insert_sort.dir/main.cpp.o"

# External object files for target insert_sort
insert_sort_EXTERNAL_OBJECTS =

insert_sort: CMakeFiles/insert_sort.dir/main.cpp.o
insert_sort: CMakeFiles/insert_sort.dir/build.make
insert_sort: CMakeFiles/insert_sort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zenko/CLionProjects/insert_sort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable insert_sort"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/insert_sort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/insert_sort.dir/build: insert_sort

.PHONY : CMakeFiles/insert_sort.dir/build

CMakeFiles/insert_sort.dir/requires: CMakeFiles/insert_sort.dir/main.cpp.o.requires

.PHONY : CMakeFiles/insert_sort.dir/requires

CMakeFiles/insert_sort.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/insert_sort.dir/cmake_clean.cmake
.PHONY : CMakeFiles/insert_sort.dir/clean

CMakeFiles/insert_sort.dir/depend:
	cd /home/zenko/CLionProjects/insert_sort/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zenko/CLionProjects/insert_sort /home/zenko/CLionProjects/insert_sort /home/zenko/CLionProjects/insert_sort/cmake-build-debug /home/zenko/CLionProjects/insert_sort/cmake-build-debug /home/zenko/CLionProjects/insert_sort/cmake-build-debug/CMakeFiles/insert_sort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/insert_sort.dir/depend
