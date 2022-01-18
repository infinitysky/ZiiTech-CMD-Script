cd /d C:\Windows\System32\DriverStore\FileRepository\prnge001.inf*

SET varDriver="Generic / Text Only"
SET varDriverFile="%CD%\prnge001.inf"


SET RECEIPTName="RECEIPT"
SET Printer1Name="192.168.99.231"
SET Printer2Name="192.168.99.232"
SET Printer3Name="192.168.99.233"
SET Printer4Name="192.168.99.234"
SET Printer5Name="192.168.99.235"

SET Printer1IP="192.168.99.231"
SET Printer2IP="192.168.99.232"
SET Printer3IP="192.168.99.233"
SET Printer4IP="192.168.99.234"
SET Printer5IP="192.168.99.235"


:: RECEIPT eceipt usb
:: BAR 192.168.99.231
:: SUSHI 192.168.99.232
:: GRILL 192.168.99.233
:: DEEP FRY 192.168.99.234
:: PAN FRY 192.168.99.235

:: Create TCP/IP port
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %Printer1IP% -o raw -n 9100 -h %Printer1IP% 
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %Printer2IP% -o raw -n 9100 -h %Printer2IP% 
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %Printer3IP% -o raw -n 9100 -h %Printer3IP% 
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %Printer4IP% -o raw -n 9100 -h %Printer4IP% 
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %Printer5IP% -o raw -n 9100 -h %Printer5IP% 

:: Install printer
:: rundll32 printui.dll,PrintUIEntry /if /n %varName% /b %varName% /f %varDriverFile% /r %varIP% /m %varDriver%

rundll32 printui.dll,PrintUIEntry /if /n %Printer1Name% /b %Printer1Name% /f %varDriverFile% /r %Printer1IP% /m %varDriver%
rundll32 printui.dll,PrintUIEntry /if /n %Printer2Name% /b %Printer2Name% /f %varDriverFile% /r %Printer2IP% /m %varDriver%
rundll32 printui.dll,PrintUIEntry /if /n %Printer3Name% /b %Printer3Name% /f %varDriverFile% /r %Printer3IP% /m %varDriver%
rundll32 printui.dll,PrintUIEntry /if /n %Printer4Name% /b %Printer4Name% /f %varDriverFile% /r %Printer4IP% /m %varDriver%
rundll32 printui.dll,PrintUIEntry /if /n %Printer5Name% /b %Printer5Name% /f %varDriverFile% /r %Printer5IP% /m %varDriver%