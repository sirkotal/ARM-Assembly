.text
.global prodintV
.type prodintV, "function"

prodintV: mov x10, xzr
cycle: cbz w2, FIM
	   sub w2, w2, 1
	   ldr w3, [x0], 4
	   ldr w4, [x1], 4
	   smull x3, w3, w4
	   add x10, x10, x3
	   b cycle

FIM: mov x0, x10
	 ret

