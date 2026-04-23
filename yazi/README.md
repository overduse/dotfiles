# Yazi Configuration

This directory contains all configuration files for the [Yazi](https://github.com/sxyazi/yazi) file manager.

## Plugins & Theme Installation

To install all plugins, themes, and system dependencies (e.g. `tag` on macOS), run the installer script from within this directory:

```bash
./install.sh
```

## Files

| File | Description |
| :--- | :--- |
| `yazi.toml` | Main configuration |
| `keymap.toml` | Keybindings |
| `package.toml` | Plugin list |
| `theme.toml` | Flavor/theme |
| `init.lua` | Yazi init script |
| `install.sh` | Plugin/theme installer |
| `flavors/` | Color flavors |
| `plugins/` | Plugin directory |
| `README.md` | This file |
| `README.zh.md` | Chinese documentation |

## Key Features

- **smart-enter**: `l` enters dir or opens file
- **compress**: `c a a/p/h/l/u/7/r` — archive with various options
- **eza-preview**: `e t/-/_/$/*/g i/g s` — tree/list preview with toggles
- **VS Code**: `E` opens current dir in VS Code
- **Dracula flavor** (dark theme)

## Keybindings

### Navigation

| Key | Action |
| :--- | :--- |
| `j/k` or `↑↓` | Move cursor up/down |
| `g g` | Go to top |
| `G` | Go to bottom |
| `h` or `←` | Go to parent directory |
| `l` or `→` | Enter child directory |
| `H` | Back to previous directory |
| `L` | Forward |
| `C-d/u` | Half page down/up |
| `C-b/f` | Full page down/up |

### File Operations

| Key | Action |
| :--- | :--- |
| `<Space>` | Toggle selection |
| `v` | Enter visual mode |
| `y` | Yank (copy) |
| `x` | Yank (cut) |
| `p` | Paste |
| `d` | Trash file |
| `D` | Delete permanently |
| `a` | Create file/directory |
| `r` | Rename |
| `o` or `Enter` | Open file |
| `-` | Symlink absolute path |
| `_` | Symlink relative path |

### Search & Filter

| Key | Action |
| :--- | :--- |
| `/` | Find next |
| `?` | Find previous |
| `n/N` | Next/previous found |
| `f` | Smart filter |
| `s` | Search by name (`fd`) |
| `S` | Search by content (`rg`) |
| `.` | Toggle hidden files |

### Sorting

| Key | Action |
| :--- | :--- |
| `, m/M` | Sort by mtime |
| `, b/B` | Sort by btime |
| `, e/E` | Sort by extension |
| `, a/A` | Sort alphabetically |
| `, n/N` | Sort naturally |
| `, s/S` | Sort by size |

### Goto

| Key | Action |
| :--- | :--- |
| `g h` | Go home |
| `g c` | Go `~/.config` |
| `g d` | Go `~/Downloads` |
| `g <Space>` | Jump interactively |
| `Z` | Jump via fzf |
| `z` | Jump via zoxide |

### Tabs

| Key | Action |
| :--- | :--- |
| `t` | Create new tab |
| `1-9` | Switch to tab N |
| `[` / `]` | Previous/next tab |
| `{` / `}` | Swap with prev/next tab |

### Custom (from prepend_keymap)

| Key | Action |
| :--- | :--- |
| `l` | Enter dir or open file |
| `c a a` | Archive files |
| `c a p` | Archive with password |
| `c a h` | Archive with password + header |
| `c a u` | Archive with password + header + level |
| `e t` | Toggle tree/list preview |
| `E` | Open in VS Code |
