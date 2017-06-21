#!/bin/zsh

# Expects $dots to be home of dot files (exported in zshrc)

codeSettings=$dots/vs-code-settings.json
globalNpm=$dots/global-npm.txt
codePackages=$dots/vs-code-package-list.txt

echo "Brew dump"
brew bundle dump -f

echo "VS Code settings - $codeSettings"
cp ~/Library/Application\ Support/Code/User/settings.json $codeSettings

echo "VS Code packages"
code --list-extensions > $codePackages

echo "Global Npm Packages - $globalNpm"
npm list -g --depth=0 > $globalNpm
