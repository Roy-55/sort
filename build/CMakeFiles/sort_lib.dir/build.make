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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/a/AAAA/sort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/a/AAAA/sort/build

# Include any dependencies generated for this target.
include CMakeFiles/sort_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sort_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sort_lib.dir/flags.make

CMakeFiles/sort_lib.dir/src/sort.cpp.o: CMakeFiles/sort_lib.dir/flags.make
CMakeFiles/sort_lib.dir/src/sort.cpp.o: ../src/sort.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/a/AAAA/sort/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sort_lib.dir/src/sort.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sort_lib.dir/src/sort.cpp.o -c /home/a/AAAA/sort/src/sort.cpp

CMakeFiles/sort_lib.dir/src/sort.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sort_lib.dir/src/sort.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/a/AAAA/sort/src/sort.cpp > CMakeFiles/sort_lib.dir/src/sort.cpp.i

CMakeFiles/sort_lib.dir/src/sort.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sort_lib.dir/src/sort.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/a/AAAA/sort/src/sort.cpp -o CMakeFiles/sort_lib.dir/src/sort.cpp.s

CMakeFiles/sort_lib.dir/src/sort.cpp.o.requires:

.PHONY : CMakeFiles/sort_lib.dir/src/sort.cpp.o.requires

CMakeFiles/sort_lib.dir/src/sort.cpp.o.provides: CMakeFiles/sort_lib.dir/src/sort.cpp.o.requires
	$(MAKE) -f CMakeFiles/sort_lib.dir/build.make CMakeFiles/sort_lib.dir/src/sort.cpp.o.provides.build
.PHONY : CMakeFiles/sort_lib.dir/src/sort.cpp.o.provides

CMakeFiles/sort_lib.dir/src/sort.cpp.o.provides.build: CMakeFiles/sort_lib.dir/src/sort.cpp.o


# Object files for target sort_lib
sort_lib_OBJECTS = \
"CMakeFiles/sort_lib.dir/src/sort.cpp.o"

# External object files for target sort_lib
sort_lib_EXTERNAL_OBJECTS =

../lib/libsort_lib.a: CMakeFiles/sort_lib.dir/src/sort.cpp.o
../lib/libsort_lib.a: CMakeFiles/sort_lib.dir/build.make
../lib/libsort_lib.a: CMakeFiles/sort_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/a/AAAA/sort/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../lib/libsort_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/sort_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sort_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sort_lib.dir/build: ../lib/libsort_lib.a

.PHONY : CMakeFiles/sort_lib.dir/build

CMakeFiles/sort_lib.dir/requires: CMakeFiles/sort_lib.dir/src/sort.cpp.o.requires

.PHONY : CMakeFiles/sort_lib.dir/requires

CMakeFiles/sort_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sort_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sort_lib.dir/clean

CMakeFiles/sort_lib.dir/depend:
	cd /home/a/AAAA/sort/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/a/AAAA/sort /home/a/AAAA/sort /home/a/AAAA/sort/build /home/a/AAAA/sort/build /home/a/AAAA/sort/build/CMakeFiles/sort_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sort_lib.dir/depend
