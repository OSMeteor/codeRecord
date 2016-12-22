@echo off
title AutoStartMoongoDB Dont close
:begin
echo AutoStartMoongoDB...begin
net start mongodb826
net start mongodb
net start mongodb827
echo AutoStartMoongoDB...end
ping -n 5 127.1>nul
goto begin




@echo off&setlocal enabledelayedexpansion
set mongdoBinExeDir=C:\Program Files\MongoDB\Server\3.2\bin
set mongdoBinDBDir=%~dp0db
//set timestring=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
set timestring=%date:~0,4%%date:~5,2%%date:~8,2%%hour%
::echo %timestring%
"%mongdoBinExeDir%\mongodump.exe" -h pictureWorks/127.0.0.1:828,127.0.0.1:827 -d pictureAir -o "%mongdoBinDBDir%\%timestring%"



@echo off&setlocal enabledelayedexpansion
title mongoexport
set mongdoBinExeDir=C:\Program Files\MongoDB\Server\3.2\bin
set mongdoBinDBDir=%~dp0
set TableName=parks
set port=825
set dbName=pictureAir
::"%mongdoBinExeDir%\mongoexport.exe" --port %port% -d %dbName% -c photos  --query  "{ extractOn: { $lt: new Date(1478707200000) , $gte: new Date(1478620800000)} }" -o %mongdoBinDBDir%dataQ\photos20161109.dat
"%mongdoBinExeDir%\mongoexport.exe" --port %port% -d %dbName% -c photos  --query  "{ extractOn: { $lt: new Date(1475596800000) , $gte: new Date(1475510400000)} }" -o %mongdoBinDBDir%dataQ\photos20161004.dat
"%mongdoBinExeDir%\mongoexport.exe" --port %port% -d %dbName% -c photos  --query  "{ extractOn: { $lt: new Date(1475510400000) , $gte: new Date(1475424000000)} }" -o %mongdoBinDBDir%dataQ\photos20161003.dat
"%mongdoBinExeDir%\mongoexport.exe" --port %port% -d %dbName% -c photos  --query  "{ extractOn: { $lt: new Date(1475424000000) , $gte: new Date(1475337600000)} }" -o %mongdoBinDBDir%dataQ\photos20161002.dat
"%mongdoBinExeDir%\mongoexport.exe" --port %port% -d %dbName% -c photos  --query  "{ extractOn: { $lt: new Date(1475337600000) , $gte: new Date(1475251200000)} }" -o %mongdoBinDBDir%dataQ\photos20161001.dat
"%mongdoBinExeDir%\mongoexport.exe" --port %port% -d %dbName% -c photos  --query  "{ extractOn: { $lt: new Date(1475251200000) , $gte: new Date(1475164800000)} }" -o %mongdoBinDBDir%dataQ\photos20160930.dat
pause



*********************************

