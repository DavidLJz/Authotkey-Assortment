RButton::RButton

#If SuperCopy
	~LButton::
		mousedrag_threshold := 20 ; pixels

		MouseGetPos, mousedrag_x, mousedrag_y

		keywait lbutton

		mousegetpos, mousedrag_x2, mousedrag_y2

		if (abs(mousedrag_x2 - mousedrag_x) > mousedrag_threshold
			or abs(mousedrag_y2 - mousedrag_y) > mousedrag_threshold)
		{
		  sendinput ^c
		}
		return

	RButton::
		send ^v
		SuperCopy := !SuperCopy
		return

#If ;endif

$^+c::SuperCopy := !SuperCopy

;Quick scrolling with RButton and Wheel Down / Up
RButton & ~WheelDown::
if WinActive("ahk_exe sublime_text.exe") {
	return
} else {
	Loop 8 {
		; 0x115 is WM_VSCROLL and the 1 after it is SB_LINEDOWN
		sendInput {WheelDown}
	}
}
return

RButton & ~WheelUp::
if WinActive("ahk_exe sublime_text.exe") {
	return 
} else {
	Loop 8 {
		sendInput {WheelUp}
	}
}
return

; Always on Top
^SPACE:: 
if WinActive("ahk_exe sublime_text.exe") {
	return
} else {
	Winset, Alwaysontop, , A ; ctrl + space
}
return

;CTRL+SHIFT+J to search text from popup
$^+j::
InputBox, searchText, Google Search, Please enter text to search for., 60, 240
if !ErrorLevel {
	Run https://www.google.com/search?num=100&hl=en&q=%searchText%
}
return

;Super Form Filler
!Insert::
	foo := !foo
	if foo
		Send foo{Tab}
	Else
		Send bar{Tab}
	return

; Numpad Plus & Minus to search
NumpadSub::NumpadSub
NumpadSub & NumpadAdd::^f