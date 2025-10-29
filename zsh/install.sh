#!/bin/bash
# Dotfiles Installation Script
set -e

# --- Variables  Configuration ---
DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"

echo "🚀 Starting dotfiles deployment..."

echo "Ensuring ~/.config directory exists..."
mkdir -p "$CONFIG_DIR"

# Zsh configuration
echo "Linking Zsh configuration files..."
ln -snf "$DOTFILES_DIR/zsh/zprofile.zsh" "$HOME/.zprofile"
ln -snf "$DOTFILES_DIR/zsh/zshrc.zsh" "$HOME/.zshrc"
ln -snf "$DOTFILES_DIR/zsh/zimrc.zsh" "$HOME/.zimrc"

echo "✅ Dotfiles deployed successfully! Please restart your shell."
