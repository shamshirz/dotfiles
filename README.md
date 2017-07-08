My Dopee Dotfiles
=================


It's not totally automated just yet, but this has the gist of things you need and some small automations.

# Manual Essentials

 * Chrome
 * Iterm2
 * Slack
 * Postman
 * Spectacle
 * f.lux
 * Private Internet Access (PIA)
 * Spotify
 * Setup iterm + zsh

 The brewfile should get zsh and I might still need to DL oh-my-zsh
 Then make a symlink to the the local zshrc 
  * `ln -s zshrc_dot_me ~/.zshrc`

That zshrc expects the env.sh file, which is were the bulk of the settings are



## Still Manual, but to be automated

 * Iterm2
 * zsh

## Installed via scripts

 * Dash
 * Fork
 * Visual Studio Code
  * Plugins for elixir / elm / etc
 * Everything in homebrew
 * Docker
 



# What to do

The install scripts are pretty straight forward
They download stuff, either unzip it into Applications, or mount and copy

Brew will do its thing

If you don't use the 'install-it-all.sh' script then follow these steps most likely


1. Setup the manual stuff, especially zsh and iterm (a little annoying, work in progress)
2. `cd $dotfiles`
3. `sh install/dash`
4. `sh install/fork`
6. Visual Studio Setup



## Visual Studio Code setup (1 min ideally)

This is unfortunately a little involved still

The install script will do the default install and open it. Then we need to add the `code` command to the PATH, then just rerun the script.

 * `sh vs-code/install`
 * In vs code, open the command pallet 'cmd + shift + p'
  * Search for install shell
 * Open a new terminal
 * `which code`
  * should spit out /usr/local/bin/code
 * `sh vs-code/install`

# Keeping me up to date

To keep this stuff up to date run the `update.sh` script

It dumps
 * Current brew status
 * VS code settings
 * VS code packages
 * Npm global packages
