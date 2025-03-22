export ALACRITTY_CONFIG=~/.config/alacritty/alacritty.yml

# Starship config
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

export EDITOR=nvim
alias vi="nvim" # No going back
alias cat="bat" # Pretty cat with syntax highlighting
alias ll="ls -la"
alias dot='cd ~/.config'
alias ..="cd .."

# Reload shell quickly
alias reload="source ~/.zshrc"

# Search shell history
bindkey '^r' history-incremental-search-backward
