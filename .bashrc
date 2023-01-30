#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias discord='discord --ignore-gpu-blocklist --diable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy'

alias google-chrome-stable='google-chrome-stable --use-angle=swiftshader'

alias atom='atom --no-sandbox'

alias sioyek='sioyek --new-instance'

# set an ad-hoc GUI timer
timer() {
  local N=$1; shift

  (sleep $N && zenity --info --title="Time's Up" --text="${*:-BING}") &
  echo "timer set for $N"
}
