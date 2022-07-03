@echo off
if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech

set /p dbName="Enter Database Name: "
echo USE %dbName% ;>resync.sql

echo update SyncTableLog set FailCount^=0 where FailCount^>^=10; >>resync.sql


"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost\SQLEXPRESS2008R2 -i resync.sql

DEL resync.sql

exit
