@echo off
cls
set /p IP=Write the public ip address of the instance:
set ssh_command=ssh -i "insert key location here". adminuser@%IP%
%ssh_command%
pause
