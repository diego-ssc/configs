#!/bin/bash

CONFIG_DIR="$(cd "$(dirname "$0")" && pwd)"
SUCKLESS_DIR="$HOME/workplace/suckless"

echo "Installing core packages and fonts..."
sudo pacman -S --needed \
	wlroots0.20 wayland-protocols fcft tllist meson ninja xorg-xwayland \
	alacritty swaybg grim slurp wl-clipboard wlr-randr \
	adobe-source-code-pro-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji \
	ttf-dejavu ttf-liberation

echo "Linking user configuration files..."
mkdir -p ~/.config/alacritty ~/.config/fontconfig ~/.config/gtk-3.0 ~/.emacs.d
ln -sfn "$CONFIG_DIR/.bashrc" ~/.bashrc
ln -sfn "$CONFIG_DIR/.inputrc" ~/.inputrc
ln -sfn "$CONFIG_DIR/init.el" ~/.emacs.d/init.el
ln -sfn "$CONFIG_DIR/spanish-prefix.el" ~/.emacs.d/spanish-prefix.el
ln -sfn "$CONFIG_DIR/Lambda-theme.el" ~/.emacs.d/Lambda-theme.el
ln -sfn "$CONFIG_DIR/gtk.css" ~/.config/gtk-3.0/gtk.css
ln -sfn "$CONFIG_DIR/settings.ini" ~/.config/gtk-3.0/settings.ini
ln -sfn "$CONFIG_DIR/fonts.conf" ~/.config/fontconfig/fonts.conf
ln -sfn "$CONFIG_DIR/wayland/alacritty.toml" ~/.config/alacritty/alacritty.toml
ln -sfn "$CONFIG_DIR/x11/.xinitrc" ~/.xinitrc
ln -sfn "$CONFIG_DIR/x11/.Xresources" ~/.Xresources

echo "Building and installing wmenu and dwl..."
if [ -d "$SUCKLESS_DIR/wmenu" ]; then
	meson setup --reconfigure "$SUCKLESS_DIR/wmenu/build" "$SUCKLESS_DIR/wmenu"
	ninja -C "$SUCKLESS_DIR/wmenu/build"
	sudo ninja -C "$SUCKLESS_DIR/wmenu/build" install
fi
if [ -d "$SUCKLESS_DIR/dwl" ]; then
	make -C "$SUCKLESS_DIR/dwl"
	sudo make -C "$SUCKLESS_DIR/dwl" PREFIX=/usr install
fi

echo "Enabling optimal Arch Linux font rendering symlinks..."
sudo ln -sf /usr/share/fontconfig/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d/
sudo ln -sf /usr/share/fontconfig/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d/
sudo ln -sf /usr/share/fontconfig/conf.avail/10-hinting-slight.conf /etc/fonts/conf.d/
sudo ln -sf /usr/share/fontconfig/conf.avail/70-no-bitmaps-except-emoji.conf /etc/fonts/conf.d/

echo "Configuring GTK font rendering..."
gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'
gsettings set org.gnome.desktop.interface font-hinting 'slight'
gsettings set org.gnome.desktop.interface font-rgba-order 'rgb'

echo "Rebuilding font cache..."
fc-cache -fv

echo "Setting up time synchronization..."
sudo timedatectl set-ntp true
echo "Done."
