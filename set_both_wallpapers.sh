#!/bin/bash 
echo "Processing $1" | tee /home/mendhak/Projects/change-login-background/run.log

echo "Creating blurred version" | tee -a /home/mendhak/Projects/change-login-background/run.log
blurredpath=/tmp/blurred.jpg
convert $1 -channel RGBA -blur 0x26 $blurredpath

# Set the lock screen wallpaper
sudo /home/mendhak/Projects/change-login-background/change.sh "$blurredpath" 2>&1 | tee -a /home/mendhak/Projects/change-login-background/run.log

# Now let Variety set the desktop wallpaper as usual.
~/.config/variety/scripts/set_wallpaper $@
