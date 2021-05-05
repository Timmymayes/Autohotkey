#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^r::
	Input jchar, L1
		;;; Greetings
		if ( jchar ="g" )
		{
			Input kchar, L2
				if ( kchar = "hi" )
				{
					send Hi there ,
					send {left}
				}
				else
				if ( kchar = "fg" )
				{
					send Greetings fellow gamer{!}{enter}{enter}
				}
				else
				if (kchar = "op" )
				{
					Send Thanks for contacting Razer. 
				}
		}
		;;;; emails
		if ( jchar = "e" )
		{
			Input jchar, L3
			if ( jchar = "ref" )
			{
				Send Sugi{Enter}tani{Enter}ngu{Enter}{Tab}lester{Enter}samin{Enter}Nathan{Enter}Ron{enter}{Tab}US Refund{Tab}Hi all,{Enter}{Enter}Order NO: %memslot5%{Enter}Reason: RMA{Enter}Product: %memslot1%{Enter}Amount: %memslot2%{Enter}Proof: see attachment from Zach{Enter}{Enter}@Sugi Please approve ASAP
			}
			else
			if ( jchar = "eup" )
			{
				Send Markus{Enter}Lenny{Enter}{Tab}All{Enter}{Tab}{(EU Parts) %memslot2% {%memslot1%;%memslot0%;EU}{Tab}Hi Markus / Lenny,{enter}{enter}Please send a replacement part, thanks!{enter}{enter}%memslot3%
			}
			else
			if ( jchar = "boc")
			{
				Send Ain{enter}{tab}all{tab}{tab}
				Sleep, 25
				Send ^v
				sleep, 25
				Send, {space}-{space}Backorder Check{tab}Hi Ain,{enter}{enter}Customer’s order is past the backorder notification date please provide an updated date/listed as null. 
				Send {Enter}{enter}Region:{space}{enter}Item on backorder:{up}{end}
			}
		
			
		}		
		
		if ( jchar = "p" )
		{
			Input jchar, L3
			{
				if (jchar="802")
				{
					Send Staff802{tab}Ford802c{tab}{enter}
				}
				else
				if (jchar = "871")
				{
					Send Staff871{tab}Blink802C{tab}{enter}
				}
				else
				if ( jchar = "872")
				{
					Send Staff872{tab}York802C{tab}{enter}
				}
				else
				if (jchar = "873")
				{
					Send Staff873{tab}Laugh802C{tab}{enter}
				}
				else
				if ( jchar  = "syn")
				{
					Send tyler.mayes{@}razerzone.com{tab}A9efh6ni49
				}

			}
				
		}
		
		
		;;; general use
		if ( jchar ="n" )
		{
			Input jchar, L3
			{
				if ( jchar = "inc" )
				{
					Send I apologize for any inconvenience caused. 
				}
				else
				if ( jchar = "com" )
				{
					Send Please contact our community team and they will be more than happy to assist you:{enter}{enter}(Email) cult@razerzone.com
				}
				else
				if ( jchar = "res" )
				{
					Send Please see a list of local resellers here:{enter}{enter}http://www.razerzone.com/pages/razer-resellers
				}
				else
				if ( jchar = "ty1" )
				{
					Send You{'}re welcome{!} Please let us know if you have any further questions, and thanks for supporting Razer.
				}
				else
				if ( jchar = "ty2" )
				{
					Send Glad to hear it. Its customers like you that make me love my job so much. All of us here at the office are really enthusiastic about our company and products and it makes us feel awesome that our customer{'}s feel the same way. May all your games end victoriously{!}{enter}{enter}If you have any further questions let us know.
				}
				else
				if ( jchar = "ser" )
				{
					Send  The serial number is located on a bar code sticker. It is 2 letters followed by a long string of numbers. It will not contain any spaces or dashes. 
				}
				else
				if ( jchar = "nrg" )
				{
					Send Customer wants to cancel. NRG
				}
			}
		}
		if (jchar="z")
		{
			Input jchar, L3
			{
				if ( jchar = "fbk" )
				{
					Send We appreciate you taking the time to send in your feedback. If you could answer the following questions:{enter}{enter}1.{enter}2.{enter}3.{enter}{enter}We look forward to hearing back regarding the above troubleshooting steps.
				}
			}
		}
		if ( jchar = "l")
		{
			Input jchar, L3
			{
				if ( jchar = "new")
				{
					Send http://www.razerzone.com/signup
				}
				else
				if ( jchar = "res")
				{
					Send http://www.razerzone.com/pages/razer-resellers
				}
				else
				if ( jchar = "cul")
				{
					Send cult
					Send {@}
					Send RazerZone.com
				}
				else
				if ( jchar = "bml" )
				{
					Send https://www.billmelater.com/contact/index.xhtml
				}
				else
				if ( jchar = "sup")
				{
					Send http://www.razersupport.com/products
				}
				else
				if ( jchar = "fac" )
				{
					Send https://www.facebook.com/razer
				}
				else
				if ( jchar = "twi")
				{
					send https://twitter.com/Razer
				}
				else
				if (jchar = "sur")
				{
					send http://www.razerzone.com/surround
				}
				else
				if (jchar = "syn")
				{
					send http://www.razerzone.com/synapse
				}
				else
				if (jchar = "cor")
				{
					send http://www.razerzone.com/cortex
				}
				else
				if ( jchar = "rts")
				{
					Send [Razer Technical Support](http://www.razersupport.com/products)
				}
				Else
				if ( jchar = "idr")
				{
					Send https://ec.razerzone.com/requestreset
				}

			}
		}
		;;; Message body
		if ( jchar = "b" )
		{
			Input jchar, L2
			{
				
				if ( jchar = "in" )
				{
					Input jchar, L3
					{
						if ( jchar = "gib" )
						{
							Send Thank you for contacting Razer. You{'}ve reached Razer order support. Are you experiencing an issue with placing an order or with an order that has already been placed? If you have already placed an order please reply to this email with an order number or simply confirm the email address the order should be placed under so we may find it on our system in order to assist you further. {enter}{enter}Thank you for supporting Razer and have a great day.{enter}{enter}
						}
						else
						if ( jchar = "par" )
						{
							Send We can certainly check to see if that part is available in your area. Please fill out the form below in a reply to this e-mail and we can check our current inventory for you:{enter}{enter}Full Name:{enter}E-Mail Address:{enter}Phone: {enter}Physical Shipping Address: {enter}City: {enter}State/Province: {enter}Postal (Zip) Code: {enter}Country: {enter}{enter}Model name/style/color (Begins with RZ): {enter}Serial No (S/N): {enter}Product No.:  {enter}Place of Purchase: {enter}Date of Purchase:{enter}
						}
						else
						if ( jchar = "rma" )
						{
							Send Full Name: {enter}E-Mail Address: {enter}Phone: {enter}Physical Shipping Address: {enter}City: {enter}State/Province: {enter}Postal (Zip) Code: {enter}Country: {enter}enter}Model name/style/color (Begins with RZ): {enter}Serial No (S/N): {enter}Product No.:  {enter}Place of Purchase: {enter}Date of Purchase: {enter}Proof of Purchase:{enter}{enter}(Please note a proof of purchase would be a scanned copy of a purchase receipt/invoice or your Razerzone order #)
						}
						
						
					}
				}
				else
				if ( jchar = "rs" )
				{
					Input jchar, L3
					{
						if ( jchar = "par" )
						{
							send I just submitted a parts request for you. As long as the item is available it will be sent to you shortly. Please allow 7-10 business days to receive your parts. Thanks for supporting Razer. Have a nice day{!}
						}
						
						
					}
				}
			}
		}
	
		;;; Closings
		if ( jchar = "c" )
		{
			Input jchar, L3
			
				if ( jchar = "sup" )
				{ 
					send Thanks for supporting Razer. If you have any further questions let us know.{space}
				}
				else
				if ( jchar = "und" )
				{
					send Thank you for your patience and understanding in this matter.
				}
				else
				if (jchar="int")
				{
					send Thanks for your interest in Razer gear. If you have any further questions let us know. Have a great day.
				}

		}
		;;;; product links

return
