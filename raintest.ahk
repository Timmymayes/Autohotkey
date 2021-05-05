#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C:\Users\Tyler\Documents\Rainmeter\Skins\illustro\Clock\  ; Ensures a consistent starting directory.

12hour := "%I:%M %p"
24hour := "%H:%M"

F1::
FileRead, clock, clock.ini
StringReplace, clockEdit, clock, %24hour%, %12hour%
FileDelete, clock.ini
FileAppend, %clockEdit%, clock.ini
SendMessage, 0x111, 4001,,, ahk_class RainmeterMeterWindow
return

F2::
FileRead, clock, clock.ini
StringReplace, clockEdit, clock, %12hour%, %24hour%
FileDelete, clock.ini
FileAppend, %clockEdit%, clock.ini
SendMessage, 0x111, 4001,,, ahk_class RainmeterMeterWindow
return
