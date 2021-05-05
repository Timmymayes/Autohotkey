#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



;; includes

#include timetools.ahk
#include hotstrings.ahk
;#include launcher.ahk
;#include tweetdeck.ahk
#include memslots.ahk
;#include razerRadial.ahk
;#include desktop_switcher.ahk
#include trello.ahk 
#include appSwitcher.ahk



f13::nextExplorer()
f14::nextVivaldi()
f18::switchToPremiere()
f19::nextBlender()

;mouse nudge
^del:: 
MouseGetPos, xPos, yPos
xPos -= 1
MouseMove, %xPos%, %yPos%
return

;^BS::
;MouseGetPos, xPos, yPos
;xPos += 1
;MouseMove, %xPos%, %yPos%
;return



CompoundClipboard =
TrayTip, Emacs script loaded
; This is basic arrow 



SendMode Input
^n::send {Down}
^b::send {Left}
^f::send {Right}
^p::send {Up}

;; Move by word or page
+!b::send {Ctrl Down}{Left}{Ctrl Up}
+!f::send {ctrl Down}{Right}{Ctrl Up}
+!n::send {PgDn}
+!p::send {Pgup}
 
!^n::
send {down}
send {home} 
return

!+^n::
send {down}
send {end}
return


!^p::
send {up}
send {home}
return

!^+p::
send {up}
send {end}
return
  

!p:: send +{up}
!n:: send +{down}
!b:: send +{left}
!f:: send +{right}


^e::send {End}
!e::send {Shift Down}{End}{Shift Up}
^a::send {Home}
!a:: Send {shift down}{home}{shift up}

^d:: Send {Del}
!d:: Send ^{del} 
   
;;;; old hotstrings - keep for reference only 
;:*:vsmc::MAIN_CHARACTER_
;:*:vssc::SUPPORTING_CHARACTER_
;:*:vseq::EQUIPMENT_
;:*:vspt::PLOT_TWIST_




;;launchers
!Numpad1::Run, "C:\Users\Tyler_Mayes\Documents\Forms\CB Template.docx"
!Numpad2::Run, "C:\Users\Tyler_Mayes\Documents\Forms\2018 Graphic Request.doc"
!Numpad3::
Run, "C:\Users\Tyler_Mayes\Documents\Forms\Entertainment Licensor Approval Form-locked.docx"
sleep, 75
send Tyler Mayes{down}
Sleep, 75
Send 3037{down}
sleep, 75
return
!numpad4::Run, "C:\Users\Tyler_Mayes\Documents\Forms\Marvel Social Media Review Form.xlsx"
!numpad6::Run, "C:\Users\Tyler_Mayes\Documents\Forms\CREDIT CARD AUTHORIZATION.docx"
!numpad7::Run, "C:\Users\Tyler_Mayes\Documents\Forms\UD Shipping Request Form.xlsx"
!numpad8::

return

^i::send {Ins}



!F12:: Reload
!F11:: Run "C:\Program Files (x86)\Notepad++\notepad++.exe"

+F12:: Edit

OnClipboardChange:
ToolTip Copied: %clipboard%
Sleep 1000
ToolTip  ; Turn off the tip.
return
