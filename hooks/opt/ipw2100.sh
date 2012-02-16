#!/bin/sh

# This is a hook for live-helper(7) to install ipw2100 drivers
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.
#
# Note: This hook requires packages from the contrib category. Make sure you enabled
# it in your configuration.

apt-get install --yes build-essential

# Building kernel module
which module-assistant || apt-get install --yes module-assistant
module-assistant update

for KERNEL in /boot/vmlinuz-*
do
	VERSION="$(basename ${KERNEL} | sed -e 's|vmlinuz-||')"

	module-assistant --non-inter --quiet auto-install ipw2100 -l ${VERSION}
done

module-assistant clean ipw2100

# Installing firmware (http://ipw2100.sourceforge.net/firmware.php)
wget --referer "http://ipw2100.sourceforge.net/firmware.php" "http://ipw2100.sourceforge.net/firmware.php?i_agree_to_the_license=yes&f=ipw2100-fw-1.3.tgz" -O /tmp/ipw2100-fw-1.3.tgz

cd /tmp
tar xfvz ipw2100-fw-1.3.tgz
mv ipw2100-1.3* /lib/firmware
rm -f ipw2100-fw-1.3.tgz
cd ${OLDPWD}
