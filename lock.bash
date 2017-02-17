#!/bin/bash

#Dependencies
# -i3lock
# -Scrot
# -Imagmagick
BLUR=$1
LOCK=/tmp/pixellock.png

if [ $BLUR -ge 0 ] || [ $BLUR -ge 1 ] ; then
SCALE1="10%" SCALE2="1000%"
elif [ $BLUR -ge 2 ] ; then
SCALE1="20%" SCALE2="500%"
elif [ $BLUR -ge 3 ]; then
SCALE1="40%" SCALE2="250%"
fi

SNAPSHOT="scrot $LOCK"

$SNAPSHOT
convert $LOCK -scale $SCALE1 -scale $SCALE2 $LOCK
i3lock -i $LOCK
rm $LOCK
