#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
:*:]dt::  ; This hotstring replaces "]d" with the current date and time via the commands below.
FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt  ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
return

:*:]da::  ; This hotstring replaces "]d" with the current date and time via the commands below.
FormatTime, CurrentDateTime,, M/d/yyyy  ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
return

:*:]ti::  ; This hotstring replaces "]d" with the current date and time via the commands below.
FormatTime, CurrentTime,, h:mm tt  ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentTime%
return

:*:]eu:: ; hotstring replaces eu with current date in eu format for
FormatTime, CurrentDateTime,, ddMMyyyy
SendInput %CurrentDateTime%
return