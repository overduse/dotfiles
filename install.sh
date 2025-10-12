#!/bin/zsh

# Step 0: Define Colors for Output
# ---------------------------------
C_RESET='\033[0m'       # Reset
C_BOLD='\033[1m'        # Bold
C_GREEN='\033[0;32m'    # Green
C_YELLOW='\033[0;33m'   # Yellow
C_BLUE='\033[0;34m'     # Blue
C_CYAN='\033[0;36m'     # Cyan

# Step 1: Define absolute path of dotfiles
# ---------------------------------
DOTFILES_DIR="$HOME/dotfiles"

# Check the existence of dotfile directory
if [ ! -d "$DOTFILES_DIR" ]; then
  printf "${C_RED}Error: Dotfiles directory not found at %s${C_RESET}\n" "$DOTFILES_DIR"
  printf "Please clone the repository first: git clone <repo_url> %s\n" "$DOTFILES_DIR"
  exit 1
fi

printf "${C_YELLOW}Dotfiles directory located at: %s${C_RESET}\n" "$DOTFILES_DIR"
printf "${C_YELLOW}Starting to link configuration files...${C_RESET}\n\n"

# Step 2: Define files list to link
# ---------------------------------
declare -A files_to_link=(
  ["$DOTFILES_DIR/zsh/zprofile.zsh"]="$HOME/.zprofile"
  ["$DOTFILES_DIR/zsh/zshrc.zsh"]="$HOME/.zshrc"
  ["$DOTFILES_DIR/zsh/alias.zsh"]="$HOME/.alias"
  ["$DOTFILES_DIR/zsh/zimrc.zsh"]="$HOME/.zimrc"
  ["$DOTFILES_DIR/lazygit/config.yml"]="$HOME/.config/lazygit/config.yml"
  ["$DOTFILES_DIR/tmux/tmux.conf"]="$HOME/.config/tmux/tmux.conf"
  # ["$DOTFILES_DIR/git/.gitconfig"]="$HOME/.gitconfig"
  # ["$DOTFILES_DIR/nvim"]="$HOME/.config/nvim"
)

# Step 3: Traverse symbolic link
# ---------------------------------
# Using "${(@k)files_to_link}" to correctly iterate over Zsh associative array keys.
for source_file in "${(@k)files_to_link}"; do
  destination_file="${files_to_link[$source_file]}"

  # Ensure the destination directory exists
  mkdir -p "$(dirname "$destination_file")"

  # Use printf for formatted and colored output
  printf ${C_GREEN}"Linking${C_RESET} ${C_BLUE}%s${C_RESET} ${C_GREEN}➔${C_RESET} ${C_BLUE}%s${C_RESET}\n" "$source_file" "$destination_file"
  ln -sf "$source_file" "$destination_file"
done

printf "\n${C_BOLD}${C_GREEN}  Dotfiles installation complete!${C_RESET}\n"
printf "${C_YELLOW}Please restart your terminal or run 'source ~/.zshrc' to apply the changes.${C_RESET}\n"
