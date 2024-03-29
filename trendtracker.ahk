#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

memslot1 := Test

	; Example: Simple text editor with menu bar.

	; Create the sub-menus for the menu bar:
	Menu, FileMenu, Add, &New, FileNew
	Menu, FileMenu, Add, &Open, FileOpen
	Menu, FileMenu, Add, &Save, FileSave
	Menu, FileMenu, Add, Save &As, FileSaveAs
	Menu, FileMenu, Add  ; Separator line.
	Menu, FileMenu, Add, E&xit, FileExit
	Menu, HelpMenu, Add, &About, HelpAbout

	; Create the menu bar by attaching the sub-menus to it:
	Menu, MyMenuBar, Add, &File, :FileMenu
	Menu, MyMenuBar, Add, &Help, :HelpMenu

	; Attach the menu bar to the window:
	Gui, Menu, MyMenuBar

	; Create the main Edit control and display the window:
	Gui, +Resize  ; Make the window resizable.
	Gui, Add, Text, section, Memory Slot 1: %memslot1%
	Gui, Add, Text,, Memory Slot 2: %memslot2%
	Gui, Add, Text,, Memory Slot 3: %memslot3%
	Gui, Add, Text,, Memory Slot 4: %memslot4%
	Gui, Add, Text,, Memory Slot 5: %memslot5%
	Gui, Add, Text,, Memory Slot 6: %memslot6%
	Gui, Add, Text,, Memory Slot 7: %memslot7%
	Gui, Add, Text,, Memory Slot 8: %memslot8%
	Gui, Add, Text,, Memory Slot 9: %memslot9%
	Gui, Show,,Memory
	CurrentFileName =  ; Indicate that there is no current file.
	return

	FileNew:
	GuiControl,, MainEdit  ; Clear the Edit control.
	return

	FileOpen:
	Gui +OwnDialogs  ; Force the user to dismiss the FileSelectFile dialog before returning to the main window.
	FileSelectFile, SelectedFileName, 3,, Open File, Text Documents (*.txt)
	if SelectedFileName =  ; No file selected.
		return
	Gosub FileRead
	return

	FileRead:  ; Caller has set the variable SelectedFileName for us.
	FileRead, MainEdit, %SelectedFileName%  ; Read the file's contents into the variable.
	if ErrorLevel
	{
		MsgBox Could not open "%SelectedFileName%".
		return
	}


	FileSave:
	if CurrentFileName =   ; No filename selected yet, so do Save-As instead.
		Goto FileSaveAs
	Gosub SaveCurrentFile
	return

	FileSaveAs:
	Gui +OwnDialogs  ; Force the user to dismiss the FileSelectFile dialog before returning to the main window.
	FileSelectFile, SelectedFileName, S16,, Save File, Text Documents (*.txt)
	if SelectedFileName =  ; No file selected.
		return
	CurrentFileName = %SelectedFileName%
	Gosub SaveCurrentFile
	return

	SaveCurrentFile:  ; Caller has ensured that CurrentFileName is not blank.
	IfExist %CurrentFileName%
	{
		FileDelete %CurrentFileName%
		if ErrorLevel
		{
			MsgBox The attempt to overwrite "%CurrentFileName%" failed.
			return
		}
	}


	HelpAbout:
	Gui, 2:+owner1  ; Make the main window (Gui #1) the owner of the "about box" (Gui #2).
	Gui +Disabled  ; Disable main window.
	Gui, 2:Add, Text,, Text for about box.
	Gui, 2:Add, Button, Default, OK
	Gui, 2:Show
	return

	2ButtonOK:  ; This section is used by the "about box" above.
	2GuiClose:
	2GuiEscape:
	Gui, 1:-Disabled  ; Re-enable the main window (must be done prior to the next step).
	Gui Destroy  ; Destroy the about box.
	return

	GuiDropFiles:  ; Support drag & drop.
	Loop, parse, A_GuiEvent, `n
	{
		SelectedFileName = %A_LoopField%  ; Get the first file only (in case there's more than one).
		break
	}
	Gosub FileRead
	return

	GuiSize:
	if ErrorLevel = 1  ; The window has been minimized.  No action needed.
		return
	; Otherwise, the window has been resized or maximized. Resize the Edit control to match.
	NewWidth := A_GuiWidth - 200
	NewHeight := A_GuiHeight - 200
	GuiControl, Move, MainEdit, W%NewWidth% H%NewHeight%
	return

	FileExit:     ; User chose "Exit" from the File menu.
	GuiClose:  ; User closed the window.
	Gui, Destroy
