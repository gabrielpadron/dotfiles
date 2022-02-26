# img=/tmp/i3lock.png
#
# scrot -o $img
# convert $img -scale 10% -scale 1000% $img
#
# i3lock -u -i $img

IMAGE=/tmp/i3lock.png
LOCK=~/Pictures/lockr.png
SCREENSHOT="scrot $IMAGE"
BLURTYPE="2x8"

$SCREENSHOT
convert $IMAGE -blur $BLURTYPE $IMAGE
convert $IMAGE $LOCK -gravity center -composite $IMAGE
i3lock -i $IMAGE
rm $IMAGE
