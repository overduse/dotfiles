# Starship Configuration

Personal [Starship](https://starship.rs) prompt configuration using the Catppuccin Mocha color palette, designed for efficiency and aesthetics across all shells.

## Features

### Prompt Modules

| Module | Description |
| :--- | :--- |
| `directory` | Current path, truncated to 3 levels with icon substitutions |
| `git_branch` | Current branch name with symbol |
| `git_status` | File status: modified `*`, staged `+`, untracked `?`, deleted `-`, etc. |
| `git_commit` | Current commit hash (7 chars) |
| `git_state` | Ongoing operations: rebase, merge, cherry-pick, etc. |
| `git_metrics` | Lines added/removed in last commit |
| `username` | User name (shown on SSH only) |
| `hostname` | Host name (shown on SSH only) |
| `jobs` | Running background jobs count |
| `time` | Current time (HH:MM:SS) in right prompt |
| `cmd_duration` | Last command duration (shown after 2s+) |
| `status` | Exit code on failure |

### Language & Runtime Detectors

Automatically detects and displays version info for:

| Language | Symbol | Triggers |
| :--- | :--- | :--- |
| Rust |  | `.rs` files |
| Go |  | `.go` files |
| Node.js |  | `package.json`, `.node-version`, `.nvmrc`, `node_modules/` |
| Python |  | `.py` files, shows conda/virtualenv |
| C |  | `.c` files |
| Docker |  | Docker context name |
| Conda | 󰌒 | Conda environments |

### Visual Features

- **Catppuccin Mocha** color palette — consistent with Neovim theme
- **Right prompt** shows current time
- **Vim mode indicators**: ❯ (normal), ❮ (insert/replace/visual modes)
- **Path icons**: Substitutes emoji icons for common directories
  - Documents → 󰈙, Downloads → , Music → 󰝚, Pictures → , Developer → 󰲋

---

## Installation

### 1. Install Starship

```bash
# macOS
brew install starship

# Linux (via curl)
curl -sS https://starship.rs/install.sh | sh

# Arch Linux
sudo pacman -S starship
```

### 2. Configure your shell

**zsh** — add to `~/.zshrc`:

```zsh
eval "$(starship init zsh)"
```

**bash** — add to `~/.bashrc`:

```bash
eval "$(starship init bash)"
```

**fish** — add to `~/.config/fish/config.fish`:

```fish
starship init fish | source
```

### 3. Apply the config

Symlink or copy the config to your Starship config location:

```bash
# Option A: Symlink (recommended)
ln -s ~/dotfiles/starship/starship.toml ~/.config/starship.toml

# Option B: Copy
cp ~/dotfiles/starship/starship.toml ~/.config/starship.toml
```

---

## Color Palette

Uses [Catppuccin Mocha](https://github.com/catppuccin/catppuccin) theme:

```
rosewater  #f5e0dc    flamingo  #f2cdcd    pink      #f5c2e7
mauve      #cba6f7    red      #f38ba8    maroon    #eba0ac
peach      #fab387    yellow   #f9e2af    green     #a6e3a1
teal       #94e2d5    sky      #89dceb    sapphire  #74c7ec
blue       #89b4fa    lavender #b4befe    overlay0  #6c7086
```

---

## starship.toml Structure

```
starship.toml
├── format / right_format    # Prompt layout
├── palette                  # Color palette reference
├── username / hostname     # SSH-only user & host display
├── directory               # Path display + icon substitutions
├── git_branch/status/commit/state/metrics
├── c / rust / golang / nodejs / python / conda / docker_context / jobs
├── time / cmd_duration / status / character
└── character               # Prompt symbols (vim modes)
```
