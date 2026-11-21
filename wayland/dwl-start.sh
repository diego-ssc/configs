#!/bin/sh

export XDG_CURRENT_DESKTOP=dwl
export XDG_SESSION_TYPE=wayland
export MOZ_ENABLE_WAYLAND=1
export ELECTRON_OZONE_PLATFORM_HINT=auto
export QT_QPA_PLATFORM=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"
# Direct scanout for fullscreen VRR gaming
export WLR_SCENE_DISABLE_DIRECT_SCANOUT=0

export LAMBDA_MOUSE=$(ratbagctl list 2>/dev/null | grep ":" | cut -d ":" -f 1 | head -n 1)
(
    if [ -n "$LAMBDA_MOUSE" ]; then
        ratbagctl "$LAMBDA_MOUSE" profile active set 0
        ratbagctl "$LAMBDA_MOUSE" profile 0 resolution active set 0
        ratbagctl "$LAMBDA_MOUSE" profile 0 button 4 action set key KEY_1
        ratbagctl "$LAMBDA_MOUSE" profile 0 button 5 action set key KEY_2
        ratbagctl "$LAMBDA_MOUSE" profile 0 button 9 action set key KEY_3
        ratbagctl "$LAMBDA_MOUSE" profile 0 button 3 action set key KEY_4
        ratbagctl "$LAMBDA_MOUSE" profile 0 button 10 action set key KEY_5
        ratbagctl "$LAMBDA_MOUSE" profile 0 dpi set 800
    fi
) >/dev/null 2>&1 &

while true; do
    vol=$(pactl get-sink-volume @DEFAULT_SINK@ 2>/dev/null | grep -oP '\d+(?=%)' | head -n 1)
    mute=$(pactl get-sink-mute @DEFAULT_SINK@ 2>/dev/null | awk '{print $2}')
    if [ "$mute" = "yes" ]; then
        vol_str="MUTED"
    elif [ -n "$vol" ]; then
        vol_str="${vol} %"
    else
        vol_str="-- %"
    fi
    printf "%s ; %s    |    %s   \n" "$(date +"%H : %M : %S")" "$(date +"%b  %d")" "$vol_str" || break
    sleep 1
done | exec dwl -s "xrdb -merge \"$HOME/.Xresources\" & swaybg -i \"$HOME/Documentos/wallpapers/pexels-eberhard-grossgasteiger-1287075.jpg\" -m fill & pgrep -x emacs >/dev/null || emacs --daemon &"
