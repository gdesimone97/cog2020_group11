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
CMAKE_SOURCE_DIR = /home/mivia/cog2020_group11/src/naoqi_bridge/naoqi_sensors_py

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mivia/cog2020_group11/build/naoqi_sensors_py

# Utility rule file for naoqi_sensors_py_gencfg.

# Include the progress variables for this target.
include CMakeFiles/naoqi_sensors_py_gencfg.dir/progress.make

CMakeFiles/naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h
CMakeFiles/naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg/NaoqiCameraConfig.py
CMakeFiles/naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h
CMakeFiles/naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg/NaoqiMicrophoneConfig.py


/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h: /home/mivia/cog2020_group11/src/naoqi_bridge/naoqi_sensors_py/cfg/NaoqiCamera.cfg
/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h: /opt/ros/melodic/share/dynamic_reconfigure/templates/ConfigType.py.template
/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h: /opt/ros/melodic/share/dynamic_reconfigure/templates/ConfigType.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mivia/cog2020_group11/build/naoqi_sensors_py/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating dynamic reconfigure files from cfg/NaoqiCamera.cfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg/NaoqiCameraConfig.py"
	catkin_generated/env_cached.sh /home/mivia/cog2020_group11/build/naoqi_sensors_py/setup_custom_pythonpath.sh /home/mivia/cog2020_group11/src/naoqi_bridge/naoqi_sensors_py/cfg/NaoqiCamera.cfg /opt/ros/melodic/share/dynamic_reconfigure/cmake/.. /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py

/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiCameraConfig.dox: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiCameraConfig.dox

/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiCameraConfig-usage.dox: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiCameraConfig-usage.dox

/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg/NaoqiCameraConfig.py: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg/NaoqiCameraConfig.py

/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiCameraConfig.wikidoc: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiCameraConfig.wikidoc

/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h: /home/mivia/cog2020_group11/src/naoqi_bridge/naoqi_sensors_py/cfg/NaoqiMicrophone.cfg
/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h: /opt/ros/melodic/share/dynamic_reconfigure/templates/ConfigType.py.template
/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h: /opt/ros/melodic/share/dynamic_reconfigure/templates/ConfigType.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mivia/cog2020_group11/build/naoqi_sensors_py/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating dynamic reconfigure files from cfg/NaoqiMicrophone.cfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg/NaoqiMicrophoneConfig.py"
	catkin_generated/env_cached.sh /home/mivia/cog2020_group11/build/naoqi_sensors_py/setup_custom_pythonpath.sh /home/mivia/cog2020_group11/src/naoqi_bridge/naoqi_sensors_py/cfg/NaoqiMicrophone.cfg /opt/ros/melodic/share/dynamic_reconfigure/cmake/.. /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py

/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiMicrophoneConfig.dox: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiMicrophoneConfig.dox

/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiMicrophoneConfig-usage.dox: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiMicrophoneConfig-usage.dox

/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg/NaoqiMicrophoneConfig.py: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg/NaoqiMicrophoneConfig.py

/home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiMicrophoneConfig.wikidoc: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiMicrophoneConfig.wikidoc

naoqi_sensors_py_gencfg: CMakeFiles/naoqi_sensors_py_gencfg
naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiCameraConfig.h
naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiCameraConfig.dox
naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiCameraConfig-usage.dox
naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg/NaoqiCameraConfig.py
naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiCameraConfig.wikidoc
naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/include/naoqi_sensors_py/NaoqiMicrophoneConfig.h
naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiMicrophoneConfig.dox
naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiMicrophoneConfig-usage.dox
naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/lib/python2.7/dist-packages/naoqi_sensors_py/cfg/NaoqiMicrophoneConfig.py
naoqi_sensors_py_gencfg: /home/mivia/cog2020_group11/devel/.private/naoqi_sensors_py/share/naoqi_sensors_py/docs/NaoqiMicrophoneConfig.wikidoc
naoqi_sensors_py_gencfg: CMakeFiles/naoqi_sensors_py_gencfg.dir/build.make

.PHONY : naoqi_sensors_py_gencfg

# Rule to build all files generated by this target.
CMakeFiles/naoqi_sensors_py_gencfg.dir/build: naoqi_sensors_py_gencfg

.PHONY : CMakeFiles/naoqi_sensors_py_gencfg.dir/build

CMakeFiles/naoqi_sensors_py_gencfg.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/naoqi_sensors_py_gencfg.dir/cmake_clean.cmake
.PHONY : CMakeFiles/naoqi_sensors_py_gencfg.dir/clean

CMakeFiles/naoqi_sensors_py_gencfg.dir/depend:
	cd /home/mivia/cog2020_group11/build/naoqi_sensors_py && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mivia/cog2020_group11/src/naoqi_bridge/naoqi_sensors_py /home/mivia/cog2020_group11/src/naoqi_bridge/naoqi_sensors_py /home/mivia/cog2020_group11/build/naoqi_sensors_py /home/mivia/cog2020_group11/build/naoqi_sensors_py /home/mivia/cog2020_group11/build/naoqi_sensors_py/CMakeFiles/naoqi_sensors_py_gencfg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/naoqi_sensors_py_gencfg.dir/depend

