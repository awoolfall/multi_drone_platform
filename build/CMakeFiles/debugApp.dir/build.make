# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/jacob/catkin_ws/src/multi_drone_platform

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jacob/catkin_ws/src/multi_drone_platform/build

# Include any dependencies generated for this target.
include CMakeFiles/debugApp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/debugApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/debugApp.dir/flags.make

CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o: CMakeFiles/debugApp.dir/flags.make
CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o: ../src/debug/debug_window/debugAppTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jacob/catkin_ws/src/multi_drone_platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o -c /home/jacob/catkin_ws/src/multi_drone_platform/src/debug/debug_window/debugAppTest.cpp

CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jacob/catkin_ws/src/multi_drone_platform/src/debug/debug_window/debugAppTest.cpp > CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.i

CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jacob/catkin_ws/src/multi_drone_platform/src/debug/debug_window/debugAppTest.cpp -o CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.s

CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o.requires:

.PHONY : CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o.requires

CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o.provides: CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o.requires
	$(MAKE) -f CMakeFiles/debugApp.dir/build.make CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o.provides.build
.PHONY : CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o.provides

CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o.provides.build: CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o


# Object files for target debugApp
debugApp_OBJECTS = \
"CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o"

# External object files for target debugApp
debugApp_EXTERNAL_OBJECTS =

devel/lib/multi_drone_platform/debugApp: CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o
devel/lib/multi_drone_platform/debugApp: CMakeFiles/debugApp.dir/build.make
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librviz.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libOgreOverlay.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libOgreMain.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libGLU.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libGL.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libimage_transport.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libinteractive_markers.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/liblaser_geometry.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libclass_loader.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/libPocoFoundation.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libdl.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libresource_retriever.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libroslib.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librospack.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libpython2.7.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/liburdf.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/liburdfdom_sensor.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/liburdfdom_model_state.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/liburdfdom_model.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/liburdfdom_world.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libtinyxml.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librosconsole_bridge.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libtf.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libtf2_ros.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libactionlib.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libmessage_filters.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libroscpp.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_signals.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libxmlrpcpp.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libtf2.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libroscpp_serialization.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librosconsole.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librostime.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libcpp_common.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
devel/lib/multi_drone_platform/debugApp: /home/jacob/catkin_ws/devel/lib/libcrazyflie_cpp.so
devel/lib/multi_drone_platform/debugApp: devel/lib/libMDP_API.so
devel/lib/multi_drone_platform/debugApp: devel/lib/libDEBUGAPP.so
devel/lib/multi_drone_platform/debugApp: devel/lib/libDEBUGWINDOW.so
devel/lib/multi_drone_platform/debugApp: devel/lib/libRIGIDBODY.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librviz.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libOgreOverlay.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libOgreMain.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libGLU.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libGL.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libimage_transport.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libinteractive_markers.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/liblaser_geometry.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libclass_loader.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/libPocoFoundation.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libdl.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libresource_retriever.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libroslib.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librospack.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libpython2.7.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/liburdf.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/liburdfdom_sensor.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/liburdfdom_model_state.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/liburdfdom_model.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/liburdfdom_world.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libtinyxml.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librosconsole_bridge.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libtf.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libtf2_ros.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libactionlib.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libmessage_filters.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libroscpp.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_signals.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libxmlrpcpp.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libtf2.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libroscpp_serialization.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librosconsole.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/librostime.so
devel/lib/multi_drone_platform/debugApp: /opt/ros/kinetic/lib/libcpp_common.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/multi_drone_platform/debugApp: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
devel/lib/multi_drone_platform/debugApp: /home/jacob/catkin_ws/devel/lib/libcrazyflie_cpp.so
devel/lib/multi_drone_platform/debugApp: CMakeFiles/debugApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jacob/catkin_ws/src/multi_drone_platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/multi_drone_platform/debugApp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/debugApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/debugApp.dir/build: devel/lib/multi_drone_platform/debugApp

.PHONY : CMakeFiles/debugApp.dir/build

CMakeFiles/debugApp.dir/requires: CMakeFiles/debugApp.dir/src/debug/debug_window/debugAppTest.cpp.o.requires

.PHONY : CMakeFiles/debugApp.dir/requires

CMakeFiles/debugApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/debugApp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/debugApp.dir/clean

CMakeFiles/debugApp.dir/depend:
	cd /home/jacob/catkin_ws/src/multi_drone_platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jacob/catkin_ws/src/multi_drone_platform /home/jacob/catkin_ws/src/multi_drone_platform /home/jacob/catkin_ws/src/multi_drone_platform/build /home/jacob/catkin_ws/src/multi_drone_platform/build /home/jacob/catkin_ws/src/multi_drone_platform/build/CMakeFiles/debugApp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/debugApp.dir/depend

