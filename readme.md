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

**Better Touch Tool**

Key sequence

```
Shift + Option + L -> Move Right a space
Shift + Option + H -> Move Left a space
```

---

- NPM and Node: https://www.npmjs.com/get-npm

**Heroku**

```
brew install heroku/brew/heroku
```
