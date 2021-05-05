#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance Force
Start_Time:=A_TickCount
SetTimer,test,10000
return

; To test this, run the script and then let it show the first tooltip. After that, press numpad 1 every 2-3 seconds for about 20 seconds.
; As you will see, the next time the tooltip shows the time won't be 20000, but rather it will be 10000 after the last time you pressed 
; numpad 1, thus showing it was reset each time you pressed numpad 1.

test:
	Tooltip,% A_TickCount - Start_Time ; This is all that the timer is doing, you can set it to close this/ open that/ whatever.
	return
	
Numpad1::  ; This is the event to restart the timer without triggering it.
	SetTimer,test,10000
	return
	
*ESC::ExitApp	