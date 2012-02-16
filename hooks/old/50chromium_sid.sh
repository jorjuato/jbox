#!/bin/sh

# This is a hook for live-helper(7) to install chromium browser in squeeze/sid.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.


echo "deb http://ppa.launchpad.net/chromium-daily/ppa/ubuntu jaunty main" >> /etc/apt/sources.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 4E5E17B5 &
sleep 10
apt-get update
apt-get install --yes chromium-browser chromium-browser-l10n --force-yes
echo "CHROMIUM_FLAGS=\"--enable-plugins\"" > /etc/chromium-browser/default

