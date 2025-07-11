@echo off

:menu
cls
echo Select a provider.
echo For AWS type aw.
echo For Azure type az.
echo To exit type e.
echo Other otions would not be considered
set /p pro=Enter your provider:

if "%pro%"=="aw" goto aws 
if "%pro%"=="az" goto az
if "%pro%"=="e" goto e


echo invalid option, try again.
pause
goto menu

:aws 
echo you are using AWS as a provider
set TF_DIR=
cd /d %TF_DIR%
terraform init
terraform validate
terraform plan 
terraform apply --auto-approve
start cmd

pause
terraform destroy --auto-approve
goto menu

:az 
echo you are using Azure as a prvider
set TF_DIR=
cd /d %TF_DIR%
terraform init -reconfigure
terraform validate
terraform plan 
terraform apply --auto-approve
start cmd
pause
terraform destroy --auto-approve
goto menu

:e
exit