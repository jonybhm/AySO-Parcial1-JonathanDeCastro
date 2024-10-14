#!/bin/bash

sudo groupadd grupoprogramadores
sudo useradd -m -s /bin/bash -c "creando el usuario programadores" -G grupoprogramadores programadores 

sudo groupadd grupotester
sudo useradd -m -s /bin/bash -c "creando el usuario tester" -G grupotester tester 

sudo groupadd grupoanalistas
sudo useradd -m -s /bin/bash -c "creando el usuario analistas" -G grupoanalistas analistas 

sudo groupadd grupodisenadores
sudo useradd -m -s /bin/bash -c "creando el usuario disenadores" -G grupodisenadores disenadores 

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

sudo -u whoami programadores >> $HOME/parcial1/validar.txt
sudo -u whoami tester >> $HOME/parcial1/validar.txt
sudo -u whoami analistas >> $HOME/parcial1/validar.txt
sudo -u whoami disenadores >> $HOME/parcial1/validar.txt
