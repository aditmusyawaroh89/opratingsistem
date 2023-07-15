@echo off
color 7
:login
cls
echo ********************************************************************
echo                                  LOGIN USER 
echo ********************************************************************
echo.
echo --------------------------------------------------------------------
set /p name=  User:
set /p password= password:
if %password% == mulai (
 goto begin
)else (
echo password salah
echo nama salah 
set /p x = enter.....!!!
goto login
)

:begin
cls
echo **************************************************************************
echo                              menu utama
echo **************************************************************************
echo (1)menu akademik 
echo (2)menu komputer 
echo (3)exit 
set /p pilihan=pilihan menu anda:
if %pilihan%==1  goto menuakademik 
if %pilihan%==2  goto menukomputer
if %pilihan%==3  goto exit 

:menuakademik                                                       
cls
echo ===========================================================================
echo                            menu akademik 
echo ===========================================================================
echo   [1]penilaianmahasiswa
echo   [2]laporanpenilaianmahasiswa 
echo   [3]aplikasi perhitungan
echo   [4]kembali 
set /p pilihan=pilihan menu anda:
if %pilihan%==1  goto penilaianmahasiswa
if %pilihan%==2  goto laporanpenilaian 
if %pilihan%==3  goto aplikasiperhitungan
if %pilihan%==4  goto begin
	:penilaianmahasiswa
	cls
	set /p nim=Masukkan NIM:
	set /p nama=Masukkan Nama Lengkap:
	set /p kelas=Masukkan Kelas:
	set /p prodi=Masukkan Nama Prodi:

	set /p Bhs_indo=Masukkan nilai bahasa indonesia:
	set /p Bhs_jp=Masukkan nilai bahasa jepang:
	set /p Pd=Masukkan nilai pemrograman dasar:
	set /p ajbr=Masukkan nilai aljabar:
	set /p Kal1=Masukkan nilai kalkulus 1:
	set /p So=Masukkan nilai sistem operasi:

	set /a rata=(Bhs_indo+Bhs_ing+Pd+Mtk+Kal1+So)/6

	if %rata% gtr 0 (
		if %rata% leq 60 (
			set grade_rata=C
		) else if %rata% leq 75 (
			set grade_rata=B
		) else if %rata% leq 85 (
			set grade_rata=AB
		) else if %rata% leq 100 (
			set grade_rata=A
		) else (
			set grade_rata=Grade Anda Tidak Ditemukan
		)
	)

	if %Bhs_indo% gtr 0 (
		if %Bhs_indo% leq 60 (
			set grade_indo=C
		) else if %Bhs_indo% leq 75 (
			set grade_indo=B
		) else if %Bhs_indo% leq 85 (
			set grade_indo=AB
		) else if %Bhs_indo% leq 100 (
			set grade_indo=A
		) else (
			set grade_indo=Grade Anda Tidak Ditemukan
		)
	)

	if %Bhs_jp% gtr 0 (
		if %Bhs_jp% leq 60 (
			set grade_jp=C
		) else if %Bhs_jp% leq 75 (
			set grade_jp=B
		) else if %Bhs_jp% leq 85 (
			set grade_jp=AB
		) else if %Bhs_jp% leq 100 (
			set grade_jp=A
		) else (
			set grade_jp=Grade Anda Tidak Ditemukan
		)
	)

	if %Pd% gtr 0 (
		if %Pd% leq 60 (
			set grade_Pd=C
		) else if %Pd% leq 75 (
			set grade_Pd=B
		) else if %Pd% leq 85 (
			set grade_Pd=AB
		) else if %Pd% leq 100 (
			set grade_Pd=A
		) else (
			set grade_Pd=Grade Anda Tidak Ditemukan
		)
	)

	if %ajbr% gtr 0 (
		if %ajbr% leq 60 (
			set grade_ajbr=C
		) else if %ajbr% leq 75 (
			set grade_ajbr=B
		) else if %ajbr% leq 85 (
			set grade_ajbr=AB
		) else if %Mtk% leq 100 (
			set grade_ajbr=A
		) else (
			set grade_ajbr=Grade Anda Tidak Ditemukan
		)
	)

	if %Kal1% gtr 0 (
		if %Kal1% leq 60 (
			set grade_Kal1=C
		) else if %Kal1% leq 75 (
			set grade_Kal1=B
		) else if %Kal1% leq 85 (
			set grade_Kal1=AB
		) else if %Kal1% leq 100 (
			set grade_Kal1=A
		) else (
			set grade_Kal1=Grade Anda Tidak Ditemukan
		)
	)

	if %So% gtr 0 (
		if %So% leq 60 (
			set grade_So=C
		) else if %So% leq 75 (
			set grade_So=B
		) else if %So% leq 85 (
			set grade_So=AB
		) else if %So% leq 100 (
			set grade_So=A
		) else (
			set grade_So=Grade Anda Tidak Ditemukan
		)
	)


	echo ------------------------------------------------
	echo                    KARTU HASIL STUDI
	echo ------------------------------------------------
	echo Nim          : %nim%
	echo Nama lengkap : %nama%
	echo Kelas        : %kelas%
	echo Program Studi: %prodi%
	echo --------------------------
	echo No   Nama   Makul   Nilai   Grade
	echo --------------------------
	echo 1. Bahasa Indonesia  : %Bhs_indo% %grade_indo%
	echo 2. Bahasa Inggris    : %Bhs_ing% %grade_ing%
	echo 3. Pemrograman Dasar : %Pd% %grade_Pd%
	echo 4. Matematika        : %Mtk% %grade_Mtk%
	echo 5. Kalkulus 1        : %Kal1% %grade_Kal1%
	echo 6. Sistem Operasi    : %So% %grade_So%
	echo --------------------------
	echo Rata-rata: %rata% %grade_rata%
	echo --------------------------
	pause
	goto menuakademik

	:laporanpenilaian
	cls
	REM Setting Variabel identitas
	set /p nim=Masukkan NIM:
	set /p nama=Masukkan Nama Lengkap:
	set /p kelas=Masukkan Kelas:
	set /p prodi=Masukkan Nama Prodi:

	REM Setting Variabel nilai
	set /p Bhs_indo=Masukkan nilai bahasa indonesia:
	set /p Bhs_ing=Masukkan nilai bahasa inggris:
	set /p Pd=Masukkan nilai pemrograman dasar:
	set /p Mtk=Masukkan nilai matematika:
	set /p Kal1=Masukkan nilai kalkulus 1:
	set /p So=Masukkan nilai sistem operasi:

	set /a rata=(Bhs_indo+Bhs_ing+Pd+Mtk+Kal1+So)/6

	if %rata% gtr 0 (
		if %rata% leq 60 (
			set grade_rata=C
		) else if %rata% leq 75 (
			set grade_rata=B
		) else if %rata% leq 85 (
			set grade_rata=AB
		) else if %rata% leq 100 (
			set grade_rata=A
		) else (
			set grade_rata=Grade Anda Tidak Ditemukan
		)
	)

	if %Bhs_indo% gtr 0 (
		if %Bhs_indo% leq 60 (
			set grade_indo=C
		) else if %Bhs_indo% leq 75 (
			set grade_indo=B
		) else if %Bhs_indo% leq 85 (
			set grade_indo=AB
		) else if %Bhs_indo% leq 100 (
			set grade_indo=A
		) else (
			set grade_indo=Grade Anda Tidak Ditemukan
		)
	)

	if %Bhs_ing% gtr 0 (
		if %Bhs_ing% leq 60 (
			set grade_ing=C
		) else if %Bhs_ing% leq 75 (
			set grade_ing=B
		) else if %Bhs_ing% leq 85 (
			set grade_ing=AB
		) else if %Bhs_ing% leq 100 (
			set grade_ing=A
		) else (
			set grade_ing=Grade Anda Tidak Ditemukan
		)
	)

	if %Pd% gtr 0 (
		if %Pd% leq 60 (
			set grade_Pd=C
		) else if %Pd% leq 75 (
			set grade_Pd=B
		) else if %Pd% leq 85 (
			set grade_Pd=AB
		) else if %Pd% leq 100 (
			set grade_Pd=A
		) else (
			set grade_Pd=Grade Anda Tidak Ditemukan
		)
	)

	if %Mtk% gtr 0 (
		if %Mtk% leq 60 (
			set grade_Mtk=C
		) else if %Mtk% leq 75 (
			set grade_Mtk=B
		) else if %Mtk% leq 85 (
			set grade_Mtk=AB
		) else if %Mtk% leq 100 (
			set grade_Mtk=A
		) else (
			set grade_Mtk=Grade Anda Tidak Ditemukan
		)
	)

	if %Kal1% gtr 0 (
		if %Kal1% leq 60 (
			set grade_Kal1=C
		) else if %Kal1% leq 75 (
			set grade_Kal1=B
		) else if %Kal1% leq 85 (
			set grade_Kal1=AB
		) else if %Kal1% leq 100 (
			set grade_Kal1=A
		) else (
			set grade_Kal1=Grade Anda Tidak Ditemukan
		)
	)

	if %So% gtr 0 (
		if %So% leq 60 (
			set grade_So=C
		) else if %So% leq 75 (
			set grade_So=B
		) else if %So% leq 85 (
			set grade_So=AB
		) else if %So% leq 100 (
			set grade_So=A
		) else (
			set grade_So=Grade Anda Tidak Ditemukan
		)
	)

	echo ------------------------------------------------> laporan_penilaian.txt
	echo                    LAPORAN PENILAIAN MAHASISWA>> laporan_penilaian.txt
	echo ------------------------------------------------>> laporan_penilaian.txt
	echo Nim          : %nim%>> laporan_penilaian.txt
	echo Nama lengkap : %nama%>> laporan_penilaian.txt
	echo Kelas        : %kelas%>> laporan_penilaian.txt
	echo Program Studi: %prodi%>> laporan_penilaian.txt
	echo -------------------------->> laporan_penilaian.txt
	echo No   Nama   Makul   Nilai   Grade>> laporan_penilaian.txt
	echo -------------------------->> laporan_penilaian.txt
	echo 1. Bahasa Indonesia  : %Bhs_indo% %grade_indo%>> laporan_penilaian.txt
	echo 2. Bahasa Inggris    : %Bhs_ing% %grade_ing%>> laporan_penilaian.txt
	echo 3. Pemrograman Dasar : %Pd% %grade_Pd%>> laporan_penilaian.txt
	echo 4. Matematika        : %Mtk% %grade_Mtk%>> laporan_penilaian.txt
	echo 5. Kalkulus 1        : %Kal1% %grade_Kal1%>> laporan_penilaian.txt
	echo 6. Sistem Operasi    : %So% %grade_So%>> laporan_penilaian.txt
	echo -------------------------->> laporan_penilaian.txt
	echo Rata-rata: %rata% %grade_rata%>> laporan_penilaian.txt
	echo -------------------------->> laporan_penilaian.txt
	echo Laporan penilaian telah disimpan ke file laporan_penilaian.txt
	pause 
	goto menuakademik 

	:aplikasiperhitungan
	cls
	setlocal enabledelayedexpansion

	:menu
	echo === Aplikasi Perhitungan ===
	echo 1. Penjumlahan
	echo 2. Pengurangan
	echo 3. Perkalian
	echo 4. Pembagian
	echo 5. Keluar
	echo ==========================
	set /p pilihan=Masukkan pilihan:

	if "%pilihan%"=="1" (
		call :penjumlahan
	) else if "%pilihan%"=="2" (
		call :pengurangan
	) else if "%pilihan%"=="3" (
		call :perkalian
	) else if "%pilihan%"=="4" (
		call :pembagian
	) else if "%pilihan%"=="5" (
	   call :back
	) else (
		echo Pilihan tidak valid!
		pause
		goto menu
	)

		:penjumlahan
		set /p angka1=Masukkan angka pertama:
		set /p angka2=Masukkan angka kedua:
		set /a hasil=angka1+angka2
		echo Hasil penjumlahan: %hasil%
		pause
		goto menu

		:pengurangan
		set /p angka1=Masukkan angka pertama:
		set /p angka2=Masukkan angka kedua:
		set /a hasil=angka1-angka2
		echo Hasil pengurangan: %hasil%
		pause
		goto menu

		:perkalian
		set /p angka1=Masukkan angka pertama:
		set /p angka2=Masukkan angka kedua:
		set /a hasil=angka1*angka2
		echo Hasil perkalian: %hasil%
		pause
		goto menu

		:pembagian
		set /p angka1=Masukkan angka pertama:
		set /p angka2=Masukkan angka kedua:
		set /a hasil=angka1/angka2
		echo Hasil pembagian: %hasil%
		pause
		goto menu

		:back 
		echo terimakasih
		pause 
		goto menuakademik 
	:kembali
	echo terimakasih
	goto begin 


