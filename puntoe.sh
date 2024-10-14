#!/bin/bash

sudo touch /home/jony/parcial1/Filtro_Basico.txt
sudo chmod 755 /home/jony/parcial1/Filtro_Basico.txt

memoria=$(cat /proc/meminfo | grep "MemTotal") 
echo "Total Memoria: $memoria" > /home/jony/parcial1/Filtro_Basico.txt

fabricante=$(sudo dmidecode -t chassis | grep "Manufacturer")
echo "Fabricante: $fabricante" >> /home/jony/parcial1/Filtro_Basico.txt

