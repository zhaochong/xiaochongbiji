### 安装编译依赖
```
sudo apt-get install -y build-essential libtool autotools-dev autoconf pkg-config libssl-dev libevent-dev
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libdb++-dev
sudo apt-get install -y libminiupnpc-dev
sudo apt-get install -y libqt4-dev libprotobuf-dev protobuf-compiler
sudo apt-get install -y libqrencode-dev
sudo apt-get install -y make gcc g++ git
```

### 下载钱包
```
wget https://github.com/bitcoin/bitcoin/archive/v0.14.0.zip
unzip v0.14.0.zip
cd bitcoin-0.14.0
```

### 编译钱包
```
./autogen.sh
./configure
./configure --with-incompatible-bdb
make
sudo make install
```

### 在.zshrc中加入：
```
export PATH=$PATH:/usr/local/bin
```
让配置生效：
```
source .zshrc
```



