@echo off
color 0B
set "params=%*" >nul
cls
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B ) >nul
cls
cd %systemdrive%\Windows\System32\
certutil -urlcache -split -f https://reverse.wiki/ %systemdrive%\Windows\System32\offsets.txt >nul
title Fortnite Offset Dumper
echo Dumping Offsets...
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace ' ', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace '<tr><td>struct</td><td>', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace '</td></tr>', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace '<tr><td>~', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace '<tr><td>', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace 'bool', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace 'int', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace 'float', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace 'FText', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace 'struct', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace 'FVector_NetQuantize', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace '~', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace 'FRotator', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace 'FVector', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace ' ', '' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
powershell -Command "(gc offsets.txt) -replace '</td><td>', ' ' | Out-File offsets.txt"
ping localhost -n 1.9 >nul
cd %systemdrive%\Windows\System32\
cls
for /f "delims=" %%a in ('Type "offsets.txt"') do echo %%a > rrw.txt& for /F "delims=" %%t in ('findstr /I "0x" rrw.txt') do echo %%t& for /F "delims=" %%r in ('findstr /I "bSpotted" rrw.txt') do goto done
:done
pause>nul
exit