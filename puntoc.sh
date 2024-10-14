#!/bin/bash

sudo groupadd grupoprogramadores
sudo useradd -m -s /bin/bash -c "programadores" -G grupoprogramadores programadores 

sudo groupadd grupotester
sudo useradd -m -s /bin/bash -c "tester" -G grupotester tester 

sudo groupadd grupoanalistas
sudo useradd -m -s /bin/bash -c "analistas" -G grupoanalistas analistas 

sudo groupadd grupodisenadores
sudo useradd -m -s /bin/bash -c "disenadores" -G grupodisenadores disenadores 

sudo mkdir -p /home/jony/parcial1/Examenes-UTN/{alumno_{1..3},profesores} 

sudo chmod 750 /home/jony/parcial1/Examenes-UTN/alumno_1
sudo chmod 760 /home/jony/parcial1/Examenes-UTN/alumno_2
sudo chmod 700 /home/jony/parcial1/Examenes-UTN/alumno_3
sudo chmod 775 /home/jony/parcial1/Examenes-UTN/profesores

sudo chown programadores:grupoprogramadores /home/jony/parcial1/Examenes-UTN/alumno_1
sudo chown tester:grupotester /home/jony/parcial1/Examenes-UTN/alumno_2
sudo chown analistas:grupoanalistas /home/jony/parcial1/Examenes-UTN/alumno_3
sudo chown disenadores:grupodisenadores /home/jony/parcial1/Examenes-UTN/profesores

sudo touch /home/jony/parcial1/validar.txt

sudo -u programadores whoami >> /home/jony/parcial1/validar.txt
sudo -u tester whoami >> /home/jony/parcial1/validar.txt
sudo -u analistas whoami >> /home/jony/parcial1/validar.txt
sudo -u disenadores whoami >> /home/jony/parcial1/validar.txt
