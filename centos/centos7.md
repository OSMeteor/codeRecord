
###Centos7 
/lib/systemd/system/
vim redis.service 
systemctl start redis.service
sudo systemctl enable redis.service
sudo systemctl enable mongodb.service
[Unit]

Description=Redis

After=syslog.target network.target remote-fs.target nss-lookup.target



[Service]

Type=forking

PIDFile=/db/data/redis/run/redis.pid

ExecStart=/opt/redis/src/redis-server /opt/redis/conf/redis.conf

ExecReload=/bin/kill -s HUP $MAINPID

ExecStop=/bin/kill -s QUIT $MAINPID

PrivateTmp=true



[Install]

WantedBy=multi-user.target





mongoldb

systemctl start mongodb.service

sudo systemctl restart mongodb.service

sudo chmod 400 mongodb.key
vim /etc/profile
ulimit -n 1024000

ulimit -n 1024000

PATH=$PATH:/opt/mongodb/bin

export PATH

[Unit]

Description=MongoDB

After=syslog.target network.target remote-fs.target nss-lookup.target



[Service]

Type=forking

PIDFile=/mnt/db/data/mongodb/data/mongod.lock

ExecStart=/opt/mongodb/bin/mongod -f /opt/mongodb/conf/mongodb.cfg

ExecReload=/bin/kill -s HUP $MAINPID

ExecStop=/bin/kill -s QUIT $MAINPID

PrivateTmp=true



[Install]

WantedBy=multi-user.target



nginx

ps -ef | grep nginx

systemctl start nginx.service

[Unit]

Description=Nginx

After=syslog.target network.target remote-fs.target nss-lookup.target



[Service]

Type=forking

PIDFile=/opt/nginx/nginx/logs/nginx.pid

ExecStart=/opt/nginx/nginx/sbin/nginx

ExecReload=/opt/nginx/nginx/sbin/nginx -s reload

ExecStop=/opt/nginx/nginx/sbin/nginx -s stop

PrivateTmp=true



[Install]

WantedBy=multi-user.target






#####################


systemctl stop firewalld.service

cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c
cat /proc/meminfo |grep MemTotal
cat /proc/cpuinfo |grep "cores"
https://nodejs.org/en/download/package-manager/
netstat –apn | grep 8080
http://download.redis.io/releases/redis-3.2.6.tar.gz
/etc/rc.d/rc.local
rpm -qa | grep openssl
rpm -ql  openssl-1.0.1e-51.el7_2.7.x86_64
 yum install readline-devel pcre-devel openssl-devel gcc



http://itindex.net/detail/51140-centos7-web-%E6%9C%8D%E5%8A%A1%E5%99%A8
http://www.ttlsa.com/nginx/nginx-configure-descriptions/

 systemctl stop firewalld.service #停止firewall
 systemctl disable firewalld.service #禁止firewall开机启动
禁止开启ping
    禁止
echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all
开启
echo 0 > /proc/sys/net/ipv4/icmp_echo_ignore_all
#永久保存
vi /etc/rc.d/rc.local
echo 1 >/proc/sys/net/ipv4/icmp_echo_ignore_all
https://github.com/nbs-system/naxsi

wget http://naxsi.googlecode.com/files/naxsi-core-0.50.tgz
https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/naxsi/naxsi-core-0.50.tgz
wget https://openresty.org/download/openresty-1.11.2.1.tar.gz
wget https://www.openssl.org/source/openssl-1.0.2j.tar.gz
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre2-10.22.tar.gz
wget http://zlib.net/zlib-1.2.8.tar.gz
wget https://nodejs.org/dist/v6.9.1/node-v6.9.1-linux-x64.tar.xz
yum -y install gcc automake autoconf lib tool make
yum install -y gcc gcc-c++
sudo yum install openssl
sudo yum install pcre
sudo yum install zlib


 sudo ./configure --prefix=/opt/nginx --with-luajit --without-http_redis2_module --with-http_iconv_module --with-openssl=/usr/local/ssl --with-pcre=/usr/local/pcre-8.38 --with-ipv6 --with-pcre-jit






./configure --prefix=/opt/nginx --add-module=../naxsi-0.54/naxsi_src/ \

--with-http_realip_module --with-luajit \

--without-http_redis2_module --with-http_iconv_module \

