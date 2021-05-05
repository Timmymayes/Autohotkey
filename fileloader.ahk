#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

::login.issues::
FileRead, toSend, .\AHK DB\login_issue.txt
Clipboard = %toSend%
sleep 75
Send ^v
Return


::synapse.logs::
FileRead, toSend, .\AHK DB\syn_logs.txt
Clipboard = %toSend%
sleep 75
Send ^v
Return

::order.shipped::
FileRead, toSend, .\AHK DB\order_shipped.txt
Clipboard = %toSend%
sleep 75
Send ^v
Return

::tech.redirect::
FileRead, toSend, .\AHK DB\tech_redirect.txt
Clipboard = %toSend%

Send ^v
Return

::failed.delivery::
FileRead, toSend, .\AHK DB\failed_delivery.txt
Clipboard = %toSend%

Send ^v
Return

::order.delivered::
FileRead, toSend, .\AHK DB\order_delivered.txt
Clipboard = %toSend%

Send ^v
Return



::free.stuff::
FileRead, toSend, .\AHK DB\free_stuff.txt
Clipboard = %toSend%

Send ^v
Return

::holiday.delay::
FileRead, toSend, .\AHK DB\holiday_delay.txt
Clipboard = %toSend%

Send ^v
Return

::canx.shipped::
FileRead, toSend, .\AHK DB\canx_shipped.txt
Clipboard = %toSend%
Send ^v
Return

::canx.standard::
FileRead, toSend, .\AHK DB\canx_standard.txt
Clipboard = %toSend%
Send ^v
Return

::canx.backorder::
FileRead, toSend, .\AHK DB\canx_backorder.txt
Clipboard = %toSend%

Send ^v
Return

::amazon.default::
FileRead, toSend, .\AHK DB\amazon_default.txt
Clipboard = %toSend%
Send ^v

Return

::backorder.check::
FileRead, toSend, .\AHK DB\backorder_check.txt
Clipboard = %toSend%

Send ^v
Return



::layout.swap::
FileRead, toSend, .\AHK DB\layout_swap.txt
Clipboard = %toSend%

Send ^v
Return

::refund.noserial::
FileRead, toSend, .\AHK DB\refund_noserial.txt
Clipboard = %toSend%

Send ^v
Return

::store.issues::
FileRead, toSend, .\AHK DB\store_issues.txt
Clipboard = %toSend%
Send ^v

Return

::survey.closed::
FileRead, toSend, .\AHK DB\survey_closed.txt
Clipboard = %toSend%

Send ^v
Return

::cortex.update::
FileRead, toSend, .\AHK DB\cortex_update.txt
Clipboard = %toSend%

Send ^v
return

::nabu.settings::
FileRead, toSend, .\AHK DB\nabu_settings.txt
Clipboard = %toSend%

Send ^v
Return

::new.year::
FileRead, toSend, .\AHK DB\new_year.txt
Clipboard = %toSend%

Send ^v
Return