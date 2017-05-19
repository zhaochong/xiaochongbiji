安装pptp客户端：
```
sudo apt-get install pptp-linux -y
```

查看网络配置：
```
ifconfig
route -n
ip route
```

初始化一个vpn的连接通道：zcvpn
```
sudo pptpsetup --create zcvpn --server vpn.acz.xin --username zhaochong --password 123456 --encrypt --start
```

启动vpn：
```
sudo pon zcvpn
```

修改路由命令：
```
sudo ip route del default
sudo ip route add default dev ppp0
```

停止vpn：
```
sudo poff zcvpn
```

重置路由：
```
sudo ip route add default via 192.168.1.1
```

全部流量走vpn通道：
```
sudo route add default gw 192.168.0.1
sudo route del default gw 192.168.3.1
```

