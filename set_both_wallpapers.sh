#!/bin/bash

# To be called from Variety config. First call the normal change.sh which sets the login wallpaper. 
# Then call variety's normal set_wallpaper script. 

echo "Processing $1" | tee $(dirname $0)/run.log

# Set the lock screen wallpaper
sudo $(dirname $0)/change.sh "$1" 2>&1 | tee -a $(dirname $0)/run.log

# Now let Variety set the desktop wallpaper as usual.
~/.config/variety/scripts/set_wallpaper $@
