#!/bin/bash

# Error handling
set -e

# Prompt user for dark mode
echo
echo -ne "${YELLOW}Apply dark mode for GTK apps? [Y]: ${NC}"
read -r apply_dark_mode < /dev/tty
echo
apply_dark_mode=${apply_dark_mode:-Y}

# Check if user wants to apply dark mode
if [[ "$apply_dark_mode" =~ ^[Yy]$ ]]; then

  # Update repository and install packages
  sudo apt update -y
  sudo apt install -y \
    gnome-themes-extra

  # Set dark theme for GTK apps
  mkdir -p ~/.config/gtk-3.0
  cat > ~/.config/gtk-3.0/settings.ini <<_EOF_
[Settings]
gtk-theme-name=Adwaita-dark
_EOF_
fi