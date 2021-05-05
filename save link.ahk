#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!^pgdn::
MouseClick, Right
sleep 200
loop, 5 {
	Send {Down}
	sleep 50
}
sleep 100
Send {Enter}
sleep 1000
send {Enter}


Return
