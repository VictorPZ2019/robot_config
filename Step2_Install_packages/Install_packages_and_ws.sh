#!/bin/bash

echo "Install Rover Robotics packages from source"

echo "Creating WORKSPACE"
mkdir -p ~/catkin_ws/src

cd ~/catkin_ws/src

echo "Cloning rr_openrover_stack package"
git clone https://github.com/octavio2895/rr_openrover_stack.git

echo "Cloning anubis_nav"
git clone https://github.com/octavio2895/anubis_nav.git

echo "Cloning nebulizador_arm"
git clone https://github.com/octavio2895/nebulizador_arm.git

echo "Cloning rplidar_ros package"
git clone https://github.com/Slamtec/rplidar_ros.git

sudo apt-get -y install ros-$ROS_DISTRO-roslint

sudo apt-get -y install ros-$ROS_DISTRO-rosserial

sudo apt-get -y install ros-$ROS_DISTRO-rosserial-arduino

sudo apt-get -y install ros-$ROS_DISTRO-imu-filter-madgwick

sudo apt-get -y install ros-$ROS_DISTRO-rtabmap-ros

sudo apt-get -y install ros-$ROS_DISTRO-map-server

sudo apt-get -y install ros-$ROS_DISTRO-tf2

sudo apt-get -y install ros-$ROS_DISTRO-tf2-ros

sudo apt-get -y install ros-$ROS_DISTRO-perception

sudo apt-get -y install ros-$ROS_DISTRO-navigation

sudo apt-get -y install ros-$ROS_DISTRO-twist-mux

sudo apt-get -y install ros-$ROS_DISTRO-tf2-geometry-msgs

sudo apt-get -y install ros-$ROS_DISTRO-robot-localization

sudo apt-get -y install ros-$ROS_DISTRO-gmapping

sudo apt-get -y install ros-$ROS_DISTRO-move-base

sudo apt-get -y install ros-$ROS_DISTRO-realsense2-camera

sudo apt-get -y install ros-$ROS_DISTRO-realsense2-description

cd ~/catkin_ws  

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

source ~/.bashrc
echo "Done!"