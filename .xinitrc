setxkbmap -model abnt2 -layout br -variant abnt2
systemctl --user import-environment DISPLAY

picom --config /home/padron/.config/picom/picom.conf -b --experimental-backends  &
xrandr --output HDMI-A-0 --primary --mode 1366x768 --pos 1366x0 --rotate normal --output eDP --mode 1366x768 --pos 0x0 --rotate normal --output DisplayPort-0 --off &

exec i3
