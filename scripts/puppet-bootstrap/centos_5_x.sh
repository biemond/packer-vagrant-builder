#!/usr/bin/env bash
# This bootstraps Puppet on CentOS 5.x
# It has been tested on CentOS 5.10 64bit

set -e

if [ "$EUID" -ne "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

# Install puppet labs repo
echo "Configuring PuppetLabs repository"
rpm -i http://yum.puppetlabs.com/el/5/products/x86_64/puppetlabs-release-5-10.noarch.rpm

# Install Puppet...
echo "Installing Puppet"
rpm -i puppet > /dev/null

echo "Puppet installed!"
