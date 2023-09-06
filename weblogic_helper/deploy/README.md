### Config the properties to deployConfig.sh
```bash
#!/bin/bash
wlsVersion=10 (weblogic version 10 or 14)
warFile=xxx (application name)
warPath=mnt/d/Dev/program/wars (war path)
targetServer=AdminServer(want to deploy the target server in weblogic)
hostIp=172.17.0.2:6008(if weblogic run with container use docker ip)
wlsAcc=weblogic account
wlsPwd=weblogic password
weblogichelper=weblogichelper(weblogic_herlper container name)
```


## run with
```bash
bash startToDeploy.sh deployConfig.sh
```
