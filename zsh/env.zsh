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
--color=bg+:#292e42,bg:#24283b,spinner:#7aa2f7,hl:#ff9e64
--color=fg:#c0caf5,header:#7aa2f7,info:#bb9af7,pointer:#bb9af7
--color=marker:#9ece6a,fg+:#c0caf5,prompt:#7aa2f7,hl+:#ff9e64
--color=selected-bg:#292e42
--color=border:#565f89,label:#c0caf5
"
# 注释掉 preview 相关选项，因为 fzf-lua 会自己管理预览
# --preview 'fzf-preview.sh {}'
# --bind 'focus:transform-header:file --brief {}'


