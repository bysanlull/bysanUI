#SingleInstance,Force
SetTitleMatchMode 3
SendMode Input
if not A_IsAdmin
{
	Run *RunAs "%A_ScriptFullPath%"
	ExitApp
}

; STANDARD VALUES
Healthbar_XML = custom0_window
Targetbar_XML = float_target_window
Endobar_XML = custom1_window
Powerbar_XML = custom2_window

TargetHVal = 5
TargetWVal = 128
HealthHVal = 5
HealthWVal = 128
EndoHVal = 5
EndoWVal = 128
PowerHVal = 5
PowerWVal = 128

TargetPickedColorName = Magenta
HealthPickedColorName = Red
EndoPickedColorName = Green
PowerPickedColorName = Gold

; FLOATING WINDOW
Gui,+Border +ToolWindow +AlwaysOnTop
Gui, Add,Tab2, Buttons +Theme AltSubmit, TargetBar|HealthBar|EndoBar|PowerBar|
; GUI TAB TARGETBAR
Gui, Tab, 1

;		Target Width Slider
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y35 w100 h18, Width
Gui, Font
Gui, add, Slider, x25 y50 w300 vTargetWSlider gTargetWSlide Range64-1024 tickinterval16 AltSubmit, % PreviousPosition := 1
Gui, add, text, x5 y53 w20 h18 Center, 64
Gui, add, text,	x+300 w25 h18 Center, 1024

;		Target Height Slider
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y90 w100 h18, Height
Gui, Font
Gui, add, Slider, x25 y105 w300 vTargetHSlider gTargetHSlide Range1-13 tickinterval1 AltSubmit, % PreviousPosition := 1
Gui, add, text, x5 y108 w20 h18 Center, 5
Gui, add, text, x+300 w25 h18 Center, 29

;		Target Color Chooser
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y140 w100 h18, Color
Gui, Font
Gui,Add,Picture,x20 y160 w21 h21 gTRed721010, Options\Img\BarColors\Red721010.png
Gui,Add,Picture,x+1 y160 w21 h21 gTOrange723910, Options\Img\BarColors\Orange723910.png
Gui,Add,Picture,x+1 y160 w21 h21 gTYellowa89615, Options\Img\BarColors\Yellowa89615.png
Gui,Add,Picture,x+1 y160 w21 h21 gTGoldf1d032, Options\Img\BarColors\Goldf1d032.png
Gui,Add,Picture,x+1 y160 w21 h21 gTLaurel1C7507, Options\Img\BarColors\Laurel1C7507.png
Gui,Add,Picture,x+1 y160 w21 h21 gTGreen1c520b, Options\Img\BarColors\Green1c520b.png
Gui,Add,Picture,x+1 y160 w21 h21 gTEucalyptus0b6132, Options\Img\BarColors\Eucalyptus0b6132.png
Gui,Add,Picture,x+1 y160 w21 h21 gTCyan0e7061, Options\Img\BarColors\Cyan0e7061.png
Gui,Add,Picture,x+1 y160 w21 h21 gTBlue0a344a, Options\Img\BarColors\Blue0a344a.png
Gui,Add,Picture,x+1 y160 w21 h21 gTBiscay1F4169, Options\Img\BarColors\Biscay1F4169.png
Gui,Add,Picture,x+1 y160 w21 h21 gTMatisse135f92, Options\Img\BarColors\Matisse135f92.png
Gui,Add,Picture,x+1 y160 w21 h21 gTArapawa0A0A55, Options\Img\BarColors\Arapawa0A0A55.png
Gui,Add,Picture,x+1 y160 w21 h21 gTMagenta6d1c6d, Options\Img\BarColors\Magenta6d1c6d.png
Gui,Add,Picture,x+1 y160 w21 h21 gTDisco72104a, Options\Img\BarColors\Disco72104a.png
Gui,Add,Picture,x+1 y160 w21 h21 gTGray979797, Options\Img\BarColors\Gray979797.png

;		Target Summary
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y195 w100 h18, TargetBar
Gui, Font
Gui, add, text, x25 y215 , Width:
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, Color,, f0f0f0
Gui, add, Edit,	x+5 w45 gTargetWValue vTargetWValue -E0x200 -0x800 vTargetPickedWidth, 64
Gui, Font
Gui, add, text, x110 y215 , Height:
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, Edit,	x+5 w35 vTargetHValue -E0x200 +0x800 vTargetPickedHeight, 15
Gui, Font
Gui, add, text, x185 y215 , Color:

Gui, Font, Normal s8 c0x0 Bold, Tahoma
Gui, add, Picture,	x+5 y215 w13 h13 vTargetPickedColor,
Gui, Font

Gui, Add, Button, x320 y209 +Theme gTargetSaveSettings, Save

; GUI TAB HEALTHBAR
Gui, Tab, 2

;		Health Width Slider
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y35 w100 h18, Width
Gui, Font
Gui, add, Slider, x25 y50 w300 vHealthWSlider gHealthWSlide Range64-1024 tickinterval16 AltSubmit, % PreviousPosition := 1
Gui, add, text, x5 y53 w20 h18 Center, 64
Gui, add, text,	x+300 w25 h18 Center, 1024

;		Health Height Slider
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y90 w100 h18, Height
Gui, Font
Gui, add, Slider, x25 y105 w300 vHealthHSlider gHealthHSlide Range1-13 tickinterval1 AltSubmit, % PreviousPosition := 1
Gui, add, text, x5 y108 w20 h18 Center, 5
Gui, add, text, x+300 w25 h18 Center, 29

