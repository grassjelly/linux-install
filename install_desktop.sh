#!/usr/bin/env bash

sudo apt-get -y update

#Install Wifi Driver
sudo apt-get -y install dkms bcmwl-kernel-source

#For screen
sudo apt-get -y install arandr

#Install Atom IDE
curl https://atom.io/download/deb
sudo dpkg deb
sudo apt-get -y -f  installer

#Install Sound Driver
sudo apt-get install pulseaudio-module-udev
