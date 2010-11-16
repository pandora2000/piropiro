L_else_9803 : 
L_cont_9801 : 
	ldi	r5 r0 4124
	fmul	f3 f3 f2
	subi	r2 r2 2
	sti	r5 r2 0
	fsti	f3 r2 1
	add	r4 r0 r8
	call	L_o_diffuse_2590
	ldi	r5 r2 0
	fldi	f3 r2 1
	addi	r2 r2 2
	fmul	f2 f3 f2
	ldi	r4 r0 4121
	jump	L_cont_9786
L_else_9797 : 
	addi	r8 r0 0
	bgt	r8 r5 L_else_9782
	add	r1 r4 r5
	ldi	r7 r1 0
	subi	r2 r2 3
	sti	r6 r2 0
	sti	r4 r2 1
	sti	r5 r2 2
	add	r4 r0 r7
	call	L_d_vec_2627
	add	r7 r0 r4
	ldi	r6 r2 0
	ldi	r4 r2 1
	ldi	r5 r2 2
	addi	r2 r2 3
	subi	r2 r2 2
	sti	r4 r2 0
	sti	r5 r2 1
	add	r4 r0 r7
	add	r5 r0 r6
	call	L_veciprod_2541
	fadd	f3 f0 f2
	ldi	r4 r2 0
	ldi	r5 r2 1
	addi	r2 r2 2
	subi	r2 r2 3
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f3 r2 2
	fadd	f2 f0 f3
	call	L_fisneg_2476
	add	r6 r0 r4
	ldi	r4 r2 0
	ldi	r5 r2 1
	fldi	f3 r2 2
	addi	r2 r2 3
	addi	r7 r0 0
	bne	r6 r7 L_else_9788
	add	r1 r4 r5
	ldi	r7 r1 0
	fldi	f2 r0 51
	fdiv	f3 f3 f2
	subi	r2 r2 2
	sti	r7 r2 0
	fsti	f3 r2 1
	add	r4 r0 r7
	call	L_judge_intersection_fast_2824
	ldi	r7 r2 0
	fldi	f3 r2 1
	addi	r2 r2 2
	addi	r5 r0 0
	bne	r4 r5 L_else_9791
	ldi	r5 r0 5042
	ldi	r4 r0 4117
	addi	r6 r0 0
	add	r1 r4 r6
	ldi	r4 r1 0
	add	r1 r5 r4
	ldi	r8 r1 0
	subi	r2 r2 2
	sti	r8 r2 0
	fsti	f3 r2 1
	add	r4 r0 r7
	call	L_d_vec_2627
	ldi	r8 r2 0
	fldi	f3 r2 1
	addi	r2 r2 2
	ldi	r4 r0 4114
	addi	r6 r0 0
	ldi	r5 r0 4255
	addi	r4 r0 0
	add	r1 r5 r4
	ldi	r4 r1 0
	subi	r2 r2 2
	sti	r8 r2 0
	fsti	f3 r2 1
	add	r1 r0 r4
	add	r4 r0 r6
	add	r6 r0 r1
	add	r5 r0 r6
	call	L_shadow_check_one_or_matrix_2795
	ldi	r8 r2 0
	fldi	f3 r2 1
	addi	r2 r2 2
	addi	r5 r0 0
	bne	r4 r5 L_else_9797
	ldi	r5 r0 4118
	ldi	r4 r0 4111
	subi	r2 r2 2
	sti	r8 r2 0
	fsti	f3 r2 1
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	L_veciprod_2541
	ldi	r8 r2 0
	fldi	f3 r2 1
	addi	r2 r2 2
	subi	r2 r2 2
	sti	r8 r2 0
	fsti	f3 r2 1
	call	L_fneg_2485
	ldi	r8 r2 0
	fldi	f3 r2 1
	addi	r2 r2 2
	subi	r2 r2 3
	sti	r8 r2 0
	fsti	f2 r2 1
	fsti	f3 r2 2
	call	L_fispos_2474
	add	r5 r0 r4
	ldi	r8 r2 0
	fldi	f2 r2 1
	fldi	f3 r2 2
	addi	r2 r2 3
	addi	r4 r0 0
	bne	r5 r4 L_else_9803
	fldi	f2 r0 0
	jump	L_cont_9801
L_else_9803 : 
L_cont_9801 : 
