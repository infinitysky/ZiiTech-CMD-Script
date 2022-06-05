if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech


echo Set-ExecutionPolicy RemoteSigned> downloadDDA.ps1
::Method1
::echo $url = "https://download.ziicloud.com/programs/ziiposclassic/ZiiPOSClassicRetail(v6.8.9.7).exe" >> downloadDDA.ps1
::echo $dest = "C:\Ziitech\ZiiPOSClassicRetail.exe" >> downloadDDA.ps1
::echo cd C:\Ziitech >> downloadDDA.ps1
::echo Invoke-WebRequest -Uri $url -OutFile $dest >> downloadDDA.ps1

::Method2
echo $Link = "https://download.ziicloud.com/programs/ziiposclassic/ZiiPOSClassicRetail(v6.8.9.7).exe">> downloadDDA.ps1
echo $WebClient = New-Object System.Net.WebClient>> downloadDDA.ps1
echo cd C:\Ziitech >> downloadDDA.ps1
echo $WebClient.DownloadFile("$Link","C:\Ziitech\ZiiPOSClassicRetail.exe");>> downloadDDA.ps1

PowerShell.exe -ExecutionPolicy Bypass .\downloadDDA.ps1

::AssistantServer(v1.2.1)
taskkill /IM "AssistantServer(v1.2.1).exe" /F
taskkill /IM "ZiiPOSClassicRetail.exe" /F
ZiiPOSClassicRetail.exe /S

DEL ZiiPOSClassicRetail.exe
DEL downloadDDA.ps1

exit