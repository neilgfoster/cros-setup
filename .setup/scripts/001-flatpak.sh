#!/bin/bash

# Error handling
set -e

# Install flatpak and flathub
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo