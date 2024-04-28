	#install Xcode Command Line Tools
	echo "Installing Xcode command line tools"
	xcode-select --install

	# Install Homebrew (if not installed)
	echo "Installing Homebrew."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Installs Casks
brew tap homebrew/cask

## Apps I use
brew install google-backup-and-sync
brew install google-chrome #Chrome
brew install google-drive
#brew install homebrew/cask-versions/firefox-nightly # Nightly
#brew install homebrew/cask-versions/google-chrome-canary # Chrome Canary
brew install iterm2
brew install kap
brew install notion
brew install signal
brew install slack
brew install spotify
brew install textexpander
brew install visual-studio-code
brew install whatsapp
brew install sublime-text
brew install --cask 1password
#brew install --cask rectangle
brew install neovim


# Restore plists of apps
mackup restore

# Remove outdated versions from the cellar.
brew cleanup


# Installs binaries that are useful, but not essential for initial computer setup


# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
#brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
#brew install findutils
# Install GNU `sed` as gsed
#brew install gnu-sed

#Terminal utilities
brew install --cask alacritty
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
brew install powerlevel10k
brew install tmux

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
#brew install exa
# https://github.com/ellie/atuin
#brew install atuin
#brew install starship //TODO REMOVE
brew tap ferdium/ferdium
brew install ferdium
brew install jq # 1.5MB, C, JSON CLI processor
brew install bat # cat with syntax highlighting and Git integration
brew install fd # Simple, fast and user-friendly alternative to find
brew install the_silver_searcher # 172KB, ag: Code-search similar to ack, but faster [C]
brew install ripgrep # 5.8MB, rg: Code-search similar to ag, but faster [Rust]
brew install gum # 25MB, fancy input for shell scripts: choose a b, input, write, confirm
brew install fzf # 2.7MB, Command-line fuzzy finder written in Go
#brew install koekeishiya/formulae/yabai #tilting manager
brew install git-delta #better git diff
brew install eza #better ls command
brew install zoxide #better cd

# Install for dev
brew install php
brew install go 
brew install libpq
brew link --force libpq
brew install httpie

#vnm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
nvm install --lts
npm install --global yarn

#keyboard
brew install --cask karabiner-elements
brew install koekeishiya/formulae/skhd #simple hotkey daemon for macOS

#docker
brew install docker-completion
brew install docker



# Remove outdated versions from the cellar.
brew cleanup