;		Health Color Chooser
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y140 w100 h18, Color
Gui, Font
Gui,Add,Picture,x20 y160 w21 h21 gRed721010, Options\Img\BarColors\Red721010.png
Gui,Add,Picture,x+1 y160 w21 h21 gOrange723910, Options\Img\BarColors\Orange723910.png
Gui,Add,Picture,x+1 y160 w21 h21 gYellowa89615, Options\Img\BarColors\Yellowa89615.png
Gui,Add,Picture,x+1 y160 w21 h21 gGoldf1d032, Options\Img\BarColors\Goldf1d032.png
Gui,Add,Picture,x+1 y160 w21 h21 gLaurel1C7507, Options\Img\BarColors\Laurel1C7507.png
Gui,Add,Picture,x+1 y160 w21 h21 gGreen1c520b, Options\Img\BarColors\Green1c520b.png
Gui,Add,Picture,x+1 y160 w21 h21 gEucalyptus0b6132, Options\Img\BarColors\Eucalyptus0b6132.png
Gui,Add,Picture,x+1 y160 w21 h21 gCyan0e7061, Options\Img\BarColors\Cyan0e7061.png
Gui,Add,Picture,x+1 y160 w21 h21 gBlue0a344a, Options\Img\BarColors\Blue0a344a.png
Gui,Add,Picture,x+1 y160 w21 h21 gBiscay1F4169, Options\Img\BarColors\Biscay1F4169.png
Gui,Add,Picture,x+1 y160 w21 h21 gMatisse135f92, Options\Img\BarColors\Matisse135f92.png
Gui,Add,Picture,x+1 y160 w21 h21 gArapawa0A0A55, Options\Img\BarColors\Arapawa0A0A55.png
Gui,Add,Picture,x+1 y160 w21 h21 gMagenta6d1c6d, Options\Img\BarColors\Magenta6d1c6d.png
Gui,Add,Picture,x+1 y160 w21 h21 gDisco72104a, Options\Img\BarColors\Disco72104a.png
Gui,Add,Picture,x+1 y160 w21 h21 gGray979797, Options\Img\BarColors\Gray979797.png

;		Health Summary
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y195 w100 h18, HealthBar
Gui, Font
Gui, add, text, x25 y215 , Width:
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, Edit,	x+5 w45 gHealthWValue vHealthWValue -E0x200 -0x800 vHealthPickedWidth, 64
Gui, Font
Gui, add, text, x110 y215 , Height:
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, Edit,	x+5 w35 vHealthHValue -E0x200 +0x800 vHealthPickedHeight, 15
Gui, Font
Gui, add, text, x185 y215 , Color:

Gui, Font, Normal s8 c0x0 Bold, Tahoma
Gui, add, Picture,	x+5 y215 w13 h13 vHealthPickedColor,
Gui, Font

Gui, Add, Button, x320 y209 +Theme gHealthbarSaveSettings, Save


; GUI TAB ENDOBAR
Gui, Tab, 3

;		Endo Width Slider
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y35 w100 h18, Width
Gui, Font
Gui, add, Slider, x25 y50 w300 vEndoWSlider gEndoWSlide Range64-1024 tickinterval16 AltSubmit, % PreviousPosition := 1
Gui, add, text, x5 y53 w20 h18 Center, 64
Gui, add, text,	x+300 w25 h18 Center, 1024

;		Endo Height Slider
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y90 w100 h18, Height
Gui, Font
Gui, add, Slider, x25 y105 w300 vEndoHSlider gEndoHSlide Range1-13 tickinterval1 AltSubmit, % PreviousPosition := 1
Gui, add, text, x5 y108 w20 h18 Center, 5
Gui, add, text, x+300 w25 h18 Center, 29

;		Endo Color Chooser
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y140 w100 h18, Color
Gui, Font
Gui,Add,Picture,x20 y160 w21 h21 gERed721010, Options\Img\BarColors\Red721010.png
Gui,Add,Picture,x+1 y160 w21 h21 gEOrange723910, Options\Img\BarColors\Orange723910.png
Gui,Add,Picture,x+1 y160 w21 h21 gEYellowa89615, Options\Img\BarColors\Yellowa89615.png
Gui,Add,Picture,x+1 y160 w21 h21 gEGoldf1d032, Options\Img\BarColors\Goldf1d032.png
Gui,Add,Picture,x+1 y160 w21 h21 gELaurel1C7507, Options\Img\BarColors\Laurel1C7507.png
Gui,Add,Picture,x+1 y160 w21 h21 gEGreen1c520b, Options\Img\BarColors\Green1c520b.png
Gui,Add,Picture,x+1 y160 w21 h21 gEEucalyptus0b6132, Options\Img\BarColors\Eucalyptus0b6132.png
Gui,Add,Picture,x+1 y160 w21 h21 gECyan0e7061, Options\Img\BarColors\Cyan0e7061.png
Gui,Add,Picture,x+1 y160 w21 h21 gEBlue0a344a, Options\Img\BarColors\Blue0a344a.png
Gui,Add,Picture,x+1 y160 w21 h21 gEBiscay1F4169, Options\Img\BarColors\Biscay1F4169.png
Gui,Add,Picture,x+1 y160 w21 h21 gEMatisse135f92, Options\Img\BarColors\Matisse135f92.png
Gui,Add,Picture,x+1 y160 w21 h21 gEArapawa0A0A55, Options\Img\BarColors\Arapawa0A0A55.png
Gui,Add,Picture,x+1 y160 w21 h21 gEMagenta6d1c6d, Options\Img\BarColors\Magenta6d1c6d.png
Gui,Add,Picture,x+1 y160 w21 h21 gEDisco72104a, Options\Img\BarColors\Disco72104a.png
Gui,Add,Picture,x+1 y160 w21 h21 gEGray979797, Options\Img\BarColors\Gray979797.png

