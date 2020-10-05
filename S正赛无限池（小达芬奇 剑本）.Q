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
MacroID=f7580f29-defd-4733-b7e5-c4f3f00cd948
Description=无限池剑本（小达芬奇）
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
kongmingX = 332
kongmingY = 343
kongmingcolor = "393929"

inpychoosingX = 204
inpychoosingY = 89
inpychoosingcolor = "D7D7D6"

firstappleY = 539
firstappleY2 =801

pyframeYdiff = 261

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
		FindColorEx inpychoosingX - 1, inpychoosingY - 1, inpychoosingX + 1, inpychoosingY + 1, inpychoosingcolor, 0, 0.98, x, y
		If x <= 0 or y <= 0 Then 
			Goto mark1
			TracePrint "出现错误，跳转！"
		End If
	End If
	Delay 5000
	FindColorEx pygreenX - 1, pygreenY - 1, pygreenX + 1, pygreenY + 1, pygreencolor, 0, 0.98, x, y
	FindColorEx pygreenX - 1, pygreenY - 1 + pyframeYdiff, pygreenX + 1, pygreenY + 1 + pyframeYdiff, pygreencolor2, 0, 0.98, px2, py2
	If px2 <= 0 or py2 <= 0 Then 
		TracePrint "二号位助战非好友"
	End If
	If x > 0 and y > 0 Then 
		FindColorEx kongmingX - 1, kongmingY - 1, kongmingX + 1, kongmingY + 1, kongmingcolor, 0, 0.98, x, y
		FindColorEx kongmingX - 1, kongmingY - 1 + pyframeYdiff, kongmingX + 1, kongmingY + 1 + pyframeYdiff, kongmingcolor, 0, 0.98, x2, y2
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


MoveTo 882, 793

If i = 1 Then 
	Delay 32551
Else 
	Delay 17000
End If
TracePrint i
i = i + 1

Delay 1867
LeftClick 1
MoveTo 545, 669
Delay 1470
LeftClick 1
MoveTo 624, 780
Delay 4681
LeftClick 1
MoveTo 1669, 451
Delay 4568
LeftClick 1
MoveTo 1552, 446
Delay 1380
LeftClick 1
MoveTo 1085, 495
Delay 1766
LeftClick 1
MoveTo 616, 491
Delay 1149
LeftClick 1
MoveTo 884, 840
Delay 503
LeftClick 1
MoveTo 872, 789
Delay 7300
LeftClick 1
MoveTo 761, 789
Delay 3816
LeftClick 1
MoveTo 1174, 790
Delay 4505
LeftClick 1
MoveTo 1282, 788
Delay 3669
LeftClick 1
MoveTo 515, 649
Delay 1351
LeftClick 1
MoveTo 200, 790
Delay 4329
LeftClick 1
MoveTo 1572, 798
Delay 7225
LeftClick 1
MoveTo 660, 382
Delay 3914
LeftClick 1
MoveTo 637, 685
Delay 504
LeftClick 1
MoveTo 347, 686
Delay 656
LeftClick 1
MoveTo 477, 783
Delay 35861
LeftClick 1
MoveTo 1612, 820
Delay 6487
LeftClick 1
MoveTo 687, 369
Delay 3344
LeftClick 1
MoveTo 647, 683
Delay 509
LeftClick 1
MoveTo 342, 650
Delay 303
LeftClick 1
MoveTo 622, 783
Delay 41885
LeftClick 1
MoveTo 500, 611
Delay 476
LeftClick 1
MoveTo 1045, 803
Delay 6878
LeftDown 1
MoveTo 1047, 805
Delay 76
LeftUp 1
MoveTo 1662, 466
Delay 4944
LeftClick 1
MoveTo 1322, 439
Delay 874
LeftClick 1
MoveTo 1607, 806
Delay 4450
LeftClick 1
MoveTo 662, 381
Delay 3908
LeftClick 1
MoveTo 1305, 304
Delay 595
LeftClick 1
MoveTo 290, 765
Delay 590
LeftClick 1

'==========以上是按键精灵录制的内容==========
Rem mark1

MoveTo 957, 780
Delay 47816
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
		FindColorEx inpychoosingX - 1, inpychoosingY - 1, inpychoosingX + 1, inpychoosingY + 1, inpychoosingcolor, 0, 0.98, x, y
		If x <= 0 or y <= 0 Then 
			Goto mark1
			TracePrint "出现错误，跳转！"
		End If
	End If
	Delay 5000
	FindColorEx pygreenX - 1, pygreenY - 1, pygreenX + 1, pygreenY + 1, pygreencolor, 0, 0.98, x, y
	FindColorEx pygreenX - 1, pygreenY - 1 + pyframeYdiff, pygreenX + 1, pygreenY + 1 + pyframeYdiff, pygreencolor2, 0, 0.98, px2, py2
	If px2 <= 0 or py2 <= 0 Then 
		TracePrint "二号位助战非好友"
	End If
	If x > 0 and y > 0 Then 
		FindColorEx kongmingX - 1, kongmingY - 1, kongmingX + 1, kongmingY + 1, kongmingcolor, 0, 0.98, x, y
		FindColorEx kongmingX - 1, kongmingY - 1 + pyframeYdiff, kongmingX + 1, kongmingY + 1 + pyframeYdiff, kongmingcolor, 0, 0.98, x2, y2
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

'=========助战判断结束

MoveTo x, y
Delay 2261
LeftClick 1
	
Next
