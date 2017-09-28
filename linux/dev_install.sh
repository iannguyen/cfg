#!/bin/bash
clear

echo "============================================================"
echo "INSTALLING DEPENDENCIES"
echo "============================================================"
sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev -y

echo "============================================================"
echo "INSTALLING RBENV"
echo "============================================================"
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo "============================================================"
echo "INSTALLING RUBY 2.3.1"
echo "============================================================"
rbenv install 2.3.1 --verbose
rbenv rehash
rbenv global 2.3.1

echo "============================================================"
echo "INSTALLING BUNDLER"
echo "============================================================"
gem install bundler

echo "============================================================"
echo "INSTALLING POSTGRES"
echo "============================================================"
sudo apt install postgresql postgresql-contrib -y
sudo -u postgres createuser $(whoami)
sudo -u postgres createdb $(whoami)

echo "============================================================"
echo "INSTALLING NVM"
echo "============================================================"
sudo apt-get install build-essential libssl-dev
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
nvm install node
nvm use node

echo "============================================================"
echo "RUNNING APT AUTOREMOVE"
echo "============================================================"
sudo apt autoremove -y

echo "============================================================"
echo "RUNNING APT CLEAN"
echo "============================================================"
sudo apt clean -y
