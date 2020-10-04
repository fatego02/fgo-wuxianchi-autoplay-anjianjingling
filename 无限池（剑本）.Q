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
i = 1

pyframeX = 1045
pyframeY = 311
pycolor = "F5EDE5"
pygreenX = 1606
pygreenY = 462
pygreencolor = "40D883"
goldenappleX = 574
goldenappleY = 532
goldenapplecolor = "0EBBED"
sikadiX = 340
sikadiY = 351
sikadicolor = "9157B2"




firstappleY = 539
firstappleY2 =801

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

Do While True
	FindColorEx pyframeX-1, pyframeY-1, pyframeX+1, pyframeY+1, pycolor, 0, 0.98, x, y
	If x > 0 and y > 0 Then 
		FindColorEx pygreenX-1, pygreenY-1, pygreenX+1, pygreenY+1, pygreencolor, 0, 0.98, x, y
		If x > 0 and y > 0 Then 
			FindColorEx sikadiX - 1, sikadiY - 1, sikadiX + 1, sikadiY + 1, sikadicolor, 0, 0.98, x, y
			If x > 0 and y > 0 Then 
				Exit Do
			Else 
				MoveTo 1239, 215
				Delay 2244
				LeftClick 1
				MoveTo 1198, 769
				Delay 1597
				LeftClick 1
				Delay 20000
			End If
		Else 
			MoveTo 1239, 215
			Delay 2244
			LeftClick 1
			MoveTo 1198, 769
			Delay 1597
			LeftClick 1
			Delay 20000
		End If
		
	Else 
		MoveTo 1239, 215
		Delay 2244
		LeftClick 1
		MoveTo 1198, 769
		Delay 1597
		LeftClick 1
		Delay 20000
	End If
Loop

'==========助战判断结束

MoveTo 929, 437
Delay 2261
LeftClick 1
MoveTo 1649, 906
Delay 4765
LeftClick 1

'==========这里开始for循环
For 180



MoveTo 625, 779

If i = 1 Then 
	Delay 32551
Else 
	Delay 17000
End If
TracePrint i
i = i + 1


Delay 1036
LeftClick 1
MoveTo 552, 624
Delay 1318
LeftClick 1
MoveTo 457, 799
Delay 4156
LeftClick 1
MoveTo 1607, 781
Delay 3951
LeftClick 1
MoveTo 649, 342
Delay 3044
LeftClick 1
MoveTo 662, 659
Delay 317
LeftClick 1
MoveTo 289, 702
Delay 238
LeftClick 1
MoveTo 887, 787
Delay 32242
LeftClick 1
MoveTo 452, 599
Delay 2451
LeftClick 1
MoveTo 742, 794
Delay 5006
LeftClick 1
MoveTo 1297, 809
Delay 5645
LeftClick 1
MoveTo 1638, 444
Delay 3293
LeftClick 1
MoveTo 1532, 454
Delay 1481
LeftClick 1
MoveTo 552, 511
Delay 1487
LeftClick 1
MoveTo 1057, 524
Delay 894
LeftClick 1
MoveTo 995, 856
Delay 748
LeftClick 1
MoveTo 617, 797
Delay 9490
LeftClick 1
MoveTo 525, 619
Delay 674
LeftClick 1
MoveTo 1622, 796
Delay 8266
LeftClick 1
MoveTo 644, 354
Delay 1750
LeftClick 1
MoveTo 607, 711
Delay 381
LeftClick 1
MoveTo 290, 679
Delay 357
LeftClick 1
MoveTo 765, 779
Delay 35278
LeftClick 1
MoveTo 889, 782
Delay 5127
LeftClick 1
MoveTo 560, 632
Delay 422
LeftClick 1
MoveTo 1057, 789
Delay 4906
LeftDown 1
MoveTo 1060, 789
Delay 64
LeftUp 1
MoveTo 567, 619
Delay 1309
LeftClick 1
MoveTo 217, 786
Delay 4960
LeftClick 1
MoveTo 1672, 456
Delay 5748
LeftClick 1
MoveTo 1317, 454
Delay 1698
LeftClick 1
MoveTo 1624, 824
Delay 4837
LeftClick 1
MoveTo 664, 357
Delay 3769
LeftClick 1
MoveTo 637, 671
Delay 249
LeftClick 1
MoveTo 226, 659
Delay 242
LeftClick 1


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
Do While True
	FindColorEx pyframeX-1, pyframeY-1, pyframeX+1, pyframeY+1, pycolor, 0, 0.98, x, y
	If x > 0 and y > 0 Then 
		FindColorEx pygreenX-1, pygreenY-1, pygreenX+1, pygreenY+1, pygreencolor, 0, 0.98, x, y
		If x > 0 and y > 0 Then 
			FindColorEx sikadiX - 1, sikadiY - 1, sikadiX + 1, sikadiY + 1, sikadicolor, 0, 0.98, x, y
			If x > 0 and y > 0 Then 
				Exit Do
			Else 
				MoveTo 1239, 215
				Delay 2244
				LeftClick 1
				MoveTo 1198, 769
				Delay 1597
				LeftClick 1
				Delay 20000
			End If
		Else 
			MoveTo 1239, 215
			Delay 2244
			LeftClick 1
			MoveTo 1198, 769
			Delay 1597
			LeftClick 1
			Delay 20000
		End If
		
	Else 
		MoveTo 1239, 215
		Delay 2244
		LeftClick 1
		MoveTo 1198, 769
		Delay 1597
		LeftClick 1
		Delay 20000
	End If
Loop

MoveTo 929, 437
Delay 2261
LeftClick 1
	
Next
