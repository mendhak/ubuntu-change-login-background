# copy it to /usr/share/backgrounds 
sudo mkdir -p /usr/share/backgrounds/gdm
sudo cp $1 /usr/share/backgrounds/gdm/gdm-wallpaper
# Tell GDM to use it as a wallpaper
sudo machinectl shell gdm@ /bin/bash -c "gsettings set com.ubuntu.login-screen background-picture-uri 'file:///usr/share/backgrounds/gdm/gdm-wallpaper'; gsettings set com.ubuntu.login-screen background-size 'cover'"
# Display it back, just for troubleshooting
sudo machinectl shell gdm@ /bin/bash -c "gsettings get com.ubuntu.login-screen background-picture-uri; gsettings get com.ubuntu.login-screen background-size"
