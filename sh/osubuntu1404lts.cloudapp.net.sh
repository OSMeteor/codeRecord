#!/usr/bin/expect  
set password "Meteor1314" 
set timeout 3000 
spawn ssh azureuser@osubuntu1404lts.cloudapp.net
expect "password:"
send "${password}\n" 
#init 
send "sudo apt-get apt-transport-https \n"
send "sudo apt-get install curl \n"
send "sudo apt-get install nvm \n"
send "sudo apt-get install python \n"
send "sudo apt-get install build-essential -y \n"
send "sudo apt-get install gcc -y \n"
send "sudo apt-get install g++ -y \n"
#git
send "sudo apt-get install git -y \n"
send "sudo apt-get install git-core -y \n"
send "sudo git clone git://git.kernel.org/pub/scm/git/git.git \n"
 #docker
send "sudo apt-get update -y \n"
send "sudo apt-get upgrade -y \n" 
send "sudo apt-get install docker.io -y \n"
send "sudo service docker.io status \n"
send "sudo service docker.io start \n"
send "sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker \n"
send "sudo pgrep docker \n"
send "sudo docker info \n"
#nginx
send "sudo apt-get install libpcre3 -y \n"
send "sudo apt-get install libpcre3-dev -y \n"
send "sudo apt-get install libpcrecpp0 -y \n"
send "sudo apt-get install libssl-dev -y \n"
send "sudo apt-get install zlib1g-dev -y \n"
send "sudo apt-get install nginx -y \n"
interact
 

