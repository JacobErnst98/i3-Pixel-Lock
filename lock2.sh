#!/bin/bash

#Dependencies
# -i3lock
# -Scrot
# -Imagmagick

LOCK=/tmp/pixellock.png
#Uncomment one of the next 3 lines for diffrent pixelation types.
###
#SCALE1="10%" SCALE2="1000%"
SCALE1="20%" SCALE2="500%"
#SCALE1="40%" SCALE2="250%"
###
SNAPSHOT="scrot $LOCK"

$SNAPSHOT
convert $LOCK -scale $SCALE1 -scale $SCALE2 $LOCK
i3lock -i $LOCK
rm $LOCK
