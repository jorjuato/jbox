#!/bin/sh

# This is a hook for live-helper(7) to install aufs drivers
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.
#
# Note: You only want to use this hook if there is no prebuild aufs-modules-*
# package available for your kernel flavour.

#apt-get install --yes build-essential

# Building kernel module
#which module-assistant || apt-get install --yes module-assistant
module-assistant update

for KERNEL in /boot/vmlinuz-*
do
    VERSION="$(basename ${KERNEL} | sed -e 's|vmlinuz-||')"

    module-assistant --non-inter --quiet auto-install aufs -l ${VERSION}
    apt-get install aufs-modules-${VERSION}
done

module-assistant clean aufs
