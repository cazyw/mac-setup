#!/bin/sh

# install iterm2 + zsh + oh-my-zsh
echo "Installing iterm2..."
brew cask install iterm2

echo "Installing zsh..."
brew install zsh
zsh --version

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Default shell..."
echo $SHELL

echo "Installing spaceship theme..."
curl -o - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.zsh | zsh