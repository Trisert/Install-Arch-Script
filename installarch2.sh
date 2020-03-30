#!/bin/bash 

hwclock --systohc

ln -sf /usr/share/zoneinfo/Europe/Rome /etc/localtime

pacman -Sy nano grub efibootmgr dhcpcd git reflector

systemctl enable dhcpcd

echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen

echo "it_IT.UTF-8 UTF-8" >> /etc/locale.gen

locale-gen

echo "LANG=it_IT.UTF-8" >> /etc/locale.conf

echo "KEMAP=it" >> /etc/vconsole.conf

echo "arch" >> /etc/hostname

passwd 

useradd -m -G wheel nicola

passwd nicola

grub-install --target=x86_64-efi --efi-directory=/boot --recheck

grub-mkconfig -o /boot/grub/grub.cfg

rm installarch2.sh

exit
