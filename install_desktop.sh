#!/usr/bin/env bash

sudo apt-get -y update

#Install Wifi Driver
sudo apt-get -y install dkms bcmwl-kernel-source

#For screen
sudo apt-get -y install arandr

#Install IDE
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vcode.deb
sudo dpkg -i vcode.deb
sudo apt-get install -f

#Install Sound Driver
sudo apt-get install pulseaudio-module-udev
