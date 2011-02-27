	nop
	nop
    fdiv    f3 f4 f5
    nop
    nop
    nop
    fdiv    f12 f4 f5
    addi    r1 r0 1
    bne     r0 r0 hei
    fadd    f1 f2 f5
    call    hei
    fadd    f1 f2 f3
    fadd    f2 f3 f1
    fadd    f5 f2 f7
hei :
    call hoi
hoi :
