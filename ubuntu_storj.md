
安装依赖：
```
sudo apt-get install libcurl4-gnutls-dev -y
sudo apt-get install nettle-dev -y 
sudo apt-get install libuv1-dev -y 
sudo apt-get install libmicrohttpd-dev -y
```

复制代码：
```
git clone https://github.com/Storj/libstorj
```

编译：
```
cd libstorj
./autogen.sh
./configure
make
sudo make install
```

使用：
```
storj -h
```


