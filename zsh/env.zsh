# env.zsh

# ---------------------- #
# Environment Variables  #
# ---------------------- #

# Editor
export EDITOR="nvim"

# Starship
export STARSHIP_CONFIG="$HOME/dotfiles/starship/starship.toml"
export STARSHIP_CACHE="$HOME/dotfiles/starship/cache"

# FZF Options
export FZF_DEFAULT_OPTS="
--style full
--preview 'fzf-preview.sh {}'
--bind 'focus:transform-header:file --brief {}'
--margin '1,3%'
--color=fg:#c0caf5,bg:#24283b,hl:#7dcfff
--color=fg+:#a9b1d6,bg+:#1a1b26,hl+:#2ac3de
--color=info:#cfc9c2,prompt:#f7768e,pointer:#bb9af7
--color=marker:#9ece6a,spinner:#7aa2f7,header:#73daca
"
