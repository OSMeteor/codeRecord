#!/bin/sh
#redis-server &
redis-server /usr/local/etc/redis6380.conf &
nginx &
node -v &

# redis-server 单独开6379  停止用control +c 停止程序重启


# node 要开启的程序 都单独开命令行工具
# node /Users/jhloke/pictureAirServer/watchMongodb 
# node /Users/jhloke/pictureAirServer/pictureEngineAPI 
# node /Users/jhloke/pictureAirServer/Messaging/bin/www 
# node /Users/jhloke/pictureAirServer/pictureAir.com/source/app.js 
# node 要开启的程序








#----------------这里不需要启动了--------------------

# mongorestore -d pictureAir --port 27017  /Users/jhloke/pictureAirServer/pictureAirData20150701 --drop
# mongodump -d pictureAir2 -o /Users/jhloke/pictureAirServer/
# db.copyDatabase("pictureAir","pictureAir2","192.168.8.3:27017");
















#-----------------------------------------------
# start nginx cmd: sudo nginx 
# kill nginx  cmd: sudo pkill nginx
# start redis cmd: sudo redis-server
# kill  redis cmd: sudo pkill redis
# start redis6380 cmd: redis-server /usr/local/etc/redis6380.conf
# kill  redis6380 cmd: sudo pkill redis

# sudo chmod －R 755/Users/jhloke/pictureAirServer/website

# node /Users/jhloke/pictureAirServer/watchMongodb &
# node /Users/jhloke/pictureAirServer/pictureEngineAPI &
# node /Users/jhloke/pictureAirServer/Messaging/bin/www & 
# node /Users/jhloke/pictureAirServer/pictureAir.com/source/app.js &
# mongorestore -d pictureAir --port 27017  /Users/jhloke/pictureAirServer/pictureAirData20150701 --drop
# mongodump -d pictureAir2 -o /Users/jhloke/pictureAirServer/
# db.copyDatabase("pictureAir","pictureAir2","192.168.8.3:27017");