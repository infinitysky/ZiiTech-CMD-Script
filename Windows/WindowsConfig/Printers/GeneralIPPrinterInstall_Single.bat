
cd /d c:\Windows\System32\DriverStore\FileRepository\prnge001.inf*


SET varDriver="Generic / Text Only"
SET varDriverFile="%CD%\prnge001.inf"

:: Set Printer name and IP address

SET PrinterName1="Toshiba"
SET Printer1IP="192.168.20.127"


:: Create TCP/IP port
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %Printer1IP% -o raw -n 9100 -h %Printer1IP% 

:: Install printer
:: rundll32 printui.dll,PrintUIEntry /if /n %varName% /b %varName% /f %varDriverFile% /r %varIP% /m %varDriver%

rundll32 printui.dll,PrintUIEntry /if /n %PrinterName1% /b %PrinterName1% /f %varDriverFile% /r %Printer1IP% /m %varDriver%
