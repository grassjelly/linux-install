#!/bin/sh
echo "ip=\$(ip addr show wlan0 | grep -o 'inet [0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+' | grep -o [0-9].*)"  >> ~/.bashrc
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
echo "export ROS_MASTER_URI=http://\$ip:11311"  >> ~/.bashrc
echo "export ROS_HOSTNAME=\$ip"  >> ~/.bashrc

echo "l_bringup=\"\"" >> ~/.bashrc
echo "l_nav=\"\"" >> ~/.bashrc
echo "l_slam=\"\"" >> ~/.bashrc
echo "l_teleop=\"\"" >> ~/.bashrc

echo "alias robot_bringup=\"\$l_bringup\""  >> ~/.bashrc
echo "alias robot_navigate=\"\$l_nav\""  >> ~/.bashrc
echo "alias robot_slam=\"\$l_slam\""  >> ~/.bashrc
echo "alias robot_teleop=\"\$l_teleop\""  >> ~/.bashrc

echo "r_nav=\"\"" >> ~/.bashrc
echo "r_slam=\"\"" >> ~/.bashrc
echo "r_odom=\"\"" >> ~/.bashrc

echo "alias rviz_navigate=\"rosrun rviz rviz -d \$r_nav\""  >> ~/.bashrc
echo "alias rviz_slam=\"rosrun rviz rviz -d \$r_slam\""  >> ~/.bashrc
echo "alias rviz_odometry=\"rosrun rviz rviz -d \$r_odom\""  >> ~/.bashrc
