#!/bin/sh

#Script to install aircrack-ng in squeeze 

wget http://ftp.debian.org/debian/pool/main/a/aircrack-ng/aircrack-ng_1.0~rc1-2_i386.deb
dpkg -i aircrack-ng_1.0~rc1-2_i386.deb
apt-get install -f --yes
rm aircrack-ng_1.0~rc1-2_i386.deb
