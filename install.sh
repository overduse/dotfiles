#!/bin/zsh
# ---
# Dotfiles Installation Script
# ---

# Step 1: Define absolute path of dotfiles
DOTFILES_DIR="$HOME/dotfiles"

# Check the existence of dotfile directory
if [ ! -d "$DOTFILES_DIR" ]; then
  echo "Error: Dotfiles directory not found at $DOTFILES_DIR"
  echo "Please clone the repository first: git clone <repo_url> $DOTFILES_DIR"
  exit 1
fi

echo "Dotfiles directory located at: $DOTFILES_DIR"
echo "Starting to link configuration files..."

# Step 2: Define files list to link
declare -A files_to_link=(
  ["$DOTFILES_DIR/zsh/.zprofile"]="$HOME/.zprofile"
  ["$DOTFILES_DIR/zsh/.zshrc"]="$HOME/.zshrc"
  ["$DOTFILES_DIR/zsh/.alias"]="$HOME/.alias"
  ["$DOTFILES_DIR/zsh/.zimrc"]="$HOME/.zimrc"
  # ["$DOTFILES_DIR/git/.gitconfig"]="$HOME/.gitconfig"
  # ["$DOTFILES_DIR/nvim"]="$HOME/.config/nvim"
)

# Step 3: traverse symbolic link
for source_file in "${(@)files_to_link}"; do
  destination_file="${files_to_link[$source_file]}"
  echo "Linking $source_file -> $destination_file"
  ln -sf "$source_file" "$destination_file"
done

echo ""
echo "✅ Dotfiles installation complete!"
echo "Please restart your terminal or run 'source ~/.zshrc' to apply the changes."
