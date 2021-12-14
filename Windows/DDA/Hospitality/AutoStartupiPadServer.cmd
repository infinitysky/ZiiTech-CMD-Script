cd /d %~dp0


netsh advfirewall firewall add rule name = iPadServer_Port dir = in protocol = tcp action = allow localport = 8786 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = iPadServer_Port dir = out protocol = tcp action = allow localport = 8786 profile = DOMAIN,PRIVATE,PUBLIC

SCHTASKS /CREATE /SC ONLOGON /TN "ZiiPOSiPadServer" /TR "'C:\Program Files (x86)\ZiiForce\ZiiPOSClassic\iPadServer.exe'" /RL HIGHEST