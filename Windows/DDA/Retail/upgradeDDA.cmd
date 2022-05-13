if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech


echo set-ExecutionPolicy RemoteSigned -Scope CurrentUser > downloadDDA.ps1
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

powershell.exe .\downloadDDA.ps1

taskkill /IM "ZiiPOSClassicRetail.exe" /F
ZiiPOSClassicRetail.exe /S

pause