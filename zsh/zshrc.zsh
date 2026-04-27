# zshrc.zsh

# --- History ---
setopt HIST_IGNORE_ALL_DUPS
bindkey -v  # vim mode

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
zstyle ':zim:git' aliases-prefix 'g'

# Cursor Style setting
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'
    elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'
# Use beam shape cursor for each new prompt.
preexec() {
    echo -ne '\e[5 q'
}

_fix_cursor() {
    echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)

KEYTIMEOUT=1

# zsh-autosuggestions
ZSH_AUTOSUGGEST_MANUAL_REBIND=1
# Customize the style that the suggestions are shown with.
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#928374,bold"

# zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor root line regexp)

# Customize the main highlighter styles.
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[comment]='fg=#928374'

# ------------------- #
# Initialize modules  #
# ------------------- #
ZIM_HOME=$ZSH/zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source ${ZIM_HOME}/zimfw.zsh init
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#
zmodload -F zsh/terminfo +p:terminfo
# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
for key ('^[[A' '^P' ${terminfo[kcuu1]}) bindkey ${key} history-substring-search-up
for key ('^[[B' '^N' ${terminfo[kcud1]}) bindkey ${key} history-substring-search-down
for key ('k') bindkey -M vicmd ${key} history-substring-search-up
for key ('j') bindkey -M vicmd ${key} history-substring-search-down
unset key

# Load and rebindkey ^T -> ^F
source $ZSH/fzf.zsh
bindkey -r '^T'
bindkey '^F' fzf-file-widget

# Above zim setting

# Zoxide
if (( ${+commands[zoxide]} )); then
    eval "$(zoxide init zsh)"
fi

if [ -f "$ZSH/alias.zsh" ]; then
    source "$ZSH/alias.zsh"
fi

# Yazi function
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

# Starship for prompt
eval "$(starship init zsh)"

# Load local secrets (not tracked by git)
[[ -f "$ZSH/local.zsh" ]] && source "$ZSH/local.zsh"

# Add user binaries to PATH
export PATH="$HOME/.local/bin:$PATH"
