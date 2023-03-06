.text
.global prodintV
.type prodintV, "function"

prodintV: mov x10, xzr
cycle: cbz w2, FIM
	   sub w2, w2, 4
	   ldr q0, [x0], 16
	   ldr q1, [x1], 16
	   smull v2.2d, v0.4s, v1.4s
	   addv d0, v2.2d
	   fmov x11, d0
	   add x10, x10, x11
	   b cycle

FIM: mov x0, x10
	 ret

