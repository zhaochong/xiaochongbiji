#### 云盘扩容
##### 1、扩容这种数据盘需要在控制台上重启实例后才能使扩容后的容量生效，而重启实例会停止实例，中断您的业务，所以请您谨慎操作。
##### 2、扩容成功后，磁盘列表里即显示扩容后的容量。但是，如果您的数据盘已经挂载到实例上，只有在控制台上 重启实例 后，登录实例才能看到新的磁盘空间容量。

```
df -h
sudo umount /dev/vdb1

sudo fdisk -l
sudo fdisk /dev/vdb
d
n
p
1
默认
默认
wq

sudo umount /dev/vdb1

sudo e2fsck -f /dev/vdb1
sudo resize2fs /dev/vdb1

sudo mount /dev/vdb1 /data
```

#### 老的磁盘分区方法，可以忽略
```
sudo parted /dev/sdb mklabel gpt
sudo parted /dev/sdb unit s print free
sudo parted /dev/sdb mkpart primary 2048s 7025983487s
sudo mke2fs -t ext4 /dev/sdb1
sudo mount /dev/sdb1 /sdb2
```
