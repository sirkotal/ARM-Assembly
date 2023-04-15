even_odd_vect : sub sp, sp, #16
                str xzr, [sp, 8]
                cmp w1, 0
                ble .S2
                add x5, sp, 8
                mov x3, 0
 
.S1 : ldr w2, [x0, x3, lsl 2]
      add x3, x3, 1
      cmp w2, 0
      and w2, w2, 1
      csneg w2, w2, w2, ge
      sxtw x2, w2
      ldr w4, [x5, x2, lsl 2]
      add w4, w4, 1
      str w4, [x5, x2, lsl 2]
      cmp w1, w3
      bgt .S1
      ldp w0, w1, [sp, 8]
      add sp, sp, 16
      cmp w1, w0
      csneg w0, w0, w1, le
      ret

.S2 : mov w0, 0
      add sp, sp, 16
      ret