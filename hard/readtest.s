        nop
        nop
        call Loop100
        addi r30 r0 1
        ptc r30
        read
        
Loop100 :
        addi r1 r0 1000
Loop :
        subi r1 r1 1
        bne r1 r0 Loop
        return
        
        