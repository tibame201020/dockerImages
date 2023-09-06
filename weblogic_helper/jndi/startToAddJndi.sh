#!/bin/bash

source $1

wlsVersion=$wlsVersion
jsonFile=$jsonFile
jsonFilePath=$jsonFilePath
hostIp=$hostIp
wlsAcc=$wlsAcc
wlsPwd=$wlsPwd
weblogichelper=$weblogichelper

echo "weblogic version: $wlsVersion"
echo "json file: $jsonFilePath"
echo "json file path: $jsonFile"
echo "host ip: $hostIp"
echo "weblogic account: $wlsAcc"
echo "weblogic password: $wlsPwd"

docker cp $jsonFilePath/$jsonFile.json $weblogichelper:/home/jdbc/$jsonFile.json

docker exec $weblogichelper /home/jdbc/startToAddJndiToWeblogic.sh $wlsVersion $jsonFile $hostIp $wlsAcc $wlsPwd

docker exec $weblogichelper /home/jdbc/removeJson.sh
