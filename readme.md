# Dotfiles

---

Make sure to install ack with brew

```
$ brew install ack
```

---

## Vim

Vim Plugins

__ack__
https://github.com/mileszs/ack

__ctrlp__
https://github.com/ctrlpvim/ctrlp

__ale__
https://github.com/w0rp/ale

__vim git gutter__
https://github.com/airblade/vim-gitgutter

__auto pairs__
https://github.com/jiangmiao/auto-pairs

__indentLine__
https://github.com/Yggdroot/indentLine

__vim-javascript__
https://github.com/pangloss/vim-javascript

__vim-jsx__
https://github.com/mxw/vim-jsx

__vim-prettier__
https://github.com/prettier/vim-prettier

__vim-unimpaired__
https://github.com/tpope/vim-unimpaired

__vim-rails__
https://github.com/tpope/vim-rails

__vim-elixir__
https://github.com/elixir-editors/vim-elixir

---

## zsh

https://github.com/denysdovhan/spaceship-prompt

__iTerm__

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
