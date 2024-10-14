#!/bin/bash


lsblk -f >> /home/jony/parcial1/puntob.sh


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


sudo mkdir -p /home/jony/parcial1/mnt/sdc1
sudo mkdir -p /home/jony/parcial1/mnt/sdc2
sudo mkdir -p /home/jony/parcial1/mnt/sdc3
sudo mkdir -p /home/jony/parcial1/mnt/sdc5


sudo mount -t ext3 /dev/sdc1 /home/jony/parcial1/mnt/sdc1
sudo mount -t ext3 /dev/sdc2 /home/jony/parcial1/mnt/sdc2
sudo mount -t ext3 /dev/sdc3 /home/jony/parcial1/mnt/sdc3
sudo mount -t ext3 /dev/sdc5 /home/jony/parcial1/mnt/sdc5


lsblk -f >> /home/jony/parcial1/puntob.sh
NAME   FSTYPE FSVER LABEL  UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
sda                                                                            
├─sda1                                                                         
├─sda2 ext4   1.0          f35530fe-506b-4334-8c1b-d55298fe5082  647,8M    27% /boot
└─sda3 btrfs        fedora 0a352901-5ef3-4171-9587-55b3d5953252   24,4G    14% /home
                                                                               /
sdb                                                                            
sdc                                                                            
├─sdc1 ext3   1.0          278eb517-6cb1-4991-8584-4ba651465dce                
├─sdc2 ext3   1.0          56421229-e124-4f24-b8eb-a2a7af809655                
├─sdc3 ext3   1.0          c34167a4-e9dc-4bdf-ae37-5a75d4ba40e3                
├─sdc4                                                                         
└─sdc5 ext3   1.0          d4c01088-7996-417e-9ce5-b4850cce60cf                
zram0                                                                          [SWAP]
NAME   FSTYPE FSVER LABEL  UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
sda                                                                            
├─sda1                                                                         
├─sda2 ext4   1.0          f35530fe-506b-4334-8c1b-d55298fe5082  647,8M    27% /boot
└─sda3 btrfs        fedora 0a352901-5ef3-4171-9587-55b3d5953252   24,4G    14% /home
                                                                               /
sdb                                                                            
sdc                                                                            
├─sdc1 ext3   1.0          9718b232-acfe-458e-b037-78ea0559d1e4    1,8G     0% /home/jony/parcial1/mnt/sdc1
├─sdc2 ext3   1.0          1efbda96-ff18-466f-879c-7984695bb1cf    1,8G     0% /home/jony/parcial1/mnt/sdc2
├─sdc3 ext3   1.0          fac4e7e7-784d-4120-9811-f27ee4719117    1,8G     0% /home/jony/parcial1/mnt/sdc3
├─sdc4                                                                         
└─sdc5 ext3   1.0          0977454e-6c1d-4944-852c-3b7bcc193245    3,7G     0% /home/jony/parcial1/mnt/sdc5
zram0                                                                          [SWAP]
