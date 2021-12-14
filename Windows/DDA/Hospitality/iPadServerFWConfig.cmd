
cd /d %~dp0

netsh advfirewall firewall add rule name = iPadServer_Port dir = in protocol = tcp action = allow localport = 8786 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = iPadServer_Port dir = out protocol = tcp action = allow localport = 8786 profile = DOMAIN,PRIVATE,PUBLIC


exit
