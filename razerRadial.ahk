#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



SplashImageGUI(Picture, X, Y, Duration, Transparent = false)
{
Gui, XPT99:Margin , 0, 0
Gui, XPT99:Add, Picture,, %Picture%
Gui, XPT99:Color, ECE9D8
Gui, XPT99:+LastFound -Caption +AlwaysOnTop +ToolWindow -Border
If Transparent
{
Winset, TransColor, ECE9D8
}
Gui, XPT99:Show, x%X% y%Y% NoActivate
SetTimer, DestroySplashGUI, -%Duration%
return

DestroySplashGUI:
Gui, XPT99:Destroy
return
}


MButton::
MouseGetPos, mouseX, mouseY, , 3
SplashImage = imgs\rzr-ths.png
SplashImageGUI(SplashImage, mouseX-130, mouseY-100, 2000, true)
return