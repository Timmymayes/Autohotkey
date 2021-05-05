#include complexclipboard.ahk
;#include rmafiller.ahk
!f9::
Click 2
sleep 250
Send {down 4}
Sleep 250
Send {tab 2}{enter}
Sleep 250
FormatTime, CurrentDateTime,, M/d/yyyy  ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
Sleep 250
Send {tab 3}{enter}
Sleep 250
Send Edgar
sleep 250
Send {shift down}{tab 2}{shift up}
sleep 250
Send {enter}
Return

!f3::
memslot1 :=RegExReplace(memslot1,"\R")
memslot2 :=RegExReplace(memslot2,"\R")
memslot3 :=RegExReplace(memslot3,"\R")
memslot4 :=RegExReplace(memslot4,"\R")
memslot6 :=RegExReplace(memslot6,"\R")

Send %memslot1%
sleep 200
send {down 4}
sleep 150
send {left 2}
send %memslot2%
sleep 150
send {down}
send %memslot3%
sleep 150
send {down}
sleep 150
send %memslot4%
sleep 150
Send {down 6}
sleep 150
send {F2}{space}
sleep 150
send %memslot6%
send {space}Hours of use
Return

