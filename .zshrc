ZSH_THEME="kennethreitz"
plugins=(git)



##### Aliases #####



# terminal
# alias ..="cd .."
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



##### Exports #####



# Path to your oh-my-zsh installation.
export ZSH=/Users/iannguyen/.oh-my-zsh
# User configuration
source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Users/iannguyen/.rvm/gems/ruby-2.2.4/bin:/Users/iannguyen/.rvm/gems/ruby-2.2.4@global/bin:/Users/iannguyen/.rvm/rubies/ruby-2.2.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/iannguyen/.rvm/bin:/Users/iannguyen/.rvm/bin"

# LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
  . $LUNCHY_DIR/lunchy-completion.zsh
fi

# User VIM as visual editor
export VISUAL=vim
export EDITOR=$VISUAL
export DISABLE_AUTO_TITLE=true