;		Endo Summary
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y195 w100 h18, EndoBar
Gui, Font
Gui, add, text, x25 y215 , Width:
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, Edit,	x+5 w45 gEndoWValue vEndoWValue -E0x200 -0x800 vEndoPickedWidth, 64
Gui, Font
Gui, add, text, x110 y215 , Height:
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, Edit,	x+5 w35 vEndoHValue -E0x200 +0x800 vEndoPickedHeight, 15
Gui, Font
Gui, add, text, x185 y215 , Color:

Gui, Font, Normal s8 c0x0 Bold, Tahoma
Gui, add, Picture,	x+5 y215 w13 h13 vEndoPickedColor,
Gui, Font

Gui, Add, Button, x320 y209 +Theme gEndobarSaveSettings, Save

; GUI TAB POWERBAR
Gui, Tab, 4

;		Power Width Slider
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y35 w100 h18, Width
Gui, Font
Gui, add, Slider, x25 y50 w300 vPowerWSlider gPowerWSlide Range64-1024 tickinterval16 AltSubmit, % PreviousPosition := 1
Gui, add, text, x5 y53 w20 h18 Center, 64
Gui, add, text,	x+300 w25 h18 Center, 1024

;		Power Height Slider
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y90 w100 h18, Height
Gui, Font
Gui, add, Slider, x25 y105 w300 vPowerHSlider gPowerHSlide Range1-13 tickinterval1 AltSubmit, % PreviousPosition := 1
Gui, add, text, x5 y108 w20 h18 Center, 5
Gui, add, text, x+300 w25 h18 Center, 29

;		Power Color Chooser
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y140 w100 h18, Color
Gui, Font
Gui,Add,Picture,x20 y160 w21 h21 gPRed721010, Options\Img\BarColors\Red721010.png
Gui,Add,Picture,x+1 y160 w21 h21 gPOrange723910, Options\Img\BarColors\Orange723910.png
Gui,Add,Picture,x+1 y160 w21 h21 gPYellowa89615, Options\Img\BarColors\Yellowa89615.png
Gui,Add,Picture,x+1 y160 w21 h21 gPGoldf1d032, Options\Img\BarColors\Goldf1d032.png
Gui,Add,Picture,x+1 y160 w21 h21 gPLaurel1C7507, Options\Img\BarColors\Laurel1C7507.png
Gui,Add,Picture,x+1 y160 w21 h21 gPGreen1c520b, Options\Img\BarColors\Green1c520b.png
Gui,Add,Picture,x+1 y160 w21 h21 gPEucalyptus0b6132, Options\Img\BarColors\Eucalyptus0b6132.png
Gui,Add,Picture,x+1 y160 w21 h21 gPCyan0e7061, Options\Img\BarColors\Cyan0e7061.png
Gui,Add,Picture,x+1 y160 w21 h21 gPBlue0a344a, Options\Img\BarColors\Blue0a344a.png
Gui,Add,Picture,x+1 y160 w21 h21 gPBiscay1F4169, Options\Img\BarColors\Biscay1F4169.png
Gui,Add,Picture,x+1 y160 w21 h21 gPMatisse135f92, Options\Img\BarColors\Matisse135f92.png
Gui,Add,Picture,x+1 y160 w21 h21 gPArapawa0A0A55, Options\Img\BarColors\Arapawa0A0A55.png
Gui,Add,Picture,x+1 y160 w21 h21 gPMagenta6d1c6d, Options\Img\BarColors\Magenta6d1c6d.png
Gui,Add,Picture,x+1 y160 w21 h21 gPDisco72104a, Options\Img\BarColors\Disco72104a.png
Gui,Add,Picture,x+1 y160 w21 h21 gPGray979797, Options\Img\BarColors\Gray979797.png

;		Power Summary
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, text, x20 y195 w100 h18, PowerBar
Gui, Font
Gui, add, text, x25 y215 , Width:
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, Edit,	x+5 w45 gPowerWValue vPowerWValue -E0x200 -0x800 vPowerPickedWidth, 64
Gui, Font
Gui, add, text, x110 y215 , Height:
Gui, Font,Normal s8 c0x0 Bold,Tahoma
Gui, add, Edit,	x+5 w35 vPowerHValue -E0x200 +0x800 vPowerPickedHeight, 15
Gui, Font
Gui, add, text, x185 y215 , Color:

Gui, Font, Normal s8 c0x0 Bold, Tahoma
Gui, add, Picture,	x+5 y215 w13 h13 vPowerPickedColor,
Gui, Font

Gui, Add, Button, x320 y209 +Theme gPowerbarSaveSettings, Save
; 		Restore
Gui,Tab
Gui, Add, Button, x256 y209 +Theme gFloatingRestore, Restore All

Gui:
	Gui,Show, w360 h235, bysanUI CustomBars
	Return

; Target Color gLabel
TRed721010:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Red13.png
	TargetPickedColorName = Red
	Return
TOrange723910:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Orange13.png
	TargetPickedColorName = Orange
	Return
TYellowa89615:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Yellow13.png
	TargetPickedColorName = Yellow
	Return
TGoldf1d032:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Gold13.png
	TargetPickedColorName = Gold
	Return
TLaurel1C7507:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Laurel13.png
	TargetPickedColorName = Laurel
	Return
TGreen1c520b:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Green13.png
	TargetPickedColorName = Green
	Return
TEucalyptus0b6132:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Eucalyptus13.png
	TargetPickedColorName = Eucalyptus
	Return
TCyan0e7061:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Cyan13.png
	TargetPickedColorName = Cyan
	Return
TBlue0a344a:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Blue13.png
	TargetPickedColorName = Blue
	Return
TBiscay1F4169:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Biscay13.png
	TargetPickedColorName = Biscay
	Return
TMatisse135f92:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Matisse13.png
	TargetPickedColorName = Matisse
	Return
TArapawa0A0A55:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Arapawa13.png
	TargetPickedColorName = Arapawa
	Return
