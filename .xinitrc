#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#### Third monitor
# xrandr --dpi 120 --auto --output DP-0 --primary --mode 1920x1080 --pos 0x0 --rate 144 --output HDMI-0 --mode 1920x1080 --right-of DP-0 --rate 75 &
xrandr --dpi 120 --auto --output HDMI-0 --primary --mode 1920x1080 --pos 0x0 --rate 75 --output DP-0 --mode 1920x1080 --left-of HDMI-0 --rate 144 &
# xrandr --dpi 120 --auto --output HDMI-0 --primary --mode 1920x1080 --pos 0x0 --rate 75 --output DP-0 --mode 1920x1080 --right-of HDMI-0 --rate 75 &

# xrandr --dpi 120 --auto --output DP-0 --primary --mode 1920x1080 --pos 0x0 --rate 144 --output HDMI-0 --mode 1920x1080 --right-of DP-0 --rate 75 --output DVI-D-0 --same-as DP-0 &

# 142

# Mouse acceleration speed.
xinput set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Accel Speed' 0.42 &

# Nvidia.
nvidia-settings --load-config-only &

# Emacs Server.
emacs --daemon &

# Mail client.
# thunderbird &

# Center on first monitor.
# 1080/2 = 540
# 1920/2 = 960
xdotool mousemove 960 540 &

# NUM key toggled
numlockx &

# Wallpaper
# Command: feh --bg-fill ~/Downloads/wallpapers/pexels-eberhard-grossgasteiger-1287075.jpg ~/Downloads/wallpapers/pexels-eberhard-grossgasteiger-1287075.jpg ~/Downloads/wallpapers/trees-gf45eec20f_1920.jpg
~/.fehbg &

### DWM
while xsetroot -name "`date +"%H : %M : %S"` ; `date +"%b  %d"`    |    `amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/'` %   "
do
 sleep 1
done &

# MIDI audio
# fluidsynth -a pulseaudio ~/midi/gm.sf2 &

## For debugging
# exec dwm >> ~/.dwm.log 2>&1
exec dwm

#### XMonad
# exec xmonad
