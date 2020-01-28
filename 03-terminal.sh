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

echo "Installing powerline fonts..."
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# you'll need to manually change the font in the Mac to use e.g. Fira Code

echo "Installing spaceship theme..."
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

#Symlink spaceship.zsh-theme to your oh-my-zsh custom themes directory:
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Set ZSH_THEME="spaceship" in your .zshrc