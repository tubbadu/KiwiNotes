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

# Include any dependencies generated for this target.
include CMakeFiles/appKiwiNotes.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/appKiwiNotes.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appKiwiNotes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/appKiwiNotes.dir/flags.make

meta_types/qt6appkiwinotes_metatypes.json.gen: /usr/lib/qt6/moc
meta_types/qt6appkiwinotes_metatypes.json.gen: meta_types/appKiwiNotes_json_file_list.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running moc --collect-json for target appKiwiNotes"
	/usr/lib/qt6/moc -o /home/tubbadu/code/Qt/KiwiNotes/build/meta_types/qt6appkiwinotes_metatypes.json.gen --collect-json @/home/tubbadu/code/Qt/KiwiNotes/build/meta_types/appKiwiNotes_json_file_list.txt
	/usr/bin/cmake -E copy_if_different /home/tubbadu/code/Qt/KiwiNotes/build/meta_types/qt6appkiwinotes_metatypes.json.gen /home/tubbadu/code/Qt/KiwiNotes/build/meta_types/qt6appkiwinotes_metatypes.json

appkiwinotes_qmltyperegistrations.cpp: qmltypes/appKiwiNotes_foreign_types.txt
appkiwinotes_qmltyperegistrations.cpp: meta_types/qt6appkiwinotes_metatypes.json
appkiwinotes_qmltyperegistrations.cpp: /usr/lib/qt6/qmltyperegistrar
appkiwinotes_qmltyperegistrations.cpp: /usr/lib/qt6/metatypes/qt6core_relwithdebinfo_metatypes.json
appkiwinotes_qmltyperegistrations.cpp: /usr/lib/qt6/metatypes/qt6qml_relwithdebinfo_metatypes.json
appkiwinotes_qmltyperegistrations.cpp: /usr/lib/qt6/metatypes/qt6network_relwithdebinfo_metatypes.json
appkiwinotes_qmltyperegistrations.cpp: /usr/lib/qt6/metatypes/qt6quick_relwithdebinfo_metatypes.json
appkiwinotes_qmltyperegistrations.cpp: /usr/lib/qt6/metatypes/qt6gui_relwithdebinfo_metatypes.json
appkiwinotes_qmltyperegistrations.cpp: /usr/lib/qt6/metatypes/qt6qmlmodels_relwithdebinfo_metatypes.json
appkiwinotes_qmltyperegistrations.cpp: /usr/lib/qt6/metatypes/qt6opengl_relwithdebinfo_metatypes.json
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Automatic QML type registration for target appKiwiNotes"
	/usr/lib/qt6/qmltyperegistrar --generate-qmltypes=/home/tubbadu/code/Qt/KiwiNotes/build/KiwiNotes/appKiwiNotes.qmltypes --import-name=KiwiNotes --major-version=1 --minor-version=0 @/home/tubbadu/code/Qt/KiwiNotes/build/qmltypes/appKiwiNotes_foreign_types.txt -o /home/tubbadu/code/Qt/KiwiNotes/build/appkiwinotes_qmltyperegistrations.cpp /home/tubbadu/code/Qt/KiwiNotes/build/meta_types/qt6appkiwinotes_metatypes.json
	/usr/bin/cmake -E make_directory /home/tubbadu/code/Qt/KiwiNotes/build/.generated
	/usr/bin/cmake -E touch /home/tubbadu/code/Qt/KiwiNotes/build/.generated/appKiwiNotes.qmltypes

KiwiNotes/appKiwiNotes.qmltypes: appkiwinotes_qmltyperegistrations.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate KiwiNotes/appKiwiNotes.qmltypes

.rcc/qrc_qmake_KiwiNotes.cpp: KiwiNotes/qmldir
.rcc/qrc_qmake_KiwiNotes.cpp: .rcc/qmake_KiwiNotes.qrc
.rcc/qrc_qmake_KiwiNotes.cpp: /usr/lib/qt6/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Running rcc for resource qmake_KiwiNotes"
	/usr/lib/qt6/rcc --output /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qrc_qmake_KiwiNotes.cpp --name qmake_KiwiNotes /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmake_KiwiNotes.qrc

.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp: /usr/lib/qt6/qmlcachegen
.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp: .rcc/qmlcache/appKiwiNotes_qml_loader_file_list.rsp
.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp: .rcc/qmake_KiwiNotes.qrc
.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp: .rcc/appKiwiNotes_raw_qml_0.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating .rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp"
	/usr/lib/qt6/qmlcachegen --resource-name qmlcache_appKiwiNotes --resource /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmake_KiwiNotes.qrc --resource /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/appKiwiNotes_raw_qml_0.qrc -o /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp @/home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_qml_loader_file_list.rsp

