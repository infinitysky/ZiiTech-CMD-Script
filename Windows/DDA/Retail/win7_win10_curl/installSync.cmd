cd /d %~dp0

if not exist C:\Ziitech mkdir C:\Ziitech



::DownLoad Sync
curl.exe https://download.ziicloud.com/programs/ziisync/ZiiSyncSetup-x86(v2.1.1).exe --output C:\Ziitech\ZiiSyncSetup.exe

cd C:\Ziitech
ZiiSyncSetup.exe /S

DEL ZiiSyncSetup.exe

exit