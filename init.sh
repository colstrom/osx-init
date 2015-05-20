#!/bin/sh

# Get brew!
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Set up a nice shell
brew install fish mobile-shell the_silver_searcher tmux
echo /usr/local/bin/fish | sudo tee -a /etc/shells
sudo chsh -s /usr/local/bin/fish `whoami`
brew install caskroom/cask/brew-cask
brew tap caskroom/fonts
brew install font-source-code-pro font-source-code-pro-for-powerline

# Core Libraries and Tools
brew install zeromq --with-libsodium --with-libpgm
brew install czmq --with-libsodium
brew install protobuf --with-c++11
brew install capnp

# Update Git
brew install curl --with-c-ares --with-libidn --with-libmetalink --with-libssh2 --with-nghttp2 --with-rtmpdump
brew install git --with-blk-sha1 --with-brewed-curl --with-brewed-openssl --with-gettext --with-pcre --with-persistent-https
brew install bfg git-flow-avh git-lfs gitter tig

# Install a modern version of SSH
brew tap homebrew/dupes
brew install openssh --with-brewed-openssl --with-ldns --with-keychain-support

# Add dnscrypt support
brew install dnscrypt-proxy
sudo cp -fv /usr/local/opt/dnscrypt-proxy/*.plist /Library/LaunchDaemons
sudo chown root /Library/LaunchDaemons/homebrew.mxcl.dnscrypt-proxy.plist
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnscrypt-proxy.plist

# Ruby
brew install chruby-fish ruby-install
ruby-install ruby 2.2.2
chruby ruby 2.2
gem install bundler
bundle install
echo ruby-2.2 > ~/.ruby-version

# Python
brew install python
pip install -U pip setuptools
pip install -U ansible awscli boto ipython nose pandas pydot pygments s3cmd scikit-learn scikit-neuralnetwork statsmodels theanets theano

# node.js
brew install node --with-icu4c --with-openssl
npm install -g sitespeed.io

# Go
brew install go --with-cc-common

# Lua
brew install lua --with-completion
brew install luajit --with-52compat
brew install luarocks

# Clojure
brew install leiningen

# C
brew install llvm --with-clang --with-lld --with-lldb --with-python --with-rtti

# Rust
brew install rust

# Lisp
brew install sbcl

# Scala
brew install scala

# Databases
brew install neo4j --with-neo4j-shell-tools
brew install arangodb couchdb influxdb mongodb orientdb postgresql redis rethinkdb

# Assorted
brew install gource graphviz packer phantomjs upx vagrant watchman

brew cask install algodoo android-studio armory atom bettertouchtool bitmessage bittorrent-sync brackets caffeine calibre cockatrice consul darteditor dash deluge emacs flux github githubpulse gitter google-chrome gpgtools haskell-platform iterm2 java joinme karabiner kitematic lighttable minecraft omnigraffle openra packer processing racket rstudio screenflow screenhero slack snagit sourcetree sparkleshare sublime-text3 terraform vagrant virtualbox

brew tap caskroom/versions
brew cask install sublime-text3

# Docker
brew install boot2docker
boot2docker init
boot2docker up
