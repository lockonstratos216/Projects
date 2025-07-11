@echo off
cls
set /p IP=Write the public ip address of the instance:
set ssh_command=ssh -i "path to key" ubuntu@%IP%
%ssh_command%
pause
