@echo off
setlocal enabledelayedexpansion

set "output_file=%CD%\wifi_passwords.txt"

echo Wi-Fi Passwords > "%output_file%"
echo --------------- >> "%output_file%"

for /f "tokens=2 delims=:" %%a in ('netsh wlan show profile') do (
    set "ssid=%%~a"
    set "ssid=!ssid:~1!"
    
    netsh wlan show profile name="!ssid!" key=clear > temp.txt
    
    findstr "Key Content" temp.txt > nul
    if !errorlevel! neq 0 (
        echo Network: !ssid! ^| Password: Not Found >> "%output_file%"
    ) else (
        for /f "tokens=2 delims=:" %%b in ('findstr /C:"Key Content" temp.txt') do (
            set "password=%%b"
            set "password=!password:~1!"
            echo Network: !ssid! ^| Password: !password! >> "%output_file%"
        )
    )
    
    del temp.txt
)

echo Wi-Fi passwords saved to: "%output_file%"
echo Press any key to exit...
pause > nul
