#!/usr/bin/expect  
set password "Meteor1314" 
set timeout 30 
spawn ssh azureuser@ubuntu15-4.cloudapp.net
expect "password:"
send "${password}\n" 

#init 
send "sudo apt-get apt-transport-https \n"
send "sudo apt-get install curl \n"
send "sudo apt-get install nvm \n"
send "sudo apt-get install python \n"
send "sudo apt-get install build-essential \n"
send "sudo apt-get install gcc \n"
send "sudo apt-get install g++ \n"

#git
send "sudo apt-get install git -y \n"
send "sudo apt-get install git-core -y \n"
send "sudo git clone git://git.kernel.org/pub/scm/git/git.git \n"
 #docker
send "sudo apt-get update \n"
send "sudo apt-get upgrade -y \n"\
send "sudo apt-get install docker.io -y \n"
send "sudo service docker.io status \n"
send "sudo service docker.io start -y \n"
send "ln -sf /usr/bin/docker.io /usr/local/bin/docker \n"
send "pgrep docker \n"
send "docker info \n"
#nginx
send "sudo apt-get install libpcre3 \n"
send "sudo apt-get install libpcre3-dev \n"
send "sudo apt-get install libpcrecpp0 \n"
send "sudo apt-get install libssl-dev \n"
send "sudo apt-get install zlib1g-dev \n"
send "sudo apt-get install nginx \n"
interact
 

