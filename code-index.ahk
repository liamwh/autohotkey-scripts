#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!c::  ; This is the hotkey (Ctrl+Shift+Alt+Win+A in this case)
IfWinExist, ahk_exe code.exe
{
    WinActivate
}
else
{
    Run, "C:\Program Files\Microsoft VS Code\Code.exe"
}
return
