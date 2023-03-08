.data
api: .double 3.141592653
.text
.global radius
.type radius,"function"


radius: str d19, [sp, -16]!
        ldr d19, api
        fmul d0, d0, d0
        fmul d0, d0, d19
        ldr d19, [sp], 16
        ret

        // ou fazer ldr de =api (endereço) para xn e depois para dn
