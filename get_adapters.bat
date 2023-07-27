@echo off
cd /D %~dp0
cls
Powershell.exe -f "get_adapters.ps1"
pause