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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shawnch/UE4Projects/FPSGame/FPSGameTemplate

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shawnch/UE4Projects/FPSGame/FPSGameTemplate/cmake-build-debug

# Utility rule file for FPSGameEditor-TVOS.

# Include the progress variables for this target.
include CMakeFiles/FPSGameEditor-TVOS.dir/progress.make

CMakeFiles/FPSGameEditor-TVOS:
	cd "/Users/Shared/Epic Games/UE_4.20" && bash "/Users/Shared/Epic Games/UE_4.20/Engine/Build/BatchFiles/Mac/Build.sh" FPSGameEditor TVOS Development -project=/Users/shawnch/UE4Projects/FPSGame/FPSGameTemplate/FPSGame.uproject -game -progress

FPSGameEditor-TVOS: CMakeFiles/FPSGameEditor-TVOS
FPSGameEditor-TVOS: CMakeFiles/FPSGameEditor-TVOS.dir/build.make

.PHONY : FPSGameEditor-TVOS

# Rule to build all files generated by this target.
CMakeFiles/FPSGameEditor-TVOS.dir/build: FPSGameEditor-TVOS

.PHONY : CMakeFiles/FPSGameEditor-TVOS.dir/build

CMakeFiles/FPSGameEditor-TVOS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FPSGameEditor-TVOS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FPSGameEditor-TVOS.dir/clean

CMakeFiles/FPSGameEditor-TVOS.dir/depend:
	cd /Users/shawnch/UE4Projects/FPSGame/FPSGameTemplate/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shawnch/UE4Projects/FPSGame/FPSGameTemplate /Users/shawnch/UE4Projects/FPSGame/FPSGameTemplate /Users/shawnch/UE4Projects/FPSGame/FPSGameTemplate/cmake-build-debug /Users/shawnch/UE4Projects/FPSGame/FPSGameTemplate/cmake-build-debug /Users/shawnch/UE4Projects/FPSGame/FPSGameTemplate/cmake-build-debug/CMakeFiles/FPSGameEditor-TVOS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FPSGameEditor-TVOS.dir/depend

