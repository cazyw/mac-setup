#!/bin/sh

echo "Installing go..."
brew install go

echo "Go environment variables..."
go env

echo "Installing goenv..."
brew install goenv