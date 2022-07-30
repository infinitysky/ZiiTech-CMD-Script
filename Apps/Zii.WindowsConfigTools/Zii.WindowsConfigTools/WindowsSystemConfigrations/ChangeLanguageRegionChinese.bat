@ECHO OFF
cls

REM set up the time zone
tzutil /s "AUS Eastern Standard Time"

REM set up the system locale
powershell get-winsystemlocale
powershell set-winsystemlocale -systemlocale zh-cn

REM please check the windows activation and update information as well as the screen setup.


exit