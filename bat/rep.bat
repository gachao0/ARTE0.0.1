set a=%cd%\kill2.exe
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "kill" /f
pause