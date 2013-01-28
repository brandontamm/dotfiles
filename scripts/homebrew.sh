#!/bin/bash

##############################
### Homebrew               ###
##############################
# Install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Install apps
brew install atool lftp mplayer trash tree vim
brew install imagemagick --use-png --use-tiff
brew install zsh --disable-etcdir

##############################
### Brew cask              ###
##############################
# Install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

# Install apps and move them to /Applications
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew cask install alfred github keka skype sublime-text transmission
brew cask linkapps
