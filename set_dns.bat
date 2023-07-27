@echo off
cd /D %~dp0
cls
Powershell.exe -f "set_dns.ps1"
pause