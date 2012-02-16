#!/bin/sh

# This is a hook for live-helper(7) to install Skype.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.

## TODO: find an up to date repo for skype.

#wget http://download.skype.com/linux/skype-debian_2.1.0.47-1_i386.deb
#dpkg -i skype-debian_2.1.0.47-1_i386.deb
#apt-get install -f --yes
#rm skype-debian_2.1.0.47-1_i386.deb

if [ `arch` == "amd64" ]; 
then 
    aptitude install ia32-libs ia32-libs-gtk libqt4-core libqt4-gui
    wget -O skype-install.deb http://www.skype.com/go/getskype-linux-beta-ubuntu-64
    dpkg -i skype-install.deb
else
    echo "deb http://download.skype.com/linux/repos/debian/ stable non-free" > /etc/apt/sources.list.d/skype.list
    apt-get update
    apt-key adv --keyserver pgp.mit.edu --recv-keys 0xd66b746e
    apt-get update
    apt-get install --yes skype --force-yes
fi;
