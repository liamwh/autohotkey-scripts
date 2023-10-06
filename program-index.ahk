SendMode Input
SetWorkingDir %A_ScriptDir%



; Variable to hold the HWND (unique ID) of the last active Chrome window

lastActiveChrome := ""



^+#!a::  ; This is the hotkey (Ctrl+Shift+Alt+Win+A in this case)

IfWinActive, ahk_exe chrome.exe

{

    ; If Chrome is already active, cycle through Chrome windows

    WinGet, active_id, ID, A

    lastActiveChrome := active_id



    GroupAdd, ChromeWindows, ahk_exe chrome.exe

    GroupActivate, ChromeWindows

}

else

{

    ; If Chrome is not active but exists

    if (lastActiveChrome != "")

    {

        ; Activate the last Chrome window used

        WinActivate, ahk_id %lastActiveChrome%

    }

    else if WinExist("ahk_exe chrome.exe")

    {

        ; If no Chrome window was previously active, just activate any

        WinActivate

    }

    else

    {

        ; Run Chrome if not open

        Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

    }

}
return

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
