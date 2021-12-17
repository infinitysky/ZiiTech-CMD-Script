cd /d C:\Windows\System32\DriverStore\FileRepository\prnge001.inf*

SET varDriver="Generic / Text Only"
SET varDriverFile="%CD%\prnge001.inf"
SET RECEIPTName="RECEIPT"
SET BARName="BAR"
SET SUSHIName="SUSHI"
SET GRILLName="GRILL"
SET DEEPFRYName="DEEP FRY"
SET PANFRYName="PAN FRY"
SET BARIP="192.168.99.231"
SET SUSHIIP="192.168.99.232"
SET GRILLIP="192.168.99.233"
SET DEEPFRYIP="192.168.99.234"
SET PANFRYIP="192.168.99.235"


:: RECEIPT eceipt usb
:: BAR 192.168.99.231
:: SUSHI 192.168.99.232
:: GRILL 192.168.99.233
:: DEEP FRY 192.168.99.234
:: PAN FRY 192.168.99.235

:: Create TCP/IP port
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %BARIP% -o raw -n 9100 -h %BARIP% 

CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %SUSHIIP% -o raw -n 9100 -h %SUSHIIP% 
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %GRILLIP% -o raw -n 9100 -h %GRILLIP% 
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %DEEPFRYIP% -o raw -n 9100 -h %DEEPFRYIP% 
CSCRIPT /nologo %windir%\System32\Printing_Admin_Scripts\en-US\prnport.vbs -a -r %PANFRYIP% -o raw -n 9100 -h %PANFRYIP% 

:: Install printer
:: rundll32 printui.dll,PrintUIEntry /if /n %varName% /b %varName% /f %varDriverFile% /r %varIP% /m %varDriver%

rundll32 printui.dll,PrintUIEntry /if /n %BARName% /b %BARName% /f %varDriverFile% /r %BARIP% /m %varDriver%

rundll32 printui.dll,PrintUIEntry /if /n %SUSHIName% /b %SUSHIName% /f %varDriverFile% /r %SUSHIIP% /m %varDriver%
rundll32 printui.dll,PrintUIEntry /if /n %GRILLIP% /b %GRILLIP% /f %varDriverFile% /r %GRILLIP% /m %varDriver%
rundll32 printui.dll,PrintUIEntry /if /n %DEEPFRYName% /b %DEEPFRYName% /f %varDriverFile% /r %DEEPFRYIP% /m %varDriver%
rundll32 printui.dll,PrintUIEntry /if /n %PANFRYName% /b %PANFRYName% /f %varDriverFile% /r %PANFRYIP% /m %varDriver%