--with-openssl=/usr/local/openssl-1.0.2g --with-pcre=/usr/local/pcre-8.38 \

--with-ipv6 --with-pcre-jit --with-http_stub_status_module

# Disable IPv6
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
# Determines how often to check for stale neighbor entries.
net.ipv4.neigh.default.gc_stale_time=120
# Using arp_announce/arp_ignore to solve the ARP Problem
net.ipv4.conf.default.arp_announce = 2
net.ipv4.conf.all.arp_announce=2
vm.swappiness = 0
net.ipv4.tcp_max_tw_buckets = 5000
net.ipv4.tcp_max_syn_backlog = 1024
net.ipv4.tcp_synack_retries = 2
net.ipv4.conf.lo.arp_announce=2
net.ipv4.tcp_keepalive_time = 1800
net.ipv4.tcp_keepalive_probes = 3
net.ipv4.tcp_keepalive_intvl = 15
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_tw_recycle = 1
net.ipv4.tcp_fin_timeout = 30


yum install perl perl-devel
yum install samba samba-client samba-swat

./Configure -des -Dprefix=/usr/local/perl
./configure --prefix=/opt/nginx \
--with-openssl=../nginxlib/openssl-1.0.2j \
--with-pcre \
--with-pcre-jit \
--with-pcre=../nginxlib/pcre-8.39 \
--with-zlib=../nginxlib/zlib-1.2.8 \
--add-module=../nginxlib/nginx-http-concat \
--with-poll_module \
--with-threads \
--with-http_iconv_module \
--with-http_ssl_module \
--without-mail_pop3_module --without-mail_smtp_module --without-mail_imap_module \
--with-http_realip_module \
--with-http_flv_module --with-http_mp4_module \
--with-http_addition_module --with-http_sub_module \
--with-http_secure_link_module \
--with-http_auth_request_module --with-file-aio \
--with-http_degradation_module \
--with-http_dav_module \
--with-ipv6 \
--with-http_dav_module \
--with-http_perl_module \
--with-select_module \
--with-http_stub_status_module \
--without-http_redis2_module \
--with-http_gzip_static_module --with-cc-opt=-O2 -j4
gmake -j4

--add-module=../nginxlib/naxsi-0.55/naxsi_src \



uwsgi
--with-http_geoip_module \
--with-http_spdy3_module \
--with-http_access_module  \
--with-http_referer_module \
--with-rtsig_module \
--with-google_perftools_module \




--without-http_uwsgi_module \
--without-http_scgi_module \

 --with-luajit //单独编译



config={
	_id:"pictureWorks",members:[
	{_id:0,host:"127.0.0.1:1008"},
	{_id:1,host:"127.0.0.1:1009"},
	{_id:2,host:"127.0.0.1:1010"}
	]
};
rs.initiate(config);
rs.conf();
rs.status();
rs.isMaster();

/etc/vsftpd/vftpd.conf

http://www.osyunwei.com/archives/9006.html



tengine
http://www.lua.org/ftp/lua-5.1.5.tar.gz
yum install libtermcap-devel ncurses-devel libevent-devel readline-devel
/opt/tengine/sbin/nginx -s stop

/opt/tengine/sbin/nginx


--with-http_sysguard_module
ngx_http_concat_module

./configure --with-http_sub_module=http_sysguard_module
./configure --with-http_sysguard_module=shared
./configure --with-http_lua_module=shared
 make
make dso_install
  ps -ef | grep nginx
kill -9 23739


./configure --prefix=/opt/tengine \
--with-openssl=../nginxlib/openssl-1.0.2j \
--with-pcre \
--with-pcre-jit \
--with-pcre=../nginxlib/pcre-8.39 \
--with-zlib=../nginxlib/zlib-1.2.8 \
--add-module=../nginxlib/nginx-http-concat \
--with-poll_module \
--with-threads \
--with-http_sysguard_module



proxy_max_temp_file_size 2048m;
http://nginx.org/en/docs/http/ngx_http_core_module.html#sendfile


sudo rpm -Uvh /data/website/meteor/tingyun-agent-system-1.1.1.x86_64.rpm
sudo  /usr/local/bin/nbsys-config nbs.license_key=4117d9991d447c4015c1c42dc5a62d97
sudo service nbsysd start



