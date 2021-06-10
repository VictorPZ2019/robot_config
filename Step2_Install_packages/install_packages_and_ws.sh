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

sudo apt-get -y install ros-melodic-roslint

sudo apt-get -y install ros-melodic-rosserial

sudo apt-get -y install ros-melodic-rosserial-arduino

sudo apt-get -y install ros-melodic-imu-filter-madgwick

sudo apt-get -y install ros-melodic-rtabmap-ros

sudo apt-get -y install ros-melodic-map-server

sudo apt-get -y install ros-melodic-tf2

sudo apt-get -y install ros-melodic-tf2-ros

sudo apt-get -y install ros-perception

sudo apt-get -y install ros-melodic-navigation

sudo apt-get -y install ros-melodic-twist-mux

sudo apt-get -y install ros-melodic-tf2-geometry-msgs

sudo apt-get -y install ros-melodic-robot-localization

sudo apt-get -y install ros-melodic-gmapping

sudo apt-get -y install ros-melodic-move-base

sudo apt-get -y install ros-melodic-realsense2-camera

sudo apt-get -y install ros-melodic-realsense2-description

cd ~/catkin_ws 

catkin_make 

echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

source ~/.bashrc
echo "Done!"