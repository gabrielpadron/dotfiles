setxkbmap -model abnt2 -layout br -variant abnt2
systemctl --user import-environment DISPLAY

picom --config /home/padron/.config/picom/picom.conf -b --experimental-backends  &

exec i3
