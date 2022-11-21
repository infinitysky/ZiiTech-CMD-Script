Set-ExecutionPolicy RemoteSigned
$Link = "https://download.ziicloud.com/databases/SQLEXPRWT_x64_ENU.exe"
$WebClient = New-Object System.Net.WebClient
cd C:\Ziitech 
$WebClient.DownloadFile("$Link","C:\Ziitech\SQLEXPRWT_2008R2_x64_ENU.exe");
$response=Invoke-WebRequest -Uri 'https://wombat-api.ziicloud.com/api/vs/client-version/version?clientName=Zii.Retail_Classic&version=1' -UseBasicParsing | ConvertFrom-Json 
$Link = $response.data.upgradeUrl 
$WebClient = New-Object System.Net.WebClient
cd C:\Ziitech 
$WebClient.DownloadFile("$Link","C:\Ziitech\ZiiPOSClassicRetail.exe");
$Link = "https://download.ziicloud.com/programs/ziisync/ZiiSyncSetup-x86(v2.1.1).exe"
$WebClient = New-Object System.Net.WebClient
cd C:\Ziitech 
$WebClient.DownloadFile("$Link","C:\Ziitech\ZiiSyncSetup.exe");
