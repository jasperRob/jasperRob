#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar with the specified configuration file
CONFIG="$HOME/.config/polybar/config.ini"

if [[ -f $CONFIG ]]; then
	polybar -c $CONFIG mybar &
	echo "Polybar launched using config: $CONFIG"
else
	echo "Configuration file not found at $CONFIG"
	exit 1
fi
