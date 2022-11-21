
REM set up the firewall inbound rules and onbound rules
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
netsh advfirewall set currentprofile state on
exit