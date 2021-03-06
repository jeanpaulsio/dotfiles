# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/sbin:$PATH"

# Theme
ZSH_THEME="sorin"

# Aliases
alias rcedit="EDITOR=vim rails credentials:edit"
alias rcshow="rails credentials:show"
alias letsgo="cd /Users/jp/.asdf/installs/golang/1.15/packages"
alias main="cd /Users/jp/github/main-street/mainstreet"
alias bigal="cd /Users/jp/github/laxcoders/bigal"

source $ZSH/oh-my-zsh.sh

# ack Fix
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf
autoload -Uz compinit && compinit
. /usr/local/opt/asdf/asdf.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# go
export GOPATH="$HOME/.asdf/installs/golang/1.15/packages"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
