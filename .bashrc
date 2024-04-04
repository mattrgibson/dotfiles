#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set to superior editing mode
set -o vi

# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~

# directories
export REPOS="$HOME/Repos"
export GITUSER="mattrgibson"
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export ICLOUD="$HOME/icloud"
export SECOND_BRAIN="$HOME/brain"
export SCRIPTS="$DOTFILES/scripts"

# ~~~~~~~~~~~~~~~ Path configuration ~~~~~~~~~~~~~~~~~~~~~~~~
PATH="${PATH:+${PATH}:}"$SCRIPTS""

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

alias v=nvim

# cd
alias ..="cd .."

# repos
alias dot='cd $GHREPOS/dotfiles'
alias icloud="cd \$ICLOUD"
alias repos='cd $REPOS'
alias sb="cd \$SECOND_BRAIN"

alias c="clear"

# git
alias gp='git pull'
alias gs='git status'

# terraform
alias tf='terraform'
alias tp='terraform plan'
