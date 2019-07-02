# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="theunraveler"

# Plugins
plugins=(git docker rails ruby tmux yarn asdf)

source $ZSH/oh-my-zsh.sh

# Git
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'

# Other Aliases
alias reloadzsh='source ~/.zshrc'
alias c='clear'
alias rmjava='rm -rf **/*.class && gc .'
alias prettierrb="rbprettier --write '**/*.rb'"

# Ack Fix
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export ASDF_DATA_DIR=`brew --prefix asdf`/
source $ASDF_DATA_DIR/asdf.sh

