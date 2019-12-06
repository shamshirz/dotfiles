#!/bin/bash

# Expects $dots to be home of dot files (exported in zshrc)

codeSettings=vs-code-settings.json
globalNpm=global-npm.txt
codePackages=vs-code-package-list.txt

cd $dots/settings

echo "Brew dump"
brew bundle dump -f

echo "VS-Code update script"
sh ../vs-code/updateConfig.sh
