#!/usr/bin/env bash
# This bootstraps Puppet on CentOS 6.x
# It has been tested on CentOS 6.4 64bit

set -e

if [ "$EUID" -ne "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

if which docker > /dev/null 2>&1; then
  echo "Docker is already installed."
  exit 0
fi

# for selinux ruby versions
echo "[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/\$releasever/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg" >/etc/yum.repos.d/centos7_docker.repo


# Install Puppet...
echo "Installing docker"
yum install -y docker-engine > /dev/null

echo "Docker installed!"

echo "Setting docker auto start!"
systemctl start docker.service
systemctl enable docker.service
