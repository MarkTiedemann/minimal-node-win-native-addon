@echo off
powershell -c .\variables.ps1; .\compile.ps1 x64; .\compile.ps1 x86
