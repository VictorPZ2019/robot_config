#!/bin/bash
# Create systemd scripts  
echo "Estos scripts inician ROS cuando arranca su computadora"

sudo mkdir /etc/roverrobotics

echo "Copiando roscore.service en /etc/systemd/system/roscore.service "
sudo cp roscore.service /etc/systemd/system/roscore.service

echo "Copiando env.sh en /etc/roverrobotics/env.sh "
sudo cp env.sh /etc/roverrobotics/env.sh

echo "Copiando roverrobotics.service en /etc/systemd/system/roverrobotics.service"
sudo cp roverrobotics.service /etc/systemd/system/roverrobotics.service

echo "Copiando roverrobotics en /usr/sbin/roverrobotics"
sudo cp roverrobotics /usr/sbin/roverrobotics
echo "Enable services"

sudo systemctl enable xboxdrv.service

sudo systemctl enable roverrobotics.service

sudo systemctl enable roscore.service

echo "Dandole permiso de ejecutable al archivo roverrobotics"
sudo chmod +x /usr/sbin/roverrobotics

echo "Spcrit para el inicio de ROS en el boot fueron instalados"

echo "Done!"