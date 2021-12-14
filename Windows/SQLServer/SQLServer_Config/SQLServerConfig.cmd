
cd /d %~dp0

netsh advfirewall firewall add rule name = SQLServer_Port dir = in protocol = tcp action = allow localport = 9899 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = SQLServer_Port dir = out protocol = tcp action = allow localport = 9899 profile = DOMAIN,PRIVATE,PUBLIC

netsh advfirewall firewall add rule name = DDA_iPad_Tools_Port dir = in protocol = tcp action = allow localport = 8787 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = DDA_iPad_Tools_Port dir = out protocol = tcp action = allow localport = 8787 profile = DOMAIN,PRIVATE,PUBLIC

REM  set default port number to 9899
net stop MSSQL$SQLEXPRESS2008R2
reg import sqlPort.reg
net start MSSQL$SQLEXPRESS2008R2

REM add ZiiPOS account for DDA
"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost\SQLEXPRESS2008R2 -i ziiposAccount.sql




exit
