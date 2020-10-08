[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=5a9665e2-5bb9-4a28-8f8b-eb3ac4592419
Description=无限池剑本
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Rem START

i = 1//用于记录打了多少次

pyframeX = 1045
pyframeY = 311
pycolor = "F5EDE5"
pygreenX = 1606
pygreenY = 462
pygreencolor = "40D883"
pygreencolor2 = "40D984"
goldenappleX = 574
goldenappleY = 532
goldenapplecolor = "0EBBED"
sikadiX = 340
sikadiY = 351
sikadicolor = "9157B2"

inpychoosingX = 204
inpychoosingY = 89
inpychoosingcolor = "D7D7D6"

firstappleY = 539
firstappleY2 =801

pyframeYdiff = 261

skillwindowX = 1576
skillwindowY = 244

servantwindowX = 1549
servantwindowY = 78

windowcolor = "E9E9E9"

turnX = 1269
turnY = 68
turncolor1 = "F4F4F4"
turncolor2 = "EEEEEE"
turncolor3 = "898989"

masterX = 1762
masterY = 201
mastercolor = "02BFF8"

'==========以下是按键精灵录制的内容==========
MoveTo 1296, 334
Delay 758
LeftClick 1


MoveTo 917, firstappleY
Delay 3352
LeftClick 1
MoveTo 1277, firstappleY2
Delay 3134
LeftClick 1
Delay 5000
'==========此处加入助战判断语句
j = False
loopcount = 0
Do While True
	If loopcount > 30 Then 
		//debug
		TracePrint "警告：触发自动排错机制"
		autodebug = True
		FindColorEx skillwindowX - 1, skillwindowY - 1, skillwindowX + 1, skillwindowY + 1, windowcolor, 0, 0.98, x, y
		FindColorEx servantwindowX - 1, servantwindowY - 1, servantwindowX + 1, servantwindowY + 1, windowcolor, 0, 0.98, sx, sy
		If x > 0 and y > 0 Then 
			MoveTo x, y
			Delay 100
			LeftClick 1
			TracePrint "关闭技能窗口"
		ElseIf sx > 0 and sy > 0 Then
			MoveTo sx, sy
			Delay 100
			LeftClick 1
			TracePrint "关闭从者窗口"
		Else 
			TracePrint "排错失败！"
			autodebug = False
		End If
		If autodebug = False Then 
			FindColorEx masterX - 1, masterY - 1, masterX + 1, masterY + 1, mastercolor, 0, 0.98, mx, my
			If mx > 0 and my > 0 Then 
				autodebug = True
			End If
		End If
		Delay 2000
		FindColorEx turnX, turnY, turnX, turnY, turncolor1, 0, 1, tx1, ty1
		FindColorEx turnX, turnY, turnX, turnY, turncolor2, 0, 1, tx2, ty2
		FindColorEx turnX, turnY, turnX, turnY, turncolor3, 0, 1, tx3, ty3
		If tx1 > 0 and ty1 > 0 Then 
			TracePrint "第一回合触发排错机制"
		ElseIf tx2 > 0 and ty2 > 0 Then
			TracePrint "第二回合触发排错机制"
		ElseIf tx3 > 0 and ty3 > 0 Then
			TracePrint "第三回合触发排错机制"
		Else 
			TracePrint "第四甚至更高回合触发排错机制"
		End If
		If autodebug Then 
			TracePrint "开始自动排错"
			MoveTo 1669, 307
			Delay 1000
			LeftClick 1
			MoveTo 1259, 272
			Delay 1000
			LeftClick 1
			MoveTo 1292, 518
			Delay 1000
			LeftClick 1
			MoveTo 972, 777
			Delay 3000
			LeftClick 1
			Delay 10000
			Goto START
		End If
	End If
	Delay 5000
	FindColorEx pygreenX - 1, pygreenY - 1, pygreenX + 1, pygreenY + 1, pygreencolor, 0, 0.98, x, y
	FindColorEx pygreenX - 1, pygreenY - 1 + pyframeYdiff, pygreenX + 1, pygreenY + 1 + pyframeYdiff, pygreencolor2, 0, 0.98, px2, py2
	If px2 <= 0 or py2 <= 0 Then 
		TracePrint "二号位助战非好友"
	End If
	If x > 0 and y > 0 Then 
		FindColorEx sikadiX - 1, sikadiY - 1, sikadiX + 1, sikadiY + 1, sikadicolor, 0, 0.98, x, y
		FindColorEx sikadiX - 1, sikadiY - 1 + pyframeYdiff, sikadiX + 1, sikadiY + 1 + pyframeYdiff, sikadicolor, 0, 0.98, x2, y2
		If x > 0 and y > 0 Then 
			TracePrint "选择1号助战"
			Exit Do
		ElseIf x2 > 0 and y2 > 0 and px2 > 0 and py2 > 0 Then
			x = x2
			y = y2
			TracePrint "选择2号助战"
			Exit Do
		Else 
			TracePrint "助战不符合要求"
			If j Then 
				Delay 15000
			Else 
				j = True
			End If
			MoveTo 1239, 215
			Delay 2244
			LeftClick 1
			MoveTo 1198, 769
			Delay 1597
			LeftClick 1
		End If
	Else 
		TracePrint "非好友助战"
		If j Then 
			Delay 15000
		Else 
			j = True
		End If
		MoveTo 1239, 215
		Delay 2244
		LeftClick 1
		MoveTo 1198, 769
		Delay 1597
		LeftClick 1
	End If
	loopcount = loopcount + 1
Loop



'==========助战判断结束

MoveTo x, y
Delay 2261
LeftClick 1
MoveTo 1649, 906
Delay 4765
LeftClick 1

'==========这里开始for循环
For 180



MoveTo 633, 789

If i = 1 Then 
	Delay 32551
Else 
	Delay 17000
End If
TracePrint i
i = i + 1

Delay 1447
LeftClick 1
MoveTo 535, 652
Delay 764
LeftClick 1
MoveTo 1042, 794
Delay 3982
LeftClick 1
MoveTo 538, 604
Delay 753
LeftClick 1
MoveTo 473, 791
Delay 4309
LeftClick 1
MoveTo 1633, 811
Delay 4373
LeftClick 1
MoveTo 660, 352
Delay 3224
LeftDown 1
MoveTo 658, 352
Delay 58
LeftUp 1
MoveTo 617, 657
Delay 304
LeftDown 1
MoveTo 617, 660
Delay 56
LeftUp 1
MoveTo 352, 691
Delay 319
LeftDown 1
MoveTo 349, 691
Delay 51
LeftUp 1
MoveTo 883, 781
Delay 32242
LeftClick 1
MoveTo 513, 619
Delay 460
LeftDown 1
MoveTo 510, 619
Delay 70
LeftUp 1
MoveTo 1617, 811
Delay 5226
LeftClick 1
MoveTo 693, 332
Delay 3011
LeftClick 1
MoveTo 660, 650
Delay 394
LeftClick 1
MoveTo 329, 652
Delay 281
LeftClick 1
MoveTo 760, 804
Delay 36749
LeftClick 1
MoveTo 1175, 797
Delay 4110
LeftClick 1
MoveTo 1300, 789
Delay 4512
LeftClick 1
MoveTo 543, 587
Delay 568
LeftClick 1
MoveTo 1672, 442
Delay 4692
LeftClick 1
MoveTo 1537, 456
Delay 905
LeftClick 1
MoveTo 1115, 521
Delay 920
LeftClick 1
MoveTo 857, 517
Delay 745
LeftClick 1
MoveTo 932, 871
Delay 685
LeftClick 1
MoveTo 1042, 802
Delay 8185
LeftClick 1
MoveTo 564, 669
Delay 506
LeftClick 1
MoveTo 1290, 799
Delay 4364
LeftClick 1
MoveTo 197, 797
Delay 4867
LeftClick 1
MoveTo 1667, 434
Delay 4816
LeftClick 1
MoveTo 1288, 445
Delay 986
LeftClick 1
MoveTo 1597, 814
Delay 4759
LeftClick 1
MoveTo 645, 314
Delay 3854
LeftClick 1
MoveTo 638, 624
Delay 537
LeftClick 1
MoveTo 372, 646
Delay 335
LeftClick 1


MoveTo 957, 780
Delay 40816
LeftDoubleClick 1
Delay 53
Delay 629
LeftDoubleClick 1
Delay 66
Delay 77
LeftClick 1
Delay 610
LeftDoubleClick 1
Delay 78
Delay 51
LeftDoubleClick 1
Delay 190
Delay 69
LeftDoubleClick 1
Delay 82
Delay 58
LeftDoubleClick 1
Delay 73
Delay 71
LeftDoubleClick 1
Delay 76
Delay 77
LeftDoubleClick 1
Delay 72
Delay 81
LeftDoubleClick 1
Delay 74
Delay 73
LeftDoubleClick 1
Delay 63
Delay 74
LeftDoubleClick 1
Delay 75
Delay 65
LeftClick 1
MoveTo 1513, 920
Delay 4107
LeftClick 1
MoveTo 1229, 792
Delay 3000
LeftClick 1
Delay 5000

'==========以上是按键精灵录制的内容==========
'==========吃苹果判断！！！
FindColorEx goldenappleX-1, goldenappleY-1, goldenappleX+1, goldenappleY, goldenapplecolor, 0, 0.9, x, y
If x > 0 and y > 0 Then 
	MoveTo 639, 543
	Delay 1000
	LeftClick 1
	MoveTo 1221, 775
	Delay 2000
	LeftClick 1
	Delay 5000
End If
'=========助战判断
j = False
loopcount = 0
Do While True
	If loopcount > 30 Then 
		//debug
		TracePrint "警告：触发自动排错机制"
		autodebug = True
		FindColorEx skillwindowX - 1, skillwindowY - 1, skillwindowX + 1, skillwindowY + 1, windowcolor, 0, 0.98, x, y
		FindColorEx servantwindowX - 1, servantwindowY - 1, servantwindowX + 1, servantwindowY + 1, windowcolor, 0, 0.98, sx, sy
		If x > 0 and y > 0 Then 
			MoveTo x, y
			Delay 100
			LeftClick 1
			TracePrint "关闭技能窗口"
		ElseIf sx > 0 and sy > 0 Then
			MoveTo sx, sy
			Delay 100
			LeftClick 1
			TracePrint "关闭从者窗口"
		Else 
			TracePrint "排错失败！"
			autodebug = False
		End If
		If autodebug = False Then 
			FindColorEx masterX - 1, masterY - 1, masterX + 1, masterY + 1, mastercolor, 0, 0.98, mx, my
			If mx > 0 and my > 0 Then 
				autodebug = True
			End If
		End If
		Delay 2000
		FindColorEx turnX, turnY, turnX, turnY, turncolor1, 0, 1, tx1, ty1
		FindColorEx turnX, turnY, turnX, turnY, turncolor2, 0, 1, tx2, ty2
		FindColorEx turnX, turnY, turnX, turnY, turncolor3, 0, 1, tx3, ty3
		If tx1 > 0 and ty1 > 0 Then 
			TracePrint "第一回合触发排错机制"
		ElseIf tx2 > 0 and ty2 > 0 Then
			TracePrint "第二回合触发排错机制"
		ElseIf tx3 > 0 and ty3 > 0 Then
			TracePrint "第三回合触发排错机制"
		Else 
			TracePrint "第四甚至更高回合触发排错机制"
		End If
		If autodebug Then 
			TracePrint "开始自动排错"
			MoveTo 1669, 307
			Delay 1000
			LeftClick 1
			MoveTo 1259, 272
			Delay 1000
			LeftClick 1
			MoveTo 1292, 518
			Delay 1000
			LeftClick 1
			MoveTo 972, 777
			Delay 3000
			LeftClick 1
			Delay 10000
			Goto START
		End If
	End If
	Delay 5000
	FindColorEx pygreenX - 1, pygreenY - 1, pygreenX + 1, pygreenY + 1, pygreencolor, 0, 0.98, x, y
	FindColorEx pygreenX - 1, pygreenY - 1 + pyframeYdiff, pygreenX + 1, pygreenY + 1 + pyframeYdiff, pygreencolor2, 0, 0.98, px2, py2
	If px2 <= 0 or py2 <= 0 Then 
		TracePrint "二号位助战非好友"
	End If
	If x > 0 and y > 0 Then 
		FindColorEx sikadiX - 1, sikadiY - 1, sikadiX + 1, sikadiY + 1, sikadicolor, 0, 0.98, x, y
		FindColorEx sikadiX - 1, sikadiY - 1 + pyframeYdiff, sikadiX + 1, sikadiY + 1 + pyframeYdiff, sikadicolor, 0, 0.98, x2, y2
		If x > 0 and y > 0 Then 
			TracePrint "选择1号助战"
			Exit Do
		ElseIf x2 > 0 and y2 > 0 and px2 > 0 and py2 > 0 Then
			x = x2
			y = y2
			TracePrint "选择2号助战"
			Exit Do
		Else 
			TracePrint "助战不符合要求"
			If j Then 
				Delay 15000
			Else 
				j = True
			End If
			MoveTo 1239, 215
			Delay 2244
			LeftClick 1
			MoveTo 1198, 769
			Delay 1597
			LeftClick 1
		End If
	Else 
		TracePrint "非好友助战"
		If j Then 
			Delay 15000
		Else 
			j = True
		End If
		MoveTo 1239, 215
		Delay 2244
		LeftClick 1
		MoveTo 1198, 769
		Delay 1597
		LeftClick 1
	End If
	loopcount = loopcount + 1
Loop

'=======助战判断结束

MoveTo x, y
Delay 2261
LeftClick 1
	
Next
