

下载安装软件：
```
wget https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/5.6.30/xampp-linux-x64-7.1.1-0-installer.run?from_af=true
```

安装软件：
```
sudo chmod 777 -R xampp-linux-x64-7.1.1-0-installer.run
sudo ./xampp-linux-x64-7.1.1-0-installer.run
```

启动服务：
```
sudo /opt/lampp/lampp start
```

安全配置：
```
sudo /opt/lampp/lampp security
```

修改/opt/lampp/etc/extra/httpd-xampp.conf，使得phpmyadmin可以外网访问：
```
<Directory "/opt/lampp/phpmyadmin">
    AllowOverride AuthConfig Limit
    Order deny,allow
    Allow from all
    Require all granted
    ErrorDocument 403 /error/XAMPP_FORBIDDEN.html.var
</Directory>
```

修改/opt/lampp/etc/httpd.conf，去掉vhost前的注释

修改/opt/lampp/etc/extra/httpd-vhosts.conf：
```
NameVirtualHost *
<VirtualHost *:80>
    ServerAdmin njuzc@qq.com
    DocumentRoot "/opt/lampp/htdocs/91poc.com"
    ServerName 91poc.com
    ServerAlias 91poc.com
    ErrorLog "logs/91poc.com-error_log"
    CustomLog "logs/91poc.com-access_log" common
</VirtualHost>
```

重启服务：
```
sudo /opt/lampp/lampp restart
```







