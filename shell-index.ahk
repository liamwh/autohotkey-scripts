#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!s::  ; This is the hotkey (Ctrl+Shift+Alt+Win+A in this case)
IfWinExist, ahk_exe alacritty.exe
{
    WinActivate
}
else
{
    Run, "C:\Program Files\Alacritty\alacritty.exe"
}
return
