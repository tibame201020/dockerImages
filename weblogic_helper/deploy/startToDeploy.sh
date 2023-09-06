#!/bin/bash

source $1

echo "weblogic version: $wlsVersion"
echo "war path: $warPath"
echo "target server: $targetServer"
echo "host ip: $hostIp"
echo "weblogic account: $wlsAcc"
echo "weblogic password: $wlsPwd"

case $wlsVersion in
    10)
        docker cp $warPath/$warFile.war $weblogichelper:/home/deploment/weblogic10_wars/$warFile.war
		docker exec $weblogichelper /home/deploment/deployToWeblogic10.sh $warFile $targetServer $hostIp $wlsAcc $wlsPwd
        ;;
    14)
        docker cp $warPath/$warFile.war $weblogichelper:/home/deploment/weblogic14_wars/$warFile.war
		docker exec $weblogichelper /home/deploment/deployToWeblogic14.sh $warFile $targetServer $hostIp $wlsAcc $wlsPwd
        ;;
    *)
        echo 'weblogic version only 10 or 14'
        ;;
esac

docker exec $weblogichelper /home/deploment/removeWars.sh
