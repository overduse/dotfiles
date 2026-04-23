# Tmux Configuration

Personal tmux 3.4+ configuration with TPM (Tmux Plugin Manager) integration, focused on efficiency, aesthetics, and Vim-style operations.

## Features

### Panes & Navigation

- **Prefix Remap**: `Ctrl+b` → `Ctrl+a`, more ergonomic
- **Window Indexing**: Windows numbered 1~9 (via `base-index 1`), no window 0
- **Vim-style Pane Navigation**: `h/j/k/l` to move between panes (requires Prefix)
- **Prefix-free Alt Navigation**: `Alt + h/j/k/l` to switch panes directly
- **Pane Resizing**: `Prefix + Ctrl+h/j/k/l` resize by 5 cells
- **Window Switching**: `Alt + 1~9` jump directly to window N
- **Window Reordering**: `Alt + Shift+←/→` swap current window with left/right neighbor

### Visual Experience

- **True Color Support**: Configured with `tmux-256color` + True Color (`*:RGB`)
- **Styled Pane Borders**: Inactive panes in black, active pane in magenta
- **Bottom Status Bar**: Left shows icon + Session name, right shows zoom flag + date
- **Window Indicators**: Normal windows show `●`, current window color varies by zoom state

### Copy & Clipboard

- **Vi-style Copy Mode**: `set -g mode-keys vi`, supports `v`/`C-v`/`y` and more
- **tmux-yank Integration**: Write directly to system clipboard from copy mode

### Session Persistence

- **tmux-resurrect**: Manually save/restore tmux workspace
- **tmux-continuum**: Auto-save on a timer; seamless restore after restart

### Other

- **Mouse Mode**: Select panes, resize, and scroll with mouse
- **Auto Renumber Windows**: Deleted window numbers are automatically compacted
- **Auto Path Loading**: New panes open in the current directory via `#{pane_current_path}`
- **Quick Reload**: `Prefix + r` to reload tmux.conf
- **lazygit Popup**: `Prefix + g` opens lazygit in a popup at current path

---

## Keybindings

### Prefix

| Key | Description |
| :--- | :--- |
| `Ctrl+a` | New prefix (replaces default `Ctrl+b`) |

### Window & Pane Operations

| Key | Description |
| :--- | :--- |
| `Prefix + %` | Split horizontally (left/right) |
| `Prefix + "` | Split vertically (top/bottom) |
| `Prefix + h/j/k/l` | Move focus to left/down/up/right pane |
| `Prefix + Ctrl+h/j/k/l` | Expand current pane by 5 cells in each direction |
| `Alt + h/j/k/l` | Move focus **without prefix** |
| `Alt + 1~9` | Jump to window N **without prefix** |
| `Alt + Shift+←/→` | Swap current window with left/right neighbor |
| `Prefix + r` | Reload tmux.conf |

### Copy Mode (Vi-style)

| Key | Description |
| :--- | :--- |
| `Prefix + [` | Enter copy mode |
| `v` | Begin character selection |
| `Ctrl+v` | Begin block selection |
| `y` | Copy selection and exit |
| `q` | Exit copy mode |

### Plugin Keybindings

| Key | Description |
| :--- | :--- |
| `Prefix + g` | Open lazygit popup at current directory |
| `Prefix + I` | Install/update all TPM plugins |
| `Prefix + O` | Fuzzy session switcher via **sessionx** |
| `Prefix + p` | Toggle floating pane via **floaX** |
| `Prefix + P` | floaX floating pane menu |
| `Prefix + F` | **tmux-fzf** fuzzy search (sessions, windows, etc.) |

---

## Installation

```bash
# 1. Install tmux (if not already installed)
brew install tmux        # macOS
sudo apt-get install tmux  # Ubuntu/Debian

# 2. Clone TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# 3. Create config directories
mkdir -p ~/.config/tmux

# 4. Symlink tmux.conf
ln -s ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

# 5. Create session root directory
mkdir -p ~/workspace

# 6. Inside tmux, install plugins
#    Press Prefix + I (capital I)
```

---

## Plugins

| Plugin | Description |
| :--- | :--- |
| `tmux-plugins/tpm` | Tmux Plugin Manager |
| `sainnhe/tmux-fzf` | fzf integration for fuzzy session/window search |
| `tmux-plugins/tmux-yank` | Copy to system clipboard from copy mode |
| `tmux-plugins/tmux-open` | Open highlighted files/URLs in default apps |
| `tmux-plugins/tmux-copycat` | Enhanced search with preset patterns |
| `tmux-plugins/tmux-resurrect` | Manual save/restore of workspace |
| `tmux-plugins/tmux-continuum` | Auto-save timer (pairs with resurrect) |
| `omerxx/tmux-floax` | Floating panes |
| `omerxx/tmux-sessionx` | Fuzzy session manager with preview, delete, rename |

---

## tmux.conf Structure

```
tmux.conf
├── General settings          # renumber, mouse, allow-rename, escape-time
├── Look & Feel              # terminal, borders, status bar
├── Keybindings              # prefix, split, navigate, resize, window ops
├── copy-mode                # vi copy mode bindings
├── reload                   # config reload shortcut
└── TPM + Plugins            # plugin list and tpm init
```