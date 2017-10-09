#!/bin/bash

MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTENSIONS=$MYDIR/extensions.config
SETTINGS=$MYDIR/settings.config
SNIPPETS=$MYDIR/snippets/

echo "Saving VS-Code: extensions"
code --list-extensions > $EXTENSIONS

echo "Saving VS-Code: settings"
cp ~/Library/Application\ Support/Code/User/settings.json $SETTINGS

echo "Saving VS-Code: snippets"
cp ~/Library/Application\ Support/Code/User/snippets/* $SNIPPETS

echo "VS-Code config was saved succesfully to $MYDIR"
