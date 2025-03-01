#!/bin/bash
echo "Installing Vim Monk System..."

# Borrowed this setup from https://github.com/mischavandenburg/dotfiles/blob/main/setup

# create directories
export XDG_CONFIG_HOME="$HOME"/.dotfiles
mkdir -p "$XDG_CONFIG_HOME"/zsh
mkdir -p "$XDG_CONFIG_HOME"/alacritty

mkdir -p "$XDG_CONFIG_HOME"/nvim
mkdir -p "$XDG_CONFIG_HOME"/starship


# Symlink dotfiles
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -sf ~/.dotfiles/nvim/init.lua ~/.config/nvim/init.lua

# Install all Brew packages
brew bundle install --file ~/.dotfiles/Brewfile

echo "Welcome back, monk."
