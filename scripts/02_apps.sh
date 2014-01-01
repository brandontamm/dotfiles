# homebrew apps
brew install atool cpulimit elinks git-extras git-ftp lftp mackup mediainfo mkvtoolnix namebench phantomjs trash tree z
brew install git --without-completions
brew install imagemagick --with-libtiff
brew install ffmpeg --with-libvpx --with-libvorbins --with-theora
brew install vim --with-lua
brew install zsh --disable-etcdir

# install mpv
brew tap mpv-player/mpv
brew install --HEAD mpv-player/mpv/libass-ct
brew install mpv --with-bundle

# link GUI apps
brew linkapps

# homebrew-cask apps
# install brew cask
brew tap phinze/homebrew-cask
brew install brew-cask

# set caskroom permissions
mkdir -p /opt/homebrew-cask/Caskroom
sudo chown -R ${USER}:staff /opt/homebrew-cask

# install apps
brew cask install --appdir="/Applications" airserver alfred apikitchen bartender bettertouchtool dropbox enjoyable f-lux google-chrome google-hangouts imageoptim instacast iterm2 join-me keka key-codes node-webkit openemu platypus pokerstars processing shiori shotcut skype spectacle steam sublime-text textexpander transmission

# drivers
brew cask install xbox360-controller-driver

# prefpanes and qlplugins
brew cask install betterzipql jsonlook qlcolorcode qlimagesize qlmarkdown qlstephen scriptql suspicious-package

# fonts
brew tap caskroom/homebrew-fonts
brew cask install font-source-code-pro

# games
#brew cask install gridwars noiz2sa rootage torus-trooper

# colorpickers
brew cask install colorpicker-antetype

# my personal taps
# tiny-scripts
brew tap vitorgalvao/homebrew-tinyscripts
brew install --HEAD customise-terminal-notifier dropboxtimer gfv gifmaker labelcolor lovecolor olx-post olx-prolongar readability-delete-archives seren unsplashdownload

# cleanup homebrew's cache
brew cleanup --force -s
rm -rf $(brew --cache)
