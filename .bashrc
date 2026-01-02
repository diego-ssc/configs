# ly for login

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias discord='discord --ignore-gpu-blocklist --diable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy'

alias google-chrome-stable='google-chrome-stable --use-angle=swiftshader'

# alias sioyek='sioyek --new-instance'

export PS1="\[$(tput bold)\]\[$(tput setaf 15)\][\[$(tput setaf 15)\]\u\[$(tput setaf 15)\]@\[$(tput setaf 15)\]\h \[$(tput setaf 15)\]\W\[$(tput setaf 15)\]]\[$(tput setaf 15)\]\$ \[$(tput sgr0)\]"

alias video=mplayer
alias mouse=piper
alias list-devices='ratbagctl list'
alias audio=pavucontrol
alias pdf-reader=sioyek
alias ui-start=startx
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

export _JAVA_AWT_WM_NONREPARENTING=1