db.getCollection('users').update({},{"$set":{"cart":{}}},{multi:true})
http://www.cnblogs.com/huligong1234/p/4163832.html
https://help.aliyun.com/knowledge_detail/41079.html?spm=5176.7842550.2.5.SzZdKB
https://help.aliyun.com/knowledge_detail/41559.html?spm=5176.7841090.2.5.xZ2N6W
https://help.aliyun.com/knowledge_detail/41000.html?spm=5176.7842558.2.5.0zcQJD
https://help.aliyun.com/knowledge_detail/42862.html?spm=5176.7841090.2.9.xZ2N6W Nginx 屏蔽 IP 方法概述
https://help.aliyun.com/knowledge_detail/41557.html?spm=5176.7841507.2.4.aLuw6s  Super Pi（super_pi）是很受欢迎的测试 CPU 的工具
https://help.aliyun.com/knowledge_detail/41225.html?spm=5176.7841174.2.2.LvF746 ECS Linux 系统的 CPU 持续跑高，


Cisco Catalyst 3650 系列交换机.pdf


sudo wget https://openresty.org/download/openresty-1.9.15.1.tar.gz
sudo wget https://www.openssl.org/source/old/1.0.2/openssl-1.0.2g.tar.gz
sudo ./config  shared zlib   --prefix=/usr/local/openssl-1.0.2g 
http://jingyan.baidu.com/article/466506583a085df548e5f841.html
sudo tar xzvf openresty-1.9.15.1.tar.gz 
http://io.upyun.com/2015/04/14/using-ngxlua-in-upyun/
sudo wget http://211.95.27.36/nginxcfg.zip
sudo wget http://211.95.27.36/4000.confcurl127.0.0.1

sudo unzip nginxcfg.zip
/usr/local/nginx/sbin/nginx -s stop
sudo /usr/local/nginx/sbin/nginx -s quit
/usr/local/nginx/sbin/nginx -s reload
add_header 'Access-Control-Allow-Origin' 'https://www.disneyphotopass.com.hk,http://www.disneyphotopass.com.hk';

