export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11

xrandr --output DP-2 --auto --output DP-4 --auto --right-of DP-2

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

export TERM=urxvt

xinput set-prop "Logitech MX518 Gaming Mouse" "libinput Accel Profile Enabled" 0, 1

# 4k
xinput set-prop "Logitech MX518 Gaming Mouse" "libinput Accel Speed" -0.4

# 1080p
# xinput set-prop "Logitech MX518 Gaming Mouse" "libinput Accel Speed" -0.65

sh ~/.config/polybar/launch.sh

exec bspwm

picom -cb

# flameshot &

# hsetroot -solid "$(xrdb -query | grep "*.background" | cut -f 2)"

