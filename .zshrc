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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -U --hidden -g ""'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

# NVM
export NVM_DIR="/Users/aiun-mbp/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# RBENV
export PATH="$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims:$HOME/usr/local/bin:$HOME/usr/bin:$HOME/bin"
eval "$(rbenv init -)"

# Use sublime as visual editor
export VISUAL='nvim'
export EDITOR=$VISUAL
export DISABLE_AUTO_TITLE=true

##### Aliases #####

# terminal
alias v="nvim"
alias o="open"
alias a="atom"
alias sl="sublime"

# editor
alias atomfolder="cd ~/.atom"
alias sublfolder="cd ~/Library/Application\ Support/Sublime\ Text\ 3"

# shell
alias bshcfg="v ~/.bashrc"
alias zshcfg="v ~/.zshrc"
alias gitcfg="v ~/.gitconfig"
alias gitlst="v ~/.oh-my-zsh/plugins/git/git.plugin.zsh"
alias nvimcfg="v ~/.config/nvim/init.vim"
alias ohmyzsh="cd ~/.oh-my-zsh"

# ruby & rails
alias be="bundle exec"
alias bi="bundle install"
alias rake="bundle exec rake"
alias rdb="bundle exec rails db"
alias rdbm="bundle exec rake db:migrate"
alias rdbms="bundle exec rake db:migrate:status"
alias rc="bundle exec rails console"
alias rr="bundle exec rails runner"
alias env_test="RAILS_ENV=test"
alias env_dev="RAILS_ENV=development"
alias rs="WEB_ROOT=localhost:3000 bundle exec rails s -b 127.0.0.1"
alias revive="bundle exec rake db:drop db:create db:structure:load db:migrate db:setup db:test:prepare db:seed"

# rails services
alias kill3000="kill -9 $(lsof -i tcp:3000 -t)"
alias startmem="/usr/local/opt/memcached/bin/memcached"
alias sidekiq="bundle exec sidekiq"
alias resque="QUEUE=* be rake resque:work"

# npm
alias nrd="npm run dev"
