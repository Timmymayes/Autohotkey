#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#IfWinActive, ahk_class ENSingleNoteView
numpad1:: Send {F3}{@}Office{enter}
numpad2:: Send {F3}{@}home{enter}
numpad3:: Send {F3}{@}Errands{enter}
numpad4:: Send {F3}{@}Braindead{enter}
numpad5:: 
numpad6:: Send {F3}{@}FullFocus{Enter}
numpad7:: 
numpad8::
numpad9::
#IfWinActive

#IfWinActive, TweetDeck - Google Chrome
F1::🎮



#IfWinActive
