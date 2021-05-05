#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.





suspend

f1::suspend,toggle
return

LButton::
GetKeyState, state, Lbutton
if state = D
	{
	SendInput,{LButton Up}
	sleep, 100
	suspend
	}
else
	{
	SendInput,{LButton Down}
	}
	
return

Esc::ExitApp ; Emergency exit