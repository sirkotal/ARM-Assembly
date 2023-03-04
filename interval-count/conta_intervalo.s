.text
.global conta_intervalo
.type conta_intervalo,"function"

conta_intervalo: mov x5, xzr

subr: cbz x1, fim
      ldr s9, [x0]
      fcmp s0, s9
      b.ge sup
      b next

sup: fcmp s9, s1
     b.le in
     b next

in: add x5, x5, 1

next: add x0, x0, 4
      sub x1, x1, 1
      cbnz x1, subr

fim: mov x0, x5
     ret
