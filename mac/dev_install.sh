#!/bin/bash
clear

echo "============================================================"
echo "INSTALLING RBENV"
echo "============================================================"
brew install rbenv ruby-build

echo "============================================================"
echo "INSTALLING RUBY"
echo "============================================================"
rbenv install 2.4.2 --verbose
rbenv global 2.4.2
source ~/.zshrc
rbenv rehash
gem install bundler
gem install pry

echo "============================================================"
echo "INSTALLING POSTGRES"
echo "============================================================"
brew install postgresql
brew services start postgresql
createuser -s
createdb

echo "============================================================"
echo "INSTALLING NVM"
echo "============================================================"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
source ~/.zshrc
nvm install node
nvm use node
source ~/.zshrc
