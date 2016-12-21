config={
_id:"pictureWorks",members:[
{_id:0,host:"127.0.0.1:828"},
{_id:1,host:"127.0.0.1:827"},
{_id:2,host:"127.0.0.1:826"}
// {_id:2,host:"127.0.0.1:4444"},
// {_id:3,host:"127.0.0.1:4444",arbiterOnly:true}, 
]
};
rs.initiate(config);
rs.conf();
rs.status();
rs.isMaster();
PictureAir mongoldb
db.createUser( {
    user: "root",
    pwd: "meteor",
    roles: [ { role: "root", db: "admin" }
    ]
  });


db.createUser(
   {
     user: "meteor_backup",
     pwd: "meteor_backup",
     roles: ["read"]
   }
)
db.createUser(
   {
     user: "meteor",
      pwd: "passw0rd",
     roles: ["read","readWrite","dbAdmin","userAdmin"]
   }
)
db.grantRolesToUser(
  "meteor",
   [
     { role: "clusterMonitor", db:"admin"}
   ]
)
db.createUser(
   {
     user: "meteor",
     pwd: "passw0rd",
     roles:
       [
         { role: "readWrite", db: "meteor" }
       ]
   },
  { w: "majority" , wtimeout: 5000 }
)
*************************************



config={
_id:"pictureWorks",members:[
{_id:0,host:"127.0.0.1:828"},
{_id:1,host:"127.0.0.1:827"},
{_id:2,host:"127.0.0.1:826"}
// {_id:2,host:"127.0.0.1:4444"},
// {_id:3,host:"127.0.0.1:4444",arbiterOnly:true},
]
};
rs.initiate(config);
rs.conf();
rs.status();
rs.isMaster();



db.dropUser("meteor");


db.createUser(
  {
    user: "admin",
    pwd: "admin",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" },
       { role: "dbOwner", db: "meteor" },
       { role: "read", db: "meteor" },
         { role: "readWrite", db: "meteor" },
         { role: "dbAdmin", db: "meteor" },
         { role: "userAdmin", db: "meteor" }
     ]
  }
)

db.createUser(
   {
     user: "meteor",
     pwd: "meteor",
     roles: [
         { role: "read", db: "meteor" },
         { role: "readWrite", db: "meteor" },
         { role: "dbAdmin", db: "meteor" },
         { role: "userAdmin", db: "meteor" },
          { role: "root", db: "admin" }
       ]
   }
)

db.createUser(
   {
     user: "pictureworks",
     pwd: "meteor",
     roles: ["read","readWrite","dbAdmin","userAdmin", "clusterAdmin","clusterManager","clusterMonitor","hostManager",
     "backup","restore",
     "readAnyDatabase"
     ,"readWriteAnyDatabase","userAdminAnyDatabase","dbAdminAnyDatabase"]
   }
)
db.createUser( {
    user: "root",
    pwd: "meteor",
    roles: [ { role: "root", db: "admin" }
    ]
  });
*************backup*******************
      "port": 828,
      "bport":827,
      "arbport":826,
      "dbName": "meteor",
      "user": "meteor",
      "pass": "meteor"
pictureAir
*******************************

// 备份使用

db.createUser(
   {
     user: "PW_backup",
     pwd: "PW_backup",
     roles: ["read"]
   }
)
db.createUser(
   {
     user: "meteor",
     pwd: "meteor",
     roles: ["read","readWrite","dbAdmin","userAdmin"]
   }
)
db.grantRolesToUser(
  "pictureworks",
   [
     { role: "clusterMonitor", db:"admin"}
   ]
)

db.createUser(
   {
     user: "meteor",
     pwd: "meteor",
     roles:
       [
         { role: "readWrite", db: "meteor" }
       ]
   },
  { w: "majority" , wtimeout: 5000 }
)

db.createUser(
   {
     user: "meteor",
     pwd: "meteor",
     roles:
       [
         { role: "readWrite", db: "meteor" }
       ]
   },
  { w: "majority" , wtimeout: 5000 }
)
db.createUser(
   {
     user: "meteor",
       pwd: "meteor",
     roles:
       [
         { role: "readWrite", db: "meteor" }
       ]
   },
  { w: "majority" , wtimeout: 5000 }
)
db.createUser(
   {
     user: "meteor",
      pwd: "meteor",
     roles:
       [
         { role: "readWrite", db: "meteor" }
       ]
   },
  { w: "majority" , wtimeout: 5000 }
)
db.createUser(
   {
     user: "meteor",
     pwd: "meteor",
     roles:
       [
         { role: "readWrite", db: "meteor" }
       ]
   },
  { w: "majority" , wtimeout: 5000 }
)
db.createUser(
   {
     user: "meteor",
     pwd: "meteor",
     roles:
       [
         { role: "readWrite", db: "meteor" }
       ]
   },
  { w: "majority" , wtimeout: 5000 }
)
db.createUser(
   {
     user: "shop",
     pwd: "meteor",
     roles:
       [
         { role: "readWrite", db: "meteor" }
       ]
   },
  { w: "majority" , wtimeout: 5000 }
)
db.createUser(
   {
     user: "reupload",
     pwd: "meteor",
     roles:
       [
         { role: "readWrite", db: "meteor" }
       ]
   },
  { w: "majority" , wtimeout: 5000 }
)
******************************************
sudo /usr/local/mongo/bin/mongoexport --port 27000 -u meteor -p pwd -d meteor -c tests -o /meteor/dbdata/tests.dat

