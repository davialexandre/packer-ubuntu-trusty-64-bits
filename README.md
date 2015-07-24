Introduction
============

This is a simple packer template to create a vagrant base box 
with Ubuntu 14.04 64 bits. Right now it only create boxes for 
the vmware provider.

Usage
=====

Clone this repo and execute *build.sh*. It will create a file 
named *trusty65-BUILD_VERSION-vmware.box*, where *BUILD_VERSION* 
is the short hash of current commit of your repo clone.

If you want to execute packer manually, you will need to inform 
a *BUILD_VERSION* using a user variable:

```
packer build -var build_version=BUILD_VERSION template.json
```

Acknowledgement
===============

The provisioning scripts and the preseed.cfg file were heavily 
based on the code from <https://github.com/mitchellh/packer-ubuntu-12.04-docker>
