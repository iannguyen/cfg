## Dev Environment Setup Instructions

### Update Packages

```
sudo apt-get update -y && sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y
```

### Update Latest Terminal

```
sudo apt install gnome-terminal -y
```

### Install GDebi Package Installer

```
sudo apt install gdebi -y
```

### Install Git

```
sudo apt install git -y
git config --global user.name write_your_user_name
git config --global user.email write_your_email_address
```

### Install ZSH

- Source: https://github.com/robbyrussell/oh-my-zsh

```
sudo apt install zsh -y
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
source ~/.zshrc
```

- Restart your computer

### Install Ruby

- Source: https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-16-04

- Install dependencies

```
sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev libpq-dev -y
```

- Install RBENV

```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
```

- Install ruby version

```
rbenv install 2.4.2 --verbose
rbenv rehash
rbenv global 2.4.2
```

- Install Bundler

```
gem install bundler
```

### Installing POSTGRESQL

- Source: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04

```
sudo apt install postgresql postgresql-contrib -y
source ~/.zshrc
sudo -u postgres createuser $(whoami) -s
sudo -u postgres createdb $(whoami)
```
