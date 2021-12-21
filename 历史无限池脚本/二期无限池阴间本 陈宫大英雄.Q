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
MacroID=2f3e63e2-c3ee-47fd-a75d-f8d84873fcb0
Description=斯卡哈无限池二期阴间本陈宫大英雄
Enable=1
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

MoveTo 1061, 811

If i = 1 Then
	Delay 32551
Else 
	Delay 20000
End If
TracePrint i
i = i + 1

LeftClick 1
MoveTo 1164, 799
Delay 4002
LeftClick 1
MoveTo 541, 641
Delay 586
LeftDown 1
MoveTo 539, 641
Delay 70
LeftUp 1
MoveTo 1279, 801
Delay 4208
LeftClick 1
MoveTo 469, 644
Delay 515
LeftClick 1
MoveTo 1697, 446
Delay 4379
LeftClick 1
MoveTo 1539, 444
Delay 1139
LeftClick 1
MoveTo 888, 478
Delay 1014
LeftClick 1
MoveTo 1608, 484
Delay 968
LeftClick 1
MoveTo 1044, 853
Delay 770
LeftClick 1
MoveTo 1044, 799
Delay 6877
LeftClick 1
MoveTo 889, 803
Delay 4141
LeftClick 1
MoveTo 446, 786
Delay 3874
LeftClick 1
MoveTo 942, 511
Delay 1223
LeftClick 1
MoveTo 350, 786
Delay 3929
LeftClick 1
MoveTo 1612, 821
Delay 4041
LeftClick 1
MoveTo 965, 316
Delay 2171
LeftClick 1
MoveTo 620, 663
Delay 612
LeftClick 1
MoveTo 304, 683
Delay 524
LeftClick 1
MoveTo 1171, 793
Delay 29223
LeftClick 1
MoveTo 510, 631
Delay 729
LeftClick 1
MoveTo 1276, 781
Delay 3958
LeftClick 1
MoveTo 530, 649
Delay 541
LeftClick 1
MoveTo 1619, 813
Delay 5219
LeftClick 1
MoveTo 655, 339
Delay 2750
LeftClick 1
MoveTo 629, 693
Delay 307
LeftClick 1
MoveTo 324, 671
Delay 349
LeftClick 1
MoveTo 865, 798
Delay 38464
LeftClick 1
MoveTo 638, 796
Delay 3768
LeftClick 1
MoveTo 443, 661
Delay 349
LeftClick 1
MoveTo 743, 794
Delay 4968
LeftClick 1
MoveTo 1684, 454
Delay 4049
LeftClick 1
MoveTo 1318, 456
Delay 997
LeftClick 1
MoveTo 1604, 818
Delay 3530
LeftClick 1
MoveTo 668, 366
Delay 2710
LeftClick 1
MoveTo 615, 698
Delay 507
LeftDown 1
Delay 2
LeftClick 1
MoveTo 294, 671
Delay 459
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
'==========以下是按键精灵录制的内容==========

Delay 1355

'==========以上是按键精灵录制的内容==========
