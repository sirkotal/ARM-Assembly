.text
.global split
.type split, "function"

split :
    mov w4, 0

NEXT :
    cbz w0, EXIT
    sub w0, w0, 1
    ldr w5, [x1], 4
    lsr w6, w5, 31
    cbz w6, POS
    str w5, [x2], 4
    add w4, w4, 1
    b NEXT

POS :
    str w5, [x3], 4
    b NEXT

EXIT :
    mov w0, w4
    ret