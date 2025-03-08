#!/bin/bash
echo "Installing Vim Monk System..."

# Symlink dotfiles
rm ~/.bashrc
rm ~/.zshrc

ln -s ~/.config/bash/.bashrc ~/.bashrc
ln -s ~/.config/zsh/.zshrc ~/.zshrc

# Install all Brew packages
brew bundle install --file ~/.config/Brewfile

source ~/.bashrc
echo "Welcome back, monk."
