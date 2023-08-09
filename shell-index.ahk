#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!s::  ; This is the hotkey (Ctrl+Shift+Alt+Win+A in this case)
IfWinExist, ahk_exe wezterm-gui.exe
{
    WinActivate
}
else IfWinExist, nvim
{
    WinActivate
}
else
{
    Run, "C:\Users\Liam\scoop\apps\wezterm\current\wezterm-gui.exe"
}
return
