# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/sbin:$PATH"

# Theme
ZSH_THEME="theunraveler"

# Plugins
plugins=(git rails ruby tmux yarn asdf)

source $ZSH/oh-my-zsh.sh

# ack Fix
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# asdf
export ASDF_DATA_DIR=`brew --prefix asdf`/

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
