#!/usr/bin/env bash

sudo apt-get -y update

#Install Wifi Driver
sudo apt-get -y install dkms bcmwl-kernel-source

#For screen
sudo apt-get -y install arandr

#Install Atom IDE
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update; sudo apt install atom

#Install Sound Driver
sudo apt-get install pulseaudio-module-udev
