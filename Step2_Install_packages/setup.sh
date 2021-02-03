#!/bin/bash

echo "Install Rover Robotics packages from source"

echo "Creating WORKSPACE"

udo apt-get install ros-melodic-roslint

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