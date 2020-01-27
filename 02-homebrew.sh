#!/bin/sh

# install homebrew
echo "Homebrew version..."
brew -v

echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Homebrew version..."
brew -v