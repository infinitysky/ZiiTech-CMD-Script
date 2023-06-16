@echo off
if not exist C:\Ziitech mkdir C:\Ziitech
cd /d C:\Ziitech


::POSCAMCTDATA 
::POSRTIIData

echo USE POSCAMCTDATA;>SuntechPass.sql 
echo select F_IDNo, F_Pwd,F_UserName from TUser;>>SuntechPass.sql 

echo USE POSRTIIData;>>SuntechPass1.sql 
echo select F_IDNo, F_Pwd,F_UserName from TUser;>>SuntechPass1.sql 


::"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -U sa -P 1234 -i SuntechPass.sql > Result1.txt

IF EXIST "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" (
  REM Do one thing
  "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -U sa -P 1234 -i SuntechPass.sql > Result1.txt
   "C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -U sa -P 1234 -i SuntechPass1.sql >> Result1.txt
) 
IF EXIST "C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" (
  REM Do one thing
  "C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -U sa -P 1234 -i SuntechPass.sql > Result2.txt
  "C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost -U sa -P 1234 -i SuntechPass1.sql >> Result2.txt
) 

DEL SuntechPass.sql 
DEL SuntechPass1.sql

timeout 10
