#!/bin/bash

echo "1. Setup your sources.list"

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

echo "2. Set up your keys"

sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

echo "2. Installation"

echo "Updating debian packages"
sudo apt update 

echo "It will be installed ros-melodic-desktop-full"

sudo apt -y install ros-melodic-desktop-full

echo "3. Environment setup"

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo "4. Dependencies for building packages"

sudo apt -y install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

echo "5. Initialize rosdep"

sudo apt -y install python-rosdep

sudo rosdep init

rosdep update

echo "ROS MELODIC is installed"
echo "Done!"