#!/usr/bin/env bash
#Check if user has  configured Ubuntu repositories(ROS ARM Installation Section 2.1"
echo ""
echo "Have you configured your Ubuntu repositories?" 
echo "You must allow \"restricted\", \"universe\" , \"multiverse\"."
echo "https://help.ubuntu.com/community/Repositories/Ubuntu"
echo ""
echo "PRESS [ENTER] TO CONTINUE"
read

#Set Locale
sudo update-locale LANG=C LANGUAGE=C LC_ALL=C LC_MESSAGES=POSIX

#Setup the sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
#Setup the keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116

#ROS Installation
sudo apt-get -y  update
sudo apt-get -y install ros-indigo-ros-base

#Initialize rosdep
sudo apt-get -y install python-rosdep
sudo rosdep init
rosdep update

#Setup Environment
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc

#Install rosinstall
sudo apt-get -y install python-rosinstall


echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

#make sure your system can compile using CMake
sudo apt-get -y install build-essential

#create catkin workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws/
catkin_make
