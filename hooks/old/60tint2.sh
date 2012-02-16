#!/bin/sh

# This is a hook for live-helper(7) to install tint2.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.

###  Compilation
#apt-get install --yes libcairo2-dev libpango1.0-dev libglib2.0-dev libimlib2-dev libxinerama-dev libx11-dev subversion make autoconf automake
svn checkout http://tint2.googlecode.com/svn/trunk/ tint2
cd tint2 && ./autogen.sh
./configure && make && make install
cd .. && rm -r tint2
#apt-get autoremove --yes libcairo2-dev libpango1.0-dev libglib2.0-dev libimlib2-dev libxinerama-dev libx11-dev subversion make autoconf

###  Run time dependencies

apt-get install --yes libimlib2
