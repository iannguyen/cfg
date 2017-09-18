#!/bin/bash
clear

echo "============================================================"
echo "Setting Up The Things"
echo "============================================================"

echo "============================================================"
echo "INSTALLING HOMEBREW"
echo "============================================================"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "============================================================"
echo "INSTALLING GIT"
echo "============================================================"
brew install git

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
ln -s ~/Desktop/cfg/.oh-my-zsh/custom/themes/mein.zsh-theme ~/.oh-my-zsh/custom/themes/mein.zsh-theme
ln -sf ~/Desktop/cfg/.zshrc
