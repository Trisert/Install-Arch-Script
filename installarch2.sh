#!/bin/bash 


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

rm Install-Arch-Script
