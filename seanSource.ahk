#include complexclipboard.ahk
#include rmafiller.ahk
#include razerzoneFiller.ahk
!f8::
Click 2
sleep 125
Send {down 4}
Sleep 125
Send {tab 3}{enter}
Sleep 125
FormatTime, CurrentDateTime,, M/d/yyyy  ; It will look like 9/1/2005 3:53 PM
SendInput %CurrentDateTime%
Sleep 125
Send {tab 4}{enter}
Sleep 125
Send Sean
sleep 125
Send {shift down}{tab 2}{shift up}
sleep 125
Send {enter}
sleep 125
Send ^v
Return

