Centos6.6
优化Centos

http://www.cnblogs.com/dejun/p/5726407.html
ulimit -n 65535

sudo chmod 777 /etc/profile
sudo  echo ulimit -n 1024000 >>/etc/profile 
sudo vim /etc/security/limits.conf
* soft nofile 1024000
* hard nofile 1024000
hive   - nofile 1024000
hive   - nproc  1024000

sudo vim /etc/sysctl.conf
sudo sysctl -p
fs.file-max = 65535

net.core.rmem_max = 67108864

net.core.wmem_max = 67108864

net.core.netdev_max_backlog = 250000

net.core.somaxconn = 3240000



net.ipv4.tcp_syncookies = 1

net.ipv4.tcp_tw_reuse = 1

net.ipv4.tcp_tw_recycle = 0

net.ipv4.tcp_fin_timeout = 30

net.ipv4.tcp_keepalive_time = 1200

net.ipv4.ip_local_port_range = 10000 65000

net.ipv4.tcp_max_syn_backlog = 8192

net.ipv4.tcp_max_tw_buckets = 5000

net.ipv4.tcp_fastopen = 3

net.ipv4.tcp_rmem = 4096 87380 67108864

net.ipv4.tcp_wmem = 4096 65536 67108864

net.ipv4.tcp_mtu_probing = 1

net.ipv4.tcp_congestion_control = hybla






查看系统版本 lsb_release -a
service iptables stop #停止
chkconfig iptables off #禁用
####修复yum#####
http://mirror.centos.org/centos/6/os/x86_64/Packages/
rpm -Uvh --replacepkgs *.rpm
python-2.6.6-64.el6.x86_64.rpm

python-libs-2.6.6-64.el6.x86_64.rpm

python-urlgrabber-3.9.1-11.el6.noarch.rpm

yum-3.2.29-73.el6.centos.noarch.rpm

yum-metadata-parser-1.1.2-16.el6.x86_64.rpm

yum-plugin-fastestmirror-1.1.30-37.el6.noarch.rpm

####修复yum#####
https://github.com/h2oai/h2o-2/wiki/installing-python-2.7-on-centos-6.3.-follow-this-sequence-exactly-for-centos-machine-only

www.ex-parrot.com/pdw/iftop/download/

netstat -lnp|grep 3000

ps 1777

kill -9 1777 



yum install openssl-server
ervice sushi restart
chkconfig sushi on
sudo yum install epee-release
sudo yum install fling

Nagios:

https://www.nagios.org/downloads/nagios-core/thanks/
https://www.nagios.org/downloads/nagios-plugins/
wget https://nagios-plugins.org/download/nagios-plugins-2.1.2.tar.gz#_ga=1.200777318.91546703.1472201916
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.2.0.tar.gz#_ga=1.26212085.91546703.1472201916
yum install -y gcc glibc glibc-common gd gd-devel xinetd openssl-devel
http://www.cnblogs.com/mchina/archive/2013/02/20/2883404.html

useradd nagios

mkdir /usr/local/nagios

chown -R nagios.nagios /usr/local/nagios
tar zxvf
./configure --prefix=/usr/local/nagios
make all
make install
make install-init
make install-commandmode
make install-config
chkconfig --add nagios
chkconfig --level 35 nagios on
chkconfig --list nagios
./configure --prefix=/usr/local/nagios
make && make install
http://www.cnblogs.com/mchina/archive/2013/02/20/2883404.html

wget downloads.sourceforge.net/project/zabbix/ZABBIX%20Latest%20Stable/3.0.4/zabbix-3.0.4.tar.gz
http://blog.chinaunix.net/uid-25266990-id-3380929.html
nagiosadmin/123456   Admin/zabbix
http://downloads.sourceforge.net/project/zabbix/ZABBIX%20Latest%20Stable/2.2.14/zabbix-2.2.14.tar.gz?r=&ts=1472455196&use_mirror=nchc


