#!/bin/bash

STATE_FILE="/tmp/touchpad_state"
DEVICE="dell0a25:00-06cb:cdd6-touchpad"

# Default to enabled if no state file exists
if [ ! -f "$STATE_FILE" ]; then
    echo "enabled" >"$STATE_FILE"
fi

CURRENT=$(cat "$STATE_FILE")

if [ "$1" = "toggle" ]; then
    if [ "$CURRENT" = "enabled" ]; then
        hyprctl keyword device[$DEVICE]:enabled false
        echo "disabled" >"$STATE_FILE"
        CURRENT="disabled"
    else
        hyprctl keyword device[$DEVICE]:enabled true
        echo "enabled" >"$STATE_FILE"
        CURRENT="enabled"
    fi
fi

if [ "$CURRENT" = "enabled" ]; then
    echo '{"text": "󰟸", "tooltip": "Touchpad: ON\nClick to disable", "class": "enabled"}'
else
    echo '{"text": "󰤳", "tooltip": "Touchpad: OFF\nClick to enable", "class": "disabled"}'
fi
