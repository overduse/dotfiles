#!/bin/bash

# ==============================================================================
#  Yazi Plugins & Dependencies Installer
# ==============================================================================
#  This script installs all the necessary plugins, themes (flavors), and
#  system dependencies for the custom yazi configuration.
# ==============================================================================

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Helper Functions for Colored Output ---
# Makes the output easier to read.
color_green() {
  echo -e "\033[0;32m$1\033[0m"
}
color_yellow() {
  echo -e "\033[1;33m$1\033[0m"
}

# --- Step 1: Check for Dependencies ---
color_yellow "› Checking for required commands..."

if ! command -v ya &> /dev/null; then
    echo "Error: yazi (the 'ya' command) could not be found."
    echo "Please install yazi first: https://yazi-rs.github.io/docs/installation"
    exit 1
fi

if ! command -v brew &> /dev/null; then
    echo "Error: Homebrew (the 'brew' command) could not be found."
    echo "It is required to install the 'tag' dependency for the mactag plugin."
    echo "Please install Homebrew first: https://brew.sh/"
    exit 1
fi

color_green "✅ All required commands (yazi, brew) are present."
echo

# --- Step 2: Install System Dependencies ---
# The mactag plugin requires the 'tag' command-line tool.
color_yellow "› Installing system dependencies via Homebrew..."
brew update
brew install tag
color_green "✅ System dependency 'tag' is up to date."
echo

# --- Step 3: Install Yazi Plugins ---
color_yellow "› Installing yazi plugins..."

ya pkg add yazi-rs/plugins:git
ya pkg add yazi-rs/plugins:smart-enter
ya pkg add KKV9/compress
ya pkg add yazi-rs/plugins:mactag
ya pkg add ahkohd/eza-preview
ya pkg add dedukun/relative-motions

color_green "✅ All yazi plugins installed."
echo

# --- Step 4: Install Yazi Themes (Flavors) ---
color_yellow "› Installing yazi themes (flavors)..."

ya pkg add yazi-rs/flavors:dracula
ya pkg add Chromium-3-Oxide/everforest-medium
ya pkg add Rolv-Apneseth/starship # This is a yazi theme, not the prompt

color_green "✅ All yazi themes installed."
echo

# --- Final Message ---
color_green "🎉 Success! All yazi plugins, themes, and dependencies are now installed."
echo "Please restart yazi to apply all changes."
