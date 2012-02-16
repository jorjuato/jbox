#!/bin/sh

# This is a hook for live-helper(7) to install Gvolwheel in squeeze/sid.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.

###  Compilation
apt-get install --yes intltool libgtk2.0-dev build-essential checkinstall 
wget http://sourceforge.net/projects/gvolwheel/files/gvolwheel-0.7.tar.gz
tar xzf gvolwheel-0.7.tar.gz
cd gvolwheel-0.7 && ./configure
checkinstall -D -y --pkgname gvolwhell --pkgversion 0.7  --requires libgtk2.0-0  --install 
cd .. && rm -r gvolwheel*
apt-get autoremove --yes  intltool libgtk2.0-dev build-essential checkinstall 

###  Run time dependencies
apt-get install --yes  libgtk2.0-0
