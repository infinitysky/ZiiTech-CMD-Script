net stop MSSQL$SQLEXPRESS2008R2 
reg add "HKLM\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008R2\MSSQLServer\SuperSocketNetLib\Tcp\IPAll" /v TcpPort /t REG_SZ /d "9899" /f 
reg add "HKLM\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008R2\MSSQLServer\SuperSocketNetLib\Tcp\IPAll" /v TcpDynamicPorts /t REG_SZ /d "0" /f 
reg add "HKLM\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008R2\MSSQLServer\SuperSocketNetLib\Tcp\IPAll" /v DisplayName /t REG_SZ /d "Any IP Address" /f 
net start MSSQL$SQLEXPRESS2008R2 
"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost\SQLEXPRESS2008R2 -i ziiposAccount.sql 
netsh advfirewall firewall add rule name = SQLServer_Port dir = in protocol = tcp action = allow localport = 9899 profile = DOMAIN,PRIVATE,PUBLIC 
netsh advfirewall firewall add rule name = SQLServer_Port dir = out protocol = tcp action = allow localport = 9899 profile = DOMAIN,PRIVATE,PUBLIC 
netsh advfirewall firewall add rule name = DDA_iPad_Tools_Port dir = in protocol = tcp action = allow localport = 8787 profile = DOMAIN,PRIVATE,PUBLIC 
netsh advfirewall firewall add rule name = DDA_iPad_Tools_Port dir = out protocol = tcp action = allow localport = 8787 profile = DOMAIN,PRIVATE,PUBLIC 
exit 
