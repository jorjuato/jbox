#!/bin/sh

# This is a hook for live-helper(7) to install googleearth.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.
#
# Note: This hook requires packages from the non-free category. Make sure you
# enabled it in your configuration.


###  Build and install package
# Not needed? I hope: libgl1-mesa-glx11 libgl1-mesa-swx11
echo "deb http://download.virtualbox.org/virtualbox/debian squeeze contrib non-free" > /etc/apt/sources.list.d/virtualbox.list
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | apt-key add -
apt-get update
apt-get install --yes virtualbox-4.0 dkms
