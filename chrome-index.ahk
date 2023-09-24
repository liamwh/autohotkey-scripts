#NoEnv
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
