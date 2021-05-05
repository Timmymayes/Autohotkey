OnClipboardChange:
ToolTip Copied: %clipboard%
Sleep 500
ToolTip  ; Turn off the tip.
return

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
sleep, 500
ToolTip
return

;; Memory Slot 2
+NumpadDown::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot2 = %clipboard%
return

NumpadDown::
send %memslot2%
return

;; Memory Slot 3
+NumpadPgDn::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot3 = %clipboard%
return

NumpadPgDn::
send %memslot3%
return

!NumpadPgDn::
ToolTip %memslot2%
sleep, 500
ToolTip
return

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
sleep, 500
ToolTip
return


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
sleep, 500
ToolTip
return

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
sleep, 500
ToolTip
return


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
sleep, 500
ToolTip
return

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
sleep, 500
ToolTip
return

;; Memory Slot 0
+NumpadIns::
send {ctrl down}c{ctrl up}
Sleep, 50
memslot0 = %clipboard%
return

NumpadIns::
send %memslot0%
return

!NumpadIns::
ToolTip %memslot0%
sleep, 500
ToolTip
return

;; Memory Slot delete
+NumpadDel::
send {ctrl down}c{ctrl up}
Sleep, 50
memslotdel = %clipboard%
return

NumpadDel::
send %memslotdel%
return

!NumpadDel::
ToolTip %memslotdel%
sleep, 500
ToolTip
return

