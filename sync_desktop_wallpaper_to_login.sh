current_wallpaper_uri=$(gsettings get org.gnome.desktop.background picture-uri | sed "s/'//g")
current_wallpaper_path=$(python3 -c "import sys;from urllib.parse import unquote, urlparse; print(unquote(urlparse(sys.argv[1]).path))" "$current_wallpaper_uri")
blurredpath=/tmp/blurred.jpg
convert $current_wallpaper_path -channel RGBA -blur 0x26 $blurredpath
sudo ./change.sh "$blurredpath"
