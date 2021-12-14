cd /d %~dp0

REM set up the firewall inbound rules and onbound rules
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
netsh advfirewall set currentprofile state on

REM set up the power and display to never sleep

REM powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
REM powercfg /s c4e706ea-2b76-4770-8613-04a3e10d6792

REM High proformance
powercfg /S 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c


powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0
powercfg /change monitor-timeout-ac 0
powercfg /change monitor-timeout-dc 0
powercfg /change hibernate-timeout-ac 0
powercfg /change hibernate-timeout-dc 0


REM change power button action
powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 0
powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 0

REM set up the time zone
tzutil /s "AUS Eastern Standard Time"

REM set up the system locale
powershell get-winsystemlocale

REM Set Remote Desktop
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-TCP" /v UserAuthentication /t REG_DWORD /d "0" /f

REM Set touch Keyboard
reg add "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" /V TipbandDesiredVisibility /T REG_DWORD /D 1 /F

REM Set Desktop&Control Panel

reg import Add_ThisPC&ControlPanel.reg

exit