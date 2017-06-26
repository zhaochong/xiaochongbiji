
```
sudo parted /dev/sdb mklabel gpt
sudo parted /dev/sdb unit s print free
sudo parted /dev/sdb mkpart primary 2048s 7025983487s
sudo mke2fs -t ext4 /dev/sdb1
sudo mount /dev/sdb1 /sdb2
```




