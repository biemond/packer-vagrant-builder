#!/usr/bin/env bash
# This bootstraps Puppet on CentOS 6.x
# It has been tested on CentOS 6.4 64bit

set -e

#REPO_URL="https://yum.puppetlabs.com/fedora/f20/products/x86_64/puppetlabs-release-20-10.noarch.rpm"
REPO_URL="https://yum.puppetlabs.com/puppetlabs-release-pc1-fedora-20.noarch.rpm"


if [ "$EUID" -ne "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

if which puppet > /dev/null 2>&1; then
  echo "Puppet is already installed."
  exit 0
fi

# Install puppet labs repo
echo "Configuring PuppetLabs repo..."
repo_path=$(mktemp)
wget --output-document=${repo_path} ${REPO_URL} 2>/dev/null
rpm -i ${repo_path} >/dev/null

# LOCALE for newest facter
echo "export LC_ALL=C" > /etc/profile.d/puppet_locale.sh

# Install Puppet...
echo "Installing puppet"
yum install -y puppet > /dev/null

echo "Puppet installed!"
