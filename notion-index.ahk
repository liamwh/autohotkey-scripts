#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

^+#!n::
IfWinExist, ahk_exe notion.exe
{
    GroupAdd, NotionWindows, ahk_exe notion.exe
    GroupActivate, NotionWindows
}
else
{
    Run, "C:\Users\Liam\AppData\Local\Programs\Notion\Notion.exe"
}
return