TMagenta6d1c6d:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Magenta13.png
	TargetPickedColorName = Magenta
	Return
TDisco72104a:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Disco13.png
	TargetPickedColorName = Disco
	Return
TGray979797:
	GuiControl,, TargetPickedColor, Options\Img\BarColors\Gray13.png
	TargetPickedColorName = Gray
	Return

; TARGET WIDTH GSLIDER
TargetWValue:
	Gui, Submit, NoHide
	GuiControl,, TargetWSlider, %TargetPickedWidth%
	if (TargetPickedWidth > 1024)
		TargetWVal = 1024
	else if (TargetPickedWidth < 64)
		TargetWVal = 64
	else
		TargetWVal = %TargetPickedWidth%
	Return

TargetWSlide:
	Gui,Submit,NoHide
	TargetWVal :=  TargetWSlider
	GuiControl,, TargetPickedWidth, %TargetWVal%
	Return

; TARGET HEIGHT GSLIDER
TargetHSlide:
	Gui,Submit,NoHide
	if (TargetHSlider = 1)
		TargetHVal := 5
	else if (TargetHSlider = 2)
		TargetHVal := 7
	else if (TargetHSlider = 3)
		TargetHVal := 9
	else if (TargetHSlider = 4)
		TargetHVal := 11
	else if (TargetHSlider = 5)
		TargetHVal := 13
	else if (TargetHSlider = 6)
		TargetHVal := 15
	else if (TargetHSlider = 7)
		TargetHVal := 17
	else if (TargetHSlider = 8)
		TargetHVal := 19
	else if (TargetHSlider = 9)
		TargetHVal := 21
	else if (TargetHSlider = 10)
		TargetHVal := 23
	else if (TargetHSlider = 11)
		TargetHVal := 25
	else if (TargetHSlider = 12)
		TargetHVal := 27
	else if (TargetHSlider = 13)
		TargetHVal := 29
	GuiControl,, TargetPickedHeight, %TargetHVal%
	Return


; Health Color gLabel
Red721010:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Red13.png
	HealthPickedColorName = Red
	Return
Orange723910:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Orange13.png
	HealthPickedColorName = Orange
	Return
Yellowa89615:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Yellow13.png
	HealthPickedColorName = Yellow
	Return
Goldf1d032:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Gold13.png
	HealthPickedColorName = Gold
	Return
Laurel1C7507:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Laurel13.png
	HealthPickedColorName = Laurel
	Return
Green1c520b:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Green13.png
	HealthPickedColorName = Green
	Return
Eucalyptus0b6132:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Eucalyptus13.png
	HealthPickedColorName = Eucalyptus
	Return
Cyan0e7061:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Cyan13.png
	HealthPickedColorName = Cyan
	Return
Blue0a344a:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Blue13.png
	HealthPickedColorName = Blue
	Return
Biscay1F4169:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Biscay13.png
	HealthPickedColorName = Biscay
	Return
Matisse135f92:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Matisse13.png
	HealthPickedColorName = Matisse
	Return
Arapawa0A0A55:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Arapawa13.png
	HealthPickedColorName = Arapawa
	Return
Magenta6d1c6d:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Magenta13.png
	HealthPickedColorName = Magenta
	Return
Disco72104a:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Disco13.png
	HealthPickedColorName = Disco
	Return
Gray979797:
	GuiControl,, HealthPickedColor, Options\Img\BarColors\Gray13.png
	HealthPickedColorName = Gray
	Return

; HEALTH WIDTH GSLIDER
HealthWValue:
	Gui, Submit, NoHide
	GuiControl,, HealthWSlider, %HealthPickedWidth%
	if (HealthPickedWidth > 1024)
		HealthWVal = 1024
	else if (HealthPickedWidth < 64)
		HealthWVal = 64
	else
		HealthWVal = %HealthPickedWidth%
	Return

HealthWSlide:
	Gui,Submit,NoHide
	HealthWVal :=  HealthWSlider
	GuiControl,, HealthPickedWidth, %HealthWVal%
	Return

; HEALTH HEIGHT GSLIDER
HealthHSlide:
	Gui,Submit,NoHide
	if (HealthHSlider = 1)
		HealthHVal := 5
	else if (HealthHSlider = 2)
		HealthHVal := 7
	else if (HealthHSlider = 3)
		HealthHVal := 9
	else if (HealthHSlider = 4)
		HealthHVal := 11
	else if (HealthHSlider = 5)
		HealthHVal := 13
	else if (HealthHSlider = 6)
		HealthHVal := 15
	else if (HealthHSlider = 7)
		HealthHVal := 17
	else if (HealthHSlider = 8)
		HealthHVal := 19
	else if (HealthHSlider = 9)
		HealthHVal := 21
	else if (HealthHSlider = 10)
		HealthHVal := 23
	else if (HealthHSlider = 11)
		HealthHVal := 25
	else if (HealthHSlider = 12)
		HealthHVal := 27
	else if (HealthHSlider = 13)
		HealthHVal := 29
	GuiControl,, HealthPickedHeight, %HealthHVal%
	Return


; Endo Color gLabel
ERed721010:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Red13.png
	EndoPickedColorName = Red
	Return
EOrange723910:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Orange13.png
	EndoPickedColorName = Orange
	Return
EYellowa89615:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Yellow13.png
	EndoPickedColorName = Yellow
	Return
EGoldf1d032:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Gold13.png
	EndoPickedColorName = Gold
	Return
ELaurel1C7507:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Laurel13.png
	EndoPickedColorName = Laurel
	Return
EGreen1c520b:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Green13.png
	EndoPickedColorName = Green
	Return
EEucalyptus0b6132:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Eucalyptus13.png
	EndoPickedColorName = Eucalyptus
	Return
ECyan0e7061:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Cyan13.png
	EndoPickedColorName = Cyan
	Return
