; Toggles default audio device in Control Panel (switches between HDMI on TV and speakers).
!Appskey:: 
if !_active
	_active = 1
 ;toggles up and down states. 
  Run, mmsys.cpl 
WinWait,Sound
ControlSend,SysListView321,{Down %_active%}
if ( _active = 2 )
{
	_active := 0
}
Else
{
	_active := _active + 1
}

ControlClick,&Set Default
sleep, 250
ControlClick,OK 
return