:menukomputer 
cls
echo -------------------------------------------------------------------
echo                      menum komputer 
echo -------------------------------------------------------------------
echo 1. menu perbaikan komputer
echo 2. menu jaringan komputer
echo 3. menu aplikasi
echo 4. menu seting
echo 5. kembali
set /p pilihan=pilihan menu anda:
if %pilihan%==1  goto perbaikan komputer
if %pilihan%==2  goto jaringan komputer
if %pilihan%==3  goto aplikasi
if %pilihan%==4  goto setting 
if %pilihan%==5  goto kembali 

	:perbaikankomputer
	cls
	echo ---------------------------------------------------------------
	echo              Pilihan Perbaikan Sistem Komputer
	echo ---------------------------------------------------------------
	echo 		1. Perbaiki koneksi jaringan
	echo 		2. Perbaiki file sistem
	echo 		3. Perbaiki perizinan
	echo 		4. exit
	set /p pilihan=pilihan menu anda:
	if %pilihan%==1  goto koneksijaringan
	if %pilihan%==2  goto filesisitem
	if %pilihan%==3  goto perizinan
	if %pilihan%==4  goto exit

		:koneksijaringan
		cls
		echo Menjalankan Perbaikan Koneksi Jaringan...

		echo Memperbarui alamat IP...
		ipconfig /release
		ipconfig /renew

		echo Membersihkan cache DNS...
		ipconfig /flushdns

		echo Me-reset koneksi jaringan...
		netsh winsock reset

		echo Me-reset konfigurasi TCP/IP...
		netsh int ip reset

		echo Mengatur ulang adaptasi jaringan...
		netsh interface ipv4 reset
		netsh interface ipv6 reset

		echo Memulai ulang adapter jaringan...
		netsh interface set interface "NamaAdapter" admin=disable
		netsh interface set interface "NamaAdapter" admin=enable

		echo Perbaikan koneksi jaringan selesai.
		pause
		goto perbaikankomputer

		:filesistem
		cls
		echo Menjalankan Perbaikan File Sistem...
		echo Memperbarui alamat IP...
		ipconfig /release
		ipconfig /renew

		echo Membersihkan cache DNS...
		ipconfig /flushdns

		echo Me-reset koneksi jaringan...
		netsh winsock reset

		echo Me-reset konfigurasi TCP/IP...
		netsh int ip reset

		echo Mengatur ulang adaptasi jaringan...
		netsh interface ipv4 reset
		netsh interface ipv6 reset

		echo Memulai ulang adapter jaringan...
		netsh interface set interface "NamaAdapter" admin=disable
		netsh interface set interface "NamaAdapter" admin=enable

		echo Perbaikan koneksi jaringan selesai.
		pause
		goto perbaikankomputer

		:perizinan
		cls
		echo Menjalankan Perbaikan Perizinan...
		echo Memperbaiki perizinan pada direktori sistem...
		icacls C:\Windows /reset /T /C /L /Q

		echo Memperbaiki perizinan pada direktori pengguna...
		icacls C:\Users\%USERNAME% /reset /T /C /L /Q

		echo Memperbaiki perizinan pada direktori Program Files...
		icacls "C:\Program Files" /reset /T /C /L /Q

		echo Memperbaiki perizinan pada direktori Program Files (x86)...
		icacls "C:\Program Files (x86)" /reset /T /C /L /Q

		echo Memperbaiki perizinan pada direktori ProgramData...
		icacls C:\ProgramData /reset /T /C /L /Q

		echo Memperbaiki perizinan pada direktori Temp...
		icacls C:\Windows\Temp /reset /T /C /L /Q

		echo Perbaikan perizinan selesai.
		pause
		goto perbaikankomputer 

		:exit
		cls
		echo sekian
		pause
		goto perbaikankomputer  
	
	:jaringankomputer
	cls 
	echo -------------------------------------------------------------------
	echo                      menu jaringan komputer
	echo -------------------------------------------------------------------
	echo 	1. Tampilkan Informasi IP
	echo 	2. Ping ke Alamat IP
	echo 	3. Uji Kecepatan Internet
	echo 	4. Keluar

	choice /c 1234 /n

	if errorlevel 4 goto exit
	if errorlevel 3 goto test_speed
	if errorlevel 2 goto ping_ip
	if errorlevel 1 goto show_ip_info

		:show_ip_info
		cls
		echo Informasi IP Komputer:
		ipconfig
		pause
		goto jaringan komputer

		:ping_ip
		cls
		echo Masukkan alamat IP yang ingin di-ping:
		set /p ipAddress=
		ping %ipAddress% -n 4
		pause
		goto jaringfan komputer

		:test_speed
		cls
		echo Menjalankan Uji Kecepatan Internet...
		ping <alamat_ip_server> -n 10
		pause
		goto jaringan komputer


		:exit
		cls
		echo Terima kasih telah menggunakan Menu Jaringan Komputer.
		pause
		goto jaringan komputer 

	:aplikasi 
	cls 
	echo -----------------------------------------------------------------
	echo                         menu aplikasi 
	echo ----------------------------------------------------------------
	echo 1.notpadd++
	echo 2.chrome 
	echo 2.exit 
	set /p pilihan=pilihan menu anda:
	if %pilihan%==1 goto notpadd++
	if %pilihan%==2 goto chrome 
	if %pilihan%==2 goto exit

		:notpadd++
		cls
		"C:\Program Files\Notepad++\notepad++"
		pause
		goto aplikasi 
		
		:chrome
		"C:\Program Files (x86)\Google\Chrome\Application\chrome"
		goto setting

		:exit
		cls
		echo terimakasih
		pause
		goto aplikasi

	:setting
	cls
	echo ---------------------------------------------------------
	echo                          setting komputer
	echo ---------------------------------------------------------
	echo                  [1] setting keyboard 
	echo                  [2]Settig     Language
	echo                  [3]Setting    date
	echo                  [4]Add User
	echo                  [5]Sound Control
	echo                  [6]Open Startup
	echo                  [7] kembali                           
	echo.

	set /p "pilihan=Masukkan Pilihan Menu:"
	if %pilihan%==1  goto keyboard
	if %pilihan%==2  goto Language
	if %pilihan%==3  goto  Date
	if %pilihan%==4  goto User
	if %pilihan%==5  goto Sound
	if %pilihan%==6  goto Startup
	if %pilihan%==7  goto back


		:Keyboard
		cls
		start control Keyboard
		goto setting
		pause
		:Language
		cls
		start intl.cpl 
		goto setting
		pause 
		:Date
		cls
		start timedate.cpl
		goto setting
		:User
		cls
		start Netplwiz.exe
		goto setting
		pause
		:Sound
		cls
		start SndVol.exe
		goto setting
		pause
		:Startup
		start msconfig
		goto setting
		pause
		:back
		goto setting

:kembali 
cls
echo terimakasi 
pause 
goto begin 
		