EBlue0a344a:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Blue13.png
	EndoPickedColorName = Blue
	Return
EBiscay1F4169:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Biscay13.png
	EndoPickedColorName = Biscay
	Return
EMatisse135f92:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Matisse13.png
	EndoPickedColorName = Matisse
	Return
EArapawa0A0A55:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Arapawa13.png
	EndoPickedColorName = Arapawa
	Return
EMagenta6d1c6d:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Magenta13.png
	EndoPickedColorName = Magenta
	Return
EDisco72104a:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Disco13.png
	EndoPickedColorName = Disco
	Return
EGray979797:
	GuiControl,, EndoPickedColor, Options\Img\BarColors\Gray13.png
	EndoPickedColorName = Gray
	Return

; ENDO WIDTH GSLIDER
EndoWValue:
	Gui, Submit, NoHide
	GuiControl,, EndoWSlider, %EndoPickedWidth%
	if (EndoPickedWidth > 1024)
		EndoWVal = 1024
	else if (EndoPickedWidth < 64)
		EndoWVal = 64
	else
		EndoWVal = %EndoPickedWidth%
	Return

EndoWSlide:
	Gui,Submit,NoHide
	EndoWVal :=  EndoWSlider
	GuiControl,, EndoPickedWidth, %EndoWVal%
	Return

; ENDO HEIGHT GSLIDER
EndoHSlide:
	Gui,Submit,NoHide
	if (EndoHSlider = 1)
		EndoHVal := 5
	else if (EndoHSlider = 2)
		EndoHVal := 7
	else if (EndoHSlider = 3)
		EndoHVal := 9
	else if (EndoHSlider = 4)
		EndoHVal := 11
	else if (EndoHSlider = 5)
		EndoHVal := 13
	else if (EndoHSlider = 6)
		EndoHVal := 15
	else if (EndoHSlider = 7)
		EndoHVal := 17
	else if (EndoHSlider = 8)
		EndoHVal := 19
	else if (EndoHSlider = 9)
		EndoHVal := 21
	else if (EndoHSlider = 10)
		EndoHVal := 23
	else if (EndoHSlider = 11)
		EndoHVal := 25
	else if (EndoHSlider = 12)
		EndoHVal := 27
	else if (EndoHSlider = 13)
		EndoHVal := 29
	GuiControl,, EndoPickedHeight, %EndoHVal%
	Return


; Power Color gLabel
PRed721010:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Red13.png
	PowerPickedColorName = Red
	Return
POrange723910:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Orange13.png
	PowerPickedColorName = Orange
	Return
PYellowa89615:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Yellow13.png
	PowerPickedColorName = Yellow
	Return
PGoldf1d032:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Gold13.png
	PowerPickedColorName = Gold
	Return
PLaurel1C7507:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Laurel13.png
	PowerPickedColorName = Laurel
	Return
PGreen1c520b:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Green13.png
	PowerPickedColorName = Green
	Return
PEucalyptus0b6132:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Eucalyptus13.png
	PowerPickedColorName = Eucalyptus
	Return
PCyan0e7061:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Cyan13.png
	PowerPickedColorName = Cyan
	Return
PBlue0a344a:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Blue13.png
	PowerPickedColorName = Blue
	Return
PBiscay1F4169:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Biscay13.png
	PowerPickedColorName = Biscay
	Return
PMatisse135f92:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Matisse13.png
	PowerPickedColorName = Matisse
	Return
PArapawa0A0A55:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Arapawa13.png
	PowerPickedColorName = Arapawa
	Return
PMagenta6d1c6d:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Magenta13.png
	PowerPickedColorName = Magenta
	Return
PDisco72104a:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Disco13.png
	PowerPickedColorName = Disco
	Return
PGray979797:
	GuiControl,, PowerPickedColor, Options\Img\BarColors\Gray13.png
	PowerPickedColorName = Gray
	Return

; Power WIDTH GSLIDER
PowerWValue:
	Gui, Submit, NoHide
	GuiControl,, PowerWSlider, %PowerPickedWidth%
	if (PowerPickedWidth > 1024)
		PowerWVal = 1024
	else if (PowerPickedWidth < 64)
		PowerWVal = 64
	else
		PowerWVal = %PowerPickedWidth%
	Return

PowerWSlide:
	Gui,Submit,NoHide
	PowerWVal :=  PowerWSlider
	GuiControl,, PowerPickedWidth, %PowerWVal%
	Return

; Power HEIGHT GSLIDER
PowerHSlide:
	Gui,Submit,NoHide
	if (PowerHSlider = 1)
		PowerHVal := 5
	else if (PowerHSlider = 2)
		PowerHVal := 7
	else if (PowerHSlider = 3)
		PowerHVal := 9
	else if (PowerHSlider = 4)
		PowerHVal := 11
	else if (PowerHSlider = 5)
		PowerHVal := 13
	else if (PowerHSlider = 6)
		PowerHVal := 15
	else if (PowerHSlider = 7)
		PowerHVal := 17
	else if (PowerHSlider = 8)
		PowerHVal := 19
	else if (PowerHSlider = 9)
		PowerHVal := 21
	else if (PowerHSlider = 10)
		PowerHVal := 23
	else if (PowerHSlider = 11)
		PowerHVal := 25
	else if (PowerHSlider = 12)
		PowerHVal := 27
	else if (PowerHSlider = 13)
		PowerHVal := 29
	GuiControl,, PowerPickedHeight, %PowerHVal%
	Return

FloatingRestore:
	Runwait %A_WorkingDir%\Backup\Restore.bat, %A_WorkingDir%\Backup\
	Gui,Submit
	Gui,Destroy
	Gui, Show
	reload
	Return

