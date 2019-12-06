#!/bin/zsh
set -eo pipefail

if command --version asdf 2>/dev/null; then
  echo "asdf already installed 👍"
  exit 0
else
  brew install \
    coreutils automake autoconf openssl \
    libyaml readline libxslt libtool unixodbc \
    unzip curl asdf

  echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ~/.zshrc
  echo -e "\n. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" >> ~/.zshrc
fi

echo "👩‍🔬 asdf successfully installed. Open a new shell to Enable 👨‍🔬"
