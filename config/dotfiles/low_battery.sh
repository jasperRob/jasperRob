#!/bin/bash

# Set the low battery threshold
THRESHOLD=15

# Get the battery percentage
BATTERY_LEVEL=$(acpi -b | grep -P -o '[0-9]+(?=%)')

# Define the display variable (check with `echo $DISPLAY` in a terminal)
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

# Check if the battery is discharging and below threshold
if acpi -b | grep -q "Discharging" && [ "$BATTERY_LEVEL" -le "$THRESHOLD" ]; then
  notify-send -u critical "Low Battery" "Battery level is at ${BATTERY_LEVEL}%"
fi
