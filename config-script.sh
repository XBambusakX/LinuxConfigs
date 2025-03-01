#!/bin/bash
#creates ~/.config directory if it doesn't exist, and copies the alacritty configuration files to it
mkdir -p ~/.config/
cp ./alacritty/ ~/.config/alacritty/ -r
echo "Alacritty configuration installed."

#copies the wofi configuration files to the ~/.config directory
cp ./wofi ~/.config/wofi -r
echo "Wofi configuration installed."
