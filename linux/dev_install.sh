#!/bin/bash
clear

echo "============================================================"
echo "INSTALLING DEPENDENCIES"
echo "============================================================"
sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev libpq-dev inotify-tools -y

echo "============================================================"
echo "INSTALLING RBENV"
echo "============================================================"
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo "============================================================"
echo "INSTALLING RUBY 2.3.1"
echo "============================================================"
rbenv install 2.4.2 --verbose
rbenv rehash
rbenv global 2.4.2
source ~/.zshrc
gem install bundler
gem install pry

echo "============================================================"
echo "INSTALLING ERLANG"
echo "============================================================"
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt update
sudo apt install esl-erlang
rm erlang-solutions_1.0_all.deb

echo "============================================================"
echo "INSTALLING ELIXIR"
echo "============================================================"
sudo apt install elixir
yes | mix local.hex

echo "============================================================"
echo "INSTALLING PHOENIX"
echo "============================================================"
yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez

echo "============================================================"
echo "INSTALLING POSTGRES"
echo "============================================================"
sudo apt install postgresql postgresql-contrib -y
source ~/.zshrc
sudo -u postgres createuser $(whoami) -s
sudo -u postgres createdb $(whoami)
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"

echo "============================================================"
echo "INSTALLING NVM & YARN"
echo "============================================================"
sudo apt-get install build-essential libssl-dev
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
source ~/.zshrc
nvm install node
nvm use node
npm install -g yarn
source ~/.zshrc

echo "============================================================"
echo "RUNNING APT AUTOREMOVE"
echo "============================================================"
sudo apt autoremove -y

echo "============================================================"
echo "RUNNING APT CLEAN"
echo "============================================================"
sudo apt clean -y
