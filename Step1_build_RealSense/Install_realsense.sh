#!/bin/bash

echo "Instalado Realsense SDK con paquetes de Debian"
read -p "Desea inatalar las Bibliotecas librealsense2-dev y librealsense2-utils? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    echo "Registrando Clave pública del servidor"
    sudo apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
    echo "Agregando el servidor a la lista de repositorios"
    sudo add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo bionic main" -u
    echo "Se intalara el SDK"
    sudo apt-get -y install librealsense2-dev
    sudo apt-get -y install librealsense2-utils
else
    echo "Instalacion interumpida"
    exit 0
fi
echo "Done!"