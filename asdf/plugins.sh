#!/bin/zsh

# if asdf executable does not exist
if ! hash asdf 2>/dev/null; then
  echo "Install asdf first (./install.sh) 👍"
  exit 1
fi

echo "\nErlang Setup (Will take a few min) …"
brew install wxmac autoconf
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git

echo "\nElixir Setup…"
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

echo "\nNodejs Setup…"
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
brew install gpg
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

echo "\nElm Setup…"
asdf plugin-add elm https://github.com/asdf-community/asdf-elm.git

echo "\nRust Setup…"
asdf plugin-add rust https://github.com/asdf-community/asdf-rust.git

echo "\nPython Setup…"
asdf plugin-add python

echo "\n👨‍🔬asdf successfully configured! Next step in the Readme 👩‍🔬"
