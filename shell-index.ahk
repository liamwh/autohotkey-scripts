#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!s::  ; This is the hotkey (Ctrl+Shift+Alt+Win+A in this case)
IfWinExist, ahk_exe wezterm.exe
{
    WinActivate
}
else
{
    Run, "C:\Users\Liam\scoop\apps\wezterm\current\wezterm-gui.exe"
}
return
