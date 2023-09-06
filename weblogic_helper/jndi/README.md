## Config the properties to addJndiConfig.sh
## run with
```bash
bash startToAddJndi.sh addJndiConfig.sh
```

### addJndiConfig.sh
```bash
#!/bin/bash
wlsVersion=chppse your weblogic 10 or 14
jsonFile=json where config database info file name
jsonFilePath=json where config database info file path
hostIp=127.0.0.1:7001 (if weblogic run with docker container use docker ip)
wlsAcc=weblogic account
wlsPwd=weblogic password
weblogichelper=weblogichelper (weblogic_helper container name)
```


### ds.json like below
```bash
[	
	{
        	"name":"name",
        	"jndiName":"jdbc/xxx/aaa/jndiName",
		"dsURL":"jdbcUrl",
        	"user":"account",
        	"password":"password",
        	"target":"targetServer",
		"driverClass":"driverClass"
	},
	{
        	"name":"name",
        	"jndiName":"jdbc/xxx/aaa/jndiName",
		"dsURL":"jdbcUrl",
        	"user":"account",
        	"password":"password",
        	"target":"targetServer",
		"driverClass":"driverClass"
	}
]
```
