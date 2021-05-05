#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


F3::
loop 100{
craft()
}
Gui, Add, Text,, Crafting complete
Gui, Show
return

mouseup()
{
MouseClick, left, , , 1, , U
}

mousedown() 
{
MouseClick, left, , , 1, , D
}

craft()
{
mousedown()
sleep, 900
mouseup()
sleep, 300

}









