# Packer Solaris / Linux vagrant boxes with Puppet pre-installed

* Fedora 20 (net install iso) 64-bit
* CentOS 6.4 (Minimal) 64-bit
* CentOS 6.5 (Minimal) 64-bit
* CentOS 6.6 (Minimal) 64-bit ( vbox & vmware)
* CentOS 6.7 (Minimal) 64-bit ( vbox & vmware) with BTRFS
* CentOS 7 (1503, 1511) (Minimal) 64-bit ( vbox & vmware) with BTRFS
* CentOS 5.10 (network iso) 64-bit
* CentOS 5.8 (network iso) 64-bit
* Ubuntu 12.04 LTS (Precise Pangolin) 64-bit
* Solaris 10 x86 64-bit
* Oracle Linux 6.5 64-bit
* Oracle Linux 6.6 64-bit
* Oracle Linux 7.0 64-bit
* Oracle Linux 7.1 64-bit
* Oracle Linux 7.2 64-bit with BTRFS

## software
Download [Packer](http://packer.io) at http://packer.io, tested it with Packer 0.8.6

export PATH=~/packer_0.8.6_darwin_amd64:$PATH

## how to build a box
* packer build centos-5.8-x86_64.json
* packer build centos-5.10-x86_64.json
* packer build centos-6.4-x86_64.json
* packer build centos-6.5-x86_64.json

* packer build -only=virtualbox-iso centos-6.6-x86_64.json
* packer build -only=vmware-iso centos-6.6-x86_64.json

* packer build -only=virtualbox-iso centos-6.7-x86_64.json
* packer build -only=vmware-iso centos-6.7-x86_64.json

* packer build -only=virtualbox-iso centos-7-1503-x86_64.json
* packer build -only=vmware-iso centos-7-1503-x86_64.json

* packer build -only=virtualbox-iso centos-7-1511-x86_64.json
* packer build -only=vmware-iso centos-7-1511-x86_64.json

* packer build fedora-20-x86_64.json
* packer build ubuntu-12.04-amd64.json

* packer build -only=virtualbox-iso solaris10.json
* packer build -only=vmware-iso solaris10.json

* packer build solaris11.json
* packer build -only=virtualbox-iso solaris11_2.json
* packer build -only=vmware-iso solaris11_2.json

* packer build oracle-linux-5.8-x86_64.json
* packer build oracle-linux-6.5-x86_64.json
* packer build oracle-linux-6.6-x86_64.json
* packer build -only=virtualbox-iso oracle-linux-6.6-x86_64.json
* packer build -only=vmware-iso oracle-linux-6.6-x86_64.json
* packer build oracle-linux-7.0-x86_64.json
* packer build -only=virtualbox-iso oracle-linux-7.1-x86_64.json
* packer build -only=vmware-iso oracle-linux-7.1-x86_64.json
* packer build -only=virtualbox-iso oracle-linux-7.2-x86_64.json
* packer build -only=vmware-iso oracle-linux-7.2-x86_64.json


Oracle Linux 7 has
- btrfs as filesystem
- update iso_location variable this contains the location of this iso
- Oracle 7.0 iso can be downloaded from edelivery.oracle.com

## btrfs commands
- mount | grep btrfs
- btrfs device scan
- btrfs filesystem scan /dev/sda
- btrfs filesystem df /
- btrfs filesystem show /