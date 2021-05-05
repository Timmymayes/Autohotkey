#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2


;orbweaver setup

;;1-20

;; select window
!^F1::  ; reinstall 
		send !^m
		sleep 25
		send rein{enter}
		Return
!^F2:: 	; generic troubleshooting
		send !^m
		sleep 25
		send generic{enter}
		return
!^F3:: 	; Language
		send !^m
		sleep 25
		send lang
		send {enter}
		Return
!^F4:: 	
!^F5:: 	; Send Tech Support request
		send !^m
		send tech{enter}
		Return
!^F6:: 
!^F7:: 
!^F8::
!^F9::  ; reply after troubleshoot
			send !^m
			sleep 25
			send after
			send {enter}
			sleep 25
			send ^l
			sleep 75
			send ^c
			Return
!^F10:: Send !^s		; Set case to solved
+!^F1::	; nabu connection issues
			send !^m
			sleep 25
			send conn
			send {enter}
			Return
+!^F2::
+!^F3::
+!^F4::
+!^F5:: Send !^p		; Set case to pending
+!^F6:: ; Internal test
			send !^m
			sleep 25
			send int
			send {enter}
			Return
+!^F7::
+!^F8:: 
+!^F9::
+!^F10:: Send !^d		; Set case to on-hold



;; 21-40 using winkey mod
#!^F1::
#!^F2::
#!^F3::
#!^F4::
#!^F5::	; send nabu tech support request
		Send !^m
		sleep 25
		send tech
		send {down}{enter}
		Return
#!^F6::
#!^F7::
#!^F8::
#!^F9::
#!^F10::
#+!^F1::
#+!^F2::
#+!^F3::
#+!^F4::
#+!^F5::
#+!^F6:: 
#+!^F7::
#+!^F8::
#+!^F9:: ; Nabu extra info
			send !^m
			sleep 25
			send extra
			send {enter}
			Return
#+!^F10::
