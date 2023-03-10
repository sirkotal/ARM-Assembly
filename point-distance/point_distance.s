.text
.global dist
.type dist,"function"


dist: fsub d4, d0, d2
	  fmul d4, d4, d4
	  fsub d5, d1, d3
	  fmul d5, d5, d5
	  fadd d4, d4, d5
	  fsqrt d0, d4
	  ret

