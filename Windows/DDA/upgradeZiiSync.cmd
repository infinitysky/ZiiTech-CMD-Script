if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech


echo set-ExecutionPolicy RemoteSigned -Scope CurrentUser >downloadZiisync.ps1
::echo $url = "https://download.ziicloud.com/programs/ziisync/ZiiSyncSetup-x86(v2.1.0).exe" >> downloadZiisync.ps1
::echo $dest = "C:\Ziitech\ZiiSyncSetup.exe" >> downloadZiisync.ps1
::echo Invoke-WebRequest -Uri $url -OutFile $dest >> downloadZiisync.ps1

echo $Link = "https://download.ziicloud.com/programs/ziisync/ZiiSyncSetup-x86(v2.1.0).exe">> downloadZiisync.ps1
echo $WebClient = New-Object System.Net.WebClient>> downloadZiisync.ps1
echo cd C:\Ziitech>> downloadZiisync.ps1
echo $WebClient.DownloadFile("$Link","C:\Ziitech\ZiiSyncSetup.exe");>> downloadZiisync.ps1

powershell.exe .\downloadZiisync.ps1

taskkill /IM "Zii.Sync.exe" /F
ZiiSyncSetup.exe /S

pause