#!/bin/bash

# Gets the current desktop wallpaper, converts it to a normal path, then runs the change script. 

current_wallpaper_uri=$(gsettings get org.gnome.desktop.background picture-uri | sed "s/'//g")
current_wallpaper_path=$(python3 -c "import sys;from urllib.parse import unquote, urlparse; print(unquote(urlparse(sys.argv[1]).path))" "$current_wallpaper_uri")
sudo ./change.sh "$current_wallpaper_path"
