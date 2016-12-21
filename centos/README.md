tar -czf
VPN type: L2TP
http://www.oneapm.com/
pm2 start log.io-server --name log.io-server
pm2 start log.io-harvester --name log.io-harvester
pm2 start /data/website/pictureAirAPIDOC/gitbook.sh -x --interpreter bash --name gitbook
pm2 start index.js  --name XXX
ps -ef | grep nginx
ssh-add ~/.ssh/my_other_key
