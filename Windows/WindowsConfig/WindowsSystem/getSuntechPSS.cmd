@echo off
if not exist C:\Ziitech mkdir C:\Ziitech
cd /d C:\Ziitech


::POSCAMCTDATA 

echo USE POSCAMCTData;>SuntechPass.sql 
echo select F_IDNo, F_Pwd,F_UserName from TUser;>>SuntechPass.sql 



::"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -i SuntechPass.sql > Result1.txt

IF EXIST "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" (
  REM Do one thing
  "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -i SuntechPass.sql > Result1.txt
) 
IF EXIST "C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" (
  REM Do one thing
  "C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -i SuntechPass.sql > Result2.txt
) 

timeout 10