http://downloads.sourceforge.net/project/zabbix/ZABBIX%20Latest%20Stable/3.0.4/zabbix-3.0.4.tar.gz?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fzabbix%2Ffiles%2FZABBIX%2520Latest%2520Stable%2F3.0.4%2F&ts=1472454687&use_mirror=nchc
./configure --prefix=/usr/local/zabbix --enable-server --enable-proxy--enable-agent --with-mysql=/usr/bin/mysql_config --with-net-snmp--with-libcurl
http://sanwen8.cn/p/1deKCsy.html



http://www.iyunv.com/thread-62087-1-1.html


http://repo.zabbix.com/zabbix/3.0/rhel/6/x86_64/zabbix-release-3.0-1.el6.noarch.rpm

########################################
yum -y install wget vim tree gcc gcc-c++ autoconf httpd php mysql mysql-server php-mysql httpd-manual mod_ssl mod_perl mod_auth_mysql php-gd php-xml php-mbstring php-ldap php-pear php-xmlrpc php-bcmath mysql-connector-odbc mysql-devel libdbi-dbd-mysql net-snmp net-snmp-devel curl-devel
service httpd start
service mysqld start
chkconfig httpd on
chkconfig mysqld on
iptables -I INPUT -p tcp -m multiport --destination-port 80,10050:10051 -j ACCEPT
iptables -L -n
sed -i "s@;date.timezone =@date.timezone = Asia/Shanghai@g" /etc/php.ini
sed -i "s@max_execution_time = 30@max_execution_time = 300@g" /etc/php.ini
sed -i "s@post_max_size = 8M@post_max_size = 32M@g" /etc/php.ini
sed -i "s@max_input_time = 60@max_input_time = 300@g" /etc/php.ini
sed -i "s@memory_limit = 128M@memory_limit = 128M@g" /etc/php.ini
sed -i "s@;mbstring.func_overload = 0@ambstring.func_overload = 2@g" /etc/php.ini
sed -i "s@bcmath= 0@g" /etc/php.ini
sed -i "s@;bcmath=@= Off@g" /etc/php.ini 
sed -i "s@;always_populate_raw_post_data =@always_populate_raw_post_data = -1@g" /etc/php.ini
sed -i "s@;always_populate_raw_post_data= -1@g" /etc/php.ini

