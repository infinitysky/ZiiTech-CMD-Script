if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech


echo Set-ExecutionPolicy RemoteSigned> downloadDDA.ps1

echo [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 >> downloadDDA.ps1
echo|set /p "$" >> downloadDDA.ps1
echo|set /p "response = " >> downloadDDA.ps1
echo|set /p "Invoke-WebRequest 'https://wombat-api.ziicloud.com/api/vs/client-version/version?clientName=Zii.Retail_Classic&version=1' | ConvertFrom-Json" >> downloadDDA.ps1


echo|set /p " &version=1'" >> downloadDDA.ps1

echo|set /p " &version=1'" >> downloadDDA.ps1
echo|set ConvertFrom-Json >> downloadDDA.ps1


set downloadCMD= $response = Invoke-WebRequest 'https://wombat-api.ziicloud.com/api/vs/client-version/version?clientName=Zii.Retail_Classic&version=1' | ConvertFrom-Json

c&version=1' | ConvertFrom-Json


set downloadCMD
set downloadCMD=%downloadCMD:"=%
set downloadCMD


echo %downloadCMD% >> downloadDDA.ps1


echo $Link = $response.data.upgradeUrl >> downloadDDA.ps1
echo $WebClient = New-Object System.Net.WebClient>> downloadDDA.ps1
echo cd C:\Ziitech >> downloadDDA.ps1
echo $WebClient.DownloadFile("$Link","C:\Ziitech\ZiiPOSClassicRetail.exe");>> downloadDDA.ps1

PowerShell.exe -ExecutionPolicy Bypass .\downloadDDA.ps1

::AssistantServer(v1.2.1)
taskkill /IM "AssistantServer(v1.2.1).exe" /F
taskkill /IM "ZiiPOSClassicRetail.exe" /F
::ZiiPOSClassicRetail.exe /S

DEL ZiiPOSClassicRetail.exe
DEL downloadDDA.ps1

pause