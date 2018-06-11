# Dotfiles

---

Make sure to install ack with brew

```
$ brew install ack
```

---

## Vim

Vim Plugins

**ack**
https://github.com/mileszs/ack.vim

**ctrlp**
https://github.com/ctrlpvim/ctrlp.vim

**ale**
https://github.com/w0rp/ale

**vim git gutter**
https://github.com/airblade/vim-gitgutter

**auto pairs**
https://github.com/jiangmiao/auto-pairs

**indentLine**
https://github.com/Yggdroot/indentLine

**vim-javascript**
https://github.com/pangloss/vim-javascript

**vim-jsx**
https://github.com/mxw/vim-jsx

**vim-prettier**
https://github.com/prettier/vim-prettier

**vim-unimpaired**
https://github.com/tpope/vim-unimpaired

**vim-rails**
https://github.com/tpope/vim-rails

**vim-elixir**
https://github.com/elixir-editors/vim-elixir

---

## zsh

https://github.com/denysdovhan/spaceship-prompt

**iTerm**

Preferences → Text → Non-ASCII Font → 12pt Meslo LG S Regular for Powerline

(Natural Text Editing)
Preferences → Profiles → Keys → Keyboard Behavior → Load Preset → Natural Text Editing

---

## Themes

https://draculatheme.com/

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
git pull
```

```
ln -s ~/Desktop/code/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/Desktop/code/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/Desktop/code/dotfiles/vim/.vimrc ~/.vimrc
```
