# CMake generated Testfile for 
# Source directory: /home/mivia/cog2020_group11/src/pepper_robot/pepper_bringup
# Build directory: /home/mivia/cog2020_group11/build/pepper_bringup
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_pepper_bringup_roslaunch-check_launch "/home/mivia/cog2020_group11/build/pepper_bringup/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/mivia/cog2020_group11/build/pepper_bringup/test_results/pepper_bringup/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/mivia/cog2020_group11/build/pepper_bringup/test_results/pepper_bringup" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/mivia/cog2020_group11/build/pepper_bringup/test_results/pepper_bringup/roslaunch-check_launch.xml' '/home/mivia/cog2020_group11/src/pepper_robot/pepper_bringup/launch' ")
subdirs("gtest")
