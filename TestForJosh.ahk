#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

cost := 24.43


F1::
Mousemove 1657, 156
Sleep 75
Click, Left
Sleep 75
Send {end}
Sleep 75
send +{home}
sleep 75
send ^c 
sleep 75
Mousemove 295, 54
sleep 75
Click Left
sleep 75
send ^v
return

F2::
Send ^c
test = %clipboard%
return

f3::
send %test%



F11::Reload