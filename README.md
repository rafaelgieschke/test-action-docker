This bootable image includes GNU GRUB, a Linux kernel, and some user space
tools. It should be able to execute a cloud-init `user-data` file from the
[NoCloud](https://cloudinit.readthedocs.io/en/latest/topics/datasources/nocloud.html),
[ConfigDrive](https://cloudinit.readthedocs.io/en/latest/topics/datasources/configdrive.html),
and [EC2](https://cloudinit.readthedocs.io/en/latest/topics/datasources/ec2.html)
data sources. It will ignore any cloud-init `meta-data`, though.