sudo cp /home/clientadmin/meteor/nginxcfg/nginx.conf /opt/nginx/nginx/conf/nginx.conf
sudo mkdir /opt/nginx/nginx/lua
sudo mkdir /opt/nginx/nginx/conf/conf
sudo cp  -ri /home/clientadmin/meteor/nginxcfg/lua/* /opt/nginx/nginx/lua
sudo cp  -ri /home/clientadmin/meteor/nginxcfg/conf/* /opt/nginx/nginx/conf/conf
sudo /opt/nginx/nginx/sbin/nginx
sudo /opt/nginx/nginx/sbin/nginx -s reload
sudo /opt/nginx/nginx/sbin/nginx -s stop
sudo /opt/nginx/nginx/sbin/nginx -s quit
sudo yum install readline-devel pcre-devel openssl-devel perl
 Administrator/C0n5@Le#616
sudo yum install openssl
./configure --prefix=/opt/nginx --with-luajit  --with-echo-nginx-module --with-http_iconv_module
cd /home/clientadmin/meteor/openresty-1.9.15.1

 ps -ef | grep nginx
sudo ./configure --prefix=/opt/nginx --with-luajit --without-http_redis2_module --with-http_iconv_module --with-openssl=/usr/local/openssl-1.0.2g --with-pcre=/usr/local/pcre-8.38 --with-ipv6 --with-pcre-jit
sudo gmake
sudo gmake install
--with-http_realip_module
 sudo ./configure --prefix=/opt/nginx --with-luajit --without-http_redis2_module --with-http_iconv_module --with-openssl=/usr/local/ssl --with-pcre=/usr/local/pcre-8.38 --with-ipv6 --with-pcre-jit



./configure 
                 --with-pcre=../pcre-8.38 -j4


configure --prefix=/opt/openresty \
            --with-pcre-jit \
            --with-ipv6 \
            --without-http_redis2_module \
            --with-http_iconv_module \
            --with-http_postgres_module \
            -j2

##########



http://www.cnblogs.com/ikodota/archive/2012/03/05/php_redis_cn.html#key_EXPIREAT
211.95.27.36
http://stackoverflow.com/questions/8851425/android-exif-data-in-jpeg-file
http://www.sangfor.com.cn



 

https://docs.mongodb.com/manual/reference/read-preference/#nearest
ReadPreference.PRIMARY = 'primary';
ReadPreference.PRIMARY_PREFERRED = 'primaryPreferred';
ReadPreference.SECONDARY = 'secondary';
ReadPreference.SECONDARY_PREFERRED = 'secondaryPreferred';
ReadPreference.NEAREST = 'nearest'


https://docs.mongodb.com/manual/tutorial/force-member-to-be-primary/

cfg = rs.conf()
cfg.members[0].priority = 0.5
cfg.members[1].priority = 0.5
cfg.members[2].priority = 1
rs.reconfig(cfg)
db.adminCommand({replSetStepDown: 86400, force: 1})
rs.freeze(120)
rs.stepDown(120)
rs.slaveOk()
rs.syncFrom("hostname<:port>");
rs.status()  

rs.addArb("127.0.0.1:826")¶
https://docs.mongodb.com/manual/reference/replication/


--max-memory-restart 10240M --node-args="--harmony-generators" --watch
"%pm2nExeDir%\pm2" start "C:\xxxx\program\xxxx\bin\www" -i 3 -x  --max-memory-restart 10240M --node-args="--harmony-generators" --watch --name xxx 

"%pm2nExeDir%\pm2" start "C:\xxxx\program\xxxx\bin\www" -i 0 -x  --max-memory-restart 61440M --node-args="--harmony-generators" --watch --name xxxx 
cluster  & fork_mode

 


更新硬盘自动修改配置文件在windows电脑上调试


1、 redis 性能调优  https://www.ttlsa.com/redis/redis-configure-detail/
2、mongoldb 性能调优
3、mongoldb 复制集  分片

NTP服务器 http://jingyan.baidu.com/article/6f2f55a1814eadb5b93e6cbe.html

nodejs  自动化部署
1、备份之前的代码并拷贝到自己的Master NAS
2、自动修改新的代码的配置文件
3、拷贝新的代码
4、测试  
 
CaptianAmerica6r
DB 容灾：
redis 复制集
Mongodb 复制集
robocopy D:\SHDRconfig\assets\preset D:\SHDRconfig\assets\preset1  /e /xf engine.json /xd AdventureIsle /mir 
 

robocopy
windows netsh
keepalived
Iperf

NetMeter
networx
https://g2.wen.lu/
AutoHotkey
https://moonbingbing.gitbooks.io/openresty-best-practices/content/openresty/install_on_windows.html

https://help.aliyun.com/knowledge_detail/13070085.html?pos=14
http://www.ttlsa.com/nginx/nginx-tutorial-from-entry-to-the-master-ttlsa/
http://www.ttlsa.com/nginx/nginx-keepalived-proxy_cache/ 

mmc—-－打开控制台
cmd.exe–－CMD命令提示符
ipconfig /all 查看ip详细信息
mstsc–远程桌面连接
lusrmgr.msc–本机用户和组
regedit.exe–注册表
eventvwr–事件查看器
explorer–打开资源管理器
ping -ICMP包反馈探测
tracert - 路由跟踪测试
services.msc－－－本地服务设置
secpol.msc–－本地安全策略
ipconfig/flushdns - 清除dns缓存
netstat  - 网络相关信息
route print  -查询路由表


1、项目实战：zabbix安装前准备LNMP安装配置
http://11329413.blog.51cto.com/11319413/1845567

2、项目实战：LNMP环境下搭建zabbix3.04
http://11329413.blog.51cto.com/11319413/1846370

3、项目实战：zabbix分布式监控（阿里云zabbix-server 内网zabbix-proxy）
http://11329413.blog.51cto.com/11319413/1851030

4、项目实战：添加监控主机（监控服务器）
http://11329413.blog.51cto.com/11319413/1846775

5、项目实战：自定义监控监控CPU信息
http://11329413.blog.51cto.com/11319413/1852060

6、项目实战：自定义监控网卡出战和入站
http://11329413.blog.51cto.com/11319413/1852280

7、项目实战：监控Nginx状态、服务信息
http://11329413.blog.51cto.com/11319413/1852598

8、项目实战：监控MySQL状态、信息
http://11329413.blog.51cto.com/11319413/1852628


ffmpeg -i /Volumes/website/videos/advert/序列\ 07_1-1.mp4 -c:v libx264  -preset superfast -x264opts keyint=5 -acodec copy -f  mp4 /Volumes/website/videos/advert/advert.mp4 
