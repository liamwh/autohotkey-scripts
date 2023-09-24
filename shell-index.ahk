#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!s::
IfWinExist, ahk_exe wezterm-gui.exe
{
    GroupAdd, TerminalWindows, ahk_exe wezterm-gui.exe
    GroupActivate, TerminalWindows
}
else IfWinExist, nvim
{
    GroupAdd, TerminalWindows, ahk_exe nvim
    GroupActivate, TerminalWindows
}
else
{
    Run, "C:\Users\Liam\scoop\apps\wezterm\current\wezterm-gui.exe"
}
return