.rcc/qmlcache/appKiwiNotes_Main_qml.cpp: /usr/lib/qt6/qmlcachegen
.rcc/qmlcache/appKiwiNotes_Main_qml.cpp: /home/tubbadu/code/Qt/KiwiNotes/Main.qml
.rcc/qmlcache/appKiwiNotes_Main_qml.cpp: .rcc/qmake_KiwiNotes.qrc
.rcc/qmlcache/appKiwiNotes_Main_qml.cpp: .rcc/appKiwiNotes_raw_qml_0.qrc
.rcc/qmlcache/appKiwiNotes_Main_qml.cpp: KiwiNotes/appKiwiNotes.qmltypes
.rcc/qmlcache/appKiwiNotes_Main_qml.cpp: KiwiNotes/qmldir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating .rcc/qmlcache/appKiwiNotes_Main_qml.cpp"
	/usr/bin/cmake -E make_directory /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache
	/usr/lib/qt6/qmlcachegen --bare --resource-path /KiwiNotes/Main.qml -I /home/tubbadu/code/Qt/KiwiNotes/build -I /usr/lib/qt6/qml -i /home/tubbadu/code/Qt/KiwiNotes/build/KiwiNotes/qmldir --resource /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmake_KiwiNotes.qrc --resource /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/appKiwiNotes_raw_qml_0.qrc -o /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp /home/tubbadu/code/Qt/KiwiNotes/Main.qml

.rcc/qmlcache/appKiwiNotes_Document_qml.cpp: /usr/lib/qt6/qmlcachegen
.rcc/qmlcache/appKiwiNotes_Document_qml.cpp: /home/tubbadu/code/Qt/KiwiNotes/Document.qml
.rcc/qmlcache/appKiwiNotes_Document_qml.cpp: .rcc/qmake_KiwiNotes.qrc
.rcc/qmlcache/appKiwiNotes_Document_qml.cpp: .rcc/appKiwiNotes_raw_qml_0.qrc
.rcc/qmlcache/appKiwiNotes_Document_qml.cpp: KiwiNotes/appKiwiNotes.qmltypes
.rcc/qmlcache/appKiwiNotes_Document_qml.cpp: KiwiNotes/qmldir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating .rcc/qmlcache/appKiwiNotes_Document_qml.cpp"
	/usr/bin/cmake -E make_directory /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache
	/usr/lib/qt6/qmlcachegen --bare --resource-path /KiwiNotes/Document.qml -I /home/tubbadu/code/Qt/KiwiNotes/build -I /usr/lib/qt6/qml -i /home/tubbadu/code/Qt/KiwiNotes/build/KiwiNotes/qmldir --resource /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmake_KiwiNotes.qrc --resource /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/appKiwiNotes_raw_qml_0.qrc -o /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp /home/tubbadu/code/Qt/KiwiNotes/Document.qml

.rcc/qmlcache/appKiwiNotes_Block_qml.cpp: /usr/lib/qt6/qmlcachegen
.rcc/qmlcache/appKiwiNotes_Block_qml.cpp: /home/tubbadu/code/Qt/KiwiNotes/Block.qml
.rcc/qmlcache/appKiwiNotes_Block_qml.cpp: .rcc/qmake_KiwiNotes.qrc
.rcc/qmlcache/appKiwiNotes_Block_qml.cpp: .rcc/appKiwiNotes_raw_qml_0.qrc
.rcc/qmlcache/appKiwiNotes_Block_qml.cpp: KiwiNotes/appKiwiNotes.qmltypes
.rcc/qmlcache/appKiwiNotes_Block_qml.cpp: KiwiNotes/qmldir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating .rcc/qmlcache/appKiwiNotes_Block_qml.cpp"
	/usr/bin/cmake -E make_directory /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache
	/usr/lib/qt6/qmlcachegen --bare --resource-path /KiwiNotes/Block.qml -I /home/tubbadu/code/Qt/KiwiNotes/build -I /usr/lib/qt6/qml -i /home/tubbadu/code/Qt/KiwiNotes/build/KiwiNotes/qmldir --resource /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmake_KiwiNotes.qrc --resource /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/appKiwiNotes_raw_qml_0.qrc -o /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp /home/tubbadu/code/Qt/KiwiNotes/Block.qml

