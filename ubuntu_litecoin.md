### 下载莱特币钱包
```
wget https://download.litecoin.org/litecoin-0.13.2/linux/litecoin-0.13.2-x86_64-linux-gnu.tar.gz
```

### 解压莱特币钱包
```
tar -zxf litecoin-0.13.2-x86_64-linux-gnu.tar.gz
```

### 将以下目录加入.zshrc
```
export PATH=$PATH:~/litecoin-0.13.2/bin
```

### 让目录生效
```
source .zshrc
```

### 启动莱特币钱包服务端
```
nohup litecoind -server >log.litecoind 2>&1 &
```

### 使用命令查看钱包信息

```
litecoin-cli getino
```





