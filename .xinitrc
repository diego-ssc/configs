#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# New monitors
# xrandr --dpi 96 --auto --output DP-3 --primary --mode 2560x1440 --pos 0x0 --rate 180 --output HDMI-1 --mode 1920x1080 --rate 75 --right-of DP-3 &
xrandr --dpi 96 --auto --output DP-3 --primary --mode 2560x1440 --pos 0x0 --rate 180.00 --output HDMI-1 --mode 1920x1080 --rate 75 --right-of DP-3 &



# Old monitors
# xrandr --dpi 120 --auto  --output DP-0 --mode 1920x1080 --left-of HDMI-0 --rate 144 &

# xrandr --dpi 120 --auto --output DP-0 --primary --mode 1920x1080 --pos 0x0 --rate 144 --output HDMI-0 --mode 1920x1080 --right-of DP-0 --rate 75 &
# xrandr --dpi 120 --auto --output HDMI-0 --primary --mode 1920x1080 --pos 0x0 --rate 75 --output DP-0 --mode 1920x1080 --right-of HDMI-0 --rate 75 &
# xrandr --dpi 120 --auto --output DP-0 --primary --mode 1920x1080 --pos 0x0 --rate 144 --output HDMI-0 --mode 1920x1080 --right-of DP-0 --rate 75 --output DVI-D-0 --same-as DP-0 &


# 142

# Mouse acceleration speed.
xinput set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Accel Speed' 0.42 &

# Nvidia.
# nvidia-settings --load-config-only &

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
# Command: feh --bg-fill ~/Documentos/wallpapers/pexels-eberhard-grossgasteiger-1287075.jpg
~/.fehbg &

# Mouse config
export LAMBDA_MOUSE=$(ratbagctl list | cut -d ":" -f 1 | head -n 1)

ratbagctl "$LAMBDA_MOUSE" profile 0 set-active
ratbagctl "$LAMBDA_MOUSE" profile 0 button 4 action set key KEY_1
ratbagctl "$LAMBDA_MOUSE" profile 0 button 5 action set key KEY_2
ratbagctl "$LAMBDA_MOUSE" profile 0 button 9 action set key KEY_3
ratbagctl "$LAMBDA_MOUSE" pro1file 0 button 3 action set key KEY_4
ratbagctl "$LAMBDA_MOUSE" profile 0 button 10 action set key KEY_5
ratbagctl "$LAMBDA_MOUSE" profile 0 dpi set 1600
ratbagctl "$LAMBDA_MOUSE" info | grep -E "Button: (3|4|5|9|10) is mapped"

setxkbmap -layout us -option compose:ralt

# Chinese pinyin setup
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx
# fcitx5 -d &

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
