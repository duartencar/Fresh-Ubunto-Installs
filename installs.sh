#!/bin/bash
#Repos addition
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y		#GRUB_COSTUMIZER
sudo add-apt-repository ppa:webupd8team/atom -y					#ATOM
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y			#SUBLIME
sudo add-apt-repository ppa:webupd8team/java -y					#JAVA
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"	#SPOTIFY
#Repos addition

cd

homeDir = "/home/$USER"

sudo apt update -y

sudo apt install atom -y							#ATOM
sudo apt install grub-customizer -y						#GRUB_COSTUMIZER
sudo apt install clang -y							#CLANG
sudo apt install sublime-text-installer -y					#SUBLIME
sudo apt install maxima -y							#MAXIMA
sudo apt install oracle-java8-installer -y					#JAVA

#SPOTIFY
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886 -y
sudo apt-get update -qq -y
sudo apt-get install spotify-client -y
#SPOTIFY

#GITKRAKEN
wget https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz
tar -xvzf gitkraken-amd64.tar.gz
cd ./gitkraken
chmod 777 gitkraken
./gitkraken
cd ..
sudo rm -r gitkraken-amd64.tar.gz
#GITKRAKEN

#HASHCAT
chmod 777 hash.sh
sudo ./hash.sh $homeDir
cd
#HASHCAT

#AIRCRACK_NG
cd
chmod 777 aircrack.sh
sudo ./aircrack.sh $homeDir
sudo airodump-ng-oui-update
cd
sudo rm -r aircrack-ng-1.2-rc4.tar.gz
#AIRCRACK_NG
