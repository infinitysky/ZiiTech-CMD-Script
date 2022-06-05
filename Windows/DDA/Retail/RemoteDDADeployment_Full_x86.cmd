if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech


::Initialization power shell for windows 10/7
echo Set-ExecutionPolicy RemoteSigned> downloadDDA.ps1

::DownLoad Sqlserver 64Bit
echo $Link = "https://download.ziicloud.com/databases/SQLEXPRWT_x86_ENU.exe">> downloadDDA.ps1
echo $WebClient = New-Object System.Net.WebClient>> downloadDDA.ps1
echo cd C:\Ziitech >> downloadDDA.ps1
echo $WebClient.DownloadFile("$Link","C:\Ziitech\SQLEXPRWT_x86_ENU.exe");>> downloadDDA.ps1


::DownLoad DDA
echo $Link = "https://download.ziicloud.com/programs/ziiposclassic/ZiiPOSClassicRetail(v6.8.9.7).exe">> downloadDDA.ps1
echo $WebClient = New-Object System.Net.WebClient>> downloadDDA.ps1
echo cd C:\Ziitech >> downloadDDA.ps1
echo $WebClient.DownloadFile("$Link","C:\Ziitech\ZiiPOSClassicRetail.exe");>> downloadDDA.ps1

::Install SQL Server Install bash
echo SQLEXPRWT_x86_ENU.exe /QS /ACTION=Install /FEATURES=SQLENGINE,REPLICATION,SSMS,SNAC_SDK /IACCEPTSQLSERVERLICENSETERMS /SECURITYMODE=SQL /SAPWD="0000" /INSTANCENAME="SQLEXPRESS2008R2" /SQLSVCACCOUNT="NT AUTHORITY\NETWORK SERVICE" /RSSVCACCOUNT="NT AUTHORITY\NETWORK SERVICE" /AGTSVCACCOUNT="NT AUTHORITY\NETWORK SERVICE" /ADDCURRENTUSERASSQLADMIN="True" /BROWSERSVCSTARTUPTYPE="Automatic" /TCPENABLED="1" /NPENABLED="1">SQLServerInstall.bat
echo exit >>SQLServerInstall.bat

:: sql server config

::stop Sql server
echo net stop MSSQL$SQLEXPRESS2008R2 >SQLServerconfig.bat

:: Set Sql server Port to 9899

echo reg add "HKLM\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008R2\MSSQLServer\SuperSocketNetLib\Tcp\IPAll" /v TcpPort /t REG_SZ /d "9899" /f >>SQLServerconfig.bat
echo reg add "HKLM\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008R2\MSSQLServer\SuperSocketNetLib\Tcp\IPAll" /v TcpDynamicPorts /t REG_SZ /d "0" /f >>SQLServerconfig.bat
echo reg add "HKLM\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008R2\MSSQLServer\SuperSocketNetLib\Tcp\IPAll" /v DisplayName /t REG_SZ /d "Any IP Address" /f >>SQLServerconfig.bat
::start Sql server
echo net start MSSQL$SQLEXPRESS2008R2 >>SQLServerconfig.bat

:: import ZiiPos account setting
echo "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost\SQLEXPRESS2008R2 -i ziiposAccount.sql >>SQLServerconfig.bat

::Enable Windows Firewall Port
echo netsh advfirewall firewall add rule name = SQLServer_Port dir = in protocol = tcp action = allow localport = 9899 profile = DOMAIN,PRIVATE,PUBLIC >>SQLServerconfig.bat
echo netsh advfirewall firewall add rule name = SQLServer_Port dir = out protocol = tcp action = allow localport = 9899 profile = DOMAIN,PRIVATE,PUBLIC >>SQLServerconfig.bat
echo netsh advfirewall firewall add rule name = DDA_iPad_Tools_Port dir = in protocol = tcp action = allow localport = 8787 profile = DOMAIN,PRIVATE,PUBLIC >>SQLServerconfig.bat
echo netsh advfirewall firewall add rule name = DDA_iPad_Tools_Port dir = out protocol = tcp action = allow localport = 8787 profile = DOMAIN,PRIVATE,PUBLIC >>SQLServerconfig.bat

echo exit >>SQLServerconfig.bat

:: Create sql for ZiiPos account
echo USE [master] >ziiposAccount.sql
echo GO >>ziiposAccount.sql
echo CREATE LOGIN [ZiiPos] WITH PASSWORD=N'ZiiPos884568', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF >>ziiposAccount.sql
echo GO >>ziiposAccount.sql
echo EXEC master..sp_addsrvrolemember @loginame = N'ZiiPos', @rolename = N'sysadmin' >>ziiposAccount.sql
echo GO >>ziiposAccount.sql


:: Start Download files
PowerShell.exe -ExecutionPolicy Bypass .\downloadDDA.ps1

:: Start install Sql server
start /wait SQLServerInstall.bat

:: Start Sql server configration
start /wait SQLServerconfig.bat


::Install DDA
ZiiPOSClassicRetail.exe /S


DEL ZiiPOSClassicRetail.exe
DEL downloadDDA.ps1
DEL SQLServerInstall.bat
DEL SQLServerconfig.bat
DEL ziiposAccount.sql
DEL SQLEXPRWT_x86_ENU.exe

exit