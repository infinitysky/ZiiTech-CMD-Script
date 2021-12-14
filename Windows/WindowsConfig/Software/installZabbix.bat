cd /d %~dp0

sc config wmiApSrv start=auto


SET INSTALLFOLDER="C:\Program Files\Zabbix Agent 2"

msiexec /i zabbix_agent2-5.4.3-windows-amd64-openssl.msi /qn^
 LOGTYPE=file^
 LOGFILE=c:\zabbix\za.log^
 SERVER=client-monitor.ziiforce.com^
 LISTENPORT=10050^
 SERVERACTIVE=client-monitor.ziiforce.com^
 ENABLEPATH=1^
 AllowKey=system.run[*]^
 INSTALLFOLDER=%INSTALLFOLDER%
 