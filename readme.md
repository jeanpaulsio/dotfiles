# Dotfiles

## Homebrew

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

🍺Brew a couple of things

```bash
brew update
brew install git
brew install ack
brew install tmux
brew install asdf
```

Configuring asdf

```txt
https://asdf-vm.com/#/core-manage-asdf-vm
```

Configuring git

```bash
git config --global user.name "jeanpaulsio"
git config --global user.email "sio.jeanpaul@gmail.com"
```

Testing it out

```bash
git clone https://github.com/jeanpaulsio/dotfiles.git
```

Commit a change and push it up. When it asks for a username and password, make sure to generate a personal access token:

```txt
https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/
```

---

## zsh

```bash
brew install zsh zsh-completions
```

Oh My Zsh:  
https://github.com/robbyrussell/oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

---

## Vim

Quick Installation:

```bash
ruby setup_vim.rb
```

---

## Themes

- https://draculatheme.com

---

## Other

Easily name `HostName`

```bash
sudo scutil --set HostName westeros
```

Change Keyspeed to make navigating Vim more chill

```txt
System Preferences > Keyboard > Key Repeat         = Fast
System Preferences > Keyboard > Delay Until Repeat = Short
```

---

## Symlink Config

```bash
ln -s ~/jeanpaulsio/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/jeanpaulsio/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/jeanpaulsio/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/jeanpaulsio/dotfiles/.gitignore_global ~/.gitignore_global
```

## Global Git Ignore

```bash
git config --global core.excludesfile ~/.gitignore_global
```

---

## Apps

```txt
Google Chrome
Spotify
Alfred - https://www.alfredapp.com/
Dropbox (for alfred)
One Password - https://1password.com/downloads/mac/
Better Touch Tool - https://folivora.ai/
Keyboard Clean Tool - https://folivora.ai/keyboardcleantool
iTerm - https://www.iterm2.com/
```

### Better Touch Tool

Key sequence

```txt
Shift + Option + L -> Move Right a space
Shift + Option + H -> Move Left a space
```

---

### Heroku

```bash
brew install heroku/brew/heroku
```
