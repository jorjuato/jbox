#!/bin/sh

# This is a hook for live-helper(7) to install Gvolwheel in squeeze/sid.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.

###  Clean packages cache
apt-get clean
