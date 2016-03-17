#!/usr/bin/env bash

# add official mozilla certs
wget --no-check-certificate -O/etc/pki/tls/certs/ca-bundle.crt http://curl.haxx.se/ca/cacert.pem

mkdir /home/vagrant/.ssh
wget --no-check-certificate -O authorized_keys 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub'
mv authorized_keys /home/vagrant/.ssh
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh

#fix selinux
restorecon -R -v /home/vagrant/.ssh

echo 'UseDNS no' >> /etc/ssh/sshd_config

yum install -y net-tools bind-utils nfs-common portmap rpcbind libgssglue nfs-utils keyutils libevent nfs-utils-lib

#yum -y update
yum -y clean all
