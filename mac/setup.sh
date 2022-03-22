#!/usr/bin/env bash

# Install apps and binaries with Brew
source mac/brew-essentials.sh
source mac/brew-binaries.sh

# Set npm permissions and install global binaries
source shared/npm.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source ./macos

