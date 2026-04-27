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
--margin '1,3%'
--color=bg+:#3c3836,bg:#282828,spinner:#d65d0e,hl:#cc241d
--color=fg:#ebdbb2,header:#cc241d,info:#b16286,pointer:#d65d0e
--color=marker:#98971a,fg+:#fbf1c7,prompt:#b16286,hl+:#fb4934
--color=selected-bg:#504945
--color=border:#665c54,label:#ebdbb2
"
# 注释掉 preview 相关选项，因为 fzf-lua 会自己管理预览
# --preview 'fzf-preview.sh {}'
# --bind 'focus:transform-header:file --brief {}'


