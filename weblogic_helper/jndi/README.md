## Config the properties to addJndiConfig.sh
## run with
```bash
bash startToAddJndi.sh addJndiConfig.sh
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
