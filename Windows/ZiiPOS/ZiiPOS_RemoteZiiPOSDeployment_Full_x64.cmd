@echo off


if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech

::set /p dbName="Please Enter Database Name: "

echo CREATE DATABASE ZiiPOS_DB >DB.sql
Echo Go >> DB.sql
echo USE %dbName% >DB.sql
Echo Go >> DB.sql




REM Install chocolatey 
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco upgrade chocolatey

REM Install Chrome Firefox Visual_studio_code 7zip   
choco install -y 7zip.install vscode dotnetcore-3.1-sdk



::Create a new account
::if not exist C:\Users\Ziitech (
::	net user /add Ziitech 0000
::	net localgroup administrators Ziitech /add
::	WMIC USERACCOUNT WHERE Name='Ziitech' SET PasswordExpires=FALSE
::	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /t REG_SZ /d "Ziitech" /f
::	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /t REG_SZ /d "0000" /f
::	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_SZ /d "1" /f
::
::)


::Initialization power shell for windows 10/7 X64 bit
echo Set-ExecutionPolicy RemoteSigned> downloadDDA.ps1

::DownLoad Sqlserver 64Bit
::echo $Link = "https://download.ziicloud.com/databases/SQLEXPRWT_x64_ENU.exe">> downloadDDA.ps1
::echo $WebClient = New-Object System.Net.WebClient>> downloadDDA.ps1
::echo cd C:\Ziitech >> downloadDDA.ps1
::echo $WebClient.DownloadFile("$Link","C:\Ziitech\SQLEXPRWT_2008R2_x64_ENU.exe");>> downloadDDA.ps1


::DownLoad ZiiPOS
echo $Link = "https://download.ziicloud.com/programs/ziipos/ZiiLocalServerSetup(v2.5.1.1).exe">> downloadDDA.ps1
echo $WebClient = New-Object System.Net.WebClient>> downloadDDA.ps1
echo cd C:\Ziitech >> downloadDDA.ps1
echo $WebClient.DownloadFile("$Link","C:\Ziitech\ZiiLocalServerSetup.exe");>> downloadDDA.ps1



::DownLoad ZiiPOS init DB Script
echo $Link = "https://download.ziicloud.com/other/ziipos_init_script_v2.4.sql">> downloadDDA.ps1
echo $WebClient = New-Object System.Net.WebClient>> downloadDDA.ps1
echo cd C:\Ziitech >> downloadDDA.ps1
echo $WebClient.DownloadFile("$Link","C:\Ziitech\ziipos_init_script.sql");>> downloadDDA.ps1


::DownLoad ZiiPOS Sync  DB Script
::echo $Link = "https://download.ziicloud.com/other/ziipos_init_script_v2.4.sql">> downloadDDA.ps1
::echo $WebClient = New-Object System.Net.WebClient>> downloadDDA.ps1
::echo cd C:\Ziitech >> downloadDDA.ps1
::echo $WebClient.DownloadFile("$Link","C:\Ziitech\ziipos_init_script.sql");>> downloadDDA.ps1


::Install SQL Server Install bash
echo cd C:\Ziitech>SQLServerInstall.bat
echo SQLEXPRWT_2008R2_x64_ENU.exe /QS /ACTION=Install /FEATURES=SQLENGINE,REPLICATION,SSMS,SNAC_SDK /IACCEPTSQLSERVERLICENSETERMS /SECURITYMODE=SQL /SAPWD="0000" /INSTANCENAME="SQLEXPRESS2008R2" /SQLSVCACCOUNT="NT AUTHORITY\NETWORK SERVICE" /RSSVCACCOUNT="NT AUTHORITY\NETWORK SERVICE" /AGTSVCACCOUNT="NT AUTHORITY\NETWORK SERVICE" /ADDCURRENTUSERASSQLADMIN="True" /BROWSERSVCSTARTUPTYPE="Automatic" /TCPENABLED="1" /NPENABLED="1">>SQLServerInstall.bat
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
echo "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost\SQLEXPRESS2008R2 -i DB.sql 
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
type ziipos_init_script.sql>>DB.sql



:: Start install Sql server
::start /wait SQLServerInstall.bat

:: Start Sql server configration
::start /wait SQLServerconfig.bat


::Install ZiiPOS
ZiiLocalServerSetup.exe /S




exit