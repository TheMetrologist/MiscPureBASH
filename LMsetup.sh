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

echo 'Installing ranger'
sudo apt install ranger -y

echo 'Installing atom'
wget https://atom.io/download/deb -O /tmp/atom.deb
sudo dpkg -i /tmp/atom.deb
rm /tmp/atom.deb

echo 'Installing atom packages through apm'
apm install file-icons
apm install intentions
apm install busy-signal
apm install linter-ui-default
apm install linter
apm install linter-pylint
apm install hydrogen
apm install todo-show
apm install language latex
apm install autocomplete-python
apm install highlight-selected
apm install minimap
apm install minimap-cursorline
apm install minimap-linter
apm install minimap-highlight-selected
apm install minimap-bookmarks

echo 'setting pylint warning disables'
echo '[MESSAGES CONTROL]' >> /home/$USER/.pylintrc
echo 'disable=line-too-long' >> /home/$USER/.pylintrc

echo 'Appending /home/$USER/bin to path'
mkdir /home/$USER/.bin
echo 'export PATH="/home/$USER/.bin:$PATH"' >> /home/$USER/.bashrc

echo 'Getting latest sysupdate from github'
git clone https://github.com/TheMetrologist/MiscPureBASH /home/$USER/BraineCode/MiscPureBASH
cp /home/$USER/Documents/sysupdate /home/$USER/.bin
chmod -R 755 /home/$USER/.bin/

echo 'Getting latest BraineCode from github'
git clone https://github.com/usnistgov/LEMASdistPub        /home/$USER/BraineCode/LEMAS/LEMASdistPub
git clone https://github.com/usnistgov/LEMASdist           /home/$USER/BraineCode/LEMAS/LEMASdist
git clone https://github.com/usnistgov/LEMASmaster         /home/$USER/BraineCode/LEMAS/LEMASmaster
git clone https://github.com/usnistgov/fringefinder        /home/$USER/BraineCode/StrangProjects/fringefinder_python
git clone https://github.com/usnistgov/fringefinder_matlab /home/$USER/BraineCode/StrangProjects/fringefinder_matlab
git clone https://github.com/usnistgov/NISTCMMGrid         /home/$USER/BraineCode/NISTCMMGrid
git clone https://github.com/usnistgov/BasicTempLog        /home/$USER/BraineCode/BasicTempLog
git clone https://github.com/TheMetrologist/MiscPureMatlab /home/$USER/BraineCode/MiscPureMatlab
git clone https://github.com/TheMetrologist/LaTeXdocs      /home/$USER/BraineCode/LaTeXdocs
git clone https://github.com/TheMetrologist/MahrProjects   /home/$USER/BraineCode/MahrProjects

echo 'Cleaning up unwanted folders'
sudo rm -r /home/$USER/Music /home/$USER/Public /home/$USER/Templates /home/$USER/Videos

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
