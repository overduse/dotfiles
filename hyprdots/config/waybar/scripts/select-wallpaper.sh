#!/usr/bin/env bash

TARGET_DIR="${WALLPAPER_DIR:-$HOME/Pictures/Wallpaper}"

TEMP_FILE=$(mktemp)
yazi --chooser-file "$TEMP_FILE" "$TARGET_DIR"

WALLPAPER=$(cat "$TEMP_FILE")
rm "$TEMP_FILE"

if [[ -z "$WALLPAPER" || ! -f "$WALLPAPER" ]]; then
  echo "No wallpaper selected. Exiting."
  exit 0
fi

awww img "$WALLPAPER"
notify-send "Wallpaper" "Changed to: $(basename "$WALLPAPER")"
