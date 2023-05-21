cd /d %~dp0




:: Create sql for ZiiPos account
echo USE [master] >currentUser.sql
echo GO >>currentUser.sql
echo CREATE LOGIN [ZIITECH-7J58TKJ\Ziitech] FROM WINDOWS WITH DEFAULT_DATABASE=[master]>>currentUser.sql
echo GO >>currentUser.sql
echo EXEC master..sp_addsrvrolemember @loginame = N'ZIITECH-7J58TKJ\Ziitech', @rolename = N'sysadmin'>>currentUser.sql
echo GO >>currentUser.sql


:: import ZiiPos account setting
echo "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost\SQLEXPRESS2008R2 -i currentUser.sql >>SQLServerconfig.bat