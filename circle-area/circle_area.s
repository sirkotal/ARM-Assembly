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

        // or load =api (address) into xn and then into dn
