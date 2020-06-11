# New Computer Setup

**Install Homebrew**

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

**Install oh my zsh**

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

**Brew a couple of things**

```bash
brew bundle
```

**Configure git**

```bash
git config --global user.name "username"
git config --global user.email "email@email.com"
```

**Create symlinks**

```bash
ln -s ~/github/jeanpaulsio/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/github/jeanpaulsio/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/github/jeanpaulsio/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/github/jeanpaulsio/dotfiles/.gitignore_global ~/.gitignore_global
```

**Configure global .gitignore**

```bash
git config --global core.excludesfile ~/.gitignore_global
```

**Cool ass git config for shell**

```bash
git config --global --replace-all core.pager "less -F -X"
```

**Key Repeat Stuff**

```bash
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
```

**Rename HostName**

```bash
sudo scutil --set HostName jp
```

**Change Keyspeed to make navigating Vim more chill**

```txt
System Preferences > Keyboard > Key Repeat         = Fast
System Preferences > Keyboard > Delay Until Repeat = Short
```

## Desktop Apps

- [Google Chome](https://google.com)
- [Alfred App](https://www.alfredapp.com/)
- [1Password](https://1password.com/)
- [Better Touch Tool](https://1password.com/)
- [Keyboard Clean Tool](https://folivora.ai/keyboardcleantool)
- [iTerm 2](https://iterm2.com/)

### Better Touch Tool

Key sequence

```txt
Shift + Command + L -> Move Right a space
Shift + Command + H -> Move Left a space
```

## Useful Links

- [Github access token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/)
- [Configuring asdf](https://asdf-vm.com/#/core-manage-asdf-vm)
