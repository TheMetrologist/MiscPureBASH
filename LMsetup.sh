#!/bin/bash
#Authored by: Michael Braine
#December 2017
#updated July 1, 2018
echo 'Enabling UFW'
sudo ufw enable
sudo ufw allow ssh
sudo ufw allow 32400 #port used by plex

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

#echo 'Installing grub-customizer'
#sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
#sudo apt install grub-customizer -y

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

echo 'Installing screenfetch'
sudo apt install screenfetch -y

#echo 'Installing Plex media server'
#wget https://downloads.plex.tv/plex-media-server/1.13.2.5154-fd05be322/plexmediaserver_1.13.2.5154-fd05be322_amd64.deb -O /tmp/plex.deb
#sudo dpkg -i /tmp/plex.deb
#rm /tmp/plex.deb

echo 'Installing Kite'
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"

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
apm install hydrogen-python
apm install todo-show
apm install pdf-view
apm install language-latex
apm install latex
apm install autocomplete-python
apm install highlight-selected
apm install minimap
apm install minimap-cursorline
apm install minimap-linter
apm install minimap-highlight-selected
apm install minimap-bookmarks
apm install pigments
apm install minimap-pigments
apm install color-picker
apm install kite

echo 'setting pylint warning disables'
echo '[MESSAGES CONTROL]' >> /home/$USER/.pylintrc
echo 'disable=line-too-long, invalid-name' >> /home/$USER/.pylintrc

#echo 'Getting latest BraineCode from github'
#git clone https://github.com/usnistgov/LEMASdistPub        /home/$USER/BraineCode/LEMAS/LEMASdistPub
#git clone https://github.com/usnistgov/LEMASdist           /home/$USER/BraineCode/LEMAS/LEMASdist
#git clone https://github.com/usnistgov/LEMASmaster         /home/$USER/BraineCode/LEMAS/LEMASmaster
#git clone https://github.com/usnistgov/fringefinder        /home/$USER/BraineCode/StrangProjects/fringefinder_python
#git clone https://github.com/usnistgov/fringefinder_matlab /home/$USER/BraineCode/StrangProjects/fringefinder_matlab
#git clone https://github.com/usnistgov/NISTCMMGrid         /home/$USER/BraineCode/NISTCMMGrid
#git clone https://github.com/usnistgov/BasicTempLog        /home/$USER/BraineCode/BasicTempLog
#git clone https://github.com/TheMetrologist/MiscPureBASH   /home/$USER/BraineCode/MiscPureBASH
#git clone https://github.com/TheMetrologist/MiscPureMatlab /home/$USER/BraineCode/MiscPureMatlab
#git clone https://github.com/TheMetrologist/LaTeXdocs      /home/$USER/BraineCode/LaTeXdocs
#git clone https://github.com/TheMetrologist/MahrProjects   /home/$USER/BraineCode/MahrProjects
#git clone https://github.com/TheMetrologist/BraineCodePull /home/$USER/BraineCode/BraineCodePull

echo 'Creating and appending /home/$USER/bin to path'
mkdir /home/$USER/.bin
mkdir /home/$USER/.bin/binhelpers
echo 'export PATH="/home/$USER/.bin:$PATH"' >> /home/$USER/.bashrc

echo 'Adding extension colors to /home/$USER/.bashrc'
echo 'export LS_COLORS=$LS_COLORS:"*.strangdata.tar=1;31;47"'

#echo 'Installing latest bin scripts from github'
#cp /home/$USER/BraineCode/MiscPureBASH/sysupdate /home/$USER/.bin
#cp /home/$USER/BraineCode/BraineCodePull/gitpullall /home/$USER/.bin
#cp /home/$USER/BraineCode/BraineCodePull/subdirfind.py /home/$USER/.bin/binhelpers
#chmod 755 /home/$USER/.bin/*

echo 'Cleaning up unwanted folders'
sudo rm -r /home/$USER/Music /home/$USER/Public /home/$USER/Templates /home/$USER/Videos

#echo 'Installing gitkraken'
#sudo apt install libgnome-keyring0 -y
#wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -O /tmp/gitkraken.deb
#sudo dpkg -i /tmp/gitkraken.deb
#rm /tmp/gitkraken.deb

echo 'Installing AnacondaPython'
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh -O /tmp/AnacondaPython.sh
bash /tmp/AnacondaPython.sh
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
