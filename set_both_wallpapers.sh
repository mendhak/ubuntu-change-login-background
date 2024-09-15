#!/bin/bash

echo "Processing $1" | tee $(dirname $0)/run.log

# Set the lock screen wallpaper
sudo $(dirname $0)/change.sh "$1" 2>&1 | tee -a $(dirname $0)/run.log

# Now let Variety set the desktop wallpaper as usual.
~/.config/variety/scripts/set_wallpaper $@