@echo off&setlocal enabledelayedexpansion
set mongdoBinExeDir=C:\Program Files\MongoDB\Server\3.2\bin
set mongdoBinDBDir=%~dp0
set mongdoBinDBDir2=%~dp0
set "mongdoBinDBDir2=%mongdoBinDBDir2:\=\\%"
:intercept
if "%mongdoBinDBDir2:~-1%"==" " set "mongdoBinDBDir2=%mongdoBinDBDir2:~0,-1%"&goto intercept
cd "%mongdoBinExeDir%"
echo systemLog:>%~dp0mongodb.cfg
echo %1    verbosity: 0 >>%~dp0mongodb.cfg
echo %1    quiet: true >>%~dp0mongodb.cfg
echo %1    traceAllExceptions: true >>%~dp0mongodb.cfg
echo %1    logRotate: "rename" >>%~dp0mongodb.cfg
echo %1    destination: file >>%~dp0mongodb.cfg
echo %1    path: "%mongdoBinDBDir2%logs\\Mongodb.log" >>%~dp0mongodb.cfg
echo %1    logAppend: true >>%~dp0mongodb.cfg
echo %1    timeStampFormat: "iso8601-local" >>%~dp0mongodb.cfg
echo %1    component: >>%~dp0mongodb.cfg
echo %1       accessControl: >>%~dp0mongodb.cfg
echo %1          verbosity: 0 >>%~dp0mongodb.cfg
echo %1       command: >>%~dp0mongodb.cfg
echo %1          verbosity: 0 >>%~dp0mongodb.cfg
echo %1       control: >>%~dp0mongodb.cfg
echo %1          verbosity: 0 >>%~dp0mongodb.cfg
echo %1       geo: >>%~dp0mongodb.cfg
echo %1          verbosity: 0 >>%~dp0mongodb.cfg
echo %1       index: >>%~dp0mongodb.cfg
echo %1          verbosity: 0 >>%~dp0mongodb.cfg
echo %1       network: >>%~dp0mongodb.cfg
echo %1          verbosity: 0 >>%~dp0mongodb.cfg
echo %1       query: >>%~dp0mongodb.cfg
echo %1          verbosity: 0 >>%~dp0mongodb.cfg
echo %1       replication: >>%~dp0mongodb.cfg
echo %1          verbosity: 0 >>%~dp0mongodb.cfg
echo %1       sharding: >>%~dp0mongodb.cfg
echo %1          verbosity: 0 >>%~dp0mongodb.cfg
echo %1       storage: >>%~dp0mongodb.cfg
echo %1          verbosity: 0 >>%~dp0mongodb.cfg
echo %1net: >>%~dp0mongodb.cfg
echo %1   port: 828 >>%~dp0mongodb.cfg
echo %1#   bindIp: 127.0.0.1 >>%~dp0mongodb.cfg
echo %1   maxIncomingConnections: 65536>>%~dp0mongodb.cfg
echo %1   wireObjectCheck: true >>%~dp0mongodb.cfg
echo %1   ipv6: false >>%~dp0mongodb.cfg
echo %1   http: >>%~dp0mongodb.cfg
echo %1      enabled: false >>%~dp0mongodb.cfg
echo %1      JSONPEnabled: false >>%~dp0mongodb.cfg
echo %1      RESTInterfaceEnabled: false >>%~dp0mongodb.cfg
echo %1security: >>%~dp0mongodb.cfg
echo %1   authorization: disabled # enabled disabled >>%~dp0mongodb.cfg
echo %1   javascriptEnabled:  true >>%~dp0mongodb.cfg
echo %1setParameter: >>%~dp0mongodb.cfg
echo %1   enableLocalhostAuthBypass: false >>%~dp0mongodb.cfg
echo %1storage: >>%~dp0mongodb.cfg
echo %1   dbPath: "%mongdoBinDBDir2%data"  >>%~dp0mongodb.cfg
echo %1   indexBuildRetry: true >>%~dp0mongodb.cfg
echo %1   repairPath: "%mongdoBinDBDir2%data" >>%~dp0mongodb.cfg
echo %1   journal: >>%~dp0mongodb.cfg
echo %1      enabled: true #true on 64-bit systems, false on 32-bit systems >>%~dp0mongodb.cfg
echo %1      commitIntervalMs: 100 >>%~dp0mongodb.cfg
echo %1   directoryPerDB: false >>%~dp0mongodb.cfg
echo %1   syncPeriodSecs: 60 >>%~dp0mongodb.cfg
echo %1   engine: "wiredTiger" >>%~dp0mongodb.cfg
echo %1   mmapv1:  >>%~dp0mongodb.cfg
echo %1      nsSize: 16 >>%~dp0mongodb.cfg
echo %1      quota: >>%~dp0mongodb.cfg
echo %1         enforced: false >>%~dp0mongodb.cfg
echo %1         maxFilesPerDB: 8 >>%~dp0mongodb.cfg
echo %1      smallFiles: false >>%~dp0mongodb.cfg
echo %1      journal: >>%~dp0mongodb.cfg
echo %1         debugFlags: 0  >>%~dp0mongodb.cfg
echo %1   wiredTiger: >>%~dp0mongodb.cfg
echo %1      engineConfig: >>%~dp0mongodb.cfg
echo %1         cacheSizeGB: 5000 >>%~dp0mongodb.cfg
echo %1         statisticsLogDelaySecs: 0 >>%~dp0mongodb.cfg
echo %1         journalCompressor: "snappy" #none snappy zlib >>%~dp0mongodb.cfg
echo %1         directoryForIndexes: false >>%~dp0mongodb.cfg
echo %1      collectionConfig: >>%~dp0mongodb.cfg
echo %1         blockCompressor: "snappy" >>%~dp0mongodb.cfg
echo %1      indexConfig: >>%~dp0mongodb.cfg
echo %1         prefixCompression: true >>%~dp0mongodb.cfg
echo %1operationProfiling: >>%~dp0mongodb.cfg
echo %1   slowOpThresholdMs: 100 >>%~dp0mongodb.cfg
echo %1   mode: "off" >>%~dp0mongodb.cfg
echo %1replication: >>%~dp0mongodb.cfg
echo %1   secondaryIndexPrefetch: "all" >>%~dp0mongodb.cfg
echo %1   enableMajorityReadConcern: false >>%~dp0mongodb.cfg
echo %1sharding: >>%~dp0mongodb.cfg
echo %1    archiveMovedChunks: false >>%~dp0mongodb.cfg
echo %1processManagement: >>%~dp0mongodb.cfg
echo %1   windowsService: >>%~dp0mongodb.cfg
echo %1      serviceName: "MongoDB" >>%~dp0mongodb.cfg
echo %1      displayName: "MongoDB" >>%~dp0mongodb.cfg
echo %1      description: "MongoDB Server for PictureAir" >>%~dp0mongodb.cfg
echo %1#     serviceUser: <string> >>%~dp0mongodb.cfg
echo %1#     servicePassword: <string> >>%~dp0mongodb.cfg

