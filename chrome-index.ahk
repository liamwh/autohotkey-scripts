#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!a::  ; This is the hotkey (Ctrl+Shift+Alt+Win+A in this case)
IfWinExist, ahk_exe chrome.exe
{
    WinActivate
}
else
{
    Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
}
return
