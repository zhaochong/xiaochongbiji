
### 阿里云机器初始化

#### 新建用户：

```
adduser zhaochong
usermod -aG sudo zhaochong
```

运行sudo 命令时，如果出现unable to resolve host：

将机器名称 host_name加入到/etc/hosts 首行：
```
127.0.0.1 localhost host_name
```

如果需要更用户密码：
```
passwd zhaochong
```

#### 禁止root用户登录
修改/etc/ssh/sshd_config文件中的 PermitRootLogin 为 no

重启sshd 服务：
```
service sshd restart
```

#### 更新软件库
```
sudo apt-get update
```

#### 安装vim插件：
```
wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x
```

#### 安装oh-my-zsh：
```
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

