#!/bin/zsh

# Step 0: Define Colors for Output
# ---------------------------------
C_RESET='\033[0m'       # Reset
C_BOLD='\033[1m'        # Bold
C_GREEN='\033[0;32m'    # Green
C_YELLOW='\033[0;33m'   # Yellow
C_BLUE='\033[0;34m'     # Blue
C_CYAN='\033[0;36m'     # Cyan
C_RED='\033[0;31m'      # Red

# Step 0b: Detect OS
# ---------------------------------
detect_os() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS_ID="$ID"
    OS_NAME="$NAME"
  else
    OS_ID="unknown"
    OS_NAME="Unknown"
  fi
}

install_packages_arch() {
  local_packages=(
    "kitty"            # Terminal emulator
    "tmux"             # Terminal multiplexer
    "lm_sensors"       # CPU temperature (tmux status bar)
    "playerctl"        # MPRIS media control (tmux status bar)
    "starship"         # Shell prompt
    "ttf-jetbrains-mono"       # Monospace font (kitty, yazi)
    "ttf-jetbrains-mono-nerd"  # Nerd Font variant (icons)
    "vnstat"           # Network traffic monitor (conky scripts)
    "acpi"             # Battery info (conky scripts)
    "lsb-release"      # Distro info (conky scripts)
    "yazi"             # File manager (zsh alias)
    "android-tools"    # ADB for android conky widget
    "grim"             # Screenshot tool (hyprland keybinds)
    "slurp"            # Region selection for screenshots
    "cliphist"         # Clipboard history (hyprland autostart)
    "brightnessctl"    # Backlight/brightness control (hyprland keybinds)
    "network-manager-applet"  # Network manager tray icon
    "blueman"          # Bluetooth manager tray icon
    "python-requests"  # Python lib for weather.py conky widget
    "chafa"            # Image preview in terminal (Wayland compatible)
    "ffmpegthumbnailer" # Video thumbnail preview
    "atool"            # Archive preview for yazi
    "p7zip"            # 7z archive support for yazi archive preview
    "resvg"            # SVG rendering for yazi
    "jq"               # JSON preview for yazi
    "highlight"        # Code syntax highlighting for yazi
  )
  missing=()
  for pkg in "${local_packages[@]}"; do
    if ! pacman -Q "$pkg" &>/dev/null; then
      missing+=("$pkg")
    fi
  done
  if [ ${#missing[@]} -gt 0 ]; then
    printf "${C_YELLOW}Installing missing packages: ${missing[*]}${C_RESET}\n"
    if command -v yay &>/dev/null; then
      yay -S --noconfirm "${missing[@]}"
    elif command -v paru &>/dev/null; then
      paru -S --noconfirm "${missing[@]}"
    elif command -v pacman &>/dev/null; then
      sudo pacman -S --noconfirm "${missing[@]}"
    else
      printf "${C_RED}No package manager found. Please install manually: ${missing[*]}${C_RESET}\n"
    fi
  else
    printf "${C_GREEN}All ricing dependencies already installed.${C_RESET}\n"
  fi
}

install_packages_debian() {
  local_packages=(
    "kitty"           # Terminal emulator
    "tmux"            # Terminal multiplexer
    "lm-sensors"      # CPU temperature (tmux status bar)
    "playerctl"       # MPRIS media control (tmux status bar)
    "starship"        # Shell prompt
    "fonts-jetbrains-mono"  # Monospace font (kitty, yazi)
    "vnstat"           # Network traffic monitor
    "acpi"             # Battery info
    "lsb-release"      # Distro info
    "yazi"             # File manager
    "adb"              # ADB for android conky widget
    "grim"             # Screenshot tool
    "slurp"            # Region selection
    "cliphist"         # Clipboard history
    "brightnessctl"    # Brightness control
    "network-manager-applet"  # Network tray
    "blueman"          # Bluetooth tray
    "python3-requests"  # Python lib for weather.py
  )
  missing=()
  for pkg in "${local_packages[@]}"; do
    if ! dpkg -l "$pkg" &>/dev/null; then
      missing+=("$pkg")
    fi
  done
  if [ ${#missing[@]} -gt 0 ]; then
    printf "${C_YELLOW}Installing missing packages: ${missing[*]}${C_RESET}\n"
    sudo apt install -y "${missing[@]}"
  else
    printf "${C_GREEN}All ricing dependencies already installed.${C_RESET}\n"
  fi
}

# Step 1: Define absolute path of dotfiles
# ---------------------------------
DOTFILES_DIR="$HOME/dotfiles"

# Check the existence of dotfile directory
if [ ! -d "$DOTFILES_DIR" ]; then
  printf "${C_RED}Error: Dotfiles directory not found at %s${C_RESET}\n" "$DOTFILES_DIR"
  printf "Please clone the repository first: git clone <repo_url> %s\n" "$DOTFILES_DIR"
  exit 1
fi

detect_os
printf "${C_YELLOW}Dotfiles directory located at: %s${C_RESET}\n" "$DOTFILES_DIR"
printf "${C_YELLOW}Detected OS: %s${C_RESET}\n" "$OS_NAME"

# Step 1b: Install dependencies based on OS
# ---------------------------------
if [ "$OS_ID" = "arch" ]; then
  install_packages_arch
elif [ "$OS_ID" = "debian" ] || [ "$OS_ID" = "ubuntu" ]; then
  install_packages_debian
else
  printf "${C_YELLOW}Unsupported OS (%s). Skipping package installation.${C_RESET}\n" "$OS_ID"
fi

printf "${C_YELLOW}Starting to link configuration files...${C_RESET}\n\n"

# Step 2: Define files list to link
# ---------------------------------
declare -A files_to_link=(
  ["$DOTFILES_DIR/zsh/zprofile.zsh"]="$HOME/.zprofile"
  ["$DOTFILES_DIR/zsh/zshrc.zsh"]="$HOME/.zshrc"
  ["$DOTFILES_DIR/zsh/alias.zsh"]="$HOME/.alias"
  ["$DOTFILES_DIR/zsh/zimrc.zsh"]="$HOME/.zimrc"
  ["$DOTFILES_DIR/tmux/tmux.conf"]="$HOME/.config/tmux/tmux.conf"
  ["$DOTFILES_DIR/fastfetch/config.jsonc"]="$HOME/.config/fastfetch/config.jsonc"
  ["$DOTFILES_DIR/hypr/hyprland.conf"]="$HOME/.config/hypr/hyprland.conf"
  ["$DOTFILES_DIR/conky/Mainte/main.conkyrc"]="$HOME/.config/conky/main.conkyrc"
  ["$DOTFILES_DIR/conky/Mainte/android.conkyrc"]="$HOME/.config/conky/android.conkyrc"
  ["$DOTFILES_DIR/conky/Mainte/bluetooth.conkyrc"]="$HOME/.config/conky/bluetooth.conkyrc"
  ["$DOTFILES_DIR/conky/Mainte/scripts"]="$HOME/.config/conky/scripts"
  ["$DOTFILES_DIR/conky/scripts/conkyd"]="$HOME/.local/bin/conkyd"
  # ["$DOTFILES_DIR/git/.gitconfig"]="$HOME/.gitconfig"
  ["$DOTFILES_DIR/nvim"]="$HOME/.config/nvim"
  ["$DOTFILES_DIR/yazi"]="$HOME/.config/yazi"
  ["$DOTFILES_DIR/kitty/kitty.conf"]="$HOME/.config/kitty/kitty.conf"
  ["$DOTFILES_DIR/kitty/colors.conf"]="$HOME/.config/kitty/colors.conf"
  ["$DOTFILES_DIR/starship/starship.toml"]="$HOME/.config/starship.toml"
)

# Step 3: Traverse symbolic link
# ---------------------------------
# Using "${(@k)files_to_link}" to correctly iterate over Zsh associative array keys.
for source_file in "${(@k)files_to_link}"; do
  destination_file="${files_to_link[$source_file]}"

  # Ensure the parent directory of destination exists
  mkdir -p "$(dirname "$destination_file")"

  # Use printf for formatted and colored output
  printf ${C_GREEN}"Linking${C_RESET} ${C_BLUE}%s${C_RESET} ${C_GREEN}➔${C_RESET} ${C_BLUE}%s${C_RESET}\n" "$source_file" "$destination_file"
  # Remove existing file or directory symlink before linking
  rm -rf "$destination_file"
  ln -sf "$source_file" "$destination_file"
done

# Step 4: Install yazi plugins
# ---------------------------------
printf "\n${C_YELLOW}Installing yazi plugins...${C_RESET}\n"
yazi_plugins=(
  "yazi-rs/plugins:image"
  "yazi-rs/plugins:video"
  "yazi-rs/plugins:pdf"
  "yazi-rs/plugins:svg"
  "yazi-rs/plugins:archive"
  "yazi-rs/plugins:font"
  "yazi-rs/plugins:json"
  "yazi-rs/plugins:empty"
  "yazi-rs/plugins:mime"
  "yazi-rs/plugins:folder"
)
for plugin in "${yazi_plugins[@]}"; do
  printf "  ${C_BLUE}→${C_RESET} %s\n" "$plugin"
  ya pkg add "$plugin" 2>/dev/null
done

printf "\n${C_BOLD}${C_GREEN}  Dotfiles installation complete!${C_RESET}\n"
printf "${C_YELLOW}Please restart your terminal or run 'source ~/.zshrc' to apply the changes.${C_RESET}\n"
