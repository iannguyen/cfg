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
echo "INSTALLING GDEBI"
echo "============================================================"
sudo apt install gdebi -y

echo "============================================================"
echo "INSTALLING VLC"
echo "============================================================"
sudo apt install vlc -y

echo "============================================================"
echo "INSTALLING GIT"
echo "============================================================"
sudo apt install git -y

echo "============================================================"
echo "INSTALLING ZSH"
echo "============================================================"
sudo apt install zsh -y

echo "============================================================"
echo "INSTALLING OH-MY-ZSH"
echo "============================================================"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "============================================================"
echo "CLONING IANNGUYEN/CFG"
echo "============================================================"
git clone https://github.com/iannguyen/cfg.git ~/Desktop/cfg
mkdir ~/.oh-my-zsh/custom/themes
ln -s ~/Desktop/cfg/.oh-my-zsh/custom/themes/mein.zsh-theme .oh-my-zsh/custom/themes/mein.zsh-theme
ln -sf ~/Desktop/cfg/.zshrc

echo "============================================================"
echo "RUNNING APT AUTOREMOVE"
echo "============================================================"
sudo apt autoremove

echo "============================================================"
echo "RUNNING APT CLEAN"
echo "============================================================"
sudo apt clean
