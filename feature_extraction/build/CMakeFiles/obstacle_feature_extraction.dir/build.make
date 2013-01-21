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
CMAKE_SOURCE_DIR = /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction/build

# Include any dependencies generated for this target.
include CMakeFiles/obstacle_feature_extraction.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/obstacle_feature_extraction.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/obstacle_feature_extraction.dir/flags.make

CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: CMakeFiles/obstacle_feature_extraction.dir/flags.make
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: ../src/obstacle_feature_extraction.cpp
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: ../manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/stacks/vision_opencv/opencv2/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/stacks/vision_opencv/cv_bridge/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/share/ros/core/rosbuild/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/share/roslib/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/stacks/pluginlib/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o: /opt/ros/fuerte/stacks/image_common/image_transport/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o -c /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction/src/obstacle_feature_extraction.cpp

CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction/src/obstacle_feature_extraction.cpp > CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.i

CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction/src/obstacle_feature_extraction.cpp -o CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.s

CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o.requires:
.PHONY : CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o.requires

CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o.provides: CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o.requires
	$(MAKE) -f CMakeFiles/obstacle_feature_extraction.dir/build.make CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o.provides.build
.PHONY : CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o.provides

CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o.provides.build: CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o

# Object files for target obstacle_feature_extraction
obstacle_feature_extraction_OBJECTS = \
"CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o"

# External object files for target obstacle_feature_extraction
obstacle_feature_extraction_EXTERNAL_OBJECTS =

../bin/obstacle_feature_extraction: CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o
../bin/obstacle_feature_extraction: CMakeFiles/obstacle_feature_extraction.dir/build.make
../bin/obstacle_feature_extraction: CMakeFiles/obstacle_feature_extraction.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/obstacle_feature_extraction"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obstacle_feature_extraction.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/obstacle_feature_extraction.dir/build: ../bin/obstacle_feature_extraction
.PHONY : CMakeFiles/obstacle_feature_extraction.dir/build

CMakeFiles/obstacle_feature_extraction.dir/requires: CMakeFiles/obstacle_feature_extraction.dir/src/obstacle_feature_extraction.o.requires
.PHONY : CMakeFiles/obstacle_feature_extraction.dir/requires

CMakeFiles/obstacle_feature_extraction.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/obstacle_feature_extraction.dir/cmake_clean.cmake
.PHONY : CMakeFiles/obstacle_feature_extraction.dir/clean

CMakeFiles/obstacle_feature_extraction.dir/depend:
	cd /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction/build /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction/build /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction/build/CMakeFiles/obstacle_feature_extraction.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/obstacle_feature_extraction.dir/depend

