#!/bin/bash

echo "Enabling optimal Arch Linux font rendering symlinks..."
sudo ln -sf /usr/share/fontconfig/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d/
sudo ln -sf /usr/share/fontconfig/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d/
sudo ln -sf /usr/share/fontconfig/conf.avail/10-hinting-slight.conf /etc/fonts/conf.d/

echo "Rebuilding font cache..."
fc-cache -fv

echo "Done. Please restart your X session."

echo "Setting up time synchronization..."
sudo timedatectl set-ntp true
echo "Done."
