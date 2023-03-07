.text
.global equation
.type equation,"function"

equation: fmov s9, 3.0
          fsub s4, s0, s1
		  fmul s4, s4, s2
		  fadd s5, s3, s0
		  fsub s5, s5, s9
		  fdiv s0, s4, s5
		  ret
