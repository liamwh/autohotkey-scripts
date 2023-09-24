#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!d::
IfWinExist, ahk_exe discord.exe
{
    GroupAdd, DiscordWindows, ahk_exe discord.exe
    GroupActivate, DiscordWindows
}
else
{
    Run, "C:\Users\Liam\AppData\Local\Discord\Update.exe --processStart Discord.exe"
}
return
