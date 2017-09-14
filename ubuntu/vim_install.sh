#!/bin/bash
clear

echo "============================================================"
echo "Setting Up The Things"
echo "============================================================"

echo "============================================================"
echo "RUNNING APT UPDATE"
echo "============================================================"
sudo apt update -y

echo "============================================================"
echo "INSTALLING SOFTWARE-PROPERTIES-COMMON"
echo "============================================================"
sudo apt install software-properties-common
sudo apt install python-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt install python-dev python-pip python3-dev python3-pip
sudo apt-get install python3-setuptools
sudo easy_install3 pip

echo "============================================================"
echo "INSTALLING NEOVIM"
echo "============================================================"
sudo apt install neovim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir .config
mkdir .config/nvim
ln -sf ~/Desktop/cfg/.config/nvim/init.vim .config/nvim/init.vim

echo "============================================================"
echo "RUNNING APT AUTOREMOVE"
echo "============================================================"
sudo apt autoremove -y

echo "============================================================"
echo "RUNNING APT CLEAN"
echo "============================================================"
sudo apt clean -y
