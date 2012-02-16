#!/bin/sh

# This is a hook for live-helper(7) to remove build utils.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.
#
# Note: You only want to use this hook if there is no prebuild aufs-modules-*
# package available for your kernel flavour.

apt-get autoremove --yes build-essential module-assistant subversion autoconf automake intltool \
libgtk2.0-dev libcairo2-dev libpango1.0-dev libglib2.0-dev libimlib2-dev libxinerama-dev libx11-dev
