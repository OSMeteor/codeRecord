#!/usr/bin/expect
set password "!meteor1314"
set nodeUrl "http://nodejs.org/dist/v4.0.0/node-v4.0.0.tar.gz"
set nodeconfigPath "/home/node/v4.0.0"
set nginxUrl "http://nginx.org/download/nginx-1.8.1.tar.gz"
set nginxconfigPath "/home/nginx/1.6.2"
set timeout 30
spawn ssh root@121.42.190.222
expect "password:"
send "${password}\n"
send "echo \"hell    \""


http://download.redis.io/releases/redis-3.0.7.tar.gz

sudo tar zxvf

./configure --prefix=/home/node/4.0.0
sudo make
sudo make install

sudo ln -sf /home/node/4.0.0/bin/* /usr/bin/.
echo \"export PATH=$PATH:/home/node/4.0.0/bin\" >> ~/.bash_profile

./configure --prefix=/home/nginx/1.8.1
