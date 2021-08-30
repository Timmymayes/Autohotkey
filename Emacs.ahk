#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



;; includes

#include timetools.ahk
#include hotstrings.ahk
#include memslots.ahk
;#include razerRadial.ahk
;#include desktop_switcher.ahk
#include trello.ahk 
#include appSwitcher.ahk



!F13::nextExplorer()
+F13::switchToNotepadPP()
^f13::nextVivaldi()
!^F13::
+^F13::
+!^F13::


^F14::switchToPremiere()
+F14::nextBlender()


!F15::switchToNotion()
+F15::
^f15::
!^F15::
+^F15::
+!^F15::


!F16::Send, {PrintScreen}
+F16::
^f16::
!^F16::
+^F16::
+!^F16::Editmode:=!Editmode ; toggle utton for edit mode

CompoundClipboard =
TrayTip, Emacs script loaded
; This is basic arrow 


!F12:: Reload


+F12:: Edit

OnClipboardChange:
ToolTip Copied: %clipboard%
Sleep 1000
ToolTip  ; Turn off the tip.
return






#If Editmode
SendMode Input
^n::send {Down}
^b::send {Left}
^f::send {Right}
^p::send {Up}

;; Move by word or page
!b::send {Ctrl Down}{Left}{Ctrl Up}
!f::send {ctrl Down}{Right}{Ctrl Up}
!n::send {PgDn}
!p::send {Pgup}
 
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
  

+!p:: send +{up}
+!n:: send +{down}
+!b:: send +{left}
+!f:: send +{right}


^e::send {End}
!e::send {Shift Down}{End}{Shift Up}
^a::send {Home}
!a:: Send {shift down}{home}{shift up}

^d:: Send {Del}
!d:: Send ^{del} 


^i::send {Ins}





