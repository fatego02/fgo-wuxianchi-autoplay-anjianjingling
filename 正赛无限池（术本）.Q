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
MacroID=2e244fa6-3263-4c10-85da-5ccb9ccfcaa1
Description=无限池1
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
i = 1

TracePrint i


'==========以下是按键精灵录制的内容==========
MoveTo 1296, 334
Delay 758
LeftClick 1


MoveTo 917, 545
Delay 3352
LeftClick 1
MoveTo 1277, 809
Delay 3134
LeftClick 1
Delay 5000
'==========此处加入助战判断语句

Do While True
	FindColorEx 654, 312, 656, 314, "F1E9D8", 0, 0.98, x, y
	If x > 0 and y > 0 Then 
		FindColorEx 1607, 472, 1609, 474, "63D99A", 0, 0.98, x, y
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

MoveTo 1170, 771
If i = 1 Then 
	Delay 32551
Else 
	Delay 17000
End If
TracePrint i
i = i + 1
LeftClick 1
MoveTo 1291, 789
Delay 3769
LeftClick 1
MoveTo 512, 662
Delay 1255
LeftClick 1
MoveTo 627, 774
Delay 4201
LeftClick 1
MoveTo 881, 774
Delay 4457
LeftClick 1
MoveTo 562, 669
Delay 715
LeftClick 1

'=========根据打手使用不同代码

MoveTo 1674, 443
Delay 5585
LeftClick 1
MoveTo 1430, 457
Delay 1902
LeftClick 1
MoveTo 528, 607
Delay 2027
LeftClick 1
MoveTo 200, 784
'MoveTo 317, 804

'=========

Delay 5559
LeftClick 1
MoveTo 1637, 821
Delay 5541
LeftClick 1
MoveTo 621, 347
Delay 2537
LeftClick 1
MoveTo 629, 605
Delay 401
LeftClick 1
MoveTo 326, 711
Delay 384
LeftDown 1
MoveTo 323, 711
Delay 76
LeftUp 1

'=========根据打手使用不同代码

'MoveTo 464, 779
'Delay 35399
'LeftClick 1
'MoveTo 1618, 826
'Delay 4615
'LeftClick 1
'MoveTo 1618, 826
'Delay 4615
'LeftClick 1
MoveTo 1618, 826
Delay 36000
LeftClick 1

'=========

MoveTo 666, 329
Delay 2912
LeftClick 1
MoveTo 635, 645
Delay 450
LeftClick 1
MoveTo 298, 669
Delay 455
LeftClick 1

'=========根据打手使用不同代码

MoveTo 457,797
Delay 40000
LeftClick 1
'MoveTo 1674, 429
'Delay 40811
'LeftClick 1
'MoveTo 1428, 446
'Delay 1340
'LeftClick 1
'MoveTo 548, 639
'Delay 1218
'LeftClick 1

'=========
/*
'=========宫本武藏
MoveTo 1604, 839
Delay 4161
LeftClick 1
MoveTo 611, 387
Delay 2282
LeftClick 1
MoveTo 626, 649
Delay 365
LeftClick 1
MoveTo 343, 694
Delay 305
LeftClick 1
MoveTo 341, 694
Delay 30494
LeftClick 1
Delay 1595
LeftClick 1
MoveTo 959, 824
Delay 4856
LeftDoubleClick 1
Delay 60
Delay 98
LeftDoubleClick 1
Delay 67
Delay 73
LeftDoubleClick 1
Delay 91
Delay 61
LeftDoubleClick 1
Delay 68
Delay 78
LeftDoubleClick 1
Delay 78
Delay 80
LeftDoubleClick 1
Delay 75
Delay 85
LeftDoubleClick 1
Delay 66
Delay 80
LeftDoubleClick 1
Delay 70
MoveTo 1536, 916
Delay 2887
LeftClick 1
MoveTo 1191, 787
Delay 7276
LeftClick 1
MoveTo 922, 432
Delay 10901
LeftClick 1
*/
'=========小达芬奇
MoveTo 467, 800
Delay 865
LeftClick 1
MoveTo 1047, 796
Delay 5653
LeftClick 1
MoveTo 1620, 804
Delay 4872
LeftClick 1
MoveTo 665, 336
Delay 3158
LeftClick 1
MoveTo 1249, 364
Delay 731
LeftClick 1
MoveTo 324, 708
Delay 1252
LeftClick 1
MoveTo 959, 824
Delay 50816
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
FindColorEx 638, 542, 640, 544, "0FB9EC", 0, 0.9, x, y
If x > 0 and y > 0 Then 
	MoveTo 639, 543
	Delay 100
	LeftClick 1
	MoveTo 1221, 775
	Delay 2000
	LeftClick 1
	Delay 5000
End If
'=========助战判断
Do While True
	FindColorEx 654, 312, 656, 314, "F1E9D8", 0, 0.98, x, y
	If x > 0 and y > 0 Then 
		FindColorEx 1607, 472, 1609, 474, "63D99A", 0, 0.98, x, y
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
Loop

MoveTo 929, 437
Delay 2261
LeftClick 1
	
Next
