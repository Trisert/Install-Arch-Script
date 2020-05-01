#!/bin/bash

mkdir -p .config/bspwm .config/sxhkd .config/ranger 

sudo pacman -S bspwm alacritty ranger vim zsh git qutebrowser pulseaudio xorg xorg-drivers xf86-video-nouveau wget
wget -P .config/bspwm https://raw.githubusercontent.com/Trisert/dofiles/master/.config/bspwm/bspwmrc

wget -P .config/sxhkd https://raw.githubusercontent.com/Trisert/dofiles/master/.config/sxhkd/sxhkdrc

wget -P .config/ranger https://raw.githubusercontent.com/Trisert/dofiles/master/.config/ranger/commands.py
 wget -P .config/ranger https://raw.githubusercontent.com/Trisert/dofiles/master/.config/ranger/commands_full.py
wget -P .config/ranger https://raw.githubusercontent.com/Trisert/dofiles/master/.config/ranger/rc.conf
wget -P .config/ranger https://raw.githubusercontent.com/Trisert/dofiles/master/.config/ranger/rifle.conf
 wget -P .config/ranger https://raw.githubusercontent.com/Trisert/dofiles/master/.config/ranger/scope.sh

 chmod +x scope.sh

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -sic

cd 

 wget https://raw.githubusercontent.com/Trisert/dofiles/master/.zprofile

 wget https://raw.githubusercontent.com/Trisert/dofiles/master/.zshrc

 wget https://raw.githubusercontent.com/Trisert/dofiles/master/.vimrc

 wget https://raw.githubusercontent.com/Trisert/dofiles/master/.xinitrc
