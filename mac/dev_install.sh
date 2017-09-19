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
rbenv rehash
gem install bundler
gem install pry

echo "============================================================"
echo "INSTALLING POSTGRES"
echo "============================================================"
brew install postgresql
brew services start postgresql
createdb
createuser

echo "============================================================"
echo "INSTALLING NVM"
echo "============================================================"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
nvm install node
nvm use node
