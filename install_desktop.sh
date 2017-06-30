#!/usr/bin/env bash

sudo apt-get update -y

#Install Wifi Driver
sudo apt-get install -y dkms bcmwl-kernel-source

#Install IDE
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vcode.deb
sudo dpkg -i vcode.deb
sudo apt-get install -f

#install Putty
sudo apt-get install - y putty

#install google-chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

