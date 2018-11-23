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
echo "INSTALLING XCLIP"
echo "============================================================"
sudo apt install xclip -y

echo "============================================================"
echo "INSTALLING GDEBI"
echo "============================================================"
sudo apt install gdebi -y

echo "============================================================"
echo "INSTALLING VLC"
echo "============================================================"
sudo apt install vlc -y

echo "============================================================"
echo "INSTALLING XDOTOOLS"
echo "============================================================"
sudo apt install xdotool -y

echo "============================================================"
echo "INSTALLING CURL"
echo "============================================================"
sudo apt install curl -y

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
echo "INSTALLING ZSH"
echo "============================================================"
sudo apt install zsh -y

echo "============================================================"
echo "INSTALLING OH-MY-ZSH"
echo "============================================================"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
source ~/.zshrc
