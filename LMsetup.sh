#!/bin/bash
#Authored by: Michael Braine
#December 2017
echo 'Enabling UFW'
sudo ufw enable
sudo ufw allow ssh

echo 'Cleaning up unwanted software'
sudo apt remove pix
sudo apt remove hexchat
sudo apt remove pidgin
sudo apt remove thunderbird
sudo apt remove transmission-common
sudo apt remove xplayer

sudo apt update -y

echo 'Installing git'
sudo apt install git -y

echo 'Installing clamAV'
sudo apt install clamav -y

echo 'Installing Clementine'
sudo apt install clementine -y

echo 'Installing grub-customizer'
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo apt install grub-customizer -y

echo 'Installing openssh-server'
sudo apt install openssh-server -y

echo 'Installing windows fonts'
sudo apt install msttcorefonts -y

echo 'Installing htop'
sudo apt install htop -y

echo 'Installing atom'
wget https://atom.io/download/deb -O /tmp/atom.deb
sudo dpkg -i /tmp/atom.deb
rm /tmp/atom.deb

echo 'Installing gitkraken'
sudo apt install libgnome-keyring0 -y
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -O /tmp/gitkraken.deb
sudo dpkg -i /tmp/gitkraken.deb
rm /tmp/gitkraken.deb

echo 'Installing AnacondaPython'
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh -O /tmp/AnacondaPython.sh
sudo bash /tmp/AnacondaPython.sh
rm /tmp/AnacondaPython.sh

echo 'Installing LaTeX'
sudo apt install texlive-full -y


