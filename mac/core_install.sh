#!/bin/bash
clear

echo "============================================================"
echo "Setting Up The Things"
echo "============================================================"

echo "============================================================"
echo "INSTALLING HOMEBREW"
echo "============================================================"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor

echo "============================================================"
echo "INSTALLING GIT"
echo "============================================================"
brew install git
echo "GIT GLOBAL USER NAME"
read user_name
git config --global user.name $user_name
echo "GIT GLOBAL EMAIL"
read user_email
git config --global user.name $user_email

echo "============================================================"
echo "INSTALLING ZSH"
echo "============================================================"
brew install zsh

echo "============================================================"
echo "INSTALLING OH-MY-ZSH"
echo "============================================================"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "============================================================"
echo "CLONING IANNGUYEN/CFG"
echo "============================================================"
git clone https://github.com/iannguyen/cfg.git ~/Desktop/cfg
mkdir ~/.oh-my-zsh/custom/themes
ln -sf ~/Desktop/cfg/.oh-my-zsh/custom/themes/mein.zsh-theme ~/.oh-my-zsh/custom/themes/mein.zsh-theme
ln -sf ~/Desktop/cfg/.zshrc

echo "============================================================"
echo "INSTALLING SILVER SEARCHER"
echo "============================================================"
brew install the_silver_searcher

echo "============================================================"
echo "INSTALLING FZF"
echo "============================================================"
brew install fzf
$(brew --prefix)/opt/fzf/install

echo "============================================================"
echo "INSTALLING PYTHON3"
echo "============================================================"
brew install python3

echo "============================================================"
echo "INSTALLING NEOVIM"
echo "============================================================"
brew install neovim
pip3 install neovim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir .config
mkdir .config/nvim
ln -sf ~/Desktop/cfg/.config/nvim/init.vim .config/nvim/init.vim

echo "============================================================"
echo "INSTALLING CTAGS"
echo "============================================================"
brew install ctags

echo "============================================================"
echo "SYMLINKING ITERM2"
echo "============================================================"
ln -s ~/Desktop/cfg/iterm/com.googlecode.iterm2.plist ~/Library/Preferences

echo "============================================================"
echo "INSTALLING POWERLINE FONTS"
echo "============================================================"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
