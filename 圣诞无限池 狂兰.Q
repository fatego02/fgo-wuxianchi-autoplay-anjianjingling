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
Description=圣诞无限池 狂兰枪本
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

lizhuangwindowX = 867
lizhuangwindowY = 575
lizhuangcolor = "15BAEC"

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
		FindColorEx lizhuangwindowX - 1, lizhuangwindowY - 1, lizhuangwindowX + 1, lizhuangwindowY + 1, lizhuangcolor, 0, 0.98, lzx, lzy
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
		ElseIf lzx > 0 and lzy > 0 Then
			MoveTo 168, 88
			Delay 100
			LeftClick 1
			TracePrint "关闭礼装窗口"
			Goto ENDBATTLE
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
				Delay 13000
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



MoveTo 1058, 781

If i = 1 Then 
	Delay 32551
Else 
	Delay 17000
End If
TracePrint i
i = i + 1



Delay 1044
LeftClick 1
MoveTo 534, 583
Delay 759
LeftClick 1
MoveTo 1173, 784
Delay 4555
LeftClick 1
MoveTo 1309, 796
Delay 5158
LeftClick 1
MoveTo 539, 621
Delay 567
LeftClick 1
MoveTo 1699, 447
Delay 4950
LeftClick 1
MoveTo 1545, 430
Delay 840
LeftClick 1
MoveTo 854, 491
Delay 690
LeftClick 1
MoveTo 1070, 490
Delay 541
LeftClick 1
MoveTo 995, 850
Delay 593
LeftClick 1
MoveTo 635, 783
Delay 6330
LeftClick 1
MoveTo 475, 628
Delay 720
LeftClick 1
MoveTo 342, 788
Delay 4966
LeftClick 1
MoveTo 452, 795
Delay 4997
LeftClick 1
MoveTo 1637, 823
Delay 4569
LeftClick 1
MoveTo 637, 375
Delay 1990
LeftClick 1
MoveTo 641, 633
Delay 347
LeftClick 1
MoveTo 307, 648
Delay 257
LeftClick 1
MoveTo 1043, 774
Delay 32760
LeftClick 1
MoveTo 530, 619
Delay 584
LeftClick 1
MoveTo 1293, 793
Delay 4967
LeftClick 1
MoveTo 1619, 819
Delay 5289
LeftClick 1
MoveTo 675, 378
Delay 3768
LeftClick 1
MoveTo 615, 638
Delay 268
LeftClick 1
MoveTo 278, 648
Delay 180
LeftClick 1
MoveTo 750, 780
Delay 38873
LeftClick 1
MoveTo 880, 778
Delay 4764
LeftClick 1
MoveTo 473, 612
Delay 440
LeftClick 1
MoveTo 1177, 792
Delay 5629
LeftClick 1
MoveTo 1671, 444
Delay 5106
LeftClick 1
MoveTo 1319, 436
Delay 802
LeftClick 1
MoveTo 1607, 798
Delay 4799
LeftClick 1
MoveTo 650, 369
Delay 4467
LeftClick 1
MoveTo 611, 623
Delay 240
LeftDown 1
MoveTo 611, 626
Delay 62
LeftUp 1
MoveTo 290, 683
Delay 195
LeftClick 1

Rem ENDBATTLE
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
		FindColorEx lizhuangwindowX - 1, lizhuangwindowY - 1, lizhuangwindowX + 1, lizhuangwindowY + 1, lizhuangcolor, 0, 0.98, lzx, lzy
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
		ElseIf lzx > 0 and lzy > 0 Then
			MoveTo 168, 88
			Delay 100
			LeftClick 1
			TracePrint "关闭礼装窗口"
			Goto ENDBATTLE
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
				Delay 13000
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
