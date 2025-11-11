export ALACRITTY_CONFIG=~/.config/alacritty/alacritty.yml

# Starship config
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

export EDITOR=nvim
alias vi="nvim" # No going back
alias vim="nvim"
alias ll="ls -la"
alias dot='cd ~/.config'
alias ..="cd .."

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gcb='git checkout'
alias gcbb='git checkout -b'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status'
alias gf= 'git fetch'

# ---------------------
# Terraform Aliases
# ---------------------
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfaa='terraform apply -auto-approve'
alias tfv='terraform -v'
alias tfpaa='terraform plan && terraform apply -auto-approve'
alias tfmt='terraform fmt'

# second brain
BRAINDIR=~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/brain
alias brain='cd $BRAINDIR'

# Reload shell quickly
alias reload="source ~/.zshrc"

# Search shell history
bindkey '^r' history-incremental-search-backward

# ruby init
eval "$(rbenv init -)"

# configure JAVA_HOME for react native development
export JAVA_HOME=/opt/homebrew/opt/openjdk@17
export PATH=$PATH:"$JAVA_HOME/bin:$PATH"

# configure Android SDK variables
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH:$HOME/.dotnet/tools"

. "$HOME/.local/bin/env"
