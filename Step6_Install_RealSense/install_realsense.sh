#!/bin/bash

echo "Instalado Bibliotecas"
read -p "Desea inatalar las Bibliotecas librealsense2-dkms y librealsense2-utils? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    echo "Registrando Clave pública del servidor"
    sudo apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
    echo "Agregando el servidor a la lista de repositorios"
    sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo bionic main" -u

    echo "Se instalaran las Bibliotecas librealsense2-dkms y librealsense2-utils"

    sudo apt-get install librealsense2-dkms 

    sudo apt-get install librealsense2-utils
else
    echo "Instalacion interumpida"
    exit 0
fi

echo "Instalando los paquetes de desarrollador y depuración"
read -p "Desea instalar los paquetes de desarrollador y depuración? <y/N> " prompt2
if [[ $prompt2 == "y" || $prompt2 == "Y" || $prompt2 == "yes" || $prompt2 == "Yes" ]]
then
    echo "Se inatalaran los paquetes de desarrollador y depuración"

    sudo apt-get install librealsense2-dev

    sudo apt-get install librealsense2-dbg
else 
    echo "Instalacion interumpida"
    exit 0
fi
echo "Done!"