


```
sudo apt-get install cmake build-essential libboost-all-dev
git clone -b Linux https://github.com/nicehash/nheqminer.git
cd nheqminer/cpu_xenoncat/Linux/asm/
sh assemble.sh
cd ../../../Linux_cmake/nheqminer_cpu
cmake .
make -j $(nproc)

nohup ./nheqminer_cpu -l cn1-zcash.flypool.org:3333 -u t1YuKF5iwHeJFj1SNYtdDu7Zv4YAtuTvGLu.worker > zcash 2>&1 &
```
