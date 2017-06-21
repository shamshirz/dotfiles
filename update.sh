#!/bin/zsh

codeSettings=~/dotfiles/vs-code-settings.json
globalNpm=~/dotfiles/global-npm.txt

echo "Brew dump"
brew bundle dump -f

echo "VS Code settings - $codeSettings"
cp ~/Library/Application\ Support/Code/User/settings.json $codeSettings

echo "Global Npm Packages - $globalNpm"
npm list -g --depth=0 > $globalNpm
