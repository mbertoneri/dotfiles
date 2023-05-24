#!/usr/bin/env bash
# Installs binaries that are useful, but not essential for initial computer setup


# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed` as gsed
brew install gnu-sed

# For https on locahost
brew install mkcert
brew install nss

# Install `wget` with IRI support.
brew install wget

brew install gmp
brew install grep
brew install node

# Install useful binaries.
brew install ack
brew install autojump
brew install ffmpeg
brew install git
brew install git-lfs
brew install github/gh/gh
brew install imagemagick --with-webp
brew install ngrok
brew install p7zip
brew install pigz
brew install pv
brew install rsync
brew install rename
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install youtube-dl
brew install exa
brew install bat
# https://github.com/ellie/atuin
brew install atuin
brew install starship

# Install for dev
brew install php@8.1
brew install libpq
brew link --force libpq

# Remove outdated versions from the cellar.
brew cleanup
