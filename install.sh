#!/bin/bash

set -e # stop the script if any command fails

echo "==> installing official repo packages..."

sudo pacman -S --needed --noconfirm \
  stow \
  alacritty \
  neovim \
  btop \
  flameshot \
  rofi \
  niri \
  vlc \
  gparted \
  zen-browser-bin \
  brave-bin \
  paru \
  yay \
  vesktop \
  flatpak \
  nautilus \
  zsh \
  zsh-autosuggestions \
  zsh-syntax-highlighting \
  tmux

echo "==> installing aur packages..."

paru -S --needed zsh-theme-powerlevel10k-git ttf-meslo-nerd-font-powerlevel10k

# uncomment and adjust if noctalia is aur-only on your system
paru -S --needed --noconfirm noctalia

echo "==> stowing dotfiles..."
cd "$(dirname "$0")"
stow zsh alacritty tmux git

echo "==> done! restart your shell or log out/in to see everything take effect."
