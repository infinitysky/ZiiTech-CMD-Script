@echo off
if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech
if not exist C:\Ziitech\backup mkdir C:\Ziitech\backup\
cd C:\Ziitech

::POSCAMCTDATA

echo use POSCAMCTDATA;>backupDB.sql
echo BACKUP DATABASE POSCAMCTDATA  TO DISK = 'C:\Ziitech\backup\suntechBackupdb.bak';>>backupDB.sql


::"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost\SQLEXPRESS2008R2 -i backupDB.sql



::"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -i SuntechPass.sql > Result1.txt

IF EXIST "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" (
  REM Do one thing
  "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -i backupDB.sql 
) 
IF EXIST "C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" (
  REM Do one thing
  "C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -i backupDB.sql 
) 

DEL backupDB.sql 




timeout 10
