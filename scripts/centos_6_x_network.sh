#!/usr/bin/env bash

echo "==> Remove the traces of the template MAC address and UUIDs"
sed -i '/^\(HWADDR\|UUID\)=/d' /etc/sysconfig/network-scripts/ifcfg-e*

#sed -i '/HWADDR/d' /etc/sysconfig/network-scripts/ifcfg-eth0
#sed -i "/^UUID/d" /etc/sysconfig/network-scripts/ifcfg-eth0

rm /etc/sysconfig/selinux
ln -s /etc/selinux/config /etc/sysconfig/selinux
sed -i "s/^\(SELINUX=\).*/\1disabled/g" /etc/selinux/config

rm -f /etc/ssh/ssh_host_*
rm -f /etc/udev/rules.d/70-persistent-net.rules
rm -f /var/lib/dhclient/dhclient-eth0.leases