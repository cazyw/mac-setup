#!/bin/sh

echo "Installing alfred..."
brew cask install alfred

echo "Installing bloomrpc..."
brew cask install bloomrpc

echo "Installing postman..."
brew cask install postman

echo "Installing elasticsearch..."
brew tap elastic/tap
brew install elastic/tap/elasticsearch-full