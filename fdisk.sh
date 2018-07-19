#!/bin/bash
type=ext4
mount_dir=/dddd
mkfs.$type /dev/vdc 
mkdir -p $mount_dir
echo "/dev/vdc $mount_dir $type defaults 0 0" >> /etc/fstab
mount -a
