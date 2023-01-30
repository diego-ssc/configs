#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

autorandr --load first &

#discord --ignore-gpu-blocklist --diable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy &
#steam -silent &
#sudo ldm -d -u diego &
xinput set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Accel Speed' 0.42 &
xrandr --dpi 142 &
nvidia-settings --load-config-only &

exec xmonad
