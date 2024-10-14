sudo fdisk -l
sudo fdisk /dev/sdb
sudo fdisk -l
sudo fdisk /dev/sdb
sudo fdisk -l
sudo fdisk /dev/sdb
sudo fdisk /dev/sdb -l
sudo pvcreate /dev/sdb1
sudo vgcreate vg_datos /dev/sdb1
sudo vgs
sudo lvs
sudo lvcreate -l +50%FREE vg_datos -n lv_peliculas
sudo lvcreate -l +50%FREE vg_datos -n lv_series
sudo lvs
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_peliculas 
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_series 
sudo mkdir -p/datos/{Peliculas,Series}
sudo mkdir -p /datos/{Peliculas,Series}
sudo mount /dev/mapper/vg_datos-lv_series /datos/Series
sudo mount /dev/mapper/vg_datos-lv_peliculas /datos/Peliculas
df -h
history
cd parcial1/
history
fdisk -l
sudo fdisk -l
sudo pvcreate /dev/sdc1/ dev/sdc2 /dev/sdc3
sudo pvcreate /dev/sdc1 /dev/sdc2
tree
mkdir -p mnt
tree
mkfs -t ext3 /dev/sdc1
sudo mkfs -t ext3 /dev/sdc1
sudo mkfs -t ext3 /dev/sdc2
sudo mkfs -t ext3 /dev/sdc3
lsblk -f
sudo mkfs -t ext3 /dev/sdc5
lsblk -f
sudo mount -t ext3 /dev/sdc1 /mnt
lsblk -f
sudo mount -t ext3 /dev/sdc2 /mnt
sudo mount -t ext3 /dev/sd32 /mnt
sudo mount -t ext3 /dev/sdc3 /mnt
sudo mount -t ext3 /dev/sdc5 /mnt
lsblk -f
tree
nano puntob.sh
git status
git add .
git status
git commit - m "added puntob.sh"
git commit -m "added puntob.sh"
git push origin master
sudo fdisk /dev/sdc
sudo swapoff /dev/sdc1
lsblk -f
sudo umount /dev/sdc1
sudo lsof /dev/sdc1
whoami parcial1
whoami --help
whoami jony
nano puntoc.sh
./puntoc.sh 
nano puntoc.sh
./puntoc.sh 
whoami
pwd
tree
cat validar.txt 
sudo -u tester whoami 
cd home/jony
cd ..
cd home$/jony/parcial1
cd jony
cd parcial1
nano puntoc.sh
nano puntob.sh 
cd $HOME
cd ojny
pwd
cd ..
pwd
cd $HOME
pwd
cd parcial1
pwd
nano puntoa.sh 
nano puntob.sh 
git status
git add .
git status
git commit -m "added puntoc"
git push origin master
history
cd parcial1
pwd
nano puntod.sh 
./puntod.sh
tree
nano puntod.sh 
./puntod.sh
tree
cat validar.txt 
./puntoc.sh
nano puntoc.sh 
./puntoc.sh
cat validar.txt 
nano puntoc.sh 
./puntoc.sh
cat validar.txt 
git status
git add .
git status
git commit -m "added puntod"
git push origin master
git status
nano puntoe.sh 
./puntoe.sh
nano puntoe.sh 
cat Filtro_Basico.txt 
nano puntoe.sh 
./puntoe.sh
ls -l
nano puntoe.sh 
./puntoe.sh
nano puntoe.sh 
./puntoe.sh
ls -l
nano puntoe.sh 
sudo ./puntoe.sh
nano puntoe.sh 
sudo ./puntoe.sh
tree
cat Filtro_Basico.txt 
nano puntoe.sh 
nano puntof.sh 
sudo ./puntof.sh
cat Filtro_Avanzado.txt 
nano puntoa.sh 
nano puntob.sh 
nano puntoc.sh 
nano puntod.sh 
nano puntoe.sh 
nano puntof.sh 
git status
git add .
git status
sudo ./puntoa.sh 
sudo ./puntob.sh 
sudo fdisk -l
lsblk -f
sudo ./puntoc.sh 
sudo ./puntod.sh 
tree
sudo ./puntoe.sh 
sudo ./puntof.sh 
cat Filtro_Avanzado.txt 
cat Filtro_Basico.txt 
nano puntoe.sh
sudo ./puntoe.sh 
cat Filtro_Basico.txt 
nano puntoe.sh
sudo ./puntoe.sh 
cat Filtro_Basico.txt 
nano puntoe.sh
sudo ./puntoe.sh 
cat Filtro_Basico.txt 
nano puntoe.sh
sudo ./puntoe.sh 
cat Filtro_Basico.txt 
nano puntof.sh
sudo ./puntof.sh 
cat Filtro_Avanzado.txt 
history -a
