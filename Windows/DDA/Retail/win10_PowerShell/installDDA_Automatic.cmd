if not exist C:\Ziitech mkdir C:\Ziitech
cd C:\Ziitech


echo Set-ExecutionPolicy RemoteSigned> downloadDDA.ps1
echo [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 >> downloadDDA.ps1

echo ^$response=Invoke-WebRequest -Uri 'https://wombat-api.ziicloud.com/api/vs/client-version/version?clientName=Zii.Retail_Classic^&version=1' -UseBasicParsing ^| ConvertFrom-Json >> downloadDDA.ps1

echo $Link = $response.data.upgradeUrl >> downloadDDA.ps1
echo $WebClient = New-Object System.Net.WebClient>> downloadDDA.ps1
echo cd C:\Ziitech >> downloadDDA.ps1
echo $WebClient.DownloadFile("$Link","C:\Ziitech\ZiiPOSClassicRetail.exe");>> downloadDDA.ps1


@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command .\downloadDDA.ps1

::AssistantServer(v1.2.1)
taskkill /IM "AssistantServer(v1.2.1).exe" /F
taskkill /IM "ZiiPOSClassicRetail.exe" /F
ZiiPOSClassicRetail.exe /S

DEL ZiiPOSClassicRetail.exe
DEL downloadDDA.ps1

pause