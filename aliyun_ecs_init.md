
### 阿里云机器禁止root用户登录

新建用户：

```
adduser zhaochong
usermod -aG sudo zhaochong
```

运行sudo 命令时，如果出现unable to resolve host：

将机器名称 host_name加入到/etc/hosts 首行：
```
127.0.0.1 localhost host_name

```

修改/etc/ssh/sshd_config文件中的 PermitRootLogin 为 no

重启sshd 服务：
```
service sshd restart
```
