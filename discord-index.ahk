#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!d::
IfWinExist, ahk_exe discord.exe
{
    WinActivate
}
else
{
    Run, "C:\Users\Liam\AppData\Local\Discord\Update.exe --processStart Discord.exe"
}
return