;	TARGETBAR SAVE BUTTON
TargetSaveSettings:

	if (!TargetPickedColorName)
		{
		TargetPickedColorName = Biscay
		Runwait %A_WorkingDir%\Assets\Textures\Bars\Target\%TargetPickedColorName%.bat, %A_WorkingDir%\Assets\Textures\Bars\Target\
		}
	else
		{
		Runwait %A_WorkingDir%\Assets\Textures\Bars\Target\%TargetPickedColorName%.bat, %A_WorkingDir%\Assets\Textures\Bars\Target\
		}

	Sleep 100

	FileRead, TargetCurrentHeight, %Targetbar_XML%.xml
	TargetSelectedHeight := RegExReplace(TargetCurrentHeight, "<!-- TargetbarHeightTemplate --><TemplateName>floating_targetbar_\K\d+(?=</TemplateName>)", TargetHVal)
	FileDelete, %Targetbar_XML%.xml
	FileAppend, %TargetSelectedHeight%, %Targetbar_XML%.xml

	Sleep 100

	FileRead, TargetCurrentWidth, %Targetbar_XML%.xml
	TargetSelectedWidth := RegExReplace(TargetCurrentWidth, "<!-- TargetbarWidth --><Width>\K\d+(?=</Width>)", TargetWVal)
	FileDelete, %Targetbar_XML%.xml
	FileAppend, %TargetSelectedWidth%, %Targetbar_XML%.xml

	Sleep 100

	FileRead, TargetCurrentHHeight, %Targetbar_XML%.xml
	TargetSelectedHHeight := RegExReplace(TargetCurrentHHeight, "<!-- TargetbarHeight --><Height>\K\d+(?=</Height>)", TargetHVal)
	FileDelete, %Targetbar_XML%.xml
	FileAppend, %TargetSelectedHHeight%, %Targetbar_XML%.xml

	Sleep 100

	if (TargetHVal <= 11)
		{
		FileRead, TargetCurrentText, %Targetbar_XML%.xml
		TargetFontName := silkscreen
		TargetSelectedText := RegExReplace(TargetCurrentText, "<!-- TargetTextSize --><FontName>\K.*(?=</FontName>)", "silkscreen")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedText%, %Targetbar_XML%.xml
		}
	else if (TargetHVal <= 17)
		{
		FileRead, TargetCurrentText, %Targetbar_XML%.xml
		TargetFontName := arial9b
		TargetSelectedText := RegExReplace(TargetCurrentText, "<!-- TargetTextSize --><FontName>\K.*(?=</FontName>)", "arial9b")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedText%, %Targetbar_XML%.xml
		}
	else if (TargetHVal > 17)
		{
		FileRead, TargetCurrentText, %Targetbar_XML%.xml
		TargetFontName := kr
		TargetSelectedText := RegExReplace(TargetCurrentText, "<!-- TargetTextSize --><FontName>\K.*(?=</FontName>)", "kr")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedText%, %Targetbar_XML%.xml
		}

	Sleep 100

	if (TargetHVal = 5)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := -4
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "-4")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 7)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := -3
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "-3")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 9)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := -2
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "-2")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 11)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := -1
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "-1")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 13)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := 1
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "1")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 15)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := 2
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "2")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 17)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := 3
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "3")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 19)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := 5
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "5")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 21)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := 6
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "6")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 23)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := 7
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "7")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 25)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := 8
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "8")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 27)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := 9
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "9")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}
	else if (TargetHVal = 29)
		{
		FileRead, TargetCurrentTextPos, %Targetbar_XML%.xml
		TargetFontPos := 10
		TargetSelectedTextPos := RegExReplace(TargetCurrentTextPos, "<!-- TargetFontPos --><Y>\K.*(?=</Y>)", "10")
		FileDelete, %Targetbar_XML%.xml
		FileAppend, %TargetSelectedTextPos%, %Targetbar_XML%.xml
		}

	Sleep 100

	FileRead, AttackModeWidth, %Targetbar_XML%.xml
	AttackModeSelectedWidth := RegExReplace(AttackModeWidth, "<!-- AttackModeW --><Width>\K\d+(?=</Width>)", TargetWVal-2)
	FileDelete, %Targetbar_XML%.xml
	FileAppend, %AttackModeSelectedWidth%, %Targetbar_XML%.xml

	Sleep 100

	FileRead, AttackModeHeight, %Targetbar_XML%.xml
	AttackModeSelectedHeight := RegExReplace(AttackModeHeight, "<!-- AttackModeH --><Height>\K\d+(?=</Height>)", TargetHVal-4)
	FileDelete, %Targetbar_XML%.xml
	FileAppend, %AttackModeSelectedHeight%, %Targetbar_XML%.xml

	Sleep 100

	FileRead, AttackModeVertical, %Targetbar_XML%.xml
	AttackModeSelectedVertical := RegExReplace(AttackModeVertical, "<!-- AttackModeVertical --><X>\K\d+(?=</X>)", TargetWVal-2)
	FileDelete, %Targetbar_XML%.xml
	FileAppend, %AttackModeSelectedVertical%, %Targetbar_XML%.xml

	Sleep 100

	FileRead, AttackModeHorizontal, %Targetbar_XML%.xml
	AttackModeSelectedHorizontal := RegExReplace(AttackModeHorizontal, "<!-- AttackModeHorizontal --><Y>\K\d+(?=</Y>)", TargetHVal-2)
	FileDelete, %Targetbar_XML%.xml
	FileAppend, %AttackModeSelectedHorizontal%, %Targetbar_XML%.xml

	Return


