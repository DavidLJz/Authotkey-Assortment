UnixToHuman(unixTime) {
	time:=1970
	time+=unixTime, s

	FormatTime, humanTime, %time%, dddd dd MMMM yyyy HH:mm

	return humanTime
}

;clipboard := ""

!u::
	Loop, parse, clipboard, `n, `r
	{
		clip := A_LoopField

		e := RegExMatch(clip, "^\d{4,11}[\s]*?$", out)

		if e {
			newClip := UnixToHuman(clip)
			MsgBox %clip% -> %newClip%
			clipboard := StrReplace(clipboard, clip , newClip, 1)
			break
		}
	}