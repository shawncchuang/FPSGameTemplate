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
CMAKE_SOURCE_DIR = "/Users/mlb.local/Documents/Unreal Projects/FPSGame"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/mlb.local/Documents/Unreal Projects/FPSGame/cmake-build-debug"

# Utility rule file for UE4Game-IOS.

# Include the progress variables for this target.
include CMakeFiles/UE4Game-IOS.dir/progress.make

CMakeFiles/UE4Game-IOS:
	cd "/Users/Shared/Epic Games/UE_4.20" && bash "/Users/Shared/Epic Games/UE_4.20/Engine/Build/BatchFiles/Mac/Build.sh" UE4Game IOS Development -game -progress

UE4Game-IOS: CMakeFiles/UE4Game-IOS
UE4Game-IOS: CMakeFiles/UE4Game-IOS.dir/build.make

.PHONY : UE4Game-IOS

# Rule to build all files generated by this target.
CMakeFiles/UE4Game-IOS.dir/build: UE4Game-IOS

.PHONY : CMakeFiles/UE4Game-IOS.dir/build

CMakeFiles/UE4Game-IOS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/UE4Game-IOS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/UE4Game-IOS.dir/clean

CMakeFiles/UE4Game-IOS.dir/depend:
	cd "/Users/mlb.local/Documents/Unreal Projects/FPSGame/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/mlb.local/Documents/Unreal Projects/FPSGame" "/Users/mlb.local/Documents/Unreal Projects/FPSGame" "/Users/mlb.local/Documents/Unreal Projects/FPSGame/cmake-build-debug" "/Users/mlb.local/Documents/Unreal Projects/FPSGame/cmake-build-debug" "/Users/mlb.local/Documents/Unreal Projects/FPSGame/cmake-build-debug/CMakeFiles/UE4Game-IOS.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/UE4Game-IOS.dir/depend

