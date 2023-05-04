@echo off
if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech
if not exist C:\Ziitech\backup mkdir C:\Ziitech\backup\
cd C:\Ziitech

echo Set-ExecutionPolicy RemoteSigned> run.ps1
echo ^$response=Get-Content ^'C:\Program Files (x86)\ZiiForce\Zii.sync\profilesettings.json^' ^| ConvertFrom-Json >> run.ps1
echo ^$dbName=^$response^.ProfileSetting^.InitialCatalog >> run.ps1


echo ^echo ^"USE $dbname;^"^>getPassDB.sql >> run.ps1
echo ^echo "SELECT StaffName, SecureCode,Supervisor FROM AccessMenu;" ^>^>getPassDB.sql >> run.ps1


@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command .\run.ps1

"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost\SQLEXPRESS2008R2 -i getPassDB.sql

Xcopy "C:\Program Files (x86)\ZiiForce\Zii.LocalServer\Log" "C:\Ziitech\backup\log" /E /H /C /I

timeout 10
