#!/bin/bash

sudo groupadd grupoprogramadores
sudo useradd -m -s /bin/bash -c "programadores" -G grupoprogramadores programadores 

sudo groupadd grupotester
sudo useradd -m -s /bin/bash -c "tester" -G grupotester tester 

sudo groupadd grupoanalistas
sudo useradd -m -s /bin/bash -c "analistas" -G grupoanalistas analistas 

sudo groupadd grupodisenadores
sudo useradd -m -s /bin/bash -c "disenadores" -G grupodisenadores disenadores 

sudo mkdir -p $HOME/parcial1/Examenes-UTN/{alumno_{1..3},profesores} 

sudo chmod 750 $HOME/parcial1/Examenes-UTN/alumno_1
sudo chmod 760 $HOME/parcial1/Examenes-UTN/alumno_2
sudo chmod 700 $HOME/parcial1/Examenes-UTN/alumno_3
sudo chmod 775 $HOME/parcial1/Examenes-UTN/profesores

sudo chown programadores:grupoprogramadores $HOME/parcial1/Examenes-UTN/alumno_1
sudo chown tester:grupotester $HOME/parcial1/Examenes-UTN/alumno_2
sudo chown analistas:grupoanalistas $HOME/parcial1/Examenes-UTN/alumno_3
sudo chown disenadores:grupodisenadores $HOME/parcial1/Examenes-UTN/profesores

sudo touch $HOME/parcial1/validar.txt

sudo -u programadores whoami >> $HOME/parcial1/validar.txt
sudo -u tester whoami >> $HOME/parcial1/validar.txt
sudo -u analistas whoami >> $HOME/parcial1/validar.txt
sudo -u disenadores whoami >> $HOME/parcial1/validar.txt
