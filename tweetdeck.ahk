#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#IfWinActive, ahk_class ENSingleNoteView
numpad1:: Send {F3}{@}Office{enter}
numpad2:: Send {F3}{@}home{enter}
#IfWinActive

#IfWinActive, Shipping Template.docx - Word
F1::
Send %memslot1%{down}{down}{End}
sleep 300
Send %memslot2%{down}{End}
sleep 300
send %memslot3%{down}{end}
sleep 300
send %memslot6%{Shift down}{tab 2}{shift up}{end}
sleep 300
send %memslot4%
return

#IfWinActive

#IfWinActive, ahk_class Chrome_WidgetWin_1
F1::Send 📷
F2::Send 🎮
!F3::Send 🖱
F4::Send ⌨️
F5::Send 👏
F6::Send 🙌
F7::Send 👌
F8::Send 👍
F9::Send 🐍
F10::Send 👀



F12::Send ❤️
!F12::Send ❤️💛💚💙💜
#IfWinActive

#IfWinActive, TweetDeck - Google Chrome
!Del::
	MouseMove 1110, 640
	Sleep, 75
	Click, Left
	Sleep, 75
	MouseMove 1040,870
	sleep, 75
	Click, Left
	Sleep, 75
	MouseMove 870, 530
	Sleep, 75
	Click, Left
	Sleep, 300
	Send {Down}{Down}{Down}
	sleep, 75
	MouseMove 980, 753
	Sleep, 75
	Click, Left
	
Return
#IfWinActive
