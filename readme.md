# Dotfiles

## Homebrew

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

🍺Brew a couple of things

```
$ brew update
$ brew install git
$ brew install ack
$ brew install tmux
```

Configuring git

```
git config --global user.name "jeanpaulsio"
git config --global user.email "sio.jeanpaul@gmail.com"
```

Testing it out

```
git clone https://github.com/jeanpaulsio/dotfiles.git
```

Commit a change and push it up. When it asks for a username and password, make sure to generate a personal access token:

```
https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/
```

---

## zsh

```
$ brew install zsh zsh-completions
```

Oh My Zsh:  
https://github.com/robbyrussell/oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

---

## Vim

Quick Installation:

```
$ ruby setup_vim.rb
```

Vim Plugins

**ack**
https://github.com/mileszs/ack.vim

**ale**
https://github.com/w0rp/ale

**auto pairs**
https://github.com/jiangmiao/auto-pairs

**ctrlp**
https://github.com/ctrlpvim/ctrlp.vim

**indentLine**
https://github.com/Yggdroot/indentLine

**vim-airline**
https://github.com/vim-airline/vim-airline

**vim-airline-themes**
https://github.com/vim-airline/vim-airline-themes

**vim-commentary**
https://github.com/tpope/vim-commentary

**vim-elixir**
https://github.com/elixir-editors/vim-elixir

**vim-endwise**
https://github.com/tpope/vim-endwise

**vim-expand-region**
https://github.com/terryma/vim-expand-region

**vim git gutter**
https://github.com/airblade/vim-gitgutter

**vim-javascript**
https://github.com/pangloss/vim-javascript

**vim-jsx**
https://github.com/mxw/vim-jsx

**vim-prettier**
https://github.com/prettier/vim-prettier

**vim-rails**
https://github.com/tpope/vim-rails

**vim-unimpaired**
https://github.com/tpope/vim-unimpaired

**nerdtree**
https://github.com/scrooloose/nerdtree

---

## Themes

- https://draculatheme.com

---

## Other

Easily name `HostName`

```
# sudo scutil --set HostName westeros
```

Change Keyspeed to make navigating Vim more chill

```
System Preferences > Keyboard > Key Repeat         = Fast
System Preferences > Keyboard > Delay Until Repeat = Short
```

---

## Symlink Config

```
ln -s ~/code/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/code/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/code/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/code/dotfiles/other/.irbrc ~/.irbrc
ln -s ~/code/dotfiles/other/.pryrc ~/.pryrc
ln -s ~/code/dotfiles/.gitignore_global ~/.gitignore_global
```

## Global Git Ignore

```
git config --global core.excludesfile ~/.gitignore_global
```

---

# Other

Apps

```
Google Chrome
Spotify
Notion
Alfred - https://www.alfredapp.com/
Dropbox (for alfred)
One Password - https://1password.com/downloads/mac/
Better Touch Tool - https://folivora.ai/
Keyboard Clean Tool - https://folivora.ai/keyboardcleantool
VSCode
iTerm - https://www.iterm2.com/
```

__Better Touch Tool__

Key sequence

```
Shift + Option + L -> Move Right a space
Shift + Option + H -> Move Left a space
```

---

* NPM and Node: https://www.npmjs.com/get-npm

__Heroku__

```
brew install heroku/brew/heroku
```

__Theming__

NightOwl

* VSCode - https://github.com/sdras/night-owl-vscode-theme
* Alfred - https://www.alfredapp.com/extras/theme/QCvb0CkL1J/
* Jetbrains - https://github.com/xdrop/night-owl-jetbrains
* iTerm - https://github.com/nickcernis/iterm2-night-owl
* Vim - https://github.com/Khaledgarbaya/night-owl-vim-theme
