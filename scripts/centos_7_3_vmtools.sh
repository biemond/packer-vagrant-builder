#!/usr/bin/env bash

# Install FUSE Drivers (Filesystem in Userspace)
  yum install -y fuse fuse-libs

# Install from Source
  echo
  echo 'Extracting VMware Tools, please wait...'
  mkdir /tmp/vmwaretools
  mkdir /tmp/vmwaretools-archive
  mount -o loop /home/vagrant/linux.iso /tmp/vmwaretools
  tar xzf /tmp/vmwaretools/VMwareTools-*.tar.gz -C /tmp/vmwaretools-archive
  echo 'Installing VMware Tools, please wait...'
  /tmp/vmwaretools-archive/vmware-tools-distrib/vmware-install.pl --default --force-install
  systemctl restart vmware-tools.service

# Cleanup
  umount /tmp/vmwaretools
  rm -rf /tmp/vmwaretools
  rm -rf /tmp/vmwaretools-archive
  rm /home/vagrant/*.iso