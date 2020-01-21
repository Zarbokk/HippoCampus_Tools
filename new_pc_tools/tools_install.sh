#!/bin/bash

## Terminator htop system tools ( make git etc etc....)
sudo usermod -a -G dialout $USER

sudo apt-get update -y
sudo apt-get install git zip qtcreator cmake build-essential genromfs ninja-build exiftool astyle -y
# make sure xxd is installed, dedicated xxd package since Ubuntu 18.04 but was squashed into vim-common before
which xxd || sudo apt install xxd -y || sudo apt-get install vim-common --no-install-recommends -y
# Required python packages
sudo apt-get install python-argparse python-empy python-toml python-numpy python-dev python-pip -y
sudo -H pip install --upgrade pip
sudo -H pip install pandas jinja2 pyserial pyyaml
# optional python tools
sudo -H pip install pyulog


# jMAVSim simulator dependencies
echo "Installing jMAVSim simulator dependencies"
sudo apt-get install ant openjdk-8-jdk openjdk-8-jre -y


## Gazebo simulator dependencies
sudo apt-get install protobuf-compiler libeigen3-dev libopencv-dev -y


sudo apt-get update
## Get ROS/Gazebo

## Install rosinstall and other dependencies
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential -y



# MAVROS: https://dev.px4.io/en/ros/mavros_installation.html
## Install dependencies
sudo apt-get install python-catkin-tools python-rosinstall-generator -y


#Install geographiclib
sudo apt install geographiclib -y

echo "PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '">> ~/.bashrc

sudo apt install terminator -y
source .bashrc

sudo apt install libgstreamer1.0-dev

cd