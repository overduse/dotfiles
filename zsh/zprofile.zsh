# Zsh path
export ZSH="$HOME/dotfiles/zsh"

# Editor
export EDITOR="nvim"

# Proxy
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890

# Starship
export STARSHIP_CONFIG="$HOME/dotfiles/starship/starship_zsh.toml"
export STARSHIP_CACHE="$HOME/dotfiles/starship/cache"

# Brew
eval $(/opt/homebrew/bin/brew shellenv) #ckbrew

# Zoxide initialize
eval "$(zoxide init zsh)"

# fzf style import
export FZF_DEFAULT_OPTS="
--style full
--preview 'fzf-preview.sh {}'
--bind 'focus:transform-header:file --brief {}'
--margin '1,3%'
"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#c0caf5,bg:#24283b,hl:#7dcfff --color=fg+:#a9b1d6,bg+:#1a1b26,hl+:#2ac3de --color=info:#cfc9c2,prompt:#f7768e,pointer:#bb9af7 --color=marker:#9ece6a,spinner:#7aa2f7,header:#73daca'
