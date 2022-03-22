# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=(brew capistrano colored-man-pages colorize command-not-found common-aliases composer docker docker-compose emoji fancy-ctrl-z git git-auto-fetch git-extras git-prompt gitignore gpg-agent history history-substring-search iterm2 node npm macos rsync sudo vi-mode vim-interaction yarn z zsh-autosuggestions zsh-syntax-highlighting kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration
ulimit -n 5000


#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
#end nvm

# Source aliases
# For a full list of active aliases, run `alias`.
if [[ "$MACHINE" == "Linux" ]];then
  PROJECT_ROOT='====TODO==='
  source "$PROJECT_ROOT/env/aliases-shared.sh"
  source "$PROJECT_ROOT/env/aliases-linux.sh"
  source "$PROJECT_ROOT/env/exports.sh"
  source "$PROJECT_ROOT/env/functions.sh"
elif [[ "$MACHINE" == "Mac" ]]; then
  PROJECT_ROOT='/Users/mbertoneri/dev/dotfiles'
  source "$PROJECT_ROOT/env/aliases-shared.sh"
  source "$PROJECT_ROOT/env/aliases-mac.sh"
  source "$PROJECT_ROOT/env/exports.sh"
  source "$PROJECT_ROOT/env/functions.sh"
fi
