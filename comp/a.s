	nop
	nop
	addi	r4 r0 170
	ptc	r4
	addi	r2 r0 100
	addi	r3 r0 17000
	muli	r3 r3 10
	addi	r4 r0 8193
	sti	r4 r0 8192
	addi	r4 r0 4979
	sti	r4 r0 4977
	addi	r4 r0 4982
	sti	r4 r0 4978
	jump	L_main_10
min_caml_print_float : 
	ptf	f2
	return
min_caml_print_char : 
	ptc	r4
	return
min_caml_read_int : 
	rdi	r4
	return
min_caml_read_float : 
	rdf	f2
	return
min_caml_init_float_array : 
	bne	r5 r0 L_else_13
	return
L_else_13 : 
	fsti	f2 r4 0
	subi	r5 r5 1
	addi	r4 r4 1
	jump	min_caml_init_float_array
min_caml_create_array : 
	add	r6 r0 r3
	add	r3 r3 r4
	sti	r6 r2 0
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	min_caml_init_array
	subi	r2 r2 2
	ldi	r4 r2 0
	add	r4 r0 r4
	return
min_caml_init_array : 
	bne	r5 r0 L_else_15
	return
L_else_15 : 
	sti	r6 r4 0
	subi	r5 r5 1
	addi	r4 r4 1
	jump	min_caml_init_array
min_caml_create_float_array : 
	add	r5 r0 r3
	add	r3 r3 r4
	sti	r5 r2 0
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	min_caml_init_float_array
	subi	r2 r2 2
	ldi	r4 r2 0
	add	r4 r0 r4
	return
L_main_10 : 
