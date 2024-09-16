#!/bin/bash

# Same as set_both_wallpapers, but creates a blurred image for login screen first 

echo "Processing $1" | tee $(dirname $0)/run.log

echo "Creating blurred version" | tee -a $(dirname $0)/run.log
blurredpath=/tmp/blurred.jpg
convert $1 -channel RGBA -blur 0x26 $blurredpath

# Set the lock screen wallpaper
sudo $(dirname $0)/change.sh "$blurredpath" 2>&1 | tee -a $(dirname $0)/run.log

# Now let Variety set the desktop wallpaper as usual.
~/.config/variety/scripts/set_wallpaper $@
