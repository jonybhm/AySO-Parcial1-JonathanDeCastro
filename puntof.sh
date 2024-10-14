#!/bin/bash

sudo touch /home/jony/parcial1/Filtro_Avanzado.txt
sudo chmod 755 /home/jony/parcial1/Filtro_Avanzado.txt

ip=$(curl -s ifconfig.me)
echo "Mi IP Publica es: $ip" > /home/jony/parcial1/Filtro_Avanzado.txt

usuario=$(grep "^$(whoami):" /etc/passwd  |awk -F ':' '{print $1}' )
echo "Mi usuario es: $usuario" >> /home/jony/parcial1/Filtro_Avanzado.txt

hash=$(sudo grep "^$(whoami):" /etc/shadow | awk -F ':' '{print $2}')
echo "El hash de mi usuario es: $hash" >> /home/jony/parcial1/Filtro_Avanzado.txt
