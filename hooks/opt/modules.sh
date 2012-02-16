#!/bin/sh

# This is a hook for live-helper(7) to add entries to /etc/modules.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.

MODULES=""

for MODULE in ${MODULES}
do
	if ! grep -qs /etc/modules ${MODULE}
	then
		echo ${MODULE} >> /etc/modules
	fi
done
