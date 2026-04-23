#!/bin/bash
# Yazi Plugins & Dependencies Installer

set -e

# --- Helper Functions for Colored Output ---
color_green() {
  echo -e "\033[0;32m$1\033[0m"
}
color_yellow() {
  echo -e "\033[1;33m$1\033[0m"
}

echo "🚀 Starting Yazi setup..."

# --- Step 1: Ensure Configuration is Linked ---
CONFIG_TARGET_DIR="$HOME/.config/yazi"
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

color_yellow "› Ensuring configuration is linked correctly..."
mkdir -p "$(dirname "$CONFIG_TARGET_DIR")"
ln -snf "$SCRIPT_DIR" "$CONFIG_TARGET_DIR"
color_green "  ✅ Symlink is correct: $CONFIG_TARGET_DIR -> $SCRIPT_DIR"

# --- Step 2: Check for Dependencies ---
color_yellow "› Checking for required commands..."
if ! command -v ya &> /dev/null; then
    echo "  Error: yazi (the 'ya' command) could not be found." >&2
    echo "  Please install yazi first: https://yazi-rs.github.io/docs/installation" >&2
    exit 1
fi
color_green "  ✅ Yazi (ya) is installed."

# --- Step 3: Install macOS-specific Dependencies ---
if [[ "$(uname)" == "Darwin" ]]; then
  color_yellow "› Running on macOS. Checking for Homebrew..."
  if ! command -v brew &> /dev/null; then
      echo "  Warning: Homebrew not found."
  else
      color_green "  ✅ Homebrew is available."
  fi
fi

# --- Step 4: Install Yazi Plugins ---
color_yellow "› Installing yazi plugins..."
ya pkg add yazi-rs/plugins:git
ya pkg add yazi-rs/plugins:smart-enter
ya pkg add KKV9/compress
ya pkg add ahkohd/eza-preview
ya pkg add dedukun/relative-motions
color_green "  ✅ Yazi plugins installed."

# --- Step 5: Install Yazi Themes (Flavors) ---
color_yellow "› Installing yazi themes..."
ya pkg add yazi-rs/flavors:dracula
ya pkg add Rolv-Apneseth/starship
color_green "  ✅ Yazi themes installed."

echo
color_green "🎉 Success! Yazi setup is complete. Please restart yazi to apply changes."
