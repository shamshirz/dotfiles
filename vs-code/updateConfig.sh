#!/bin/bash

MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTENSIONS=$MYDIR/extensions.config
SETTINGS=$MYDIR/settings.config


echo "Saving current extension list"
code --list-extensions > $EXTENSIONS

echo "Saving current vs-code settings"
cp ~/Library/Application\ Support/Code/User/settings.json $SETTINGS

echo "VS-Code config was saved succesfully to $MYDIR"
