#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;; Memory Slot 1
+NumpadEnd::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot1 = %clipboard%
return

NumpadEnd::
send %memslot1%
return

!NumpadEnd::
ToolTip %memslot1%
sleep, 1000
ToolTip
Return

;; Memory Slot 2
+NumpadDown::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot2 = %clipboard%
return

NumpadDown::
send %memslot2%
return

!NumpadDown::
ToolTip %memslot2%
sleep, 1000
ToolTip
Return

;; Memory Slot 3
+NumpadPgDn::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot3 = %clipboard%
return

NumpadPgDn::
send %memslot3%
return

!NumpadPgDN::
ToolTip %memslot3%
sleep, 1000
ToolTip
Return

;; Memory Slot 4

+NumpadLeft::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot4 = %clipboard%
return

NumpadLeft::
send %memslot4%
return

!NumpadLeft::
ToolTip %memslot4%
sleep, 1000
ToolTip
Return

;; Memory Slot 5
+NumpadDel::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot5 = %clipboard%

NumpadDel::
send %memslot5%
return

!NumpadDel::
ToolTip %memslot5%
sleep, 1000
ToolTip
Return

;; Memory Slot 6
+NumpadRight::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot6 = %clipboard%
return

NumpadRight::
send %memslot6%
return

!NumpadRight::
ToolTip %memslot6%
sleep, 1000
ToolTip
Return

;; Memory slot 7
+NumpadHome::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot7 = %clipboard%
return

NumpadHome::
send %memslot7%
return

!NumpadHome::
ToolTip %memslot7%
sleep, 1000
ToolTip
Return


;; Memory Slot 8
+numpadUp::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot8 = %clipboard%
return

NumpadUp::
send %memslot8%
return

!NumpadUp::
ToolTip %memslot8%
sleep, 1000
ToolTip
Return

;; Memory Slot 9
+NumpadPgUp::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot9 = %clipboard%

NumpadPgUp::
send %memslot9%
return

!NumpadPgUp::
ToolTip %memslot9%
sleep, 1000
ToolTip
Return

;; Memory Slot 10
+NumpadIns::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot10 = %clipboard%

NumpadIns::
send %memslot10%
return

!NumpadIns::
ToolTip %memslot10%
sleep, 1000
ToolTip
return