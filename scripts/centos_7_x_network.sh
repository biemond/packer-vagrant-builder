#!/usr/bin/env bash

sed -i -e 's/^SELINUX=.*/SELINUX=permissive/' /etc/sysconfig/selinux

rm -f /var/lib/dhclient/dhclient-*.leases
rm -f /etc/ssh/ssh_host_*

# fix network names
# yum -y install grub2-tools
# sed -i -e 's/quiet/quiet net.ifnames=0 biosdevname=0/' /etc/default/grub
# grub2-mkconfig -o /boot/grub2/grub.cfg

echo "==> Remove the traces of the template MAC address and UUIDs"
sed -i '/^\(HWADDR\|UUID\)=/d' /etc/sysconfig/network-scripts/ifcfg-e*

echo "==> list devices"
ls -l /etc/sysconfig/network-scripts/

# rm -rf /etc/sysconfig/network-scripts/ifcfg-e*

# cat >/etc/sysconfig/network-scripts/ifcfg-eth0 <<-EOF
# NAME="eth0"
# DEVICE="eth0"
# BOOTPROTO=dhcp
# ONBOOT=yes
# NETBOOT=yes
# TYPE=Ethernet
# NM_CONTROLLED="no"
# EOF

echo "==> Cleaning up udev rules"
rm -f /etc/udev/rules.d/70*
