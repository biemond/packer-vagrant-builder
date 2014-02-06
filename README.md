[Packer](http://packer.io) templates for Solaris or Linux boxes with Puppet.

* CentOS 6.4 (Minimal) 64-bit
* CentOS 6.5 (Minimal) 64-bit
* CentOS 5.8 (network iso) 64-bit
* Ubuntu 12.04 LTS (Precise Pangolin) 64-bit
* Solaris 10 x86 64-bit


Download packer, tested it with Packer 0.5.1

export PATH=~/0.5.1_darwin_amd64:$PATH

* packer build centos-5.8-x86_64.json
* packer build centos-6.4-x86_64.json
* packer build centos-6.5-x86_64.json
* packer build ubuntu-12.04-amd64.json
* packer build solaris10.json