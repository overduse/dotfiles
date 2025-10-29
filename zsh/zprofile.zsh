# zprofile.zsh

export ZSH="$HOME/dotfiles/zsh"

# Homebrew
if [[ "$(uname)" == "Darwin" && -x "/opt/homebrew/bin/brew" ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
fi

if [ -f "$ZSH/env.zsh" ]; then
    source "$ZSH/env.zsh"
fi

# Zoxide initialize
eval "$(zoxide init zsh)"

# Load Private Config
if [ -f "${ZDOTDIR:-$HOME}/.zprofile.local" ]; then
    source "${ZDOTDIR:-$HOME}/.zprofile.local"
fi
