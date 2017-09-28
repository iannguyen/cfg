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

echo "============================================================"
echo "CLONING IANNGUYEN/CFG"
echo "============================================================"
git clone https://github.com/iannguyen/cfg.git ~/Desktop/cfg
mkdir ~/.oh-my-zsh/custom/themes
ln -s ~/Desktop/cfg/.oh-my-zsh/custom/themes/mein.zsh-theme .oh-my-zsh/custom/themes/mein.zsh-theme
ln -sf ~/Desktop/cfg/.zshrc

echo "============================================================"
echo "INSTALLING SILVERSEARCHER"
echo "============================================================"
sudo apt install silversearcher-ag

echo "============================================================"
echo "INSTALLING FZF"
echo "============================================================"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "============================================================"
echo "INSTALLING SOFTWARE-PROPERTIES-COMMON"
echo "============================================================"
sudo apt install software-properties-common -y
sudo apt install python-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt install python-dev python-pip python3-dev python3-pip -y
sudo apt install python3-setuptools -y
sudo easy_install3 pip
sudo pip3 install neovim

echo "============================================================"
echo "INSTALLING NEOVIM"
echo "============================================================"
sudo apt install neovim -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir .config
mkdir .config/nvim
ln -sf ~/Desktop/cfg/.config/nvim/init.vim .config/nvim/init.vim

echo "============================================================"
echo "RUNNING APT AUTOREMOVE"
echo "============================================================"
sudo apt autoremove

echo "============================================================"
echo "RUNNING APT CLEAN"
echo "============================================================"
sudo apt clean
