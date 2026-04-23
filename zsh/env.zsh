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
--color=bg+:#414559,bg:#303446,spinner:#F2D5CF,hl:#E78284
--color=fg:#C6D0F5,header:#E78284,info:#CA9EE6,pointer:#F2D5CF
--color=marker:#BABBF1,fg+:#C6D0F5,prompt:#CA9EE6,hl+:#E78284
--color=selected-bg:#51576D
--color=border:#737994,label:#C6D0F5
"
# 注释掉 preview 相关选项，因为 fzf-lua 会自己管理预览
# --preview 'fzf-preview.sh {}'
# --bind 'focus:transform-header:file --brief {}'


