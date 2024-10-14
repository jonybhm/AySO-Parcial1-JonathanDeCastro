#!/bin/bash


lsblk -f >> $HOME/parcial1/puntob.sh


sudo fdisk /dev/sdc <<EOF
n
p
1

+2G
n
p
2

+2G
n
p
3

+2G
n
e


n
l


w
EOF


sudo mkfs -t ext3 /dev/sdc1     
sudo mkfs -t ext3 /dev/sdc2   
sudo mkfs -t ext3 /dev/sdc3   
sudo mkfs -t ext3 /dev/sdc5   


sudo mkdir -p $HOME/mnt/sdc1
sudo mkdir -p $HOME/mnt/sdc2
sudo mkdir -p $HOME/mnt/sdc3
sudo mkdir -p $HOME/mnt/sdc5


sudo mount -t ext3 /dev/sdc1 $HOME/mnt/sdc1
sudo mount -t ext3 /dev/sdc2 $HOME/mnt/sdc2
sudo mount -t ext3 /dev/sdc3 $HOME/mnt/sdc3
sudo mount -t ext3 /dev/sdc5 $HOME/mnt/sdc5


lsblk -f >> $HOME/parcial1/puntob.sh
