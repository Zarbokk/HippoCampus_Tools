echo "PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '">> ~/.bashrc
cd ~/Documents
sudo apt purge cmake
git clone https://github.com/Kitware/CMake.git
cd CMake
./bootstrap && make && sudo make install


sudo apt-get update -y

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt-get update -y

sudo apt-get upgrade -y


sudo apt-get install python-catkin-tools -y
sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential -y


sudo rosdep init -y
rosdep update -y

mkdir -p ~/catkin_ws

cd ~/catkin_ws
sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential cmake -y

rosinstall_generator ros_comm --rosdistro melodic --deps --wet-only --tar > melodic-ros_comm-wet.rosinstall

wstool init src melodic-ros_comm-wet.rosinstall

rosdep install -y --from-paths src --ignore-src --rosdistro melodic -r --os=debian:buster


sudo apt-get install python-catkin-tools -y
sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential -y

catkin build


echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential cmake -y

rosinstall_generator mavlink mavros mavros_extras --rosdistro melodic --deps --wet-only --tar > melodic-mavros.rosinstall 

wstool merge -t src melodic-mavros.rosinstall
wstool update -t src

sudo apt-get install python-catkin-tools -y
sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential -y

catkin build




