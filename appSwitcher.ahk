#IfWinActive

switchToPremiere(){
IfWinNotExist, ahk_class Premiere Pro
	{
	;Run, Adobe Premiere Pro.exe
	;Adobe Premiere Pro CC 2017
	; Run, C:\Program Files\Adobe\Adobe Premiere Pro CC 2017\Adobe Premiere Pro.exe ;if you have more than one version instlaled, you'll have to specify exactly which one you want to open.
	Run, Adobe Premiere Pro.exe
	}
if WinActive("ahk_class Premiere Pro")
	{
	IfWinNotExist, ahk_exe notepad++.exe
		{
		Run, notepad++.exe
		sleep 200
		}
	WinActivate ahk_exe notepad++.exe ;so I have this here as a workaround to a bug. Sometimes Premeire becomes unresponsive to keyboard input. (especially after timeline scrolling, especially with a playing video.) Switching to any other application and back will solve this problem. So I just hit the premiere button again, in those cases.g
	sleep 10
	WinActivate ahk_class Premiere Pro
	}
else
	WinActivate ahk_class Premiere Pro
}


nextExplorer(){
IfWinNotExist, ahk_class CabinetWClass
	Run, explorer.exe
GroupAdd, tylerexplorers, ahk_class CabinetWClass
if WinActive ("ahk_exe explorer.exe")
	GroupActivate, tylerexplorers, r
else 
	WinActivate ahk_class CabinetWClass
}

nextVivaldi() {
IfWinNotExist, ahk_class Chrome_WidgetWin_1
	Run, vivaldi.exe
if WinActive("ahk_class Chrome_WidgetWin_1")
	Send ^{pgdn}
else
	WinActivate ahk_class Chrome_WidgetWin_1
}

nextBlender() {
IfWinNotExist, ahk_exe blender.exe
	Run, "C:\Program Files\Blender Foundation\Blender 2.90\blender.exe"
GroupAdd, tylerBlenders, ahk_exe blender.exe
if WinActive ("ahk_exe blender.exe")
	GroupActivate, tylerBlenders, r
else
	WinActivate ahk_exe blender.exe
}