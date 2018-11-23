#!/bin/bash
clear

echo "============================================================"
echo "Setting Up The Things"
echo "============================================================"
cd

echo "============================================================"
echo "CLONING IANNGUYEN/CFG"
echo "============================================================"
git clone https://github.com/iannguyen/cfg.git ~/Desktop/cfg
mkdir ~/.oh-my-zsh/custom/themes
ln -sf ~/Desktop/cfg/.oh-my-zsh/custom/themes/mein.zsh-theme .oh-my-zsh/custom/themes/mein.zsh-theme
ln -sf ~/Desktop/cfg/.zshrc
source ~/.zshrc

echo "============================================================"
echo "INSTALLING SILVERSEARCHER"
echo "============================================================"
sudo apt install silversearcher-ag -y
source ~/.zshrc

echo "============================================================"
echo "INSTALLING FZF"
echo "============================================================"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.zshrc

echo "============================================================"
echo "INSTALLING SOFTWARE-PROPERTIES-COMMON"
echo "============================================================"
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt install python-dev python-pip python3-dev python3-pip -y
source ~/.zshrc
sudo pip3 install neovim

echo "============================================================"
echo "INSTALLING NEOVIM"
echo "============================================================"
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt install neovim -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir .config
mkdir .config/nvim
ln -sf ~/Desktop/cfg/.config/nvim/init.vim .config/nvim/init.vim
source ~/.zshrc

echo "============================================================"
echo "INSTALLING CTAGS"
echo "============================================================"
sudo apt install exuberant-ctags -y
ln -sf ~/Desktop/cfg/.ctags

echo "============================================================"
echo "RUNNING APT AUTOREMOVE"
echo "============================================================"
sudo apt autoremove

echo "============================================================"
echo "RUNNING APT CLEAN"
echo "============================================================"
sudo apt clean
