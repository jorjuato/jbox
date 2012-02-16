#!/bin/sh

# This is a hook for live-helper(7) to install googleearth.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.
#
# Note: This hook requires packages from the non-free category. Make sure you
# enabled it in your configuration.


###  Build and install package
# Not needed? I hope: libgl1-mesa-glx11 libgl1-mesa-swx11
apt-get install --yes  googleearth-package libsm6
make-googleearth-package --force
dpkg -i googleearth*.deb
rm googleearth* GoogleEarthLinux.bin
apt-get install -f --yes
apt-get autoremove --yes googleearth-package

if [ `arch` == "amd64" ]; 
then
    aptitude install ia32-libs-gtk lsb-core lib32nss-mdns\
                     ia32-libs lib32ncurses5 nvidia-glx-ia32
fi;

#Dirty workaround to make google earth not complain ## Seems fixed!!!
#cd /usr/lib/googleearth && mv libssl.so.0.9.8 libssl.so.0.9.8.moved.for.workaround
