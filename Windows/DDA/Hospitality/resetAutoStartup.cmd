reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v ZiiPOSClassic /f

SCHTASKS /CREATE /SC ONLOGON /TN "ZiiPOSClassic" /TR "'C:\Program Files (x86)\ZiiForce\ZiiPOSClassic\run.bat'" /RL HIGHEST /f