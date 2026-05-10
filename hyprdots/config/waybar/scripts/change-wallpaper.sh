#!/usr/bin/bash

TARGET="$HOME/Pictures/Wallpaper"
WALLPAPER=$(find "$TARGET" -type f -regex '.*\.\(jpg\|jpeg\|png\|webp\)' | shuf -n 1)

awww img -t grow --transition-duration 2 "$WALLPAPER"
