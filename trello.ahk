#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.


#IfWinActive, ahk_class Chrome_WidgetWin_1
^ins:: 
Send l
sleep 250
send 6
sleep 150
send {enter}
sleep 150 
send {esc}
Return

^home::
Send l
sleep 250
send {tab}+{tab}7
sleep 150
send {enter}
sleep 150 
send {esc}
Return

^pgup::
Send l
sleep 250
send 3
sleep 150
send {enter}
sleep 150 
send {esc}
Return

#IfWinActive
