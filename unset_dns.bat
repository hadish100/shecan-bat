@echo off
cd /D %~dp0
cls
Powershell.exe -f "unset_dns.ps1"
pause