#!/usr/bin/env bash

mkdir /mnt/cdrom
mount -o loop /home/vagrant/linux.iso /mnt/cdrom
tar zxf /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp
cd /tmp/vmware-tools-distrib
yum -y install net-tools
/tmp/vmware-tools-distrib/vmware-install.pl -d
umount /mnt/cdrom
rm -rf /tmp/vmware-tools-distrib
rm -rf /home/vagrant/linux.iso