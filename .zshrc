##### ZSH #####

ZSH_THEME="mein"
plugins=(git)
# Path to your oh-my-zsh installation.
export ZSH="/Users/aiun-mbp/.oh-my-zsh"
# User configuration
source $ZSH/oh-my-zsh.sh

##### Exports #####

if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
  . $LUNCHY_DIR/lunchy-completion.zsh
fi

# NVM
export NVM_DIR="/Users/aiun-mbp/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# RBENV
export PATH="$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims:$HOME/usr/local/bin:$HOME/usr/bin:$HOME/bin"
eval "$(rbenv init -)"

# Use sublime as visual editor
export VISUAL='sublime -w'
export EDITOR=$VISUAL
export DISABLE_AUTO_TITLE=true

##### Aliases #####

# terminal
alias o="open"
alias a="atom"
alias sl="sublime"

# editor
alias atomfolder="cd ~/.atom"
alias sublfolder="cd ~/Library/Application\ Support/Sublime\ Text\ 3"

# shell
alias bshcfg="sublime ~/.bashrc"
alias zshcfg="sublime ~/.zshrc"
alias gitcfg="sublime ~/.gitconfig"
alias gitlst="sublime ~/.oh-my-zsh/plugins/git/git.plugin.zsh"
alias ohmyzsh="cd ~/.oh-my-zsh"

# ruby & rails
alias be="bundle exec"
alias bi="bundle install"
alias rake="bundle exec rake"
alias rdb="bundle exec rails db"
alias rdbm="bundle exec rake db:migrate"
alias rc="bundle exec rails console"
alias rr="bundle exec rails runner"
alias env_test="RAILS_ENV=test"
alias env_dev="RAILS_ENV=development"
alias rs="WEB_ROOT=localhost:3000 bundle exec rails s -b 127.0.0.1"
alias revive="bundle exec rake db:drop db:create db:structure:load db:migrate db:setup db:test:prepare"

# npm
alias nrd="npm run dev"
alias nrp="npm run prod"
