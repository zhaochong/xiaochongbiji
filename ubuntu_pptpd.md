安装pptpd：
```
sudo apt-get install pptpd
```

编辑/etc/pptpd.conf,去掉下两行注释：
```
localip 192.168.0.1
remoteip 192.168.0.234-238,192.168.0.245
```

编辑/etc/ppp/chap-secrets，添加账户：
```
username  pptpd  "password"  *
```

重启服务：
```
sudo service pptpd restart
```

编辑/etc/ppp/pptpd-options，去掉下两行注释：
```
8.8.8.8
8.8.4.4
```

编辑/etc/sysctl.conf，去掉这行注释：
```
net.ipv4.ip_forward=1 
```
让配置生效：
```
sysctl -p
```

安装iptables：
```
sudo apt-get install iptables
```

开启NAT转发：
```
sudo iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -o eth0 -j MASQUERADE
```

重启服务：
```
sudo service pptpd restart
```





