# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/sbin:$PATH"

# Theme
ZSH_THEME="sorin"

# Aliases
alias rcedit="EDITOR=vim rails credentials:edit"
alias rcshow="rails credentials:show"
alias tmux='direnv exec / tmux'

source $ZSH/oh-my-zsh.sh

# ack Fix
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf
autoload -Uz compinit && compinit
. /usr/local/opt/asdf/asdf.sh

eval "$(direnv hook zsh)"
