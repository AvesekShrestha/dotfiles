#!/bin/bash

STATE_FILE="/tmp/hdmi_mirror_state"

if [ -f "$STATE_FILE" ]; then
    # Currently mirroring — turn off mirror
    hyprctl keyword monitor "HDMI-A-1,preferred,auto,1"
    rm "$STATE_FILE"
else
    # Not mirroring — enable mirror
    hyprctl keyword monitor "HDMI-A-1,preferred,auto,1,mirror,eDP-1"
    touch "$STATE_FILE"
fi
