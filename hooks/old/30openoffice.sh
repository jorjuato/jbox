#!/bin/sh

# This is a hook for live-helper(7) to install sun-java.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.
#
# Note: This hook requires packages from the non-free category. Make sure you
# enabled it in your configuration.

apt-get install --yes openoffice.org openoffice.org-gtk
#apt-get install --yes openoffice.org-l10n-es
apt-get remove --yes iceweasel


