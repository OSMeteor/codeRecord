#!/usr/bin/expect
set password "!meteor1314"
set nodeUrl "http://nodejs.org/dist/v0.12.0/node-v0.12.0.tar.gz"
set nodeconfigPath "/home/node/0.12.0"
set nginxUrl "http://nginx.org/download/nginx-1.6.2.tar.gz"
set nginxconfigPath "/home/nginx/1.6.2"
set timeout 30
spawn ssh root@121.42.190.222
expect "password:"
send "${password}\n"
send "sudo apt-get apt-transport-https \n"
send "sudo apt-get install curl \n"
send "sudo apt-get install nvm \n"
send "sudo apt-get install python \n"
send "sudo apt-get install build-essential \n"
send "sudo apt-get install gcc \n"
send "sudo apt-get install g++ \n"

send "rm -f node-v0.12.0.tar.gz\n"
send "rm -rf node-v0.12.0\n"
send "wget ${nodeUrl}\n"
send "tar zxvf node-v0.12.0.tar.gz\n"
send "cd node-v0.12.0\n"
send "./configure --prefix=${nodeconfigPath}\n"
send "sudo make\n"
send "sudo make install\n"
send "sudo make install\n"
sudo "ln -sf ${nodeconfigPath}/bin/* /usr/bin/. \n"
# send "echo \"export PATH=$PATH:${nodeconfigPath}/bin\" >> ~/.bash_profile"
send "node -v\n"
send "npm -v\n"
send "which node\n"
send "sudo npm install -g n\n"

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
send "sudo apt-get install mysql-server -y \n"
send "sudo apt-get install mysql-client -y \n"
send "pgrep mysql \n"
#git
send "sudo apt-get install git -y \n"
send "sudo apt-get install git-core -y \n"
send "sudo git clone git://git.kernel.org/pub/scm/git/git.git \n"
# sudo groupadd developers
# cd /home/
# sudo mkdir git
# sudo useradd git -d /home/git
# developers:x:1003:git /etc/group
# sudo mkdir osmeteor.git
# sudo chgrp developers osmeteor.git
# sudo chmod g+rws osmeteor.git
# sudo git init --bare --shared osmeteor.git
#ssh submit
# sudo apt-get install openssh-server
# 免密码提交
# ssh-keygen -t rsa

#docker
send "sudo apt-get update \n"
send "sudo apt-get install docker.io -y \n"
send "sudo service docker.io status \n"
send "sudo service docker.io start -y \n"
send "ln -sf /usr/bin/docker.io /usr/local/bin/docker \n"
send "pgrep docker \n"
send "docker info \n"
# send "sudo apt-get install lxc-docker \n"
# sudo docker run -i -t ubuntu /bin/bash
# docker run ubuntu:14.04 /bin/echo 'Hello World'

# sudo docker pull busybox  小型 linux
# sample=$(docker run -d busybox /bin/sh -c "while true; do echo Docker;sleep 1;done")
# docker logs $sample
# docker stop $sample
# docker restart/stop $sample


# sudo brew install boot2docker docker

# send "wget ${nginxUrl}\n"
# send "tar zxvf nginx-1.6.2.tar.gz\n"
# send "./configure --prefix=${nginxconfigPath}\n"
# send "sudo make\n"
# send "sudo make install\n"
# send "${nodeUrl}\n"
interact


# ssh
# sudo apt-get install openssh-client -y
# sudo apt-get install openssh-server -y
    #!/bin/bash
#ssh root@121.40.181.64 -y
#send "echo 'Hello'"
#expect  echo "Hello World !"

