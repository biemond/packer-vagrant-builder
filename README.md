[Packer](http://packer.io) templates for Linux boxes with Puppet.

* CentOS 6.4 (Minimal) 64-bit
* CentOS 5.8 (network iso) 64-bit
* Ubuntu 12.04 LTS (Precise Pangolin) 64-bit


Download packer

export PATH=/Users/edwin/0.3.11_darwin_amd64:$PATH

* packer build centos-5.8-x86_64.json
* packer build centos-6.4-x86_64.json
* packer build ubuntu-12.04-amd64.json
* packer build solaris10.json