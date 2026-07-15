#!/bin/bash

set -e  # stop the script if any command fails

echo "==> Installing official repo packages..."

sudo pacman -S --needed --noconfirm \
    stow \
    alacritty \
    kitty \
    neovim \
    btop \
    flameshot \
    rofi \
    niri \
    vlc \
    gparted \
    nautilus

echo "==> Installing AUR packages..."

paru -S --needed --noconfirm \
    zen-browser-bin \
    brave-bin

# Uncomment and adjust if noctalia is AUR-only on your system
# paru -S --needed --noconfirm noctalia

echo "==> Stowing dotfiles..."
cd "$(dirname "$0")"
stow .

echo "==> Done! Restart your shell or log out/in to see everything take effect."
