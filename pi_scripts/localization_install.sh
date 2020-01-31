cd ~/catkin_ws/src
git clone https://github.com/DanielDuecker/muAUV-localization_ros.git
cd ..

rosinstall_generator apriltag_ros --rosdistro melodic --deps --wet-only --tar > melodic-localization.rosinstall
wstool merge -t src melodic-localization.rosinstall
wstool update -t src

catkin build


