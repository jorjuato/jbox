#!/bin/sh

# This is a hook for live-helper(7) to install Gvolwheel in squeeze/sid.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.

###  Compilation

#apt-get install --yes subversion intltool libgtk2.0-dev
svn co https://gvolwheel.svn.sourceforge.net/svnroot/gvolwheel gvolwheel
cd gvolwheel
./configure && make && make install
cd .. && rm -r gvolwheel
#apt-get autoremove --yes  subversion intltool libgtk2.0-dev


###  Run time dependencies

apt-get install --yes  libgtk2.0-0
