@echo off
cls

cd /d %~dp0


REM ---------- start software Install --------------------

REM ------- Install Chocolatey --------

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco upgrade chocolatey

REM Install Chrome Firefox VLC Visual_studio_code 7zip   

choco install -y 7zip.install
choco install -y googlechrome 
choco install -y firefox
choco install -y vscode


pause
