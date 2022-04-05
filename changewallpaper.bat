set "logfile=pgewallpaperlog.txt"
find /n /i "picusewall1" "%logfile%" >nul
if %errorlevel% equ 0 (
	del /f pgewallpaperlog.txt
    >>pgewallpaperlog.txt echo picusewall2
	goto Change1
) else (
	del /f pgewallpaperlog.txt
	>>pgewallpaperlog.txt echo picusewall1
    goto Change2
)

:Change1
	reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Users\mcinl\Desktop\pgewall.bmp /f 
	RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
	goto End

:Change2
	reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Users\mcinl\Desktop\picture2.bmp /f 
	RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
	goto End
	
:End