.rcc/qrc_appKiwiNotes_raw_qml_0.cpp: /home/tubbadu/code/Qt/KiwiNotes/Main.qml
.rcc/qrc_appKiwiNotes_raw_qml_0.cpp: /home/tubbadu/code/Qt/KiwiNotes/Document.qml
.rcc/qrc_appKiwiNotes_raw_qml_0.cpp: /home/tubbadu/code/Qt/KiwiNotes/Block.qml
.rcc/qrc_appKiwiNotes_raw_qml_0.cpp: .rcc/appKiwiNotes_raw_qml_0.qrc
.rcc/qrc_appKiwiNotes_raw_qml_0.cpp: /usr/lib/qt6/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Running rcc for resource appKiwiNotes_raw_qml_0"
	/usr/lib/qt6/rcc --output /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp --name appKiwiNotes_raw_qml_0 /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/appKiwiNotes_raw_qml_0.qrc

meta_types/qt6appkiwinotes_metatypes.json: meta_types/qt6appkiwinotes_metatypes.json.gen
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Generating meta_types/qt6appkiwinotes_metatypes.json"
	/usr/bin/cmake -E true

CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.o: CMakeFiles/appKiwiNotes.dir/flags.make
CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.o: appKiwiNotes_autogen/mocs_compilation.cpp
CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.o: CMakeFiles/appKiwiNotes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.o -MF CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.o -c /home/tubbadu/code/Qt/KiwiNotes/build/appKiwiNotes_autogen/mocs_compilation.cpp

CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tubbadu/code/Qt/KiwiNotes/build/appKiwiNotes_autogen/mocs_compilation.cpp > CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.i

CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tubbadu/code/Qt/KiwiNotes/build/appKiwiNotes_autogen/mocs_compilation.cpp -o CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.s

CMakeFiles/appKiwiNotes.dir/main.cpp.o: CMakeFiles/appKiwiNotes.dir/flags.make
CMakeFiles/appKiwiNotes.dir/main.cpp.o: /home/tubbadu/code/Qt/KiwiNotes/main.cpp
CMakeFiles/appKiwiNotes.dir/main.cpp.o: CMakeFiles/appKiwiNotes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/appKiwiNotes.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appKiwiNotes.dir/main.cpp.o -MF CMakeFiles/appKiwiNotes.dir/main.cpp.o.d -o CMakeFiles/appKiwiNotes.dir/main.cpp.o -c /home/tubbadu/code/Qt/KiwiNotes/main.cpp

CMakeFiles/appKiwiNotes.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appKiwiNotes.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tubbadu/code/Qt/KiwiNotes/main.cpp > CMakeFiles/appKiwiNotes.dir/main.cpp.i

CMakeFiles/appKiwiNotes.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appKiwiNotes.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tubbadu/code/Qt/KiwiNotes/main.cpp -o CMakeFiles/appKiwiNotes.dir/main.cpp.s

CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.o: CMakeFiles/appKiwiNotes.dir/flags.make
CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.o: appkiwinotes_qmltyperegistrations.cpp
CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.o: CMakeFiles/appKiwiNotes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.o -MF CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.o.d -o CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.o -c /home/tubbadu/code/Qt/KiwiNotes/build/appkiwinotes_qmltyperegistrations.cpp

CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tubbadu/code/Qt/KiwiNotes/build/appkiwinotes_qmltyperegistrations.cpp > CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.i

CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tubbadu/code/Qt/KiwiNotes/build/appkiwinotes_qmltyperegistrations.cpp -o CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.s

CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.o: CMakeFiles/appKiwiNotes.dir/flags.make
CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.o: .rcc/qrc_qmake_KiwiNotes.cpp
CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.o: CMakeFiles/appKiwiNotes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.o -MF CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.o.d -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.o -c /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qrc_qmake_KiwiNotes.cpp

CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qrc_qmake_KiwiNotes.cpp > CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.i

CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qrc_qmake_KiwiNotes.cpp -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.s

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.o: CMakeFiles/appKiwiNotes.dir/flags.make
CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.o: .rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp
CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.o: CMakeFiles/appKiwiNotes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.o -MF CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.o.d -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.o -c /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp > CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.i

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.s

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.o: CMakeFiles/appKiwiNotes.dir/flags.make
CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.o: .rcc/qmlcache/appKiwiNotes_Main_qml.cpp
CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.o: CMakeFiles/appKiwiNotes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.o -MF CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.o.d -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.o -c /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp > CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.i

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.s

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.o: CMakeFiles/appKiwiNotes.dir/flags.make
CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.o: .rcc/qmlcache/appKiwiNotes_Document_qml.cpp
CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.o: CMakeFiles/appKiwiNotes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.o -MF CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.o.d -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.o -c /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp > CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.i

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.s

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.o: CMakeFiles/appKiwiNotes.dir/flags.make
CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.o: .rcc/qmlcache/appKiwiNotes_Block_qml.cpp
CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.o: CMakeFiles/appKiwiNotes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.o -MF CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.o.d -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.o -c /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp > CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.i

CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.s

CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.o: CMakeFiles/appKiwiNotes.dir/flags.make
CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.o: .rcc/qrc_appKiwiNotes_raw_qml_0.cpp
CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.o: CMakeFiles/appKiwiNotes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.o -MF CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.o.d -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.o -c /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp

CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp > CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.i

CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tubbadu/code/Qt/KiwiNotes/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp -o CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.s

# Object files for target appKiwiNotes
appKiwiNotes_OBJECTS = \
"CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/appKiwiNotes.dir/main.cpp.o" \
"CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.o" \
"CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.o" \
"CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.o" \
"CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.o" \
"CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.o" \
"CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.o" \
"CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.o"

# External object files for target appKiwiNotes
appKiwiNotes_EXTERNAL_OBJECTS =

appKiwiNotes: CMakeFiles/appKiwiNotes.dir/appKiwiNotes_autogen/mocs_compilation.cpp.o
appKiwiNotes: CMakeFiles/appKiwiNotes.dir/main.cpp.o
appKiwiNotes: CMakeFiles/appKiwiNotes.dir/appkiwinotes_qmltyperegistrations.cpp.o
appKiwiNotes: CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_qmake_KiwiNotes.cpp.o
appKiwiNotes: CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp.o
appKiwiNotes: CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Main_qml.cpp.o
appKiwiNotes: CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Document_qml.cpp.o
appKiwiNotes: CMakeFiles/appKiwiNotes.dir/build/.rcc/qmlcache/appKiwiNotes_Block_qml.cpp.o
appKiwiNotes: CMakeFiles/appKiwiNotes.dir/build/.rcc/qrc_appKiwiNotes_raw_qml_0.cpp.o
appKiwiNotes: CMakeFiles/appKiwiNotes.dir/build.make
appKiwiNotes: /usr/lib/libQt6Quick.so.6.5.2
appKiwiNotes: /usr/lib/libQt6QmlModels.so.6.5.2
appKiwiNotes: /usr/lib/libQt6Qml.so.6.5.2
appKiwiNotes: /usr/lib/libQt6Network.so.6.5.2
appKiwiNotes: /usr/lib/libQt6OpenGL.so.6.5.2
appKiwiNotes: /usr/lib/libQt6Gui.so.6.5.2
appKiwiNotes: /usr/lib/libQt6Core.so.6.5.2
appKiwiNotes: /usr/lib/libGLX.so
appKiwiNotes: /usr/lib/libOpenGL.so
appKiwiNotes: CMakeFiles/appKiwiNotes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX executable appKiwiNotes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/appKiwiNotes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/appKiwiNotes.dir/build: appKiwiNotes
.PHONY : CMakeFiles/appKiwiNotes.dir/build

CMakeFiles/appKiwiNotes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appKiwiNotes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appKiwiNotes.dir/clean

CMakeFiles/appKiwiNotes.dir/depend: .rcc/qmlcache/appKiwiNotes_Block_qml.cpp
CMakeFiles/appKiwiNotes.dir/depend: .rcc/qmlcache/appKiwiNotes_Document_qml.cpp
CMakeFiles/appKiwiNotes.dir/depend: .rcc/qmlcache/appKiwiNotes_Main_qml.cpp
CMakeFiles/appKiwiNotes.dir/depend: .rcc/qmlcache/appKiwiNotes_qmlcache_loader.cpp
CMakeFiles/appKiwiNotes.dir/depend: .rcc/qrc_appKiwiNotes_raw_qml_0.cpp
CMakeFiles/appKiwiNotes.dir/depend: .rcc/qrc_qmake_KiwiNotes.cpp
CMakeFiles/appKiwiNotes.dir/depend: KiwiNotes/appKiwiNotes.qmltypes
CMakeFiles/appKiwiNotes.dir/depend: appkiwinotes_qmltyperegistrations.cpp
CMakeFiles/appKiwiNotes.dir/depend: meta_types/qt6appkiwinotes_metatypes.json
CMakeFiles/appKiwiNotes.dir/depend: meta_types/qt6appkiwinotes_metatypes.json.gen
	cd /home/tubbadu/code/Qt/KiwiNotes/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tubbadu/code/Qt/KiwiNotes /home/tubbadu/code/Qt/KiwiNotes /home/tubbadu/code/Qt/KiwiNotes/build /home/tubbadu/code/Qt/KiwiNotes/build /home/tubbadu/code/Qt/KiwiNotes/build/CMakeFiles/appKiwiNotes.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appKiwiNotes.dir/depend

