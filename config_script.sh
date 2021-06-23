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

sudo apt install vim git

git clone https://github.com/linuxdabbler/personal-dot-files

cd personal-dot-files

cat config/Xresources >> ~/.Xdefaults

git clone https://github.com/linuxdabbler/debian-dialog-install-script

ls

cd debian-dialog-install-script

ls

echo "The next window that appears will be so that you can choose what do you want to be installed in your computer. Please choose wisely"

sleep 10

chmod +x dialog.sh

sudo ./dialog.sh

sudo apt-get install task-gnome-desktop

echo "All done! You need to reboot. Use 'sudo reboot' to reboot your system."

sleep 10

echo "Script ends"
