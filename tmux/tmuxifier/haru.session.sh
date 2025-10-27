# MY TMUXIFIER LAYOUT IS STORED IN THE FILE.
# I MANAGE THE PLUGIN WITH TPM, SO IT SHOULD BE PLACED IN
# "$HOME/.config/tmux/plugins/tmuxifier/layouts/"

session_name="Haru"
session_root "$PATH_YOU_PREFER"   # change the string as you wish

if initialize_session "$session_name"; then
    new_window "hello"
    split_h 50
    run_cmd "btop"
    split_v 20
    run_cmd "cava"
    select_pane 0
    run_cmd "fastfetch"

    new_window "workspace"
    select_window "hello"
fi

finalize_and_go_to_session
