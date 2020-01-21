#!/bin/bash

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin init
wstool init src
cd ~/catkin_ws/src

git clone https://github.com/AprilRobotics/apriltag_ros.git

git clone https://github.com/AprilRobotics/apriltag.git

git clone https://github.com/DanielDuecker/muAUV-localization_ros.git

git clone https://github.com/Zarbokk/utilities_localisation.git
cd ..
catkin build
cd

source .bashrc