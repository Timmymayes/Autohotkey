#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



F9::
MouseMove 230,175
Click Left
sleep 50
send {down}
Sleep 50
send {enter}
sleep 150
Mousemove 550, 175
Sleep 150
Click Left

return

F10::
Loop 25
{
	Send {F9}
	Sleep 5000
}
return