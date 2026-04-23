# Zsh Configuration

Zsh configuration managed by [ZimFW](https://zimfw.sh/).

## File Breakdown

- `zprofile.zsh`
  Loaded **once on login**. Sets session-wide environment variables (e.g., `$PATH` via Homebrew, other variables from `env.zsh`).

- `zshrc.zsh`
  Loaded for **every new interactive shell**. Configures the user experience (prompt, plugins, aliases, functions, keybindings).

- `zimrc.zsh`
  The ZimFW configuration file. Lists all plugins and modules to be loaded.

- `env.zsh`
  Central place for defining all environment variables (`export KEY=value`).

- `alias.zsh`
  Contains all custom shell aliases.

- `fzf.zsh`
  The self-contained script from fzf to ensure consistent keybindings and completion across different systems.

- `local.zsh`
  Machine-local configuration — **git-ignored**.

## Installation

Run the `install.sh` script:

```bash
./install.sh
```

**How it Works**

The installation script creates **symbolic links** from `$HOME` to files in this repository:

```
~/.zshrc    -> ~/dotfiles/zsh/zshrc.zsh
~/.zprofile -> ~/dotfiles/zsh/zprofile.zsh
~/.zimrc    -> ~/dotfiles/zsh/zimrc.zsh
```

## Files

| File | Description |
| :--- | :--- |
| `README.md` | This file |
| `README.zh.md` | Chinese documentation |
| `install.sh` | Symlink installer |
| `env.zsh` | Environment variables |
| `alias.zsh` | Shell aliases |
| `fzf.zsh` | fzf integration |
| `local.zsh` | Local config (git-ignored) |
| `zprofile.zsh` | Login shell config |
| `zshrc.zsh` | Interactive shell config |
| `zimrc.zsh` | ZimFW config |
| `zim/` | ZimFW framework |
