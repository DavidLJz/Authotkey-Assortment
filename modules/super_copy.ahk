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