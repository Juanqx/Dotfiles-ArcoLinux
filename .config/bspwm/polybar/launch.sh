#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#polybar -r bar &
#polybar -r bar -c ~/.config/polybar/config.ini &
MONITOR=eDP-1 polybar -r bar -c ~/.config/polybar/config.ini &
MONITOR=HDMI-1 polybar -r bar -c ~/.config/polybar/config.ini &

echo "Polybar launched..."
