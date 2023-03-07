.text
.global s2sum
.type s2sum,"function"


s2sum: scvtf d1, x0
       fsqrt d0, d0
       fadd d0, d0, d1
       ret

