##### Colors #####
# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

##### ZSH #####
ZSH_THEME="mein"
# ZSH_THEME="bullet-train/bullet-train"
BULLETTRAIN_PROMPT_ORDER=(
  status
  dir
  git
)
BULLETTRAIN_DIR_BG=yellow
BULLETTRAIN_DIR_FG=black
BULLETTRAIN_GIT_BG=blue
BULLETTRAIN_DIR_EXTENDED=2
plugins=(git)
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# User configuration
source $ZSH/oh-my-zsh.sh

##### Exports #####
if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
  . $LUNCHY_DIR/lunchy-completion.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="ag -U --hidden --ignore .git -g ''"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_DEFAULT_OPTS="
  --reverse
  --color fg:-1,bg:-1,hl:230,fg+:3,bg+:233,hl+:229
  --color info:150,prompt:110,spinner:150,pointer:167,marker:174
"
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# RBENV
export PATH="$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims:$HOME/usr/local/bin:$HOME/usr/bin:$HOME/bin"
eval "$(rbenv init -)"

# Use vim as visual editor
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

# yarn
alias yrd="yarn run dev"

# linux
alias lupdate="sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y"
