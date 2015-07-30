[Packer](http://packer.io) Vagrant for Solaris or Linux boxes with Puppet pre-installed

make sure you create folder called build in this repos

* Fedora 20 (net install iso) 64-bit
* CentOS 6.4 (Minimal) 64-bit
* CentOS 6.5 (Minimal) 64-bit
* CentOS 6.6 (Minimal) 64-bit ( vbox & vmware)
* CentOS 7.0 (Minimal) 64-bit ( vbox & vmware)
* CentOS 5.10 (network iso) 64-bit
* CentOS 5.8 (network iso) 64-bit
* Ubuntu 12.04 LTS (Precise Pangolin) 64-bit
* Solaris 10 x86 64-bit
* Oracle Linux 6.5 64-bit
* Oracle Linux 6.6 64-bit
* Oracle Linux 7.0 64-bit
* Oracle Linux 7.1 64-bit

Download packer at http://packer.io, tested it with Packer 0.7.5

export PATH=~/packer_0.8.1_darwin_amd64:$PATH

* packer build centos-5.8-x86_64.json
* packer build centos-5.10-x86_64.json
* packer build centos-6.4-x86_64.json
* packer build centos-6.5-x86_64.json

* packer build -only=virtualbox-iso centos-6.6-x86_64.json
* packer build -only=vmware-iso centos-6.6-x86_64.json

* packer build -only=virtualbox-iso centos-7.0-x86_64.json
* packer build -only=vmware-iso centos-7.0-x86_64.json

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

Oracle Linux 7 has
- btrfs as filesystem
- update iso_location variable this contains the location of this iso
- Oracle 7.0 iso can be downloaded from edelivery.oracle.com
