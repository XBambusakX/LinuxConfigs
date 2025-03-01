#!/bin/bash

# Create ~/.config directory if it doesn't exist
mkdir -p ~/.config/

# Alacritty configuration
if cp -r ./alacritty/ ~/.config/alacritty/; then
  echo "Alacritty configuration installed."
else
  echo "Error: Failed to install Alacritty configuration."
fi

# Wofi configuration
if cp -r ./wofi ~/.config/wofi/; then
  echo "Wofi configuration installed."
else
  echo "Error: Failed to install Wofi configuration."
fi

# Neovim configuration
if cp -r ./nvim ~/.config/nvim/; then
  echo "Neovim configuration installed."
else
  echo "Error: Failed to install Neovim configuration."
fi

# Hyprland configuration
if mkdir -p ~/.config/hypr && cp -r ./hypr/* ~/.config/hypr/; then
  mkdir -p ~/.icons/
  if mv ~/.config/hypr/GoogleDot-Black/ ~/.icons/; then
    echo "Hyprland configuration installed, change the wallpaper in ~/.config/hypr/hyprpaper.conf"
  else
    echo "Error: Failed to install Hyprland icons."
  fi
  rm -rf ~/.config/hypr/GoogleDot-Black #removes empty folder.
else
  echo "Error: Failed to install Hyprland configuration."
fi

echo "Configuration installation completed."
