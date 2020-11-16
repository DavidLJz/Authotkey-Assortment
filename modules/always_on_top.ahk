; Always on Top
^SPACE:: 
if WinActive("ahk_exe sublime_text.exe") {
	return
} else {
	Winset, Alwaysontop, , A ; ctrl + space
}
return