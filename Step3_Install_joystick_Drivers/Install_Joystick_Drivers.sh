#!/bin/bash

echo "Instalar ROS joystik driver"
echo "Esperando..."
echo "En Proceso.."
sudo apt-get install ros-$ROS_DISTRO-joy
echo "Se instalaran los rules"
echo "Conecte el dongle inalámbrico Xbox y encienda el controlador"

read -p "El dongle inalámbrico Xbox esta conetado?, Desea continuar? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
   sudo apt-get install --install-recommends jstest* joystick xboxdrv setserial
   echo "Esta bien si sale esto--> (rmmod: ERROR: Module xpad is not currently loaded) al correr --> sudo rmmod xpad "
   sudo rmmod xpad
   sudo cp 95-xboxdrv.rules /etc/udev/rules.d/95-xboxdrv.rules
   sudo cp xboxdrv.service /etc/systemd/system/xboxdrv.service
   echo "Instalacion completa"
   echo "RUN * sudo systemctl enable xboxdrv.service * "
else
  echo "Instalacion interumpida"
  exit 0
fi

echo "Done!"