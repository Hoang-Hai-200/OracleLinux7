```
/home/oracle/.mozilla/plugins/
└── -rw-r--r--. 1 oracle oinstall 19286592 Mar 28 10:34 libflashplayer.so
```


```
/etc/adobe/
└── -rw-r--r--.   1 root root  167 Mar 28 10:40 mms.cfg
```

```
cat /etc/adobe/mms.cfg :
  EnableAllowList = 1
  AllowListUrlPattern=https://localhost:5500/em/
  AllowListUrlPattern=https://lab:5500/em/
  AllowListUrlPattern=https://192.168.56.102:5500/em/
```
