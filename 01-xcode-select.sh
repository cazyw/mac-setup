#!/bin/sh

# install xcode-select - not required if installing homebrew as that will install xcode

echo "xcode-select path..."
OUTPUT="$(xcode-select -p)"
echo $OUTPUT

echo "xcode-select version..."
xcode-select -v

echo "Installing xcode-select..."
xcode-select --install