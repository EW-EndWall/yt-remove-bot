Func StartYTBot()
   While 1
	  ToolTip('[-YT-BOT-] Status "Active"', 0, 1)
	  Sleep(100)
	  ClickRemoveButton()
	  Sleep(100)
   WEnd
EndFunc

Func ClickRemoveButton()
   ToolTip('[-YT-BOT-] Status "Removed"', 0, 1)
   Sleep(100)
   ControlClick('', '', '', 'left', 1 ,1313, 272)
   Sleep(150)
   ControlClick('', '', '', 'left', 1, 1280, 405)
   Sleep(100)
EndFunc

Func Main()
   HotKeySet("{F1}", "StartYTBot")
   HotKeySet("{F2}", "PauseYTBot")
   HotKeySet("{F3}", "_ExitYTBot")

   ToolTip('[-YT-BOT-] Status "Wait"', 0, 1)

   While 1
	  Sleep(1000)
   WEnd
EndFunc

Func PauseYTBot()
   While 1
    ToolTip('[-YT-BOT-] Status "Stopped"', 0, 1)
    Sleep(1000)
   WEnd
   ToolTip("")
EndFunc

Func _ExitYTBot()
   ToolTip('[-YT-BOT-] Status "Closed.."', 0, 1)
   GUICtrlSetBkColor(1, 0xF000000)
   Sleep(1000)
   Exit
EndFunc

Main()
