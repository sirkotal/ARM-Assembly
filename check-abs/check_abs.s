.text
.global CheckABS
.type CheckABS,"function"

CheckABS: mov w4, 0
          cbz w1, fim
ciclo: ldr w5, [x2]
	 cmp w5, 0
	 b.gt pos
 	 neg w5, w5
pos: cmp w0, w5
     b.ge prox
     mov w5, 0
     str w5, [x2]
     add w4, w4, 1
prox: add x2, x2, 4
      sub w1, w1, 1
      cbnz w1, ciclo
fim: mov w0, w4
     ret
