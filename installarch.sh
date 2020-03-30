#!/bin/bash

cfdisk

mkfs.vfat -F 32 /dev/sda1

mkswap /dev/sda2

mkfs.xfs -f /dev/sda3

mkdir /mnt/boot

mount /dev/sda1 /mnt/boot

mount /dev/sda3 /mnt

pacman -Sy reflector 

reflector --sort rate --save /etp/pacman.d/mirrorlist

pacstrap /mnt linux linux-firmware base base-devel 

genfstab -U /mnt >> /mnt/etc/fstab

cp installarch2.sh /mnt

arch-chroot /mnt 



