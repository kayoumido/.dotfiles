#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar top -c ~/.config/polybar/config.ini &

# if second screen is active, lauch second bar
if [[ $(xrandr --query | grep 'HDMI1 connected') ]]; then
    polybar top_dualscreen -c ~/.config/polybar/config.ini &
fi