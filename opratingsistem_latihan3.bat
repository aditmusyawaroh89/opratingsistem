@echo off
:begin
cls
echo menu program:
echo 1. Hallo
echo 2. System info
echo 3. Exit
echo 4. dddd
set /p pilihan=pilih menu anda:

if %pilihan%==1 (
  goto 1
)else if %pilihan%==2 (
  goto 2
)else if %pilihan%==3 (
  goto 3
)
 
:1
cls 
echo ====================================
echo SELAMAT DATANG DI HALAMAN UTAMA 
echo ====================================
echo Hi, Selamat Pagi 
pause
goto begin 
 
:2
cls 
systeminfo
pause
goto begin
 
:3
exit 
