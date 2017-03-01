 docker run -i -t -p 80:80 -p 22:22  ubuntu   /bin/bash 
 
docker run --name gitlab -d \
    --link gitlab-postgresql:postgresql --link gitlab-redis:redisio \
    --publish 10022:22 --publish 10080:80 \
    --env 'GITLAB_PORT=10080' --env 'GITLAB_SSH_PORT=10022' \
    --env 'GITLAB_SECRETS_DB_KEY_BASE=long-and-random-alpha-numeric-string' \
    --volume /srv/docker/gitlab/gitlab:/home/git/data \
    sameersbn/gitlab:8.0.2
    
docker run --name dockerUbuntu14.4.3 -d  --publish 10022:22 --publish 10080:80  --volume /srv/docker/gitlab/gitlab:/home/git/data ubuntu
     
 sudo docker attach evil_carson
docker build -t centos7test . 
docker run --name test -i -t centos7-ansible-base /bin/bash 
docker run -i -t centos7test /bin/bash
docker build -t centos7test1 . 


docker run -i -t daocloud.io/centos:7 /bin/bash

docker rmi imageName


docker rm $(docker ps -a -q)
docker kill $(docker ps -a -q)
创建自定义网络
docker network create --subnet=172.18.0.0/16 shadownet  /8掩码是A类，/16掩码是B类,/24掩码是C类
docker network create -d bridge --subnet 172.1.0.0/16 mynet

docker run -d -p 2001:2001 --net shadownet --ip 172.18.0.10 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 2001 -k 123456 -m aes-256-cfb
iptables -t nat -I POSTROUTING -o eth0 -d  0.0.0.0/0 -s 172.18.0.10  -j SNAT --to-source 104.232.36.109
docker build -t centos7-ansible-base0.1 . 

docker run --name test5  --net mynet --ip 172.1.0.5  -i -t centos7-ansible-base0.1 /bin/bash


docker run --name test5 -i -t --net mynet --ip 172.1.0.5 centos7-ansible-base0.1 /bin/bash 


docker run -d --name test5  -h test5 -i -t  centos7-ansible-base0.1 /bin/bash
172.16.20.16
网络
docker exec -ti test5  /bin/bash

docker network inspect mynet
docker network inspect bridge

docker network connect mynet  bridge

docker network inspect shadownet
docker network rm shadownet 


docker build -t centos7-ansible-base .
docker build -t osmeteor/centos7-ansible-base .
