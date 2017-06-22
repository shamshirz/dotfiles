#!/bin/bash

echo "Getting Dash documentation"
curl "https://git-fork.com/update/files/Fork.dmg" -o ~/Downloads/fork.dmg

hdiutil attach ~/Downloads/fork.dmg

cp -ir /Volumes/Fork/Fork.app /Applications

sudo hdiutil unmount /Volumes/Fork

echo "Dash successfully installed."
