# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/marco/fuerte_workspace/tbots_vision_pkg/classification

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marco/fuerte_workspace/tbots_vision_pkg/classification/build

# Include any dependencies generated for this target.
include CMakeFiles/face_trainer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/face_trainer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/face_trainer.dir/flags.make

CMakeFiles/face_trainer.dir/src/face_trainer.o: CMakeFiles/face_trainer.dir/flags.make
CMakeFiles/face_trainer.dir/src/face_trainer.o: ../src/face_trainer.cpp
CMakeFiles/face_trainer.dir/src/face_trainer.o: ../manifest.xml
CMakeFiles/face_trainer.dir/src/face_trainer.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/face_trainer.dir/src/face_trainer.o: /opt/ros/fuerte/share/roscpp/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marco/fuerte_workspace/tbots_vision_pkg/classification/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/face_trainer.dir/src/face_trainer.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/face_trainer.dir/src/face_trainer.o -c /home/marco/fuerte_workspace/tbots_vision_pkg/classification/src/face_trainer.cpp

CMakeFiles/face_trainer.dir/src/face_trainer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/face_trainer.dir/src/face_trainer.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/marco/fuerte_workspace/tbots_vision_pkg/classification/src/face_trainer.cpp > CMakeFiles/face_trainer.dir/src/face_trainer.i

CMakeFiles/face_trainer.dir/src/face_trainer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/face_trainer.dir/src/face_trainer.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/marco/fuerte_workspace/tbots_vision_pkg/classification/src/face_trainer.cpp -o CMakeFiles/face_trainer.dir/src/face_trainer.s

CMakeFiles/face_trainer.dir/src/face_trainer.o.requires:
.PHONY : CMakeFiles/face_trainer.dir/src/face_trainer.o.requires

CMakeFiles/face_trainer.dir/src/face_trainer.o.provides: CMakeFiles/face_trainer.dir/src/face_trainer.o.requires
	$(MAKE) -f CMakeFiles/face_trainer.dir/build.make CMakeFiles/face_trainer.dir/src/face_trainer.o.provides.build
.PHONY : CMakeFiles/face_trainer.dir/src/face_trainer.o.provides

CMakeFiles/face_trainer.dir/src/face_trainer.o.provides.build: CMakeFiles/face_trainer.dir/src/face_trainer.o

# Object files for target face_trainer
face_trainer_OBJECTS = \
"CMakeFiles/face_trainer.dir/src/face_trainer.o"

# External object files for target face_trainer
face_trainer_EXTERNAL_OBJECTS =

../bin/face_trainer: CMakeFiles/face_trainer.dir/src/face_trainer.o
../bin/face_trainer: CMakeFiles/face_trainer.dir/build.make
../bin/face_trainer: CMakeFiles/face_trainer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/face_trainer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/face_trainer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/face_trainer.dir/build: ../bin/face_trainer
.PHONY : CMakeFiles/face_trainer.dir/build

CMakeFiles/face_trainer.dir/requires: CMakeFiles/face_trainer.dir/src/face_trainer.o.requires
.PHONY : CMakeFiles/face_trainer.dir/requires

CMakeFiles/face_trainer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/face_trainer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/face_trainer.dir/clean

CMakeFiles/face_trainer.dir/depend:
	cd /home/marco/fuerte_workspace/tbots_vision_pkg/classification/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marco/fuerte_workspace/tbots_vision_pkg/classification /home/marco/fuerte_workspace/tbots_vision_pkg/classification /home/marco/fuerte_workspace/tbots_vision_pkg/classification/build /home/marco/fuerte_workspace/tbots_vision_pkg/classification/build /home/marco/fuerte_workspace/tbots_vision_pkg/classification/build/CMakeFiles/face_trainer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/face_trainer.dir/depend

