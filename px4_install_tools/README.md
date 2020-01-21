# Install PX4 Software with Gazebo and Ros-Melodic on Ubuntu 18.04

For installation of px4-Software:
```
source install_px4_software.sh
```
This installs the px4 software, Gazebo, Ros-Melodic(with apt), and adds mavros to your catkin_ws


For localization:
```
source localization_gazebo.sh
```
Installs in catkin/src the apriltags and localization tools

in ~/src/Firmware to start gazebo simulation run:
```
DONT_RUN=1 make px4_sitl_default gazebo_uuv2

source ~/catkin_ws/devel/setup.bash    # (optional)

source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default

export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)

export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo

roslaunch px4 posix_sitl.launch
```