#!/bin/bash

echo "Install Rover Robotics packages from source"

echo "Creating WORKSPACE"
mkdir -p ~/catkin_ws/src

cd ~/catkin_ws/src

echo "Cloning rr_openrover_stack package"
git clone https://github.com/VictorPZ2019/rr_openrover_stack.git

echo "Cloning rplidar_ros package"
git clone https://github.com/Slamtec/rplidar_ros.git

sudo apt-get install ros-melodic-roslint

sudo apt-get install ros-melodic-rosserial

sudo apt-get install ros-melodic-rosserial-arduino

sudo apt-get install ros-melodic-imu-filter-madgwick

sudo apt-get install ros-melodic-rtabmap-ros

sudo apt-get install ros-melodic-map-server

sudo apt-get install ros-melodic-tf2

sudo apt-get install ros-melodic-tf2-ros

sudo apt-get install ros-perception

sudo apt-get install ros-melodic-navigation

sudo apt-get install ros-melodic-twist-mux

sudo apt-get install ros-melodic-tf2-geometry-msgs

sudo apt-get install ros-melodic-robot-localization

sudo apt-get install ros-melodic-gmapping

sudo apt-get install ros-melodic-move-base

sudo apt-get install ros-melodic-realsense2-camera

sudo apt-get install ros-melodic-realsense2-description

cd ~/catkin_ws 

catkin_make 

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

source ~/.bashrc
echo "Done!"