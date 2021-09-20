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
MacroID=59fe309a-63c5-4f29-b66e-af3a448b9a91
Description=冰本
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
collect = 0

i = 1//用于记录打了多少次
Rem START
Delay 7000
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


MoveTo 1058, 785

If i = 1 Then 
	Delay 20000
Else 
	Delay 17000
End If
TracePrint i
i = i + 1


'==========以下是按键精灵录制的内容==========


Delay 673
LeftClick 1
MoveTo 1278, 789
Delay 4414
LeftClick 1
MoveTo 456, 630
Delay 553
LeftClick 1
MoveTo 1680, 450
Delay 4530
LeftClick 1
MoveTo 1513, 448
Delay 637
LeftClick 1
MoveTo 863, 527
Delay 555
LeftClick 1
MoveTo 1058, 524
Delay 347
LeftClick 1
MoveTo 1010, 831
Delay 347
LeftDown 1
MoveTo 1010, 832
Delay 58
LeftUp 1
MoveTo 645, 785
Delay 6185
LeftClick 1
MoveTo 472, 627
Delay 243
LeftDown 1
MoveTo 472, 625
Delay 60
LeftUp 1
MoveTo 733, 792
Delay 4634
LeftClick 1
MoveTo 488, 602
Delay 356
LeftClick 1
MoveTo 226, 783
Delay 5104
LeftClick 1
MoveTo 1620, 845
Delay 5214
LeftClick 1
MoveTo 649, 362
Delay 3497
LeftClick 1
MoveTo 593, 662
Delay 239
LeftDown 1
MoveTo 593, 665
Delay 58
LeftUp 1
Delay 2
LeftUp 1
MoveTo 383, 693
Delay 184
LeftClick 1
MoveTo 1303, 776
Delay 34155
LeftClick 1
MoveTo 1161, 778
Delay 3918
LeftClick 1
MoveTo 1579, 813
Delay 4269
LeftClick 1
MoveTo 633, 380
Delay 2429
LeftClick 1
MoveTo 644, 693
Delay 280
LeftDown 1
MoveTo 644, 695
Delay 71
LeftUp 1
Delay 1
LeftUp 1
MoveTo 268, 662
Delay 182
LeftClick 1
'==========以上是按键精灵录制的内容==========

hasIce = False

'==========以下是按键精灵录制的内容==========
MoveTo 1671, 304
Delay 34155
LeftClick 1
MoveTo 1582, 759
Delay 1732
LeftDown 1
Delay 900
MoveTo 1578, 495
Delay 883
LeftUp 1

'=====向上DRAG完成
FindColorEx 326, 635, 1543, 879, "C2C2BA", 0, 0.98, x, y
If x > 0 and y > 0 Then 
	hasIce = True
End If
'=====判断完成
MoveTo 1578, 700
Delay 2930
LeftDown 1
Delay 900
MoveTo 1575, 943
Delay 907
LeftUp 1

'=====向下DARG完成
FindColorEx 326, 874, 1543, 908, "D0D0D0", 0, 0.98, x, y
If x > 0 and y > 0 Then 
	hasIce = True
End If
'=====判断完成
MoveTo 1577, 837
Delay 3427
LeftDown 1
Delay 700
MoveTo 1589, 516
Delay 655
LeftUp 1

'=====向上DRAG完成
If hasIce = False Then 
	MoveTo 1302, 280
	Delay 1261
	LeftClick 1
	MoveTo 1308, 499
	Delay 1067
	LeftClick 1
	MoveTo 966, 771
	Delay 2282
	LeftClick 1
	Goto START
End If
collect = collect + 1




MoveTo 1576, 189
Delay 1000
LeftClick 1

'==========以上是按键精灵录制的内容==========






'==========以下是按键精灵录制的内容==========
MoveTo 462, 781
Delay 2990
LeftClick 1
MoveTo 1037, 793
Delay 5894
LeftClick 1
MoveTo 490, 623
Delay 327
LeftDown 1
MoveTo 488, 621
Delay 72
LeftUp 1
MoveTo 1678, 457
Delay 4856
LeftClick 1
MoveTo 1311, 433
Delay 990
LeftClick 1
MoveTo 1588, 803
Delay 3517
LeftClick 1
MoveTo 675, 358
Delay 3142
LeftClick 1
MoveTo 666, 652
Delay 219
LeftDown 1
MoveTo 666, 653
Delay 66
LeftUp 1
MoveTo 372, 680
Delay 169
LeftClick 1
'==========以上是按键精灵录制的内容==========


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

















