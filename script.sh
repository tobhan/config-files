#!/bin/bash
IMAGE=/tmp/screen.png
ICON=/home/tobias/Pictures/1465911224_unlocked.png
scrot $IMAGE 
convert $IMAGE -scale 10% -scale 1000% $IMAGE
[[ -f $1 ]] && convert $IMAGE $1 -gravity center -composite -matte $IMAGE
convert $IMAGE $ICON -geometry +1200+500 -composite -matte $IMAGE
i3lock -u -i $IMAGE
rm $IMAGE
