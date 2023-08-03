#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!n::
IfWinExist, ahk_exe notion.exe
{
    WinActivate
}
else
{
    Run, "C:\Users\Liam\AppData\Local\Programs\Notion\Notion.exe"
}
return