'==========以下是按键精灵录制的内容==========

MoveTo 1058, 785
Delay 673
LeftClick 1
MoveTo 1278, 789
Delay 4414
LeftClick 1
MoveTo 456, 630
Delay 553
LeftClick 1
MoveTo 1680, 450
Delay 4530
LeftClick 1
MoveTo 1513, 448
Delay 637
LeftClick 1
MoveTo 863, 527
Delay 555
LeftClick 1
MoveTo 1058, 524
Delay 347
LeftClick 1
MoveTo 1010, 831
Delay 347
LeftDown 1
MoveTo 1010, 832
Delay 58
LeftUp 1
MoveTo 645, 785
Delay 6185
LeftClick 1
MoveTo 472, 627
Delay 243
LeftDown 1
MoveTo 472, 625
Delay 60
LeftUp 1
MoveTo 733, 792
Delay 4634
LeftClick 1
MoveTo 488, 602
Delay 356
LeftClick 1
MoveTo 226, 783
Delay 5104
LeftClick 1
MoveTo 1620, 845
Delay 5214
LeftClick 1
MoveTo 649, 362
Delay 3497
LeftClick 1
MoveTo 593, 662
Delay 239
LeftDown 1
MoveTo 593, 665
Delay 58
LeftUp 1
Delay 2
LeftUp 1
MoveTo 383, 693
Delay 184
LeftClick 1
MoveTo 1303, 776
Delay 34155
LeftClick 1
MoveTo 1161, 778
Delay 3918
LeftClick 1
MoveTo 1579, 813
Delay 4269
LeftClick 1
MoveTo 633, 380
Delay 2429
LeftClick 1
MoveTo 644, 693
Delay 280
LeftDown 1
MoveTo 644, 695
Delay 71
LeftUp 1
Delay 1
LeftUp 1
MoveTo 268, 662
Delay 182
LeftClick 1
'==========以上是按键精灵录制的内容==========

hasIce = False

'==========以下是按键精灵录制的内容==========
MoveTo 1671, 304
Delay 1071
LeftClick 1
MoveTo 1582, 759
Delay 1732
LeftDown 1
MoveTo 1578, 495
Delay 1783
LeftUp 1

'=====向上DRAG完成
FindColorEx 326, 635, 1543, 879, "C2C2BA", 0, 0.98, x, y
If x > 0 and y > 0 Then 
	TracePrint "第一或第二行有冰"
	hasIce = True
End If
'=====判断完成
MoveTo 1578, 700
Delay 2930
LeftDown 1
MoveTo 1575, 943
Delay 1807
LeftUp 1

'=====向下DARG完成
FindColorEx 326, 852, 1543, 908, "B1B1B1", 0, 0.98, x, y
If x > 0 and y > 0 Then 
	TracePrint "第三行有冰"
	hasIce = True
End If
'=====判断完成
MoveTo 1577, 837
Delay 3427
LeftDown 1
MoveTo 1589, 516
Delay 1355
LeftUp 1

'=====向上DRAG完成
If hasIce = False Then 
	MoveTo 1302, 280
	Delay 1261
	LeftClick 1
	MoveTo 1308, 499
	Delay 1067
	LeftClick 1
	MoveTo 966, 771
	Delay 4282
	LeftClick 1
	
	Goto START
End If
collect = collect + 1




MoveTo 1576, 189
Delay 1000
LeftClick 1

'==========以上是按键精灵录制的内容==========






'==========以下是按键精灵录制的内容==========
MoveTo 462, 781
Delay 2990
LeftClick 1
MoveTo 1037, 793
Delay 5894
LeftClick 1
MoveTo 490, 623
Delay 327
LeftDown 1
MoveTo 488, 621
Delay 72
LeftUp 1
MoveTo 1678, 457
Delay 4856
LeftClick 1
MoveTo 1311, 433
Delay 990
LeftClick 1
MoveTo 1588, 803
Delay 3517
LeftClick 1
MoveTo 675, 358
Delay 3142
LeftClick 1
MoveTo 666, 652
Delay 219
LeftDown 1
MoveTo 666, 653
Delay 66
LeftUp 1
MoveTo 372, 680
Delay 169
LeftClick 1
'==========以上是按键精灵录制的内容==========

