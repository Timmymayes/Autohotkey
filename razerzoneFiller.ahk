#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F8::
	m := RegExReplace( Clipboard, ".*?:+")
	Loop, parse, m, `r, `n
		Data%A_Index% = %A_LoopField%
		
	;Data 1 = name
	;Data 2 = email
	;data 3 = phone
	;data 4 = street	
	;data 5 = city
	;data 6 = state
	;data 7 = zip
	;data 8 = country	

	;split name
	StringSplit, NAME, Data1, " "

	; Filling Form out: 
	Send %Name1%
	sleep 1500
	Send {tab}
	sleep 150
	Send %Name2%{space}%Name3%{space}%Name4%
	sleep 150 
	Send {tab}{tab}
	sleep 150
	SendRaw %Data4%
	sleep 150
	send {tab 2}
	sleep 150
	Send %Data5%
	sleep 150
	Send {tab 2}
	sleep 150
	Send %Data7%
	sleep 150
	send {tab 2}
	sleep 150
	Send %Data3%{tab}
	sleep 150
	Send %Data2%

	;;;; clear all variables
	m =
	Clipboard = 
	;Lines =
	Data1 =
	Data2 =
	Data3 =
	Data4 =
	Data5 =
	Data6 =
	Data7 =
	Data8 =

return