#!/bin/bash
clear

echo "============================================================"
echo "INSTALLING DEPENDENCIES"
echo "============================================================"
cd
sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev libreadline-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev libpq-dev inotify-tools -f -y

echo "============================================================"
echo "INSTALLING POSTGRES"
echo "============================================================"
sudo apt install postgresql postgresql-contrib -y
source ~/.zshrc
sudo -u postgres createuser $(whoami) -s
sudo -u postgres createdb $(whoami)
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"

echo "============================================================"
echo "INSTALLING RBENV"
echo "============================================================"
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo "============================================================"
echo "INSTALLING RUBY"
echo "============================================================"
rbenv install 2.5.3 --verbose
rbenv rehash
rbenv global 2.5.3
source ~/.zshrc
gem install bundler
gem install pry

echo "============================================================"
echo "INSTALLING NVM"
echo "============================================================"
sudo apt install build-essential libssl-dev -f -y
mkdir .nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.zshrc
nvm install node
nvm use node
source ~/.zshrc

echo "============================================================"
echo "INSTALLING asdf"
echo "============================================================"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.1

echo "============================================================"
echo "RUNNING APT AUTOREMOVE"
echo "============================================================"
sudo apt autoremove -y

echo "============================================================"
echo "RUNNING APT CLEAN"
echo "============================================================"
sudo apt clean -y
