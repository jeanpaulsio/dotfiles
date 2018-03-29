# Dotfiles

---

## Vim

Base:

[Ultimate Vim Config](https://github.com/amix/vimrc)

Vim Plugins:

__ale__
https://github.com/w0rp/ale

__auto pairs__
https://github.com/jiangmiao/auto-pairs

__diminactive__
https://github.com/blueyed/vim-diminactive

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

## Themes

Dracula everything:
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
ln -s ~/Desktop/code/dotfiles/vim/my_configs.vim ~/.vim_runtime/my_configs.vim
ln -s ~/Desktop/code/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```
