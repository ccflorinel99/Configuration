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

chmod +x dialog.sh

sudo ./dialog.sh

sudo apt-get install task-gnome-desktop

echo "Tot ce trbuie sa faci este sa dai 'sudo reboot' ca sa dai restart la calculator sau o poti face asa cum stii tu. Dupa ce faci restart, o sa ai un calculator cu Debian instalat pe el. Spor si toate cele bune ;)"

sleep 15

echo "Gata scriptul :)"
