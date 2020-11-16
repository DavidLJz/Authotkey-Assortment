;Super Form Filler
!Insert::
	foo := !foo
	if foo
		Send foo{Tab}
	Else
		Send bar{Tab}
	return