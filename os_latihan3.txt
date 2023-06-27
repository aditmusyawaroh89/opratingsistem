@echo off
title setting my komputer 
:setting
color b5
cls
echo --------------------------------------
echo           SETING KOMPUTER
echo --------------------------------------
echo      [1] setting keyboard 
echo      [2] setting laguage
echo      [3] setting date
echo      [4] add user
echo      [5] sound control 
echo      [6] open startup
echo      [7] chrome 
echo      [88] kembali      [0] keluar 
echo.
set /p "pilihanmenu=masukan pilihan menu:"
if %pilihanmenu%==1   goto keyboard
if %pilihanmenu%==2   goto language
if %pilihanmenu%==3   goto date
if %pilihanmenu%==4   goto user 
if %pilihanmenu%==5   goto sound 
if %pilihanmenu%==6   goto startup
if %pilihanmenu%==7   goto chrome
if %pilihanmenu%==88  goto back
if %pilihanmenu%==0   goto exit

:keyboard 
cls
start control keyboard 
goto setting
pause
:language
cls
start intl.cpl 
goto setting 
pause
:date 
cls
start timedate.cpl
goto setting
pause 
:user 
cls 
start netplwiz.exe
pause
:sound
cls
start sndvol.exe
goto setting 
pause
:startup
start msconfig
goto setting 
pause 
:chrome
"C:\Program Files\Google\Chrome\Application\chrome.exe"
goto setting
:back
goto setting 
:exit
exit 




