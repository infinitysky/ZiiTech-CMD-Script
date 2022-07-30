
SCHTASKS /CREATE /SC ONLOGON /TN "ZiiPOSClassicRetailAssistantServer" /TR "'C:\Program Files (x86)\ZiiForce\ZiiPOSClassicRetail\AssistantServer.exe'" /RL HIGHEST


netsh advfirewall firewall add rule name = iPadServer_Port dir = in protocol = tcp action = allow localport = 8085 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = iPadServer_Port dir = out protocol = tcp action = allow localport = 8085 profile = DOMAIN,PRIVATE,PUBLIC