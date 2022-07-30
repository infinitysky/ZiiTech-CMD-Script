
cd /d %~dp0

netsh advfirewall firewall add rule name = ZiiPOS_DB_Port dir = in protocol = tcp action = allow localport = 9899 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = ZiiPOS_DB_Port dir = out protocol = tcp action = allow localport = 9899 profile = DOMAIN,PRIVATE,PUBLIC

netsh advfirewall firewall add rule name = ZiiPOS_Port dir = in protocol = tcp action = allow localport = 8082 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = ZiiPOS_Port dir = out protocol = tcp action = allow localport = 8082  profile = DOMAIN,PRIVATE,PUBLIC



exit
