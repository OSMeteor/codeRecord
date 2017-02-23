###nodejs [strong-loop](https://apidocs.strongloop.com/)
---
strong-loop  strat on 

- [Strongloop Node 1.0 GA --Node.js v0.10.7](http://www.infoq.com/cn/news/2013/05/strongloop-node/)
- [单台部署](https://docs.strongloop.com/display/SLC/Clustering)
- [多台部署](https://docs.strongloop.com/display/SLC/Scaling+to+multiple+servers)
- [apidoc](http://apidocs.strongloop.com/)
- loopback-component-oauth2
validate
GeoPoint
REST

AccessToken

https://docs.strongloop.com/pages/viewpage.action?pageId=10879061

STOMP简单(流)文本定向消息协议
MQTT即时通讯协议  [mosquitto](https://github.com/strongloop/strong-pubsub-example)
strong-pubsub-redis
https://www.npmjs.com/package/strong-pubsub-redis

strong-loop 自己实现了一个内存数据库

- 排除DB以为的连接器http://loopback.io//doc/en/lb3/Other-connectors.html
email,rpc,IBM MQ Light,push->datasources.json,remote,rest,soap,storage(文件交互系统),Swagger(api生成)
- passportjs
- eg [Remote REST SOAP ](https://github.com/strongloop-community/loopback-example-connector)
- https://github.com/strongloop/loopback-component-push https://github.com/strongloop/loopback-component-push
https://github.com/strongloop/loopback-component-push
yeoman


-DB   Multi-database ORM https://github.com/1602/jugglingdb

-remotes 
	* [Hooks](http://loopback.io/doc/en/lb2/Operation-hooks.html)
		* access  before  after
- android SDK 
- ios SDK
- angularjs SDK
- OAuth2.0
- Access control
- [Routing](http://loopback.io/doc/en/lb2/Routing.html)
- [boot scripts](http://loopback.io/doc/en/lb2/Defining-boot-scripts.html)
- [Add-a-static-web-page.html](http://loopback.io/doc/en/lb2/Add-a-static-web-page.html)
- [Add-a-custom-Express-route](http://loopback.io/doc/en/lb2/Add-a-custom-Express-route.html)



```
http://loopback.io/doc/en/lb2/Environment-specific-configuration.html
    server/config.json.
    server/config.local.json or server/config.local.js. 
    server/datasources.json
    server/datasources.local.json or server/datasources.local.js
    server/model-config.json
    server/model-config.local.json or server/model-config.local.js
    server/middleware.json
    server/middleware.local.json or server/middleware.local.js
    server/component-config.json
    server/component-config.local.json or server/component-config.local.js
    
NODE_ENV
process.env.MY_CUSTOM_VAR
_env_ -->development,production
    server/config.{_env_}.json/js
    server/datasources.{_env_}.json/js
    server/model-config.{_env_}.json/js
    server/middleware.{_env_}.json/js
    server/component-config.{_env_}.json/js 
var p = require('../package.json');
var version = p.version.split('.').shift();
module.exports = {
  restApiRoot: '/api' + (version > 0 ? '/v' + version : ''),
  host: process.env.HOST || 'localhost',
  port: process.env.PORT || 3000
};

GET http://localhost:3000/api/v2/Users
[项目文件结构描述](http://loopback.io/doc/en/lb2/Standard-project-structure.html)
definitions
http://loopback.io/doc/en/lb2/Tutorials-and-examples.html
http://loopback.io/doc/en/lb2/AccessToken-invalidation.html
"logoutSessionsOnSensitiveChanges": true, 禁用AccessToken
[authentication](http://loopback.io/doc/en/lb2/Authentication-authorization-and-permissions.html)

    guest
    owner
    team member
    administrator

```
http://loopback.io/doc/en/lb2/Building-a-connector.html#overview
http://loopback.io/doc/en/lb2/BelongsTo-relations.html
[](http://loopback.io/doc/en/lb2/Connecting-models-to-data-sources.html)

[model frist](http://loopback.io/doc/en/lb2/Creating-a-database-schema-from-models.html)
[db frist]()
```
Auto-migrate 根据模型自动创建表结构
Auto-update 根据模型自动更新表结构
mysql不会自动创建数据库，必须手动创建
```
 

[Using-database-transactions](loopback.io/doc/en/lb2/Using-database-transactions.html#transaction-apis) 只支持关系型数据库
   hooks before commit
    after commit
    before rollback
    after rollback
    timeout
    Executing native SQL(2.x 3.x 都未测试)
[Realtime server-sent events](http://loopback.io/doc/en/lb3/Realtime-server-sent-events.html)

[angular-live-set](https://github.com/strongloop/loopback-example-angular-live-set)
using socket.io
[DEBUG=loopback:datasource node .](http://loopback.io/doc/en/lb3/Setting-debug-strings.html)
[Tutorials-and-examples](http://loopback.io/doc/en/lb2/Tutorials-and-examples.html)