netstat -anp |  grep CLOSE_WAIT | awk '{print $7}' | cut -d \/ -f1 | grep -oE "[[:digit:]]{1,}" | xargs kill

mongostat -h 127.0.0.1:27017 -u xxx -p xxx --authenticationDatabase xxx
*******************************************
http://mongodb.github.io/node-mongodb-native/2.2/api/Server.html
http://mongodb.github.io/node-mongodb-native/2.2/api/ReplSet.html


var opts = {
    server: {poolSize:5,auto_reconnect: true,native_parser:true
       },
 db:{native_parser:true,strategy: 'ping',readPreference:"nearest",bufferMaxEntries:5

},
replset:{strategy: 'ping',replicaSet:"rs_name",connectWithNoPrimary:true}
};
,socketOptions:{keepAlive:1}

{"name":"MongoError","message":"server 127.0.0.1:828 sockets closed"}

{
          "server": {"native_parser":true,"poolSize":5,"auto_reconnect": true,"socketOptions":{"keepAlive":1},"reconnectTries":30,"haInterval":1000
},
 "db":{"native_parser":true,"strategy": "ping","readPreference":"nearest","bufferMaxEntries":5},
"replset":{"rs_name":"rs_name","readPreference":"nearest","strategy":"ping","poolSize":5,"connectWithNoPrimary":true,"haInterval":1000
}
   }
db.getCollection('photos').find({"locationId":"rb1", "isFree" : false,"shootOn" : {$gte: new Date("2016/07/26 00:00:00"),$lt: new Date("2016/07/26 23:59:59")}}).sort({_id:-1}).count()
 db.photos.remove({"shootOn" : {$gte: new Date("2015/08/03 00:00:00"), $lt: new Date("2015/08/05 17:57:55")}})



          "server": {"poolSize":5,"auto_reconnect": true,"native_parser":true,"socketOptions":{"keepAlive":1},"readPreference":"primaryPreferred","strategy":"ping"},
 "db":{"native_parser":true,"strategy": "ping","readPreference":"nearest","bufferMaxEntries":5},
"replset":{"rs_name":"rs_name","readPreference":"nearest","strategy":"ping"}





var opts = {
          "server": {"native_parser":true,"poolSize":5,"auto_reconnect": true,"socketOptions":{"keepAlive":1},"reconnectTries":30,"haInterval":1000
},
 "db":{"native_parser":true,"strategy": "ping","readPreference":"nearest","bufferMaxEntries":5},
"replset":{"rs_name":"rs_name","readPreference":"nearest","strategy":"ping","poolSize":5,"connectWithNoPrimary":true,"haInterval":1000
}
   };


 db.on('error', function(error) {
    db.close();
 	 console.warn("errrr");
 });
db.on('reconnected',function(){
     console.warn('reconnected:'+connectStr)
 });
db.getCollection('photos').ensureIndex({_id:1})

使用db.serverStatus().connections查看连接数:

db.repaireDatabase()

mongotop --port 828
mongotop --port 828 10
mongotop --port 828 10 --locks

move e:\backup\mt1*.jpg e:\source\



use admin
db.runCommand( { replSetGetStatus : 1 } )
db.runCommand( { "connPoolStats" : 1 } )
db.runCommand( { w:true,j:true, } )
{ w: <value>, j: <boolean>, wtimeout: <number> }
https://docs.mongodb.com/manual/reference/program/mongooplog/
db.runCommand({ setParameter : 1, connPoolTimeout : 900 })


https://mongodb.github.io/node-mongodb-native/driver-articles/mongoclient.html
https://technet.microsoft.com/en-us/library/hh826123.aspx
http://wkillcx.sourceforge.net/
http://www.virtualizationhowto.com/2014/10/viewing-killing-tcp-ip-connections-windows/#prettyPhoto

连接数偏高


db.adminCommand({shutdown : 1, force : true})
db.adminCommand({shutdown : 1, timeoutSecs : 5})
db.shutdownServer({timeoutSecs : 5})
use admin
db.runCommand({ setParameter : 1, connPoolTimeout : 900 })
{ "was" : 1800, "ok" : 1 }
db.runCommand({ setParameter : 1, releaseConnectionsAfterResponse : true })


