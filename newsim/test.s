	nop
	nop
	addi	r6 r0 170
    fdiv    f1 f2 f3
	addi	r4 r0 1
    fadd    f2 f3 f1
    fadd    f2 f3 f1
    bne     r0 r0 10
    bne     r0 r0 10 
    call    hei 
    addi	r5 r0 -1
	addi	r2 r0 256
hei :    
	addi	r3 r0 1024
	addi	r6 r0 1006
	addi	r7 r0 0
