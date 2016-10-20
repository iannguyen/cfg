##### ZSH #####

ZSH_THEME="kennethreitz"
plugins=(git)
# Path to your oh-my-zsh installation.
export ZSH="/Users/iannguyen/.oh-my-zsh"
# User configuration
source $ZSH/oh-my-zsh.sh

##### Exports #####

# LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
  . $LUNCHY_DIR/lunchy-completion.zsh
fi

export NVM_DIR="/Users/iannguyen/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

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
alias rc="bundle exec rails console"
alias rr="bundle exec rails runner"
alias env_test="RAILS_ENV=test"
alias env_dev="RAILS_ENV=development"
alias rs="WEB_ROOT=localhost:3000 bundle exec rails s -b 127.0.0.1"

# wrench
alias nrd="npm run dev"



# Other



# export PATH="/usr/local/bin:$PATH"
# export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Users/iannguyen/.rvm/gems/ruby-2.2.4/bin:/Users/iannguyen/.rvm/gems/ruby-2.2.4@global/bin:/Users/iannguyen/.rvm/rubies/ruby-2.2.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/iannguyen/.rvm/bin:/Users/iannguyen/.rvm/bin"
