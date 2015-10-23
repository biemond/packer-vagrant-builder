#!/usr/bin/env bash

yum -y install fuse fuse-libs
mount -o loop /home/vagrant/linux.iso /mnt
cd /tmp
tar zxf /mnt/VMwareTools-*.tar.gz
umount /mnt
/tmp/vmware-tools-distrib/vmware-install.pl --default
rm -rf /tmp/vmware-tools-distrib
rm -rf /home/vagrant/linux.iso

#echo "answer AUTO_KMODS_ENABLED yes" | sudo tee -a /etc/vmware-tools/locations