echo "ServerName localhost:80" >>/etc/httpd/conf/httpd.conf
/etc/init.d/httpd restart
groupadd -g 201 zabbix
useradd -g zabbix -u 201 -s /sbin/nologin zabbix
wget downloads.sourceforge.net/project/zabbix/ZABBIX%20Latest%20Stable/3.0.4/zabbix-3.0.4.tar.gz
tar xf zabbix-3.0.4.tar.gz
./configure --prefix=/usr/local/zabbix --enable-server --enable-proxy --enable-agent --with-mysql=/usr/bin/mysql_config --with-net-snmp --with-libcurl
make && make install
mysql -e "create database zabbix default charset utf8;"
mysql -e "grant all on zabbix.* to zabbix@localhost identified by 'zabbix';"
mysql -u zabbix -p zabbix zabbix<./database/mysql/schema.sql
mysql -u zabbix -p zabbix zabbix<./database/mysql/images.sql
mysql -u zabbix -p zabbix zabbix<./database/mysql/data.sql
mkdir /var/log/zabbix
chown zabbix.zabbix /var/log/zabbix
ln -s /usr/local/zabbix/etc/ /etc/zabbix
ln -s /usr/local/zabbix/bin/* /usr/bin/
ln -s /usr/local/zabbix/sbin/* /usr/sbin/ 
cp misc/init.d/fedora/core/zabbix_* /etc/init.d
chmod 755 /etc/init.d/zabbix_*
sed -i "s@BASEDIR=/usr/local@BASEDIR=/usr/local/zabbix@g" /etc/init.d/zabbix_server
sed -i "s@BASEDIR=/usr/local@BASEDIR=/usr/local/zabbix@g" /etc/init.d/zabbix_agentd
sed -i "s@DBUser=root@DBUser=zabbix@g" /etc/zabbix/zabbix_server.conf
sed -i "s@#DBPassword=@DBPassword=zabbix@g" /etc/zabbix/zabbix_server.conf
sed -i "s@# DBPassword=@DBPassword=zabbix@g" /etc/zabbix/zabbix_server.conf
sed -i "s@Server=127.0.0.1@Server=127.0.0.1,192.168.8.189@g" /etc/zabbix/zabbix_agentd.conf
sed -i "s@ServerActive=127.0.0.1@ServerActive=$IP:10051@g" /etc/zabbix/zabbix_agentd.conf
sed -i "s@tmp/zabbix_agentd.log@var/log/zabbix/zabbix_agentd.log@g" /etc/zabbix/zabbix_agentd.conf
sed -i "s@^# UnsafeUserParameters=0@UnsafeUserParameters=1\n@g" /etc/zabbix/zabbix_agentd.conf
cp -r  frontends/php/ /var/www/html/zabbix/
chown -R apache.apache /var/www/html/zabbix/
chkconfig zabbix_server on
chkconfig zabbix_agentd on
service zabbix_server start
service zabbix_agentd start
192.168.8.189/zabbix/setup.php


https://github.com/zabbixcn/zabbix3.0-rpm

yum install php56w.x86_64 php56w-cli.x86_64 php56w-common.x86_64 
php56w-gd.x86_64 php56w-ldap.x86_64 php56w-mbstring.x86_64 
php56w-mcrypt.x86_64 php56w-mysql.x86_64 php56w-pdo.x86_64
yum install -y php56w-devel.x86_64 php56w-bcmath.x86_64 php56w-xml.x86_64 php56w-xmlrpc.x86_64 
yum install php56w-devel php56w-bcamth
yum install -y      php56w-mcrypt php56w-mcrypt.x86_64 
yum install -y     php56w-bcmath php56w-fpm

yum install -y httpd php56w php56w-mysql php56w-gd php56w-imap php56w-ldap php56w-odbc php56w-pear php56w-xml php56w-xmlrpc php56w-mcrypt php56w-mbstring php56w-devel php56w-pecl-memcached  php56w-common php56w-pdo php56w-cli php56w-pecl-memcache php56w-bcmath php56w-fpm
sed -i "s/Server\=127.0.0.1/Server\=127.0.0.1,192.168.1.89/g" /etc/zabbix/zabbix_agentd.conf  
chkconfig zabbix_agentd on
 sed -i "s@# php_value date.timezone Europe/Riga@php_value date.timezone Asia/Shanghai@g" /etc/httpd/conf.d/zabbix.conf

https://github.com/zabbixcn/zabbix3.0-rpm
sed -i "s/SELINUX=enforcing/SELINUX=disabled/" /etc/selinux/config
 setenforce 0  
rpm -Uvh http://repo.zabbix.com/zabbix/3.0/rhel/6/x86_64/zabbix-release-3.0-1.el6.noarch.rpm  
rpm -ivh http://mirrors.aliyun.com/zabbix/zabbix/3.0/rhel/7/x86_64/zabbix-release-3.0-1.el7.noarch.rpm
yum install zabbix-agent -y
vim /etc/zabbix/zabbix_agentd.conf 
Server=192.168.56.11
#用于被动模式，数据获取，主动模式和被动模式按照自己需求选择。
ServerActive=192.168.56.11
#用于主动模式，数据提交，主动模式和被动模式按照自己需求选择。
systemctl start zabbix-agent
#启动zabbix agent
ntpdate us.pool.ntp.org
chown zabbix.zabbix /tmp/zabbix_agentd.pid

https://github.com/iloire/watchmen
