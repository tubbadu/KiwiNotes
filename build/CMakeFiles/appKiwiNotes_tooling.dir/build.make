# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = /home/tubbadu/code/Qt/KiwiNotes

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tubbadu/code/Qt/KiwiNotes/build

# Utility rule file for appKiwiNotes_tooling.

# Include any custom commands dependencies for this target.
include CMakeFiles/appKiwiNotes_tooling.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appKiwiNotes_tooling.dir/progress.make

KiwiNotes/Main.qml: /home/tubbadu/code/Qt/KiwiNotes/Main.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating KiwiNotes/Main.qml"
	cd /home/tubbadu/code/Qt/KiwiNotes && /usr/bin/cmake -E copy /home/tubbadu/code/Qt/KiwiNotes/Main.qml /home/tubbadu/code/Qt/KiwiNotes/build/KiwiNotes/Main.qml

KiwiNotes/Document.qml: /home/tubbadu/code/Qt/KiwiNotes/Document.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating KiwiNotes/Document.qml"
	cd /home/tubbadu/code/Qt/KiwiNotes && /usr/bin/cmake -E copy /home/tubbadu/code/Qt/KiwiNotes/Document.qml /home/tubbadu/code/Qt/KiwiNotes/build/KiwiNotes/Document.qml

KiwiNotes/Block.qml: /home/tubbadu/code/Qt/KiwiNotes/Block.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating KiwiNotes/Block.qml"
	cd /home/tubbadu/code/Qt/KiwiNotes && /usr/bin/cmake -E copy /home/tubbadu/code/Qt/KiwiNotes/Block.qml /home/tubbadu/code/Qt/KiwiNotes/build/KiwiNotes/Block.qml

appKiwiNotes_tooling: KiwiNotes/Block.qml
appKiwiNotes_tooling: KiwiNotes/Document.qml
appKiwiNotes_tooling: KiwiNotes/Main.qml
appKiwiNotes_tooling: CMakeFiles/appKiwiNotes_tooling.dir/build.make
.PHONY : appKiwiNotes_tooling

# Rule to build all files generated by this target.
CMakeFiles/appKiwiNotes_tooling.dir/build: appKiwiNotes_tooling
.PHONY : CMakeFiles/appKiwiNotes_tooling.dir/build

CMakeFiles/appKiwiNotes_tooling.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appKiwiNotes_tooling.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appKiwiNotes_tooling.dir/clean

CMakeFiles/appKiwiNotes_tooling.dir/depend:
	cd /home/tubbadu/code/Qt/KiwiNotes/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tubbadu/code/Qt/KiwiNotes /home/tubbadu/code/Qt/KiwiNotes /home/tubbadu/code/Qt/KiwiNotes/build /home/tubbadu/code/Qt/KiwiNotes/build /home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles/appKiwiNotes_tooling.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appKiwiNotes_tooling.dir/depend