::echo %1 >>%~dp0mongodb.cfg

::echo net: 0 >>%~dp0mongodb.cfg
::echo "%mongdoBinDBDir%data"
::mongod --logpath "%mongdoBinDBDir%\logs\MongoDB.log" --logappend --dbpath "%mongdoBinDBDir%data" --directoryperdb --serviceName MongoDB --install
::mongod -f "%~dp0mongodb.cfg" --directoryperdb --serviceName MongoDB828 --install
::net start MongoDB
::cd "C:\Program Files\MongoDB\Server\3.2\bin"
::"C:\Program Files\MongoDB\Server\3.2\bin\mongod.exe" --config "C:\installPackageScript\softPackage\db\mongodb.cfg" --install
:: --serviceName "MongoDB" --serviceDisplayName "MongoDB" --install
::mongod -port 828 -auth --logpath "%mongdoBinDir%\logs\MongoDB828.log" --logappend --dbpath "%mongdoBinDir%\data828" --directoryperdb --serviceName MongoDB828 --install
::mongod -f "C:\installPackageScript\softPackage\db\mongodb.cfg" --directoryperdb --serviceName MongoDB828 --install


@echo off&setlocal enabledelayedexpansion
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
set timestring=%date:~0,4%%date:~5,2%%date:~8,2%%hour%
set month=%date:~5,2%
set year=%date:~0,4%
set lastmonth=00
if "%month%"=="01" set lastmonth=10
if "%month%"=="02" set lastmonth=11
if "%month%"=="03" set lastmonth=12
if "%month%"=="04" set lastmonth=01
if "%month%"=="05" set lastmonth=02
if "%month%"=="06" set lastmonth=03
if "%month%"=="07" set lastmonth=04
if "%month%"=="08" set lastmonth=05
if "%month%"=="09" set lastmonth=06
if "%month%"=="10" set lastmonth=07
if "%month%"=="11" set lastmonth=08
if "%month%"=="12" set lastmonth=09
set timestringdel=%year%%lastmonth%
echo %timestringdel%
echo ######start rm file last 2 month ######
for /l %%i in (1,1,9) do rd/s/q Z:\website\backup\%timestringdel%0%%i
for /l %%i in (10,1,31) do rd/s/q Z:\website\backup\%timestringdel%%%i
for /l %%i in (1,1,9) do rd/s/q Z:\website\photos\%timestringdel%0%%i
for /l %%i in (10,1,31) do rd/s/q Z:\website\photos\%timestringdel%%%i
for /l %%i in (1,1,9) do rd/s/q Z:\website\raw\%timestringdel%0%%i
for /l %%i in (10,1,31) do rd/s/q Z:\website\raw\%timestringdel%%%i
for /l %%i in (1,1,9) do rd/s/q Z:\website\photos\storyBook\%timestringdel%0%%i
for /l %%i in (10,1,31) do rd/s/q Z:\website\photos\storyBook\%timestringdel%%%i
for /l %%i in (1,1,9) do rd/s/q Z:\website\Orders\%timestringdel%0%%i
for /l %%i in (10,1,31) do rd/s/q Z:\website\Orders\%timestringdel%%%i
echo ######end rm file last 2 month ######


