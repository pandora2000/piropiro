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
	jump	L_main_21190
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
	bne	r5 r0 L_else_21314
	return
L_else_21314 : 
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
	bne	r5 r0 L_else_21316
	return
L_else_21316 : 
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
L_sin_1886 : 
	fldi	f3 r0 57
	fldi	f4 r0 56
	fbgt	f2 f4 L_else_21318
	fldi	f5 r0 55
	fbgt	f5 f2 L_else_21319
	fldi	f3 r0 54
	fldi	f5 r0 53
	fldi	f6 r0 52
	fbgt	f2 f0 L_else_21320
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_21321
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21321 : 
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_21322
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21322 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21320 : 
	fbgt	f2 f3 L_else_21323
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21323 : 
	fbgt	f2 f6 L_else_21324
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	return
L_else_21324 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21319 : 
	fadd	f2 f2 f3
	fldi	f3 r0 57
	fldi	f4 r0 56
	fbgt	f2 f4 L_else_21325
	fldi	f5 r0 55
	fbgt	f5 f2 L_else_21326
	fldi	f3 r0 54
	fldi	f5 r0 53
	fldi	f6 r0 52
	fbgt	f2 f0 L_else_21327
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_21328
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21328 : 
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_21329
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21329 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21327 : 
	fbgt	f2 f3 L_else_21330
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21330 : 
	fbgt	f2 f6 L_else_21331
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	return
L_else_21331 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21326 : 
	fadd	f2 f2 f3
	jump	L_sin_1886
L_else_21325 : 
	fsub	f2 f2 f3
	jump	L_sin_1886
L_else_21318 : 
	fsub	f2 f2 f3
	fldi	f3 r0 57
	fldi	f4 r0 56
	fbgt	f2 f4 L_else_21332
	fldi	f5 r0 55
	fbgt	f5 f2 L_else_21333
	fldi	f3 r0 54
	fldi	f5 r0 53
	fldi	f6 r0 52
	fbgt	f2 f0 L_else_21334
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_21335
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21335 : 
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_21336
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21336 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21334 : 
	fbgt	f2 f3 L_else_21337
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21337 : 
	fbgt	f2 f6 L_else_21338
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	return
L_else_21338 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21333 : 
	fadd	f2 f2 f3
	jump	L_sin_1886
L_else_21332 : 
	fsub	f2 f2 f3
	jump	L_sin_1886
L_cos_1888 : 
	fldi	f3 r0 57
	fldi	f4 r0 56
	fbgt	f2 f4 L_else_21339
	fldi	f5 r0 55
	fbgt	f5 f2 L_else_21340
	fldi	f3 r0 54
	fldi	f5 r0 53
	fldi	f6 r0 52
	fbgt	f2 f0 L_else_21341
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_21342
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	return
L_else_21342 : 
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_21343
	fadd	f2 f2 f5
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21343 : 
	fadd	f2 f4 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21341 : 
	fbgt	f2 f3 L_else_21344
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	return
L_else_21344 : 
	fbgt	f2 f6 L_else_21345
	fsub	f2 f2 f5
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21345 : 
	fsub	f2 f4 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21340 : 
	fadd	f2 f2 f3
	jump	L_cos_1888
L_else_21339 : 
	fsub	f2 f2 f3
	jump	L_cos_1888
L_atan_1890 : 
	fmul	f3 f2 f2
	fldi	f4 r0 39
	fadd	f4 f4 f3
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f5 f5
	fmul	f8 f5 f6
	fmul	f9 f6 f6
	fmul	f10 f2 f3
	fmul	f11 f3 f10
	fmul	f12 f3 f11
	fmul	f13 f3 f12
	fmul	f3 f3 f13
	fldi	f14 r0 36
	fmul	f3 f14 f3
	fdiv	f3 f3 f9
	fldi	f9 r0 35
	fmul	f9 f9 f13
	fdiv	f8 f9 f8
	fadd	f3 f3 f8
	fldi	f8 r0 34
	fmul	f8 f8 f12
	fdiv	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 33
	fmul	f7 f7 f11
	fdiv	f6 f7 f6
	fadd	f3 f3 f6
	fldi	f6 r0 32
	fmul	f6 f6 f10
	fdiv	f5 f6 f5
	fadd	f3 f3 f5
	fdiv	f2 f2 f4
	fadd	f2 f3 f2
	return
L_isqrt_1892 : 
	fldi	f5 r0 31
	fmul	f5 f5 f4
	fsub	f3 f4 f3
	fbgt	f0 f3 L_else_21346
	fadd	f3 f0 f3
	jump	L_cont_21347
L_else_21346 : 
	fsub	f3 f0 f3
L_cont_21347 : 
	fbgt	f5 f3 L_else_21348
	fldi	f3 r0 30
	fmul	f5 f2 f4
	fmul	f5 f5 f4
	fsub	f3 f3 f5
	fmul	f3 f4 f3
	fldi	f5 r0 29
	fdiv	f3 f3 f5
	fldi	f5 r0 31
	fmul	f5 f5 f3
	fsub	f4 f3 f4
	fbgt	f0 f4 L_else_21349
	fadd	f4 f0 f4
	jump	L_cont_21350
L_else_21349 : 
	fsub	f4 f0 f4
L_cont_21350 : 
	fbgt	f5 f4 L_else_21351
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f4 f3 f4
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	jump	L_isqrt_1892
L_else_21351 : 
	fadd	f2 f0 f3
	return
L_else_21348 : 
	fadd	f2 f0 f4
	return
L_sdiv10_1898 : 
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21352
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21353
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21354
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21355
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21356
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21357
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21358
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21359
	addi	r4 r4 -10
	addi	r5 r5 1
	jump	L_sdiv10_1898
L_else_21359 : 
	add	r4 r0 r5
	return
L_else_21358 : 
	add	r4 r0 r5
	return
L_else_21357 : 
	add	r4 r0 r5
	return
L_else_21356 : 
	add	r4 r0 r5
	return
L_else_21355 : 
	add	r4 r0 r5
	return
L_else_21354 : 
	add	r4 r0 r5
	return
L_else_21353 : 
	add	r4 r0 r5
	return
L_else_21352 : 
	add	r4 r0 r5
	return
L_vecunit_sgn_1931 : 
	fldi	f2 r4 0
	fmul	f2 f2 f2
	fldi	f3 r4 1
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	fldi	f3 r4 2
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	fldi	f3 r0 29
	fldi	f4 r0 39
	fbgt	f2 f4 L_else_21360
	fldi	f4 r0 39
	jump	L_cont_21361
L_else_21360 : 
	fldi	f4 r0 39
	fdiv	f4 f4 f2
L_cont_21361 : 
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f2 r2 2
	addi	r2 r2 5
	call	L_isqrt_1892
	subi	r2 r2 5
	fldi	f3 r2 2
	fmul	f2 f3 f2
	fbne	f2 f0 L_else_21362
	addi	r4 r0 1
	jump	L_cont_21363
L_else_21362 : 
	addi	r4 r0 0
L_cont_21363 : 
	bne	r4 r0 L_else_21364
	ldi	r4 r2 1
	bne	r4 r0 L_else_21366
	fldi	f3 r0 39
	fdiv	f2 f3 f2
	jump	L_cont_21367
L_else_21366 : 
	fldi	f3 r0 28
	fdiv	f2 f3 f2
L_cont_21367 : 
	jump	L_cont_21365
L_else_21364 : 
	fldi	f2 r0 39
L_cont_21365 : 
	ldi	r4 r2 0
	fldi	f3 r4 0
	fmul	f3 f3 f2
	fsti	f3 r4 0
	fldi	f3 r4 1
	fmul	f3 f3 f2
	fsti	f3 r4 1
	fldi	f3 r4 2
	fmul	f2 f3 f2
	fsti	f2 r4 2
	return
L_read_object_2041 : 
	addi	r5 r0 60
	bgt	r5 r4 L_else_21369
	return
L_else_21369 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_21371
	addi	r4 r0 0
	jump	L_cont_21372
L_else_21371 : 
	sti	r4 r2 1
	addi	r2 r2 3
	call	min_caml_read_int
	subi	r2 r2 3
	sti	r4 r2 2
	addi	r2 r2 4
	call	min_caml_read_int
	subi	r2 r2 4
	sti	r4 r2 3
	addi	r2 r2 5
	call	min_caml_read_int
	subi	r2 r2 5
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 4
	add	r4 r0 r5
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	sti	r4 r2 5
	addi	r2 r2 7
	call	min_caml_read_float
	subi	r2 r2 7
	ldi	r4 r2 5
	fsti	f2 r4 0
	addi	r2 r2 7
	call	min_caml_read_float
	subi	r2 r2 7
	ldi	r4 r2 5
	fsti	f2 r4 1
	addi	r2 r2 7
	call	min_caml_read_float
	subi	r2 r2 7
	ldi	r4 r2 5
	fsti	f2 r4 2
	addi	r5 r0 3
	fldi	f2 r0 27
	add	r4 r0 r5
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	sti	r4 r2 6
	addi	r2 r2 8
	call	min_caml_read_float
	subi	r2 r2 8
	ldi	r4 r2 6
	fsti	f2 r4 0
	addi	r2 r2 8
	call	min_caml_read_float
	subi	r2 r2 8
	ldi	r4 r2 6
	fsti	f2 r4 1
	addi	r2 r2 8
	call	min_caml_read_float
	subi	r2 r2 8
	ldi	r4 r2 6
	fsti	f2 r4 2
	addi	r2 r2 8
	call	min_caml_read_float
	subi	r2 r2 8
	fbgt	f0 f2 L_else_21373
	addi	r4 r0 0
	jump	L_cont_21374
L_else_21373 : 
	addi	r4 r0 1
L_cont_21374 : 
	addi	r5 r0 2
	fldi	f2 r0 27
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	sti	r4 r2 8
	addi	r2 r2 10
	call	min_caml_read_float
	subi	r2 r2 10
	ldi	r4 r2 8
	fsti	f2 r4 0
	addi	r2 r2 10
	call	min_caml_read_float
	subi	r2 r2 10
	ldi	r4 r2 8
	fsti	f2 r4 1
	addi	r5 r0 3
	fldi	f2 r0 27
	add	r4 r0 r5
	addi	r2 r2 10
	call	min_caml_create_float_array
	subi	r2 r2 10
	sti	r4 r2 9
	addi	r2 r2 11
	call	min_caml_read_float
	subi	r2 r2 11
	ldi	r4 r2 9
	fsti	f2 r4 0
	addi	r2 r2 11
	call	min_caml_read_float
	subi	r2 r2 11
	ldi	r4 r2 9
	fsti	f2 r4 1
	addi	r2 r2 11
	call	min_caml_read_float
	subi	r2 r2 11
	ldi	r4 r2 9
	fsti	f2 r4 2
	addi	r5 r0 3
	fldi	f2 r0 27
	add	r4 r0 r5
	addi	r2 r2 11
	call	min_caml_create_float_array
	subi	r2 r2 11
	ldi	r5 r2 4
	bne	r5 r0 L_else_21375
	jump	L_cont_21376
L_else_21375 : 
	sti	r4 r2 10
	addi	r2 r2 12
	call	min_caml_read_float
	subi	r2 r2 12
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 10
	fsti	f2 r4 0
	addi	r2 r2 12
	call	min_caml_read_float
	subi	r2 r2 12
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 10
	fsti	f2 r4 1
	addi	r2 r2 12
	call	min_caml_read_float
	subi	r2 r2 12
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 10
	fsti	f2 r4 2
L_cont_21376 : 
	addi	r5 r0 2
	ldi	r6 r2 2
	bne	r6 r5 L_else_21377
	addi	r5 r0 1
	jump	L_cont_21378
L_else_21377 : 
	ldi	r5 r2 7
	add	r5 r0 r5
L_cont_21378 : 
	addi	r7 r0 4
	fldi	f2 r0 27
	sti	r5 r2 11
	sti	r4 r2 10
	add	r4 r0 r7
	addi	r2 r2 13
	call	min_caml_create_float_array
	subi	r2 r2 13
	add	r5 r0 r3
	addi	r3 r3 11
	sti	r4 r5 10
	ldi	r4 r2 10
	sti	r4 r5 9
	ldi	r6 r2 9
	sti	r6 r5 8
	ldi	r6 r2 8
	sti	r6 r5 7
	ldi	r6 r2 11
	sti	r6 r5 6
	ldi	r6 r2 6
	sti	r6 r5 5
	ldi	r6 r2 5
	sti	r6 r5 4
	ldi	r7 r2 4
	sti	r7 r5 3
	ldi	r8 r2 3
	sti	r8 r5 2
	ldi	r8 r2 2
	sti	r8 r5 1
	ldi	r9 r2 1
	sti	r9 r5 0
	add	r5 r0 r5
	addi	r9 r0 5042
	ldi	r10 r2 0
	add	r9 r9 r10
	sti	r5 r9 0
	addi	r5 r0 3
	bne	r8 r5 L_else_21379
	fldi	f2 r6 0
	fbne	f2 f0 L_else_21381
	addi	r5 r0 1
	jump	L_cont_21382
L_else_21381 : 
	addi	r5 r0 0
L_cont_21382 : 
	bne	r5 r0 L_else_21383
	fbne	f2 f0 L_else_21385
	addi	r5 r0 1
	jump	L_cont_21386
L_else_21385 : 
	addi	r5 r0 0
L_cont_21386 : 
	bne	r5 r0 L_else_21387
	fbgt	f2 f0 L_else_21389
	addi	r5 r0 0
	jump	L_cont_21390
L_else_21389 : 
	addi	r5 r0 1
L_cont_21390 : 
	bne	r5 r0 L_else_21391
	fldi	f3 r0 28
	jump	L_cont_21392
L_else_21391 : 
	fldi	f3 r0 39
L_cont_21392 : 
	jump	L_cont_21388
L_else_21387 : 
	fldi	f3 r0 27
L_cont_21388 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21384
L_else_21383 : 
	fldi	f2 r0 27
L_cont_21384 : 
	fsti	f2 r6 0
	fldi	f2 r6 1
	fbne	f2 f0 L_else_21393
	addi	r5 r0 1
	jump	L_cont_21394
L_else_21393 : 
	addi	r5 r0 0
L_cont_21394 : 
	bne	r5 r0 L_else_21395
	fbne	f2 f0 L_else_21397
	addi	r5 r0 1
	jump	L_cont_21398
L_else_21397 : 
	addi	r5 r0 0
L_cont_21398 : 
	bne	r5 r0 L_else_21399
	fbgt	f2 f0 L_else_21401
	addi	r5 r0 0
	jump	L_cont_21402
L_else_21401 : 
	addi	r5 r0 1
L_cont_21402 : 
	bne	r5 r0 L_else_21403
	fldi	f3 r0 28
	jump	L_cont_21404
L_else_21403 : 
	fldi	f3 r0 39
L_cont_21404 : 
	jump	L_cont_21400
L_else_21399 : 
	fldi	f3 r0 27
L_cont_21400 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21396
L_else_21395 : 
	fldi	f2 r0 27
L_cont_21396 : 
	fsti	f2 r6 1
	fldi	f2 r6 2
	fbne	f2 f0 L_else_21405
	addi	r5 r0 1
	jump	L_cont_21406
L_else_21405 : 
	addi	r5 r0 0
L_cont_21406 : 
	bne	r5 r0 L_else_21407
	fbne	f2 f0 L_else_21409
	addi	r5 r0 1
	jump	L_cont_21410
L_else_21409 : 
	addi	r5 r0 0
L_cont_21410 : 
	bne	r5 r0 L_else_21411
	fbgt	f2 f0 L_else_21413
	addi	r5 r0 0
	jump	L_cont_21414
L_else_21413 : 
	addi	r5 r0 1
L_cont_21414 : 
	bne	r5 r0 L_else_21415
	fldi	f3 r0 28
	jump	L_cont_21416
L_else_21415 : 
	fldi	f3 r0 39
L_cont_21416 : 
	jump	L_cont_21412
L_else_21411 : 
	fldi	f3 r0 27
L_cont_21412 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21408
L_else_21407 : 
	fldi	f2 r0 27
L_cont_21408 : 
	fsti	f2 r6 2
	jump	L_cont_21380
L_else_21379 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_21417
	addi	r5 r0 1
	ldi	r8 r2 7
	sub	r5 r5 r8
	add	r4 r0 r6
	addi	r2 r2 13
	call	L_vecunit_sgn_1931
	subi	r2 r2 13
	jump	L_cont_21418
L_else_21417 : 
L_cont_21418 : 
L_cont_21380 : 
	ldi	r4 r2 4
	bne	r4 r0 L_else_21419
	jump	L_cont_21420
L_else_21419 : 
	ldi	r4 r2 10
	fldi	f2 r4 0
	addi	r2 r2 13
	call	L_cos_1888
	subi	r2 r2 13
	ldi	r4 r2 10
	fldi	f3 r4 0
	fldi	f4 r0 57
	fldi	f5 r0 56
	fsti	f2 r2 12
	fbgt	f3 f5 L_else_21421
	fldi	f6 r0 55
	fbgt	f6 f3 L_else_21423
	fldi	f4 r0 54
	fldi	f6 r0 53
	fldi	f7 r0 52
	fbgt	f3 f0 L_else_21425
	fldi	f4 r0 38
	fbgt	f4 f3 L_else_21427
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21428
L_else_21427 : 
	fldi	f4 r0 37
	fbgt	f4 f3 L_else_21429
	fadd	f3 f6 f3
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 45
	fmul	f8 f9 f8
	fldi	f9 r0 44
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 39
	fadd	f3 f3 f4
	fsub	f2 f0 f3
	jump	L_cont_21430
L_else_21429 : 
	fadd	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f3 f4 f3
	fsub	f2 f0 f3
L_cont_21430 : 
L_cont_21428 : 
	jump	L_cont_21426
L_else_21425 : 
	fbgt	f3 f4 L_else_21431
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21432
L_else_21431 : 
	fbgt	f3 f7 L_else_21433
	fsub	f3 f3 f6
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 45
	fmul	f8 f9 f8
	fldi	f9 r0 44
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 39
	fadd	f2 f3 f4
	jump	L_cont_21434
L_else_21433 : 
	fsub	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
L_cont_21434 : 
L_cont_21432 : 
L_cont_21426 : 
	jump	L_cont_21424
L_else_21423 : 
	fadd	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 15
	call	L_sin_1886
	subi	r2 r2 15
L_cont_21424 : 
	jump	L_cont_21422
L_else_21421 : 
	fsub	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 15
	call	L_sin_1886
	subi	r2 r2 15
L_cont_21422 : 
	ldi	r4 r2 10
	fldi	f3 r4 1
	fsti	f2 r2 14
	fadd	f2 f0 f3
	addi	r2 r2 17
	call	L_cos_1888
	subi	r2 r2 17
	ldi	r4 r2 10
	fldi	f3 r4 1
	fldi	f4 r0 57
	fldi	f5 r0 56
	fsti	f2 r2 16
	fbgt	f3 f5 L_else_21435
	fldi	f6 r0 55
	fbgt	f6 f3 L_else_21437
	fldi	f4 r0 54
	fldi	f6 r0 53
	fldi	f7 r0 52
	fbgt	f3 f0 L_else_21439
	fldi	f4 r0 38
	fbgt	f4 f3 L_else_21441
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21442
L_else_21441 : 
	fldi	f4 r0 37
	fbgt	f4 f3 L_else_21443
	fadd	f3 f6 f3
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 45
	fmul	f8 f9 f8
	fldi	f9 r0 44
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 39
	fadd	f3 f3 f4
	fsub	f2 f0 f3
	jump	L_cont_21444
L_else_21443 : 
	fadd	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f3 f4 f3
	fsub	f2 f0 f3
L_cont_21444 : 
L_cont_21442 : 
	jump	L_cont_21440
L_else_21439 : 
	fbgt	f3 f4 L_else_21445
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21446
L_else_21445 : 
	fbgt	f3 f7 L_else_21447
	fsub	f3 f3 f6
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 45
	fmul	f8 f9 f8
	fldi	f9 r0 44
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 39
	fadd	f2 f3 f4
	jump	L_cont_21448
L_else_21447 : 
	fsub	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
L_cont_21448 : 
L_cont_21446 : 
L_cont_21440 : 
	jump	L_cont_21438
L_else_21437 : 
	fadd	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 19
	call	L_sin_1886
	subi	r2 r2 19
L_cont_21438 : 
	jump	L_cont_21436
L_else_21435 : 
	fsub	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 19
	call	L_sin_1886
	subi	r2 r2 19
L_cont_21436 : 
	ldi	r4 r2 10
	fldi	f3 r4 2
	fsti	f2 r2 18
	fadd	f2 f0 f3
	addi	r2 r2 21
	call	L_cos_1888
	subi	r2 r2 21
	ldi	r4 r2 10
	fldi	f3 r4 2
	fldi	f4 r0 57
	fldi	f5 r0 56
	fsti	f2 r2 20
	fbgt	f3 f5 L_else_21449
	fldi	f6 r0 55
	fbgt	f6 f3 L_else_21451
	fldi	f4 r0 54
	fldi	f6 r0 53
	fldi	f7 r0 52
	fbgt	f3 f0 L_else_21453
	fldi	f4 r0 38
	fbgt	f4 f3 L_else_21455
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21456
L_else_21455 : 
	fldi	f4 r0 37
	fbgt	f4 f3 L_else_21457
	fadd	f3 f6 f3
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 45
	fmul	f8 f9 f8
	fldi	f9 r0 44
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 39
	fadd	f3 f3 f4
	fsub	f2 f0 f3
	jump	L_cont_21458
L_else_21457 : 
	fadd	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f3 f4 f3
	fsub	f2 f0 f3
L_cont_21458 : 
L_cont_21456 : 
	jump	L_cont_21454
L_else_21453 : 
	fbgt	f3 f4 L_else_21459
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21460
L_else_21459 : 
	fbgt	f3 f7 L_else_21461
	fsub	f3 f3 f6
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 45
	fmul	f8 f9 f8
	fldi	f9 r0 44
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 39
	fadd	f2 f3 f4
	jump	L_cont_21462
L_else_21461 : 
	fsub	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
L_cont_21462 : 
L_cont_21460 : 
L_cont_21454 : 
	jump	L_cont_21452
L_else_21451 : 
	fadd	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 23
	call	L_sin_1886
	subi	r2 r2 23
L_cont_21452 : 
	jump	L_cont_21450
L_else_21449 : 
	fsub	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 23
	call	L_sin_1886
	subi	r2 r2 23
L_cont_21450 : 
	fldi	f3 r2 20
	fldi	f4 r2 16
	fmul	f5 f4 f3
	fldi	f6 r2 18
	fldi	f7 r2 14
	fmul	f8 f7 f6
	fmul	f8 f8 f3
	fldi	f9 r2 12
	fmul	f10 f9 f2
	fsub	f8 f8 f10
	fmul	f10 f9 f6
	fmul	f10 f10 f3
	fmul	f11 f7 f2
	fadd	f10 f10 f11
	fmul	f11 f4 f2
	fmul	f12 f7 f6
	fmul	f12 f12 f2
	fmul	f13 f9 f3
	fadd	f12 f12 f13
	fmul	f13 f9 f6
	fmul	f2 f13 f2
	fmul	f3 f7 f3
	fsub	f2 f2 f3
	fsub	f3 f0 f6
	fmul	f6 f7 f4
	fmul	f4 f9 f4
	ldi	r4 r2 5
	fldi	f7 r4 0
	fldi	f9 r4 1
	fldi	f13 r4 2
	fmul	f14 f5 f5
	fmul	f14 f7 f14
	fmul	f15 f11 f11
	fmul	f15 f9 f15
	fadd	f14 f14 f15
	fmul	f15 f3 f3
	fmul	f15 f13 f15
	fadd	f14 f14 f15
	fsti	f14 r4 0
	fmul	f14 f8 f8
	fmul	f14 f7 f14
	fmul	f15 f12 f12
	fmul	f15 f9 f15
	fadd	f14 f14 f15
	fmul	f15 f6 f6
	fmul	f15 f13 f15
	fadd	f14 f14 f15
	fsti	f14 r4 1
	fmul	f14 f10 f10
	fmul	f14 f7 f14
	fmul	f15 f2 f2
	fmul	f15 f9 f15
	fadd	f14 f14 f15
	fmul	f15 f4 f4
	fmul	f15 f13 f15
	fadd	f14 f14 f15
	fsti	f14 r4 2
	fldi	f14 r0 29
	fmul	f15 f7 f8
	fmul	f15 f15 f10
	fmul	f16 f9 f12
	fmul	f16 f16 f2
	fadd	f15 f15 f16
	fmul	f16 f13 f6
	fmul	f16 f16 f4
	fadd	f15 f15 f16
	fmul	f14 f14 f15
	ldi	r4 r2 10
	fsti	f14 r4 0
	fldi	f14 r0 29
	fmul	f15 f7 f5
	fmul	f10 f15 f10
	fmul	f15 f9 f11
	fmul	f2 f15 f2
	fadd	f2 f10 f2
	fmul	f10 f13 f3
	fmul	f4 f10 f4
	fadd	f2 f2 f4
	fmul	f2 f14 f2
	fsti	f2 r4 1
	fldi	f2 r0 29
	fmul	f4 f7 f5
	fmul	f4 f4 f8
	fmul	f5 f9 f11
	fmul	f5 f5 f12
	fadd	f4 f4 f5
	fmul	f3 f13 f3
	fmul	f3 f3 f6
	fadd	f3 f4 f3
	fmul	f2 f2 f3
	fsti	f2 r4 2
L_cont_21420 : 
	addi	r4 r0 1
L_cont_21372 : 
	bne	r4 r0 L_else_21463
	addi	r4 r0 4144
	ldi	r5 r2 0
	sti	r5 r4 0
	return
L_else_21463 : 
	ldi	r4 r2 0
	addi	r4 r4 1
	addi	r5 r0 60
	bgt	r5 r4 L_else_21465
	return
L_else_21465 : 
	sti	r4 r2 22
	addi	r2 r2 24
	call	min_caml_read_int
	subi	r2 r2 24
	addi	r5 r0 -1
	bne	r4 r5 L_else_21467
	addi	r4 r0 0
	jump	L_cont_21468
L_else_21467 : 
	sti	r4 r2 23
	addi	r2 r2 25
	call	min_caml_read_int
	subi	r2 r2 25
	sti	r4 r2 24
	addi	r2 r2 26
	call	min_caml_read_int
	subi	r2 r2 26
	sti	r4 r2 25
	addi	r2 r2 27
	call	min_caml_read_int
	subi	r2 r2 27
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 26
	add	r4 r0 r5
	addi	r2 r2 28
	call	min_caml_create_float_array
	subi	r2 r2 28
	sti	r4 r2 27
	addi	r2 r2 29
	call	min_caml_read_float
	subi	r2 r2 29
	ldi	r4 r2 27
	fsti	f2 r4 0
	addi	r2 r2 29
	call	min_caml_read_float
	subi	r2 r2 29
	ldi	r4 r2 27
	fsti	f2 r4 1
	addi	r2 r2 29
	call	min_caml_read_float
	subi	r2 r2 29
	ldi	r4 r2 27
	fsti	f2 r4 2
	addi	r5 r0 3
	fldi	f2 r0 27
	add	r4 r0 r5
	addi	r2 r2 29
	call	min_caml_create_float_array
	subi	r2 r2 29
	sti	r4 r2 28
	addi	r2 r2 30
	call	min_caml_read_float
	subi	r2 r2 30
	ldi	r4 r2 28
	fsti	f2 r4 0
	addi	r2 r2 30
	call	min_caml_read_float
	subi	r2 r2 30
	ldi	r4 r2 28
	fsti	f2 r4 1
	addi	r2 r2 30
	call	min_caml_read_float
	subi	r2 r2 30
	ldi	r4 r2 28
	fsti	f2 r4 2
	addi	r2 r2 30
	call	min_caml_read_float
	subi	r2 r2 30
	fbgt	f0 f2 L_else_21469
	addi	r4 r0 0
	jump	L_cont_21470
L_else_21469 : 
	addi	r4 r0 1
L_cont_21470 : 
	addi	r5 r0 2
	fldi	f2 r0 27
	sti	r4 r2 29
	add	r4 r0 r5
	addi	r2 r2 31
	call	min_caml_create_float_array
	subi	r2 r2 31
	sti	r4 r2 30
	addi	r2 r2 32
	call	min_caml_read_float
	subi	r2 r2 32
	ldi	r4 r2 30
	fsti	f2 r4 0
	addi	r2 r2 32
	call	min_caml_read_float
	subi	r2 r2 32
	ldi	r4 r2 30
	fsti	f2 r4 1
	addi	r5 r0 3
	fldi	f2 r0 27
	add	r4 r0 r5
	addi	r2 r2 32
	call	min_caml_create_float_array
	subi	r2 r2 32
	sti	r4 r2 31
	addi	r2 r2 33
	call	min_caml_read_float
	subi	r2 r2 33
	ldi	r4 r2 31
	fsti	f2 r4 0
	addi	r2 r2 33
	call	min_caml_read_float
	subi	r2 r2 33
	ldi	r4 r2 31
	fsti	f2 r4 1
	addi	r2 r2 33
	call	min_caml_read_float
	subi	r2 r2 33
	ldi	r4 r2 31
	fsti	f2 r4 2
	addi	r5 r0 3
	fldi	f2 r0 27
	add	r4 r0 r5
	addi	r2 r2 33
	call	min_caml_create_float_array
	subi	r2 r2 33
	ldi	r5 r2 26
	bne	r5 r0 L_else_21471
	jump	L_cont_21472
L_else_21471 : 
	sti	r4 r2 32
	addi	r2 r2 34
	call	min_caml_read_float
	subi	r2 r2 34
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 32
	fsti	f2 r4 0
	addi	r2 r2 34
	call	min_caml_read_float
	subi	r2 r2 34
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 32
	fsti	f2 r4 1
	addi	r2 r2 34
	call	min_caml_read_float
	subi	r2 r2 34
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 32
	fsti	f2 r4 2
L_cont_21472 : 
	addi	r5 r0 2
	ldi	r6 r2 24
	bne	r6 r5 L_else_21473
	addi	r5 r0 1
	jump	L_cont_21474
L_else_21473 : 
	ldi	r5 r2 29
	add	r5 r0 r5
L_cont_21474 : 
	addi	r7 r0 4
	fldi	f2 r0 27
	sti	r5 r2 33
	sti	r4 r2 32
	add	r4 r0 r7
	addi	r2 r2 35
	call	min_caml_create_float_array
	subi	r2 r2 35
	add	r5 r0 r3
	addi	r3 r3 11
	sti	r4 r5 10
	ldi	r4 r2 32
	sti	r4 r5 9
	ldi	r6 r2 31
	sti	r6 r5 8
	ldi	r6 r2 30
	sti	r6 r5 7
	ldi	r6 r2 33
	sti	r6 r5 6
	ldi	r6 r2 28
	sti	r6 r5 5
	ldi	r6 r2 27
	sti	r6 r5 4
	ldi	r7 r2 26
	sti	r7 r5 3
	ldi	r8 r2 25
	sti	r8 r5 2
	ldi	r8 r2 24
	sti	r8 r5 1
	ldi	r9 r2 23
	sti	r9 r5 0
	add	r5 r0 r5
	addi	r9 r0 5042
	ldi	r10 r2 22
	add	r9 r9 r10
	sti	r5 r9 0
	addi	r5 r0 3
	bne	r8 r5 L_else_21475
	fldi	f2 r6 0
	fbne	f2 f0 L_else_21477
	addi	r5 r0 1
	jump	L_cont_21478
L_else_21477 : 
	addi	r5 r0 0
L_cont_21478 : 
	bne	r5 r0 L_else_21479
	fbne	f2 f0 L_else_21481
	addi	r5 r0 1
	jump	L_cont_21482
L_else_21481 : 
	addi	r5 r0 0
L_cont_21482 : 
	bne	r5 r0 L_else_21483
	fbgt	f2 f0 L_else_21485
	addi	r5 r0 0
	jump	L_cont_21486
L_else_21485 : 
	addi	r5 r0 1
L_cont_21486 : 
	bne	r5 r0 L_else_21487
	fldi	f3 r0 28
	jump	L_cont_21488
L_else_21487 : 
	fldi	f3 r0 39
L_cont_21488 : 
	jump	L_cont_21484
L_else_21483 : 
	fldi	f3 r0 27
L_cont_21484 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21480
L_else_21479 : 
	fldi	f2 r0 27
L_cont_21480 : 
	fsti	f2 r6 0
	fldi	f2 r6 1
	fbne	f2 f0 L_else_21489
	addi	r5 r0 1
	jump	L_cont_21490
L_else_21489 : 
	addi	r5 r0 0
L_cont_21490 : 
	bne	r5 r0 L_else_21491
	fbne	f2 f0 L_else_21493
	addi	r5 r0 1
	jump	L_cont_21494
L_else_21493 : 
	addi	r5 r0 0
L_cont_21494 : 
	bne	r5 r0 L_else_21495
	fbgt	f2 f0 L_else_21497
	addi	r5 r0 0
	jump	L_cont_21498
L_else_21497 : 
	addi	r5 r0 1
L_cont_21498 : 
	bne	r5 r0 L_else_21499
	fldi	f3 r0 28
	jump	L_cont_21500
L_else_21499 : 
	fldi	f3 r0 39
L_cont_21500 : 
	jump	L_cont_21496
L_else_21495 : 
	fldi	f3 r0 27
L_cont_21496 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21492
L_else_21491 : 
	fldi	f2 r0 27
L_cont_21492 : 
	fsti	f2 r6 1
	fldi	f2 r6 2
	fbne	f2 f0 L_else_21501
	addi	r5 r0 1
	jump	L_cont_21502
L_else_21501 : 
	addi	r5 r0 0
L_cont_21502 : 
	bne	r5 r0 L_else_21503
	fbne	f2 f0 L_else_21505
	addi	r5 r0 1
	jump	L_cont_21506
L_else_21505 : 
	addi	r5 r0 0
L_cont_21506 : 
	bne	r5 r0 L_else_21507
	fbgt	f2 f0 L_else_21509
	addi	r5 r0 0
	jump	L_cont_21510
L_else_21509 : 
	addi	r5 r0 1
L_cont_21510 : 
	bne	r5 r0 L_else_21511
	fldi	f3 r0 28
	jump	L_cont_21512
L_else_21511 : 
	fldi	f3 r0 39
L_cont_21512 : 
	jump	L_cont_21508
L_else_21507 : 
	fldi	f3 r0 27
L_cont_21508 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21504
L_else_21503 : 
	fldi	f2 r0 27
L_cont_21504 : 
	fsti	f2 r6 2
	jump	L_cont_21476
L_else_21475 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_21513
	addi	r5 r0 1
	ldi	r8 r2 29
	sub	r5 r5 r8
	fldi	f2 r6 0
	fmul	f2 f2 f2
	fldi	f3 r6 1
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	fldi	f3 r6 2
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	fldi	f3 r0 29
	fldi	f4 r0 39
	fbgt	f2 f4 L_else_21515
	fldi	f4 r0 39
	jump	L_cont_21516
L_else_21515 : 
	fldi	f4 r0 39
	fdiv	f4 f4 f2
L_cont_21516 : 
	fldi	f5 r0 31
	fmul	f5 f5 f4
	fsub	f3 f4 f3
	fbgt	f0 f3 L_else_21517
	fadd	f3 f0 f3
	jump	L_cont_21518
L_else_21517 : 
	fsub	f3 f0 f3
L_cont_21518 : 
	sti	r5 r2 34
	fsti	f2 r2 36
	fbgt	f5 f3 L_else_21520
	fldi	f3 r0 30
	fmul	f5 f2 f4
	fmul	f5 f5 f4
	fsub	f3 f3 f5
	fmul	f3 f4 f3
	fldi	f5 r0 29
	fdiv	f3 f3 f5
	fadd	f1 f0 f4
	fadd	f4 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 39
	call	L_isqrt_1892
	subi	r2 r2 39
	jump	L_cont_21521
L_else_21520 : 
	fadd	f2 f0 f4
L_cont_21521 : 
	fldi	f3 r2 36
	fmul	f2 f3 f2
	fbne	f2 f0 L_else_21522
	addi	r4 r0 1
	jump	L_cont_21523
L_else_21522 : 
	addi	r4 r0 0
L_cont_21523 : 
	bne	r4 r0 L_else_21524
	ldi	r4 r2 34
	bne	r4 r0 L_else_21526
	fldi	f3 r0 39
	fdiv	f2 f3 f2
	jump	L_cont_21527
L_else_21526 : 
	fldi	f3 r0 28
	fdiv	f2 f3 f2
L_cont_21527 : 
	jump	L_cont_21525
L_else_21524 : 
	fldi	f2 r0 39
L_cont_21525 : 
	ldi	r4 r2 27
	fldi	f3 r4 0
	fmul	f3 f3 f2
	fsti	f3 r4 0
	fldi	f3 r4 1
	fmul	f3 f3 f2
	fsti	f3 r4 1
	fldi	f3 r4 2
	fmul	f2 f3 f2
	fsti	f2 r4 2
	jump	L_cont_21514
L_else_21513 : 
L_cont_21514 : 
L_cont_21476 : 
	ldi	r4 r2 26
	bne	r4 r0 L_else_21528
	jump	L_cont_21529
L_else_21528 : 
	ldi	r4 r2 32
	fldi	f2 r4 0
	addi	r2 r2 39
	call	L_cos_1888
	subi	r2 r2 39
	ldi	r4 r2 32
	fldi	f3 r4 0
	fsti	f2 r2 38
	fadd	f2 f0 f3
	addi	r2 r2 41
	call	L_sin_1886
	subi	r2 r2 41
	ldi	r4 r2 32
	fldi	f3 r4 1
	fsti	f2 r2 40
	fadd	f2 f0 f3
	addi	r2 r2 43
	call	L_cos_1888
	subi	r2 r2 43
	ldi	r4 r2 32
	fldi	f3 r4 1
	fsti	f2 r2 42
	fadd	f2 f0 f3
	addi	r2 r2 45
	call	L_sin_1886
	subi	r2 r2 45
	ldi	r4 r2 32
	fldi	f3 r4 2
	fsti	f2 r2 44
	fadd	f2 f0 f3
	addi	r2 r2 47
	call	L_cos_1888
	subi	r2 r2 47
	ldi	r4 r2 32
	fldi	f3 r4 2
	fsti	f2 r2 46
	fadd	f2 f0 f3
	addi	r2 r2 49
	call	L_sin_1886
	subi	r2 r2 49
	fldi	f3 r2 46
	fldi	f4 r2 42
	fmul	f5 f4 f3
	fldi	f6 r2 44
	fldi	f7 r2 40
	fmul	f8 f7 f6
	fmul	f8 f8 f3
	fldi	f9 r2 38
	fmul	f10 f9 f2
	fsub	f8 f8 f10
	fmul	f10 f9 f6
	fmul	f10 f10 f3
	fmul	f11 f7 f2
	fadd	f10 f10 f11
	fmul	f11 f4 f2
	fmul	f12 f7 f6
	fmul	f12 f12 f2
	fmul	f13 f9 f3
	fadd	f12 f12 f13
	fmul	f13 f9 f6
	fmul	f2 f13 f2
	fmul	f3 f7 f3
	fsub	f2 f2 f3
	fsub	f3 f0 f6
	fmul	f6 f7 f4
	fmul	f4 f9 f4
	ldi	r4 r2 27
	fldi	f7 r4 0
	fldi	f9 r4 1
	fldi	f13 r4 2
	fmul	f14 f5 f5
	fmul	f14 f7 f14
	fmul	f15 f11 f11
	fmul	f15 f9 f15
	fadd	f14 f14 f15
	fmul	f15 f3 f3
	fmul	f15 f13 f15
	fadd	f14 f14 f15
	fsti	f14 r4 0
	fmul	f14 f8 f8
	fmul	f14 f7 f14
	fmul	f15 f12 f12
	fmul	f15 f9 f15
	fadd	f14 f14 f15
	fmul	f15 f6 f6
	fmul	f15 f13 f15
	fadd	f14 f14 f15
	fsti	f14 r4 1
	fmul	f14 f10 f10
	fmul	f14 f7 f14
	fmul	f15 f2 f2
	fmul	f15 f9 f15
	fadd	f14 f14 f15
	fmul	f15 f4 f4
	fmul	f15 f13 f15
	fadd	f14 f14 f15
	fsti	f14 r4 2
	fldi	f14 r0 29
	fmul	f15 f7 f8
	fmul	f15 f15 f10
	fmul	f16 f9 f12
	fmul	f16 f16 f2
	fadd	f15 f15 f16
	fmul	f16 f13 f6
	fmul	f16 f16 f4
	fadd	f15 f15 f16
	fmul	f14 f14 f15
	ldi	r4 r2 32
	fsti	f14 r4 0
	fldi	f14 r0 29
	fmul	f15 f7 f5
	fmul	f10 f15 f10
	fmul	f15 f9 f11
	fmul	f2 f15 f2
	fadd	f2 f10 f2
	fmul	f10 f13 f3
	fmul	f4 f10 f4
	fadd	f2 f2 f4
	fmul	f2 f14 f2
	fsti	f2 r4 1
	fldi	f2 r0 29
	fmul	f4 f7 f5
	fmul	f4 f4 f8
	fmul	f5 f9 f11
	fmul	f5 f5 f12
	fadd	f4 f4 f5
	fmul	f3 f13 f3
	fmul	f3 f3 f6
	fadd	f3 f4 f3
	fmul	f2 f2 f3
	fsti	f2 r4 2
L_cont_21529 : 
	addi	r4 r0 1
L_cont_21468 : 
	bne	r4 r0 L_else_21530
	addi	r4 r0 4144
	ldi	r5 r2 22
	sti	r5 r4 0
	return
L_else_21530 : 
	ldi	r4 r2 22
	addi	r4 r4 1
	jump	L_read_object_2041
L_read_net_item_2045 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_21532
	ldi	r4 r2 0
	addi	r4 r4 1
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_21532 : 
	ldi	r5 r2 0
	addi	r6 r5 1
	sti	r4 r2 1
	sti	r6 r2 2
	addi	r2 r2 4
	call	min_caml_read_int
	subi	r2 r2 4
	addi	r5 r0 -1
	bne	r4 r5 L_else_21533
	ldi	r4 r2 2
	addi	r4 r4 1
	addi	r5 r0 -1
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	jump	L_cont_21534
L_else_21533 : 
	ldi	r5 r2 2
	addi	r6 r5 1
	sti	r4 r2 3
	sti	r6 r2 4
	addi	r2 r2 6
	call	min_caml_read_int
	subi	r2 r2 6
	addi	r5 r0 -1
	bne	r4 r5 L_else_21535
	ldi	r4 r2 4
	addi	r4 r4 1
	addi	r5 r0 -1
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	jump	L_cont_21536
L_else_21535 : 
	ldi	r5 r2 4
	addi	r6 r5 1
	sti	r4 r2 5
	sti	r6 r2 6
	addi	r2 r2 8
	call	min_caml_read_int
	subi	r2 r2 8
	addi	r5 r0 -1
	bne	r4 r5 L_else_21537
	ldi	r4 r2 6
	addi	r4 r4 1
	addi	r5 r0 -1
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	jump	L_cont_21538
L_else_21537 : 
	ldi	r5 r2 6
	addi	r6 r5 1
	sti	r4 r2 7
	add	r4 r0 r6
	addi	r2 r2 9
	call	L_read_net_item_2045
	subi	r2 r2 9
	ldi	r5 r2 6
	add	r5 r4 r5
	ldi	r6 r2 7
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21538 : 
	ldi	r5 r2 4
	add	r5 r4 r5
	ldi	r6 r2 5
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21536 : 
	ldi	r5 r2 2
	add	r5 r4 r5
	ldi	r6 r2 3
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21534 : 
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 1
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_or_network_2047 : 
	addi	r5 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	addi	r2 r2 3
	call	min_caml_read_int
	subi	r2 r2 3
	addi	r5 r0 -1
	bne	r4 r5 L_else_21539
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 3
	call	min_caml_create_array
	subi	r2 r2 3
	add	r5 r0 r4
	jump	L_cont_21540
L_else_21539 : 
	addi	r5 r0 1
	sti	r4 r2 2
	sti	r5 r2 3
	addi	r2 r2 5
	call	min_caml_read_int
	subi	r2 r2 5
	addi	r5 r0 -1
	bne	r4 r5 L_else_21541
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	jump	L_cont_21542
L_else_21541 : 
	addi	r5 r0 2
	sti	r4 r2 4
	sti	r5 r2 5
	addi	r2 r2 7
	call	min_caml_read_int
	subi	r2 r2 7
	addi	r5 r0 -1
	bne	r4 r5 L_else_21543
	addi	r4 r0 3
	addi	r5 r0 -1
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	jump	L_cont_21544
L_else_21543 : 
	addi	r5 r0 3
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	L_read_net_item_2045
	subi	r2 r2 8
	ldi	r5 r2 5
	add	r5 r4 r5
	ldi	r6 r2 6
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21544 : 
	ldi	r5 r2 3
	add	r5 r4 r5
	ldi	r6 r2 4
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21542 : 
	ldi	r5 r2 1
	add	r5 r4 r5
	ldi	r6 r2 2
	sti	r6 r5 0
	add	r5 r0 r4
L_cont_21540 : 
	ldi	r4 r5 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21545
	ldi	r4 r2 0
	addi	r4 r4 1
	jump	min_caml_create_array
L_else_21545 : 
	ldi	r4 r2 0
	addi	r6 r4 1
	addi	r7 r0 0
	sti	r5 r2 7
	sti	r6 r2 8
	sti	r7 r2 9
	addi	r2 r2 11
	call	min_caml_read_int
	subi	r2 r2 11
	addi	r5 r0 -1
	bne	r4 r5 L_else_21546
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 11
	call	min_caml_create_array
	subi	r2 r2 11
	add	r5 r0 r4
	jump	L_cont_21547
L_else_21546 : 
	addi	r5 r0 1
	sti	r4 r2 10
	sti	r5 r2 11
	addi	r2 r2 13
	call	min_caml_read_int
	subi	r2 r2 13
	addi	r5 r0 -1
	bne	r4 r5 L_else_21548
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 13
	call	min_caml_create_array
	subi	r2 r2 13
	jump	L_cont_21549
L_else_21548 : 
	addi	r5 r0 2
	sti	r4 r2 12
	add	r4 r0 r5
	addi	r2 r2 14
	call	L_read_net_item_2045
	subi	r2 r2 14
	ldi	r5 r2 11
	add	r5 r4 r5
	ldi	r6 r2 12
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21549 : 
	ldi	r5 r2 9
	add	r5 r4 r5
	ldi	r6 r2 10
	sti	r6 r5 0
	add	r5 r0 r4
L_cont_21547 : 
	ldi	r4 r5 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21550
	ldi	r4 r2 8
	addi	r4 r4 1
	addi	r2 r2 14
	call	min_caml_create_array
	subi	r2 r2 14
	jump	L_cont_21551
L_else_21550 : 
	ldi	r4 r2 8
	addi	r6 r4 1
	sti	r5 r2 13
	add	r4 r0 r6
	addi	r2 r2 15
	call	L_read_or_network_2047
	subi	r2 r2 15
	ldi	r5 r2 8
	add	r5 r4 r5
	ldi	r6 r2 13
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21551 : 
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 7
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_and_network_2049 : 
	addi	r5 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	addi	r2 r2 3
	call	min_caml_read_int
	subi	r2 r2 3
	addi	r5 r0 -1
	bne	r4 r5 L_else_21552
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 3
	call	min_caml_create_array
	subi	r2 r2 3
	jump	L_cont_21553
L_else_21552 : 
	addi	r5 r0 1
	sti	r4 r2 2
	sti	r5 r2 3
	addi	r2 r2 5
	call	min_caml_read_int
	subi	r2 r2 5
	addi	r5 r0 -1
	bne	r4 r5 L_else_21554
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	jump	L_cont_21555
L_else_21554 : 
	addi	r5 r0 2
	sti	r4 r2 4
	sti	r5 r2 5
	addi	r2 r2 7
	call	min_caml_read_int
	subi	r2 r2 7
	addi	r5 r0 -1
	bne	r4 r5 L_else_21556
	addi	r4 r0 3
	addi	r5 r0 -1
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	jump	L_cont_21557
L_else_21556 : 
	addi	r5 r0 3
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	L_read_net_item_2045
	subi	r2 r2 8
	ldi	r5 r2 5
	add	r5 r4 r5
	ldi	r6 r2 6
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21557 : 
	ldi	r5 r2 3
	add	r5 r4 r5
	ldi	r6 r2 4
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21555 : 
	ldi	r5 r2 1
	add	r5 r4 r5
	ldi	r6 r2 2
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21553 : 
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_21558
	return
L_else_21558 : 
	addi	r5 r0 4155
	ldi	r6 r2 0
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r6 1
	addi	r5 r0 0
	sti	r4 r2 7
	sti	r5 r2 8
	addi	r2 r2 10
	call	min_caml_read_int
	subi	r2 r2 10
	addi	r5 r0 -1
	bne	r4 r5 L_else_21560
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 10
	call	min_caml_create_array
	subi	r2 r2 10
	jump	L_cont_21561
L_else_21560 : 
	addi	r5 r0 1
	sti	r4 r2 9
	sti	r5 r2 10
	addi	r2 r2 12
	call	min_caml_read_int
	subi	r2 r2 12
	addi	r5 r0 -1
	bne	r4 r5 L_else_21562
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 12
	call	min_caml_create_array
	subi	r2 r2 12
	jump	L_cont_21563
L_else_21562 : 
	addi	r5 r0 2
	sti	r4 r2 11
	add	r4 r0 r5
	addi	r2 r2 13
	call	L_read_net_item_2045
	subi	r2 r2 13
	ldi	r5 r2 10
	add	r5 r4 r5
	ldi	r6 r2 11
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21563 : 
	ldi	r5 r2 8
	add	r5 r4 r5
	ldi	r6 r2 9
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21561 : 
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_21564
	return
L_else_21564 : 
	addi	r5 r0 4155
	ldi	r6 r2 7
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r6 1
	jump	L_read_and_network_2049
L_solver_rect_2062 : 
	addi	r6 r0 0
	addi	r7 r0 1
	addi	r8 r0 2
	add	r9 r5 r6
	fldi	f5 r9 0
	fbne	f5 f0 L_else_21566
	addi	r9 r0 1
	jump	L_cont_21567
L_else_21566 : 
	addi	r9 r0 0
L_cont_21567 : 
	bne	r9 r0 L_else_21568
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fbgt	f0 f5 L_else_21570
	addi	r11 r0 0
	jump	L_cont_21571
L_else_21570 : 
	addi	r11 r0 1
L_cont_21571 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	bne	r10 r0 L_else_21572
	fsub	f5 f0 f5
	jump	L_cont_21573
L_else_21572 : 
	fadd	f5 f0 f5
L_cont_21573 : 
	fsub	f5 f5 f2
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fbgt	f0 f6 L_else_21574
	fadd	f6 f0 f6
	jump	L_cont_21575
L_else_21574 : 
	fsub	f6 f0 f6
L_cont_21575 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_21576
	addi	r6 r0 0
	jump	L_cont_21577
L_else_21576 : 
	addi	r6 r0 1
L_cont_21577 : 
	bne	r6 r0 L_else_21578
	addi	r6 r0 0
	jump	L_cont_21579
L_else_21578 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_21580
	fadd	f6 f0 f6
	jump	L_cont_21581
L_else_21580 : 
	fsub	f6 f0 f6
L_cont_21581 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_21582
	addi	r6 r0 0
	jump	L_cont_21583
L_else_21582 : 
	addi	r6 r0 1
L_cont_21583 : 
	bne	r6 r0 L_else_21584
	addi	r6 r0 0
	jump	L_cont_21585
L_else_21584 : 
	addi	r6 r0 4145
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_21585 : 
L_cont_21579 : 
	jump	L_cont_21569
L_else_21568 : 
	addi	r6 r0 0
L_cont_21569 : 
	bne	r6 r0 L_else_21586
	addi	r6 r0 1
	addi	r7 r0 2
	addi	r8 r0 0
	add	r9 r5 r6
	fldi	f5 r9 0
	fbne	f5 f0 L_else_21587
	addi	r9 r0 1
	jump	L_cont_21588
L_else_21587 : 
	addi	r9 r0 0
L_cont_21588 : 
	bne	r9 r0 L_else_21589
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fbgt	f0 f5 L_else_21591
	addi	r11 r0 0
	jump	L_cont_21592
L_else_21591 : 
	addi	r11 r0 1
L_cont_21592 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	bne	r10 r0 L_else_21593
	fsub	f5 f0 f5
	jump	L_cont_21594
L_else_21593 : 
	fadd	f5 f0 f5
L_cont_21594 : 
	fsub	f5 f5 f3
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_21595
	fadd	f6 f0 f6
	jump	L_cont_21596
L_else_21595 : 
	fsub	f6 f0 f6
L_cont_21596 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_21597
	addi	r6 r0 0
	jump	L_cont_21598
L_else_21597 : 
	addi	r6 r0 1
L_cont_21598 : 
	bne	r6 r0 L_else_21599
	addi	r6 r0 0
	jump	L_cont_21600
L_else_21599 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fbgt	f0 f6 L_else_21601
	fadd	f6 f0 f6
	jump	L_cont_21602
L_else_21601 : 
	fsub	f6 f0 f6
L_cont_21602 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_21603
	addi	r6 r0 0
	jump	L_cont_21604
L_else_21603 : 
	addi	r6 r0 1
L_cont_21604 : 
	bne	r6 r0 L_else_21605
	addi	r6 r0 0
	jump	L_cont_21606
L_else_21605 : 
	addi	r6 r0 4145
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_21606 : 
L_cont_21600 : 
	jump	L_cont_21590
L_else_21589 : 
	addi	r6 r0 0
L_cont_21590 : 
	bne	r6 r0 L_else_21607
	addi	r6 r0 2
	addi	r7 r0 0
	addi	r8 r0 1
	add	r9 r5 r6
	fldi	f5 r9 0
	fbne	f5 f0 L_else_21608
	addi	r9 r0 1
	jump	L_cont_21609
L_else_21608 : 
	addi	r9 r0 0
L_cont_21609 : 
	bne	r9 r0 L_else_21610
	ldi	r9 r4 4
	ldi	r4 r4 6
	add	r10 r5 r6
	fldi	f5 r10 0
	fbgt	f0 f5 L_else_21612
	addi	r10 r0 0
	jump	L_cont_21613
L_else_21612 : 
	addi	r10 r0 1
L_cont_21613 : 
	xor	r4 r4 r10
	add	r10 r9 r6
	fldi	f5 r10 0
	bne	r4 r0 L_else_21614
	fsub	f5 f0 f5
	jump	L_cont_21615
L_else_21614 : 
	fadd	f5 f0 f5
L_cont_21615 : 
	fsub	f4 f5 f4
	add	r4 r5 r6
	fldi	f5 r4 0
	fdiv	f4 f4 f5
	add	r4 r5 r7
	fldi	f5 r4 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fbgt	f0 f2 L_else_21616
	fadd	f2 f0 f2
	jump	L_cont_21617
L_else_21616 : 
	fsub	f2 f0 f2
L_cont_21617 : 
	add	r4 r9 r7
	fldi	f5 r4 0
	fbgt	f5 f2 L_else_21618
	addi	r4 r0 0
	jump	L_cont_21619
L_else_21618 : 
	addi	r4 r0 1
L_cont_21619 : 
	bne	r4 r0 L_else_21620
	addi	r4 r0 0
	jump	L_cont_21621
L_else_21620 : 
	add	r4 r5 r8
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_21622
	fadd	f2 f0 f2
	jump	L_cont_21623
L_else_21622 : 
	fsub	f2 f0 f2
L_cont_21623 : 
	add	r4 r9 r8
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_21624
	addi	r4 r0 0
	jump	L_cont_21625
L_else_21624 : 
	addi	r4 r0 1
L_cont_21625 : 
	bne	r4 r0 L_else_21626
	addi	r4 r0 0
	jump	L_cont_21627
L_else_21626 : 
	addi	r4 r0 4145
	fsti	f4 r4 0
	addi	r4 r0 1
L_cont_21627 : 
L_cont_21621 : 
	jump	L_cont_21611
L_else_21610 : 
	addi	r4 r0 0
L_cont_21611 : 
	bne	r4 r0 L_else_21628
	addi	r4 r0 0
	return
L_else_21628 : 
	addi	r4 r0 3
	return
L_else_21607 : 
	addi	r4 r0 2
	return
L_else_21586 : 
	addi	r4 r0 1
	return
L_solver_surface_2068 : 
	ldi	r4 r4 4
	fldi	f5 r5 0
	fldi	f6 r4 0
	fmul	f5 f5 f6
	fldi	f6 r5 1
	fldi	f7 r4 1
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fldi	f6 r5 2
	fldi	f7 r4 2
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fbgt	f5 f0 L_else_21629
	addi	r5 r0 0
	jump	L_cont_21630
L_else_21629 : 
	addi	r5 r0 1
L_cont_21630 : 
	bne	r5 r0 L_else_21631
	addi	r4 r0 0
	return
L_else_21631 : 
	addi	r5 r0 4145
	fldi	f6 r4 0
	fmul	f2 f6 f2
	fldi	f6 r4 1
	fmul	f3 f6 f3
	fadd	f2 f2 f3
	fldi	f3 r4 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fdiv	f2 f2 f5
	fsti	f2 r5 0
	addi	r4 r0 1
	return
L_quadratic_2074 : 
	fmul	f5 f2 f2
	ldi	r5 r4 4
	fldi	f6 r5 0
	fmul	f5 f5 f6
	fmul	f6 f3 f3
	ldi	r5 r4 4
	fldi	f7 r5 1
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fmul	f6 f4 f4
	ldi	r5 r4 4
	fldi	f7 r5 2
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	ldi	r5 r4 3
	bne	r5 r0 L_else_21632
	fadd	f2 f0 f5
	return
L_else_21632 : 
	fmul	f6 f3 f4
	ldi	r5 r4 9
	fldi	f7 r5 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fmul	f4 f4 f2
	ldi	r5 r4 9
	fldi	f6 r5 1
	fmul	f4 f4 f6
	fadd	f4 f5 f4
	fmul	f2 f2 f3
	ldi	r4 r4 9
	fldi	f3 r4 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	return
L_solver_second_2087 : 
	fldi	f5 r5 0
	fldi	f6 r5 1
	fldi	f7 r5 2
	fmul	f8 f5 f5
	ldi	r6 r4 4
	fldi	f9 r6 0
	fmul	f8 f8 f9
	fmul	f9 f6 f6
	ldi	r6 r4 4
	fldi	f10 r6 1
	fmul	f9 f9 f10
	fadd	f8 f8 f9
	fmul	f9 f7 f7
	ldi	r6 r4 4
	fldi	f10 r6 2
	fmul	f9 f9 f10
	fadd	f8 f8 f9
	ldi	r6 r4 3
	bne	r6 r0 L_else_21633
	fadd	f5 f0 f8
	jump	L_cont_21634
L_else_21633 : 
	fmul	f9 f6 f7
	ldi	r6 r4 9
	fldi	f10 r6 0
	fmul	f9 f9 f10
	fadd	f8 f8 f9
	fmul	f7 f7 f5
	ldi	r6 r4 9
	fldi	f9 r6 1
	fmul	f7 f7 f9
	fadd	f7 f8 f7
	fmul	f5 f5 f6
	ldi	r6 r4 9
	fldi	f6 r6 2
	fmul	f5 f5 f6
	fadd	f5 f7 f5
L_cont_21634 : 
	fbne	f5 f0 L_else_21635
	addi	r6 r0 1
	jump	L_cont_21636
L_else_21635 : 
	addi	r6 r0 0
L_cont_21636 : 
	bne	r6 r0 L_else_21637
	fldi	f6 r5 0
	fldi	f7 r5 1
	fldi	f8 r5 2
	fmul	f9 f6 f2
	ldi	r5 r4 4
	fldi	f10 r5 0
	fmul	f9 f9 f10
	fmul	f10 f7 f3
	ldi	r5 r4 4
	fldi	f11 r5 1
	fmul	f10 f10 f11
	fadd	f9 f9 f10
	fmul	f10 f8 f4
	ldi	r5 r4 4
	fldi	f11 r5 2
	fmul	f10 f10 f11
	fadd	f9 f9 f10
	ldi	r5 r4 3
	bne	r5 r0 L_else_21638
	fadd	f6 f0 f9
	jump	L_cont_21639
L_else_21638 : 
	fmul	f10 f8 f3
	fmul	f11 f7 f4
	fadd	f10 f10 f11
	ldi	r5 r4 9
	fldi	f11 r5 0
	fmul	f10 f10 f11
	fmul	f11 f6 f4
	fmul	f8 f8 f2
	fadd	f8 f11 f8
	ldi	r5 r4 9
	fldi	f11 r5 1
	fmul	f8 f8 f11
	fadd	f8 f10 f8
	fmul	f6 f6 f3
	fmul	f7 f7 f2
	fadd	f6 f6 f7
	ldi	r5 r4 9
	fldi	f7 r5 2
	fmul	f6 f6 f7
	fadd	f6 f8 f6
	fldi	f7 r0 29
	fdiv	f6 f6 f7
	fadd	f6 f9 f6
L_cont_21639 : 
	fmul	f7 f2 f2
	ldi	r5 r4 4
	fldi	f8 r5 0
	fmul	f7 f7 f8
	fmul	f8 f3 f3
	ldi	r5 r4 4
	fldi	f9 r5 1
	fmul	f8 f8 f9
	fadd	f7 f7 f8
	fmul	f8 f4 f4
	ldi	r5 r4 4
	fldi	f9 r5 2
	fmul	f8 f8 f9
	fadd	f7 f7 f8
	ldi	r5 r4 3
	bne	r5 r0 L_else_21640
	fadd	f2 f0 f7
	jump	L_cont_21641
L_else_21640 : 
	fmul	f8 f3 f4
	ldi	r5 r4 9
	fldi	f9 r5 0
	fmul	f8 f8 f9
	fadd	f7 f7 f8
	fmul	f4 f4 f2
	ldi	r5 r4 9
	fldi	f8 r5 1
	fmul	f4 f4 f8
	fadd	f4 f7 f4
	fmul	f2 f2 f3
	ldi	r5 r4 9
	fldi	f3 r5 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
L_cont_21641 : 
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_21642
	fldi	f3 r0 39
	fsub	f2 f2 f3
	jump	L_cont_21643
L_else_21642 : 
	fadd	f2 f0 f2
L_cont_21643 : 
	fmul	f3 f6 f6
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_21644
	addi	r5 r0 0
	jump	L_cont_21645
L_else_21644 : 
	addi	r5 r0 1
L_cont_21645 : 
	bne	r5 r0 L_else_21646
	addi	r4 r0 0
	return
L_else_21646 : 
	fldi	f3 r0 29
	fldi	f4 r0 39
	fbgt	f2 f4 L_else_21647
	fldi	f4 r0 39
	jump	L_cont_21648
L_else_21647 : 
	fldi	f4 r0 39
	fdiv	f4 f4 f2
L_cont_21648 : 
	fsti	f5 r2 0
	fsti	f6 r2 2
	sti	r4 r2 4
	fsti	f2 r2 6
	addi	r2 r2 9
	call	L_isqrt_1892
	subi	r2 r2 9
	fldi	f3 r2 6
	fmul	f2 f3 f2
	ldi	r4 r2 4
	ldi	r4 r4 6
	bne	r4 r0 L_else_21650
	fsub	f2 f0 f2
	jump	L_cont_21651
L_else_21650 : 
	fadd	f2 f0 f2
L_cont_21651 : 
	addi	r4 r0 4145
	fldi	f3 r2 2
	fsub	f2 f2 f3
	fldi	f3 r2 0
	fdiv	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_21637 : 
	addi	r4 r0 0
	return
L_solver_rect_fast_2097 : 
	fldi	f5 r6 0
	fsub	f5 f5 f2
	fldi	f6 r6 1
	fmul	f5 f5 f6
	fldi	f6 r5 1
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fbgt	f0 f6 L_else_21652
	fadd	f6 f0 f6
	jump	L_cont_21653
L_else_21652 : 
	fsub	f6 f0 f6
L_cont_21653 : 
	ldi	r7 r4 4
	fldi	f7 r7 1
	fbgt	f7 f6 L_else_21654
	addi	r7 r0 0
	jump	L_cont_21655
L_else_21654 : 
	addi	r7 r0 1
L_cont_21655 : 
	bne	r7 r0 L_else_21656
	addi	r7 r0 0
	jump	L_cont_21657
L_else_21656 : 
	fldi	f6 r5 2
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_21658
	fadd	f6 f0 f6
	jump	L_cont_21659
L_else_21658 : 
	fsub	f6 f0 f6
L_cont_21659 : 
	ldi	r7 r4 4
	fldi	f7 r7 2
	fbgt	f7 f6 L_else_21660
	addi	r7 r0 0
	jump	L_cont_21661
L_else_21660 : 
	addi	r7 r0 1
L_cont_21661 : 
	bne	r7 r0 L_else_21662
	addi	r7 r0 0
	jump	L_cont_21663
L_else_21662 : 
	addi	r7 r0 1
	fldi	f6 r6 1
	fbne	f6 f0 L_else_21664
	addi	r8 r0 1
	jump	L_cont_21665
L_else_21664 : 
	addi	r8 r0 0
L_cont_21665 : 
	sub	r7 r7 r8
L_cont_21663 : 
L_cont_21657 : 
	bne	r7 r0 L_else_21666
	fldi	f5 r6 2
	fsub	f5 f5 f3
	fldi	f6 r6 3
	fmul	f5 f5 f6
	fldi	f6 r5 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fbgt	f0 f6 L_else_21667
	fadd	f6 f0 f6
	jump	L_cont_21668
L_else_21667 : 
	fsub	f6 f0 f6
L_cont_21668 : 
	ldi	r7 r4 4
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_21669
	addi	r7 r0 0
	jump	L_cont_21670
L_else_21669 : 
	addi	r7 r0 1
L_cont_21670 : 
	bne	r7 r0 L_else_21671
	addi	r7 r0 0
	jump	L_cont_21672
L_else_21671 : 
	fldi	f6 r5 2
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_21673
	fadd	f6 f0 f6
	jump	L_cont_21674
L_else_21673 : 
	fsub	f6 f0 f6
L_cont_21674 : 
	ldi	r7 r4 4
	fldi	f7 r7 2
	fbgt	f7 f6 L_else_21675
	addi	r7 r0 0
	jump	L_cont_21676
L_else_21675 : 
	addi	r7 r0 1
L_cont_21676 : 
	bne	r7 r0 L_else_21677
	addi	r7 r0 0
	jump	L_cont_21678
L_else_21677 : 
	addi	r7 r0 1
	fldi	f6 r6 3
	fbne	f6 f0 L_else_21679
	addi	r8 r0 1
	jump	L_cont_21680
L_else_21679 : 
	addi	r8 r0 0
L_cont_21680 : 
	sub	r7 r7 r8
L_cont_21678 : 
L_cont_21672 : 
	bne	r7 r0 L_else_21681
	fldi	f5 r6 4
	fsub	f4 f5 f4
	fldi	f5 r6 5
	fmul	f4 f4 f5
	fldi	f5 r5 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fbgt	f0 f2 L_else_21682
	fadd	f2 f0 f2
	jump	L_cont_21683
L_else_21682 : 
	fsub	f2 f0 f2
L_cont_21683 : 
	ldi	r7 r4 4
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_21684
	addi	r7 r0 0
	jump	L_cont_21685
L_else_21684 : 
	addi	r7 r0 1
L_cont_21685 : 
	bne	r7 r0 L_else_21686
	addi	r4 r0 0
	jump	L_cont_21687
L_else_21686 : 
	fldi	f2 r5 1
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_21688
	fadd	f2 f0 f2
	jump	L_cont_21689
L_else_21688 : 
	fsub	f2 f0 f2
L_cont_21689 : 
	ldi	r4 r4 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_21690
	addi	r4 r0 0
	jump	L_cont_21691
L_else_21690 : 
	addi	r4 r0 1
L_cont_21691 : 
	bne	r4 r0 L_else_21692
	addi	r4 r0 0
	jump	L_cont_21693
L_else_21692 : 
	addi	r4 r0 1
	fldi	f2 r6 5
	fbne	f2 f0 L_else_21694
	addi	r5 r0 1
	jump	L_cont_21695
L_else_21694 : 
	addi	r5 r0 0
L_cont_21695 : 
	sub	r4 r4 r5
L_cont_21693 : 
L_cont_21687 : 
	bne	r4 r0 L_else_21696
	addi	r4 r0 0
	return
L_else_21696 : 
	addi	r4 r0 4145
	fsti	f4 r4 0
	addi	r4 r0 3
	return
L_else_21681 : 
	addi	r4 r0 4145
	fsti	f5 r4 0
	addi	r4 r0 2
	return
L_else_21666 : 
	addi	r4 r0 4145
	fsti	f5 r4 0
	addi	r4 r0 1
	return
L_solver_second_fast_2110 : 
	fldi	f5 r5 0
	fbne	f5 f0 L_else_21697
	addi	r6 r0 1
	jump	L_cont_21698
L_else_21697 : 
	addi	r6 r0 0
L_cont_21698 : 
	bne	r6 r0 L_else_21699
	fldi	f6 r5 1
	fmul	f6 f6 f2
	fldi	f7 r5 2
	fmul	f7 f7 f3
	fadd	f6 f6 f7
	fldi	f7 r5 3
	fmul	f7 f7 f4
	fadd	f6 f6 f7
	fmul	f7 f2 f2
	ldi	r6 r4 4
	fldi	f8 r6 0
	fmul	f7 f7 f8
	fmul	f8 f3 f3
	ldi	r6 r4 4
	fldi	f9 r6 1
	fmul	f8 f8 f9
	fadd	f7 f7 f8
	fmul	f8 f4 f4
	ldi	r6 r4 4
	fldi	f9 r6 2
	fmul	f8 f8 f9
	fadd	f7 f7 f8
	ldi	r6 r4 3
	bne	r6 r0 L_else_21700
	fadd	f2 f0 f7
	jump	L_cont_21701
L_else_21700 : 
	fmul	f8 f3 f4
	ldi	r6 r4 9
	fldi	f9 r6 0
	fmul	f8 f8 f9
	fadd	f7 f7 f8
	fmul	f4 f4 f2
	ldi	r6 r4 9
	fldi	f8 r6 1
	fmul	f4 f4 f8
	fadd	f4 f7 f4
	fmul	f2 f2 f3
	ldi	r6 r4 9
	fldi	f3 r6 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
L_cont_21701 : 
	ldi	r6 r4 1
	addi	r7 r0 3
	bne	r6 r7 L_else_21702
	fldi	f3 r0 39
	fsub	f2 f2 f3
	jump	L_cont_21703
L_else_21702 : 
	fadd	f2 f0 f2
L_cont_21703 : 
	fmul	f3 f6 f6
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_21704
	addi	r6 r0 0
	jump	L_cont_21705
L_else_21704 : 
	addi	r6 r0 1
L_cont_21705 : 
	bne	r6 r0 L_else_21706
	addi	r4 r0 0
	return
L_else_21706 : 
	ldi	r4 r4 6
	bne	r4 r0 L_else_21707
	addi	r4 r0 4145
	fldi	f3 r0 29
	fldi	f4 r0 39
	fbgt	f2 f4 L_else_21709
	fldi	f4 r0 39
	jump	L_cont_21710
L_else_21709 : 
	fldi	f4 r0 39
	fdiv	f4 f4 f2
L_cont_21710 : 
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f6 r2 2
	fsti	f2 r2 4
	addi	r2 r2 7
	call	L_isqrt_1892
	subi	r2 r2 7
	fldi	f3 r2 4
	fmul	f2 f3 f2
	fldi	f3 r2 2
	fsub	f2 f3 f2
	ldi	r4 r2 1
	fldi	f3 r4 4
	fmul	f2 f2 f3
	ldi	r4 r2 0
	fsti	f2 r4 0
	jump	L_cont_21708
L_else_21707 : 
	addi	r4 r0 4145
	fldi	f3 r0 29
	fldi	f4 r0 39
	fbgt	f2 f4 L_else_21711
	fldi	f4 r0 39
	jump	L_cont_21712
L_else_21711 : 
	fldi	f4 r0 39
	fdiv	f4 f4 f2
L_cont_21712 : 
	sti	r4 r2 6
	sti	r5 r2 1
	fsti	f6 r2 2
	fsti	f2 r2 4
	addi	r2 r2 8
	call	L_isqrt_1892
	subi	r2 r2 8
	fldi	f3 r2 4
	fmul	f2 f3 f2
	fldi	f3 r2 2
	fadd	f2 f3 f2
	ldi	r4 r2 1
	fldi	f3 r4 4
	fmul	f2 f2 f3
	ldi	r4 r2 6
	fsti	f2 r4 0
L_cont_21708 : 
	addi	r4 r0 1
	return
L_else_21699 : 
	addi	r4 r0 0
	return
L_solver_second_fast2_2127 : 
	fldi	f5 r5 0
	fbne	f5 f0 L_else_21713
	addi	r7 r0 1
	jump	L_cont_21714
L_else_21713 : 
	addi	r7 r0 0
L_cont_21714 : 
	bne	r7 r0 L_else_21715
	fldi	f6 r5 1
	fmul	f2 f6 f2
	fldi	f6 r5 2
	fmul	f3 f6 f3
	fadd	f2 f2 f3
	fldi	f3 r5 3
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r6 3
	fmul	f4 f2 f2
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fbgt	f3 f0 L_else_21716
	addi	r6 r0 0
	jump	L_cont_21717
L_else_21716 : 
	addi	r6 r0 1
L_cont_21717 : 
	bne	r6 r0 L_else_21718
	addi	r4 r0 0
	return
L_else_21718 : 
	ldi	r4 r4 6
	bne	r4 r0 L_else_21719
	addi	r4 r0 4145
	fldi	f4 r0 29
	fldi	f5 r0 39
	fbgt	f3 f5 L_else_21721
	fldi	f5 r0 39
	jump	L_cont_21722
L_else_21721 : 
	fldi	f5 r0 39
	fdiv	f5 f5 f3
L_cont_21722 : 
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f2 r2 2
	fsti	f3 r2 4
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 7
	call	L_isqrt_1892
	subi	r2 r2 7
	fldi	f3 r2 4
	fmul	f2 f3 f2
	fldi	f3 r2 2
	fsub	f2 f3 f2
	ldi	r4 r2 1
	fldi	f3 r4 4
	fmul	f2 f2 f3
	ldi	r4 r2 0
	fsti	f2 r4 0
	jump	L_cont_21720
L_else_21719 : 
	addi	r4 r0 4145
	fldi	f4 r0 29
	fldi	f5 r0 39
	fbgt	f3 f5 L_else_21723
	fldi	f5 r0 39
	jump	L_cont_21724
L_else_21723 : 
	fldi	f5 r0 39
	fdiv	f5 f5 f3
L_cont_21724 : 
	sti	r4 r2 6
	sti	r5 r2 1
	fsti	f2 r2 2
	fsti	f3 r2 4
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 8
	call	L_isqrt_1892
	subi	r2 r2 8
	fldi	f3 r2 4
	fmul	f2 f3 f2
	fldi	f3 r2 2
	fadd	f2 f3 f2
	ldi	r4 r2 1
	fldi	f3 r4 4
	fmul	f2 f2 f3
	ldi	r4 r2 6
	fsti	f2 r4 0
L_cont_21720 : 
	addi	r4 r0 1
	return
L_else_21715 : 
	addi	r4 r0 0
	return
L_solver_fast2_2134 : 
	addi	r6 r0 5042
	add	r6 r6 r4
	ldi	r6 r6 0
	ldi	r7 r6 10
	fldi	f2 r7 0
	fldi	f3 r7 1
	fldi	f4 r7 2
	ldi	r8 r5 1
	add	r4 r8 r4
	ldi	r4 r4 0
	ldi	r8 r6 1
	addi	r9 r0 1
	bne	r8 r9 L_else_21725
	ldi	r5 r5 0
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r1
	jump	L_solver_rect_fast_2097
L_else_21725 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_21726
	fldi	f2 r4 0
	fbgt	f0 f2 L_else_21727
	addi	r5 r0 0
	jump	L_cont_21728
L_else_21727 : 
	addi	r5 r0 1
L_cont_21728 : 
	bne	r5 r0 L_else_21729
	addi	r4 r0 0
	return
L_else_21729 : 
	addi	r5 r0 4145
	fldi	f2 r4 0
	fldi	f3 r7 3
	fmul	f2 f2 f3
	fsti	f2 r5 0
	addi	r4 r0 1
	return
L_else_21726 : 
	fldi	f5 r4 0
	fbne	f5 f0 L_else_21730
	addi	r5 r0 1
	jump	L_cont_21731
L_else_21730 : 
	addi	r5 r0 0
L_cont_21731 : 
	bne	r5 r0 L_else_21732
	fldi	f6 r4 1
	fmul	f2 f6 f2
	fldi	f6 r4 2
	fmul	f3 f6 f3
	fadd	f2 f2 f3
	fldi	f3 r4 3
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r7 3
	fmul	f4 f2 f2
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fbgt	f3 f0 L_else_21733
	addi	r5 r0 0
	jump	L_cont_21734
L_else_21733 : 
	addi	r5 r0 1
L_cont_21734 : 
	bne	r5 r0 L_else_21735
	addi	r4 r0 0
	return
L_else_21735 : 
	ldi	r5 r6 6
	bne	r5 r0 L_else_21736
	addi	r5 r0 4145
	fldi	f4 r0 29
	fldi	f5 r0 39
	fbgt	f3 f5 L_else_21738
	fldi	f5 r0 39
	jump	L_cont_21739
L_else_21738 : 
	fldi	f5 r0 39
	fdiv	f5 f5 f3
L_cont_21739 : 
	fldi	f6 r0 31
	fmul	f6 f6 f5
	fsub	f4 f5 f4
	fbgt	f0 f4 L_else_21740
	fadd	f4 f0 f4
	jump	L_cont_21741
L_else_21740 : 
	fsub	f4 f0 f4
L_cont_21741 : 
	sti	r5 r2 0
	sti	r4 r2 1
	fsti	f2 r2 2
	fsti	f3 r2 4
	fbgt	f6 f4 L_else_21742
	fldi	f4 r0 30
	fmul	f6 f3 f5
	fmul	f6 f6 f5
	fsub	f4 f4 f6
	fmul	f4 f5 f4
	fldi	f6 r0 29
	fdiv	f4 f4 f6
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	addi	r2 r2 7
	call	L_isqrt_1892
	subi	r2 r2 7
	jump	L_cont_21743
L_else_21742 : 
	fadd	f2 f0 f5
L_cont_21743 : 
	fldi	f3 r2 4
	fmul	f2 f3 f2
	fldi	f3 r2 2
	fsub	f2 f3 f2
	ldi	r4 r2 1
	fldi	f3 r4 4
	fmul	f2 f2 f3
	ldi	r4 r2 0
	fsti	f2 r4 0
	jump	L_cont_21737
L_else_21736 : 
	addi	r5 r0 4145
	fldi	f4 r0 29
	fldi	f5 r0 39
	fbgt	f3 f5 L_else_21744
	fldi	f5 r0 39
	jump	L_cont_21745
L_else_21744 : 
	fldi	f5 r0 39
	fdiv	f5 f5 f3
L_cont_21745 : 
	fldi	f6 r0 31
	fmul	f6 f6 f5
	fsub	f4 f5 f4
	fbgt	f0 f4 L_else_21746
	fadd	f4 f0 f4
	jump	L_cont_21747
L_else_21746 : 
	fsub	f4 f0 f4
L_cont_21747 : 
	sti	r5 r2 6
	sti	r4 r2 1
	fsti	f2 r2 2
	fsti	f3 r2 4
	fbgt	f6 f4 L_else_21748
	fldi	f4 r0 30
	fmul	f6 f3 f5
	fmul	f6 f6 f5
	fsub	f4 f4 f6
	fmul	f4 f5 f4
	fldi	f6 r0 29
	fdiv	f4 f4 f6
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	addi	r2 r2 8
	call	L_isqrt_1892
	subi	r2 r2 8
	jump	L_cont_21749
L_else_21748 : 
	fadd	f2 f0 f5
L_cont_21749 : 
	fldi	f3 r2 4
	fmul	f2 f3 f2
	fldi	f3 r2 2
	fadd	f2 f3 f2
	ldi	r4 r2 1
	fldi	f3 r4 4
	fmul	f2 f2 f3
	ldi	r4 r2 6
	fsti	f2 r4 0
L_cont_21737 : 
	addi	r4 r0 1
	return
L_else_21732 : 
	addi	r4 r0 0
	return
L_setup_rect_table_2137 : 
	addi	r6 r0 6
	fldi	f2 r0 27
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	fldi	f2 r5 0
	fbne	f2 f0 L_else_21750
	addi	r6 r0 1
	jump	L_cont_21751
L_else_21750 : 
	addi	r6 r0 0
L_cont_21751 : 
	bne	r6 r0 L_else_21752
	ldi	r6 r2 0
	ldi	r7 r6 6
	fldi	f2 r5 0
	fbgt	f0 f2 L_else_21754
	addi	r8 r0 0
	jump	L_cont_21755
L_else_21754 : 
	addi	r8 r0 1
L_cont_21755 : 
	xor	r7 r7 r8
	ldi	r8 r6 4
	fldi	f2 r8 0
	bne	r7 r0 L_else_21756
	fsub	f2 f0 f2
	jump	L_cont_21757
L_else_21756 : 
	fadd	f2 f0 f2
L_cont_21757 : 
	fsti	f2 r4 0
	fldi	f2 r0 39
	fldi	f3 r5 0
	fdiv	f2 f2 f3
	fsti	f2 r4 1
	jump	L_cont_21753
L_else_21752 : 
	fldi	f2 r0 27
	fsti	f2 r4 1
L_cont_21753 : 
	fldi	f2 r5 1
	fbne	f2 f0 L_else_21758
	addi	r6 r0 1
	jump	L_cont_21759
L_else_21758 : 
	addi	r6 r0 0
L_cont_21759 : 
	bne	r6 r0 L_else_21760
	ldi	r6 r2 0
	ldi	r7 r6 6
	fldi	f2 r5 1
	fbgt	f0 f2 L_else_21762
	addi	r8 r0 0
	jump	L_cont_21763
L_else_21762 : 
	addi	r8 r0 1
L_cont_21763 : 
	xor	r7 r7 r8
	ldi	r8 r6 4
	fldi	f2 r8 1
	bne	r7 r0 L_else_21764
	fsub	f2 f0 f2
	jump	L_cont_21765
L_else_21764 : 
	fadd	f2 f0 f2
L_cont_21765 : 
	fsti	f2 r4 2
	fldi	f2 r0 39
	fldi	f3 r5 1
	fdiv	f2 f2 f3
	fsti	f2 r4 3
	jump	L_cont_21761
L_else_21760 : 
	fldi	f2 r0 27
	fsti	f2 r4 3
L_cont_21761 : 
	fldi	f2 r5 2
	fbne	f2 f0 L_else_21766
	addi	r6 r0 1
	jump	L_cont_21767
L_else_21766 : 
	addi	r6 r0 0
L_cont_21767 : 
	bne	r6 r0 L_else_21768
	ldi	r6 r2 0
	ldi	r7 r6 6
	fldi	f2 r5 2
	fbgt	f0 f2 L_else_21770
	addi	r8 r0 0
	jump	L_cont_21771
L_else_21770 : 
	addi	r8 r0 1
L_cont_21771 : 
	xor	r7 r7 r8
	ldi	r6 r6 4
	fldi	f2 r6 2
	bne	r7 r0 L_else_21772
	fsub	f2 f0 f2
	jump	L_cont_21773
L_else_21772 : 
	fadd	f2 f0 f2
L_cont_21773 : 
	fsti	f2 r4 4
	fldi	f2 r0 39
	fldi	f3 r5 2
	fdiv	f2 f2 f3
	fsti	f2 r4 5
	jump	L_cont_21769
L_else_21768 : 
	fldi	f2 r0 27
	fsti	f2 r4 5
L_cont_21769 : 
	add	r4 r0 r4
	return
L_setup_surface_table_2140 : 
	addi	r6 r0 4
	fldi	f2 r0 27
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	fldi	f2 r5 0
	ldi	r6 r2 0
	ldi	r7 r6 4
	fldi	f3 r7 0
	fmul	f2 f2 f3
	fldi	f3 r5 1
	ldi	r7 r6 4
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r5 2
	ldi	r5 r6 4
	fldi	f4 r5 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f2 f0 L_else_21774
	addi	r5 r0 0
	jump	L_cont_21775
L_else_21774 : 
	addi	r5 r0 1
L_cont_21775 : 
	bne	r5 r0 L_else_21776
	fldi	f2 r0 27
	fsti	f2 r4 0
	jump	L_cont_21777
L_else_21776 : 
	fldi	f3 r0 28
	fdiv	f3 f3 f2
	fsti	f3 r4 0
	ldi	r5 r6 4
	fldi	f3 r5 0
	fdiv	f3 f3 f2
	fsub	f3 f0 f3
	fsti	f3 r4 1
	ldi	r5 r6 4
	fldi	f3 r5 1
	fdiv	f3 f3 f2
	fsub	f3 f0 f3
	fsti	f3 r4 2
	ldi	r5 r6 4
	fldi	f3 r5 2
	fdiv	f2 f3 f2
	fsub	f2 f0 f2
	fsti	f2 r4 3
L_cont_21777 : 
	add	r4 r0 r4
	return
L_setup_second_table_2143 : 
	addi	r6 r0 5
	fldi	f2 r0 27
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	fldi	f2 r5 0
	fldi	f3 r5 1
	fldi	f4 r5 2
	fmul	f5 f2 f2
	ldi	r6 r2 0
	ldi	r7 r6 4
	fldi	f6 r7 0
	fmul	f5 f5 f6
	fmul	f6 f3 f3
	ldi	r7 r6 4
	fldi	f7 r7 1
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fmul	f6 f4 f4
	ldi	r7 r6 4
	fldi	f7 r7 2
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	ldi	r7 r6 3
	bne	r7 r0 L_else_21778
	fadd	f2 f0 f5
	jump	L_cont_21779
L_else_21778 : 
	fmul	f6 f3 f4
	ldi	r7 r6 9
	fldi	f7 r7 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fmul	f4 f4 f2
	ldi	r7 r6 9
	fldi	f6 r7 1
	fmul	f4 f4 f6
	fadd	f4 f5 f4
	fmul	f2 f2 f3
	ldi	r7 r6 9
	fldi	f3 r7 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
L_cont_21779 : 
	fldi	f3 r5 0
	ldi	r7 r6 4
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fsub	f3 f0 f3
	fldi	f4 r5 1
	ldi	r7 r6 4
	fldi	f5 r7 1
	fmul	f4 f4 f5
	fsub	f4 f0 f4
	fldi	f5 r5 2
	ldi	r7 r6 4
	fldi	f6 r7 2
	fmul	f5 f5 f6
	fsub	f5 f0 f5
	fsti	f2 r4 0
	ldi	r7 r6 3
	bne	r7 r0 L_else_21780
	fsti	f3 r4 1
	fsti	f4 r4 2
	fsti	f5 r4 3
	jump	L_cont_21781
L_else_21780 : 
	fldi	f6 r5 2
	ldi	r7 r6 9
	fldi	f7 r7 1
	fmul	f6 f6 f7
	fldi	f7 r5 1
	ldi	r7 r6 9
	fldi	f8 r7 2
	fmul	f7 f7 f8
	fadd	f6 f6 f7
	fldi	f7 r0 29
	fdiv	f6 f6 f7
	fsub	f3 f3 f6
	fsti	f3 r4 1
	fldi	f3 r5 2
	ldi	r7 r6 9
	fldi	f6 r7 0
	fmul	f3 f3 f6
	fldi	f6 r5 0
	ldi	r7 r6 9
	fldi	f7 r7 2
	fmul	f6 f6 f7
	fadd	f3 f3 f6
	fldi	f6 r0 29
	fdiv	f3 f3 f6
	fsub	f3 f4 f3
	fsti	f3 r4 2
	fldi	f3 r5 1
	ldi	r7 r6 9
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fldi	f4 r5 0
	ldi	r5 r6 9
	fldi	f6 r5 1
	fmul	f4 f4 f6
	fadd	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f5 f3
	fsti	f3 r4 3
L_cont_21781 : 
	fbne	f2 f0 L_else_21782
	addi	r5 r0 1
	jump	L_cont_21783
L_else_21782 : 
	addi	r5 r0 0
L_cont_21783 : 
	bne	r5 r0 L_else_21784
	fldi	f3 r0 39
	fdiv	f2 f3 f2
	fsti	f2 r4 4
	jump	L_cont_21785
L_else_21784 : 
L_cont_21785 : 
	add	r4 r0 r4
	return
L_iter_setup_dirvec_constants_2146 : 
	bgt	r0 r5 L_else_21786
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r4 1
	ldi	r8 r4 0
	ldi	r9 r6 1
	addi	r10 r0 1
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r9 r10 L_else_21787
	addi	r9 r0 6
	fldi	f2 r0 27
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r8 r2 4
	add	r4 r0 r9
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	fldi	f2 r5 0
	fbne	f2 f0 L_else_21789
	addi	r6 r0 1
	jump	L_cont_21790
L_else_21789 : 
	addi	r6 r0 0
L_cont_21790 : 
	bne	r6 r0 L_else_21791
	ldi	r6 r2 3
	ldi	r7 r6 6
	fldi	f2 r5 0
	fbgt	f0 f2 L_else_21793
	addi	r8 r0 0
	jump	L_cont_21794
L_else_21793 : 
	addi	r8 r0 1
L_cont_21794 : 
	xor	r7 r7 r8
	ldi	r8 r6 4
	fldi	f2 r8 0
	bne	r7 r0 L_else_21795
	fsub	f2 f0 f2
	jump	L_cont_21796
L_else_21795 : 
	fadd	f2 f0 f2
L_cont_21796 : 
	fsti	f2 r4 0
	fldi	f2 r0 39
	fldi	f3 r5 0
	fdiv	f2 f2 f3
	fsti	f2 r4 1
	jump	L_cont_21792
L_else_21791 : 
	fldi	f2 r0 27
	fsti	f2 r4 1
L_cont_21792 : 
	fldi	f2 r5 1
	fbne	f2 f0 L_else_21797
	addi	r6 r0 1
	jump	L_cont_21798
L_else_21797 : 
	addi	r6 r0 0
L_cont_21798 : 
	bne	r6 r0 L_else_21799
	ldi	r6 r2 3
	ldi	r7 r6 6
	fldi	f2 r5 1
	fbgt	f0 f2 L_else_21801
	addi	r8 r0 0
	jump	L_cont_21802
L_else_21801 : 
	addi	r8 r0 1
L_cont_21802 : 
	xor	r7 r7 r8
	ldi	r8 r6 4
	fldi	f2 r8 1
	bne	r7 r0 L_else_21803
	fsub	f2 f0 f2
	jump	L_cont_21804
L_else_21803 : 
	fadd	f2 f0 f2
L_cont_21804 : 
	fsti	f2 r4 2
	fldi	f2 r0 39
	fldi	f3 r5 1
	fdiv	f2 f2 f3
	fsti	f2 r4 3
	jump	L_cont_21800
L_else_21799 : 
	fldi	f2 r0 27
	fsti	f2 r4 3
L_cont_21800 : 
	fldi	f2 r5 2
	fbne	f2 f0 L_else_21805
	addi	r6 r0 1
	jump	L_cont_21806
L_else_21805 : 
	addi	r6 r0 0
L_cont_21806 : 
	bne	r6 r0 L_else_21807
	ldi	r6 r2 3
	ldi	r7 r6 6
	fldi	f2 r5 2
	fbgt	f0 f2 L_else_21809
	addi	r8 r0 0
	jump	L_cont_21810
L_else_21809 : 
	addi	r8 r0 1
L_cont_21810 : 
	xor	r7 r7 r8
	ldi	r6 r6 4
	fldi	f2 r6 2
	bne	r7 r0 L_else_21811
	fsub	f2 f0 f2
	jump	L_cont_21812
L_else_21811 : 
	fadd	f2 f0 f2
L_cont_21812 : 
	fsti	f2 r4 4
	fldi	f2 r0 39
	fldi	f3 r5 2
	fdiv	f2 f2 f3
	fsti	f2 r4 5
	jump	L_cont_21808
L_else_21807 : 
	fldi	f2 r0 27
	fsti	f2 r4 5
L_cont_21808 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21788
L_else_21787 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_21813
	addi	r9 r0 4
	fldi	f2 r0 27
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r8 r2 4
	add	r4 r0 r9
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	fldi	f2 r5 0
	ldi	r6 r2 3
	ldi	r7 r6 4
	fldi	f3 r7 0
	fmul	f2 f2 f3
	fldi	f3 r5 1
	ldi	r7 r6 4
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r5 2
	ldi	r5 r6 4
	fldi	f4 r5 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f2 f0 L_else_21815
	addi	r5 r0 0
	jump	L_cont_21816
L_else_21815 : 
	addi	r5 r0 1
L_cont_21816 : 
	bne	r5 r0 L_else_21817
	fldi	f2 r0 27
	fsti	f2 r4 0
	jump	L_cont_21818
L_else_21817 : 
	fldi	f3 r0 28
	fdiv	f3 f3 f2
	fsti	f3 r4 0
	ldi	r5 r6 4
	fldi	f3 r5 0
	fdiv	f3 f3 f2
	fsub	f3 f0 f3
	fsti	f3 r4 1
	ldi	r5 r6 4
	fldi	f3 r5 1
	fdiv	f3 f3 f2
	fsub	f3 f0 f3
	fsti	f3 r4 2
	ldi	r5 r6 4
	fldi	f3 r5 2
	fdiv	f2 f3 f2
	fsub	f2 f0 f2
	fsti	f2 r4 3
L_cont_21818 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21814
L_else_21813 : 
	addi	r9 r0 5
	fldi	f2 r0 27
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r8 r2 4
	add	r4 r0 r9
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	fldi	f2 r5 0
	fldi	f3 r5 1
	fldi	f4 r5 2
	ldi	r6 r2 3
	sti	r4 r2 5
	add	r4 r0 r6
	addi	r2 r2 7
	call	L_quadratic_2074
	subi	r2 r2 7
	ldi	r4 r2 4
	fldi	f3 r4 0
	ldi	r5 r2 3
	ldi	r6 r5 4
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fsub	f3 f0 f3
	fldi	f4 r4 1
	ldi	r6 r5 4
	fldi	f5 r6 1
	fmul	f4 f4 f5
	fsub	f4 f0 f4
	fldi	f5 r4 2
	ldi	r6 r5 4
	fldi	f6 r6 2
	fmul	f5 f5 f6
	fsub	f5 f0 f5
	ldi	r6 r2 5
	fsti	f2 r6 0
	ldi	r7 r5 3
	bne	r7 r0 L_else_21819
	fsti	f3 r6 1
	fsti	f4 r6 2
	fsti	f5 r6 3
	jump	L_cont_21820
L_else_21819 : 
	fldi	f6 r4 2
	ldi	r7 r5 9
	fldi	f7 r7 1
	fmul	f6 f6 f7
	fldi	f7 r4 1
	ldi	r7 r5 9
	fldi	f8 r7 2
	fmul	f7 f7 f8
	fadd	f6 f6 f7
	fldi	f7 r0 29
	fdiv	f6 f6 f7
	fsub	f3 f3 f6
	fsti	f3 r6 1
	fldi	f3 r4 2
	ldi	r7 r5 9
	fldi	f6 r7 0
	fmul	f3 f3 f6
	fldi	f6 r4 0
	ldi	r7 r5 9
	fldi	f7 r7 2
	fmul	f6 f6 f7
	fadd	f3 f3 f6
	fldi	f6 r0 29
	fdiv	f3 f3 f6
	fsub	f3 f4 f3
	fsti	f3 r6 2
	fldi	f3 r4 1
	ldi	r7 r5 9
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fldi	f4 r4 0
	ldi	r4 r5 9
	fldi	f6 r4 1
	fmul	f4 f4 f6
	fadd	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f5 f3
	fsti	f3 r6 3
L_cont_21820 : 
	fbne	f2 f0 L_else_21821
	addi	r4 r0 1
	jump	L_cont_21822
L_else_21821 : 
	addi	r4 r0 0
L_cont_21822 : 
	bne	r4 r0 L_else_21823
	fldi	f3 r0 39
	fdiv	f2 f3 f2
	fsti	f2 r6 4
	jump	L_cont_21824
L_else_21823 : 
L_cont_21824 : 
	ldi	r4 r2 1
	ldi	r5 r2 2
	add	r5 r5 r4
	sti	r6 r5 0
L_cont_21814 : 
L_cont_21788 : 
	ldi	r4 r2 1
	addi	r4 r4 -1
	bgt	r0 r4 L_else_21825
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r2 0
	ldi	r7 r6 1
	ldi	r8 r6 0
	ldi	r9 r5 1
	addi	r10 r0 1
	bne	r9 r10 L_else_21826
	sti	r4 r2 6
	sti	r7 r2 7
	add	r4 r0 r8
	addi	r2 r2 9
	call	L_setup_rect_table_2137
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21827
L_else_21826 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_21828
	sti	r4 r2 6
	sti	r7 r2 7
	add	r4 r0 r8
	addi	r2 r2 9
	call	L_setup_surface_table_2140
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21829
L_else_21828 : 
	sti	r4 r2 6
	sti	r7 r2 7
	add	r4 r0 r8
	addi	r2 r2 9
	call	L_setup_second_table_2143
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_21829 : 
L_cont_21827 : 
	addi	r5 r5 -1
	ldi	r4 r2 0
	jump	L_iter_setup_dirvec_constants_2146
L_else_21825 : 
	return
L_else_21786 : 
	return
L_setup_startp_constants_2151 : 
	bgt	r0 r5 L_else_21832
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r6 10
	ldi	r8 r6 1
	fldi	f2 r4 0
	ldi	r9 r6 5
	fldi	f3 r9 0
	fsub	f2 f2 f3
	fsti	f2 r7 0
	fldi	f2 r4 1
	ldi	r9 r6 5
	fldi	f3 r9 1
	fsub	f2 f2 f3
	fsti	f2 r7 1
	fldi	f2 r4 2
	ldi	r9 r6 5
	fldi	f3 r9 2
	fsub	f2 f2 f3
	fsti	f2 r7 2
	addi	r9 r0 2
	bne	r8 r9 L_else_21833
	ldi	r6 r6 4
	fldi	f2 r7 0
	fldi	f3 r7 1
	fldi	f4 r7 2
	fldi	f5 r6 0
	fmul	f2 f5 f2
	fldi	f5 r6 1
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	fldi	f3 r6 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r7 3
	jump	L_cont_21834
L_else_21833 : 
	addi	r9 r0 2
	bgt	r8 r9 L_else_21835
	jump	L_cont_21836
L_else_21835 : 
	fldi	f2 r7 0
	fldi	f3 r7 1
	fldi	f4 r7 2
	fmul	f5 f2 f2
	ldi	r9 r6 4
	fldi	f6 r9 0
	fmul	f5 f5 f6
	fmul	f6 f3 f3
	ldi	r9 r6 4
	fldi	f7 r9 1
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fmul	f6 f4 f4
	ldi	r9 r6 4
	fldi	f7 r9 2
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	ldi	r9 r6 3
	bne	r9 r0 L_else_21837
	fadd	f2 f0 f5
	jump	L_cont_21838
L_else_21837 : 
	fmul	f6 f3 f4
	ldi	r9 r6 9
	fldi	f7 r9 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fmul	f4 f4 f2
	ldi	r9 r6 9
	fldi	f6 r9 1
	fmul	f4 f4 f6
	fadd	f4 f5 f4
	fmul	f2 f2 f3
	ldi	r6 r6 9
	fldi	f3 r6 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
L_cont_21838 : 
	addi	r6 r0 3
	bne	r8 r6 L_else_21839
	fldi	f3 r0 39
	fsub	f2 f2 f3
	jump	L_cont_21840
L_else_21839 : 
	fadd	f2 f0 f2
L_cont_21840 : 
	fsti	f2 r7 3
L_cont_21836 : 
L_cont_21834 : 
	addi	r5 r5 -1
	jump	L_setup_startp_constants_2151
L_else_21832 : 
	return
L_is_outside_2171 : 
	ldi	r5 r4 5
	fldi	f5 r5 0
	fsub	f2 f2 f5
	ldi	r5 r4 5
	fldi	f5 r5 1
	fsub	f3 f3 f5
	ldi	r5 r4 5
	fldi	f5 r5 2
	fsub	f4 f4 f5
	ldi	r5 r4 1
	addi	r6 r0 1
	bne	r5 r6 L_else_21842
	fbgt	f0 f2 L_else_21843
	fadd	f2 f0 f2
	jump	L_cont_21844
L_else_21843 : 
	fsub	f2 f0 f2
L_cont_21844 : 
	ldi	r5 r4 4
	fldi	f5 r5 0
	fbgt	f5 f2 L_else_21845
	addi	r5 r0 0
	jump	L_cont_21846
L_else_21845 : 
	addi	r5 r0 1
L_cont_21846 : 
	bne	r5 r0 L_else_21847
	addi	r5 r0 0
	jump	L_cont_21848
L_else_21847 : 
	fbgt	f0 f3 L_else_21849
	fadd	f2 f0 f3
	jump	L_cont_21850
L_else_21849 : 
	fsub	f2 f0 f3
L_cont_21850 : 
	ldi	r5 r4 4
	fldi	f3 r5 1
	fbgt	f3 f2 L_else_21851
	addi	r5 r0 0
	jump	L_cont_21852
L_else_21851 : 
	addi	r5 r0 1
L_cont_21852 : 
	bne	r5 r0 L_else_21853
	addi	r5 r0 0
	jump	L_cont_21854
L_else_21853 : 
	fbgt	f0 f4 L_else_21855
	fadd	f2 f0 f4
	jump	L_cont_21856
L_else_21855 : 
	fsub	f2 f0 f4
L_cont_21856 : 
	ldi	r5 r4 4
	fldi	f3 r5 2
	fbgt	f3 f2 L_else_21857
	addi	r5 r0 0
	jump	L_cont_21858
L_else_21857 : 
	addi	r5 r0 1
L_cont_21858 : 
L_cont_21854 : 
L_cont_21848 : 
	bne	r5 r0 L_else_21859
	addi	r5 r0 1
	ldi	r4 r4 6
	sub	r4 r5 r4
	return
L_else_21859 : 
	ldi	r4 r4 6
	add	r4 r0 r4
	return
L_else_21842 : 
	addi	r6 r0 2
	bne	r5 r6 L_else_21860
	ldi	r5 r4 4
	fldi	f5 r5 0
	fmul	f2 f5 f2
	fldi	f5 r5 1
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	fldi	f3 r5 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r5 r0 1
	ldi	r4 r4 6
	fbgt	f0 f2 L_else_21861
	addi	r6 r0 0
	jump	L_cont_21862
L_else_21861 : 
	addi	r6 r0 1
L_cont_21862 : 
	xor	r4 r4 r6
	sub	r4 r5 r4
	return
L_else_21860 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	L_quadratic_2074
	subi	r2 r2 2
	ldi	r4 r2 0
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_21863
	fldi	f3 r0 39
	fsub	f2 f2 f3
	jump	L_cont_21864
L_else_21863 : 
	fadd	f2 f0 f2
L_cont_21864 : 
	addi	r5 r0 1
	ldi	r4 r4 6
	fbgt	f0 f2 L_else_21865
	addi	r6 r0 0
	jump	L_cont_21866
L_else_21865 : 
	addi	r6 r0 1
L_cont_21866 : 
	xor	r4 r4 r6
	sub	r4 r5 r4
	return
L_check_all_inside_2176 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_21867
	addi	r4 r0 1
	return
L_else_21867 : 
	addi	r7 r0 5042
	add	r6 r7 r6
	ldi	r6 r6 0
	ldi	r7 r6 5
	fldi	f5 r7 0
	fsub	f5 f2 f5
	ldi	r7 r6 5
	fldi	f6 r7 1
	fsub	f6 f3 f6
	ldi	r7 r6 5
	fldi	f7 r7 2
	fsub	f7 f4 f7
	ldi	r7 r6 1
	addi	r8 r0 1
	bne	r7 r8 L_else_21868
	fbgt	f0 f5 L_else_21870
	fadd	f5 f0 f5
	jump	L_cont_21871
L_else_21870 : 
	fsub	f5 f0 f5
L_cont_21871 : 
	ldi	r7 r6 4
	fldi	f8 r7 0
	fbgt	f8 f5 L_else_21872
	addi	r7 r0 0
	jump	L_cont_21873
L_else_21872 : 
	addi	r7 r0 1
L_cont_21873 : 
	bne	r7 r0 L_else_21874
	addi	r7 r0 0
	jump	L_cont_21875
L_else_21874 : 
	fbgt	f0 f6 L_else_21876
	fadd	f5 f0 f6
	jump	L_cont_21877
L_else_21876 : 
	fsub	f5 f0 f6
L_cont_21877 : 
	ldi	r7 r6 4
	fldi	f6 r7 1
	fbgt	f6 f5 L_else_21878
	addi	r7 r0 0
	jump	L_cont_21879
L_else_21878 : 
	addi	r7 r0 1
L_cont_21879 : 
	bne	r7 r0 L_else_21880
	addi	r7 r0 0
	jump	L_cont_21881
L_else_21880 : 
	fbgt	f0 f7 L_else_21882
	fadd	f5 f0 f7
	jump	L_cont_21883
L_else_21882 : 
	fsub	f5 f0 f7
L_cont_21883 : 
	ldi	r7 r6 4
	fldi	f6 r7 2
	fbgt	f6 f5 L_else_21884
	addi	r7 r0 0
	jump	L_cont_21885
L_else_21884 : 
	addi	r7 r0 1
L_cont_21885 : 
L_cont_21881 : 
L_cont_21875 : 
	bne	r7 r0 L_else_21886
	addi	r7 r0 1
	ldi	r6 r6 6
	sub	r6 r7 r6
	jump	L_cont_21887
L_else_21886 : 
	ldi	r6 r6 6
	add	r6 r0 r6
L_cont_21887 : 
	jump	L_cont_21869
L_else_21868 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_21888
	ldi	r7 r6 4
	fldi	f8 r7 0
	fmul	f5 f8 f5
	fldi	f8 r7 1
	fmul	f6 f8 f6
	fadd	f5 f5 f6
	fldi	f6 r7 2
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	addi	r7 r0 1
	ldi	r6 r6 6
	fbgt	f0 f5 L_else_21890
	addi	r8 r0 0
	jump	L_cont_21891
L_else_21890 : 
	addi	r8 r0 1
L_cont_21891 : 
	xor	r6 r6 r8
	sub	r6 r7 r6
	jump	L_cont_21889
L_else_21888 : 
	fmul	f8 f5 f5
	ldi	r7 r6 4
	fldi	f9 r7 0
	fmul	f8 f8 f9
	fmul	f9 f6 f6
	ldi	r7 r6 4
	fldi	f10 r7 1
	fmul	f9 f9 f10
	fadd	f8 f8 f9
	fmul	f9 f7 f7
	ldi	r7 r6 4
	fldi	f10 r7 2
	fmul	f9 f9 f10
	fadd	f8 f8 f9
	ldi	r7 r6 3
	bne	r7 r0 L_else_21892
	fadd	f5 f0 f8
	jump	L_cont_21893
L_else_21892 : 
	fmul	f9 f6 f7
	ldi	r7 r6 9
	fldi	f10 r7 0
	fmul	f9 f9 f10
	fadd	f8 f8 f9
	fmul	f7 f7 f5
	ldi	r7 r6 9
	fldi	f9 r7 1
	fmul	f7 f7 f9
	fadd	f7 f8 f7
	fmul	f5 f5 f6
	ldi	r7 r6 9
	fldi	f6 r7 2
	fmul	f5 f5 f6
	fadd	f5 f7 f5
L_cont_21893 : 
	ldi	r7 r6 1
	addi	r8 r0 3
	bne	r7 r8 L_else_21894
	fldi	f6 r0 39
	fsub	f5 f5 f6
	jump	L_cont_21895
L_else_21894 : 
	fadd	f5 f0 f5
L_cont_21895 : 
	addi	r7 r0 1
	ldi	r6 r6 6
	fbgt	f0 f5 L_else_21896
	addi	r8 r0 0
	jump	L_cont_21897
L_else_21896 : 
	addi	r8 r0 1
L_cont_21897 : 
	xor	r6 r6 r8
	sub	r6 r7 r6
L_cont_21889 : 
L_cont_21869 : 
	bne	r6 r0 L_else_21898
	addi	r4 r4 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_21899
	addi	r4 r0 1
	return
L_else_21899 : 
	addi	r7 r0 5042
	add	r6 r7 r6
	ldi	r6 r6 0
	fsti	f4 r2 0
	fsti	f3 r2 2
	fsti	f2 r2 4
	sti	r5 r2 6
	sti	r4 r2 7
	add	r4 r0 r6
	addi	r2 r2 9
	call	L_is_outside_2171
	subi	r2 r2 9
	bne	r4 r0 L_else_21900
	ldi	r4 r2 7
	addi	r4 r4 1
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r5 r2 6
	jump	L_check_all_inside_2176
L_else_21900 : 
	addi	r4 r0 0
	return
L_else_21898 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2182 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_21901
	addi	r4 r0 0
	return
L_else_21901 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4977
	addi	r8 r0 4114
	addi	r9 r0 5042
	add	r9 r9 r6
	ldi	r9 r9 0
	fldi	f2 r8 0
	ldi	r10 r9 5
	fldi	f3 r10 0
	fsub	f2 f2 f3
	fldi	f3 r8 1
	ldi	r10 r9 5
	fldi	f4 r10 1
	fsub	f3 f3 f4
	fldi	f4 r8 2
	ldi	r8 r9 5
	fldi	f5 r8 2
	fsub	f4 f4 f5
	ldi	r8 r7 1
	add	r8 r8 r6
	ldi	r8 r8 0
	ldi	r10 r9 1
	addi	r11 r0 1
	sti	r5 r2 0
	sti	r4 r2 1
	sti	r6 r2 2
	bne	r10 r11 L_else_21902
	ldi	r7 r7 0
	add	r6 r0 r8
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 4
	call	L_solver_rect_fast_2097
	subi	r2 r2 4
	jump	L_cont_21903
L_else_21902 : 
	addi	r7 r0 2
	bne	r10 r7 L_else_21904
	fldi	f5 r8 0
	fbgt	f0 f5 L_else_21906
	addi	r7 r0 0
	jump	L_cont_21907
L_else_21906 : 
	addi	r7 r0 1
L_cont_21907 : 
	bne	r7 r0 L_else_21908
	addi	r4 r0 0
	jump	L_cont_21909
L_else_21908 : 
	addi	r7 r0 4145
	fldi	f5 r8 1
	fmul	f2 f5 f2
	fldi	f5 r8 2
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	fldi	f3 r8 3
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r7 0
	addi	r4 r0 1
L_cont_21909 : 
	jump	L_cont_21905
L_else_21904 : 
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 4
	call	L_solver_second_fast_2110
	subi	r2 r2 4
L_cont_21905 : 
L_cont_21903 : 
	addi	r5 r0 4145
	fldi	f2 r5 0
	bne	r4 r0 L_else_21910
	addi	r4 r0 0
	jump	L_cont_21911
L_else_21910 : 
	fldi	f3 r0 25
	fbgt	f3 f2 L_else_21912
	addi	r4 r0 0
	jump	L_cont_21913
L_else_21912 : 
	addi	r4 r0 1
L_cont_21913 : 
L_cont_21911 : 
	bne	r4 r0 L_else_21914
	addi	r4 r0 5042
	ldi	r5 r2 2
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_21915
	addi	r4 r0 0
	return
L_else_21915 : 
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2182
L_else_21914 : 
	fldi	f3 r0 24
	fadd	f2 f2 f3
	addi	r4 r0 4111
	fldi	f3 r4 0
	fmul	f3 f3 f2
	addi	r4 r0 4114
	fldi	f4 r4 0
	fadd	f3 f3 f4
	addi	r4 r0 4111
	fldi	f4 r4 1
	fmul	f4 f4 f2
	addi	r4 r0 4114
	fldi	f5 r4 1
	fadd	f4 f4 f5
	addi	r4 r0 4111
	fldi	f5 r4 2
	fmul	f2 f5 f2
	addi	r4 r0 4114
	fldi	f5 r4 2
	fadd	f2 f2 f5
	addi	r4 r0 0
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21916
	addi	r4 r0 1
	jump	L_cont_21917
L_else_21916 : 
	addi	r6 r0 5042
	add	r4 r6 r4
	ldi	r4 r4 0
	fsti	f2 r2 4
	fsti	f4 r2 6
	fsti	f3 r2 8
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 11
	call	L_is_outside_2171
	subi	r2 r2 11
	bne	r4 r0 L_else_21919
	addi	r4 r0 1
	fldi	f2 r2 8
	fldi	f3 r2 6
	fldi	f4 r2 4
	ldi	r5 r2 0
	addi	r2 r2 11
	call	L_check_all_inside_2176
	subi	r2 r2 11
	jump	L_cont_21920
L_else_21919 : 
	addi	r4 r0 0
L_cont_21920 : 
L_cont_21917 : 
	bne	r4 r0 L_else_21921
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2182
L_else_21921 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2185 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_21922
	addi	r4 r0 0
	return
L_else_21922 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r5 r2 0
	sti	r4 r2 1
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 3
	call	L_shadow_check_and_group_2182
	subi	r2 r2 3
	bne	r4 r0 L_else_21923
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_21924
	addi	r4 r0 0
	return
L_else_21924 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 2
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 4
	call	L_shadow_check_and_group_2182
	subi	r2 r2 4
	bne	r4 r0 L_else_21925
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_21926
	addi	r4 r0 0
	return
L_else_21926 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 3
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 5
	call	L_shadow_check_and_group_2182
	subi	r2 r2 5
	bne	r4 r0 L_else_21927
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_21928
	addi	r4 r0 0
	return
L_else_21928 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 4
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_shadow_check_and_group_2182
	subi	r2 r2 6
	bne	r4 r0 L_else_21929
	ldi	r4 r2 4
	addi	r4 r4 1
	ldi	r5 r2 0
	jump	L_shadow_check_one_or_group_2185
L_else_21929 : 
	addi	r4 r0 1
	return
L_else_21927 : 
	addi	r4 r0 1
	return
L_else_21925 : 
	addi	r4 r0 1
	return
L_else_21923 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2188 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r7 r6 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_21930
	addi	r4 r0 0
	return
L_else_21930 : 
	addi	r8 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r7 r8 L_else_21931
	addi	r4 r0 1
	jump	L_cont_21932
L_else_21931 : 
	addi	r8 r0 4977
	addi	r9 r0 4114
	addi	r10 r0 5042
	add	r10 r10 r7
	ldi	r10 r10 0
	fldi	f2 r9 0
	ldi	r11 r10 5
	fldi	f3 r11 0
	fsub	f2 f2 f3
	fldi	f3 r9 1
	ldi	r11 r10 5
	fldi	f4 r11 1
	fsub	f3 f3 f4
	fldi	f4 r9 2
	ldi	r9 r10 5
	fldi	f5 r9 2
	fsub	f4 f4 f5
	ldi	r9 r8 1
	add	r7 r9 r7
	ldi	r7 r7 0
	ldi	r9 r10 1
	addi	r11 r0 1
	bne	r9 r11 L_else_21933
	ldi	r8 r8 0
	add	r6 r0 r7
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 4
	call	L_solver_rect_fast_2097
	subi	r2 r2 4
	jump	L_cont_21934
L_else_21933 : 
	addi	r8 r0 2
	bne	r9 r8 L_else_21935
	fldi	f5 r7 0
	fbgt	f0 f5 L_else_21937
	addi	r8 r0 0
	jump	L_cont_21938
L_else_21937 : 
	addi	r8 r0 1
L_cont_21938 : 
	bne	r8 r0 L_else_21939
	addi	r4 r0 0
	jump	L_cont_21940
L_else_21939 : 
	addi	r8 r0 4145
	fldi	f5 r7 1
	fmul	f2 f5 f2
	fldi	f5 r7 2
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	fldi	f3 r7 3
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r8 0
	addi	r4 r0 1
L_cont_21940 : 
	jump	L_cont_21936
L_else_21935 : 
	add	r5 r0 r7
	add	r4 r0 r10
	addi	r2 r2 4
	call	L_solver_second_fast_2110
	subi	r2 r2 4
L_cont_21936 : 
L_cont_21934 : 
	bne	r4 r0 L_else_21941
	addi	r4 r0 0
	jump	L_cont_21942
L_else_21941 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f3 f2 L_else_21943
	addi	r4 r0 0
	jump	L_cont_21944
L_else_21943 : 
	addi	r4 r0 1
L_cont_21944 : 
	bne	r4 r0 L_else_21945
	addi	r4 r0 0
	jump	L_cont_21946
L_else_21945 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21947
	addi	r4 r0 0
	jump	L_cont_21948
L_else_21947 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2182
	subi	r2 r2 4
	bne	r4 r0 L_else_21949
	addi	r4 r0 2
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21951
	addi	r4 r0 0
	jump	L_cont_21952
L_else_21951 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2182
	subi	r2 r2 4
	bne	r4 r0 L_else_21953
	addi	r4 r0 3
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21955
	addi	r4 r0 0
	jump	L_cont_21956
L_else_21955 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2182
	subi	r2 r2 4
	bne	r4 r0 L_else_21957
	addi	r4 r0 4
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2185
	subi	r2 r2 4
	jump	L_cont_21958
L_else_21957 : 
	addi	r4 r0 1
L_cont_21958 : 
L_cont_21956 : 
	jump	L_cont_21954
L_else_21953 : 
	addi	r4 r0 1
L_cont_21954 : 
L_cont_21952 : 
	jump	L_cont_21950
L_else_21949 : 
	addi	r4 r0 1
L_cont_21950 : 
L_cont_21948 : 
	bne	r4 r0 L_else_21959
	addi	r4 r0 0
	jump	L_cont_21960
L_else_21959 : 
	addi	r4 r0 1
L_cont_21960 : 
L_cont_21946 : 
L_cont_21942 : 
L_cont_21932 : 
	bne	r4 r0 L_else_21961
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2188
L_else_21961 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21962
	addi	r4 r0 0
	jump	L_cont_21963
L_else_21962 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2182
	subi	r2 r2 4
	bne	r4 r0 L_else_21964
	addi	r4 r0 2
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21966
	addi	r4 r0 0
	jump	L_cont_21967
L_else_21966 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2182
	subi	r2 r2 4
	bne	r4 r0 L_else_21968
	addi	r4 r0 3
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21970
	addi	r4 r0 0
	jump	L_cont_21971
L_else_21970 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2182
	subi	r2 r2 4
	bne	r4 r0 L_else_21972
	addi	r4 r0 4
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2185
	subi	r2 r2 4
	jump	L_cont_21973
L_else_21972 : 
	addi	r4 r0 1
L_cont_21973 : 
L_cont_21971 : 
	jump	L_cont_21969
L_else_21968 : 
	addi	r4 r0 1
L_cont_21969 : 
L_cont_21967 : 
	jump	L_cont_21965
L_else_21964 : 
	addi	r4 r0 1
L_cont_21965 : 
L_cont_21963 : 
	bne	r4 r0 L_else_21974
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2188
L_else_21974 : 
	addi	r4 r0 1
	return
L_solve_each_element_2191 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_21975
	return
L_else_21975 : 
	addi	r8 r0 4135
	addi	r9 r0 5042
	add	r9 r9 r7
	ldi	r9 r9 0
	fldi	f2 r8 0
	ldi	r10 r9 5
	fldi	f3 r10 0
	fsub	f2 f2 f3
	fldi	f3 r8 1
	ldi	r10 r9 5
	fldi	f4 r10 1
	fsub	f3 f3 f4
	fldi	f4 r8 2
	ldi	r8 r9 5
	fldi	f5 r8 2
	fsub	f4 f4 f5
	ldi	r8 r9 1
	addi	r10 r0 1
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	bne	r8 r10 L_else_21977
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_rect_2062
	subi	r2 r2 5
	jump	L_cont_21978
L_else_21977 : 
	addi	r10 r0 2
	bne	r8 r10 L_else_21979
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_surface_2068
	subi	r2 r2 5
	jump	L_cont_21980
L_else_21979 : 
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_second_2087
	subi	r2 r2 5
L_cont_21980 : 
L_cont_21978 : 
	bne	r4 r0 L_else_21981
	addi	r4 r0 5042
	ldi	r5 r2 3
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_21982
	return
L_else_21982 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2191
L_else_21981 : 
	addi	r5 r0 4145
	fldi	f2 r5 0
	fbgt	f2 f0 L_else_21984
	addi	r5 r0 0
	jump	L_cont_21985
L_else_21984 : 
	addi	r5 r0 1
L_cont_21985 : 
	bne	r5 r0 L_else_21986
	jump	L_cont_21987
L_else_21986 : 
	addi	r5 r0 4154
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_21988
	addi	r5 r0 0
	jump	L_cont_21989
L_else_21988 : 
	addi	r5 r0 1
L_cont_21989 : 
	bne	r5 r0 L_else_21990
	jump	L_cont_21991
L_else_21990 : 
	fldi	f3 r0 24
	fadd	f2 f2 f3
	ldi	r6 r2 0
	fldi	f3 r6 0
	fmul	f3 f3 f2
	addi	r5 r0 4135
	fldi	f4 r5 0
	fadd	f3 f3 f4
	fldi	f4 r6 1
	fmul	f4 f4 f2
	addi	r5 r0 4135
	fldi	f5 r5 1
	fadd	f4 f4 f5
	fldi	f5 r6 2
	fmul	f5 f5 f2
	addi	r5 r0 4135
	fldi	f6 r5 2
	fadd	f5 f5 f6
	addi	r5 r0 0
	ldi	r7 r2 1
	add	r5 r7 r5
	ldi	r5 r5 0
	addi	r8 r0 -1
	sti	r4 r2 4
	fsti	f5 r2 6
	fsti	f4 r2 8
	fsti	f3 r2 10
	fsti	f2 r2 12
	bne	r5 r8 L_else_21993
	addi	r4 r0 1
	jump	L_cont_21994
L_else_21993 : 
	addi	r8 r0 5042
	add	r5 r8 r5
	ldi	r5 r5 0
	add	r4 r0 r5
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 15
	call	L_is_outside_2171
	subi	r2 r2 15
	bne	r4 r0 L_else_21995
	addi	r4 r0 1
	fldi	f2 r2 10
	fldi	f3 r2 8
	fldi	f4 r2 6
	ldi	r5 r2 1
	addi	r2 r2 15
	call	L_check_all_inside_2176
	subi	r2 r2 15
	jump	L_cont_21996
L_else_21995 : 
	addi	r4 r0 0
L_cont_21996 : 
L_cont_21994 : 
	bne	r4 r0 L_else_21997
	jump	L_cont_21998
L_else_21997 : 
	addi	r4 r0 4154
	fldi	f2 r2 12
	fsti	f2 r4 0
	addi	r4 r0 4114
	fldi	f2 r2 10
	fsti	f2 r4 0
	fldi	f2 r2 8
	fsti	f2 r4 1
	fldi	f2 r2 6
	fsti	f2 r4 2
	addi	r4 r0 4117
	ldi	r5 r2 3
	sti	r5 r4 0
	addi	r4 r0 4146
	ldi	r5 r2 4
	sti	r5 r4 0
L_cont_21998 : 
L_cont_21991 : 
L_cont_21987 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2191
L_solve_one_or_network_2195 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_21999
	return
L_else_21999 : 
	addi	r8 r0 4155
	add	r7 r8 r7
	ldi	r7 r7 0
	addi	r8 r0 0
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 4
	call	L_solve_each_element_2191
	subi	r2 r2 4
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22001
	return
L_else_22001 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 3
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 5
	call	L_solve_each_element_2191
	subi	r2 r2 5
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22003
	return
L_else_22003 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 4
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 6
	call	L_solve_each_element_2191
	subi	r2 r2 6
	ldi	r4 r2 4
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22005
	return
L_else_22005 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 5
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 7
	call	L_solve_each_element_2191
	subi	r2 r2 7
	ldi	r4 r2 5
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_one_or_network_2195
L_trace_or_matrix_2199 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	ldi	r8 r7 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_22007
	return
L_else_22007 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_22009
	addi	r8 r0 1
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_22011
	jump	L_cont_22012
L_else_22011 : 
	addi	r9 r0 4155
	add	r8 r9 r8
	ldi	r8 r8 0
	addi	r9 r0 0
	sti	r7 r2 3
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solve_each_element_2191
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22013
	jump	L_cont_22014
L_else_22013 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2191
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22015
	jump	L_cont_22016
L_else_22015 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2191
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_2195
	subi	r2 r2 5
L_cont_22016 : 
L_cont_22014 : 
L_cont_22012 : 
	jump	L_cont_22010
L_else_22009 : 
	addi	r9 r0 4135
	addi	r10 r0 5042
	add	r8 r10 r8
	ldi	r8 r8 0
	fldi	f2 r9 0
	ldi	r10 r8 5
	fldi	f3 r10 0
	fsub	f2 f2 f3
	fldi	f3 r9 1
	ldi	r10 r8 5
	fldi	f4 r10 1
	fsub	f3 f3 f4
	fldi	f4 r9 2
	ldi	r9 r8 5
	fldi	f5 r9 2
	fsub	f4 f4 f5
	ldi	r9 r8 1
	addi	r10 r0 1
	sti	r7 r2 3
	bne	r9 r10 L_else_22017
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_rect_2062
	subi	r2 r2 5
	jump	L_cont_22018
L_else_22017 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_22019
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_surface_2068
	subi	r2 r2 5
	jump	L_cont_22020
L_else_22019 : 
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_second_2087
	subi	r2 r2 5
L_cont_22020 : 
L_cont_22018 : 
	bne	r4 r0 L_else_22021
	jump	L_cont_22022
L_else_22021 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22023
	addi	r4 r0 0
	jump	L_cont_22024
L_else_22023 : 
	addi	r4 r0 1
L_cont_22024 : 
	bne	r4 r0 L_else_22025
	jump	L_cont_22026
L_else_22025 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22027
	jump	L_cont_22028
L_else_22027 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2191
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22029
	jump	L_cont_22030
L_else_22029 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2191
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22031
	jump	L_cont_22032
L_else_22031 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2191
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_2195
	subi	r2 r2 5
L_cont_22032 : 
L_cont_22030 : 
L_cont_22028 : 
L_cont_22026 : 
L_cont_22022 : 
L_cont_22010 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r7 r6 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22033
	return
L_else_22033 : 
	addi	r8 r0 99
	sti	r4 r2 4
	bne	r7 r8 L_else_22035
	addi	r7 r0 1
	add	r7 r6 r7
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22037
	jump	L_cont_22038
L_else_22037 : 
	addi	r8 r0 4155
	add	r7 r8 r7
	ldi	r7 r7 0
	addi	r8 r0 0
	ldi	r9 r2 0
	sti	r6 r2 5
	add	r6 r0 r9
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 7
	call	L_solve_each_element_2191
	subi	r2 r2 7
	addi	r4 r0 2
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22039
	jump	L_cont_22040
L_else_22039 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 7
	call	L_solve_each_element_2191
	subi	r2 r2 7
	addi	r4 r0 3
	ldi	r5 r2 5
	ldi	r6 r2 0
	addi	r2 r2 7
	call	L_solve_one_or_network_2195
	subi	r2 r2 7
L_cont_22040 : 
L_cont_22038 : 
	jump	L_cont_22036
L_else_22035 : 
	addi	r8 r0 4135
	addi	r9 r0 5042
	add	r7 r9 r7
	ldi	r7 r7 0
	fldi	f2 r8 0
	ldi	r9 r7 5
	fldi	f3 r9 0
	fsub	f2 f2 f3
	fldi	f3 r8 1
	ldi	r9 r7 5
	fldi	f4 r9 1
	fsub	f3 f3 f4
	fldi	f4 r8 2
	ldi	r8 r7 5
	fldi	f5 r8 2
	fsub	f4 f4 f5
	ldi	r8 r7 1
	addi	r9 r0 1
	sti	r6 r2 5
	bne	r8 r9 L_else_22041
	addi	r8 r0 0
	addi	r9 r0 1
	addi	r10 r0 2
	ldi	r11 r2 0
	add	r12 r11 r8
	fldi	f5 r12 0
	fbne	f5 f0 L_else_22043
	addi	r12 r0 1
	jump	L_cont_22044
L_else_22043 : 
	addi	r12 r0 0
L_cont_22044 : 
	bne	r12 r0 L_else_22045
	ldi	r12 r7 4
	ldi	r13 r7 6
	add	r14 r11 r8
	fldi	f5 r14 0
	fbgt	f0 f5 L_else_22047
	addi	r14 r0 0
	jump	L_cont_22048
L_else_22047 : 
	addi	r14 r0 1
L_cont_22048 : 
	xor	r13 r13 r14
	add	r14 r12 r8
	fldi	f5 r14 0
	bne	r13 r0 L_else_22049
	fsub	f5 f0 f5
	jump	L_cont_22050
L_else_22049 : 
	fadd	f5 f0 f5
L_cont_22050 : 
	fsub	f5 f5 f2
	add	r8 r11 r8
	fldi	f6 r8 0
	fdiv	f5 f5 f6
	add	r8 r11 r9
	fldi	f6 r8 0
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fbgt	f0 f6 L_else_22051
	fadd	f6 f0 f6
	jump	L_cont_22052
L_else_22051 : 
	fsub	f6 f0 f6
L_cont_22052 : 
	add	r8 r12 r9
	fldi	f7 r8 0
	fbgt	f7 f6 L_else_22053
	addi	r8 r0 0
	jump	L_cont_22054
L_else_22053 : 
	addi	r8 r0 1
L_cont_22054 : 
	bne	r8 r0 L_else_22055
	addi	r8 r0 0
	jump	L_cont_22056
L_else_22055 : 
	add	r8 r11 r10
	fldi	f6 r8 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_22057
	fadd	f6 f0 f6
	jump	L_cont_22058
L_else_22057 : 
	fsub	f6 f0 f6
L_cont_22058 : 
	add	r8 r12 r10
	fldi	f7 r8 0
	fbgt	f7 f6 L_else_22059
	addi	r8 r0 0
	jump	L_cont_22060
L_else_22059 : 
	addi	r8 r0 1
L_cont_22060 : 
	bne	r8 r0 L_else_22061
	addi	r8 r0 0
	jump	L_cont_22062
L_else_22061 : 
	addi	r8 r0 4145
	fsti	f5 r8 0
	addi	r8 r0 1
L_cont_22062 : 
L_cont_22056 : 
	jump	L_cont_22046
L_else_22045 : 
	addi	r8 r0 0
L_cont_22046 : 
	bne	r8 r0 L_else_22063
	addi	r8 r0 1
	addi	r9 r0 2
	addi	r10 r0 0
	add	r12 r11 r8
	fldi	f5 r12 0
	fbne	f5 f0 L_else_22065
	addi	r12 r0 1
	jump	L_cont_22066
L_else_22065 : 
	addi	r12 r0 0
L_cont_22066 : 
	bne	r12 r0 L_else_22067
	ldi	r12 r7 4
	ldi	r13 r7 6
	add	r14 r11 r8
	fldi	f5 r14 0
	fbgt	f0 f5 L_else_22069
	addi	r14 r0 0
	jump	L_cont_22070
L_else_22069 : 
	addi	r14 r0 1
L_cont_22070 : 
	xor	r13 r13 r14
	add	r14 r12 r8
	fldi	f5 r14 0
	bne	r13 r0 L_else_22071
	fsub	f5 f0 f5
	jump	L_cont_22072
L_else_22071 : 
	fadd	f5 f0 f5
L_cont_22072 : 
	fsub	f5 f5 f3
	add	r8 r11 r8
	fldi	f6 r8 0
	fdiv	f5 f5 f6
	add	r8 r11 r9
	fldi	f6 r8 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_22073
	fadd	f6 f0 f6
	jump	L_cont_22074
L_else_22073 : 
	fsub	f6 f0 f6
L_cont_22074 : 
	add	r8 r12 r9
	fldi	f7 r8 0
	fbgt	f7 f6 L_else_22075
	addi	r8 r0 0
	jump	L_cont_22076
L_else_22075 : 
	addi	r8 r0 1
L_cont_22076 : 
	bne	r8 r0 L_else_22077
	addi	r8 r0 0
	jump	L_cont_22078
L_else_22077 : 
	add	r8 r11 r10
	fldi	f6 r8 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fbgt	f0 f6 L_else_22079
	fadd	f6 f0 f6
	jump	L_cont_22080
L_else_22079 : 
	fsub	f6 f0 f6
L_cont_22080 : 
	add	r8 r12 r10
	fldi	f7 r8 0
	fbgt	f7 f6 L_else_22081
	addi	r8 r0 0
	jump	L_cont_22082
L_else_22081 : 
	addi	r8 r0 1
L_cont_22082 : 
	bne	r8 r0 L_else_22083
	addi	r8 r0 0
	jump	L_cont_22084
L_else_22083 : 
	addi	r8 r0 4145
	fsti	f5 r8 0
	addi	r8 r0 1
L_cont_22084 : 
L_cont_22078 : 
	jump	L_cont_22068
L_else_22067 : 
	addi	r8 r0 0
L_cont_22068 : 
	bne	r8 r0 L_else_22085
	addi	r8 r0 2
	addi	r9 r0 0
	addi	r10 r0 1
	add	r12 r11 r8
	fldi	f5 r12 0
	fbne	f5 f0 L_else_22087
	addi	r12 r0 1
	jump	L_cont_22088
L_else_22087 : 
	addi	r12 r0 0
L_cont_22088 : 
	bne	r12 r0 L_else_22089
	ldi	r12 r7 4
	ldi	r7 r7 6
	add	r13 r11 r8
	fldi	f5 r13 0
	fbgt	f0 f5 L_else_22091
	addi	r13 r0 0
	jump	L_cont_22092
L_else_22091 : 
	addi	r13 r0 1
L_cont_22092 : 
	xor	r7 r7 r13
	add	r13 r12 r8
	fldi	f5 r13 0
	bne	r7 r0 L_else_22093
	fsub	f5 f0 f5
	jump	L_cont_22094
L_else_22093 : 
	fadd	f5 f0 f5
L_cont_22094 : 
	fsub	f4 f5 f4
	add	r7 r11 r8
	fldi	f5 r7 0
	fdiv	f4 f4 f5
	add	r7 r11 r9
	fldi	f5 r7 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fbgt	f0 f2 L_else_22095
	fadd	f2 f0 f2
	jump	L_cont_22096
L_else_22095 : 
	fsub	f2 f0 f2
L_cont_22096 : 
	add	r7 r12 r9
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_22097
	addi	r7 r0 0
	jump	L_cont_22098
L_else_22097 : 
	addi	r7 r0 1
L_cont_22098 : 
	bne	r7 r0 L_else_22099
	addi	r7 r0 0
	jump	L_cont_22100
L_else_22099 : 
	add	r7 r11 r10
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22101
	fadd	f2 f0 f2
	jump	L_cont_22102
L_else_22101 : 
	fsub	f2 f0 f2
L_cont_22102 : 
	add	r7 r12 r10
	fldi	f3 r7 0
	fbgt	f3 f2 L_else_22103
	addi	r7 r0 0
	jump	L_cont_22104
L_else_22103 : 
	addi	r7 r0 1
L_cont_22104 : 
	bne	r7 r0 L_else_22105
	addi	r7 r0 0
	jump	L_cont_22106
L_else_22105 : 
	addi	r7 r0 4145
	fsti	f4 r7 0
	addi	r7 r0 1
L_cont_22106 : 
L_cont_22100 : 
	jump	L_cont_22090
L_else_22089 : 
	addi	r7 r0 0
L_cont_22090 : 
	bne	r7 r0 L_else_22107
	addi	r4 r0 0
	jump	L_cont_22108
L_else_22107 : 
	addi	r4 r0 3
L_cont_22108 : 
	jump	L_cont_22086
L_else_22085 : 
	addi	r4 r0 2
L_cont_22086 : 
	jump	L_cont_22064
L_else_22063 : 
	addi	r4 r0 1
L_cont_22064 : 
	jump	L_cont_22042
L_else_22041 : 
	addi	r9 r0 2
	bne	r8 r9 L_else_22109
	ldi	r7 r7 4
	ldi	r8 r2 0
	fldi	f5 r8 0
	fldi	f6 r7 0
	fmul	f5 f5 f6
	fldi	f6 r8 1
	fldi	f7 r7 1
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fldi	f6 r8 2
	fldi	f7 r7 2
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fbgt	f5 f0 L_else_22111
	addi	r9 r0 0
	jump	L_cont_22112
L_else_22111 : 
	addi	r9 r0 1
L_cont_22112 : 
	bne	r9 r0 L_else_22113
	addi	r4 r0 0
	jump	L_cont_22114
L_else_22113 : 
	addi	r9 r0 4145
	fldi	f6 r7 0
	fmul	f2 f6 f2
	fldi	f6 r7 1
	fmul	f3 f6 f3
	fadd	f2 f2 f3
	fldi	f3 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fdiv	f2 f2 f5
	fsti	f2 r9 0
	addi	r4 r0 1
L_cont_22114 : 
	jump	L_cont_22110
L_else_22109 : 
	ldi	r8 r2 0
	fldi	f5 r8 0
	fldi	f6 r8 1
	fldi	f7 r8 2
	fsti	f4 r2 6
	fsti	f3 r2 8
	sti	r7 r2 10
	fsti	f2 r2 12
	add	r4 r0 r7
	fadd	f4 f0 f7
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 15
	call	L_quadratic_2074
	subi	r2 r2 15
	fbne	f2 f0 L_else_22116
	addi	r4 r0 1
	jump	L_cont_22117
L_else_22116 : 
	addi	r4 r0 0
L_cont_22117 : 
	bne	r4 r0 L_else_22118
	ldi	r4 r2 0
	fldi	f3 r4 0
	fldi	f4 r4 1
	fldi	f5 r4 2
	fldi	f6 r2 12
	fmul	f7 f3 f6
	ldi	r5 r2 10
	ldi	r6 r5 4
	fldi	f8 r6 0
	fmul	f7 f7 f8
	fldi	f8 r2 8
	fmul	f9 f4 f8
	ldi	r6 r5 4
	fldi	f10 r6 1
	fmul	f9 f9 f10
	fadd	f7 f7 f9
	fldi	f9 r2 6
	fmul	f10 f5 f9
	ldi	r6 r5 4
	fldi	f11 r6 2
	fmul	f10 f10 f11
	fadd	f7 f7 f10
	ldi	r6 r5 3
	bne	r6 r0 L_else_22120
	fadd	f3 f0 f7
	jump	L_cont_22121
L_else_22120 : 
	fmul	f10 f5 f8
	fmul	f11 f4 f9
	fadd	f10 f10 f11
	ldi	r6 r5 9
	fldi	f11 r6 0
	fmul	f10 f10 f11
	fmul	f11 f3 f9
	fmul	f5 f5 f6
	fadd	f5 f11 f5
	ldi	r6 r5 9
	fldi	f11 r6 1
	fmul	f5 f5 f11
	fadd	f5 f10 f5
	fmul	f3 f3 f8
	fmul	f4 f4 f6
	fadd	f3 f3 f4
	ldi	r6 r5 9
	fldi	f4 r6 2
	fmul	f3 f3 f4
	fadd	f3 f5 f3
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fadd	f3 f7 f3
L_cont_22121 : 
	fsti	f2 r2 14
	fsti	f3 r2 16
	add	r4 r0 r5
	fadd	f4 f0 f9
	fadd	f3 f0 f8
	fadd	f2 f0 f6
	addi	r2 r2 19
	call	L_quadratic_2074
	subi	r2 r2 19
	ldi	r4 r2 10
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_22122
	fldi	f3 r0 39
	fsub	f2 f2 f3
	jump	L_cont_22123
L_else_22122 : 
	fadd	f2 f0 f2
L_cont_22123 : 
	fldi	f3 r2 16
	fmul	f4 f3 f3
	fldi	f5 r2 14
	fmul	f2 f5 f2
	fsub	f2 f4 f2
	fbgt	f2 f0 L_else_22124
	addi	r5 r0 0
	jump	L_cont_22125
L_else_22124 : 
	addi	r5 r0 1
L_cont_22125 : 
	bne	r5 r0 L_else_22126
	addi	r4 r0 0
	jump	L_cont_22127
L_else_22126 : 
	fldi	f4 r0 29
	fldi	f6 r0 39
	fbgt	f2 f6 L_else_22128
	fldi	f6 r0 39
	jump	L_cont_22129
L_else_22128 : 
	fldi	f6 r0 39
	fdiv	f6 f6 f2
L_cont_22129 : 
	fldi	f7 r0 31
	fmul	f7 f7 f6
	fsub	f4 f6 f4
	fbgt	f0 f4 L_else_22130
	fadd	f4 f0 f4
	jump	L_cont_22131
L_else_22130 : 
	fsub	f4 f0 f4
L_cont_22131 : 
	fsti	f2 r2 18
	fbgt	f7 f4 L_else_22132
	fldi	f4 r0 30
	fmul	f7 f2 f6
	fmul	f7 f7 f6
	fsub	f4 f4 f7
	fmul	f4 f6 f4
	fldi	f7 r0 29
	fdiv	f4 f4 f7
	fadd	f3 f0 f6
	addi	r2 r2 21
	call	L_isqrt_1892
	subi	r2 r2 21
	jump	L_cont_22133
L_else_22132 : 
	fadd	f2 f0 f6
L_cont_22133 : 
	fldi	f3 r2 18
	fmul	f2 f3 f2
	ldi	r4 r2 10
	ldi	r4 r4 6
	bne	r4 r0 L_else_22134
	fsub	f2 f0 f2
	jump	L_cont_22135
L_else_22134 : 
	fadd	f2 f0 f2
L_cont_22135 : 
	addi	r4 r0 4145
	fldi	f3 r2 16
	fsub	f2 f2 f3
	fldi	f3 r2 14
	fdiv	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 1
L_cont_22127 : 
	jump	L_cont_22119
L_else_22118 : 
	addi	r4 r0 0
L_cont_22119 : 
L_cont_22110 : 
L_cont_22042 : 
	bne	r4 r0 L_else_22136
	jump	L_cont_22137
L_else_22136 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22138
	addi	r4 r0 0
	jump	L_cont_22139
L_else_22138 : 
	addi	r4 r0 1
L_cont_22139 : 
	bne	r4 r0 L_else_22140
	jump	L_cont_22141
L_else_22140 : 
	addi	r4 r0 1
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22142
	jump	L_cont_22143
L_else_22142 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 21
	call	L_solve_each_element_2191
	subi	r2 r2 21
	addi	r4 r0 2
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22144
	jump	L_cont_22145
L_else_22144 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 21
	call	L_solve_each_element_2191
	subi	r2 r2 21
	addi	r4 r0 3
	ldi	r5 r2 5
	ldi	r6 r2 0
	addi	r2 r2 21
	call	L_solve_one_or_network_2195
	subi	r2 r2 21
L_cont_22145 : 
L_cont_22143 : 
L_cont_22141 : 
L_cont_22137 : 
L_cont_22036 : 
	ldi	r4 r2 4
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_2199
L_solve_each_element_fast_2205 : 
	ldi	r7 r6 0
	add	r8 r5 r4
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_22146
	return
L_else_22146 : 
	addi	r9 r0 5042
	add	r9 r9 r8
	ldi	r9 r9 0
	ldi	r10 r9 10
	fldi	f2 r10 0
	fldi	f3 r10 1
	fldi	f4 r10 2
	ldi	r11 r6 1
	add	r11 r11 r8
	ldi	r11 r11 0
	ldi	r12 r9 1
	addi	r13 r0 1
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	sti	r4 r2 3
	sti	r8 r2 4
	bne	r12 r13 L_else_22148
	ldi	r10 r6 0
	add	r6 r0 r11
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_solver_rect_fast_2097
	subi	r2 r2 6
	jump	L_cont_22149
L_else_22148 : 
	addi	r13 r0 2
	bne	r12 r13 L_else_22150
	fldi	f2 r11 0
	fbgt	f0 f2 L_else_22152
	addi	r9 r0 0
	jump	L_cont_22153
L_else_22152 : 
	addi	r9 r0 1
L_cont_22153 : 
	bne	r9 r0 L_else_22154
	addi	r4 r0 0
	jump	L_cont_22155
L_else_22154 : 
	addi	r9 r0 4145
	fldi	f2 r11 0
	fldi	f3 r10 3
	fmul	f2 f2 f3
	fsti	f2 r9 0
	addi	r4 r0 1
L_cont_22155 : 
	jump	L_cont_22151
L_else_22150 : 
	add	r6 r0 r10
	add	r5 r0 r11
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_solver_second_fast2_2127
	subi	r2 r2 6
L_cont_22151 : 
L_cont_22149 : 
	bne	r4 r0 L_else_22156
	addi	r4 r0 5042
	ldi	r5 r2 4
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22157
	return
L_else_22157 : 
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 2
	ldi	r6 r2 1
	jump	L_solve_each_element_fast_2205
L_else_22156 : 
	addi	r5 r0 4145
	fldi	f2 r5 0
	fbgt	f2 f0 L_else_22159
	addi	r5 r0 0
	jump	L_cont_22160
L_else_22159 : 
	addi	r5 r0 1
L_cont_22160 : 
	bne	r5 r0 L_else_22161
	jump	L_cont_22162
L_else_22161 : 
	addi	r5 r0 4154
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_22163
	addi	r5 r0 0
	jump	L_cont_22164
L_else_22163 : 
	addi	r5 r0 1
L_cont_22164 : 
	bne	r5 r0 L_else_22165
	jump	L_cont_22166
L_else_22165 : 
	fldi	f3 r0 24
	fadd	f2 f2 f3
	ldi	r5 r2 0
	fldi	f3 r5 0
	fmul	f3 f3 f2
	addi	r6 r0 4138
	fldi	f4 r6 0
	fadd	f3 f3 f4
	fldi	f4 r5 1
	fmul	f4 f4 f2
	addi	r6 r0 4138
	fldi	f5 r6 1
	fadd	f4 f4 f5
	fldi	f5 r5 2
	fmul	f5 f5 f2
	addi	r5 r0 4138
	fldi	f6 r5 2
	fadd	f5 f5 f6
	addi	r5 r0 0
	ldi	r6 r2 2
	add	r5 r6 r5
	ldi	r5 r5 0
	addi	r7 r0 -1
	sti	r4 r2 5
	fsti	f5 r2 6
	fsti	f4 r2 8
	fsti	f3 r2 10
	fsti	f2 r2 12
	bne	r5 r7 L_else_22167
	addi	r4 r0 1
	jump	L_cont_22168
L_else_22167 : 
	addi	r7 r0 5042
	add	r5 r7 r5
	ldi	r5 r5 0
	add	r4 r0 r5
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 15
	call	L_is_outside_2171
	subi	r2 r2 15
	bne	r4 r0 L_else_22169
	addi	r4 r0 1
	fldi	f2 r2 10
	fldi	f3 r2 8
	fldi	f4 r2 6
	ldi	r5 r2 2
	addi	r2 r2 15
	call	L_check_all_inside_2176
	subi	r2 r2 15
	jump	L_cont_22170
L_else_22169 : 
	addi	r4 r0 0
L_cont_22170 : 
L_cont_22168 : 
	bne	r4 r0 L_else_22171
	jump	L_cont_22172
L_else_22171 : 
	addi	r4 r0 4154
	fldi	f2 r2 12
	fsti	f2 r4 0
	addi	r4 r0 4114
	fldi	f2 r2 10
	fsti	f2 r4 0
	fldi	f2 r2 8
	fsti	f2 r4 1
	fldi	f2 r2 6
	fsti	f2 r4 2
	addi	r4 r0 4117
	ldi	r5 r2 4
	sti	r5 r4 0
	addi	r4 r0 4146
	ldi	r5 r2 5
	sti	r5 r4 0
L_cont_22172 : 
L_cont_22166 : 
L_cont_22162 : 
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 2
	ldi	r6 r2 1
	jump	L_solve_each_element_fast_2205
L_solve_one_or_network_fast_2209 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22173
	return
L_else_22173 : 
	addi	r8 r0 4155
	add	r7 r8 r7
	ldi	r7 r7 0
	addi	r8 r0 0
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 4
	call	L_solve_each_element_fast_2205
	subi	r2 r2 4
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22175
	return
L_else_22175 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 3
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	subi	r2 r2 5
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22177
	return
L_else_22177 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 4
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 6
	call	L_solve_each_element_fast_2205
	subi	r2 r2 6
	ldi	r4 r2 4
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22179
	return
L_else_22179 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 5
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 7
	call	L_solve_each_element_fast_2205
	subi	r2 r2 7
	ldi	r4 r2 5
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_one_or_network_fast_2209
L_trace_or_matrix_fast_2213 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	ldi	r8 r7 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_22181
	return
L_else_22181 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_22183
	addi	r8 r0 1
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_22185
	jump	L_cont_22186
L_else_22185 : 
	addi	r9 r0 4155
	add	r8 r9 r8
	ldi	r8 r8 0
	addi	r9 r0 0
	sti	r7 r2 3
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22187
	jump	L_cont_22188
L_else_22187 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22189
	jump	L_cont_22190
L_else_22189 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_fast_2209
	subi	r2 r2 5
L_cont_22190 : 
L_cont_22188 : 
L_cont_22186 : 
	jump	L_cont_22184
L_else_22183 : 
	addi	r9 r0 5042
	add	r9 r9 r8
	ldi	r9 r9 0
	ldi	r10 r9 10
	fldi	f2 r10 0
	fldi	f3 r10 1
	fldi	f4 r10 2
	ldi	r11 r6 1
	add	r8 r11 r8
	ldi	r8 r8 0
	ldi	r11 r9 1
	addi	r12 r0 1
	sti	r7 r2 3
	bne	r11 r12 L_else_22191
	ldi	r10 r6 0
	add	r6 r0 r8
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_rect_fast_2097
	subi	r2 r2 5
	jump	L_cont_22192
L_else_22191 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_22193
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_22195
	addi	r9 r0 0
	jump	L_cont_22196
L_else_22195 : 
	addi	r9 r0 1
L_cont_22196 : 
	bne	r9 r0 L_else_22197
	addi	r4 r0 0
	jump	L_cont_22198
L_else_22197 : 
	addi	r9 r0 4145
	fldi	f2 r8 0
	fldi	f3 r10 3
	fmul	f2 f2 f3
	fsti	f2 r9 0
	addi	r4 r0 1
L_cont_22198 : 
	jump	L_cont_22194
L_else_22193 : 
	add	r6 r0 r10
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_second_fast2_2127
	subi	r2 r2 5
L_cont_22194 : 
L_cont_22192 : 
	bne	r4 r0 L_else_22199
	jump	L_cont_22200
L_else_22199 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22201
	addi	r4 r0 0
	jump	L_cont_22202
L_else_22201 : 
	addi	r4 r0 1
L_cont_22202 : 
	bne	r4 r0 L_else_22203
	jump	L_cont_22204
L_else_22203 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22205
	jump	L_cont_22206
L_else_22205 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22207
	jump	L_cont_22208
L_else_22207 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22209
	jump	L_cont_22210
L_else_22209 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_fast_2209
	subi	r2 r2 5
L_cont_22210 : 
L_cont_22208 : 
L_cont_22206 : 
L_cont_22204 : 
L_cont_22200 : 
L_cont_22184 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r7 r6 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22211
	return
L_else_22211 : 
	addi	r8 r0 99
	sti	r4 r2 4
	bne	r7 r8 L_else_22213
	addi	r7 r0 1
	add	r7 r6 r7
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22215
	jump	L_cont_22216
L_else_22215 : 
	addi	r8 r0 4155
	add	r7 r8 r7
	ldi	r7 r7 0
	addi	r8 r0 0
	ldi	r9 r2 0
	sti	r6 r2 5
	add	r6 r0 r9
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 7
	call	L_solve_each_element_fast_2205
	subi	r2 r2 7
	addi	r4 r0 2
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22217
	jump	L_cont_22218
L_else_22217 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 7
	call	L_solve_each_element_fast_2205
	subi	r2 r2 7
	addi	r4 r0 3
	ldi	r5 r2 5
	ldi	r6 r2 0
	addi	r2 r2 7
	call	L_solve_one_or_network_fast_2209
	subi	r2 r2 7
L_cont_22218 : 
L_cont_22216 : 
	jump	L_cont_22214
L_else_22213 : 
	ldi	r8 r2 0
	sti	r6 r2 5
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 7
	call	L_solver_fast2_2134
	subi	r2 r2 7
	bne	r4 r0 L_else_22219
	jump	L_cont_22220
L_else_22219 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22221
	addi	r4 r0 0
	jump	L_cont_22222
L_else_22221 : 
	addi	r4 r0 1
L_cont_22222 : 
	bne	r4 r0 L_else_22223
	jump	L_cont_22224
L_else_22223 : 
	addi	r4 r0 1
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22225
	jump	L_cont_22226
L_else_22225 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 7
	call	L_solve_each_element_fast_2205
	subi	r2 r2 7
	addi	r4 r0 2
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22227
	jump	L_cont_22228
L_else_22227 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 7
	call	L_solve_each_element_fast_2205
	subi	r2 r2 7
	addi	r4 r0 3
	ldi	r5 r2 5
	ldi	r6 r2 0
	addi	r2 r2 7
	call	L_solve_one_or_network_fast_2209
	subi	r2 r2 7
L_cont_22228 : 
L_cont_22226 : 
L_cont_22224 : 
L_cont_22220 : 
L_cont_22214 : 
	ldi	r4 r2 4
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_fast_2213
L_get_nvector_second_2223 : 
	addi	r5 r0 4114
	fldi	f2 r5 0
	ldi	r5 r4 5
	fldi	f3 r5 0
	fsub	f2 f2 f3
	addi	r5 r0 4114
	fldi	f3 r5 1
	ldi	r5 r4 5
	fldi	f4 r5 1
	fsub	f3 f3 f4
	addi	r5 r0 4114
	fldi	f4 r5 2
	ldi	r5 r4 5
	fldi	f5 r5 2
	fsub	f4 f4 f5
	ldi	r5 r4 4
	fldi	f5 r5 0
	fmul	f5 f2 f5
	ldi	r5 r4 4
	fldi	f6 r5 1
	fmul	f6 f3 f6
	ldi	r5 r4 4
	fldi	f7 r5 2
	fmul	f7 f4 f7
	ldi	r5 r4 3
	bne	r5 r0 L_else_22229
	addi	r5 r0 4118
	fsti	f5 r5 0
	addi	r5 r0 4118
	fsti	f6 r5 1
	addi	r5 r0 4118
	fsti	f7 r5 2
	jump	L_cont_22230
L_else_22229 : 
	addi	r5 r0 4118
	ldi	r6 r4 9
	fldi	f8 r6 2
	fmul	f8 f3 f8
	ldi	r6 r4 9
	fldi	f9 r6 1
	fmul	f9 f4 f9
	fadd	f8 f8 f9
	fldi	f9 r0 29
	fdiv	f8 f8 f9
	fadd	f5 f5 f8
	fsti	f5 r5 0
	addi	r5 r0 4118
	ldi	r6 r4 9
	fldi	f5 r6 2
	fmul	f5 f2 f5
	ldi	r6 r4 9
	fldi	f8 r6 0
	fmul	f4 f4 f8
	fadd	f4 f5 f4
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	fadd	f4 f6 f4
	fsti	f4 r5 1
	addi	r5 r0 4118
	ldi	r6 r4 9
	fldi	f4 r6 1
	fmul	f2 f2 f4
	ldi	r6 r4 9
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 29
	fdiv	f2 f2 f3
	fadd	f2 f7 f2
	fsti	f2 r5 2
L_cont_22230 : 
	addi	r5 r0 4118
	ldi	r4 r4 6
	fldi	f2 r5 0
	fmul	f2 f2 f2
	fldi	f3 r5 1
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	fldi	f3 r5 2
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	fldi	f3 r0 29
	fldi	f4 r0 39
	fbgt	f2 f4 L_else_22231
	fldi	f4 r0 39
	jump	L_cont_22232
L_else_22231 : 
	fldi	f4 r0 39
	fdiv	f4 f4 f2
L_cont_22232 : 
	fldi	f5 r0 31
	fmul	f5 f5 f4
	fsub	f3 f4 f3
	fbgt	f0 f3 L_else_22233
	fadd	f3 f0 f3
	jump	L_cont_22234
L_else_22233 : 
	fsub	f3 f0 f3
L_cont_22234 : 
	sti	r5 r2 0
	sti	r4 r2 1
	fsti	f2 r2 2
	fbgt	f5 f3 L_else_22235
	fldi	f3 r0 30
	fmul	f5 f2 f4
	fmul	f5 f5 f4
	fsub	f3 f3 f5
	fmul	f3 f4 f3
	fldi	f5 r0 29
	fdiv	f3 f3 f5
	fadd	f1 f0 f4
	fadd	f4 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 5
	call	L_isqrt_1892
	subi	r2 r2 5
	jump	L_cont_22236
L_else_22235 : 
	fadd	f2 f0 f4
L_cont_22236 : 
	fldi	f3 r2 2
	fmul	f2 f3 f2
	fbne	f2 f0 L_else_22237
	addi	r4 r0 1
	jump	L_cont_22238
L_else_22237 : 
	addi	r4 r0 0
L_cont_22238 : 
	bne	r4 r0 L_else_22239
	ldi	r4 r2 1
	bne	r4 r0 L_else_22241
	fldi	f3 r0 39
	fdiv	f2 f3 f2
	jump	L_cont_22242
L_else_22241 : 
	fldi	f3 r0 28
	fdiv	f2 f3 f2
L_cont_22242 : 
	jump	L_cont_22240
L_else_22239 : 
	fldi	f2 r0 39
L_cont_22240 : 
	ldi	r4 r2 0
	fldi	f3 r4 0
	fmul	f3 f3 f2
	fsti	f3 r4 0
	fldi	f3 r4 1
	fmul	f3 f3 f2
	fsti	f3 r4 1
	fldi	f3 r4 2
	fmul	f2 f3 f2
	fsti	f2 r4 2
	return
L_utexture_2228 : 
	ldi	r6 r4 0
	addi	r7 r0 4121
	ldi	r8 r4 8
	fldi	f2 r8 0
	fsti	f2 r7 0
	addi	r7 r0 4121
	ldi	r8 r4 8
	fldi	f2 r8 1
	fsti	f2 r7 1
	addi	r7 r0 4121
	ldi	r8 r4 8
	fldi	f2 r8 2
	fsti	f2 r7 2
	addi	r7 r0 1
	bne	r6 r7 L_else_22244
	fldi	f2 r5 0
	ldi	r6 r4 5
	fldi	f3 r6 0
	fsub	f2 f2 f3
	fldi	f3 r0 13
	fmul	f3 f2 f3
	flr	f3 f3
	fldi	f4 r0 12
	fmul	f3 f3 f4
	fsub	f2 f2 f3
	fldi	f3 r0 15
	fbgt	f3 f2 L_else_22245
	addi	r6 r0 0
	jump	L_cont_22246
L_else_22245 : 
	addi	r6 r0 1
L_cont_22246 : 
	fldi	f2 r5 2
	ldi	r4 r4 5
	fldi	f3 r4 2
	fsub	f2 f2 f3
	fldi	f3 r0 13
	fmul	f3 f2 f3
	flr	f3 f3
	fldi	f4 r0 12
	fmul	f3 f3 f4
	fsub	f2 f2 f3
	fldi	f3 r0 15
	fbgt	f3 f2 L_else_22247
	addi	r4 r0 0
	jump	L_cont_22248
L_else_22247 : 
	addi	r4 r0 1
L_cont_22248 : 
	addi	r5 r0 4121
	bne	r6 r0 L_else_22249
	bne	r4 r0 L_else_22251
	fldi	f2 r0 17
	jump	L_cont_22252
L_else_22251 : 
	fldi	f2 r0 27
L_cont_22252 : 
	jump	L_cont_22250
L_else_22249 : 
	bne	r4 r0 L_else_22253
	fldi	f2 r0 27
	jump	L_cont_22254
L_else_22253 : 
	fldi	f2 r0 17
L_cont_22254 : 
L_cont_22250 : 
	fsti	f2 r5 1
	return
L_else_22244 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_22256
	fldi	f2 r5 1
	fldi	f3 r0 14
	fmul	f2 f2 f3
	fldi	f3 r0 57
	fldi	f4 r0 56
	fbgt	f2 f4 L_else_22257
	fldi	f5 r0 55
	fbgt	f5 f2 L_else_22259
	fldi	f3 r0 54
	fldi	f5 r0 53
	fldi	f6 r0 52
	fbgt	f2 f0 L_else_22261
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_22263
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	jump	L_cont_22264
L_else_22263 : 
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_22265
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	jump	L_cont_22266
L_else_22265 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
L_cont_22266 : 
L_cont_22264 : 
	jump	L_cont_22262
L_else_22261 : 
	fbgt	f2 f3 L_else_22267
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	jump	L_cont_22268
L_else_22267 : 
	fbgt	f2 f6 L_else_22269
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 45
	fmul	f7 f8 f7
	fldi	f8 r0 44
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 43
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 42
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 41
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 40
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 39
	fadd	f2 f2 f3
	jump	L_cont_22270
L_else_22269 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 51
	fmul	f3 f9 f3
	fldi	f9 r0 50
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 48
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 47
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 46
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
L_cont_22270 : 
L_cont_22268 : 
L_cont_22262 : 
	jump	L_cont_22260
L_else_22259 : 
	fadd	f2 f2 f3
	addi	r2 r2 1
	call	L_sin_1886
	subi	r2 r2 1
L_cont_22260 : 
	jump	L_cont_22258
L_else_22257 : 
	fsub	f2 f2 f3
	addi	r2 r2 1
	call	L_sin_1886
	subi	r2 r2 1
L_cont_22258 : 
	fmul	f2 f2 f2
	addi	r4 r0 4121
	fldi	f3 r0 17
	fmul	f3 f3 f2
	fsti	f3 r4 0
	addi	r4 r0 4121
	fldi	f3 r0 17
	fldi	f4 r0 39
	fsub	f2 f4 f2
	fmul	f2 f3 f2
	fsti	f2 r4 1
	return
L_else_22256 : 
	addi	r7 r0 3
	bne	r6 r7 L_else_22272
	fldi	f2 r5 0
	ldi	r6 r4 5
	fldi	f3 r6 0
	fsub	f2 f2 f3
	fldi	f3 r5 2
	ldi	r4 r4 5
	fldi	f4 r4 2
	fsub	f3 f3 f4
	fmul	f2 f2 f2
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	fldi	f3 r0 29
	fldi	f4 r0 39
	fbgt	f2 f4 L_else_22273
	fldi	f4 r0 39
	jump	L_cont_22274
L_else_22273 : 
	fldi	f4 r0 39
	fdiv	f4 f4 f2
L_cont_22274 : 
	fsti	f2 r2 0
	addi	r2 r2 3
	call	L_isqrt_1892
	subi	r2 r2 3
	fldi	f3 r2 0
	fmul	f2 f3 f2
	fldi	f3 r0 15
	fdiv	f2 f2 f3
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 19
	fmul	f2 f2 f3
	addi	r2 r2 3
	call	L_cos_1888
	subi	r2 r2 3
	fmul	f2 f2 f2
	addi	r4 r0 4121
	fldi	f3 r0 17
	fmul	f3 f2 f3
	fsti	f3 r4 1
	addi	r4 r0 4121
	fldi	f3 r0 39
	fsub	f2 f3 f2
	fldi	f3 r0 17
	fmul	f2 f2 f3
	fsti	f2 r4 2
	return
L_else_22272 : 
	addi	r7 r0 4
	bne	r6 r7 L_else_22276
	fldi	f2 r5 0
	ldi	r6 r4 5
	fldi	f3 r6 0
	fsub	f2 f2 f3
	ldi	r6 r4 4
	fldi	f3 r6 0
	fldi	f4 r0 29
	fldi	f5 r0 39
	fbgt	f3 f5 L_else_22277
	fldi	f5 r0 39
	jump	L_cont_22278
L_else_22277 : 
	fldi	f5 r0 39
	fdiv	f5 f5 f3
L_cont_22278 : 
	sti	r4 r2 2
	sti	r5 r2 3
	fsti	f2 r2 4
	fsti	f3 r2 6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 9
	call	L_isqrt_1892
	subi	r2 r2 9
	fldi	f3 r2 6
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fmul	f2 f3 f2
	ldi	r4 r2 3
	fldi	f3 r4 2
	ldi	r5 r2 2
	ldi	r6 r5 5
	fldi	f4 r6 2
	fsub	f3 f3 f4
	ldi	r6 r5 4
	fldi	f4 r6 2
	fldi	f5 r0 29
	fldi	f6 r0 39
	fbgt	f4 f6 L_else_22279
	fldi	f6 r0 39
	jump	L_cont_22280
L_else_22279 : 
	fldi	f6 r0 39
	fdiv	f6 f6 f4
L_cont_22280 : 
	fsti	f2 r2 8
	fsti	f3 r2 10
	fsti	f4 r2 12
	fadd	f3 f0 f5
	fadd	f2 f0 f4
	fadd	f4 f0 f6
	addi	r2 r2 15
	call	L_isqrt_1892
	subi	r2 r2 15
	fldi	f3 r2 12
	fmul	f2 f3 f2
	fldi	f3 r2 10
	fmul	f2 f3 f2
	fldi	f3 r2 8
	fmul	f4 f3 f3
	fmul	f5 f2 f2
	fadd	f4 f4 f5
	fbgt	f0 f3 L_else_22281
	fadd	f5 f0 f3
	jump	L_cont_22282
L_else_22281 : 
	fsub	f5 f0 f3
L_cont_22282 : 
	fldi	f6 r0 22
	fbgt	f6 f5 L_else_22283
	addi	r4 r0 0
	jump	L_cont_22284
L_else_22283 : 
	addi	r4 r0 1
L_cont_22284 : 
	fsti	f4 r2 14
	bne	r4 r0 L_else_22285
	fdiv	f2 f2 f3
	fbgt	f0 f2 L_else_22287
	fadd	f2 f0 f2
	jump	L_cont_22288
L_else_22287 : 
	fsub	f2 f0 f2
L_cont_22288 : 
	addi	r2 r2 17
	call	L_atan_1890
	subi	r2 r2 17
	fldi	f3 r0 20
	fmul	f2 f2 f3
	fldi	f3 r0 19
	fdiv	f2 f2 f3
	jump	L_cont_22286
L_else_22285 : 
	fldi	f2 r0 21
L_cont_22286 : 
	flr	f3 f2
	fsub	f2 f2 f3
	ldi	r4 r2 3
	fldi	f3 r4 1
	ldi	r4 r2 2
	ldi	r5 r4 5
	fldi	f4 r5 1
	fsub	f3 f3 f4
	ldi	r4 r4 4
	fldi	f4 r4 1
	fldi	f5 r0 29
	fldi	f6 r0 39
	fbgt	f4 f6 L_else_22289
	fldi	f6 r0 39
	jump	L_cont_22290
L_else_22289 : 
	fldi	f6 r0 39
	fdiv	f6 f6 f4
L_cont_22290 : 
	fsti	f2 r2 16
	fsti	f3 r2 18
	fsti	f4 r2 20
	fadd	f3 f0 f5
	fadd	f2 f0 f4
	fadd	f4 f0 f6
	addi	r2 r2 23
	call	L_isqrt_1892
	subi	r2 r2 23
	fldi	f3 r2 20
	fmul	f2 f3 f2
	fldi	f3 r2 18
	fmul	f2 f3 f2
	fldi	f3 r2 14
	fbgt	f0 f3 L_else_22291
	fadd	f4 f0 f3
	jump	L_cont_22292
L_else_22291 : 
	fsub	f4 f0 f3
L_cont_22292 : 
	fldi	f5 r0 22
	fbgt	f5 f4 L_else_22293
	addi	r4 r0 0
	jump	L_cont_22294
L_else_22293 : 
	addi	r4 r0 1
L_cont_22294 : 
	bne	r4 r0 L_else_22295
	fdiv	f2 f2 f3
	fbgt	f0 f2 L_else_22297
	fadd	f2 f0 f2
	jump	L_cont_22298
L_else_22297 : 
	fsub	f2 f0 f2
L_cont_22298 : 
	addi	r2 r2 23
	call	L_atan_1890
	subi	r2 r2 23
	fldi	f3 r0 20
	fmul	f2 f2 f3
	fldi	f3 r0 19
	fdiv	f2 f2 f3
	jump	L_cont_22296
L_else_22295 : 
	fldi	f2 r0 21
L_cont_22296 : 
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 18
	fldi	f4 r0 40
	fldi	f5 r2 16
	fsub	f4 f4 f5
	fmul	f4 f4 f4
	fsub	f3 f3 f4
	fldi	f4 r0 40
	fsub	f2 f4 f2
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fbgt	f0 f2 L_else_22299
	addi	r4 r0 0
	jump	L_cont_22300
L_else_22299 : 
	addi	r4 r0 1
L_cont_22300 : 
	bne	r4 r0 L_else_22301
	fadd	f2 f0 f2
	jump	L_cont_22302
L_else_22301 : 
	fldi	f2 r0 27
L_cont_22302 : 
	addi	r4 r0 4121
	fldi	f3 r0 17
	fmul	f2 f3 f2
	fldi	f3 r0 16
	fdiv	f2 f2 f3
	fsti	f2 r4 2
	return
L_else_22276 : 
	return
L_trace_reflections_2235 : 
	bgt	r0 r4 L_else_22305
	addi	r6 r0 4257
	add	r6 r6 r4
	ldi	r6 r6 0
	ldi	r7 r6 1
	addi	r8 r0 4154
	fldi	f4 r0 11
	fsti	f4 r8 0
	addi	r8 r0 0
	addi	r9 r0 4255
	ldi	r9 r9 0
	sti	r4 r2 0
	fsti	f3 r2 2
	sti	r5 r2 4
	fsti	f2 r2 6
	sti	r7 r2 8
	sti	r6 r2 9
	add	r6 r0 r7
	add	r5 r0 r9
	add	r4 r0 r8
	addi	r2 r2 11
	call	L_trace_or_matrix_fast_2213
	subi	r2 r2 11
	addi	r4 r0 4154
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_22308
	addi	r4 r0 0
	jump	L_cont_22309
L_else_22308 : 
	addi	r4 r0 1
L_cont_22309 : 
	bne	r4 r0 L_else_22310
	addi	r4 r0 0
	jump	L_cont_22311
L_else_22310 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_22312
	addi	r4 r0 0
	jump	L_cont_22313
L_else_22312 : 
	addi	r4 r0 1
L_cont_22313 : 
L_cont_22311 : 
	bne	r4 r0 L_else_22314
	jump	L_cont_22315
L_else_22314 : 
	addi	r4 r0 4117
	ldi	r4 r4 0
	addi	r5 r0 4
	mul	r4 r4 r5
	addi	r5 r0 4146
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r5 r2 9
	ldi	r6 r5 0
	bne	r4 r6 L_else_22316
	addi	r4 r0 0
	addi	r6 r0 4255
	ldi	r6 r6 0
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_shadow_check_one_or_matrix_2188
	subi	r2 r2 11
	bne	r4 r0 L_else_22318
	addi	r4 r0 4118
	ldi	r5 r2 8
	ldi	r6 r5 0
	fldi	f2 r4 0
	fldi	f3 r6 0
	fmul	f2 f2 f3
	fldi	f3 r4 1
	fldi	f4 r6 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r4 2
	fldi	f4 r6 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	ldi	r4 r2 9
	fldi	f3 r4 2
	fldi	f4 r2 6
	fmul	f5 f3 f4
	fmul	f2 f5 f2
	ldi	r4 r5 0
	ldi	r5 r2 4
	fldi	f5 r5 0
	fldi	f6 r4 0
	fmul	f5 f5 f6
	fldi	f6 r5 1
	fldi	f7 r4 1
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fldi	f6 r5 2
	fldi	f7 r4 2
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fmul	f3 f3 f5
	fbgt	f2 f0 L_else_22320
	addi	r4 r0 0
	jump	L_cont_22321
L_else_22320 : 
	addi	r4 r0 1
L_cont_22321 : 
	bne	r4 r0 L_else_22322
	jump	L_cont_22323
L_else_22322 : 
	addi	r4 r0 4127
	addi	r6 r0 4121
	fldi	f5 r4 0
	fldi	f6 r6 0
	fmul	f6 f2 f6
	fadd	f5 f5 f6
	fsti	f5 r4 0
	fldi	f5 r4 1
	fldi	f6 r6 1
	fmul	f6 f2 f6
	fadd	f5 f5 f6
	fsti	f5 r4 1
	fldi	f5 r4 2
	fldi	f6 r6 2
	fmul	f2 f2 f6
	fadd	f2 f5 f2
	fsti	f2 r4 2
L_cont_22323 : 
	fbgt	f3 f0 L_else_22324
	addi	r4 r0 0
	jump	L_cont_22325
L_else_22324 : 
	addi	r4 r0 1
L_cont_22325 : 
	bne	r4 r0 L_else_22326
	jump	L_cont_22327
L_else_22326 : 
	fmul	f2 f3 f3
	fmul	f2 f2 f2
	fldi	f3 r2 2
	fmul	f2 f2 f3
	addi	r4 r0 4127
	addi	r6 r0 4127
	fldi	f5 r6 0
	fadd	f5 f5 f2
	fsti	f5 r4 0
	addi	r4 r0 4127
	addi	r6 r0 4127
	fldi	f5 r6 1
	fadd	f5 f5 f2
	fsti	f5 r4 1
	addi	r4 r0 4127
	addi	r6 r0 4127
	fldi	f5 r6 2
	fadd	f2 f5 f2
	fsti	f2 r4 2
L_cont_22327 : 
	jump	L_cont_22319
L_else_22318 : 
L_cont_22319 : 
	jump	L_cont_22317
L_else_22316 : 
L_cont_22317 : 
L_cont_22315 : 
	ldi	r4 r2 0
	addi	r4 r4 -1
	fldi	f2 r2 6
	fldi	f3 r2 2
	ldi	r5 r2 4
	jump	L_trace_reflections_2235
L_else_22305 : 
	return
L_trace_ray_2240 : 
	addi	r7 r0 4
	bgt	r4 r7 L_else_22329
	ldi	r7 r6 2
	addi	r8 r0 4154
	fldi	f4 r0 11
	fsti	f4 r8 0
	addi	r8 r0 0
	addi	r9 r0 4255
	ldi	r9 r9 0
	fsti	f3 r2 0
	sti	r6 r2 2
	fsti	f2 r2 4
	sti	r5 r2 6
	sti	r4 r2 7
	sti	r7 r2 8
	add	r6 r0 r5
	add	r4 r0 r8
	add	r5 r0 r9
	addi	r2 r2 10
	call	L_trace_or_matrix_2199
	subi	r2 r2 10
	addi	r4 r0 4154
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_22331
	addi	r4 r0 0
	jump	L_cont_22332
L_else_22331 : 
	addi	r4 r0 1
L_cont_22332 : 
	bne	r4 r0 L_else_22333
	addi	r4 r0 0
	jump	L_cont_22334
L_else_22333 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_22335
	addi	r4 r0 0
	jump	L_cont_22336
L_else_22335 : 
	addi	r4 r0 1
L_cont_22336 : 
L_cont_22334 : 
	bne	r4 r0 L_else_22337
	addi	r4 r0 -1
	ldi	r5 r2 7
	ldi	r6 r2 8
	add	r6 r6 r5
	sti	r4 r6 0
	bne	r5 r0 L_else_22338
	return
L_else_22338 : 
	addi	r4 r0 4111
	ldi	r5 r2 6
	fldi	f2 r5 0
	fldi	f3 r4 0
	fmul	f2 f2 f3
	fldi	f3 r5 1
	fldi	f4 r4 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r5 2
	fldi	f4 r4 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_22340
	addi	r4 r0 0
	jump	L_cont_22341
L_else_22340 : 
	addi	r4 r0 1
L_cont_22341 : 
	bne	r4 r0 L_else_22342
	return
L_else_22342 : 
	fmul	f3 f2 f2
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fmul	f2 f2 f3
	addi	r4 r0 4153
	fldi	f3 r4 0
	fmul	f2 f2 f3
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f3 r5 0
	fadd	f3 f3 f2
	fsti	f3 r4 0
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f3 r5 1
	fadd	f3 f3 f2
	fsti	f3 r4 1
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f3 r5 2
	fadd	f2 f3 f2
	fsti	f2 r4 2
	return
L_else_22337 : 
	addi	r4 r0 4117
	ldi	r4 r4 0
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r5 2
	ldi	r7 r5 7
	fldi	f2 r7 0
	fldi	f3 r2 4
	fmul	f2 f2 f3
	ldi	r7 r5 1
	addi	r8 r0 1
	sti	r6 r2 9
	fsti	f2 r2 10
	sti	r4 r2 12
	sti	r5 r2 13
	bne	r7 r8 L_else_22345
	addi	r7 r0 4146
	ldi	r7 r7 0
	addi	r8 r0 4118
	fldi	f4 r0 27
	fsti	f4 r8 0
	fsti	f4 r8 1
	fsti	f4 r8 2
	addi	r8 r0 4118
	addi	r9 r7 -1
	addi	r7 r7 -1
	ldi	r10 r2 6
	add	r7 r10 r7
	fldi	f4 r7 0
	fbne	f4 f0 L_else_22347
	addi	r7 r0 1
	jump	L_cont_22348
L_else_22347 : 
	addi	r7 r0 0
L_cont_22348 : 
	bne	r7 r0 L_else_22349
	fbgt	f4 f0 L_else_22351
	addi	r7 r0 0
	jump	L_cont_22352
L_else_22351 : 
	addi	r7 r0 1
L_cont_22352 : 
	bne	r7 r0 L_else_22353
	fldi	f4 r0 28
	jump	L_cont_22354
L_else_22353 : 
	fldi	f4 r0 39
L_cont_22354 : 
	jump	L_cont_22350
L_else_22349 : 
	fldi	f4 r0 27
L_cont_22350 : 
	fsub	f4 f0 f4
	add	r7 r8 r9
	fsti	f4 r7 0
	jump	L_cont_22346
L_else_22345 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_22355
	addi	r7 r0 4118
	ldi	r8 r5 4
	fldi	f4 r8 0
	fsub	f4 f0 f4
	fsti	f4 r7 0
	addi	r7 r0 4118
	ldi	r8 r5 4
	fldi	f4 r8 1
	fsub	f4 f0 f4
	fsti	f4 r7 1
	addi	r7 r0 4118
	ldi	r8 r5 4
	fldi	f4 r8 2
	fsub	f4 f0 f4
	fsti	f4 r7 2
	jump	L_cont_22356
L_else_22355 : 
	add	r4 r0 r5
	addi	r2 r2 15
	call	L_get_nvector_second_2223
	subi	r2 r2 15
L_cont_22356 : 
L_cont_22346 : 
	addi	r4 r0 4135
	addi	r5 r0 4114
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	addi	r5 r0 4114
	ldi	r4 r2 13
	addi	r2 r2 15
	call	L_utexture_2228
	subi	r2 r2 15
	addi	r4 r0 4
	ldi	r5 r2 12
	mul	r4 r5 r4
	addi	r5 r0 4146
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r5 r2 7
	ldi	r6 r2 8
	add	r7 r6 r5
	sti	r4 r7 0
	ldi	r4 r2 2
	ldi	r7 r4 1
	add	r7 r7 r5
	ldi	r7 r7 0
	addi	r8 r0 4114
	fldi	f2 r8 0
	fsti	f2 r7 0
	fldi	f2 r8 1
	fsti	f2 r7 1
	fldi	f2 r8 2
	fsti	f2 r7 2
	ldi	r7 r4 3
	ldi	r8 r2 13
	ldi	r9 r8 7
	fldi	f2 r9 0
	fldi	f3 r0 40
	fbgt	f3 f2 L_else_22357
	addi	r9 r0 0
	jump	L_cont_22358
L_else_22357 : 
	addi	r9 r0 1
L_cont_22358 : 
	bne	r9 r0 L_else_22359
	addi	r9 r0 1
	add	r7 r7 r5
	sti	r9 r7 0
	ldi	r7 r4 4
	add	r9 r7 r5
	ldi	r9 r9 0
	addi	r10 r0 4121
	fldi	f2 r10 0
	fsti	f2 r9 0
	fldi	f2 r10 1
	fsti	f2 r9 1
	fldi	f2 r10 2
	fsti	f2 r9 2
	add	r7 r7 r5
	ldi	r7 r7 0
	fldi	f2 r0 9
	fldi	f3 r2 10
	fmul	f2 f2 f3
	fldi	f4 r7 0
	fmul	f4 f4 f2
	fsti	f4 r7 0
	fldi	f4 r7 1
	fmul	f4 f4 f2
	fsti	f4 r7 1
	fldi	f4 r7 2
	fmul	f2 f4 f2
	fsti	f2 r7 2
	ldi	r7 r4 7
	add	r7 r7 r5
	ldi	r7 r7 0
	addi	r9 r0 4118
	fldi	f2 r9 0
	fsti	f2 r7 0
	fldi	f2 r9 1
	fsti	f2 r7 1
	fldi	f2 r9 2
	fsti	f2 r7 2
	jump	L_cont_22360
L_else_22359 : 
	addi	r9 r0 0
	add	r7 r7 r5
	sti	r9 r7 0
L_cont_22360 : 
	fldi	f2 r0 8
	addi	r7 r0 4118
	ldi	r9 r2 6
	fldi	f3 r9 0
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fldi	f4 r9 1
	fldi	f5 r7 1
	fmul	f4 f4 f5
	fadd	f3 f3 f4
	fldi	f4 r9 2
	fldi	f5 r7 2
	fmul	f4 f4 f5
	fadd	f3 f3 f4
	fmul	f2 f2 f3
	addi	r7 r0 4118
	fldi	f3 r9 0
	fldi	f4 r7 0
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	fsti	f3 r9 0
	fldi	f3 r9 1
	fldi	f4 r7 1
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	fsti	f3 r9 1
	fldi	f3 r9 2
	fldi	f4 r7 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r9 2
	ldi	r7 r8 7
	fldi	f2 r7 1
	fldi	f3 r2 4
	fmul	f2 f3 f2
	addi	r7 r0 0
	addi	r10 r0 4255
	ldi	r10 r10 0
	fsti	f2 r2 14
	add	r5 r0 r10
	add	r4 r0 r7
	addi	r2 r2 17
	call	L_shadow_check_one_or_matrix_2188
	subi	r2 r2 17
	bne	r4 r0 L_else_22361
	addi	r4 r0 4118
	addi	r5 r0 4111
	fldi	f2 r4 0
	fldi	f3 r5 0
	fmul	f2 f2 f3
	fldi	f3 r4 1
	fldi	f4 r5 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r4 2
	fldi	f4 r5 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fldi	f3 r2 10
	fmul	f2 f2 f3
	addi	r4 r0 4111
	ldi	r5 r2 6
	fldi	f4 r5 0
	fldi	f5 r4 0
	fmul	f4 f4 f5
	fldi	f5 r5 1
	fldi	f6 r4 1
	fmul	f5 f5 f6
	fadd	f4 f4 f5
	fldi	f5 r5 2
	fldi	f6 r4 2
	fmul	f5 f5 f6
	fadd	f4 f4 f5
	fsub	f4 f0 f4
	fbgt	f2 f0 L_else_22363
	addi	r4 r0 0
	jump	L_cont_22364
L_else_22363 : 
	addi	r4 r0 1
L_cont_22364 : 
	bne	r4 r0 L_else_22365
	jump	L_cont_22366
L_else_22365 : 
	addi	r4 r0 4127
	addi	r6 r0 4121
	fldi	f5 r4 0
	fldi	f6 r6 0
	fmul	f6 f2 f6
	fadd	f5 f5 f6
	fsti	f5 r4 0
	fldi	f5 r4 1
	fldi	f6 r6 1
	fmul	f6 f2 f6
	fadd	f5 f5 f6
	fsti	f5 r4 1
	fldi	f5 r4 2
	fldi	f6 r6 2
	fmul	f2 f2 f6
	fadd	f2 f5 f2
	fsti	f2 r4 2
L_cont_22366 : 
	fbgt	f4 f0 L_else_22367
	addi	r4 r0 0
	jump	L_cont_22368
L_else_22367 : 
	addi	r4 r0 1
L_cont_22368 : 
	bne	r4 r0 L_else_22369
	jump	L_cont_22370
L_else_22369 : 
	fmul	f2 f4 f4
	fmul	f2 f2 f2
	fldi	f4 r2 14
	fmul	f2 f2 f4
	addi	r4 r0 4127
	addi	r6 r0 4127
	fldi	f5 r6 0
	fadd	f5 f5 f2
	fsti	f5 r4 0
	addi	r4 r0 4127
	addi	r6 r0 4127
	fldi	f5 r6 1
	fadd	f5 f5 f2
	fsti	f5 r4 1
	addi	r4 r0 4127
	addi	r6 r0 4127
	fldi	f5 r6 2
	fadd	f2 f5 f2
	fsti	f2 r4 2
L_cont_22370 : 
	jump	L_cont_22362
L_else_22361 : 
L_cont_22362 : 
	addi	r4 r0 4114
	addi	r5 r0 4138
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r5 r0 4144
	ldi	r5 r5 0
	addi	r5 r5 -1
	addi	r2 r2 17
	call	L_setup_startp_constants_2151
	subi	r2 r2 17
	addi	r4 r0 4147
	ldi	r4 r4 0
	addi	r4 r4 -1
	fldi	f2 r2 10
	fldi	f3 r2 14
	ldi	r5 r2 6
	addi	r2 r2 17
	call	L_trace_reflections_2235
	subi	r2 r2 17
	fldi	f2 r0 7
	fldi	f3 r2 4
	fbgt	f3 f2 L_else_22371
	addi	r4 r0 0
	jump	L_cont_22372
L_else_22371 : 
	addi	r4 r0 1
L_cont_22372 : 
	bne	r4 r0 L_else_22373
	return
L_else_22373 : 
	addi	r4 r0 4
	ldi	r5 r2 7
	bgt	r4 r5 L_else_22375
	jump	L_cont_22376
L_else_22375 : 
	addi	r4 r5 1
	addi	r6 r0 -1
	ldi	r7 r2 8
	add	r4 r7 r4
	sti	r6 r4 0
L_cont_22376 : 
	addi	r4 r0 2
	ldi	r6 r2 9
	bne	r6 r4 L_else_22377
	fldi	f2 r0 39
	ldi	r4 r2 13
	ldi	r4 r4 7
	fldi	f4 r4 0
	fsub	f2 f2 f4
	fmul	f2 f3 f2
	addi	r4 r5 1
	addi	r5 r0 4154
	fldi	f3 r5 0
	fldi	f4 r2 0
	fadd	f3 f4 f3
	ldi	r5 r2 6
	ldi	r6 r2 2
	jump	L_trace_ray_2240
L_else_22377 : 
	return
L_else_22329 : 
	return
L_trace_diffuse_ray_2246 : 
	addi	r5 r0 4154
	fldi	f3 r0 11
	fsti	f3 r5 0
	addi	r5 r0 0
	addi	r6 r0 4255
	ldi	r6 r6 0
	fsti	f2 r2 0
	sti	r4 r2 2
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	addi	r2 r2 4
	call	L_trace_or_matrix_fast_2213
	subi	r2 r2 4
	addi	r4 r0 4154
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_22380
	addi	r4 r0 0
	jump	L_cont_22381
L_else_22380 : 
	addi	r4 r0 1
L_cont_22381 : 
	bne	r4 r0 L_else_22382
	addi	r4 r0 0
	jump	L_cont_22383
L_else_22382 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_22384
	addi	r4 r0 0
	jump	L_cont_22385
L_else_22384 : 
	addi	r4 r0 1
L_cont_22385 : 
L_cont_22383 : 
	bne	r4 r0 L_else_22386
	return
L_else_22386 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 2
	ldi	r5 r5 0
	ldi	r6 r4 1
	addi	r7 r0 1
	sti	r4 r2 3
	bne	r6 r7 L_else_22388
	addi	r6 r0 4146
	ldi	r6 r6 0
	addi	r7 r0 4118
	fldi	f2 r0 27
	fsti	f2 r7 0
	fsti	f2 r7 1
	fsti	f2 r7 2
	addi	r7 r0 4118
	addi	r8 r6 -1
	addi	r6 r6 -1
	add	r5 r5 r6
	fldi	f2 r5 0
	fbne	f2 f0 L_else_22390
	addi	r5 r0 1
	jump	L_cont_22391
L_else_22390 : 
	addi	r5 r0 0
L_cont_22391 : 
	bne	r5 r0 L_else_22392
	fbgt	f2 f0 L_else_22394
	addi	r5 r0 0
	jump	L_cont_22395
L_else_22394 : 
	addi	r5 r0 1
L_cont_22395 : 
	bne	r5 r0 L_else_22396
	fldi	f2 r0 28
	jump	L_cont_22397
L_else_22396 : 
	fldi	f2 r0 39
L_cont_22397 : 
	jump	L_cont_22393
L_else_22392 : 
	fldi	f2 r0 27
L_cont_22393 : 
	fsub	f2 f0 f2
	add	r5 r7 r8
	fsti	f2 r5 0
	jump	L_cont_22389
L_else_22388 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_22398
	addi	r5 r0 4118
	ldi	r6 r4 4
	fldi	f2 r6 0
	fsub	f2 f0 f2
	fsti	f2 r5 0
	addi	r5 r0 4118
	ldi	r6 r4 4
	fldi	f2 r6 1
	fsub	f2 f0 f2
	fsti	f2 r5 1
	addi	r5 r0 4118
	ldi	r6 r4 4
	fldi	f2 r6 2
	fsub	f2 f0 f2
	fsti	f2 r5 2
	jump	L_cont_22399
L_else_22398 : 
	addi	r2 r2 5
	call	L_get_nvector_second_2223
	subi	r2 r2 5
L_cont_22399 : 
L_cont_22389 : 
	addi	r5 r0 4114
	ldi	r4 r2 3
	addi	r2 r2 5
	call	L_utexture_2228
	subi	r2 r2 5
	addi	r4 r0 0
	addi	r5 r0 4255
	ldi	r5 r5 0
	addi	r2 r2 5
	call	L_shadow_check_one_or_matrix_2188
	subi	r2 r2 5
	bne	r4 r0 L_else_22400
	addi	r4 r0 4118
	addi	r5 r0 4111
	fldi	f2 r4 0
	fldi	f3 r5 0
	fmul	f2 f2 f3
	fldi	f3 r4 1
	fldi	f4 r5 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r4 2
	fldi	f4 r5 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_22401
	addi	r4 r0 0
	jump	L_cont_22402
L_else_22401 : 
	addi	r4 r0 1
L_cont_22402 : 
	bne	r4 r0 L_else_22403
	fldi	f2 r0 27
	jump	L_cont_22404
L_else_22403 : 
	fadd	f2 f0 f2
L_cont_22404 : 
	addi	r4 r0 4124
	fldi	f3 r2 0
	fmul	f2 f3 f2
	ldi	r5 r2 3
	ldi	r5 r5 7
	fldi	f3 r5 0
	fmul	f2 f2 f3
	addi	r5 r0 4121
	fldi	f3 r4 0
	fldi	f4 r5 0
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	fsti	f3 r4 0
	fldi	f3 r4 1
	fldi	f4 r5 1
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	fsti	f3 r4 1
	fldi	f3 r4 2
	fldi	f4 r5 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r4 2
	return
L_else_22400 : 
	return
L_iter_trace_diffuse_rays_2249 : 
	bgt	r0 r7 L_else_22407
	add	r8 r4 r7
	ldi	r8 r8 0
	ldi	r8 r8 0
	fldi	f2 r8 0
	fldi	f3 r5 0
	fmul	f2 f2 f3
	fldi	f3 r8 1
	fldi	f4 r5 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r8 2
	fldi	f4 r5 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22408
	addi	r8 r0 0
	jump	L_cont_22409
L_else_22408 : 
	addi	r8 r0 1
L_cont_22409 : 
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	bne	r8 r0 L_else_22410
	add	r8 r4 r7
	ldi	r8 r8 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r9 r0 4154
	fldi	f3 r0 11
	fsti	f3 r9 0
	addi	r9 r0 0
	addi	r10 r0 4255
	ldi	r10 r10 0
	add	r9 r10 r9
	ldi	r9 r9 0
	ldi	r11 r9 0
	addi	r12 r0 -1
	fsti	f2 r2 4
	sti	r8 r2 6
	bne	r11 r12 L_else_22412
	jump	L_cont_22413
L_else_22412 : 
	addi	r12 r0 99
	sti	r10 r2 7
	bne	r11 r12 L_else_22414
	addi	r11 r0 1
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r11
	addi	r2 r2 9
	call	L_solve_one_or_network_fast_2209
	subi	r2 r2 9
	jump	L_cont_22415
L_else_22414 : 
	sti	r9 r2 8
	add	r5 r0 r8
	add	r4 r0 r11
	addi	r2 r2 10
	call	L_solver_fast2_2134
	subi	r2 r2 10
	bne	r4 r0 L_else_22416
	jump	L_cont_22417
L_else_22416 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22418
	addi	r4 r0 0
	jump	L_cont_22419
L_else_22418 : 
	addi	r4 r0 1
L_cont_22419 : 
	bne	r4 r0 L_else_22420
	jump	L_cont_22421
L_else_22420 : 
	addi	r4 r0 1
	ldi	r5 r2 8
	ldi	r6 r2 6
	addi	r2 r2 10
	call	L_solve_one_or_network_fast_2209
	subi	r2 r2 10
L_cont_22421 : 
L_cont_22417 : 
L_cont_22415 : 
	addi	r4 r0 1
	ldi	r5 r2 7
	ldi	r6 r2 6
	addi	r2 r2 10
	call	L_trace_or_matrix_fast_2213
	subi	r2 r2 10
L_cont_22413 : 
	addi	r4 r0 4154
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_22422
	addi	r4 r0 0
	jump	L_cont_22423
L_else_22422 : 
	addi	r4 r0 1
L_cont_22423 : 
	bne	r4 r0 L_else_22424
	addi	r4 r0 0
	jump	L_cont_22425
L_else_22424 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_22426
	addi	r4 r0 0
	jump	L_cont_22427
L_else_22426 : 
	addi	r4 r0 1
L_cont_22427 : 
L_cont_22425 : 
	bne	r4 r0 L_else_22428
	jump	L_cont_22429
L_else_22428 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 6
	ldi	r5 r5 0
	ldi	r6 r4 1
	addi	r7 r0 1
	sti	r4 r2 9
	bne	r6 r7 L_else_22430
	addi	r6 r0 4146
	ldi	r6 r6 0
	addi	r7 r0 4118
	fldi	f2 r0 27
	fsti	f2 r7 0
	fsti	f2 r7 1
	fsti	f2 r7 2
	addi	r7 r0 4118
	addi	r8 r6 -1
	addi	r6 r6 -1
	add	r5 r5 r6
	fldi	f2 r5 0
	fbne	f2 f0 L_else_22432
	addi	r5 r0 1
	jump	L_cont_22433
L_else_22432 : 
	addi	r5 r0 0
L_cont_22433 : 
	bne	r5 r0 L_else_22434
	fbgt	f2 f0 L_else_22436
	addi	r5 r0 0
	jump	L_cont_22437
L_else_22436 : 
	addi	r5 r0 1
L_cont_22437 : 
	bne	r5 r0 L_else_22438
	fldi	f2 r0 28
	jump	L_cont_22439
L_else_22438 : 
	fldi	f2 r0 39
L_cont_22439 : 
	jump	L_cont_22435
L_else_22434 : 
	fldi	f2 r0 27
L_cont_22435 : 
	fsub	f2 f0 f2
	add	r5 r7 r8
	fsti	f2 r5 0
	jump	L_cont_22431
L_else_22430 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_22440
	addi	r5 r0 4118
	ldi	r6 r4 4
	fldi	f2 r6 0
	fsub	f2 f0 f2
	fsti	f2 r5 0
	addi	r5 r0 4118
	ldi	r6 r4 4
	fldi	f2 r6 1
	fsub	f2 f0 f2
	fsti	f2 r5 1
	addi	r5 r0 4118
	ldi	r6 r4 4
	fldi	f2 r6 2
	fsub	f2 f0 f2
	fsti	f2 r5 2
	jump	L_cont_22441
L_else_22440 : 
	addi	r5 r0 4114
	fldi	f2 r5 0
	ldi	r5 r4 5
	fldi	f3 r5 0
	fsub	f2 f2 f3
	addi	r5 r0 4114
	fldi	f3 r5 1
	ldi	r5 r4 5
	fldi	f4 r5 1
	fsub	f3 f3 f4
	addi	r5 r0 4114
	fldi	f4 r5 2
	ldi	r5 r4 5
	fldi	f5 r5 2
	fsub	f4 f4 f5
	ldi	r5 r4 4
	fldi	f5 r5 0
	fmul	f5 f2 f5
	ldi	r5 r4 4
	fldi	f6 r5 1
	fmul	f6 f3 f6
	ldi	r5 r4 4
	fldi	f7 r5 2
	fmul	f7 f4 f7
	ldi	r5 r4 3
	bne	r5 r0 L_else_22442
	addi	r5 r0 4118
	fsti	f5 r5 0
	addi	r5 r0 4118
	fsti	f6 r5 1
	addi	r5 r0 4118
	fsti	f7 r5 2
	jump	L_cont_22443
L_else_22442 : 
	addi	r5 r0 4118
	ldi	r6 r4 9
	fldi	f8 r6 2
	fmul	f8 f3 f8
	ldi	r6 r4 9
	fldi	f9 r6 1
	fmul	f9 f4 f9
	fadd	f8 f8 f9
	fldi	f9 r0 29
	fdiv	f8 f8 f9
	fadd	f5 f5 f8
	fsti	f5 r5 0
	addi	r5 r0 4118
	ldi	r6 r4 9
	fldi	f5 r6 2
	fmul	f5 f2 f5
	ldi	r6 r4 9
	fldi	f8 r6 0
	fmul	f4 f4 f8
	fadd	f4 f5 f4
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	fadd	f4 f6 f4
	fsti	f4 r5 1
	addi	r5 r0 4118
	ldi	r6 r4 9
	fldi	f4 r6 1
	fmul	f2 f2 f4
	ldi	r6 r4 9
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 29
	fdiv	f2 f2 f3
	fadd	f2 f7 f2
	fsti	f2 r5 2
L_cont_22443 : 
	addi	r5 r0 4118
	ldi	r6 r4 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_vecunit_sgn_1931
	subi	r2 r2 11
L_cont_22441 : 
L_cont_22431 : 
	addi	r5 r0 4114
	ldi	r4 r2 9
	addi	r2 r2 11
	call	L_utexture_2228
	subi	r2 r2 11
	addi	r4 r0 0
	addi	r5 r0 4255
	ldi	r5 r5 0
	addi	r2 r2 11
	call	L_shadow_check_one_or_matrix_2188
	subi	r2 r2 11
	bne	r4 r0 L_else_22444
	addi	r4 r0 4118
	addi	r5 r0 4111
	fldi	f2 r4 0
	fldi	f3 r5 0
	fmul	f2 f2 f3
	fldi	f3 r4 1
	fldi	f4 r5 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r4 2
	fldi	f4 r5 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_22446
	addi	r4 r0 0
	jump	L_cont_22447
L_else_22446 : 
	addi	r4 r0 1
L_cont_22447 : 
	bne	r4 r0 L_else_22448
	fldi	f2 r0 27
	jump	L_cont_22449
L_else_22448 : 
	fadd	f2 f0 f2
L_cont_22449 : 
	addi	r4 r0 4124
	fldi	f3 r2 4
	fmul	f2 f3 f2
	ldi	r5 r2 9
	ldi	r5 r5 7
	fldi	f3 r5 0
	fmul	f2 f2 f3
	addi	r5 r0 4121
	fldi	f3 r4 0
	fldi	f4 r5 0
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	fsti	f3 r4 0
	fldi	f3 r4 1
	fldi	f4 r5 1
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	fsti	f3 r4 1
	fldi	f3 r4 2
	fldi	f4 r5 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r4 2
	jump	L_cont_22445
L_else_22444 : 
L_cont_22445 : 
L_cont_22429 : 
	jump	L_cont_22411
L_else_22410 : 
	addi	r8 r7 1
	add	r8 r4 r8
	ldi	r8 r8 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r9 r0 4154
	fldi	f3 r0 11
	fsti	f3 r9 0
	addi	r9 r0 0
	addi	r10 r0 4255
	ldi	r10 r10 0
	add	r9 r10 r9
	ldi	r9 r9 0
	ldi	r11 r9 0
	addi	r12 r0 -1
	fsti	f2 r2 10
	sti	r8 r2 12
	bne	r11 r12 L_else_22450
	jump	L_cont_22451
L_else_22450 : 
	addi	r12 r0 99
	sti	r10 r2 13
	bne	r11 r12 L_else_22452
	addi	r11 r0 1
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r11
	addi	r2 r2 15
	call	L_solve_one_or_network_fast_2209
	subi	r2 r2 15
	jump	L_cont_22453
L_else_22452 : 
	sti	r9 r2 14
	add	r5 r0 r8
	add	r4 r0 r11
	addi	r2 r2 16
	call	L_solver_fast2_2134
	subi	r2 r2 16
	bne	r4 r0 L_else_22454
	jump	L_cont_22455
L_else_22454 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22456
	addi	r4 r0 0
	jump	L_cont_22457
L_else_22456 : 
	addi	r4 r0 1
L_cont_22457 : 
	bne	r4 r0 L_else_22458
	jump	L_cont_22459
L_else_22458 : 
	addi	r4 r0 1
	ldi	r5 r2 14
	ldi	r6 r2 12
	addi	r2 r2 16
	call	L_solve_one_or_network_fast_2209
	subi	r2 r2 16
L_cont_22459 : 
L_cont_22455 : 
L_cont_22453 : 
	addi	r4 r0 1
	ldi	r5 r2 13
	ldi	r6 r2 12
	addi	r2 r2 16
	call	L_trace_or_matrix_fast_2213
	subi	r2 r2 16
L_cont_22451 : 
	addi	r4 r0 4154
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_22460
	addi	r4 r0 0
	jump	L_cont_22461
L_else_22460 : 
	addi	r4 r0 1
L_cont_22461 : 
	bne	r4 r0 L_else_22462
	addi	r4 r0 0
	jump	L_cont_22463
L_else_22462 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_22464
	addi	r4 r0 0
	jump	L_cont_22465
L_else_22464 : 
	addi	r4 r0 1
L_cont_22465 : 
L_cont_22463 : 
	bne	r4 r0 L_else_22466
	jump	L_cont_22467
L_else_22466 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 12
	ldi	r5 r5 0
	ldi	r6 r4 1
	addi	r7 r0 1
	sti	r4 r2 15
	bne	r6 r7 L_else_22468
	addi	r6 r0 4146
	ldi	r6 r6 0
	addi	r7 r0 4118
	fldi	f2 r0 27
	fsti	f2 r7 0
	fsti	f2 r7 1
	fsti	f2 r7 2
	addi	r7 r0 4118
	addi	r8 r6 -1
	addi	r6 r6 -1
	add	r5 r5 r6
	fldi	f2 r5 0
	fbne	f2 f0 L_else_22470
	addi	r5 r0 1
	jump	L_cont_22471
L_else_22470 : 
	addi	r5 r0 0
L_cont_22471 : 
	bne	r5 r0 L_else_22472
	fbgt	f2 f0 L_else_22474
	addi	r5 r0 0
	jump	L_cont_22475
L_else_22474 : 
	addi	r5 r0 1
L_cont_22475 : 
	bne	r5 r0 L_else_22476
	fldi	f2 r0 28
	jump	L_cont_22477
L_else_22476 : 
	fldi	f2 r0 39
L_cont_22477 : 
	jump	L_cont_22473
L_else_22472 : 
	fldi	f2 r0 27
L_cont_22473 : 
	fsub	f2 f0 f2
	add	r5 r7 r8
	fsti	f2 r5 0
	jump	L_cont_22469
L_else_22468 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_22478
	addi	r5 r0 4118
	ldi	r6 r4 4
	fldi	f2 r6 0
	fsub	f2 f0 f2
	fsti	f2 r5 0
	addi	r5 r0 4118
	ldi	r6 r4 4
	fldi	f2 r6 1
	fsub	f2 f0 f2
	fsti	f2 r5 1
	addi	r5 r0 4118
	ldi	r6 r4 4
	fldi	f2 r6 2
	fsub	f2 f0 f2
	fsti	f2 r5 2
	jump	L_cont_22479
L_else_22478 : 
	addi	r5 r0 4114
	fldi	f2 r5 0
	ldi	r5 r4 5
	fldi	f3 r5 0
	fsub	f2 f2 f3
	addi	r5 r0 4114
	fldi	f3 r5 1
	ldi	r5 r4 5
	fldi	f4 r5 1
	fsub	f3 f3 f4
	addi	r5 r0 4114
	fldi	f4 r5 2
	ldi	r5 r4 5
	fldi	f5 r5 2
	fsub	f4 f4 f5
	ldi	r5 r4 4
	fldi	f5 r5 0
	fmul	f5 f2 f5
	ldi	r5 r4 4
	fldi	f6 r5 1
	fmul	f6 f3 f6
	ldi	r5 r4 4
	fldi	f7 r5 2
	fmul	f7 f4 f7
	ldi	r5 r4 3
	bne	r5 r0 L_else_22480
	addi	r5 r0 4118
	fsti	f5 r5 0
	addi	r5 r0 4118
	fsti	f6 r5 1
	addi	r5 r0 4118
	fsti	f7 r5 2
	jump	L_cont_22481
L_else_22480 : 
	addi	r5 r0 4118
	ldi	r6 r4 9
	fldi	f8 r6 2
	fmul	f8 f3 f8
	ldi	r6 r4 9
	fldi	f9 r6 1
	fmul	f9 f4 f9
	fadd	f8 f8 f9
	fldi	f9 r0 29
	fdiv	f8 f8 f9
	fadd	f5 f5 f8
	fsti	f5 r5 0
	addi	r5 r0 4118
	ldi	r6 r4 9
	fldi	f5 r6 2
	fmul	f5 f2 f5
	ldi	r6 r4 9
	fldi	f8 r6 0
	fmul	f4 f4 f8
	fadd	f4 f5 f4
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	fadd	f4 f6 f4
	fsti	f4 r5 1
	addi	r5 r0 4118
	ldi	r6 r4 9
	fldi	f4 r6 1
	fmul	f2 f2 f4
	ldi	r6 r4 9
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 29
	fdiv	f2 f2 f3
	fadd	f2 f7 f2
	fsti	f2 r5 2
L_cont_22481 : 
	addi	r5 r0 4118
	ldi	r6 r4 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 17
	call	L_vecunit_sgn_1931
	subi	r2 r2 17
L_cont_22479 : 
L_cont_22469 : 
	addi	r5 r0 4114
	ldi	r4 r2 15
	addi	r2 r2 17
	call	L_utexture_2228
	subi	r2 r2 17
	addi	r4 r0 0
	addi	r5 r0 4255
	ldi	r5 r5 0
	addi	r2 r2 17
	call	L_shadow_check_one_or_matrix_2188
	subi	r2 r2 17
	bne	r4 r0 L_else_22482
	addi	r4 r0 4118
	addi	r5 r0 4111
	fldi	f2 r4 0
	fldi	f3 r5 0
	fmul	f2 f2 f3
	fldi	f3 r4 1
	fldi	f4 r5 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r4 2
	fldi	f4 r5 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_22484
	addi	r4 r0 0
	jump	L_cont_22485
L_else_22484 : 
	addi	r4 r0 1
L_cont_22485 : 
	bne	r4 r0 L_else_22486
	fldi	f2 r0 27
	jump	L_cont_22487
L_else_22486 : 
	fadd	f2 f0 f2
L_cont_22487 : 
	addi	r4 r0 4124
	fldi	f3 r2 10
	fmul	f2 f3 f2
	ldi	r5 r2 15
	ldi	r5 r5 7
	fldi	f3 r5 0
	fmul	f2 f2 f3
	addi	r5 r0 4121
	fldi	f3 r4 0
	fldi	f4 r5 0
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	fsti	f3 r4 0
	fldi	f3 r4 1
	fldi	f4 r5 1
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	fsti	f3 r4 1
	fldi	f3 r4 2
	fldi	f4 r5 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r4 2
	jump	L_cont_22483
L_else_22482 : 
L_cont_22483 : 
L_cont_22467 : 
L_cont_22411 : 
	ldi	r4 r2 3
	addi	r4 r4 -2
	bgt	r0 r4 L_else_22488
	ldi	r5 r2 2
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	ldi	r7 r2 1
	fldi	f3 r7 0
	fmul	f2 f2 f3
	fldi	f3 r6 1
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r6 2
	fldi	f4 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22489
	addi	r6 r0 0
	jump	L_cont_22490
L_else_22489 : 
	addi	r6 r0 1
L_cont_22490 : 
	sti	r4 r2 16
	bne	r6 r0 L_else_22491
	add	r6 r5 r4
	ldi	r6 r6 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	add	r4 r0 r6
	addi	r2 r2 18
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 18
	jump	L_cont_22492
L_else_22491 : 
	addi	r6 r4 1
	add	r6 r5 r6
	ldi	r6 r6 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	add	r4 r0 r6
	addi	r2 r2 18
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 18
L_cont_22492 : 
	ldi	r4 r2 16
	addi	r7 r4 -2
	ldi	r4 r2 2
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_iter_trace_diffuse_rays_2249
L_else_22488 : 
	return
L_else_22407 : 
	return
L_calc_diffuse_using_1point_2262 : 
	ldi	r6 r4 5
	ldi	r7 r4 7
	ldi	r8 r4 1
	ldi	r9 r4 4
	addi	r10 r0 4124
	add	r6 r6 r5
	ldi	r6 r6 0
	fldi	f2 r6 0
	fsti	f2 r10 0
	fldi	f2 r6 1
	fsti	f2 r10 1
	fldi	f2 r6 2
	fsti	f2 r10 2
	ldi	r4 r4 6
	ldi	r4 r4 0
	add	r6 r7 r5
	ldi	r6 r6 0
	add	r7 r8 r5
	ldi	r7 r7 0
	sti	r5 r2 0
	sti	r9 r2 1
	sti	r6 r2 2
	sti	r7 r2 3
	sti	r4 r2 4
	bne	r4 r0 L_else_22495
	jump	L_cont_22496
L_else_22495 : 
	addi	r8 r0 4148
	ldi	r8 r8 0
	addi	r10 r0 4138
	fldi	f2 r7 0
	fsti	f2 r10 0
	fldi	f2 r7 1
	fsti	f2 r10 1
	fldi	f2 r7 2
	fsti	f2 r10 2
	addi	r10 r0 4144
	ldi	r10 r10 0
	addi	r10 r10 -1
	sti	r8 r2 5
	add	r5 r0 r10
	add	r4 r0 r7
	addi	r2 r2 7
	call	L_setup_startp_constants_2151
	subi	r2 r2 7
	addi	r4 r0 118
	ldi	r5 r2 5
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	ldi	r7 r2 2
	fldi	f3 r7 0
	fmul	f2 f2 f3
	fldi	f3 r6 1
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r6 2
	fldi	f4 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22497
	addi	r6 r0 0
	jump	L_cont_22498
L_else_22497 : 
	addi	r6 r0 1
L_cont_22498 : 
	bne	r6 r0 L_else_22499
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 7
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 7
	jump	L_cont_22500
L_else_22499 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 7
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 7
L_cont_22500 : 
	addi	r7 r0 116
	ldi	r4 r2 5
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 7
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 7
L_cont_22496 : 
	addi	r4 r0 1
	ldi	r5 r2 4
	bne	r5 r4 L_else_22501
	jump	L_cont_22502
L_else_22501 : 
	addi	r4 r0 4148
	ldi	r4 r4 1
	addi	r6 r0 4138
	ldi	r7 r2 3
	fldi	f2 r7 0
	fsti	f2 r6 0
	fldi	f2 r7 1
	fsti	f2 r6 1
	fldi	f2 r7 2
	fsti	f2 r6 2
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	sti	r4 r2 6
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 8
	call	L_setup_startp_constants_2151
	subi	r2 r2 8
	addi	r4 r0 118
	ldi	r5 r2 6
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	ldi	r7 r2 2
	fldi	f3 r7 0
	fmul	f2 f2 f3
	fldi	f3 r6 1
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r6 2
	fldi	f4 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22503
	addi	r6 r0 0
	jump	L_cont_22504
L_else_22503 : 
	addi	r6 r0 1
L_cont_22504 : 
	bne	r6 r0 L_else_22505
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 8
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 8
	jump	L_cont_22506
L_else_22505 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 8
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 8
L_cont_22506 : 
	addi	r7 r0 116
	ldi	r4 r2 6
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 8
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 8
L_cont_22502 : 
	addi	r4 r0 2
	ldi	r5 r2 4
	bne	r5 r4 L_else_22507
	jump	L_cont_22508
L_else_22507 : 
	addi	r4 r0 4148
	ldi	r4 r4 2
	addi	r6 r0 4138
	ldi	r7 r2 3
	fldi	f2 r7 0
	fsti	f2 r6 0
	fldi	f2 r7 1
	fsti	f2 r6 1
	fldi	f2 r7 2
	fsti	f2 r6 2
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	sti	r4 r2 7
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 9
	call	L_setup_startp_constants_2151
	subi	r2 r2 9
	addi	r4 r0 118
	ldi	r5 r2 7
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	ldi	r7 r2 2
	fldi	f3 r7 0
	fmul	f2 f2 f3
	fldi	f3 r6 1
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r6 2
	fldi	f4 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22509
	addi	r6 r0 0
	jump	L_cont_22510
L_else_22509 : 
	addi	r6 r0 1
L_cont_22510 : 
	bne	r6 r0 L_else_22511
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 9
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 9
	jump	L_cont_22512
L_else_22511 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 9
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 9
L_cont_22512 : 
	addi	r7 r0 116
	ldi	r4 r2 7
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 9
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 9
L_cont_22508 : 
	addi	r4 r0 3
	ldi	r5 r2 4
	bne	r5 r4 L_else_22513
	jump	L_cont_22514
L_else_22513 : 
	addi	r4 r0 4148
	ldi	r4 r4 3
	addi	r6 r0 4138
	ldi	r7 r2 3
	fldi	f2 r7 0
	fsti	f2 r6 0
	fldi	f2 r7 1
	fsti	f2 r6 1
	fldi	f2 r7 2
	fsti	f2 r6 2
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	sti	r4 r2 8
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 10
	call	L_setup_startp_constants_2151
	subi	r2 r2 10
	addi	r4 r0 118
	ldi	r5 r2 8
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	ldi	r7 r2 2
	fldi	f3 r7 0
	fmul	f2 f2 f3
	fldi	f3 r6 1
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r6 2
	fldi	f4 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22515
	addi	r6 r0 0
	jump	L_cont_22516
L_else_22515 : 
	addi	r6 r0 1
L_cont_22516 : 
	bne	r6 r0 L_else_22517
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 10
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 10
	jump	L_cont_22518
L_else_22517 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 10
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 10
L_cont_22518 : 
	addi	r7 r0 116
	ldi	r4 r2 8
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 10
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 10
L_cont_22514 : 
	addi	r4 r0 4
	ldi	r5 r2 4
	bne	r5 r4 L_else_22519
	jump	L_cont_22520
L_else_22519 : 
	addi	r4 r0 4148
	ldi	r4 r4 4
	addi	r5 r0 4138
	ldi	r6 r2 3
	fldi	f2 r6 0
	fsti	f2 r5 0
	fldi	f2 r6 1
	fsti	f2 r5 1
	fldi	f2 r6 2
	fsti	f2 r5 2
	addi	r5 r0 4144
	ldi	r5 r5 0
	addi	r5 r5 -1
	sti	r4 r2 9
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_setup_startp_constants_2151
	subi	r2 r2 11
	addi	r4 r0 118
	ldi	r5 r2 9
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	ldi	r7 r2 2
	fldi	f3 r7 0
	fmul	f2 f2 f3
	fldi	f3 r6 1
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r6 2
	fldi	f4 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22521
	addi	r6 r0 0
	jump	L_cont_22522
L_else_22521 : 
	addi	r6 r0 1
L_cont_22522 : 
	bne	r6 r0 L_else_22523
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 11
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 11
	jump	L_cont_22524
L_else_22523 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 11
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 11
L_cont_22524 : 
	addi	r7 r0 116
	ldi	r4 r2 9
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 11
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 11
L_cont_22520 : 
	addi	r4 r0 4127
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r5 r6 r5
	ldi	r5 r5 0
	addi	r6 r0 4124
	fldi	f2 r4 0
	fldi	f3 r5 0
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r4 0
	fldi	f2 r4 1
	fldi	f3 r5 1
	fldi	f4 r6 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r4 1
	fldi	f2 r4 2
	fldi	f3 r5 2
	fldi	f4 r6 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r4 2
	return
L_calc_diffuse_using_5points_2265 : 
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r5 r5 5
	addi	r9 r4 -1
	add	r9 r6 r9
	ldi	r9 r9 0
	ldi	r9 r9 5
	add	r10 r6 r4
	ldi	r10 r10 0
	ldi	r10 r10 5
	addi	r11 r4 1
	add	r11 r6 r11
	ldi	r11 r11 0
	ldi	r11 r11 5
	add	r7 r7 r4
	ldi	r7 r7 0
	ldi	r7 r7 5
	addi	r12 r0 4124
	add	r5 r5 r8
	ldi	r5 r5 0
	fldi	f2 r5 0
	fsti	f2 r12 0
	fldi	f2 r5 1
	fsti	f2 r12 1
	fldi	f2 r5 2
	fsti	f2 r12 2
	addi	r5 r0 4124
	add	r9 r9 r8
	ldi	r9 r9 0
	fldi	f2 r5 0
	fldi	f3 r9 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	fldi	f2 r5 1
	fldi	f3 r9 1
	fadd	f2 f2 f3
	fsti	f2 r5 1
	fldi	f2 r5 2
	fldi	f3 r9 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	addi	r5 r0 4124
	add	r9 r10 r8
	ldi	r9 r9 0
	fldi	f2 r5 0
	fldi	f3 r9 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	fldi	f2 r5 1
	fldi	f3 r9 1
	fadd	f2 f2 f3
	fsti	f2 r5 1
	fldi	f2 r5 2
	fldi	f3 r9 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	addi	r5 r0 4124
	add	r9 r11 r8
	ldi	r9 r9 0
	fldi	f2 r5 0
	fldi	f3 r9 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	fldi	f2 r5 1
	fldi	f3 r9 1
	fadd	f2 f2 f3
	fsti	f2 r5 1
	fldi	f2 r5 2
	fldi	f3 r9 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	addi	r5 r0 4124
	add	r7 r7 r8
	ldi	r7 r7 0
	fldi	f2 r5 0
	fldi	f3 r7 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	fldi	f2 r5 1
	fldi	f3 r7 1
	fadd	f2 f2 f3
	fsti	f2 r5 1
	fldi	f2 r5 2
	fldi	f3 r7 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	add	r4 r6 r4
	ldi	r4 r4 0
	ldi	r4 r4 4
	addi	r5 r0 4127
	add	r4 r4 r8
	ldi	r4 r4 0
	addi	r6 r0 4124
	fldi	f2 r5 0
	fldi	f3 r4 0
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r5 0
	fldi	f2 r5 1
	fldi	f3 r4 1
	fldi	f4 r6 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r5 1
	fldi	f2 r5 2
	fldi	f3 r4 2
	fldi	f4 r6 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r5 2
	return
L_do_without_neighbors_2271 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_22527
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r0 r6 L_else_22528
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r4 r2 0
	bne	r6 r0 L_else_22529
	jump	L_cont_22530
L_else_22529 : 
	ldi	r6 r4 5
	ldi	r7 r4 7
	ldi	r8 r4 1
	ldi	r9 r4 4
	addi	r10 r0 4124
	add	r6 r6 r5
	ldi	r6 r6 0
	fldi	f2 r6 0
	fsti	f2 r10 0
	fldi	f2 r6 1
	fsti	f2 r10 1
	fldi	f2 r6 2
	fsti	f2 r10 2
	ldi	r6 r4 6
	ldi	r6 r6 0
	add	r7 r7 r5
	ldi	r7 r7 0
	add	r8 r8 r5
	ldi	r8 r8 0
	sti	r5 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	sti	r8 r2 4
	sti	r6 r2 5
	bne	r6 r0 L_else_22531
	jump	L_cont_22532
L_else_22531 : 
	addi	r10 r0 4148
	ldi	r10 r10 0
	addi	r11 r0 4138
	fldi	f2 r8 0
	fsti	f2 r11 0
	fldi	f2 r8 1
	fsti	f2 r11 1
	fldi	f2 r8 2
	fsti	f2 r11 2
	addi	r11 r0 4144
	ldi	r11 r11 0
	addi	r11 r11 -1
	sti	r10 r2 6
	add	r5 r0 r11
	add	r4 r0 r8
	addi	r2 r2 8
	call	L_setup_startp_constants_2151
	subi	r2 r2 8
	addi	r7 r0 118
	ldi	r4 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 8
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 8
L_cont_22532 : 
	addi	r4 r0 1
	ldi	r5 r2 5
	bne	r5 r4 L_else_22533
	jump	L_cont_22534
L_else_22533 : 
	addi	r4 r0 4148
	ldi	r4 r4 1
	addi	r6 r0 4138
	ldi	r7 r2 4
	fldi	f2 r7 0
	fsti	f2 r6 0
	fldi	f2 r7 1
	fsti	f2 r6 1
	fldi	f2 r7 2
	fsti	f2 r6 2
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	sti	r4 r2 7
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 9
	call	L_setup_startp_constants_2151
	subi	r2 r2 9
	addi	r7 r0 118
	ldi	r4 r2 7
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 9
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 9
L_cont_22534 : 
	addi	r4 r0 2
	ldi	r5 r2 5
	bne	r5 r4 L_else_22535
	jump	L_cont_22536
L_else_22535 : 
	addi	r4 r0 4148
	ldi	r4 r4 2
	addi	r6 r0 4138
	ldi	r7 r2 4
	fldi	f2 r7 0
	fsti	f2 r6 0
	fldi	f2 r7 1
	fsti	f2 r6 1
	fldi	f2 r7 2
	fsti	f2 r6 2
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	sti	r4 r2 8
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 10
	call	L_setup_startp_constants_2151
	subi	r2 r2 10
	addi	r7 r0 118
	ldi	r4 r2 8
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 10
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 10
L_cont_22536 : 
	addi	r4 r0 3
	ldi	r5 r2 5
	bne	r5 r4 L_else_22537
	jump	L_cont_22538
L_else_22537 : 
	addi	r4 r0 4148
	ldi	r4 r4 3
	addi	r6 r0 4138
	ldi	r7 r2 4
	fldi	f2 r7 0
	fsti	f2 r6 0
	fldi	f2 r7 1
	fsti	f2 r6 1
	fldi	f2 r7 2
	fsti	f2 r6 2
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	sti	r4 r2 9
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 11
	call	L_setup_startp_constants_2151
	subi	r2 r2 11
	addi	r7 r0 118
	ldi	r4 r2 9
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 11
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 11
L_cont_22538 : 
	addi	r4 r0 4
	ldi	r5 r2 5
	bne	r5 r4 L_else_22539
	jump	L_cont_22540
L_else_22539 : 
	addi	r4 r0 4148
	ldi	r4 r4 4
	addi	r5 r0 4138
	ldi	r6 r2 4
	fldi	f2 r6 0
	fsti	f2 r5 0
	fldi	f2 r6 1
	fsti	f2 r5 1
	fldi	f2 r6 2
	fsti	f2 r5 2
	addi	r5 r0 4144
	ldi	r5 r5 0
	addi	r5 r5 -1
	sti	r4 r2 10
	add	r4 r0 r6
	addi	r2 r2 12
	call	L_setup_startp_constants_2151
	subi	r2 r2 12
	addi	r7 r0 118
	ldi	r4 r2 10
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 12
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 12
L_cont_22540 : 
	addi	r4 r0 4127
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 4124
	fldi	f2 r4 0
	fldi	f3 r6 0
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r4 0
	fldi	f2 r4 1
	fldi	f3 r6 1
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r4 1
	fldi	f2 r4 2
	fldi	f3 r6 2
	fldi	f4 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r4 2
L_cont_22530 : 
	addi	r5 r5 1
	addi	r4 r0 4
	bgt	r5 r4 L_else_22541
	ldi	r4 r2 0
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r0 r6 L_else_22542
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r5 r2 11
	bne	r6 r0 L_else_22543
	jump	L_cont_22544
L_else_22543 : 
	addi	r2 r2 13
	call	L_calc_diffuse_using_1point_2262
	subi	r2 r2 13
L_cont_22544 : 
	ldi	r4 r2 11
	addi	r5 r4 1
	ldi	r4 r2 0
	jump	L_do_without_neighbors_2271
L_else_22542 : 
	return
L_else_22541 : 
	return
L_else_22528 : 
	return
L_else_22527 : 
	return
L_try_exploit_neighbors_2287 : 
	add	r10 r7 r4
	ldi	r10 r10 0
	addi	r11 r0 4
	bgt	r9 r11 L_else_22549
	ldi	r11 r10 2
	add	r11 r11 r9
	ldi	r11 r11 0
	bgt	r0 r11 L_else_22550
	add	r11 r7 r4
	ldi	r11 r11 0
	ldi	r11 r11 2
	add	r11 r11 r9
	ldi	r11 r11 0
	add	r12 r6 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22551
	add	r12 r8 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22553
	addi	r12 r4 -1
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22555
	addi	r12 r4 1
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22557
	addi	r11 r0 1
	jump	L_cont_22558
L_else_22557 : 
	addi	r11 r0 0
L_cont_22558 : 
	jump	L_cont_22556
L_else_22555 : 
	addi	r11 r0 0
L_cont_22556 : 
	jump	L_cont_22554
L_else_22553 : 
	addi	r11 r0 0
L_cont_22554 : 
	jump	L_cont_22552
L_else_22551 : 
	addi	r11 r0 0
L_cont_22552 : 
	bne	r11 r0 L_else_22559
	add	r4 r7 r4
	ldi	r4 r4 0
	addi	r5 r0 4
	bgt	r9 r5 L_else_22560
	ldi	r5 r4 2
	add	r5 r5 r9
	ldi	r5 r5 0
	bgt	r0 r5 L_else_22561
	ldi	r5 r4 3
	add	r5 r5 r9
	ldi	r5 r5 0
	sti	r4 r2 0
	sti	r9 r2 1
	bne	r5 r0 L_else_22562
	jump	L_cont_22563
L_else_22562 : 
	add	r5 r0 r9
	addi	r2 r2 3
	call	L_calc_diffuse_using_1point_2262
	subi	r2 r2 3
L_cont_22563 : 
	ldi	r4 r2 1
	addi	r5 r4 1
	ldi	r4 r2 0
	jump	L_do_without_neighbors_2271
L_else_22561 : 
	return
L_else_22560 : 
	return
L_else_22559 : 
	ldi	r10 r10 3
	add	r10 r10 r9
	ldi	r10 r10 0
	bne	r10 r0 L_else_22566
	jump	L_cont_22567
L_else_22566 : 
	add	r10 r6 r4
	ldi	r10 r10 0
	ldi	r10 r10 5
	addi	r11 r4 -1
	add	r11 r7 r11
	ldi	r11 r11 0
	ldi	r11 r11 5
	add	r12 r7 r4
	ldi	r12 r12 0
	ldi	r12 r12 5
	addi	r13 r4 1
	add	r13 r7 r13
	ldi	r13 r13 0
	ldi	r13 r13 5
	add	r14 r8 r4
	ldi	r14 r14 0
	ldi	r14 r14 5
	addi	r15 r0 4124
	add	r10 r10 r9
	ldi	r10 r10 0
	fldi	f2 r10 0
	fsti	f2 r15 0
	fldi	f2 r10 1
	fsti	f2 r15 1
	fldi	f2 r10 2
	fsti	f2 r15 2
	addi	r10 r0 4124
	add	r11 r11 r9
	ldi	r11 r11 0
	fldi	f2 r10 0
	fldi	f3 r11 0
	fadd	f2 f2 f3
	fsti	f2 r10 0
	fldi	f2 r10 1
	fldi	f3 r11 1
	fadd	f2 f2 f3
	fsti	f2 r10 1
	fldi	f2 r10 2
	fldi	f3 r11 2
	fadd	f2 f2 f3
	fsti	f2 r10 2
	addi	r10 r0 4124
	add	r11 r12 r9
	ldi	r11 r11 0
	fldi	f2 r10 0
	fldi	f3 r11 0
	fadd	f2 f2 f3
	fsti	f2 r10 0
	fldi	f2 r10 1
	fldi	f3 r11 1
	fadd	f2 f2 f3
	fsti	f2 r10 1
	fldi	f2 r10 2
	fldi	f3 r11 2
	fadd	f2 f2 f3
	fsti	f2 r10 2
	addi	r10 r0 4124
	add	r11 r13 r9
	ldi	r11 r11 0
	fldi	f2 r10 0
	fldi	f3 r11 0
	fadd	f2 f2 f3
	fsti	f2 r10 0
	fldi	f2 r10 1
	fldi	f3 r11 1
	fadd	f2 f2 f3
	fsti	f2 r10 1
	fldi	f2 r10 2
	fldi	f3 r11 2
	fadd	f2 f2 f3
	fsti	f2 r10 2
	addi	r10 r0 4124
	add	r11 r14 r9
	ldi	r11 r11 0
	fldi	f2 r10 0
	fldi	f3 r11 0
	fadd	f2 f2 f3
	fsti	f2 r10 0
	fldi	f2 r10 1
	fldi	f3 r11 1
	fadd	f2 f2 f3
	fsti	f2 r10 1
	fldi	f2 r10 2
	fldi	f3 r11 2
	fadd	f2 f2 f3
	fsti	f2 r10 2
	add	r10 r7 r4
	ldi	r10 r10 0
	ldi	r10 r10 4
	addi	r11 r0 4127
	add	r10 r10 r9
	ldi	r10 r10 0
	addi	r12 r0 4124
	fldi	f2 r11 0
	fldi	f3 r10 0
	fldi	f4 r12 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r11 0
	fldi	f2 r11 1
	fldi	f3 r10 1
	fldi	f4 r12 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r11 1
	fldi	f2 r11 2
	fldi	f3 r10 2
	fldi	f4 r12 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r11 2
L_cont_22567 : 
	addi	r9 r9 1
	add	r10 r7 r4
	ldi	r10 r10 0
	addi	r11 r0 4
	bgt	r9 r11 L_else_22568
	ldi	r11 r10 2
	add	r11 r11 r9
	ldi	r11 r11 0
	bgt	r0 r11 L_else_22569
	add	r11 r7 r4
	ldi	r11 r11 0
	ldi	r11 r11 2
	add	r11 r11 r9
	ldi	r11 r11 0
	add	r12 r6 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22570
	add	r12 r8 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22572
	addi	r12 r4 -1
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22574
	addi	r12 r4 1
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22576
	addi	r11 r0 1
	jump	L_cont_22577
L_else_22576 : 
	addi	r11 r0 0
L_cont_22577 : 
	jump	L_cont_22575
L_else_22574 : 
	addi	r11 r0 0
L_cont_22575 : 
	jump	L_cont_22573
L_else_22572 : 
	addi	r11 r0 0
L_cont_22573 : 
	jump	L_cont_22571
L_else_22570 : 
	addi	r11 r0 0
L_cont_22571 : 
	bne	r11 r0 L_else_22578
	add	r4 r7 r4
	ldi	r4 r4 0
	add	r5 r0 r9
	jump	L_do_without_neighbors_2271
L_else_22578 : 
	ldi	r10 r10 3
	add	r10 r10 r9
	ldi	r10 r10 0
	sti	r8 r2 2
	sti	r7 r2 3
	sti	r6 r2 4
	sti	r5 r2 5
	sti	r4 r2 6
	sti	r9 r2 7
	bne	r10 r0 L_else_22579
	jump	L_cont_22580
L_else_22579 : 
	add	r5 r0 r6
	add	r6 r0 r7
	add	r7 r0 r8
	add	r8 r0 r9
	addi	r2 r2 9
	call	L_calc_diffuse_using_5points_2265
	subi	r2 r2 9
L_cont_22580 : 
	ldi	r4 r2 7
	addi	r9 r4 1
	ldi	r4 r2 6
	ldi	r5 r2 5
	ldi	r6 r2 4
	ldi	r7 r2 3
	ldi	r8 r2 2
	jump	L_try_exploit_neighbors_2287
L_else_22569 : 
	return
L_else_22568 : 
	return
L_else_22550 : 
	return
L_else_22549 : 
	return
L_pretrace_diffuse_rays_2300 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_22585
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r0 r6 L_else_22586
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r5 r2 0
	bne	r6 r0 L_else_22587
	jump	L_cont_22588
L_else_22587 : 
	ldi	r6 r4 6
	ldi	r6 r6 0
	addi	r7 r0 4124
	fldi	f2 r0 27
	fsti	f2 r7 0
	fsti	f2 r7 1
	fsti	f2 r7 2
	ldi	r7 r4 7
	ldi	r8 r4 1
	addi	r9 r0 4148
	add	r6 r9 r6
	ldi	r6 r6 0
	add	r7 r7 r5
	ldi	r7 r7 0
	add	r8 r8 r5
	ldi	r8 r8 0
	addi	r9 r0 4138
	fldi	f2 r8 0
	fsti	f2 r9 0
	fldi	f2 r8 1
	fsti	f2 r9 1
	fldi	f2 r8 2
	fsti	f2 r9 2
	addi	r9 r0 4144
	ldi	r9 r9 0
	addi	r9 r9 -1
	sti	r4 r2 1
	sti	r8 r2 2
	sti	r7 r2 3
	sti	r6 r2 4
	add	r5 r0 r9
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_setup_startp_constants_2151
	subi	r2 r2 6
	addi	r7 r0 118
	ldi	r4 r2 4
	ldi	r5 r2 3
	ldi	r6 r2 2
	addi	r2 r2 6
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 6
	ldi	r4 r2 1
	ldi	r5 r4 5
	ldi	r6 r2 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r7 r0 4124
	fldi	f2 r7 0
	fsti	f2 r5 0
	fldi	f2 r7 1
	fsti	f2 r5 1
	fldi	f2 r7 2
	fsti	f2 r5 2
L_cont_22588 : 
	ldi	r5 r2 0
	addi	r5 r5 1
	addi	r6 r0 4
	bgt	r5 r6 L_else_22589
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r0 r6 L_else_22590
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r5 r2 5
	bne	r6 r0 L_else_22591
	jump	L_cont_22592
L_else_22591 : 
	ldi	r6 r4 6
	ldi	r6 r6 0
	addi	r7 r0 4124
	fldi	f2 r0 27
	fsti	f2 r7 0
	fsti	f2 r7 1
	fsti	f2 r7 2
	ldi	r7 r4 7
	ldi	r8 r4 1
	addi	r9 r0 4148
	add	r6 r9 r6
	ldi	r6 r6 0
	add	r7 r7 r5
	ldi	r7 r7 0
	add	r8 r8 r5
	ldi	r8 r8 0
	addi	r9 r0 4138
	fldi	f2 r8 0
	fsti	f2 r9 0
	fldi	f2 r8 1
	fsti	f2 r9 1
	fldi	f2 r8 2
	fsti	f2 r9 2
	addi	r9 r0 4144
	ldi	r9 r9 0
	addi	r9 r9 -1
	sti	r4 r2 1
	sti	r8 r2 6
	sti	r7 r2 7
	sti	r6 r2 8
	add	r5 r0 r9
	add	r4 r0 r8
	addi	r2 r2 10
	call	L_setup_startp_constants_2151
	subi	r2 r2 10
	addi	r4 r0 118
	ldi	r5 r2 8
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	ldi	r7 r2 7
	fldi	f3 r7 0
	fmul	f2 f2 f3
	fldi	f3 r6 1
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r6 2
	fldi	f4 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22593
	addi	r6 r0 0
	jump	L_cont_22594
L_else_22593 : 
	addi	r6 r0 1
L_cont_22594 : 
	bne	r6 r0 L_else_22595
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 10
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 10
	jump	L_cont_22596
L_else_22595 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 10
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 10
L_cont_22596 : 
	addi	r7 r0 116
	ldi	r4 r2 8
	ldi	r5 r2 7
	ldi	r6 r2 6
	addi	r2 r2 10
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 10
	ldi	r4 r2 1
	ldi	r5 r4 5
	ldi	r6 r2 5
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r7 r0 4124
	fldi	f2 r7 0
	fsti	f2 r5 0
	fldi	f2 r7 1
	fsti	f2 r5 1
	fldi	f2 r7 2
	fsti	f2 r5 2
L_cont_22592 : 
	ldi	r5 r2 5
	addi	r5 r5 1
	jump	L_pretrace_diffuse_rays_2300
L_else_22590 : 
	return
L_else_22589 : 
	return
L_else_22586 : 
	return
L_else_22585 : 
	return
L_pretrace_pixels_2303 : 
	bgt	r0 r5 L_else_22601
	addi	r7 r0 4134
	fldi	f5 r7 0
	addi	r7 r0 4132
	ldi	r7 r7 0
	sub	r7 r5 r7
	foi	f6 r7
	fmul	f5 f5 f6
	addi	r7 r0 4141
	addi	r8 r0 4102
	fldi	f6 r8 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fsti	f6 r7 0
	addi	r7 r0 4141
	addi	r8 r0 4102
	fldi	f6 r8 1
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fsti	f6 r7 1
	addi	r7 r0 4141
	addi	r8 r0 4102
	fldi	f6 r8 2
	fmul	f5 f5 f6
	fadd	f5 f5 f4
	fsti	f5 r7 2
	addi	r7 r0 4141
	fldi	f5 r7 0
	fmul	f5 f5 f5
	fldi	f6 r7 1
	fmul	f6 f6 f6
	fadd	f5 f5 f6
	fldi	f6 r7 2
	fmul	f6 f6 f6
	fadd	f5 f5 f6
	fldi	f6 r0 29
	fldi	f7 r0 39
	fbgt	f5 f7 L_else_22602
	fldi	f7 r0 39
	jump	L_cont_22603
L_else_22602 : 
	fldi	f7 r0 39
	fdiv	f7 f7 f5
L_cont_22603 : 
	fldi	f8 r0 31
	fmul	f8 f8 f7
	fsub	f6 f7 f6
	fbgt	f0 f6 L_else_22604
	fadd	f6 f0 f6
	jump	L_cont_22605
L_else_22604 : 
	fsub	f6 f0 f6
L_cont_22605 : 
	fsti	f4 r2 0
	fsti	f3 r2 2
	fsti	f2 r2 4
	sti	r6 r2 6
	sti	r5 r2 7
	sti	r4 r2 8
	sti	r7 r2 9
	fsti	f5 r2 10
	fbgt	f8 f6 L_else_22606
	fldi	f6 r0 30
	fmul	f8 f5 f7
	fmul	f8 f8 f7
	fsub	f6 f6 f8
	fmul	f6 f7 f6
	fldi	f8 r0 29
	fdiv	f6 f6 f8
	fadd	f4 f0 f6
	fadd	f3 f0 f7
	fadd	f2 f0 f5
	addi	r2 r2 13
	call	L_isqrt_1892
	subi	r2 r2 13
	jump	L_cont_22607
L_else_22606 : 
	fadd	f2 f0 f7
L_cont_22607 : 
	fldi	f3 r2 10
	fmul	f2 f3 f2
	fbne	f2 f0 L_else_22608
	addi	r4 r0 1
	jump	L_cont_22609
L_else_22608 : 
	addi	r4 r0 0
L_cont_22609 : 
	bne	r4 r0 L_else_22610
	fldi	f3 r0 39
	fdiv	f2 f3 f2
	jump	L_cont_22611
L_else_22610 : 
	fldi	f2 r0 39
L_cont_22611 : 
	ldi	r4 r2 9
	fldi	f3 r4 0
	fmul	f3 f3 f2
	fsti	f3 r4 0
	fldi	f3 r4 1
	fmul	f3 f3 f2
	fsti	f3 r4 1
	fldi	f3 r4 2
	fmul	f2 f3 f2
	fsti	f2 r4 2
	addi	r4 r0 4127
	fldi	f2 r0 27
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	addi	r4 r0 4135
	addi	r5 r0 4108
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	addi	r4 r0 0
	fldi	f2 r0 39
	addi	r5 r0 4141
	ldi	r6 r2 7
	ldi	r7 r2 8
	add	r8 r7 r6
	ldi	r8 r8 0
	fldi	f3 r0 27
	add	r6 r0 r8
	addi	r2 r2 13
	call	L_trace_ray_2240
	subi	r2 r2 13
	ldi	r4 r2 7
	ldi	r5 r2 8
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r7 r0 4127
	fldi	f2 r7 0
	fsti	f2 r6 0
	fldi	f2 r7 1
	fsti	f2 r6 1
	fldi	f2 r7 2
	fsti	f2 r6 2
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 6
	ldi	r7 r2 6
	sti	r7 r6 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r8 r0 0
	ldi	r9 r6 2
	add	r9 r9 r8
	ldi	r9 r9 0
	bgt	r0 r9 L_else_22612
	ldi	r9 r6 3
	add	r9 r9 r8
	ldi	r9 r9 0
	sti	r6 r2 12
	bne	r9 r0 L_else_22614
	jump	L_cont_22615
L_else_22614 : 
	ldi	r9 r6 6
	ldi	r9 r9 0
	addi	r10 r0 4124
	fldi	f2 r0 27
	fsti	f2 r10 0
	fsti	f2 r10 1
	fsti	f2 r10 2
	ldi	r10 r6 7
	ldi	r11 r6 1
	addi	r12 r0 4148
	add	r9 r12 r9
	ldi	r9 r9 0
	add	r10 r10 r8
	ldi	r10 r10 0
	add	r11 r11 r8
	ldi	r11 r11 0
	addi	r12 r0 4138
	fldi	f2 r11 0
	fsti	f2 r12 0
	fldi	f2 r11 1
	fsti	f2 r12 1
	fldi	f2 r11 2
	fsti	f2 r12 2
	addi	r12 r0 4144
	ldi	r12 r12 0
	addi	r12 r12 -1
	sti	r8 r2 13
	sti	r11 r2 14
	sti	r10 r2 15
	sti	r9 r2 16
	add	r5 r0 r12
	add	r4 r0 r11
	addi	r2 r2 18
	call	L_setup_startp_constants_2151
	subi	r2 r2 18
	addi	r4 r0 118
	ldi	r5 r2 16
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	ldi	r7 r2 15
	fldi	f3 r7 0
	fmul	f2 f2 f3
	fldi	f3 r6 1
	fldi	f4 r7 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r6 2
	fldi	f4 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22616
	addi	r6 r0 0
	jump	L_cont_22617
L_else_22616 : 
	addi	r6 r0 1
L_cont_22617 : 
	bne	r6 r0 L_else_22618
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 18
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 18
	jump	L_cont_22619
L_else_22618 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 18
	call	L_trace_diffuse_ray_2246
	subi	r2 r2 18
L_cont_22619 : 
	addi	r7 r0 116
	ldi	r4 r2 16
	ldi	r5 r2 15
	ldi	r6 r2 14
	addi	r2 r2 18
	call	L_iter_trace_diffuse_rays_2249
	subi	r2 r2 18
	ldi	r4 r2 12
	ldi	r5 r4 5
	ldi	r6 r2 13
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 4124
	fldi	f2 r6 0
	fsti	f2 r5 0
	fldi	f2 r6 1
	fsti	f2 r5 1
	fldi	f2 r6 2
	fsti	f2 r5 2
L_cont_22615 : 
	addi	r5 r0 1
	ldi	r4 r2 12
	addi	r2 r2 18
	call	L_pretrace_diffuse_rays_2300
	subi	r2 r2 18
	jump	L_cont_22613
L_else_22612 : 
L_cont_22613 : 
	ldi	r4 r2 7
	addi	r5 r4 -1
	ldi	r4 r2 6
	addi	r4 r4 1
	addi	r6 r0 5
	bgt	r6 r4 L_else_22620
	addi	r6 r4 -5
	jump	L_cont_22621
L_else_22620 : 
	add	r6 r0 r4
L_cont_22621 : 
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r4 r2 8
	jump	L_pretrace_pixels_2303
L_else_22601 : 
	return
L_pretrace_line_2310 : 
	addi	r7 r0 4134
	fldi	f2 r7 0
	addi	r7 r0 4132
	ldi	r7 r7 1
	sub	r5 r5 r7
	foi	f3 r5
	fmul	f2 f2 f3
	addi	r5 r0 4105
	fldi	f3 r5 0
	fmul	f3 f2 f3
	addi	r5 r0 4099
	fldi	f4 r5 0
	fadd	f3 f3 f4
	addi	r5 r0 4105
	fldi	f4 r5 1
	fmul	f4 f2 f4
	addi	r5 r0 4099
	fldi	f5 r5 1
	fadd	f4 f4 f5
	addi	r5 r0 4105
	fldi	f5 r5 2
	fmul	f2 f2 f5
	addi	r5 r0 4099
	fldi	f5 r5 2
	fadd	f2 f2 f5
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r5 r5 -1
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	jump	L_pretrace_pixels_2303
L_scan_pixel_2314 : 
	addi	r9 r0 4130
	ldi	r9 r9 0
	bgt	r9 r4 L_else_22623
	return
L_else_22623 : 
	addi	r9 r0 4127
	add	r10 r7 r4
	ldi	r10 r10 0
	ldi	r10 r10 0
	fldi	f2 r10 0
	fsti	f2 r9 0
	fldi	f2 r10 1
	fsti	f2 r9 1
	fldi	f2 r10 2
	fsti	f2 r9 2
	addi	r9 r0 4130
	ldi	r9 r9 1
	addi	r10 r5 1
	bgt	r9 r10 L_else_22625
	addi	r9 r0 0
	jump	L_cont_22626
L_else_22625 : 
	bgt	r5 r0 L_else_22627
	addi	r9 r0 0
	jump	L_cont_22628
L_else_22627 : 
	addi	r9 r0 4130
	ldi	r9 r9 0
	addi	r10 r4 1
	bgt	r9 r10 L_else_22629
	addi	r9 r0 0
	jump	L_cont_22630
L_else_22629 : 
	bgt	r4 r0 L_else_22631
	addi	r9 r0 0
	jump	L_cont_22632
L_else_22631 : 
	addi	r9 r0 1
L_cont_22632 : 
L_cont_22630 : 
L_cont_22628 : 
L_cont_22626 : 
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	sti	r7 r2 3
	sti	r4 r2 4
	bne	r9 r0 L_else_22633
	add	r9 r7 r4
	ldi	r9 r9 0
	addi	r10 r0 0
	ldi	r11 r9 2
	add	r11 r11 r10
	ldi	r11 r11 0
	bgt	r0 r11 L_else_22635
	ldi	r11 r9 3
	add	r11 r11 r10
	ldi	r11 r11 0
	sti	r9 r2 5
	bne	r11 r0 L_else_22637
	jump	L_cont_22638
L_else_22637 : 
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 7
	call	L_calc_diffuse_using_1point_2262
	subi	r2 r2 7
L_cont_22638 : 
	addi	r5 r0 1
	ldi	r4 r2 5
	addi	r2 r2 7
	call	L_do_without_neighbors_2271
	subi	r2 r2 7
	jump	L_cont_22636
L_else_22635 : 
L_cont_22636 : 
	jump	L_cont_22634
L_else_22633 : 
	addi	r9 r0 0
	add	r10 r7 r4
	ldi	r10 r10 0
	ldi	r11 r10 2
	add	r11 r11 r9
	ldi	r11 r11 0
	bgt	r0 r11 L_else_22639
	add	r11 r7 r4
	ldi	r11 r11 0
	ldi	r11 r11 2
	add	r11 r11 r9
	ldi	r11 r11 0
	add	r12 r6 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22641
	add	r12 r8 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22643
	addi	r12 r4 -1
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22645
	addi	r12 r4 1
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22647
	addi	r11 r0 1
	jump	L_cont_22648
L_else_22647 : 
	addi	r11 r0 0
L_cont_22648 : 
	jump	L_cont_22646
L_else_22645 : 
	addi	r11 r0 0
L_cont_22646 : 
	jump	L_cont_22644
L_else_22643 : 
	addi	r11 r0 0
L_cont_22644 : 
	jump	L_cont_22642
L_else_22641 : 
	addi	r11 r0 0
L_cont_22642 : 
	bne	r11 r0 L_else_22649
	add	r10 r7 r4
	ldi	r10 r10 0
	add	r5 r0 r9
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_do_without_neighbors_2271
	subi	r2 r2 7
	jump	L_cont_22650
L_else_22649 : 
	ldi	r10 r10 3
	add	r10 r10 r9
	ldi	r10 r10 0
	bne	r10 r0 L_else_22651
	jump	L_cont_22652
L_else_22651 : 
	add	r5 r0 r6
	add	r6 r0 r7
	add	r7 r0 r8
	add	r8 r0 r9
	addi	r2 r2 7
	call	L_calc_diffuse_using_5points_2265
	subi	r2 r2 7
L_cont_22652 : 
	addi	r9 r0 1
	ldi	r4 r2 4
	ldi	r5 r2 2
	ldi	r6 r2 1
	ldi	r7 r2 3
	ldi	r8 r2 0
	addi	r2 r2 7
	call	L_try_exploit_neighbors_2287
	subi	r2 r2 7
L_cont_22650 : 
	jump	L_cont_22640
L_else_22639 : 
L_cont_22640 : 
L_cont_22634 : 
	addi	r4 r0 4127
	fldi	f2 r4 0
	addi	r2 r2 7
	call	min_caml_print_float
	subi	r2 r2 7
	addi	r4 r0 4127
	fldi	f2 r4 1
	addi	r2 r2 7
	call	min_caml_print_float
	subi	r2 r2 7
	addi	r4 r0 4127
	fldi	f2 r4 2
	addi	r2 r2 7
	call	min_caml_print_float
	subi	r2 r2 7
	ldi	r4 r2 4
	addi	r4 r4 1
	addi	r5 r0 4130
	ldi	r5 r5 0
	bgt	r5 r4 L_else_22653
	return
L_else_22653 : 
	addi	r5 r0 4127
	ldi	r7 r2 3
	add	r6 r7 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	fsti	f2 r5 0
	fldi	f2 r6 1
	fsti	f2 r5 1
	fldi	f2 r6 2
	fsti	f2 r5 2
	addi	r5 r0 4130
	ldi	r5 r5 1
	ldi	r6 r2 2
	addi	r8 r6 1
	bgt	r5 r8 L_else_22655
	addi	r5 r0 0
	jump	L_cont_22656
L_else_22655 : 
	bgt	r6 r0 L_else_22657
	addi	r5 r0 0
	jump	L_cont_22658
L_else_22657 : 
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r8 r4 1
	bgt	r5 r8 L_else_22659
	addi	r5 r0 0
	jump	L_cont_22660
L_else_22659 : 
	bgt	r4 r0 L_else_22661
	addi	r5 r0 0
	jump	L_cont_22662
L_else_22661 : 
	addi	r5 r0 1
L_cont_22662 : 
L_cont_22660 : 
L_cont_22658 : 
L_cont_22656 : 
	sti	r4 r2 6
	bne	r5 r0 L_else_22663
	add	r5 r7 r4
	ldi	r5 r5 0
	addi	r8 r0 0
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 8
	call	L_do_without_neighbors_2271
	subi	r2 r2 8
	jump	L_cont_22664
L_else_22663 : 
	addi	r9 r0 0
	ldi	r5 r2 1
	ldi	r8 r2 0
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 8
	call	L_try_exploit_neighbors_2287
	subi	r2 r2 8
L_cont_22664 : 
	addi	r4 r0 4127
	fldi	f2 r4 0
	addi	r2 r2 8
	call	min_caml_print_float
	subi	r2 r2 8
	addi	r4 r0 4127
	fldi	f2 r4 1
	addi	r2 r2 8
	call	min_caml_print_float
	subi	r2 r2 8
	addi	r4 r0 4127
	fldi	f2 r4 2
	addi	r2 r2 8
	call	min_caml_print_float
	subi	r2 r2 8
	ldi	r4 r2 6
	addi	r4 r4 1
	ldi	r5 r2 2
	ldi	r6 r2 1
	ldi	r7 r2 3
	ldi	r8 r2 0
	jump	L_scan_pixel_2314
L_scan_line_2320 : 
	addi	r9 r0 4130
	ldi	r9 r9 1
	bgt	r9 r4 L_else_22665
	return
L_else_22665 : 
	addi	r9 r0 4130
	ldi	r9 r9 1
	addi	r9 r9 -1
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r5 r2 2
	sti	r4 r2 3
	sti	r6 r2 4
	bgt	r9 r4 L_else_22667
	jump	L_cont_22668
L_else_22667 : 
	addi	r9 r4 1
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_pretrace_line_2310
	subi	r2 r2 6
L_cont_22668 : 
	addi	r4 r0 0
	addi	r5 r0 4130
	ldi	r5 r5 0
	bgt	r5 r0 L_else_22669
	jump	L_cont_22670
L_else_22669 : 
	addi	r5 r0 4127
	ldi	r7 r2 4
	add	r6 r7 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	fsti	f2 r5 0
	fldi	f2 r6 1
	fsti	f2 r5 1
	fldi	f2 r6 2
	fsti	f2 r5 2
	addi	r5 r0 4130
	ldi	r5 r5 1
	ldi	r6 r2 3
	addi	r8 r6 1
	bgt	r5 r8 L_else_22671
	addi	r5 r0 0
	jump	L_cont_22672
L_else_22671 : 
	bgt	r6 r0 L_else_22673
	addi	r5 r0 0
	jump	L_cont_22674
L_else_22673 : 
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r8 r0 1
	bgt	r5 r8 L_else_22675
	addi	r5 r0 0
	jump	L_cont_22676
L_else_22675 : 
	addi	r5 r0 0
L_cont_22676 : 
L_cont_22674 : 
L_cont_22672 : 
	bne	r5 r0 L_else_22677
	add	r4 r7 r4
	ldi	r4 r4 0
	addi	r5 r0 0
	addi	r2 r2 6
	call	L_do_without_neighbors_2271
	subi	r2 r2 6
	jump	L_cont_22678
L_else_22677 : 
	addi	r9 r0 0
	ldi	r5 r2 2
	ldi	r8 r2 1
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 6
	call	L_try_exploit_neighbors_2287
	subi	r2 r2 6
L_cont_22678 : 
	addi	r4 r0 4127
	fldi	f2 r4 0
	addi	r2 r2 6
	call	min_caml_print_float
	subi	r2 r2 6
	addi	r4 r0 4127
	fldi	f2 r4 1
	addi	r2 r2 6
	call	min_caml_print_float
	subi	r2 r2 6
	addi	r4 r0 4127
	fldi	f2 r4 2
	addi	r2 r2 6
	call	min_caml_print_float
	subi	r2 r2 6
	addi	r4 r0 1
	ldi	r5 r2 3
	ldi	r6 r2 2
	ldi	r7 r2 4
	ldi	r8 r2 1
	addi	r2 r2 6
	call	L_scan_pixel_2314
	subi	r2 r2 6
L_cont_22670 : 
	ldi	r4 r2 3
	addi	r5 r4 1
	ldi	r4 r2 0
	addi	r4 r4 2
	addi	r6 r0 5
	bgt	r6 r4 L_else_22679
	addi	r6 r4 -5
	jump	L_cont_22680
L_else_22679 : 
	add	r6 r0 r4
L_cont_22680 : 
	addi	r4 r0 4130
	ldi	r4 r4 1
	bgt	r4 r5 L_else_22681
	return
L_else_22681 : 
	addi	r4 r0 4130
	ldi	r4 r4 1
	addi	r4 r4 -1
	sti	r6 r2 5
	sti	r5 r2 6
	bgt	r4 r5 L_else_22683
	jump	L_cont_22684
L_else_22683 : 
	addi	r4 r5 1
	ldi	r7 r2 2
	add	r5 r0 r4
	add	r4 r0 r7
	addi	r2 r2 8
	call	L_pretrace_line_2310
	subi	r2 r2 8
L_cont_22684 : 
	addi	r4 r0 0
	ldi	r5 r2 6
	ldi	r6 r2 4
	ldi	r7 r2 1
	ldi	r8 r2 2
	addi	r2 r2 8
	call	L_scan_pixel_2314
	subi	r2 r2 8
	ldi	r4 r2 6
	addi	r4 r4 1
	ldi	r5 r2 5
	addi	r5 r5 2
	addi	r6 r0 5
	bgt	r6 r5 L_else_22685
	addi	r8 r5 -5
	jump	L_cont_22686
L_else_22685 : 
	add	r8 r0 r5
L_cont_22686 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	ldi	r7 r2 4
	jump	L_scan_line_2320
L_create_pixel_2328 : 
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 1
	call	min_caml_create_float_array
	subi	r2 r2 1
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 0
	add	r4 r0 r5
	addi	r2 r2 2
	call	min_caml_create_float_array
	subi	r2 r2 2
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 2
	call	min_caml_create_array
	subi	r2 r2 2
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 1
	add	r4 r0 r5
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	sti	r4 r5 4
	addi	r4 r0 5
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 3
	call	min_caml_create_array
	subi	r2 r2 3
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 2
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	min_caml_create_float_array
	subi	r2 r2 5
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 4
	add	r4 r0 r5
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	sti	r4 r5 4
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 5
	add	r4 r0 r5
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 4
	addi	r4 r0 1
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 4
	add	r4 r0 r3
	addi	r3 r3 8
	sti	r5 r4 7
	ldi	r5 r2 6
	sti	r5 r4 6
	ldi	r5 r2 5
	sti	r5 r4 5
	ldi	r5 r2 4
	sti	r5 r4 4
	ldi	r5 r2 3
	sti	r5 r4 3
	ldi	r5 r2 2
	sti	r5 r4 2
	ldi	r5 r2 1
	sti	r5 r4 1
	ldi	r5 r2 0
	sti	r5 r4 0
	add	r4 r0 r4
	return
L_init_line_elements_2330 : 
	bgt	r0 r5 L_else_22687
	addi	r6 r0 3
	fldi	f2 r0 27
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 2
	add	r4 r0 r5
	addi	r2 r2 4
	call	min_caml_create_float_array
	subi	r2 r2 4
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	min_caml_create_float_array
	subi	r2 r2 5
	ldi	r5 r2 3
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 5
	call	min_caml_create_float_array
	subi	r2 r2 5
	ldi	r5 r2 3
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 5
	call	min_caml_create_float_array
	subi	r2 r2 5
	ldi	r5 r2 3
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 5
	call	min_caml_create_float_array
	subi	r2 r2 5
	ldi	r5 r2 3
	sti	r4 r5 4
	addi	r4 r0 5
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 4
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 5
	add	r4 r0 r5
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	ldi	r5 r2 6
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	ldi	r5 r2 6
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	ldi	r5 r2 6
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	ldi	r5 r2 6
	sti	r4 r5 4
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 4
	addi	r4 r0 1
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 9
	call	min_caml_create_array
	subi	r2 r2 9
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 8
	add	r4 r0 r5
	addi	r2 r2 10
	call	min_caml_create_float_array
	subi	r2 r2 10
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 10
	call	min_caml_create_array
	subi	r2 r2 10
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 9
	add	r4 r0 r5
	addi	r2 r2 11
	call	min_caml_create_float_array
	subi	r2 r2 11
	ldi	r5 r2 9
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 11
	call	min_caml_create_float_array
	subi	r2 r2 11
	ldi	r5 r2 9
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 11
	call	min_caml_create_float_array
	subi	r2 r2 11
	ldi	r5 r2 9
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 11
	call	min_caml_create_float_array
	subi	r2 r2 11
	ldi	r5 r2 9
	sti	r4 r5 4
	add	r4 r0 r3
	addi	r3 r3 8
	sti	r5 r4 7
	ldi	r5 r2 8
	sti	r5 r4 6
	ldi	r5 r2 7
	sti	r5 r4 5
	ldi	r5 r2 6
	sti	r5 r4 4
	ldi	r5 r2 5
	sti	r5 r4 3
	ldi	r5 r2 4
	sti	r5 r4 2
	ldi	r5 r2 3
	sti	r5 r4 1
	ldi	r5 r2 2
	sti	r5 r4 0
	add	r4 r0 r4
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r5 -1
	bgt	r0 r4 L_else_22688
	sti	r4 r2 10
	addi	r2 r2 12
	call	L_create_pixel_2328
	subi	r2 r2 12
	ldi	r5 r2 10
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	jump	L_init_line_elements_2330
L_else_22688 : 
	add	r4 r0 r6
	return
L_else_22687 : 
	add	r4 r0 r4
	return
L_calc_dirvec_2340 : 
	addi	r7 r0 5
	bgt	r7 r4 L_else_22689
	fmul	f4 f2 f2
	fmul	f5 f3 f3
	fadd	f4 f4 f5
	fldi	f5 r0 39
	fadd	f4 f4 f5
	fldi	f5 r0 29
	fldi	f6 r0 39
	fbgt	f4 f6 L_else_22690
	fldi	f6 r0 39
	jump	L_cont_22691
L_else_22690 : 
	fldi	f6 r0 39
	fdiv	f6 f6 f4
L_cont_22691 : 
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f3 r2 2
	fsti	f2 r2 4
	fsti	f4 r2 6
	fadd	f3 f0 f5
	fadd	f2 f0 f4
	fadd	f4 f0 f6
	addi	r2 r2 9
	call	L_isqrt_1892
	subi	r2 r2 9
	fldi	f3 r2 6
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fdiv	f3 f3 f2
	fldi	f4 r2 2
	fdiv	f4 f4 f2
	fldi	f5 r0 39
	fdiv	f2 f5 f2
	addi	r4 r0 4148
	ldi	r5 r2 1
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 0
	add	r6 r4 r5
	ldi	r6 r6 0
	ldi	r6 r6 0
	fsti	f3 r6 0
	fsti	f4 r6 1
	fsti	f2 r6 2
	addi	r6 r5 40
	add	r6 r4 r6
	ldi	r6 r6 0
	ldi	r6 r6 0
	fsub	f5 f0 f4
	fsti	f3 r6 0
	fsti	f2 r6 1
	fsti	f5 r6 2
	addi	r6 r5 80
	add	r6 r4 r6
	ldi	r6 r6 0
	ldi	r6 r6 0
	fsub	f5 f0 f3
	fsub	f6 f0 f4
	fsti	f2 r6 0
	fsti	f5 r6 1
	fsti	f6 r6 2
	addi	r6 r5 1
	add	r6 r4 r6
	ldi	r6 r6 0
	ldi	r6 r6 0
	fsub	f5 f0 f3
	fsub	f6 f0 f4
	fsub	f7 f0 f2
	fsti	f5 r6 0
	fsti	f6 r6 1
	fsti	f7 r6 2
	addi	r6 r5 41
	add	r6 r4 r6
	ldi	r6 r6 0
	ldi	r6 r6 0
	fsub	f5 f0 f3
	fsub	f6 f0 f2
	fsti	f5 r6 0
	fsti	f6 r6 1
	fsti	f4 r6 2
	addi	r5 r5 81
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 0
	fsub	f2 f0 f2
	fsti	f2 r4 0
	fsti	f3 r4 1
	fsti	f4 r4 2
	return
L_else_22689 : 
	fmul	f2 f3 f3
	fldi	f3 r0 7
	fadd	f2 f2 f3
	fldi	f3 r0 29
	fldi	f6 r0 39
	fbgt	f2 f6 L_else_22693
	fldi	f6 r0 39
	jump	L_cont_22694
L_else_22693 : 
	fldi	f6 r0 39
	fdiv	f6 f6 f2
L_cont_22694 : 
	fldi	f7 r0 31
	fmul	f7 f7 f6
	fsub	f3 f6 f3
	fbgt	f0 f3 L_else_22695
	fadd	f3 f0 f3
	jump	L_cont_22696
L_else_22695 : 
	fsub	f3 f0 f3
L_cont_22696 : 
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f5 r2 8
	sti	r4 r2 10
	fsti	f4 r2 12
	fsti	f2 r2 14
	fbgt	f7 f3 L_else_22698
	fldi	f3 r0 30
	fmul	f7 f2 f6
	fmul	f7 f7 f6
	fsub	f3 f3 f7
	fmul	f3 f6 f3
	fldi	f7 r0 29
	fdiv	f3 f3 f7
	fadd	f4 f0 f3
	fadd	f3 f0 f6
	addi	r2 r2 17
	call	L_isqrt_1892
	subi	r2 r2 17
	jump	L_cont_22699
L_else_22698 : 
	fadd	f2 f0 f6
L_cont_22699 : 
	fldi	f3 r2 14
	fmul	f2 f3 f2
	fldi	f3 r0 39
	fdiv	f3 f3 f2
	fsti	f2 r2 16
	fadd	f2 f0 f3
	addi	r2 r2 19
	call	L_atan_1890
	subi	r2 r2 19
	fldi	f3 r2 12
	fmul	f2 f2 f3
	fldi	f4 r0 57
	fldi	f5 r0 56
	fsti	f2 r2 18
	fbgt	f2 f5 L_else_22700
	fldi	f6 r0 55
	fbgt	f6 f2 L_else_22702
	fldi	f4 r0 54
	fldi	f6 r0 53
	fldi	f7 r0 52
	fbgt	f2 f0 L_else_22704
	fldi	f4 r0 38
	fbgt	f4 f2 L_else_22706
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_22707
L_else_22706 : 
	fldi	f4 r0 37
	fbgt	f4 f2 L_else_22708
	fadd	f4 f6 f2
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 45
	fmul	f9 f10 f9
	fldi	f10 r0 44
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 39
	fadd	f4 f4 f5
	fsub	f2 f0 f4
	jump	L_cont_22709
L_else_22708 : 
	fadd	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 51
	fmul	f5 f11 f5
	fldi	f11 r0 50
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f4 f5 f4
	fsub	f2 f0 f4
L_cont_22709 : 
L_cont_22707 : 
	jump	L_cont_22705
L_else_22704 : 
	fbgt	f2 f4 L_else_22710
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_22711
L_else_22710 : 
	fbgt	f2 f7 L_else_22712
	fsub	f4 f2 f6
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 45
	fmul	f9 f10 f9
	fldi	f10 r0 44
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 39
	fadd	f2 f4 f5
	jump	L_cont_22713
L_else_22712 : 
	fsub	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 51
	fmul	f5 f11 f5
	fldi	f11 r0 50
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f2 f5 f4
L_cont_22713 : 
L_cont_22711 : 
L_cont_22705 : 
	jump	L_cont_22703
L_else_22702 : 
	fadd	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 21
	call	L_sin_1886
	subi	r2 r2 21
L_cont_22703 : 
	jump	L_cont_22701
L_else_22700 : 
	fsub	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 21
	call	L_sin_1886
	subi	r2 r2 21
L_cont_22701 : 
	fldi	f3 r2 18
	fsti	f2 r2 20
	fadd	f2 f0 f3
	addi	r2 r2 23
	call	L_cos_1888
	subi	r2 r2 23
	fldi	f3 r2 20
	fdiv	f2 f3 f2
	fldi	f3 r2 16
	fmul	f2 f2 f3
	ldi	r4 r2 10
	addi	r4 r4 1
	fmul	f3 f2 f2
	fldi	f4 r0 7
	fadd	f3 f3 f4
	fldi	f4 r0 29
	fldi	f5 r0 39
	fbgt	f3 f5 L_else_22714
	fldi	f5 r0 39
	jump	L_cont_22715
L_else_22714 : 
	fldi	f5 r0 39
	fdiv	f5 f5 f3
L_cont_22715 : 
	fldi	f6 r0 31
	fmul	f6 f6 f5
	fsub	f4 f5 f4
	fbgt	f0 f4 L_else_22716
	fadd	f4 f0 f4
	jump	L_cont_22717
L_else_22716 : 
	fsub	f4 f0 f4
L_cont_22717 : 
	fsti	f2 r2 22
	sti	r4 r2 24
	fsti	f3 r2 26
	fbgt	f6 f4 L_else_22719
	fldi	f4 r0 30
	fmul	f6 f3 f5
	fmul	f6 f6 f5
	fsub	f4 f4 f6
	fmul	f4 f5 f4
	fldi	f6 r0 29
	fdiv	f4 f4 f6
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	addi	r2 r2 29
	call	L_isqrt_1892
	subi	r2 r2 29
	jump	L_cont_22720
L_else_22719 : 
	fadd	f2 f0 f5
L_cont_22720 : 
	fldi	f3 r2 26
	fmul	f2 f3 f2
	fldi	f3 r0 39
	fdiv	f3 f3 f2
	fsti	f2 r2 28
	fadd	f2 f0 f3
	addi	r2 r2 31
	call	L_atan_1890
	subi	r2 r2 31
	fldi	f3 r2 8
	fmul	f2 f2 f3
	fldi	f4 r0 57
	fldi	f5 r0 56
	fsti	f2 r2 30
	fbgt	f2 f5 L_else_22721
	fldi	f6 r0 55
	fbgt	f6 f2 L_else_22723
	fldi	f4 r0 54
	fldi	f6 r0 53
	fldi	f7 r0 52
	fbgt	f2 f0 L_else_22725
	fldi	f4 r0 38
	fbgt	f4 f2 L_else_22727
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_22728
L_else_22727 : 
	fldi	f4 r0 37
	fbgt	f4 f2 L_else_22729
	fadd	f4 f6 f2
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 45
	fmul	f9 f10 f9
	fldi	f10 r0 44
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 39
	fadd	f4 f4 f5
	fsub	f2 f0 f4
	jump	L_cont_22730
L_else_22729 : 
	fadd	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 51
	fmul	f5 f11 f5
	fldi	f11 r0 50
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f4 f5 f4
	fsub	f2 f0 f4
L_cont_22730 : 
L_cont_22728 : 
	jump	L_cont_22726
L_else_22725 : 
	fbgt	f2 f4 L_else_22731
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 51
	fmul	f4 f10 f4
	fldi	f10 r0 50
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_22732
L_else_22731 : 
	fbgt	f2 f7 L_else_22733
	fsub	f4 f2 f6
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 45
	fmul	f9 f10 f9
	fldi	f10 r0 44
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 39
	fadd	f2 f4 f5
	jump	L_cont_22734
L_else_22733 : 
	fsub	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 51
	fmul	f5 f11 f5
	fldi	f11 r0 50
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f2 f5 f4
L_cont_22734 : 
L_cont_22732 : 
L_cont_22726 : 
	jump	L_cont_22724
L_else_22723 : 
	fadd	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 33
	call	L_sin_1886
	subi	r2 r2 33
L_cont_22724 : 
	jump	L_cont_22722
L_else_22721 : 
	fsub	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 33
	call	L_sin_1886
	subi	r2 r2 33
L_cont_22722 : 
	fldi	f3 r2 30
	fsti	f2 r2 32
	fadd	f2 f0 f3
	addi	r2 r2 35
	call	L_cos_1888
	subi	r2 r2 35
	fldi	f3 r2 32
	fdiv	f2 f3 f2
	fldi	f3 r2 28
	fmul	f3 f2 f3
	fldi	f2 r2 22
	fldi	f4 r2 12
	fldi	f5 r2 8
	ldi	r4 r2 24
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_calc_dirvec_2340
L_calc_dirvecs_2348 : 
	bgt	r0 r4 L_else_22735
	foi	f3 r4
	fldi	f4 r0 4
	fmul	f3 f3 f4
	fldi	f4 r0 3
	fsub	f4 f3 f4
	addi	r7 r0 0
	fldi	f3 r0 27
	fldi	f5 r0 27
	fsti	f2 r2 0
	sti	r5 r2 2
	sti	r6 r2 3
	sti	r4 r2 4
	add	r4 r0 r7
	fadd	f1 f0 f5
	fadd	f5 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 6
	call	L_calc_dirvec_2340
	subi	r2 r2 6
	ldi	r4 r2 4
	foi	f2 r4
	fldi	f3 r0 4
	fmul	f2 f2 f3
	fldi	f3 r0 7
	fadd	f4 f2 f3
	addi	r5 r0 0
	fldi	f2 r0 27
	fldi	f3 r0 27
	ldi	r6 r2 3
	addi	r7 r6 2
	fldi	f5 r2 0
	ldi	r8 r2 2
	add	r6 r0 r7
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 6
	call	L_calc_dirvec_2340
	subi	r2 r2 6
	ldi	r4 r2 4
	addi	r4 r4 -1
	ldi	r5 r2 2
	addi	r5 r5 1
	addi	r6 r0 5
	bgt	r6 r5 L_else_22736
	addi	r5 r5 -5
	jump	L_cont_22737
L_else_22736 : 
	add	r5 r0 r5
L_cont_22737 : 
	fldi	f2 r2 0
	ldi	r6 r2 3
	jump	L_calc_dirvecs_2348
L_else_22735 : 
	return
L_calc_dirvec_rows_2353 : 
	bgt	r0 r4 L_else_22739
	foi	f2 r4
	fldi	f3 r0 4
	fmul	f2 f2 f3
	fldi	f3 r0 3
	fsub	f2 f2 f3
	addi	r7 r0 4
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	add	r4 r0 r7
	addi	r2 r2 4
	call	L_calc_dirvecs_2348
	subi	r2 r2 4
	ldi	r4 r2 2
	addi	r4 r4 -1
	ldi	r5 r2 1
	addi	r5 r5 2
	addi	r6 r0 5
	bgt	r6 r5 L_else_22740
	addi	r5 r5 -5
	jump	L_cont_22741
L_else_22740 : 
	add	r5 r0 r5
L_cont_22741 : 
	ldi	r6 r2 0
	addi	r6 r6 4
	bgt	r0 r4 L_else_22742
	foi	f2 r4
	fldi	f3 r0 4
	fmul	f2 f2 f3
	fldi	f3 r0 3
	fsub	f2 f2 f3
	addi	r7 r0 4
	sti	r6 r2 3
	sti	r5 r2 4
	sti	r4 r2 5
	add	r4 r0 r7
	addi	r2 r2 7
	call	L_calc_dirvecs_2348
	subi	r2 r2 7
	ldi	r4 r2 5
	addi	r4 r4 -1
	ldi	r5 r2 4
	addi	r5 r5 2
	addi	r6 r0 5
	bgt	r6 r5 L_else_22743
	addi	r5 r5 -5
	jump	L_cont_22744
L_else_22743 : 
	add	r5 r0 r5
L_cont_22744 : 
	ldi	r6 r2 3
	addi	r6 r6 4
	jump	L_calc_dirvec_rows_2353
L_else_22742 : 
	return
L_else_22739 : 
	return
L_create_dirvec_elements_2359 : 
	bgt	r0 r5 L_else_22747
	addi	r6 r0 3
	fldi	f2 r0 27
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 2
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 2
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r5 -1
	bgt	r0 r4 L_else_22748
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	min_caml_create_float_array
	subi	r2 r2 5
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 4
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 4
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 3
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r5 -1
	bgt	r0 r4 L_else_22749
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 5
	add	r4 r0 r5
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 6
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 6
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 5
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r5 -1
	bgt	r0 r4 L_else_22750
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 8
	addi	r2 r2 10
	call	min_caml_create_array
	subi	r2 r2 10
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 8
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 7
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	jump	L_create_dirvec_elements_2359
L_else_22750 : 
	return
L_else_22749 : 
	return
L_else_22748 : 
	return
L_else_22747 : 
	return
L_create_dirvecs_2362 : 
	bgt	r0 r4 L_else_22755
	addi	r5 r0 4148
	addi	r6 r0 120
	addi	r7 r0 3
	fldi	f2 r0 27
	sti	r4 r2 0
	sti	r5 r2 1
	sti	r6 r2 2
	add	r4 r0 r7
	addi	r2 r2 4
	call	min_caml_create_float_array
	subi	r2 r2 4
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 3
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 3
	sti	r4 r5 0
	add	r5 r0 r5
	ldi	r4 r2 2
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 4148
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r6 r0 118
	addi	r7 r0 3
	fldi	f2 r0 27
	sti	r6 r2 4
	sti	r4 r2 5
	add	r4 r0 r7
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 6
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 6
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 117
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 8
	addi	r2 r2 10
	call	min_caml_create_array
	subi	r2 r2 10
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 8
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 7
	ldi	r6 r2 5
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 116
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 9
	add	r4 r0 r5
	addi	r2 r2 11
	call	min_caml_create_float_array
	subi	r2 r2 11
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 10
	addi	r2 r2 12
	call	min_caml_create_array
	subi	r2 r2 12
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 10
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 9
	ldi	r6 r2 5
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r5 r0 115
	add	r4 r0 r6
	addi	r2 r2 12
	call	L_create_dirvec_elements_2359
	subi	r2 r2 12
	ldi	r4 r2 0
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22756
	addi	r5 r0 4148
	addi	r6 r0 120
	addi	r7 r0 3
	fldi	f2 r0 27
	sti	r4 r2 11
	sti	r5 r2 12
	sti	r6 r2 13
	add	r4 r0 r7
	addi	r2 r2 15
	call	min_caml_create_float_array
	subi	r2 r2 15
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 14
	addi	r2 r2 16
	call	min_caml_create_array
	subi	r2 r2 16
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 14
	sti	r4 r5 0
	add	r5 r0 r5
	ldi	r4 r2 13
	addi	r2 r2 16
	call	min_caml_create_array
	subi	r2 r2 16
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 4148
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r6 r0 118
	addi	r7 r0 3
	fldi	f2 r0 27
	sti	r6 r2 15
	sti	r4 r2 16
	add	r4 r0 r7
	addi	r2 r2 18
	call	min_caml_create_float_array
	subi	r2 r2 18
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 17
	addi	r2 r2 19
	call	min_caml_create_array
	subi	r2 r2 19
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 17
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 15
	ldi	r6 r2 16
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 117
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 18
	add	r4 r0 r5
	addi	r2 r2 20
	call	min_caml_create_float_array
	subi	r2 r2 20
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 19
	addi	r2 r2 21
	call	min_caml_create_array
	subi	r2 r2 21
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 19
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 18
	ldi	r6 r2 16
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r5 r0 116
	add	r4 r0 r6
	addi	r2 r2 21
	call	L_create_dirvec_elements_2359
	subi	r2 r2 21
	ldi	r4 r2 11
	addi	r4 r4 -1
	jump	L_create_dirvecs_2362
L_else_22756 : 
	return
L_else_22755 : 
	return
L_init_dirvec_constants_2364 : 
	bgt	r0 r5 L_else_22759
	add	r6 r4 r5
	ldi	r6 r6 0
	addi	r7 r0 4144
	ldi	r7 r7 0
	addi	r7 r7 -1
	sti	r4 r2 0
	sti	r5 r2 1
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 3
	ldi	r4 r2 1
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22760
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4144
	ldi	r7 r7 0
	addi	r7 r7 -1
	sti	r4 r2 2
	bgt	r0 r7 L_else_22761
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 3
	bne	r11 r12 L_else_22763
	sti	r7 r2 4
	sti	r9 r2 5
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_setup_rect_table_2137
	subi	r2 r2 7
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22764
L_else_22763 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_22765
	sti	r7 r2 4
	sti	r9 r2 5
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_setup_surface_table_2140
	subi	r2 r2 7
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22766
L_else_22765 : 
	sti	r7 r2 4
	sti	r9 r2 5
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_setup_second_table_2143
	subi	r2 r2 7
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22766 : 
L_cont_22764 : 
	addi	r5 r5 -1
	ldi	r4 r2 3
	addi	r2 r2 7
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 7
	jump	L_cont_22762
L_else_22761 : 
L_cont_22762 : 
	ldi	r4 r2 2
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22767
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4144
	ldi	r7 r7 0
	addi	r7 r7 -1
	sti	r4 r2 6
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 8
	ldi	r4 r2 6
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22768
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4144
	ldi	r7 r7 0
	addi	r7 r7 -1
	sti	r4 r2 7
	bgt	r0 r7 L_else_22769
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 8
	bne	r11 r12 L_else_22771
	sti	r7 r2 9
	sti	r9 r2 10
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 12
	call	L_setup_rect_table_2137
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22772
L_else_22771 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_22773
	sti	r7 r2 9
	sti	r9 r2 10
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 12
	call	L_setup_surface_table_2140
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22774
L_else_22773 : 
	sti	r7 r2 9
	sti	r9 r2 10
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 12
	call	L_setup_second_table_2143
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22774 : 
L_cont_22772 : 
	addi	r5 r5 -1
	ldi	r4 r2 8
	addi	r2 r2 12
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 12
	jump	L_cont_22770
L_else_22769 : 
L_cont_22770 : 
	ldi	r4 r2 7
	addi	r5 r4 -1
	ldi	r4 r2 0
	jump	L_init_dirvec_constants_2364
L_else_22768 : 
	return
L_else_22767 : 
	return
L_else_22760 : 
	return
L_else_22759 : 
	return
L_init_vecset_constants_2367 : 
	bgt	r0 r4 L_else_22779
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	add	r6 r5 r6
	ldi	r6 r6 0
	addi	r7 r0 4144
	ldi	r7 r7 0
	addi	r7 r7 -1
	sti	r4 r2 0
	sti	r5 r2 1
	bgt	r0 r7 L_else_22780
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 2
	bne	r11 r12 L_else_22782
	sti	r7 r2 3
	sti	r9 r2 4
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_setup_rect_table_2137
	subi	r2 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22783
L_else_22782 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_22784
	sti	r7 r2 3
	sti	r9 r2 4
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_setup_surface_table_2140
	subi	r2 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22785
L_else_22784 : 
	sti	r7 r2 3
	sti	r9 r2 4
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_setup_second_table_2143
	subi	r2 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22785 : 
L_cont_22783 : 
	addi	r5 r5 -1
	ldi	r4 r2 2
	addi	r2 r2 6
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 6
	jump	L_cont_22781
L_else_22780 : 
L_cont_22781 : 
	addi	r4 r0 118
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	add	r5 r0 r6
	addi	r2 r2 6
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 6
	addi	r4 r0 117
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	bgt	r0 r6 L_else_22786
	addi	r7 r0 5042
	add	r7 r7 r6
	ldi	r7 r7 0
	ldi	r8 r4 1
	ldi	r9 r4 0
	ldi	r10 r7 1
	addi	r11 r0 1
	sti	r4 r2 5
	bne	r10 r11 L_else_22788
	sti	r6 r2 6
	sti	r8 r2 7
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_rect_table_2137
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22789
L_else_22788 : 
	addi	r11 r0 2
	bne	r10 r11 L_else_22790
	sti	r6 r2 6
	sti	r8 r2 7
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_surface_table_2140
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22791
L_else_22790 : 
	sti	r6 r2 6
	sti	r8 r2 7
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_second_table_2143
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22791 : 
L_cont_22789 : 
	addi	r5 r5 -1
	ldi	r4 r2 5
	addi	r2 r2 9
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 9
	jump	L_cont_22787
L_else_22786 : 
L_cont_22787 : 
	addi	r5 r0 116
	ldi	r4 r2 1
	addi	r2 r2 9
	call	L_init_dirvec_constants_2364
	subi	r2 r2 9
	ldi	r4 r2 0
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22792
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	add	r6 r5 r6
	ldi	r6 r6 0
	addi	r7 r0 4144
	ldi	r7 r7 0
	addi	r7 r7 -1
	sti	r4 r2 8
	sti	r5 r2 9
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 11
	addi	r4 r0 118
	ldi	r5 r2 9
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	bgt	r0 r6 L_else_22793
	addi	r7 r0 5042
	add	r7 r7 r6
	ldi	r7 r7 0
	ldi	r8 r4 1
	ldi	r9 r4 0
	ldi	r10 r7 1
	addi	r11 r0 1
	sti	r4 r2 10
	bne	r10 r11 L_else_22795
	sti	r6 r2 11
	sti	r8 r2 12
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 14
	call	L_setup_rect_table_2137
	subi	r2 r2 14
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22796
L_else_22795 : 
	addi	r11 r0 2
	bne	r10 r11 L_else_22797
	sti	r6 r2 11
	sti	r8 r2 12
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 14
	call	L_setup_surface_table_2140
	subi	r2 r2 14
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22798
L_else_22797 : 
	sti	r6 r2 11
	sti	r8 r2 12
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 14
	call	L_setup_second_table_2143
	subi	r2 r2 14
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22798 : 
L_cont_22796 : 
	addi	r5 r5 -1
	ldi	r4 r2 10
	addi	r2 r2 14
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 14
	jump	L_cont_22794
L_else_22793 : 
L_cont_22794 : 
	addi	r5 r0 117
	ldi	r4 r2 9
	addi	r2 r2 14
	call	L_init_dirvec_constants_2364
	subi	r2 r2 14
	ldi	r4 r2 8
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22799
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	add	r6 r5 r6
	ldi	r6 r6 0
	addi	r7 r0 4144
	ldi	r7 r7 0
	addi	r7 r7 -1
	sti	r4 r2 13
	sti	r5 r2 14
	bgt	r0 r7 L_else_22800
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 15
	bne	r11 r12 L_else_22802
	sti	r7 r2 16
	sti	r9 r2 17
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 19
	call	L_setup_rect_table_2137
	subi	r2 r2 19
	ldi	r5 r2 16
	ldi	r6 r2 17
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22803
L_else_22802 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_22804
	sti	r7 r2 16
	sti	r9 r2 17
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 19
	call	L_setup_surface_table_2140
	subi	r2 r2 19
	ldi	r5 r2 16
	ldi	r6 r2 17
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22805
L_else_22804 : 
	sti	r7 r2 16
	sti	r9 r2 17
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 19
	call	L_setup_second_table_2143
	subi	r2 r2 19
	ldi	r5 r2 16
	ldi	r6 r2 17
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22805 : 
L_cont_22803 : 
	addi	r5 r5 -1
	ldi	r4 r2 15
	addi	r2 r2 19
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 19
	jump	L_cont_22801
L_else_22800 : 
L_cont_22801 : 
	addi	r5 r0 118
	ldi	r4 r2 14
	addi	r2 r2 19
	call	L_init_dirvec_constants_2364
	subi	r2 r2 19
	ldi	r4 r2 13
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22806
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	sti	r4 r2 18
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 20
	call	L_init_dirvec_constants_2364
	subi	r2 r2 20
	ldi	r4 r2 18
	addi	r4 r4 -1
	jump	L_init_vecset_constants_2367
L_else_22806 : 
	return
L_else_22799 : 
	return
L_else_22792 : 
	return
L_else_22779 : 
	return
L_main_21190 : 
	addi	r4 r0 128
	addi	r5 r0 128
	addi	r6 r0 4130
	sti	r4 r6 0
	addi	r6 r0 4130
	sti	r5 r6 1
	addi	r5 r0 4132
	addi	r6 r0 64
	sti	r6 r5 0
	addi	r5 r0 4132
	addi	r6 r0 64
	sti	r6 r5 1
	addi	r5 r0 4134
	fldi	f2 r0 2
	foi	f3 r4
	fdiv	f2 f2 f3
	fsti	f2 r5 0
	addi	r4 r0 4130
	ldi	r4 r4 0
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 0
	add	r4 r0 r5
	addi	r2 r2 2
	call	min_caml_create_float_array
	subi	r2 r2 2
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 1
	add	r4 r0 r5
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 3
	call	min_caml_create_array
	subi	r2 r2 3
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 2
	add	r4 r0 r5
	addi	r2 r2 4
	call	min_caml_create_float_array
	subi	r2 r2 4
	ldi	r5 r2 2
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 4
	call	min_caml_create_float_array
	subi	r2 r2 4
	ldi	r5 r2 2
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 4
	call	min_caml_create_float_array
	subi	r2 r2 4
	ldi	r5 r2 2
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 4
	call	min_caml_create_float_array
	subi	r2 r2 4
	ldi	r5 r2 2
	sti	r4 r5 4
	addi	r4 r0 5
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 4
	add	r4 r0 r5
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 5
	add	r4 r0 r5
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 4
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	ldi	r5 r2 6
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	ldi	r5 r2 6
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	ldi	r5 r2 6
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	ldi	r5 r2 6
	sti	r4 r5 4
	addi	r4 r0 1
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 9
	call	min_caml_create_array
	subi	r2 r2 9
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 8
	add	r4 r0 r5
	addi	r2 r2 10
	call	min_caml_create_float_array
	subi	r2 r2 10
	ldi	r5 r2 8
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 10
	call	min_caml_create_float_array
	subi	r2 r2 10
	ldi	r5 r2 8
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 10
	call	min_caml_create_float_array
	subi	r2 r2 10
	ldi	r5 r2 8
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 10
	call	min_caml_create_float_array
	subi	r2 r2 10
	ldi	r5 r2 8
	sti	r4 r5 4
	add	r4 r0 r3
	addi	r3 r3 8
	sti	r5 r4 7
	ldi	r5 r2 7
	sti	r5 r4 6
	ldi	r5 r2 6
	sti	r5 r4 5
	ldi	r5 r2 5
	sti	r5 r4 4
	ldi	r5 r2 4
	sti	r5 r4 3
	ldi	r5 r2 3
	sti	r5 r4 2
	ldi	r5 r2 2
	sti	r5 r4 1
	ldi	r5 r2 1
	sti	r5 r4 0
	add	r5 r0 r4
	ldi	r4 r2 0
	addi	r2 r2 10
	call	min_caml_create_array
	subi	r2 r2 10
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r5 r5 -2
	bgt	r0 r5 L_else_21191
	sti	r5 r2 9
	sti	r4 r2 10
	addi	r2 r2 12
	call	L_create_pixel_2328
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	addi	r2 r2 12
	call	L_init_line_elements_2330
	subi	r2 r2 12
	jump	L_cont_21192
L_else_21191 : 
	add	r4 r0 r4
L_cont_21192 : 
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r6 r0 3
	fldi	f2 r0 27
	sti	r4 r2 11
	sti	r5 r2 12
	add	r4 r0 r6
	addi	r2 r2 14
	call	min_caml_create_float_array
	subi	r2 r2 14
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 13
	add	r4 r0 r5
	addi	r2 r2 15
	call	min_caml_create_float_array
	subi	r2 r2 15
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 15
	call	min_caml_create_array
	subi	r2 r2 15
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 14
	add	r4 r0 r5
	addi	r2 r2 16
	call	min_caml_create_float_array
	subi	r2 r2 16
	ldi	r5 r2 14
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 16
	call	min_caml_create_float_array
	subi	r2 r2 16
	ldi	r5 r2 14
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 16
	call	min_caml_create_float_array
	subi	r2 r2 16
	ldi	r5 r2 14
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 16
	call	min_caml_create_float_array
	subi	r2 r2 16
	ldi	r5 r2 14
	sti	r4 r5 4
	addi	r4 r0 5
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 16
	call	min_caml_create_array
	subi	r2 r2 16
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 15
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 17
	call	min_caml_create_array
	subi	r2 r2 17
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 16
	add	r4 r0 r5
	addi	r2 r2 18
	call	min_caml_create_float_array
	subi	r2 r2 18
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 18
	call	min_caml_create_array
	subi	r2 r2 18
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 17
	add	r4 r0 r5
	addi	r2 r2 19
	call	min_caml_create_float_array
	subi	r2 r2 19
	ldi	r5 r2 17
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 19
	call	min_caml_create_float_array
	subi	r2 r2 19
	ldi	r5 r2 17
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 19
	call	min_caml_create_float_array
	subi	r2 r2 19
	ldi	r5 r2 17
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 19
	call	min_caml_create_float_array
	subi	r2 r2 19
	ldi	r5 r2 17
	sti	r4 r5 4
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 19
	call	min_caml_create_float_array
	subi	r2 r2 19
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 19
	call	min_caml_create_array
	subi	r2 r2 19
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 18
	add	r4 r0 r5
	addi	r2 r2 20
	call	min_caml_create_float_array
	subi	r2 r2 20
	ldi	r5 r2 18
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 20
	call	min_caml_create_float_array
	subi	r2 r2 20
	ldi	r5 r2 18
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 20
	call	min_caml_create_float_array
	subi	r2 r2 20
	ldi	r5 r2 18
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 20
	call	min_caml_create_float_array
	subi	r2 r2 20
	ldi	r5 r2 18
	sti	r4 r5 4
	addi	r4 r0 1
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 20
	call	min_caml_create_array
	subi	r2 r2 20
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 19
	add	r4 r0 r5
	addi	r2 r2 21
	call	min_caml_create_float_array
	subi	r2 r2 21
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 21
	call	min_caml_create_array
	subi	r2 r2 21
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 20
	add	r4 r0 r5
	addi	r2 r2 22
	call	min_caml_create_float_array
	subi	r2 r2 22
	ldi	r5 r2 20
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 22
	call	min_caml_create_float_array
	subi	r2 r2 22
	ldi	r5 r2 20
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 22
	call	min_caml_create_float_array
	subi	r2 r2 22
	ldi	r5 r2 20
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 22
	call	min_caml_create_float_array
	subi	r2 r2 22
	ldi	r5 r2 20
	sti	r4 r5 4
	add	r4 r0 r3
	addi	r3 r3 8
	sti	r5 r4 7
	ldi	r5 r2 19
	sti	r5 r4 6
	ldi	r5 r2 18
	sti	r5 r4 5
	ldi	r5 r2 17
	sti	r5 r4 4
	ldi	r5 r2 16
	sti	r5 r4 3
	ldi	r5 r2 15
	sti	r5 r4 2
	ldi	r5 r2 14
	sti	r5 r4 1
	ldi	r5 r2 13
	sti	r5 r4 0
	add	r5 r0 r4
	ldi	r4 r2 12
	addi	r2 r2 22
	call	min_caml_create_array
	subi	r2 r2 22
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r5 r5 -2
	bgt	r0 r5 L_else_21193
	sti	r5 r2 21
	sti	r4 r2 22
	addi	r2 r2 24
	call	L_create_pixel_2328
	subi	r2 r2 24
	ldi	r5 r2 21
	ldi	r6 r2 22
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	addi	r2 r2 24
	call	L_init_line_elements_2330
	subi	r2 r2 24
	jump	L_cont_21194
L_else_21193 : 
	add	r4 r0 r4
L_cont_21194 : 
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r6 r0 3
	fldi	f2 r0 27
	sti	r4 r2 23
	sti	r5 r2 24
	add	r4 r0 r6
	addi	r2 r2 26
	call	min_caml_create_float_array
	subi	r2 r2 26
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 25
	add	r4 r0 r5
	addi	r2 r2 27
	call	min_caml_create_float_array
	subi	r2 r2 27
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 27
	call	min_caml_create_array
	subi	r2 r2 27
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 26
	add	r4 r0 r5
	addi	r2 r2 28
	call	min_caml_create_float_array
	subi	r2 r2 28
	ldi	r5 r2 26
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 28
	call	min_caml_create_float_array
	subi	r2 r2 28
	ldi	r5 r2 26
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 28
	call	min_caml_create_float_array
	subi	r2 r2 28
	ldi	r5 r2 26
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 28
	call	min_caml_create_float_array
	subi	r2 r2 28
	ldi	r5 r2 26
	sti	r4 r5 4
	addi	r4 r0 5
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 28
	call	min_caml_create_array
	subi	r2 r2 28
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 27
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 29
	call	min_caml_create_array
	subi	r2 r2 29
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 28
	add	r4 r0 r5
	addi	r2 r2 30
	call	min_caml_create_float_array
	subi	r2 r2 30
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 30
	call	min_caml_create_array
	subi	r2 r2 30
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 29
	add	r4 r0 r5
	addi	r2 r2 31
	call	min_caml_create_float_array
	subi	r2 r2 31
	ldi	r5 r2 29
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 31
	call	min_caml_create_float_array
	subi	r2 r2 31
	ldi	r5 r2 29
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 31
	call	min_caml_create_float_array
	subi	r2 r2 31
	ldi	r5 r2 29
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 31
	call	min_caml_create_float_array
	subi	r2 r2 31
	ldi	r5 r2 29
	sti	r4 r5 4
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 31
	call	min_caml_create_float_array
	subi	r2 r2 31
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 31
	call	min_caml_create_array
	subi	r2 r2 31
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 30
	add	r4 r0 r5
	addi	r2 r2 32
	call	min_caml_create_float_array
	subi	r2 r2 32
	ldi	r5 r2 30
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 32
	call	min_caml_create_float_array
	subi	r2 r2 32
	ldi	r5 r2 30
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 32
	call	min_caml_create_float_array
	subi	r2 r2 32
	ldi	r5 r2 30
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 32
	call	min_caml_create_float_array
	subi	r2 r2 32
	ldi	r5 r2 30
	sti	r4 r5 4
	addi	r4 r0 1
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 32
	call	min_caml_create_array
	subi	r2 r2 32
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 31
	add	r4 r0 r5
	addi	r2 r2 33
	call	min_caml_create_float_array
	subi	r2 r2 33
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 33
	call	min_caml_create_array
	subi	r2 r2 33
	addi	r5 r0 3
	fldi	f2 r0 27
	sti	r4 r2 32
	add	r4 r0 r5
	addi	r2 r2 34
	call	min_caml_create_float_array
	subi	r2 r2 34
	ldi	r5 r2 32
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 34
	call	min_caml_create_float_array
	subi	r2 r2 34
	ldi	r5 r2 32
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 34
	call	min_caml_create_float_array
	subi	r2 r2 34
	ldi	r5 r2 32
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 27
	addi	r2 r2 34
	call	min_caml_create_float_array
	subi	r2 r2 34
	ldi	r5 r2 32
	sti	r4 r5 4
	add	r4 r0 r3
	addi	r3 r3 8
	sti	r5 r4 7
	ldi	r5 r2 31
	sti	r5 r4 6
	ldi	r5 r2 30
	sti	r5 r4 5
	ldi	r5 r2 29
	sti	r5 r4 4
	ldi	r5 r2 28
	sti	r5 r4 3
	ldi	r5 r2 27
	sti	r5 r4 2
	ldi	r5 r2 26
	sti	r5 r4 1
	ldi	r5 r2 25
	sti	r5 r4 0
	add	r5 r0 r4
	ldi	r4 r2 24
	addi	r2 r2 34
	call	min_caml_create_array
	subi	r2 r2 34
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r5 r5 -2
	bgt	r0 r5 L_else_21195
	sti	r5 r2 33
	sti	r4 r2 34
	addi	r2 r2 36
	call	L_create_pixel_2328
	subi	r2 r2 36
	ldi	r5 r2 33
	ldi	r6 r2 34
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	addi	r2 r2 36
	call	L_init_line_elements_2330
	subi	r2 r2 36
	jump	L_cont_21196
L_else_21195 : 
	add	r4 r0 r4
L_cont_21196 : 
	addi	r5 r0 4096
	sti	r4 r2 35
	sti	r5 r2 36
	addi	r2 r2 38
	call	min_caml_read_float
	subi	r2 r2 38
	ldi	r4 r2 36
	fsti	f2 r4 0
	addi	r4 r0 4096
	sti	r4 r2 37
	addi	r2 r2 39
	call	min_caml_read_float
	subi	r2 r2 39
	ldi	r4 r2 37
	fsti	f2 r4 1
	addi	r4 r0 4096
	sti	r4 r2 38
	addi	r2 r2 40
	call	min_caml_read_float
	subi	r2 r2 40
	ldi	r4 r2 38
	fsti	f2 r4 2
	addi	r2 r2 40
	call	min_caml_read_float
	subi	r2 r2 40
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 40
	addi	r2 r2 43
	call	L_cos_1888
	subi	r2 r2 43
	fldi	f3 r2 40
	fsti	f2 r2 42
	fadd	f2 f0 f3
	addi	r2 r2 45
	call	L_sin_1886
	subi	r2 r2 45
	fsti	f2 r2 44
	addi	r2 r2 47
	call	min_caml_read_float
	subi	r2 r2 47
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 46
	addi	r2 r2 49
	call	L_cos_1888
	subi	r2 r2 49
	fldi	f3 r2 46
	fsti	f2 r2 48
	fadd	f2 f0 f3
	addi	r2 r2 51
	call	L_sin_1886
	subi	r2 r2 51
	addi	r4 r0 4099
	fldi	f3 r2 42
	fmul	f4 f3 f2
	fldi	f5 r0 1
	fmul	f4 f4 f5
	fsti	f4 r4 0
	addi	r4 r0 4099
	fldi	f4 r0 0
	fldi	f5 r2 44
	fmul	f4 f5 f4
	fsti	f4 r4 1
	addi	r4 r0 4099
	fldi	f4 r2 48
	fmul	f6 f3 f4
	fldi	f7 r0 1
	fmul	f6 f6 f7
	fsti	f6 r4 2
	addi	r4 r0 4102
	fsti	f4 r4 0
	addi	r4 r0 4102
	fldi	f6 r0 27
	fsti	f6 r4 1
	addi	r4 r0 4102
	fsub	f6 f0 f2
	fsti	f6 r4 2
	addi	r4 r0 4105
	fsub	f6 f0 f5
	fmul	f2 f6 f2
	fsti	f2 r4 0
	addi	r4 r0 4105
	fsub	f2 f0 f3
	fsti	f2 r4 1
	addi	r4 r0 4105
	fsub	f2 f0 f5
	fmul	f2 f2 f4
	fsti	f2 r4 2
	addi	r4 r0 4108
	addi	r5 r0 4096
	fldi	f2 r5 0
	addi	r5 r0 4099
	fldi	f3 r5 0
	fsub	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 4108
	addi	r5 r0 4096
	fldi	f2 r5 1
	addi	r5 r0 4099
	fldi	f3 r5 1
	fsub	f2 f2 f3
	fsti	f2 r4 1
	addi	r4 r0 4108
	addi	r5 r0 4096
	fldi	f2 r5 2
	addi	r5 r0 4099
	fldi	f3 r5 2
	fsub	f2 f2 f3
	fsti	f2 r4 2
	addi	r2 r2 51
	call	min_caml_read_int
	subi	r2 r2 51
	addi	r2 r2 51
	call	min_caml_read_float
	subi	r2 r2 51
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 50
	addi	r2 r2 53
	call	L_sin_1886
	subi	r2 r2 53
	addi	r4 r0 4111
	fsub	f2 f0 f2
	fsti	f2 r4 1
	addi	r2 r2 53
	call	min_caml_read_float
	subi	r2 r2 53
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fldi	f3 r2 50
	fsti	f2 r2 52
	fadd	f2 f0 f3
	addi	r2 r2 55
	call	L_cos_1888
	subi	r2 r2 55
	fldi	f3 r2 52
	fsti	f2 r2 54
	fadd	f2 f0 f3
	addi	r2 r2 57
	call	L_sin_1886
	subi	r2 r2 57
	addi	r4 r0 4111
	fldi	f3 r2 54
	fmul	f2 f3 f2
	fsti	f2 r4 0
	fldi	f2 r2 52
	addi	r2 r2 57
	call	L_cos_1888
	subi	r2 r2 57
	addi	r4 r0 4111
	fldi	f3 r2 54
	fmul	f2 f3 f2
	fsti	f2 r4 2
	addi	r4 r0 4153
	sti	r4 r2 56
	addi	r2 r2 58
	call	min_caml_read_float
	subi	r2 r2 58
	ldi	r4 r2 56
	fsti	f2 r4 0
	addi	r4 r0 0
	addi	r2 r2 58
	call	L_read_object_2041
	subi	r2 r2 58
	addi	r4 r0 0
	addi	r5 r0 0
	sti	r4 r2 57
	add	r4 r0 r5
	addi	r2 r2 59
	call	L_read_net_item_2045
	subi	r2 r2 59
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_21198
	jump	L_cont_21199
L_else_21198 : 
	addi	r5 r0 4155
	ldi	r6 r2 57
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r0 1
	addi	r2 r2 59
	call	L_read_and_network_2049
	subi	r2 r2 59
L_cont_21199 : 
	addi	r4 r0 4255
	addi	r5 r0 0
	addi	r6 r0 0
	sti	r4 r2 58
	sti	r5 r2 59
	add	r4 r0 r6
	addi	r2 r2 61
	call	L_read_net_item_2045
	subi	r2 r2 61
	add	r5 r0 r4
	ldi	r4 r5 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21200
	addi	r4 r0 1
	addi	r2 r2 61
	call	min_caml_create_array
	subi	r2 r2 61
	jump	L_cont_21201
L_else_21200 : 
	addi	r4 r0 1
	sti	r5 r2 60
	addi	r2 r2 62
	call	L_read_or_network_2047
	subi	r2 r2 62
	ldi	r5 r2 59
	add	r5 r4 r5
	ldi	r6 r2 60
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21201 : 
	ldi	r5 r2 58
	sti	r4 r5 0
	addi	r4 r0 80
	addi	r2 r2 62
	call	min_caml_print_char
	subi	r2 r2 62
	addi	r4 r0 54
	addi	r2 r2 62
	call	min_caml_print_char
	subi	r2 r2 62
	addi	r4 r0 10
	addi	r2 r2 62
	call	min_caml_print_char
	subi	r2 r2 62
	addi	r4 r0 4130
	ldi	r4 r4 0
	addi	r5 r4 -10
	sti	r4 r2 61
	bgt	r0 r5 L_else_21202
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21204
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21206
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 63
	call	L_sdiv10_1898
	subi	r2 r2 63
	jump	L_cont_21207
L_else_21206 : 
	addi	r4 r0 2
L_cont_21207 : 
	jump	L_cont_21205
L_else_21204 : 
	addi	r4 r0 1
L_cont_21205 : 
	jump	L_cont_21203
L_else_21202 : 
	addi	r4 r0 0
L_cont_21203 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21208
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21210
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21212
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 63
	call	L_sdiv10_1898
	subi	r2 r2 63
	jump	L_cont_21213
L_else_21212 : 
	addi	r4 r0 2
L_cont_21213 : 
	jump	L_cont_21211
L_else_21210 : 
	addi	r4 r0 1
L_cont_21211 : 
	jump	L_cont_21209
L_else_21208 : 
	addi	r4 r0 0
L_cont_21209 : 
	addi	r4 r4 48
	addi	r2 r2 63
	call	min_caml_print_char
	subi	r2 r2 63
	ldi	r4 r2 61
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21214
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21216
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21218
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 63
	call	L_sdiv10_1898
	subi	r2 r2 63
	jump	L_cont_21219
L_else_21218 : 
	addi	r4 r0 2
L_cont_21219 : 
	jump	L_cont_21217
L_else_21216 : 
	addi	r4 r0 1
L_cont_21217 : 
	jump	L_cont_21215
L_else_21214 : 
	addi	r4 r0 0
L_cont_21215 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21220
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21222
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21224
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 63
	call	L_sdiv10_1898
	subi	r2 r2 63
	jump	L_cont_21225
L_else_21224 : 
	addi	r4 r0 2
L_cont_21225 : 
	jump	L_cont_21223
L_else_21222 : 
	addi	r4 r0 1
L_cont_21223 : 
	jump	L_cont_21221
L_else_21220 : 
	addi	r4 r0 0
L_cont_21221 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 61
	sub	r4 r5 r4
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21226
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21228
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21230
	addi	r4 r4 -10
	addi	r6 r0 3
	add	r5 r0 r6
	addi	r2 r2 63
	call	L_sdiv10_1898
	subi	r2 r2 63
	jump	L_cont_21231
L_else_21230 : 
	addi	r4 r0 2
L_cont_21231 : 
	jump	L_cont_21229
L_else_21228 : 
	addi	r4 r0 1
L_cont_21229 : 
	jump	L_cont_21227
L_else_21226 : 
	addi	r4 r0 0
L_cont_21227 : 
	addi	r4 r4 48
	addi	r2 r2 63
	call	min_caml_print_char
	subi	r2 r2 63
	ldi	r4 r2 61
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21232
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21234
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21236
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 63
	call	L_sdiv10_1898
	subi	r2 r2 63
	jump	L_cont_21237
L_else_21236 : 
	addi	r4 r0 2
L_cont_21237 : 
	jump	L_cont_21235
L_else_21234 : 
	addi	r4 r0 1
L_cont_21235 : 
	jump	L_cont_21233
L_else_21232 : 
	addi	r4 r0 0
L_cont_21233 : 
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 61
	sub	r4 r5 r4
	addi	r4 r4 48
	addi	r2 r2 63
	call	min_caml_print_char
	subi	r2 r2 63
	addi	r4 r0 32
	addi	r2 r2 63
	call	min_caml_print_char
	subi	r2 r2 63
	addi	r4 r0 4130
	ldi	r4 r4 1
	addi	r5 r4 -10
	sti	r4 r2 62
	bgt	r0 r5 L_else_21238
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21240
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21242
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 64
	call	L_sdiv10_1898
	subi	r2 r2 64
	jump	L_cont_21243
L_else_21242 : 
	addi	r4 r0 2
L_cont_21243 : 
	jump	L_cont_21241
L_else_21240 : 
	addi	r4 r0 1
L_cont_21241 : 
	jump	L_cont_21239
L_else_21238 : 
	addi	r4 r0 0
L_cont_21239 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21244
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21246
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21248
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 64
	call	L_sdiv10_1898
	subi	r2 r2 64
	jump	L_cont_21249
L_else_21248 : 
	addi	r4 r0 2
L_cont_21249 : 
	jump	L_cont_21247
L_else_21246 : 
	addi	r4 r0 1
L_cont_21247 : 
	jump	L_cont_21245
L_else_21244 : 
	addi	r4 r0 0
L_cont_21245 : 
	addi	r4 r4 48
	addi	r2 r2 64
	call	min_caml_print_char
	subi	r2 r2 64
	ldi	r4 r2 62
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21250
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21252
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21254
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 64
	call	L_sdiv10_1898
	subi	r2 r2 64
	jump	L_cont_21255
L_else_21254 : 
	addi	r4 r0 2
L_cont_21255 : 
	jump	L_cont_21253
L_else_21252 : 
	addi	r4 r0 1
L_cont_21253 : 
	jump	L_cont_21251
L_else_21250 : 
	addi	r4 r0 0
L_cont_21251 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21256
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21258
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21260
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 64
	call	L_sdiv10_1898
	subi	r2 r2 64
	jump	L_cont_21261
L_else_21260 : 
	addi	r4 r0 2
L_cont_21261 : 
	jump	L_cont_21259
L_else_21258 : 
	addi	r4 r0 1
L_cont_21259 : 
	jump	L_cont_21257
L_else_21256 : 
	addi	r4 r0 0
L_cont_21257 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 62
	sub	r4 r5 r4
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21262
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21264
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21266
	addi	r4 r4 -10
	addi	r6 r0 3
	add	r5 r0 r6
	addi	r2 r2 64
	call	L_sdiv10_1898
	subi	r2 r2 64
	jump	L_cont_21267
L_else_21266 : 
	addi	r4 r0 2
L_cont_21267 : 
	jump	L_cont_21265
L_else_21264 : 
	addi	r4 r0 1
L_cont_21265 : 
	jump	L_cont_21263
L_else_21262 : 
	addi	r4 r0 0
L_cont_21263 : 
	addi	r4 r4 48
	addi	r2 r2 64
	call	min_caml_print_char
	subi	r2 r2 64
	ldi	r4 r2 62
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21268
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21270
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21272
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 64
	call	L_sdiv10_1898
	subi	r2 r2 64
	jump	L_cont_21273
L_else_21272 : 
	addi	r4 r0 2
L_cont_21273 : 
	jump	L_cont_21271
L_else_21270 : 
	addi	r4 r0 1
L_cont_21271 : 
	jump	L_cont_21269
L_else_21268 : 
	addi	r4 r0 0
L_cont_21269 : 
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 62
	sub	r4 r5 r4
	addi	r4 r4 48
	addi	r2 r2 64
	call	min_caml_print_char
	subi	r2 r2 64
	addi	r4 r0 32
	addi	r2 r2 64
	call	min_caml_print_char
	subi	r2 r2 64
	addi	r4 r0 255
	addi	r5 r0 225
	addi	r6 r0 3
	sti	r4 r2 63
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 65
	call	L_sdiv10_1898
	subi	r2 r2 65
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21274
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21276
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21278
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_1898
	subi	r2 r2 65
	jump	L_cont_21279
L_else_21278 : 
	addi	r4 r0 2
L_cont_21279 : 
	jump	L_cont_21277
L_else_21276 : 
	addi	r4 r0 1
L_cont_21277 : 
	jump	L_cont_21275
L_else_21274 : 
	addi	r4 r0 0
L_cont_21275 : 
	addi	r4 r4 48
	addi	r2 r2 65
	call	min_caml_print_char
	subi	r2 r2 65
	addi	r4 r0 225
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_1898
	subi	r2 r2 65
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21280
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21282
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21284
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_1898
	subi	r2 r2 65
	jump	L_cont_21285
L_else_21284 : 
	addi	r4 r0 2
L_cont_21285 : 
	jump	L_cont_21283
L_else_21282 : 
	addi	r4 r0 1
L_cont_21283 : 
	jump	L_cont_21281
L_else_21280 : 
	addi	r4 r0 0
L_cont_21281 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 63
	sub	r4 r5 r4
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21286
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21288
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21290
	addi	r4 r4 -10
	addi	r6 r0 3
	add	r5 r0 r6
	addi	r2 r2 65
	call	L_sdiv10_1898
	subi	r2 r2 65
	jump	L_cont_21291
L_else_21290 : 
	addi	r4 r0 2
L_cont_21291 : 
	jump	L_cont_21289
L_else_21288 : 
	addi	r4 r0 1
L_cont_21289 : 
	jump	L_cont_21287
L_else_21286 : 
	addi	r4 r0 0
L_cont_21287 : 
	addi	r4 r4 48
	addi	r2 r2 65
	call	min_caml_print_char
	subi	r2 r2 65
	addi	r4 r0 225
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_1898
	subi	r2 r2 65
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 63
	sub	r4 r5 r4
	addi	r4 r4 48
	addi	r2 r2 65
	call	min_caml_print_char
	subi	r2 r2 65
	addi	r4 r0 10
	addi	r2 r2 65
	call	min_caml_print_char
	subi	r2 r2 65
	addi	r4 r0 4
	addi	r5 r0 4148
	addi	r6 r0 120
	addi	r7 r0 3
	fldi	f2 r0 27
	sti	r4 r2 64
	sti	r5 r2 65
	sti	r6 r2 66
	add	r4 r0 r7
	addi	r2 r2 68
	call	min_caml_create_float_array
	subi	r2 r2 68
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 67
	addi	r2 r2 69
	call	min_caml_create_array
	subi	r2 r2 69
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 67
	sti	r4 r5 0
	add	r5 r0 r5
	ldi	r4 r2 66
	addi	r2 r2 69
	call	min_caml_create_array
	subi	r2 r2 69
	ldi	r5 r2 64
	ldi	r6 r2 65
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 4148
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 118
	addi	r2 r2 69
	call	L_create_dirvec_elements_2359
	subi	r2 r2 69
	addi	r4 r0 3
	addi	r2 r2 69
	call	L_create_dirvecs_2362
	subi	r2 r2 69
	addi	r4 r0 9
	addi	r5 r0 0
	addi	r6 r0 0
	foi	f2 r4
	fldi	f3 r0 4
	fmul	f2 f2 f3
	fldi	f3 r0 3
	fsub	f2 f2 f3
	addi	r4 r0 4
	addi	r2 r2 69
	call	L_calc_dirvecs_2348
	subi	r2 r2 69
	addi	r4 r0 8
	addi	r5 r0 2
	addi	r6 r0 4
	addi	r2 r2 69
	call	L_calc_dirvec_rows_2353
	subi	r2 r2 69
	addi	r4 r0 4
	addi	r5 r0 4148
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r5 r0 119
	addi	r2 r2 69
	call	L_init_dirvec_constants_2364
	subi	r2 r2 69
	addi	r4 r0 3
	addi	r2 r2 69
	call	L_init_vecset_constants_2367
	subi	r2 r2 69
	addi	r4 r0 4977
	ldi	r4 r4 0
	addi	r5 r0 4111
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	addi	r4 r0 4977
	addi	r5 r0 4144
	ldi	r5 r5 0
	addi	r5 r5 -1
	bgt	r0 r5 L_else_21292
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r4 1
	ldi	r8 r4 0
	ldi	r9 r6 1
	addi	r10 r0 1
	sti	r4 r2 68
	bne	r9 r10 L_else_21294
	sti	r5 r2 69
	sti	r7 r2 70
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 72
	call	L_setup_rect_table_2137
	subi	r2 r2 72
	ldi	r5 r2 69
	ldi	r6 r2 70
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21295
L_else_21294 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_21296
	sti	r5 r2 69
	sti	r7 r2 70
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 72
	call	L_setup_surface_table_2140
	subi	r2 r2 72
	ldi	r5 r2 69
	ldi	r6 r2 70
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21297
L_else_21296 : 
	sti	r5 r2 69
	sti	r7 r2 70
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 72
	call	L_setup_second_table_2143
	subi	r2 r2 72
	ldi	r5 r2 69
	ldi	r6 r2 70
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_21297 : 
L_cont_21295 : 
	addi	r5 r5 -1
	ldi	r4 r2 68
	addi	r2 r2 72
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 72
	jump	L_cont_21293
L_else_21292 : 
L_cont_21293 : 
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r4 r4 -1
	bgt	r0 r4 L_else_21298
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r5 2
	addi	r7 r0 2
	bne	r6 r7 L_else_21300
	ldi	r6 r5 7
	fldi	f2 r6 0
	fldi	f3 r0 39
	fbgt	f3 f2 L_else_21302
	addi	r6 r0 0
	jump	L_cont_21303
L_else_21302 : 
	addi	r6 r0 1
L_cont_21303 : 
	bne	r6 r0 L_else_21304
	jump	L_cont_21305
L_else_21304 : 
	ldi	r6 r5 1
	addi	r7 r0 1
	bne	r6 r7 L_else_21306
	addi	r6 r0 4
	mul	r4 r4 r6
	addi	r6 r0 4147
	ldi	r6 r6 0
	fldi	f2 r0 39
	ldi	r5 r5 7
	fldi	f3 r5 0
	fsub	f2 f2 f3
	addi	r5 r0 4111
	fldi	f3 r5 0
	fsub	f3 f0 f3
	addi	r5 r0 4111
	fldi	f4 r5 1
	fsub	f4 f0 f4
	addi	r5 r0 4111
	fldi	f5 r5 2
	fsub	f5 f0 f5
	addi	r5 r4 1
	addi	r7 r0 4111
	fldi	f6 r7 0
	addi	r7 r0 3
	fldi	f7 r0 27
	fsti	f3 r2 72
	sti	r4 r2 74
	sti	r6 r2 75
	sti	r5 r2 76
	fsti	f2 r2 78
	fsti	f5 r2 80
	fsti	f4 r2 82
	fsti	f6 r2 84
	add	r4 r0 r7
	fadd	f2 f0 f7
	addi	r2 r2 87
	call	min_caml_create_float_array
	subi	r2 r2 87
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 86
	addi	r2 r2 88
	call	min_caml_create_array
	subi	r2 r2 88
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 86
	sti	r4 r5 0
	add	r5 r0 r5
	fldi	f2 r2 84
	fsti	f2 r4 0
	fldi	f2 r2 82
	fsti	f2 r4 1
	fldi	f3 r2 80
	fsti	f3 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r5 r2 87
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 89
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 89
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 78
	fsti	f2 r5 2
	ldi	r6 r2 87
	sti	r6 r5 1
	ldi	r6 r2 76
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 75
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r6 1
	ldi	r5 r2 74
	addi	r7 r5 2
	addi	r8 r0 4111
	fldi	f3 r8 1
	addi	r8 r0 3
	fldi	f4 r0 27
	sti	r4 r2 88
	sti	r7 r2 89
	fsti	f3 r2 90
	add	r4 r0 r8
	fadd	f2 f0 f4
	addi	r2 r2 93
	call	min_caml_create_float_array
	subi	r2 r2 93
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 92
	addi	r2 r2 94
	call	min_caml_create_array
	subi	r2 r2 94
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 92
	sti	r4 r5 0
	add	r5 r0 r5
	fldi	f2 r2 72
	fsti	f2 r4 0
	fldi	f3 r2 90
	fsti	f3 r4 1
	fldi	f3 r2 80
	fsti	f3 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r5 r2 93
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 95
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 95
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 78
	fsti	f2 r5 2
	ldi	r6 r2 93
	sti	r6 r5 1
	ldi	r6 r2 89
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 88
	add	r4 r4 r6
	sti	r5 r4 0
	ldi	r4 r2 75
	addi	r5 r4 2
	ldi	r6 r2 74
	addi	r6 r6 3
	addi	r7 r0 4111
	fldi	f3 r7 2
	addi	r7 r0 3
	fldi	f4 r0 27
	sti	r5 r2 94
	sti	r6 r2 95
	fsti	f3 r2 96
	add	r4 r0 r7
	fadd	f2 f0 f4
	addi	r2 r2 99
	call	min_caml_create_float_array
	subi	r2 r2 99
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 98
	addi	r2 r2 100
	call	min_caml_create_array
	subi	r2 r2 100
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 98
	sti	r4 r5 0
	add	r5 r0 r5
	fldi	f2 r2 72
	fsti	f2 r4 0
	fldi	f2 r2 82
	fsti	f2 r4 1
	fldi	f2 r2 96
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r5 r2 99
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 101
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 101
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 78
	fsti	f2 r5 2
	ldi	r6 r2 99
	sti	r6 r5 1
	ldi	r6 r2 95
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 94
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 4147
	ldi	r5 r2 75
	addi	r5 r5 3
	sti	r5 r4 0
	jump	L_cont_21307
L_else_21306 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_21310
	addi	r6 r0 4
	mul	r4 r4 r6
	addi	r4 r4 1
	addi	r6 r0 4147
	ldi	r6 r6 0
	fldi	f2 r0 39
	ldi	r7 r5 7
	fldi	f3 r7 0
	fsub	f2 f2 f3
	addi	r7 r0 4111
	ldi	r8 r5 4
	fldi	f3 r7 0
	fldi	f4 r8 0
	fmul	f3 f3 f4
	fldi	f4 r7 1
	fldi	f5 r8 1
	fmul	f4 f4 f5
	fadd	f3 f3 f4
	fldi	f4 r7 2
	fldi	f5 r8 2
	fmul	f4 f4 f5
	fadd	f3 f3 f4
	fldi	f4 r0 29
	ldi	r7 r5 4
	fldi	f5 r7 0
	fmul	f4 f4 f5
	fmul	f4 f4 f3
	addi	r7 r0 4111
	fldi	f5 r7 0
	fsub	f4 f4 f5
	fldi	f5 r0 29
	ldi	r7 r5 4
	fldi	f6 r7 1
	fmul	f5 f5 f6
	fmul	f5 f5 f3
	addi	r7 r0 4111
	fldi	f6 r7 1
	fsub	f5 f5 f6
	fldi	f6 r0 29
	ldi	r5 r5 4
	fldi	f7 r5 2
	fmul	f6 f6 f7
	fmul	f3 f6 f3
	addi	r5 r0 4111
	fldi	f6 r5 2
	fsub	f3 f3 f6
	addi	r5 r0 3
	fldi	f6 r0 27
	sti	r6 r2 100
	sti	r4 r2 101
	fsti	f2 r2 102
	fsti	f3 r2 104
	fsti	f5 r2 106
	fsti	f4 r2 108
	add	r4 r0 r5
	fadd	f2 f0 f6
	addi	r2 r2 111
	call	min_caml_create_float_array
	subi	r2 r2 111
	add	r5 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r5 r2 110
	addi	r2 r2 112
	call	min_caml_create_array
	subi	r2 r2 112
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 110
	sti	r4 r5 0
	add	r5 r0 r5
	fldi	f2 r2 108
	fsti	f2 r4 0
	fldi	f2 r2 106
	fsti	f2 r4 1
	fldi	f2 r2 104
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r5 r2 111
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 113
	call	L_iter_setup_dirvec_constants_2146
	subi	r2 r2 113
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 102
	fsti	f2 r5 2
	ldi	r6 r2 111
	sti	r6 r5 1
	ldi	r6 r2 101
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 100
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 4147
	addi	r5 r6 1
	sti	r5 r4 0
	jump	L_cont_21311
L_else_21310 : 
L_cont_21311 : 
L_cont_21307 : 
L_cont_21305 : 
	jump	L_cont_21301
L_else_21300 : 
L_cont_21301 : 
	jump	L_cont_21299
L_else_21298 : 
L_cont_21299 : 
	addi	r5 r0 0
	addi	r6 r0 0
	ldi	r4 r2 23
	addi	r2 r2 113
	call	L_pretrace_line_2310
	subi	r2 r2 113
	addi	r4 r0 0
	addi	r8 r0 2
	ldi	r5 r2 11
	ldi	r6 r2 23
	ldi	r7 r2 35
	addi	r2 r2 113
	call	L_scan_line_2320
	subi	r2 r2 113
	addi	r4 r0 0
