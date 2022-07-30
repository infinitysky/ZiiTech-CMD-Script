cd /d %~dp0
if not exist C:\Ziitech mkdir C:\Ziitech


cd C:\Ziitech




::DownLoad DDA

curl.exe https://download.ziicloud.com/programs/ziiposclassic/ZiiPOSClassicRetail(v6.9.1.1).exe --output C:\Ziitech\ZiiPOSClassicRetail.exe

::Install DDA
ZiiPOSClassicRetail.exe /S

exit