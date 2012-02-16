#!/bin/sh

# This is a hook for live-helper(7) to install nodm and remove gdm in squeeze/sid.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.


apt-get autoremove --yes gdm --purge
apt-get install --yes nodm --force-yes


