#!/usr/bin/bash
# Toggle caffeine mode — pause/resume hypridle

PID_FILE="/tmp/hypr-caffeine.pid"

if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    kill $PID 2>/dev/null
    rm "$PID_FILE"
    notify-send "Caffeine" "OFF — screen will auto-lock"
else
    (
        while true; do
            hyprctl dispatch dpms on
            sleep 60
        done
    ) &
    echo $! > "$PID_FILE"
    notify-send "Caffeine" "ON — screen won't sleep"
fi
