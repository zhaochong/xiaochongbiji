
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
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### 国内服务器，添加github.com相关host，到 /etc/hosts 文件:
```
192.30.253.118 gist.github.com
192.30.253.113 github.com
151.101.88.249 github.global.ssl.fastly.net
192.30.253.113 github.com
192.30.253.118 gist.github.com
192.30.253.119 gist.github.com
52.216.80.48 github-cloud.s3.amazonaws.com
54.231.48.40 github-com.s3.amazonaws.com
192.30.255.112 www.github.com
192.30.255.113 www.github.com
52.216.80.48 github-cloud.s3.amazonaws.com
54.231.40.3 github-com.s3.amazonaws.com
52.216.20.171 github-production-release-asset-2e65be.s3.amazonaws.com
52.216.228.168 github-production-user-asset-6210df.s3.amazonaws.com
192.30.253.118 gist.github.com
151.101.72.249 global-ssl.fastly.net
207.97.227.239 github.com
207.97.227.252 nodeload.github.com
207.97.227.243 raw.github.com
204.232.175.78 documentcloud.github.com
204.232.175.94 gist.github.com
204.232.175.78 developer.github.com
207.97.227.252 nodeload.github.com
207.97.227.243 api.github.com
204.232.175.78 documentcloud.github.com
204.232.175.78 developer.github.com
207.97.227.239 github.com
207.97.227.252 nodeload.github.com
207.97.227.243 raw.github.com
207.97.227.243 api.github.com
204.232.175.94 gist.github.com
204.232.175.78 documentcloud.github.com
192.30.253.120 codeload.github.com
```
