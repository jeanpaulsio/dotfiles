# Dotfiles

---

Make sure to install ack with brew

```
$ brew install ack
```

---

## Setup Vim

This will install all of the packages into `~/.vim/bundle` and create a Symlink to use the `.vimrc` in this directory

```
$ cd ~/Desktop/code
$ git clone https://github.com/jeanpaulsio/dotfiles.git
$ cd dotfiles
$ ruby setup_vim.rb
```

---

## Vim

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

---

## zsh

https://github.com/denysdovhan/spaceship-prompt

**iTerm**

Preferences → Text → Non-ASCII Font → 12pt Meslo LG S Regular for Powerline

(Natural Text Editing)
Preferences → Profiles → Keys → Keyboard Behavior → Load Preset → Natural Text Editing

---

## Themes

* https://github.com/vim-scripts/DuoTones-Dark  
* https://github.com/atelierbram/Base2Tone-iterm2  

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

## Symlink Config

```
ln -s ~/Desktop/code/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/Desktop/code/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/Desktop/code/dotfiles/vim/.vimrc ~/.vimrc
```
