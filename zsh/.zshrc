eval "$(direnv hook $SHELL)"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git docker rails ruby tmux yarn)

source $ZSH/oh-my-zsh.sh

# Android
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/tools/bin
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Yarn
export PATH="$HOME/.yarn/bin:$PATH"

# Spaceship
SPACESHIP_DIR_TRUNC_REPO=false

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
alias code='cd ~/Desktop/code'
alias dotfiles='cd ~/Desktop/code/dotfiles'
alias reloadzsh='source ~/.zshrc'
alias c='clear'

# Open Listings Aliases
alias ol='cd ~/Desktop/code/open_listings'
alias olngrok='ol && ./bin/custom/ol_ngrok ol'
alias olngrok2='ol && ./bin/custom/ol_ngrok ol2'

# Rails Stuff
alias mail.rake="rake -T | grep 'rake mail'"
alias ttl="tail -f log/test.log"
alias rt="rails test"
alias sandbox="rails console --sandbox"

# Exercism
alias swiftgen="swift package generate-xcodeproj"

# Ack Fix
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Exercism
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

ssh-add -K ~/.ssh/id_rsa

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Fastlane stuff
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
