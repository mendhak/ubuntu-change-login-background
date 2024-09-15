# Ubuntu change login background on GDM3

Uses built in commands to change the GDM login screen wallpaper on Ubuntu 24.04, without modifying CSS files or resources directly. I think this may work with Ubuntu 22.04 as well. 

These are the sample files for my blog post on [Syncing the login wallpaper with the desktop wallpaper on Ubuntu](https://code.mendhak.com/synchronize-login-wallpaper-ubuntu/). 


## Usage

To set an image as the login screen wallpaper, use:

```bash
sudo ./change.sh ~/Pictures/testwallpaper.jpg
```

To set the current desktop wallpaper as the login screen wallpaper, use:

```bash
sudo ./sync_desktop_wallpaper_to_login.sh 
```


## References

https://bugs.launchpad.net/ubuntu/+source/gnome-shell/+bug/1929536  
https://askubuntu.com/a/1396066/26436  

