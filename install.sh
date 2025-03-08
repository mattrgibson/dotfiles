#!/bin/bash
echo "Installing Vim Monk System..."

# Symlink dotfiles
ln -sf ~/.config/zsh/.zshrc ~/.zshrc

# Install all Brew packages
brew bundle install --file ~/.config/Brewfile

echo "Welcome back, monk."
