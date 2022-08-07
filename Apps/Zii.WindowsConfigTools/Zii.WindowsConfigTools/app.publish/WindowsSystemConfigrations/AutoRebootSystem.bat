if not exist C:\Ziitech mkdir C:\Ziitech
echo shutdown /r /f /t 10 > C:\Ziitech\Restart.bat
SCHTASKS /CREATE /SC DAILY /TN "ScheduledReboot" /TR "'C:\Ziitech\Restart.bat'" /ST 04:00 /RL HIGHEST
exit