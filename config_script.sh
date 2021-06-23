#!/bin/bash


sudo sed -i -e "s/^deb cdrom/#deb cdrom/g" /etc/apt/sources.list
sudo sed -i "s/main/main contrib non-free/g" /etc/apt/sources.list

sudo apt update

sudo apt upgrade

sudo apt install xorg xserver-xorg  nvidia-detect xutils mesa-utils xinit

sudo apt install nvidia-driver

sudo apt install firmware-linux firmware-linux-nonfree

sudo apt install spectrwm dmenu lxappearance rxvt-unicode xterm nitrogen firefox-esr thunar materia-gtk-theme deepin-icon-theme

echo "exec spectrwm" >> ~/.xinitrc

sudo apt install arandr

sudo apt install vim

git clone https://github.com/linuxdabbler/personal-dot-files

cd personal-dot-files

cat config/Xresources >> ~/.Xdefaults

cd

git clone https://github.com/Radu25/Dialog.sh

ls

cd Dialog

ls

echo "The next window that appears will be so that you can choose what do you want to be installed in your computer. Please choose wisely"

sleep 10

cp dialog.sh ~

chmod +x ~/dialog.sh

echo "You need to write 'sudo ~/dialog.sh' then another window will appear and it will ask you to choose what do you want to be installed in your computer. After you finish, type 'sudo apt-get install task-gnome-desktop' and after that 'sudo reboot' to reboot your system. And you will have a working computer with Debian on it"

sleep 15

echo "Script ends"