;	HEALTHBAR SAVE BUTTON
HealthbarSaveSettings:

	if (!HealthPickedColorName)
		{
		HealthPickedColorName = Red
		Runwait %A_WorkingDir%\Assets\Textures\Bars\Health\%HealthPickedColorName%.bat, %A_WorkingDir%\Assets\Textures\Bars\Health\
		}
	else
		{
		Runwait %A_WorkingDir%\Assets\Textures\Bars\Health\%HealthPickedColorName%.bat, %A_WorkingDir%\Assets\Textures\Bars\Health\
		}

	Sleep 100

	FileRead, HealthCurrentHeight, %Healthbar_XML%.xml
	HealthSelectedHeight := RegExReplace(HealthCurrentHeight, "<!-- HealthbarHeightTemplate --><TemplateName>floating_healthbar_\K\d+(?=</TemplateName>)", HealthHVal)
	FileDelete, %Healthbar_XML%.xml
	FileAppend, %HealthSelectedHeight%, %Healthbar_XML%.xml

	Sleep 100

	FileRead, HealthCurrentWidth, %Healthbar_XML%.xml
	HealthSelectedWidth := RegExReplace(HealthCurrentWidth, "<!-- HealthbarWidth --><Width>\K\d+(?=</Width>)", HealthWVal)
	FileDelete, %Healthbar_XML%.xml
	FileAppend, %HealthSelectedWidth%, %Healthbar_XML%.xml

	Sleep 100

	FileRead, HealthCurrentHHeight, %Healthbar_XML%.xml
	HealthSelectedHHeight := RegExReplace(HealthCurrentHHeight, "<!-- HealthbarHeight --><Height>\K\d+(?=</Height>)", HealthHVal)
	FileDelete, %Healthbar_XML%.xml
	FileAppend, %HealthSelectedHHeight%, %Healthbar_XML%.xml

	Sleep 100

	if (HealthHVal <= 11)
		{
		FileRead, HealthCurrentText, %Healthbar_XML%.xml
		HealthFontName := silkscreen
		HealthSelectedText := RegExReplace(HealthCurrentText, "<!-- HealthTextSize --><FontName>\K.*(?=</FontName>)", "silkscreen")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedText%, %Healthbar_XML%.xml
		}
	else if (HealthHVal <= 17)
		{
		FileRead, HealthCurrentText, %Healthbar_XML%.xml
		HealthFontName := arial9b
		HealthSelectedText := RegExReplace(HealthCurrentText, "<!-- HealthTextSize --><FontName>\K.*(?=</FontName>)", "arial9b")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedText%, %Healthbar_XML%.xml
		}
	else if (HealthHVal > 17)
		{
		FileRead, HealthCurrentText, %Healthbar_XML%.xml
		HealthFontName := kr
		HealthSelectedText := RegExReplace(HealthCurrentText, "<!-- HealthTextSize --><FontName>\K.*(?=</FontName>)", "kr")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedText%, %Healthbar_XML%.xml
		}

	Sleep 100

	if (HealthHVal = 5)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := -4
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "-4")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 7)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := -3
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "-3")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 9)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := -2
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "-2")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 11)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := -1
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "-1")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 13)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := 1
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "1")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 15)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := 2
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "2")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 17)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := 3
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "3")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 19)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := 5
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "5")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 21)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := 6
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "6")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 23)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := 7
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "7")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 25)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := 8
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "8")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 27)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := 9
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "9")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}
	else if (HealthHVal = 29)
		{
		FileRead, HealthCurrentTextPos, %Healthbar_XML%.xml
		HealthFontPos := 10
		HealthSelectedTextPos := RegExReplace(HealthCurrentTextPos, "<!-- HealthFontPos --><Y>\K.*(?=</Y>)", "10")
		FileDelete, %Healthbar_XML%.xml
		FileAppend, %HealthSelectedTextPos%, %Healthbar_XML%.xml
		}

	Return


;	ENDOBAR SAVE BUTTON
EndobarSaveSettings:

	if (!EndoPickedColorName)
		{
		EndoPickedColorName = Green
		Runwait %A_WorkingDir%\Assets\Textures\Bars\Endo\%EndoPickedColorName%.bat, %A_WorkingDir%\Assets\Textures\Bars\Endo\
		}
	else
		{
		Runwait %A_WorkingDir%\Assets\Textures\Bars\Endo\%EndoPickedColorName%.bat, %A_WorkingDir%\Assets\Textures\Bars\Endo\
		}

	Sleep 100

	FileRead, EndoCurrentHeight, %Endobar_XML%.xml
	EndoSelectedHeight := RegExReplace(EndoCurrentHeight, "<!-- EndobarHeightTemplate --><TemplateName>floating_endobar_\K\d+(?=</TemplateName>)", EndoHVal)
	FileDelete, %Endobar_XML%.xml
	FileAppend, %EndoSelectedHeight%, %Endobar_XML%.xml

	Sleep 100

	FileRead, EndoCurrentWidth, %Endobar_XML%.xml
	EndoSelectedWidth := RegExReplace(EndoCurrentWidth, "<!-- EndobarWidth --><Width>\K\d+(?=</Width>)", EndoWVal)
	FileDelete, %Endobar_XML%.xml
	FileAppend, %EndoSelectedWidth%, %Endobar_XML%.xml

	Sleep 100

	FileRead, EndoCurrentHHeight, %Endobar_XML%.xml
	EndoSelectedHHeight := RegExReplace(EndoCurrentHHeight, "<!-- EndobarHeight --><Height>\K\d+(?=</Height>)", EndoHVal)
	FileDelete, %Endobar_XML%.xml
	FileAppend, %EndoSelectedHHeight%, %Endobar_XML%.xml

	Sleep 100

	if (EndoHVal <= 11)
		{
		FileRead, EndoCurrentText, %Endobar_XML%.xml
		EndoFontName := silkscreen
		EndoSelectedText := RegExReplace(EndoCurrentText, "<!-- EndoTextSize --><FontName>\K.*(?=</FontName>)", "silkscreen")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedText%, %Endobar_XML%.xml
		}
	else if (EndoHVal <= 17)
		{
		FileRead, EndoCurrentText, %Endobar_XML%.xml
		EndoFontName := arial9b
		EndoSelectedText := RegExReplace(EndoCurrentText, "<!-- EndoTextSize --><FontName>\K.*(?=</FontName>)", "arial9b")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedText%, %Endobar_XML%.xml
		}
	else if (EndoHVal > 17)
		{
		FileRead, EndoCurrentText, %Endobar_XML%.xml
		EndoFontName := kr
		EndoSelectedText := RegExReplace(EndoCurrentText, "<!-- EndoTextSize --><FontName>\K.*(?=</FontName>)", "kr")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedText%, %Endobar_XML%.xml
		}

	Sleep 100

	if (EndoHVal = 5)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := -4
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "-4")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 7)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := -3
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "-3")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 9)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := -2
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "-2")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 11)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := -1
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "-1")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 13)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := 1
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "1")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 15)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := 2
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "2")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 17)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := 3
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "3")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 19)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := 5
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "5")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 21)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := 6
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "6")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 23)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := 7
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "7")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 25)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := 8
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "8")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 27)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := 9
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "9")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	else if (EndoHVal = 29)
		{
		FileRead, EndoCurrentTextPos, %Endobar_XML%.xml
		EndoFontPos := 10
		EndoSelectedTextPos := RegExReplace(EndoCurrentTextPos, "<!-- EndoFontPos --><Y>\K.*(?=</Y>)", "10")
		FileDelete, %Endobar_XML%.xml
		FileAppend, %EndoSelectedTextPos%, %Endobar_XML%.xml
		}
	Return


