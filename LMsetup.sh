#!/bin/bash
#Authored by: Michael Braine
#December 2017
#updated July 1, 2018
echo 'Enabling UFW'
sudo ufw enable
sudo ufw allow ssh

echo 'Cleaning up unwanted software'
sudo apt purge pix -y
sudo apt purge hexchat -y
sudo apt purge pidgin -y
sudo apt purge thunderbird -y
sudo apt purge transmission-common -y
sudo apt purge xplayer -y

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

echo 'Installing GIMP'
sudo apt install gimp -y

echo 'Installing atom'
wget https://atom.io/download/deb -O /tmp/atom.deb
sudo dpkg -i /tmp/atom.deb
rm /tmp/atom.deb

echo 'Appending /home/$USER/bin to path'
mkdir /home/$USER/bin
echo 'export PATH="/home/$USER/bin:$PATH' >> /home/$USER/.bashrc

echo 'Getting latest sysupdate from github'
wget https://github.com/TheMetrologist/MiscPureBASH/blob/master/LMsetup.sh -O /home/$USER/bin/sysupdate
chmod -R 755 /home/$USER/bin/

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

#echo 'Installing Google Authenticator'
#sudo apt install libpam-google-authenticator -y
#sudo apt install wget make gcc libpam0g-dev
#wget https://google-authenticator.googlecode.com/files/libpam-google-authenticator-1.0-source.tar.bz2
#tar -xvf libpam-googleauthenticator-1.0-source.tar.bz2
#cd libpam-google-authenticator-1.0/
#make
#make install
#google-authenticator
#echo 'auth	required	pam_google_authenticator.so' >> /etc/pam.d/sshd
#sed -i -e 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
#service ssh restart

