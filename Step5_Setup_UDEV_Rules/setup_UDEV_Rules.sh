#!/bin/bash

echo "Instalando Rules para darle nombres especificos a la entrada de dato del ROVER, RPlidar y Xbox "
echo "Copiando roverrobotics.rules en /etc/udev/rules.d/roverrobotics.rules"
sudo cp roverrobotics.rules /etc/udev/rules.d/roverrobotics.rules

echo " Recargando Rules"
sudo udevadm control --reload-rules && sudo udevadm trigger

echo "Done!"