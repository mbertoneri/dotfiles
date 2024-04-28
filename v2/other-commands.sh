#!/bin/bash


#Tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#services
skhd --start-service
yabai --start-service

#bat theme
mkdir -p "$(bat --config-dir)/themes"
cd "$(bat --config-dir)/themes"
curl -O https://raw.githubusercontent.com/folke/tokyonight.nvim/main/extras/sublime/tokyonight_night.tmTheme
bat cache --build
