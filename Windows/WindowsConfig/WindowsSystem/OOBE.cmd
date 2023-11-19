@echo off


:CUSTOMIZATIONS
REM Copy unattend config file
if not exist %windir%\system32\oobe\info mkdir %windir%\system32\oobe\info 
if not exist %windir%\system32\oobe\info\ZiiTECHLogo.bmp copy %systemroot%\setup\scripts\ZiiTECHLogo.bmp %windir%\system32\oobe\info\ZiiTECHLogo.bmp

REM set up the firewall inbound rules and onbound rules
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
netsh advfirewall set currentprofile state on

REM set up the power and display to never sleep

REM powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

REM powercfg /s c4e706ea-2b76-4770-8613-04a3e10d6792

REM Ultimate
REM powercfg /S e9a42b02-d5df-448d-aa00-03f14749eb61
REM High proformance
powercfg /S 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

REM Ultimate
powercfg /S e9a42b02-d5df-448d-aa00-03f14749eb61

powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0
powercfg /change monitor-timeout-ac 0
powercfg /change monitor-timeout-dc 0
powercfg /change hibernate-timeout-ac 0
powercfg /change hibernate-timeout-dc 0


REM change power button action
powercfg -setacvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 0
powercfg -setdcvalueindex SCHEME_CURRENT 4f971e89-eebd-4455-a8de-9e59040e7347 7648efa3-dd9c-4e3e-b566-50f929386280 0

REM disable HDD idel off
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0
powercfg /SETACVALUEINDEX SCHEME_CURRENT 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 0



REM Set Remote Desktop
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-TCP" /v UserAuthentication /t REG_DWORD /d "0" /f

REM Set touch Keyboard
reg add "HKCU\SOFTWARE\Microsoft\TabletTip\1.7" /V TipbandDesiredVisibility /T REG_DWORD /D 1 /F

:CLEANUP
del /F /Q %systemroot%\setup\scripts\oobe.cmd

exit