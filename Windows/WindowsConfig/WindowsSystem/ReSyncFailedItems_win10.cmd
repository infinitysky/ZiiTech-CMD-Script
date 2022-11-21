@echo off
if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech
echo Set-ExecutionPolicy RemoteSigned> run.ps1
echo ^$response=Get-Content ^'C:\Program Files (x86)\ZiiForce\Zii.Sync\profilesettings.json^' ^| ConvertFrom-Json >> run.ps1
echo ^$dbName=^$response^.ProfileSetting^.InitialCatalog >> run.ps1

echo ^echo ^"USE $dbname;^"^>resync.sql >> run.ps1
echo ^echo "update SyncTableLog set FailCount=0 where FailCount>=10;" ^>^>resync.sql >> run.ps1


@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command .\run.ps1

"C:\Program Files\Microsoft SQL Server\100\Tools\Binn\sqlcmd.exe" -S localhost\SQLEXPRESS2008R2 -i resync.sql

timeout 10
