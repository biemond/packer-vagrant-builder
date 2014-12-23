[Packer](http://packer.io) Vagrant for Solaris or Linux boxes with Puppet pre-installed

make sure you create folder called build in this repos

* Fedora 20 (net install iso) 64-bit
* CentOS 6.4 (Minimal) 64-bit
* CentOS 6.5 (Minimal) 64-bit
* CentOS 6.6 (Minimal) 64-bit
* CentOS 7.0 (Minimal) 64-bit
* CentOS 5.10 (network iso) 64-bit
* CentOS 5.8 (network iso) 64-bit
* Ubuntu 12.04 LTS (Precise Pangolin) 64-bit
* Solaris 10 x86 64-bit
* Oracle Linux 6.5 64-bit
* Oracle Linux 6.6 64-bit
* Oracle Linux 7.0 64-bit

Download packer at http://packer.io, tested it with Packer 0.6.1

export PATH=~/0.7.1_darwin_amd64:$PATH

* packer-packer build centos-5.8-x86_64.json
* packer-packer build centos-5.10-x86_64.json
* packer-packer build centos-6.4-x86_64.json
* packer-packer build centos-6.5-x86_64.json
* packer-packer build -only=virtualbox-iso centos-6.6-x86_64.json
* packer-packer build -only=vmware-iso centos-6.6-x86_64.json
* packer-packer build centos-7.0-x86_64.json
* packer-packer build fedora-20-x86_64.json
* packer-packer build ubuntu-12.04-amd64.json

* packer-packer build solaris10.json
* packer-packer build solaris11.json
* packer-packer build solaris11_2.json

* packer-packer build oracle-linux-6.5-x86_64.json
* packer-packer build oracle-linux-6.6-x86_64.json
* packer-packer build oracle-linux-7.0-x86_64.json

Oracle Linux 7 has btrfs as filesystem

update iso_location variable this contains the location of this iso

http://ftp.linux.org.uk/pub/distributions/enterprise/OL6/U5/x86_64/OracleLinux-R6-U5-Server-x86_64-dvd.iso

Oracle 7.0 iso can be downloaded from edelivery.oracle.com
