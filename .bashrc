# ly for login

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -n "$WAYLAND_DISPLAY" ]; then
    alias discord='discord --ignore-gpu-blocklist --enable-features=UseOzonePlatform,VaapiVideoDecoder --ozone-platform=wayland --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy'
else
    alias discord='discord --ignore-gpu-blocklist --diable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy'
fi

alias google-chrome-stable='google-chrome-stable --use-angle=swiftshader'

# alias sioyek='sioyek --new-instance'

export PS1="\[$(tput bold)\]\[$(tput setaf 15)\][\[$(tput setaf 15)\]\u\[$(tput setaf 15)\]@\[$(tput setaf 15)\]\h \[$(tput setaf 15)\]\W\[$(tput setaf 15)\]]\[$(tput setaf 15)\]\$ \[$(tput sgr0)\]"

alias video=mplayer
alias list-devices='ratbagctl list'
alias pdf-reader=sioyek
alias ui-start='/home/diego/workplace/configs/wayland/dwl-start.sh'
alias ui-start-x11=startx
alias file-cleaner=getrid
alias iso-burner=balena-etcher

# set an ad-hoc GUI timer
timer() {
  local N=$1; shift

  (sleep $N && zenity --info --title="Time's Up" --text="${*:-BING}") &
  echo "timer set for $N"
}

mime-file-query() {
    xdg-mime query filetype "$1"
}

mime-app-query() {
    xdg-mime query default "$1"
}

mime-set-app() {
    # $1 is the app.desktop and $2 is the mime type
    xdg-mime default "$1" "$2"
}

lambda-audio() {
    if [ -n "$WAYLAND_DISPLAY" ]; then
        alacritty -e alsamixer &
    else
        urxvt -e alsamixer &
    fi
    pavucontrol &
}

lambda-monitors() {
    if [ -n "$WAYLAND_DISPLAY" ]; then
        wlr-randr "$@"
    else
        xrandr "$@"
    fi
}

lambda-error-logs() {
    journalctl -b  -p 3
}

# Total control: Stops both system sleep and screen blanking
alias lambda-nosleep='sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target && if [ -z "$WAYLAND_DISPLAY" ]; then xset s off && xset -dpms; fi'

# Restores default behavior for both
alias lambda-allowsleep='sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target && if [ -z "$WAYLAND_DISPLAY" ]; then xset s on && xset +dpms; fi'


export _JAVA_AWT_WM_NONREPARENTING=1
export FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"


# Added by Antigravity CLI installer
export PATH="/home/diego/.local/bin:$PATH"
