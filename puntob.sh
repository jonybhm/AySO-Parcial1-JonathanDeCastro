#!/bin/bash


lsblk -f >> home/jony/parcial1/puntob.sh


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


sudo mkdir -p /mnt/sdc1
sudo mkdir -p /mnt/sdc2
sudo mkdir -p /mnt/sdc3
sudo mkdir -p /mnt/sdc5


sudo mount -t ext3 /dev/sdc1 /mnt/sdc1
sudo mount -t ext3 /dev/sdc2 /mnt/sdc2
sudo mount -t ext3 /dev/sdc3 /mnt/sdc3
sudo mount -t ext3 /dev/sdc5 /mnt/sdc5


lsblk -f >> home/jony/parcial1/puntob.sh
