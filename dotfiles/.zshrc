# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# plugins=(brew capistrano colored-man-pages colorize command-not-found common-aliases composer docker docker-compose emoji fancy-ctrl-z git git-auto-fetch git-extras git-prompt gitignore gpg-agent history history-substring-search iterm2 node npm macos rsync sudo vi-mode vim-interaction yarn z zsh-autosuggestions zsh-syntax-highlighting kubectl )
plugins=(brew capistrano colored-man-pages colorize command-not-found common-aliases composer docker docker-compose emoji fancy-ctrl-z git git-auto-fetch git-extras git-prompt gitignore history history-substring-search iterm2 yarn z zsh-autosuggestions zsh-syntax-highlighting kubectl autojump)

source $ZSH/oh-my-zsh.sh


unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     MACHINE=Linux;;
    Darwin*)    MACHINE=Mac;;
    CYGWIN*)    MACHINE=Cygwin;;
    MINGW*)     MACHINE=MinGw;;
    *)          MACHINE="UNKNOWN:${unameOut}"
esac
export MACHINE

# User configuration
ulimit -n 5000

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
  PROJECT_ROOT="$PWD/dev/personal/dotfiles"
  echo $PROJECT_ROOT >> /tmp/alias.txt
  source "$PROJECT_ROOT/env/aliases-shared.sh"
  source "$PROJECT_ROOT/env/aliases-mac.sh"
  source "$PROJECT_ROOT/env/exports.sh"
  source "$PROJECT_ROOT/env/functions.sh"
fi
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval "$(starship init zsh)"
eval "$(atuin init zsh)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mbertoneri/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mbertoneri/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mbertoneri/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mbertoneri/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
