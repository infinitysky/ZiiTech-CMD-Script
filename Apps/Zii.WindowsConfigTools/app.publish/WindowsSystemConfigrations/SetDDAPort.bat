cd /d %~dp0
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
netsh advfirewall set currentprofile state on

netsh advfirewall firewall add rule name = ZiiPOS_DB_Port dir = in protocol = tcp action = allow localport = 9899 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = ZiiPOS_DB_Port dir = out protocol = tcp action = allow localport = 9899 profile = DOMAIN,PRIVATE,PUBLIC

netsh advfirewall firewall add rule name = ZiiPOS_iPad_Port dir = in protocol = tcp action = allow localport = 8787 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = ZiiPOS_iPad_Port dir = out protocol = tcp action = allow localport = 8787  profile = DOMAIN,PRIVATE,PUBLIC

netsh advfirewall firewall add rule name = ZiiPOS_PDA_Port dir = in protocol = tcp action = allow localport = 8085 profile = DOMAIN,PRIVATE,PUBLIC
netsh advfirewall firewall add rule name = ZiiPOS_PDA_Port dir = out protocol = tcp action = allow localport = 8085 profile = DOMAIN,PRIVATE,PUBLIC

exit
