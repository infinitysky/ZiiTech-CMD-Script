if not exist "C:\Program Files (x86)\ZiiForce\ZiiPOSPDAServer" mkdir "C:\Program Files (x86)\ZiiForce\ZiiPOSPDAServer"
cd /d "C:\Program Files (x86)\ZiiForce\ZiiPOSPDAServer"

if exist "C:\Program Files (x86)\ZiiForce\ZiiPOSClassicRetail" copy "C:\Program Files (x86)\ZiiForce\ZiiPOSClassicRetail\libeay32.dll" "C:\Program Files (x86)\ZiiForce\ZiiPOSPDAServer\libeay32.dll"
if exist "C:\Program Files (x86)\ZiiForce\ZiiPOSClassicRetail" copy "C:\Program Files (x86)\ZiiForce\ZiiPOSClassicRetail\ssleay32.dll" "C:\Program Files (x86)\ZiiForce\ZiiPOSPDAServer\ssleay32.dll"


::Initialization power shell for windows 10/7
echo Set-ExecutionPolicy RemoteSigned> downloadDDA.ps1

::DownLoad PDA Server 
echo $Link = "https://download.ziicloud.com/programs/ziiposclassic/PDAServer(v2.0.0.2).exe"> downloadDDA.ps1
echo $output="C:\Program Files (x86)\ZiiForce\ZiiPOSPDAServer\PDAServer.exe">> downloadDDA.ps1
echo $WebClient = New-Object System.Net.WebClient>> downloadDDA.ps1
echo $WebClient.DownloadFile($Link,$output)>> downloadDDA.ps1
::echo Start-BitsTransfer -Source $Link -Destination $output -Asynchronous>> downloadDDA.ps1



::#Start-BitsTransfer -Source $Link -Destination $output
::Start-BitsTransfer -Source $url -Destination $output -Asynchronous

:: Start Download files
PowerShell.exe -ExecutionPolicy Bypass .\downloadDDA.ps1


::Enable Windows Firewall Port
netsh advfirewall firewall add rule name = SQLServer_Port dir = in protocol = tcp action = allow localport = 8085 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = SQLServer_Port dir = out protocol = tcp action = allow localport = 8085 profile = DOMAIN,PRIVATE,PUBLIC
exit

SCHTASKS /CREATE /SC ONLOGON /TN "ZiiPOSPDAServer" /TR "'C:\Program Files (x86)\ZiiForce\ZiiPOSPDAServer\PDAServer.exe'" /RL HIGHEST


del "C:\Program Files (x86)\ZiiForce\ZiiPOSPDAServer\downloadDDA.ps1"


timeout 10