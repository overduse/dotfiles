# Tmux Configuration

This is my personal Tmux configuration, designed to create an efficient, aesthetic, and intuitive terminal multiplexer environment.

The core of this setup focuses on usability, featuring a `Ctrl+a` prefix, full mouse support, and Vim-like keybindings for seamless navigation. It also integrates TPM (Tmux Plugin Manager) to manage a suite of powerful plugins that enhance functionality.

## ✨ Key Features

- **Comfortable Prefix**: Changed the default `Ctrl+b` to the easier-to-reach `Ctrl+a`.
- **Vim-style Navigation**: Move between panes seamlessly using `h/j/k/l`.
- **Mouse Mode**: Full support for selecting panes, resizing, and scrolling with the mouse.
- **Aesthetic Status Bar**: A clean, informative status bar showing session name, window list, and current date.
- **Persistent Sessions**: Automatically save and restore your workspace even after a restart, thanks to `tmux-resurrect` and `tmux-continuum`.
- **Enhanced Copying**: Integrated with `tmux-yank` for easy copying to the system clipboard.

## 🚀 Installation

1.  **Install Tmux**:
    ```bash
    # macOS
    brew install tmux

    # Ubuntu/Debian
    sudo apt-get install tmux
    ```

2.  **Install TPM (Tmux Plugin Manager)**:
    Clone the TPM repository to your tmux configuration directory.
    ```bash
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ```

3.  **Setup & Install Plugins**:
    - Symlink or copy the `tmux.conf` from this repository to `~/.config/tmux/tmux.conf` or `~/.tmux.conf`.
    - Start Tmux and press **`Prefix + I`** (capital "I") to install all plugins listed in the configuration.

## ⌨️ Core Keybindings

Most custom keybindings are designed to reduce keystroke complexity.

**Prefix**: `Ctrl + a`

| Key | Function |
| :--- | :--- |
| `Prefix` `\|` | Split pane horizontally (in current path) |
| `Prefix` `_` | Split pane vertically (in current path) |
| `Prefix` `h`/`j`/`k`/`l` | Move focus to the left/down/up/right pane |
| `Prefix` `Ctrl`+`h`/`j`/`k`/`l` | Resize pane by 5 cells |
| `Alt` + `h`/`j`/`k`/`l` | Switch panes **without prefix** |
| `Alt` + `1`...`9` | Switch to window N **without prefix** |
| `Alt` + `Shift` + `←`/`→` | Swap current window position left/right |


## 🔌 Plugins

Plugins are managed via [TPM](https://github.com/tmux-plugins/tpm):

| Plugin | Description |
| :--- | :--- |
| [`tmux-plugins/tpm`](https://github.com/tmux-plugins/tpm) | Tmux Plugin Manager itself. |
| [`sainnhe/tmux-fzf`](https://github.com/sainnhe/tmux-fzf) | Integrates FZF for powerful fuzzy searching of sessions, windows, etc. |
| [`tmux-plugins/tmux-yank`](https://github.com/tmux-plugins/tmux-yank) | Enables copying to the system clipboard in standard tmux copy mode. |
| [`tmux-plugins/tmux-open`](https://github.com/tmux-plugins/tmux-open) | Quickly open highlighted files or URLs in their default applications. |
| [`tmux-plugins/tmux-copycat`](https://github.com/tmux-plugins/tmux-copycat) | Enhances tmux search with predefined searches for standard patterns. |
| [`tmux-plugins/tmux-resurrect`](https://github.com/tmux-plugins/tmux-resurrect) | Manually persists tmux environments across system restarts. |
| [`tmux-plugins/tmux-continuum`](https://github.com/tmux-plugins/tmux-continuum) | Continuous saving of tmux environment (automates resurrect). |
| [`jimeh/tmuxifier`](https://github.com/jimeh/tmuxifier) | Powerful session manager for tmux, using shell scripts for layouts. |
| [`omerxx/tmux-floaX`](https://github.com/omerxx/tmux-floax) | Floating panes in Tmux. |
| [`omerxx/tmux-sessionX`](https://github.com/omerxx/tmux-sessionX) | A fuzzy Tmux session manager with preview capabilities, deleting, renaming and more! |
