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
MacroID=d1090b41-021b-4fd2-a11e-4fe3793929cf
Description=斯卡哈无限池杀阴间本
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
pygreencolor = "4CD88B"
pygreencolor2 = "46D887"
goldenappleX = 574
goldenappleY = 532
goldenapplecolor = "1BC4F6"
inpychoosingX = 204
inpychoosingY = 89
inpychoosingcolor = "D6D5D4"

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

lizhuangwindowX = 867
lizhuangwindowY = 575
lizhuangcolor = "15BAEC"

// Don't modify anything above; they take effect globally

firstappleY = 539
firstappleY2 = 801
// 开始时使用的苹果

caberX = 1434
caberY = 450
cabercolor = "F8982E"


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
		FindColorEx caberX - 1, caberY - 1, caberX + 1, caberY + 1, cabercolor, 0, 0.98, x, y
		FindColorEx caberX - 1, caberY - 1 + pyframeYdiff, caberX + 1, caberY + 1 + pyframeYdiff, cabercolor, 0, 0.98, x2, y2
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
For 200

MoveTo 1280, 788

If i = 1 Then
	Delay 32551
Else 
	Delay 20000
End If
TracePrint i
i = i + 1

LeftClick 1
MoveTo 537, 660
Delay 807
LeftClick 1
MoveTo 1178, 800
Delay 2753
LeftClick 1
MoveTo 516, 635
Delay 1179
LeftClick 1
MoveTo 1058, 805
Delay 3754
LeftClick 1
MoveTo 1673, 438
Delay 4283
LeftClick 1
MoveTo 1542, 447
Delay 1213
LeftClick 1
MoveTo 1080, 472
Delay 1169
LeftClick 1
MoveTo 839, 460
Delay 710
LeftClick 1
MoveTo 931, 862
Delay 1048
LeftClick 1
MoveTo 854, 808
Delay 7704
LeftClick 1
MoveTo 462, 668
Delay 600
LeftClick 1
MoveTo 641, 784
Delay 4004
LeftClick 1
MoveTo 738, 787
Delay 4173
LeftClick 1
MoveTo 539, 648
Delay 1243
LeftClick 1
MoveTo 332, 794
Delay 4600
LeftClick 1
MoveTo 1583, 797
Delay 6624
LeftClick 1
MoveTo 629, 330
Delay 1997
LeftClick 1
MoveTo 633, 652
Delay 1002
LeftDown 1
MoveTo 633, 658
Delay 74
LeftUp 1
Delay 1
LeftUp 1
MoveTo 348, 685
Delay 559
LeftClick 1
MoveTo 1059, 805
Delay 31992
LeftClick 1
MoveTo 469, 703
Delay 610
LeftClick 1
MoveTo 441, 794
Delay 4685
LeftClick 1
MoveTo 231, 784
Delay 6579
LeftClick 1
MoveTo 1597, 844
Delay 5390
LeftClick 1
MoveTo 658, 323
Delay 2874
LeftClick 1
MoveTo 632, 609
Delay 444
LeftClick 1
MoveTo 348, 629
Delay 300
LeftClick 1
MoveTo 1280, 793
Delay 39897
LeftClick 1
MoveTo 1683, 443
Delay 4712
LeftClick 1
MoveTo 1310, 433
Delay 1432
LeftClick 1
MoveTo 1593, 832
Delay 6249
LeftClick 1
MoveTo 654, 350
Delay 3950
LeftClick 1
MoveTo 657, 592
Delay 354
LeftClick 1
MoveTo 313, 655
Delay 481
LeftClick 1

'==========以上是按键精灵录制的内容==========
Rem ENDBATTLE

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
MoveTo 1513, 877
Delay 4107
LeftClick 1
MoveTo 1229, 792
Delay 3000
LeftClick 1
Delay 5000
'==========吃苹果判断！！！
FindColorEx goldenappleX-1, goldenappleY-1, goldenappleX+1, goldenappleY, goldenapplecolor, 0, 0.9, x, y
If x > 0 and y > 0 Then 
	MoveTo goldenappleX, goldenappleY
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
		FindColorEx caberX - 1, caberY - 1, caberX + 1, caberY + 1, cabercolor, 0, 0.98, x, y
		FindColorEx caberX - 1, caberY - 1 + pyframeYdiff, caberX + 1, caberY + 1 + pyframeYdiff, cabercolor, 0, 0.98, x2, y2
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
