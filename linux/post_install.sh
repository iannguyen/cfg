#!/bin/bash
clear

echo "============================================================"
echo "Setting Up The Things"
echo "============================================================"

echo "============================================================"
echo "RUNNING APT UPDATE"
echo "============================================================"
sudo apt-get update -y
sudo apt update -y

echo "============================================================"
echo "RUNNING APT UPGRADE"
echo "============================================================"
sudo apt upgrade -y

echo "============================================================"
echo "RUNNING APT DIST-UPGRADE"
echo "============================================================"
sudo apt dist-upgrade -y

echo "============================================================"
echo "INSTALLING GRUB CUSTOMIZER"
echo "============================================================"
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer -y

echo "============================================================"
echo "INSTALLING GDEBI"
echo "============================================================"
sudo apt install gdebi -y

echo "============================================================"
echo "INSTALLING VLC"
echo "============================================================"
sudo apt install vlc -y

echo "============================================================"
echo "INSTALLING GNOME TERMINAL"
echo "============================================================"
sudo apt install gnome-terminal -y

echo "============================================================"
echo "INSTALLING POWERLINE FONTS"
echo "============================================================"
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

echo "============================================================"
echo "INSTALLING GIT"
echo "============================================================"
sudo apt install git -y
echo "GIT GLOBAL USER NAME"
read user_name
git config --global user.name $user_name
echo "GIT GLOBAL EMAIL"
read user_email
git config --global user.email $user_email

echo "============================================================"
echo "INSTALLING ZSH"
echo "============================================================"
sudo apt install zsh -y

echo "============================================================"
echo "INSTALLING OH-MY-ZSH"
echo "============================================================"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
source ~/.zshrc
