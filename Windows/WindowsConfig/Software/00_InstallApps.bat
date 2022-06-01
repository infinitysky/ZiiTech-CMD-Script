cd /d %~dp0

REM ---------- start software Install --------------------

REM ------- Install Chocolatey --------

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco upgrade chocolatey

REM Install Chrome Firefox VLC Visual_studio_code 7zip   

choco install -y 7zip.install
choco install -y googlechrome 
choco install -y firefox
choco install -y vscode


echo install .NetCore libraries
cd DotNetCore
start /wait install_dotnet_silent.cmd
cd /d %~dp0

echo install VC libraries
cd VisualC
start /wait install_libraries_silent.cmd
cd /d %~dp0




echo install SQLServer2008R2
cd SQLServer2008R2
start /wait InstallSQLServerExperss2008R2.cmd
start /wait SQLServerConfig.cmd
cd /d %~dp0

echo install TeamViewer
cd Teamviewer
start /wait installTeamViewer.cmd
cd /d %~dp0


echo config for SQLServer2008R2
cd SQLServer2008R2
start /wait SQLServerConfig.cmd
cd /d %~dp0


echo install AnyDesk
cd AnyDesk
start /wait install_anydesk_silent.cmd
cd /d %~dp0

echo system configration
cd SystemConfiguration
start /wait SystemConfig.cmd
cd /d %~dp0


pause
