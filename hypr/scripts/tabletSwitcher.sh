#!/bin/bash

# Configuration file path
CONFIG_FILE="$HOME/.config/hypr/HyprLandDEConf/device.conf"

# Display names (replace with your actual display names if different)
DISPLAY1="\$Display1"
DISPLAY2="\$Display2"

# Function to update device configuration using sed (line numbers)
update_device_config() {
  sed -i "
    5s/.*/\tname = xp-pen-pen/
    6s/^[[:space:]]*output =.*/\toutput = $1/
    9s/.*/\tname = xp-pen-eraser/
    10s/^[[:space:]]*output =.*/\toutput = $2/
  " "$CONFIG_FILE"
}

# Function to reload Hyprland configuration
reload_hyprland() {
  hyprctl reload
  echo "Debug: Hyprland reloaded"
}

# Main script logic
case "$1" in
1) # Pen on Display1, Eraser on Display2
  update_device_config "$DISPLAY1" "$DISPLAY2"
  echo "Tablet configuration set: Pen on Display1, Eraser on Display2"
  ;;
2)                           # Pen on both, Eraser on both
  update_device_config "" "" #empty output means all.
  echo "Tablet configuration set: Pen and Eraser on both displays"
  ;;
3) # Pen on Display1, Eraser on Display1
  update_device_config "$DISPLAY1" "$DISPLAY1"
  echo "Tablet configuration set: Pen and Eraser on Display1"
  ;;
*)
  echo "Usage: $0 [1|2|3]"
  echo "  1: Pen on Display1, Eraser on Display2"
  echo "  2: Pen and Eraser on both displays"
  echo "  3: Pen and Eraser on Display1"
  exit 1
  ;;
esac

reload_hyprland

exit 0
