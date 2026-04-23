# Dotfiles

Personal development environment configuration managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

```
dotfiles/
├── zsh/          # zsh + Zim framework
├── nvim/         # Neovim (LazyVim-style, modern plugins)
├── tmux/         # tmux configuration
├── starship/     # Cross-shell prompt
├── yazi/         # Terminal file manager
├── Brewfile      # Homebrew package manifest
└── .stow-local-ignore
```

## Prerequisites

```bash
# macOS
xcode-select --install
brew install git stow
```

## Installation

```bash
# Clone dotfiles
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Install Homebrew packages
brew bundle install --file=Brewfile

# Apply symlinks via Stow
stow -vt ~ zsh
stow -vt ~/.config tmux nvim
```

## Packages

| Package | Target | Description |
|---------|--------|-------------|
| `zsh` | `~` | zsh + Zim framework + aliases |
| `tmux` | `~/.config/` | tmux 3.4+ with TPM plugins |
| `nvim` | `~/.config/` | Neovim 0.10+ with LSP, Treesitter, completion |

## Updating

```bash
# Update a package
stow -Rvt ~ zsh

# Sync Homebrew packages
brew bundle dump --file=Brewfile --force

# Commit changes
cd ~/dotfiles
git add .
git commit -m "describe changes"
```

## Neovim Plugins

LSP (pyright, clangd, lua_ls) · Treesitter · Aerial · nvim-ufo · blink.cmp · fzf-lua · neo-tree · noice.nvim · snacks.nvim · trouble.nvim · gitsigns.nvim

## Shell Prompt

Starship with Catppuccin Mocha palette · conda detection · git metrics · background jobs indicator
