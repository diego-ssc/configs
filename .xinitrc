#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

xrandr --dpi 120 --auto --output DP-0 --primary --mode 1920x1080 --pos 0x0 --rate 144 --output HDMI-0 --mode 1920x1080 --right-of DP-0 --rate 75 --output DVI-D-0 --mode 1920x1080 --right-of HDMI-0 --rate 60 &

#discord --ignore-gpu-blocklist --diable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy &
#steam -silent &
#sudo ldm -d -u diego &
xinput set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Accel Speed' 0.42 &
xrandr --dpi 142 &
nvidia-settings --load-config-only &

exec xmonad