db.runCommand( { replSetGetStatus : 1 } )


Stop a secondary.

In the mongo shell, shut down the mongod instance:

rs.freeze(120)
use admin

rs.stepDown(120)
db.shutdownServer()
NET works>>>>>>>>>>>>>>>>>>>>>>>>

rs.addArb("127.0.0.1:826")¶
rs.reconfig(cfg,{force:true})
netstat -ano -p tcp
netstat -ano | find "ESTABLISHED"
tasklist | find "4288"

http://www.cnblogs.com/fczjuever/archive/2013/04/05/3000697.html

http://www.oschina.net/question/5189_14543

http://blog.miniasp.com/post/2010/11/17/How-to-deal-with-TIME_WAIT-problem-under-Windows.aspx

https://technet.microsoft.com/en-us/sysinternals/bb795532

http://serverfault.com/questions/193160/which-is-the-default-tcp-connect-timeout-in-windows

https://technet.microsoft.com/en-us/library/hh826123.aspx

http://kerry.blog.51cto.com/172631/105233

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TCPWindowSize" /t REG_DWORD /d 62420 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TCP1323Opts" /t REG_DWORD /d 1 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d 8192 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "EnableDynamicBacklog" /t REG_DWORD /d 1 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "MinimumDynamicBacklog" /t REG_DWORD /d 128 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "MaximumDynamicBacklog" /t REG_DWORD /d 2048 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "DynamicBacklogGrowthDelta" /t REG_DWORD /d 128 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TCPIP\Parameters" /v "KeepAliveTime" /t REG_DWORD /d 1800000 /f

----reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TCPIP\Parameters" /v "KeepAliveInterval" /t REG_DWORD /d 1000 /f

TcpAckFrequency

浏览至HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TCPIP\Parameters\Interfaces\xx（xx由网络适配器决定）注册表子键，在xx子键下创建或修改名为TcpAckFrequency的REG_DWORD值，该值的范围是从1到13，缺省值为2，根据希望每发送几个分段返回一个应答而设置该值，建议百兆网络设为5，千兆网络设为13。









http://blog.miniasp.com/post/2010/11/17/How-to-deal-with-TIME_WAIT-problem-under-Windows.aspx

http://www.cnblogs.com/fczjuever/archive/2013/04/05/3000697.html

https://docs.mongodb.com/v3.0/tutorial/configure-windows-netsh-firewall/



@echo off&setlocal enabledelayedexpansion

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TCPWindowSize" /t REG_DWORD /d 62420 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TCP1323Opts" /t REG_DWORD /d 1 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d 8192 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "EnableDynamicBacklog" /t REG_DWORD /d 1 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "MinimumDynamicBacklog" /t REG_DWORD /d 128 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "MaximumDynamicBacklog" /t REG_DWORD /d 2048 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\AFD\Parameters" /v "DynamicBacklogGrowthDelta" /t REG_DWORD /d 128 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TCPIP\Parameters" /v "KeepAliveTime" /t REG_DWORD /d 300000 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TCPIP\Parameters" /v "KeepAliveInterval" /t REG_DWORD /d 1000 /f

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\TCPIP\Parameters" /v "TcpMaxConnectRetransmisstions" /t REG_DWORD /d 5 /f



echo "add all ....";


pause





function killall(ns, wet_run) {
    ns = (typeof (ns) != 'undefined') ? ns : "";
    inprog = db.currentOp().inprog;
    for (var i in inprog) {
        var op = inprog[i];
     printjsononeline(op);
        if (op.ns.indexOf(ns) != -1) {
            if (wet_run == true) {
                db.killOp(op.opid);
            } else {
                var toprint = {}
                toprint.opid = op.opid;
                toprint.secs_running = op.secs_running;
                toprint.client = op.client;
                printjsononeline(toprint);
            }
        }
    }
}



db.getCollection('photos').aggregate( [
{

$match : { "shootOn" : { $gt : ISODate("2016-05-18T11:38:02.000Z"),$lte : ISODate("2016-07-18T11:38:02.000Z") } },
 $group:  { locationId:""}


 { $group : {
        _id : { "MyUser": "$User" }
       TotalCount : { $sum : "$Count" }
       }
}


  /*$project : {_id : -1 ,storageServerIP : 1 , customerIds:1,  locationId:1,  tagBy:1, tokenBy:1 }*/
}
] )




pac4.1.17

更新时间: 2016/06/01

版本信息:

               versionCode="4"

               versionName=“4.1.17"

               size：2.85MB

更新内容:

               1）优化FTP上传
               
db.copyDatabase("xxx","xxx","127.0.0.1:27017");

Redis
redis-cli -h 127.0.0.1 -p 6379 shutdown  关闭
redis-cli keys "*" | xargs redis-cli del 删除所有key
