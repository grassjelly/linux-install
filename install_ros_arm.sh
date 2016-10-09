#!/usr/bin/env bash

#Set Locale
sudo update-locale LANG=C LANGUAGE=C LC_ALL=C LC_MESSAGES=POSIX

#Setup the sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
#Setup the keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116

#ROS Installation
sudo apt-get -y  update
sudo apt-get install ros-indigo-ros-base

#Initialize rosdep
sudo apt-get install python-rosdep
sudo rosdep init
rosdep update

#Setup Environment
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc

#Install rosinstall
sudo apt-get -y install python-rosinstall

#create catkin workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws/
catkin_make
