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