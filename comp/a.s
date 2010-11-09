	nop
	nop
	addi	r4 r0 170
	ptc	r4
	addi	r2 r0 4096
	addi	r3 r0 17000
	muli	r3 r3 10
	addi	r4 r0 4979
	sti	r4 r0 4977
	addi	r4 r0 4982
	sti	r4 r0 4978
	jump	min_caml_start
min_caml_create_array : 
	add	r7 r0 r3
	add	r3 r4 r3
	sub	r4 r3 r4
	add	r6 r0 r5
	add	r5 r3 r4
	call	min_caml_init_array
	sub	r4 r0 r7
min_caml_init_array : 
	bne	r0 r5 L_else_59
	return
L_else_59 : 
	sti	r6 r4 0
	subi	r5 r5 1
	addi	r4 r4 1
	jump	min_caml_init_array
min_caml_create_float_array : 
	add	r7 r0 r3
	add	r3 r4 r3
	sub	r4 r3 r4
	add	r5 r3 r4
	call	min_caml_init_float_array
	sub	r4 r0 r7
min_caml_init_float_array : 
	bne	r0 r5 L_else_60
	return
L_else_60 : 
	fsti	f2 r4 0
	subi	r5 r5 1
	addi	r4 r4 1
	jump	min_caml_init_float_array
min_caml_read_int : 
	rdi	r4
	return
min_caml_read_float : 
	rdf	f2
	return
min_caml_print_char : 
	ptc	r4
	return
min_caml_print_float : 
	ptf	f2
	return
L_ponyo_10 : 
	addi	r4 r0 1
	addi	r5 r0 1
	bne	r4 r5 L_else_26
	addi	r5 r0 2
	addi	r4 r0 2
	bne	r5 r4 L_else_28
	addi	r4 r0 3
	addi	r5 r0 3
