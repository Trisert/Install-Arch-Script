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

arch-chroot /mnt

hwclock --systohc

ln -sf /usr/share/zoneinfo/Europe/Rome /etc/localtime

pacman -Sy nano grub efibootmgr dhcpcd git reflector

systemctl enable dhcpcd

nano /etc/locale.gen

locale-gen

nano /etc/locale.conf

nano /etc/vconsole.conf

nano /etc/hostname

passwd 

useradd -m -G wheel nicola

passwd nicola

grub-install --target=x86_64-efi --efi-directory=/boot

grub-mkconfig -o /boot/grub/grub.cfg


