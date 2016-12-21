#!/usr/bin/expect
set password "PWD"
set nodeUrl "http://nodejs.org/dist/v0.12.0/node-v0.12.0.tar.gz"
set nodeconfigPath "/home/node/0.12.0"
set nginxUrl "http://nginx.org/download/nginx-1.6.2.tar.gz"
set nginxconfigPath "/home/nginx/1.6.2"
/home/node/0.8.8
./configure --prefix=/home/node/0.8.8
ln -sf /home/node/0.8.8/bin/* /usr/bin/.
./configure --prefix=/home/node/5.0.0
./configure --prefix=/home/node/0.10.31
./configure --prefix=/home/node/0.12.0
ln -sf /home/node/0.12.0/bin/* /usr/bin/.
set timeout 30
spawn ssh root@121.40.181.64
expect "password:"
send "${password}\n"
send "sudo apt-get apt-transport-https \n"
send "sudo apt-get install python \n"
send "sudo apt-get install build-essential -y\n"
send "sudo apt-get install gcc \n"ls'
send "sudo apt-get install g++ \n"
send "rm -f node-v0.12.0.tar.gz\n"
send "rm -rf node-v0.12.0\n"
send "wget ${nodeUrl}\n"
send "tar zxvf node-v0.12.0.tar.gz\n"
send "cd node-v0.12.0\n"
send "./configure --prefix=${nodeconfigPath}\n"
send "sudo make\n"
send "sudo make install\n"
sudo "ln -sf ${nodeconfigPath}/bin/* /usr/bin/. \n"
# send "echo \"export PATH=$PATH:${nodeconfigPath}/bin\" >> ~/.bash_profile"
send "node -v\n"
send "npm -v\n"
send "which node\n"
# FTP
send "sudo apt-get install gedit -y \n"
send "sudo apt-get install vsftpd \n"
send "sudo mkdir /home/ftp \n"
send "sudo mkdir /home/ftp/upload \n"
send "sudo mkdir /home/ftp/download \n"
send "sudo chmod 755 /home/ftp \n"
send "sudo chmod 777 /home/ftp/upload \n"
send "sudo chmod 755 /home/ftp/download \n"
send "sudo service vsftpd stop \n"
send "sudo service vsftpd start \n"
send "pgrep vsftpd \n"
send "ls\n"
#nginx
send "sudo apt-get install libpcre3 \n"
send "sudo apt-get install libpcre3-dev \n"
send "sudo apt-get install libpcrecpp0 \n"
send "sudo apt-get install libssl-dev \n"
send "sudo apt-get install zlib1g-dev \n"
send "sudo apt-get install nginx \n"
#redis
send "sudo apt-get install redis-server -y\n"
send "pgrep redis \n"
#mongodb
send "sudo apt-get install mongodb -y\n"
send "pgrep mongo \n"
#mysql
#send "sudo apt-get install mysql-server -y \n"
#send "sudo apt-get install mysql-client -y \n"
#send "pgrep mysql \n"
# send "wget ${nginxUrl}\n"
# send "tar zxvf nginx-1.6.2.tar.gz\n"
# send "./configure --prefix=${nginxconfigPath}\n"
# send "sudo make\n"
# send "sudo make install\n"
# send "${nodeUrl}\n"
interact
    #!/bin/bash
#ssh root@121.40.181.64 -y
#send "echo 'Hello'"
#expect  echo "Hello World !"

