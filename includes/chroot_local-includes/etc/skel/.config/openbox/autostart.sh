# Programs to launch at startup
# =============================

# Start session manager
#lxsession &

# Start Bluetooth applet
#bluetooth-applet &

# Enable power management
#gnome-power-manager &
xfce-power-manager &

# Set-up keyboard maps and sytem tray switcher
# tip - quickly toggle between keyboard maps by holding both shift keys!
#setxkbmap -option grp:switch,grp:shifts_toggle,grp_led:scroll es,us,de,fr &
setxkbmap $(cat ~/.Xkbmap),es,us,de,fr &
(sleep 1s && fbxkb) &
# ^^ note: if using the LiveCD, you can also change to a different
#          keyboard map by entering the terminal command:
#              setxkbmap xx
#          Where "xx" is the 2 letter country code.

# Force openoffice.org to use GTK theme
# enable this if you install openoffice
export OOO_FORCE_DESKTOP=gnome

# Set desktop wallpaper
Esetroot -scale ~/.config/wallpapers/default.jpg

# Start screensaver deamon
#gnome-screensaver &

# Launch Conkys
conky -c ~/.conkyrc q &
conky -c ~/.conkyrc2 q &

# Launch panel
tint2 &

# Start volume control system tray applet
gvolwheel &

# Launch network manager applet
(sleep 2s && nm-applet) &

# Launch clipboard manager
(sleep 3s && parcellite) &

# Launch checkgmail: disabled for live sessesion
# (sleep 15 && checkgmail) &

# Uncomment to enable system updates at boot
#(sleep 180s && sudo system-update) &

# autosuspend usb devices
#(sleep 10 && sudo /usr/local/bin/autosuspend) &
