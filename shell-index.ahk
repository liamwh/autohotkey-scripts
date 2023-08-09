#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!s::
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
