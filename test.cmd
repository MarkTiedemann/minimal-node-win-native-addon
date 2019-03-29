@echo off
.\x64\node -pe require('.\\x64\\addon.node')
.\x86\node -pe require('.\\x86\\addon.node')
