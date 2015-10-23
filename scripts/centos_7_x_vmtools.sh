#!/usr/bin/env bash

mkdir /tmp/vmfusion
mkdir /tmp/vmfusion-archive
mount -o loop /home/vagrant/linux.iso /tmp/vmfusion
tar xzfv /tmp/vmfusion/VMwareTools-*.tar.gz -C /tmp/vmfusion-archive
tar xfv /tmp/vmfusion-archive/vmware-tools-distrib/lib/modules/source/vmhgfs.tar -C /tmp/vmfusion-archive/vmware-tools-distrib/lib/modules/source/
sed -i -e '/KERNEL_VERSION/{s/3, 11, 0/3, 10, 0/}' /tmp/vmfusion-archive/vmware-tools-distrib/lib/modules/source/vmhgfs-only/shared/compat_dcache.h
rm -rf /tmp/vmfusion-archive/vmware-tools-distrib/lib/modules/source/vmhgfs.tar
tar cfv /tmp/vmfusion-archive/vmware-tools-distrib/lib/modules/source/vmhgfs.tar -C /tmp/vmfusion-archive/vmware-tools-distrib/lib/modules/source/ vmhgfs-only
rm -rf /tmp/vmfusion-archive/vmware-tools-distrib/lib/modules/source/vmhgfs-only/
/tmp/vmfusion-archive/vmware-tools-distrib/vmware-install.pl --force-install
umount /tmp/vmfusion
rm -rf  /tmp/vmfusion
rm -rf  /tmp/vmfusion-archive
rm /home/vagrant/*.iso

#echo "answer AUTO_KMODS_ENABLED yes" | sudo tee -a /etc/vmware-tools/locations