;	POWERBAR SAVE BUTTON
PowerbarSaveSettings:

	if (!PowerPickedColorName)
		{
		PowerPickedColorName = Gold
		Runwait %A_WorkingDir%\Assets\Textures\Bars\Power\%PowerPickedColorName%.bat, %A_WorkingDir%\Assets\Textures\Bars\Power\
		}
	else
		{
		Runwait %A_WorkingDir%\Assets\Textures\Bars\Power\%PowerPickedColorName%.bat, %A_WorkingDir%\Assets\Textures\Bars\Power\
		}

	Sleep 100

	FileRead, PowerCurrentHeight, %Powerbar_XML%.xml
	PowerSelectedHeight := RegExReplace(PowerCurrentHeight, "<!-- PowerbarHeightTemplate --><TemplateName>floating_powerbar_\K\d+(?=</TemplateName>)", PowerHVal)
	FileDelete, %Powerbar_XML%.xml
	FileAppend, %PowerSelectedHeight%, %Powerbar_XML%.xml

	Sleep 100

	FileRead, PowerCurrentWidth, %Powerbar_XML%.xml
	PowerSelectedWidth := RegExReplace(PowerCurrentWidth, "<!-- PowerbarWidth --><Width>\K\d+(?=</Width>)", PowerWVal)
	FileDelete, %Powerbar_XML%.xml
	FileAppend, %PowerSelectedWidth%, %Powerbar_XML%.xml

	Sleep 100

	FileRead, PowerCurrentHHeight, %Powerbar_XML%.xml
	PowerSelectedHHeight := RegExReplace(PowerCurrentHHeight, "<!-- PowerbarHeight --><Height>\K\d+(?=</Height>)", PowerHVal)
	FileDelete, %Powerbar_XML%.xml
	FileAppend, %PowerSelectedHHeight%, %Powerbar_XML%.xml

	Sleep 100

	if (PowerHVal <= 11)
		{
		FileRead, PowerCurrentText, %Powerbar_XML%.xml
		PowerFontName := silkscreen
		PowerSelectedText := RegExReplace(PowerCurrentText, "<!-- PowerTextSize --><FontName>\K.*(?=</FontName>)", "silkscreen")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedText%, %Powerbar_XML%.xml
		}
	else if (PowerHVal <= 17)
		{
		FileRead, PowerCurrentText, %Powerbar_XML%.xml
		PowerFontName := arial9b
		PowerSelectedText := RegExReplace(PowerCurrentText, "<!-- PowerTextSize --><FontName>\K.*(?=</FontName>)", "arial9b")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedText%, %Powerbar_XML%.xml
		}
	else if (PowerHVal > 17)
		{
		FileRead, PowerCurrentText, %Powerbar_XML%.xml
		PowerFontName := kr
		PowerSelectedText := RegExReplace(PowerCurrentText, "<!-- PowerTextSize --><FontName>\K.*(?=</FontName>)", "kr")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedText%, %Powerbar_XML%.xml
		}

	Sleep 100

	if (PowerHVal = 5)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := -4
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "-4")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 7)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := -3
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "-3")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 9)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := -2
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "-2")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 11)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := -1
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "-1")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 13)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := 1
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "1")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 15)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := 2
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "2")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 17)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := 3
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "3")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 19)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := 5
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "5")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 21)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := 6
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "6")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 23)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := 7
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "7")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 25)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := 8
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "8")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 27)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := 9
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "9")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	else if (PowerHVal = 29)
		{
		FileRead, PowerCurrentTextPos, %Powerbar_XML%.xml
		PowerFontPos := 10
		PowerSelectedTextPos := RegExReplace(PowerCurrentTextPos, "<!-- PowerFontPos --><Y>\K.*(?=</Y>)", "10")
		FileDelete, %Powerbar_XML%.xml
		FileAppend, %PowerSelectedTextPos%, %Powerbar_XML%.xml
		}
	Return

GuiClose:
	Gui,Submit
	Gui,Destroy
	ExitApp
	return

;Escape::
;	ExitApp
;	Return
