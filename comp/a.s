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
	jump	L_main_21285
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
	bne	r5 r0 L_else_21409
	return
L_else_21409 : 
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
	bne	r5 r0 L_else_21411
	return
L_else_21411 : 
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
L_sin_1884 : 
	fldi	f3 r0 56
	fldi	f4 r0 55
	fbgt	f2 f4 L_else_21413
	fldi	f5 r0 54
	fbgt	f5 f2 L_else_21414
	fldi	f3 r0 53
	fldi	f5 r0 52
	fldi	f6 r0 51
	fbgt	f2 f0 L_else_21415
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_21416
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21416 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_21417
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21417 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21415 : 
	fbgt	f2 f3 L_else_21418
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21418 : 
	fbgt	f2 f6 L_else_21419
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	return
L_else_21419 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21414 : 
	fadd	f2 f2 f3
	fldi	f3 r0 56
	fldi	f4 r0 55
	fbgt	f2 f4 L_else_21420
	fldi	f5 r0 54
	fbgt	f5 f2 L_else_21421
	fldi	f3 r0 53
	fldi	f5 r0 52
	fldi	f6 r0 51
	fbgt	f2 f0 L_else_21422
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_21423
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21423 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_21424
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21424 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21422 : 
	fbgt	f2 f3 L_else_21425
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21425 : 
	fbgt	f2 f6 L_else_21426
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	return
L_else_21426 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21421 : 
	fadd	f2 f2 f3
	jump	L_sin_1884
L_else_21420 : 
	fsub	f2 f2 f3
	jump	L_sin_1884
L_else_21413 : 
	fsub	f2 f2 f3
	fldi	f3 r0 56
	fldi	f4 r0 55
	fbgt	f2 f4 L_else_21427
	fldi	f5 r0 54
	fbgt	f5 f2 L_else_21428
	fldi	f3 r0 53
	fldi	f5 r0 52
	fldi	f6 r0 51
	fbgt	f2 f0 L_else_21429
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_21430
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21430 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_21431
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21431 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21429 : 
	fbgt	f2 f3 L_else_21432
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21432 : 
	fbgt	f2 f6 L_else_21433
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	return
L_else_21433 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21428 : 
	fadd	f2 f2 f3
	jump	L_sin_1884
L_else_21427 : 
	fsub	f2 f2 f3
	jump	L_sin_1884
L_cos_1886 : 
	fldi	f3 r0 56
	fldi	f4 r0 55
	fbgt	f2 f4 L_else_21434
	fldi	f5 r0 54
	fbgt	f5 f2 L_else_21435
	fldi	f3 r0 53
	fldi	f5 r0 52
	fldi	f6 r0 51
	fbgt	f2 f0 L_else_21436
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_21437
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	return
L_else_21437 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_21438
	fadd	f2 f2 f5
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_21438 : 
	fadd	f2 f4 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21436 : 
	fbgt	f2 f3 L_else_21439
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	return
L_else_21439 : 
	fbgt	f2 f6 L_else_21440
	fsub	f2 f2 f5
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21440 : 
	fsub	f2 f4 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21435 : 
	fadd	f2 f2 f3
	jump	L_cos_1886
L_else_21434 : 
	fsub	f2 f2 f3
	jump	L_cos_1886
L_atan_1888 : 
	fmul	f3 f2 f2
	fldi	f4 r0 38
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
	fldi	f14 r0 35
	fmul	f3 f14 f3
	fdiv	f3 f3 f9
	fldi	f9 r0 34
	fmul	f9 f9 f13
	fdiv	f8 f9 f8
	fadd	f3 f3 f8
	fldi	f8 r0 33
	fmul	f8 f8 f12
	fdiv	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 32
	fmul	f7 f7 f11
	fdiv	f6 f7 f6
	fadd	f3 f3 f6
	fldi	f6 r0 31
	fmul	f6 f6 f10
	fdiv	f5 f6 f5
	fadd	f3 f3 f5
	fdiv	f2 f2 f4
	fadd	f2 f3 f2
	return
L_isqrt_1890 : 
	bne	r4 r0 L_else_21441
	fadd	f2 f0 f3
	return
L_else_21441 : 
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r4 r4 -1
	bne	r4 r0 L_else_21442
	fadd	f2 f0 f3
	return
L_else_21442 : 
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r4 r4 -1
	bne	r4 r0 L_else_21443
	fadd	f2 f0 f3
	return
L_else_21443 : 
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r4 r4 -1
	bne	r4 r0 L_else_21444
	fadd	f2 f0 f3
	return
L_else_21444 : 
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r4 r4 -1
	jump	L_isqrt_1890
L_sqrt_1894 : 
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_21445
	fldi	f3 r0 38
	jump	L_cont_21446
L_else_21445 : 
	fldi	f3 r0 38
	fdiv	f3 f3 f2
L_cont_21446 : 
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r4 r0 12
	fsti	f2 r2 0
	addi	r2 r2 3
	call	L_isqrt_1890
	subi	r2 r2 3
	fldi	f3 r2 0
	fmul	f2 f3 f2
	return
L_sdiv10_1896 : 
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21447
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21448
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21449
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21450
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21451
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21452
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21453
	addi	r4 r4 -10
	addi	r5 r5 1
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21454
	addi	r4 r4 -10
	addi	r5 r5 1
	jump	L_sdiv10_1896
L_else_21454 : 
	add	r4 r0 r5
	return
L_else_21453 : 
	add	r4 r0 r5
	return
L_else_21452 : 
	add	r4 r0 r5
	return
L_else_21451 : 
	add	r4 r0 r5
	return
L_else_21450 : 
	add	r4 r0 r5
	return
L_else_21449 : 
	add	r4 r0 r5
	return
L_else_21448 : 
	add	r4 r0 r5
	return
L_else_21447 : 
	add	r4 r0 r5
	return
L_vecunit_sgn_1929 : 
	fldi	f2 r4 0
	fmul	f2 f2 f2
	fldi	f3 r4 1
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	fldi	f3 r4 2
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_21455
	fldi	f3 r0 38
	jump	L_cont_21456
L_else_21455 : 
	fldi	f3 r0 38
	fdiv	f3 f3 f2
L_cont_21456 : 
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r6 r0 13
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f2 r2 2
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_isqrt_1890
	subi	r2 r2 5
	fldi	f3 r2 2
	fmul	f2 f3 f2
	fbne	f2 f0 L_else_21457
	addi	r4 r0 1
	jump	L_cont_21458
L_else_21457 : 
	addi	r4 r0 0
L_cont_21458 : 
	bne	r4 r0 L_else_21459
	ldi	r4 r2 1
	bne	r4 r0 L_else_21461
	fldi	f3 r0 38
	fdiv	f2 f3 f2
	jump	L_cont_21462
L_else_21461 : 
	fldi	f3 r0 28
	fdiv	f2 f3 f2
L_cont_21462 : 
	jump	L_cont_21460
L_else_21459 : 
	fldi	f2 r0 38
L_cont_21460 : 
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
L_read_object_2039 : 
	addi	r5 r0 60
	bgt	r5 r4 L_else_21464
	return
L_else_21464 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_21466
	addi	r4 r0 0
	jump	L_cont_21467
L_else_21466 : 
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
	fbgt	f0 f2 L_else_21468
	addi	r4 r0 0
	jump	L_cont_21469
L_else_21468 : 
	addi	r4 r0 1
L_cont_21469 : 
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
	bne	r5 r0 L_else_21470
	jump	L_cont_21471
L_else_21470 : 
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
L_cont_21471 : 
	addi	r5 r0 2
	ldi	r6 r2 2
	bne	r6 r5 L_else_21472
	addi	r5 r0 1
	jump	L_cont_21473
L_else_21472 : 
	ldi	r5 r2 7
	add	r5 r0 r5
L_cont_21473 : 
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
	bne	r8 r5 L_else_21474
	fldi	f2 r6 0
	fbne	f2 f0 L_else_21476
	addi	r5 r0 1
	jump	L_cont_21477
L_else_21476 : 
	addi	r5 r0 0
L_cont_21477 : 
	bne	r5 r0 L_else_21478
	fbne	f2 f0 L_else_21480
	addi	r5 r0 1
	jump	L_cont_21481
L_else_21480 : 
	addi	r5 r0 0
L_cont_21481 : 
	bne	r5 r0 L_else_21482
	fbgt	f2 f0 L_else_21484
	addi	r5 r0 0
	jump	L_cont_21485
L_else_21484 : 
	addi	r5 r0 1
L_cont_21485 : 
	bne	r5 r0 L_else_21486
	fldi	f3 r0 28
	jump	L_cont_21487
L_else_21486 : 
	fldi	f3 r0 38
L_cont_21487 : 
	jump	L_cont_21483
L_else_21482 : 
	fldi	f3 r0 27
L_cont_21483 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21479
L_else_21478 : 
	fldi	f2 r0 27
L_cont_21479 : 
	fsti	f2 r6 0
	fldi	f2 r6 1
	fbne	f2 f0 L_else_21488
	addi	r5 r0 1
	jump	L_cont_21489
L_else_21488 : 
	addi	r5 r0 0
L_cont_21489 : 
	bne	r5 r0 L_else_21490
	fbne	f2 f0 L_else_21492
	addi	r5 r0 1
	jump	L_cont_21493
L_else_21492 : 
	addi	r5 r0 0
L_cont_21493 : 
	bne	r5 r0 L_else_21494
	fbgt	f2 f0 L_else_21496
	addi	r5 r0 0
	jump	L_cont_21497
L_else_21496 : 
	addi	r5 r0 1
L_cont_21497 : 
	bne	r5 r0 L_else_21498
	fldi	f3 r0 28
	jump	L_cont_21499
L_else_21498 : 
	fldi	f3 r0 38
L_cont_21499 : 
	jump	L_cont_21495
L_else_21494 : 
	fldi	f3 r0 27
L_cont_21495 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21491
L_else_21490 : 
	fldi	f2 r0 27
L_cont_21491 : 
	fsti	f2 r6 1
	fldi	f2 r6 2
	fbne	f2 f0 L_else_21500
	addi	r5 r0 1
	jump	L_cont_21501
L_else_21500 : 
	addi	r5 r0 0
L_cont_21501 : 
	bne	r5 r0 L_else_21502
	fbne	f2 f0 L_else_21504
	addi	r5 r0 1
	jump	L_cont_21505
L_else_21504 : 
	addi	r5 r0 0
L_cont_21505 : 
	bne	r5 r0 L_else_21506
	fbgt	f2 f0 L_else_21508
	addi	r5 r0 0
	jump	L_cont_21509
L_else_21508 : 
	addi	r5 r0 1
L_cont_21509 : 
	bne	r5 r0 L_else_21510
	fldi	f3 r0 28
	jump	L_cont_21511
L_else_21510 : 
	fldi	f3 r0 38
L_cont_21511 : 
	jump	L_cont_21507
L_else_21506 : 
	fldi	f3 r0 27
L_cont_21507 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21503
L_else_21502 : 
	fldi	f2 r0 27
L_cont_21503 : 
	fsti	f2 r6 2
	jump	L_cont_21475
L_else_21474 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_21512
	addi	r5 r0 1
	ldi	r8 r2 7
	sub	r5 r5 r8
	add	r4 r0 r6
	addi	r2 r2 13
	call	L_vecunit_sgn_1929
	subi	r2 r2 13
	jump	L_cont_21513
L_else_21512 : 
L_cont_21513 : 
L_cont_21475 : 
	ldi	r4 r2 4
	bne	r4 r0 L_else_21514
	jump	L_cont_21515
L_else_21514 : 
	ldi	r4 r2 10
	fldi	f2 r4 0
	addi	r2 r2 13
	call	L_cos_1886
	subi	r2 r2 13
	ldi	r4 r2 10
	fldi	f3 r4 0
	fldi	f4 r0 56
	fldi	f5 r0 55
	fsti	f2 r2 12
	fbgt	f3 f5 L_else_21516
	fldi	f6 r0 54
	fbgt	f6 f3 L_else_21518
	fldi	f4 r0 53
	fldi	f6 r0 52
	fldi	f7 r0 51
	fbgt	f3 f0 L_else_21520
	fldi	f4 r0 37
	fbgt	f4 f3 L_else_21522
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21523
L_else_21522 : 
	fldi	f4 r0 36
	fbgt	f4 f3 L_else_21524
	fadd	f3 f6 f3
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f3 f3 f4
	fsub	f2 f0 f3
	jump	L_cont_21525
L_else_21524 : 
	fadd	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f3 f4 f3
	fsub	f2 f0 f3
L_cont_21525 : 
L_cont_21523 : 
	jump	L_cont_21521
L_else_21520 : 
	fbgt	f3 f4 L_else_21526
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21527
L_else_21526 : 
	fbgt	f3 f7 L_else_21528
	fsub	f3 f3 f6
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f2 f3 f4
	jump	L_cont_21529
L_else_21528 : 
	fsub	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
L_cont_21529 : 
L_cont_21527 : 
L_cont_21521 : 
	jump	L_cont_21519
L_else_21518 : 
	fadd	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 15
	call	L_sin_1884
	subi	r2 r2 15
L_cont_21519 : 
	jump	L_cont_21517
L_else_21516 : 
	fsub	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 15
	call	L_sin_1884
	subi	r2 r2 15
L_cont_21517 : 
	ldi	r4 r2 10
	fldi	f3 r4 1
	fsti	f2 r2 14
	fadd	f2 f0 f3
	addi	r2 r2 17
	call	L_cos_1886
	subi	r2 r2 17
	ldi	r4 r2 10
	fldi	f3 r4 1
	fldi	f4 r0 56
	fldi	f5 r0 55
	fsti	f2 r2 16
	fbgt	f3 f5 L_else_21530
	fldi	f6 r0 54
	fbgt	f6 f3 L_else_21532
	fldi	f4 r0 53
	fldi	f6 r0 52
	fldi	f7 r0 51
	fbgt	f3 f0 L_else_21534
	fldi	f4 r0 37
	fbgt	f4 f3 L_else_21536
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21537
L_else_21536 : 
	fldi	f4 r0 36
	fbgt	f4 f3 L_else_21538
	fadd	f3 f6 f3
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f3 f3 f4
	fsub	f2 f0 f3
	jump	L_cont_21539
L_else_21538 : 
	fadd	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f3 f4 f3
	fsub	f2 f0 f3
L_cont_21539 : 
L_cont_21537 : 
	jump	L_cont_21535
L_else_21534 : 
	fbgt	f3 f4 L_else_21540
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21541
L_else_21540 : 
	fbgt	f3 f7 L_else_21542
	fsub	f3 f3 f6
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f2 f3 f4
	jump	L_cont_21543
L_else_21542 : 
	fsub	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
L_cont_21543 : 
L_cont_21541 : 
L_cont_21535 : 
	jump	L_cont_21533
L_else_21532 : 
	fadd	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 19
	call	L_sin_1884
	subi	r2 r2 19
L_cont_21533 : 
	jump	L_cont_21531
L_else_21530 : 
	fsub	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 19
	call	L_sin_1884
	subi	r2 r2 19
L_cont_21531 : 
	ldi	r4 r2 10
	fldi	f3 r4 2
	fsti	f2 r2 18
	fadd	f2 f0 f3
	addi	r2 r2 21
	call	L_cos_1886
	subi	r2 r2 21
	ldi	r4 r2 10
	fldi	f3 r4 2
	fldi	f4 r0 56
	fldi	f5 r0 55
	fsti	f2 r2 20
	fbgt	f3 f5 L_else_21544
	fldi	f6 r0 54
	fbgt	f6 f3 L_else_21546
	fldi	f4 r0 53
	fldi	f6 r0 52
	fldi	f7 r0 51
	fbgt	f3 f0 L_else_21548
	fldi	f4 r0 37
	fbgt	f4 f3 L_else_21550
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21551
L_else_21550 : 
	fldi	f4 r0 36
	fbgt	f4 f3 L_else_21552
	fadd	f3 f6 f3
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f3 f3 f4
	fsub	f2 f0 f3
	jump	L_cont_21553
L_else_21552 : 
	fadd	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f3 f4 f3
	fsub	f2 f0 f3
L_cont_21553 : 
L_cont_21551 : 
	jump	L_cont_21549
L_else_21548 : 
	fbgt	f3 f4 L_else_21554
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_21555
L_else_21554 : 
	fbgt	f3 f7 L_else_21556
	fsub	f3 f3 f6
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f2 f3 f4
	jump	L_cont_21557
L_else_21556 : 
	fsub	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
L_cont_21557 : 
L_cont_21555 : 
L_cont_21549 : 
	jump	L_cont_21547
L_else_21546 : 
	fadd	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 23
	call	L_sin_1884
	subi	r2 r2 23
L_cont_21547 : 
	jump	L_cont_21545
L_else_21544 : 
	fsub	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 23
	call	L_sin_1884
	subi	r2 r2 23
L_cont_21545 : 
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
L_cont_21515 : 
	addi	r4 r0 1
L_cont_21467 : 
	bne	r4 r0 L_else_21558
	addi	r4 r0 4144
	ldi	r5 r2 0
	sti	r5 r4 0
	return
L_else_21558 : 
	ldi	r4 r2 0
	addi	r4 r4 1
	addi	r5 r0 60
	bgt	r5 r4 L_else_21560
	return
L_else_21560 : 
	sti	r4 r2 22
	addi	r2 r2 24
	call	min_caml_read_int
	subi	r2 r2 24
	addi	r5 r0 -1
	bne	r4 r5 L_else_21562
	addi	r4 r0 0
	jump	L_cont_21563
L_else_21562 : 
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
	fbgt	f0 f2 L_else_21564
	addi	r4 r0 0
	jump	L_cont_21565
L_else_21564 : 
	addi	r4 r0 1
L_cont_21565 : 
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
	bne	r5 r0 L_else_21566
	jump	L_cont_21567
L_else_21566 : 
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
L_cont_21567 : 
	addi	r5 r0 2
	ldi	r6 r2 24
	bne	r6 r5 L_else_21568
	addi	r5 r0 1
	jump	L_cont_21569
L_else_21568 : 
	ldi	r5 r2 29
	add	r5 r0 r5
L_cont_21569 : 
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
	bne	r8 r5 L_else_21570
	fldi	f2 r6 0
	fbne	f2 f0 L_else_21572
	addi	r5 r0 1
	jump	L_cont_21573
L_else_21572 : 
	addi	r5 r0 0
L_cont_21573 : 
	bne	r5 r0 L_else_21574
	fbne	f2 f0 L_else_21576
	addi	r5 r0 1
	jump	L_cont_21577
L_else_21576 : 
	addi	r5 r0 0
L_cont_21577 : 
	bne	r5 r0 L_else_21578
	fbgt	f2 f0 L_else_21580
	addi	r5 r0 0
	jump	L_cont_21581
L_else_21580 : 
	addi	r5 r0 1
L_cont_21581 : 
	bne	r5 r0 L_else_21582
	fldi	f3 r0 28
	jump	L_cont_21583
L_else_21582 : 
	fldi	f3 r0 38
L_cont_21583 : 
	jump	L_cont_21579
L_else_21578 : 
	fldi	f3 r0 27
L_cont_21579 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21575
L_else_21574 : 
	fldi	f2 r0 27
L_cont_21575 : 
	fsti	f2 r6 0
	fldi	f2 r6 1
	fbne	f2 f0 L_else_21584
	addi	r5 r0 1
	jump	L_cont_21585
L_else_21584 : 
	addi	r5 r0 0
L_cont_21585 : 
	bne	r5 r0 L_else_21586
	fbne	f2 f0 L_else_21588
	addi	r5 r0 1
	jump	L_cont_21589
L_else_21588 : 
	addi	r5 r0 0
L_cont_21589 : 
	bne	r5 r0 L_else_21590
	fbgt	f2 f0 L_else_21592
	addi	r5 r0 0
	jump	L_cont_21593
L_else_21592 : 
	addi	r5 r0 1
L_cont_21593 : 
	bne	r5 r0 L_else_21594
	fldi	f3 r0 28
	jump	L_cont_21595
L_else_21594 : 
	fldi	f3 r0 38
L_cont_21595 : 
	jump	L_cont_21591
L_else_21590 : 
	fldi	f3 r0 27
L_cont_21591 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21587
L_else_21586 : 
	fldi	f2 r0 27
L_cont_21587 : 
	fsti	f2 r6 1
	fldi	f2 r6 2
	fbne	f2 f0 L_else_21596
	addi	r5 r0 1
	jump	L_cont_21597
L_else_21596 : 
	addi	r5 r0 0
L_cont_21597 : 
	bne	r5 r0 L_else_21598
	fbne	f2 f0 L_else_21600
	addi	r5 r0 1
	jump	L_cont_21601
L_else_21600 : 
	addi	r5 r0 0
L_cont_21601 : 
	bne	r5 r0 L_else_21602
	fbgt	f2 f0 L_else_21604
	addi	r5 r0 0
	jump	L_cont_21605
L_else_21604 : 
	addi	r5 r0 1
L_cont_21605 : 
	bne	r5 r0 L_else_21606
	fldi	f3 r0 28
	jump	L_cont_21607
L_else_21606 : 
	fldi	f3 r0 38
L_cont_21607 : 
	jump	L_cont_21603
L_else_21602 : 
	fldi	f3 r0 27
L_cont_21603 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21599
L_else_21598 : 
	fldi	f2 r0 27
L_cont_21599 : 
	fsti	f2 r6 2
	jump	L_cont_21571
L_else_21570 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_21608
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
	sti	r5 r2 34
	addi	r2 r2 36
	call	L_sqrt_1894
	subi	r2 r2 36
	fbne	f2 f0 L_else_21610
	addi	r4 r0 1
	jump	L_cont_21611
L_else_21610 : 
	addi	r4 r0 0
L_cont_21611 : 
	bne	r4 r0 L_else_21612
	ldi	r4 r2 34
	bne	r4 r0 L_else_21614
	fldi	f3 r0 38
	fdiv	f2 f3 f2
	jump	L_cont_21615
L_else_21614 : 
	fldi	f3 r0 28
	fdiv	f2 f3 f2
L_cont_21615 : 
	jump	L_cont_21613
L_else_21612 : 
	fldi	f2 r0 38
L_cont_21613 : 
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
	jump	L_cont_21609
L_else_21608 : 
L_cont_21609 : 
L_cont_21571 : 
	ldi	r4 r2 26
	bne	r4 r0 L_else_21616
	jump	L_cont_21617
L_else_21616 : 
	ldi	r4 r2 32
	fldi	f2 r4 0
	addi	r2 r2 36
	call	L_cos_1886
	subi	r2 r2 36
	ldi	r4 r2 32
	fldi	f3 r4 0
	fsti	f2 r2 36
	fadd	f2 f0 f3
	addi	r2 r2 39
	call	L_sin_1884
	subi	r2 r2 39
	ldi	r4 r2 32
	fldi	f3 r4 1
	fsti	f2 r2 38
	fadd	f2 f0 f3
	addi	r2 r2 41
	call	L_cos_1886
	subi	r2 r2 41
	ldi	r4 r2 32
	fldi	f3 r4 1
	fsti	f2 r2 40
	fadd	f2 f0 f3
	addi	r2 r2 43
	call	L_sin_1884
	subi	r2 r2 43
	ldi	r4 r2 32
	fldi	f3 r4 2
	fsti	f2 r2 42
	fadd	f2 f0 f3
	addi	r2 r2 45
	call	L_cos_1886
	subi	r2 r2 45
	ldi	r4 r2 32
	fldi	f3 r4 2
	fsti	f2 r2 44
	fadd	f2 f0 f3
	addi	r2 r2 47
	call	L_sin_1884
	subi	r2 r2 47
	fldi	f3 r2 44
	fldi	f4 r2 40
	fmul	f5 f4 f3
	fldi	f6 r2 42
	fldi	f7 r2 38
	fmul	f8 f7 f6
	fmul	f8 f8 f3
	fldi	f9 r2 36
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
L_cont_21617 : 
	addi	r4 r0 1
L_cont_21563 : 
	bne	r4 r0 L_else_21619
	addi	r4 r0 4144
	ldi	r5 r2 22
	sti	r5 r4 0
	return
L_else_21619 : 
	ldi	r4 r2 22
	addi	r4 r4 1
	jump	L_read_object_2039
L_read_net_item_2043 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_21621
	ldi	r4 r2 0
	addi	r4 r4 1
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_21621 : 
	ldi	r5 r2 0
	addi	r6 r5 1
	sti	r4 r2 1
	sti	r6 r2 2
	addi	r2 r2 4
	call	min_caml_read_int
	subi	r2 r2 4
	addi	r5 r0 -1
	bne	r4 r5 L_else_21622
	ldi	r4 r2 2
	addi	r4 r4 1
	addi	r5 r0 -1
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	jump	L_cont_21623
L_else_21622 : 
	ldi	r5 r2 2
	addi	r6 r5 1
	sti	r4 r2 3
	sti	r6 r2 4
	addi	r2 r2 6
	call	min_caml_read_int
	subi	r2 r2 6
	addi	r5 r0 -1
	bne	r4 r5 L_else_21624
	ldi	r4 r2 4
	addi	r4 r4 1
	addi	r5 r0 -1
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	jump	L_cont_21625
L_else_21624 : 
	ldi	r5 r2 4
	addi	r6 r5 1
	sti	r4 r2 5
	sti	r6 r2 6
	addi	r2 r2 8
	call	min_caml_read_int
	subi	r2 r2 8
	addi	r5 r0 -1
	bne	r4 r5 L_else_21626
	ldi	r4 r2 6
	addi	r4 r4 1
	addi	r5 r0 -1
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	jump	L_cont_21627
L_else_21626 : 
	ldi	r5 r2 6
	addi	r6 r5 1
	sti	r4 r2 7
	add	r4 r0 r6
	addi	r2 r2 9
	call	L_read_net_item_2043
	subi	r2 r2 9
	ldi	r5 r2 6
	add	r5 r4 r5
	ldi	r6 r2 7
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21627 : 
	ldi	r5 r2 4
	add	r5 r4 r5
	ldi	r6 r2 5
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21625 : 
	ldi	r5 r2 2
	add	r5 r4 r5
	ldi	r6 r2 3
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21623 : 
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 1
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_or_network_2045 : 
	addi	r5 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	addi	r2 r2 3
	call	min_caml_read_int
	subi	r2 r2 3
	addi	r5 r0 -1
	bne	r4 r5 L_else_21628
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 3
	call	min_caml_create_array
	subi	r2 r2 3
	add	r5 r0 r4
	jump	L_cont_21629
L_else_21628 : 
	addi	r5 r0 1
	sti	r4 r2 2
	sti	r5 r2 3
	addi	r2 r2 5
	call	min_caml_read_int
	subi	r2 r2 5
	addi	r5 r0 -1
	bne	r4 r5 L_else_21630
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	jump	L_cont_21631
L_else_21630 : 
	addi	r5 r0 2
	sti	r4 r2 4
	sti	r5 r2 5
	addi	r2 r2 7
	call	min_caml_read_int
	subi	r2 r2 7
	addi	r5 r0 -1
	bne	r4 r5 L_else_21632
	addi	r4 r0 3
	addi	r5 r0 -1
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	jump	L_cont_21633
L_else_21632 : 
	addi	r5 r0 3
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	L_read_net_item_2043
	subi	r2 r2 8
	ldi	r5 r2 5
	add	r5 r4 r5
	ldi	r6 r2 6
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21633 : 
	ldi	r5 r2 3
	add	r5 r4 r5
	ldi	r6 r2 4
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21631 : 
	ldi	r5 r2 1
	add	r5 r4 r5
	ldi	r6 r2 2
	sti	r6 r5 0
	add	r5 r0 r4
L_cont_21629 : 
	ldi	r4 r5 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21634
	ldi	r4 r2 0
	addi	r4 r4 1
	jump	min_caml_create_array
L_else_21634 : 
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
	bne	r4 r5 L_else_21635
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 11
	call	min_caml_create_array
	subi	r2 r2 11
	add	r5 r0 r4
	jump	L_cont_21636
L_else_21635 : 
	addi	r5 r0 1
	sti	r4 r2 10
	sti	r5 r2 11
	addi	r2 r2 13
	call	min_caml_read_int
	subi	r2 r2 13
	addi	r5 r0 -1
	bne	r4 r5 L_else_21637
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 13
	call	min_caml_create_array
	subi	r2 r2 13
	jump	L_cont_21638
L_else_21637 : 
	addi	r5 r0 2
	sti	r4 r2 12
	add	r4 r0 r5
	addi	r2 r2 14
	call	L_read_net_item_2043
	subi	r2 r2 14
	ldi	r5 r2 11
	add	r5 r4 r5
	ldi	r6 r2 12
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21638 : 
	ldi	r5 r2 9
	add	r5 r4 r5
	ldi	r6 r2 10
	sti	r6 r5 0
	add	r5 r0 r4
L_cont_21636 : 
	ldi	r4 r5 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21639
	ldi	r4 r2 8
	addi	r4 r4 1
	addi	r2 r2 14
	call	min_caml_create_array
	subi	r2 r2 14
	jump	L_cont_21640
L_else_21639 : 
	ldi	r4 r2 8
	addi	r6 r4 1
	sti	r5 r2 13
	add	r4 r0 r6
	addi	r2 r2 15
	call	L_read_or_network_2045
	subi	r2 r2 15
	ldi	r5 r2 8
	add	r5 r4 r5
	ldi	r6 r2 13
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21640 : 
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 7
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_and_network_2047 : 
	addi	r5 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	addi	r2 r2 3
	call	min_caml_read_int
	subi	r2 r2 3
	addi	r5 r0 -1
	bne	r4 r5 L_else_21641
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 3
	call	min_caml_create_array
	subi	r2 r2 3
	jump	L_cont_21642
L_else_21641 : 
	addi	r5 r0 1
	sti	r4 r2 2
	sti	r5 r2 3
	addi	r2 r2 5
	call	min_caml_read_int
	subi	r2 r2 5
	addi	r5 r0 -1
	bne	r4 r5 L_else_21643
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	jump	L_cont_21644
L_else_21643 : 
	addi	r5 r0 2
	sti	r4 r2 4
	sti	r5 r2 5
	addi	r2 r2 7
	call	min_caml_read_int
	subi	r2 r2 7
	addi	r5 r0 -1
	bne	r4 r5 L_else_21645
	addi	r4 r0 3
	addi	r5 r0 -1
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	jump	L_cont_21646
L_else_21645 : 
	addi	r5 r0 3
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	L_read_net_item_2043
	subi	r2 r2 8
	ldi	r5 r2 5
	add	r5 r4 r5
	ldi	r6 r2 6
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21646 : 
	ldi	r5 r2 3
	add	r5 r4 r5
	ldi	r6 r2 4
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21644 : 
	ldi	r5 r2 1
	add	r5 r4 r5
	ldi	r6 r2 2
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21642 : 
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_21647
	return
L_else_21647 : 
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
	bne	r4 r5 L_else_21649
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 10
	call	min_caml_create_array
	subi	r2 r2 10
	jump	L_cont_21650
L_else_21649 : 
	addi	r5 r0 1
	sti	r4 r2 9
	sti	r5 r2 10
	addi	r2 r2 12
	call	min_caml_read_int
	subi	r2 r2 12
	addi	r5 r0 -1
	bne	r4 r5 L_else_21651
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 12
	call	min_caml_create_array
	subi	r2 r2 12
	jump	L_cont_21652
L_else_21651 : 
	addi	r5 r0 2
	sti	r4 r2 11
	add	r4 r0 r5
	addi	r2 r2 13
	call	L_read_net_item_2043
	subi	r2 r2 13
	ldi	r5 r2 10
	add	r5 r4 r5
	ldi	r6 r2 11
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21652 : 
	ldi	r5 r2 8
	add	r5 r4 r5
	ldi	r6 r2 9
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21650 : 
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_21653
	return
L_else_21653 : 
	addi	r5 r0 4155
	ldi	r6 r2 7
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r6 1
	jump	L_read_and_network_2047
L_solver_rect_2060 : 
	addi	r6 r0 0
	addi	r7 r0 1
	addi	r8 r0 2
	add	r9 r5 r6
	fldi	f5 r9 0
	fbne	f5 f0 L_else_21655
	addi	r9 r0 1
	jump	L_cont_21656
L_else_21655 : 
	addi	r9 r0 0
L_cont_21656 : 
	bne	r9 r0 L_else_21657
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fbgt	f0 f5 L_else_21659
	addi	r11 r0 0
	jump	L_cont_21660
L_else_21659 : 
	addi	r11 r0 1
L_cont_21660 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	bne	r10 r0 L_else_21661
	fsub	f5 f0 f5
	jump	L_cont_21662
L_else_21661 : 
	fadd	f5 f0 f5
L_cont_21662 : 
	fsub	f5 f5 f2
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fbgt	f0 f6 L_else_21663
	fadd	f6 f0 f6
	jump	L_cont_21664
L_else_21663 : 
	fsub	f6 f0 f6
L_cont_21664 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_21665
	addi	r6 r0 0
	jump	L_cont_21666
L_else_21665 : 
	addi	r6 r0 1
L_cont_21666 : 
	bne	r6 r0 L_else_21667
	addi	r6 r0 0
	jump	L_cont_21668
L_else_21667 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_21669
	fadd	f6 f0 f6
	jump	L_cont_21670
L_else_21669 : 
	fsub	f6 f0 f6
L_cont_21670 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_21671
	addi	r6 r0 0
	jump	L_cont_21672
L_else_21671 : 
	addi	r6 r0 1
L_cont_21672 : 
	bne	r6 r0 L_else_21673
	addi	r6 r0 0
	jump	L_cont_21674
L_else_21673 : 
	addi	r6 r0 4145
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_21674 : 
L_cont_21668 : 
	jump	L_cont_21658
L_else_21657 : 
	addi	r6 r0 0
L_cont_21658 : 
	bne	r6 r0 L_else_21675
	addi	r6 r0 1
	addi	r7 r0 2
	addi	r8 r0 0
	add	r9 r5 r6
	fldi	f5 r9 0
	fbne	f5 f0 L_else_21676
	addi	r9 r0 1
	jump	L_cont_21677
L_else_21676 : 
	addi	r9 r0 0
L_cont_21677 : 
	bne	r9 r0 L_else_21678
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fbgt	f0 f5 L_else_21680
	addi	r11 r0 0
	jump	L_cont_21681
L_else_21680 : 
	addi	r11 r0 1
L_cont_21681 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	bne	r10 r0 L_else_21682
	fsub	f5 f0 f5
	jump	L_cont_21683
L_else_21682 : 
	fadd	f5 f0 f5
L_cont_21683 : 
	fsub	f5 f5 f3
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_21684
	fadd	f6 f0 f6
	jump	L_cont_21685
L_else_21684 : 
	fsub	f6 f0 f6
L_cont_21685 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_21686
	addi	r6 r0 0
	jump	L_cont_21687
L_else_21686 : 
	addi	r6 r0 1
L_cont_21687 : 
	bne	r6 r0 L_else_21688
	addi	r6 r0 0
	jump	L_cont_21689
L_else_21688 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fbgt	f0 f6 L_else_21690
	fadd	f6 f0 f6
	jump	L_cont_21691
L_else_21690 : 
	fsub	f6 f0 f6
L_cont_21691 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_21692
	addi	r6 r0 0
	jump	L_cont_21693
L_else_21692 : 
	addi	r6 r0 1
L_cont_21693 : 
	bne	r6 r0 L_else_21694
	addi	r6 r0 0
	jump	L_cont_21695
L_else_21694 : 
	addi	r6 r0 4145
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_21695 : 
L_cont_21689 : 
	jump	L_cont_21679
L_else_21678 : 
	addi	r6 r0 0
L_cont_21679 : 
	bne	r6 r0 L_else_21696
	addi	r6 r0 2
	addi	r7 r0 0
	addi	r8 r0 1
	add	r9 r5 r6
	fldi	f5 r9 0
	fbne	f5 f0 L_else_21697
	addi	r9 r0 1
	jump	L_cont_21698
L_else_21697 : 
	addi	r9 r0 0
L_cont_21698 : 
	bne	r9 r0 L_else_21699
	ldi	r9 r4 4
	ldi	r4 r4 6
	add	r10 r5 r6
	fldi	f5 r10 0
	fbgt	f0 f5 L_else_21701
	addi	r10 r0 0
	jump	L_cont_21702
L_else_21701 : 
	addi	r10 r0 1
L_cont_21702 : 
	xor	r4 r4 r10
	add	r10 r9 r6
	fldi	f5 r10 0
	bne	r4 r0 L_else_21703
	fsub	f5 f0 f5
	jump	L_cont_21704
L_else_21703 : 
	fadd	f5 f0 f5
L_cont_21704 : 
	fsub	f4 f5 f4
	add	r4 r5 r6
	fldi	f5 r4 0
	fdiv	f4 f4 f5
	add	r4 r5 r7
	fldi	f5 r4 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fbgt	f0 f2 L_else_21705
	fadd	f2 f0 f2
	jump	L_cont_21706
L_else_21705 : 
	fsub	f2 f0 f2
L_cont_21706 : 
	add	r4 r9 r7
	fldi	f5 r4 0
	fbgt	f5 f2 L_else_21707
	addi	r4 r0 0
	jump	L_cont_21708
L_else_21707 : 
	addi	r4 r0 1
L_cont_21708 : 
	bne	r4 r0 L_else_21709
	addi	r4 r0 0
	jump	L_cont_21710
L_else_21709 : 
	add	r4 r5 r8
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_21711
	fadd	f2 f0 f2
	jump	L_cont_21712
L_else_21711 : 
	fsub	f2 f0 f2
L_cont_21712 : 
	add	r4 r9 r8
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_21713
	addi	r4 r0 0
	jump	L_cont_21714
L_else_21713 : 
	addi	r4 r0 1
L_cont_21714 : 
	bne	r4 r0 L_else_21715
	addi	r4 r0 0
	jump	L_cont_21716
L_else_21715 : 
	addi	r4 r0 4145
	fsti	f4 r4 0
	addi	r4 r0 1
L_cont_21716 : 
L_cont_21710 : 
	jump	L_cont_21700
L_else_21699 : 
	addi	r4 r0 0
L_cont_21700 : 
	bne	r4 r0 L_else_21717
	addi	r4 r0 0
	return
L_else_21717 : 
	addi	r4 r0 3
	return
L_else_21696 : 
	addi	r4 r0 2
	return
L_else_21675 : 
	addi	r4 r0 1
	return
L_solver_surface_2066 : 
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
	fbgt	f5 f0 L_else_21718
	addi	r5 r0 0
	jump	L_cont_21719
L_else_21718 : 
	addi	r5 r0 1
L_cont_21719 : 
	bne	r5 r0 L_else_21720
	addi	r4 r0 0
	return
L_else_21720 : 
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
L_quadratic_2072 : 
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
	bne	r5 r0 L_else_21721
	fadd	f2 f0 f5
	return
L_else_21721 : 
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
L_solver_second_2085 : 
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
	bne	r6 r0 L_else_21722
	fadd	f5 f0 f8
	jump	L_cont_21723
L_else_21722 : 
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
L_cont_21723 : 
	fbne	f5 f0 L_else_21724
	addi	r6 r0 1
	jump	L_cont_21725
L_else_21724 : 
	addi	r6 r0 0
L_cont_21725 : 
	bne	r6 r0 L_else_21726
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
	bne	r5 r0 L_else_21727
	fadd	f6 f0 f9
	jump	L_cont_21728
L_else_21727 : 
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
L_cont_21728 : 
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
	bne	r5 r0 L_else_21729
	fadd	f2 f0 f7
	jump	L_cont_21730
L_else_21729 : 
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
L_cont_21730 : 
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_21731
	fldi	f3 r0 38
	fsub	f2 f2 f3
	jump	L_cont_21732
L_else_21731 : 
	fadd	f2 f0 f2
L_cont_21732 : 
	fmul	f3 f6 f6
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_21733
	addi	r5 r0 0
	jump	L_cont_21734
L_else_21733 : 
	addi	r5 r0 1
L_cont_21734 : 
	bne	r5 r0 L_else_21735
	addi	r4 r0 0
	return
L_else_21735 : 
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_21736
	fldi	f3 r0 38
	jump	L_cont_21737
L_else_21736 : 
	fldi	f3 r0 38
	fdiv	f3 f3 f2
L_cont_21737 : 
	fldi	f4 r0 30
	fmul	f7 f2 f3
	fmul	f7 f7 f3
	fsub	f4 f4 f7
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fldi	f4 r0 30
	fmul	f7 f2 f3
	fmul	f7 f7 f3
	fsub	f4 f4 f7
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r5 r0 13
	fsti	f5 r2 0
	fsti	f6 r2 2
	sti	r4 r2 4
	fsti	f2 r2 6
	add	r4 r0 r5
	addi	r2 r2 9
	call	L_isqrt_1890
	subi	r2 r2 9
	fldi	f3 r2 6
	fmul	f2 f3 f2
	ldi	r4 r2 4
	ldi	r4 r4 6
	bne	r4 r0 L_else_21739
	fsub	f2 f0 f2
	jump	L_cont_21740
L_else_21739 : 
	fadd	f2 f0 f2
L_cont_21740 : 
	addi	r4 r0 4145
	fldi	f3 r2 2
	fsub	f2 f2 f3
	fldi	f3 r2 0
	fdiv	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_21726 : 
	addi	r4 r0 0
	return
L_solver_rect_fast_2095 : 
	fldi	f5 r6 0
	fsub	f5 f5 f2
	fldi	f6 r6 1
	fmul	f5 f5 f6
	fldi	f6 r5 1
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fbgt	f0 f6 L_else_21741
	fadd	f6 f0 f6
	jump	L_cont_21742
L_else_21741 : 
	fsub	f6 f0 f6
L_cont_21742 : 
	ldi	r7 r4 4
	fldi	f7 r7 1
	fbgt	f7 f6 L_else_21743
	addi	r7 r0 0
	jump	L_cont_21744
L_else_21743 : 
	addi	r7 r0 1
L_cont_21744 : 
	bne	r7 r0 L_else_21745
	addi	r7 r0 0
	jump	L_cont_21746
L_else_21745 : 
	fldi	f6 r5 2
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_21747
	fadd	f6 f0 f6
	jump	L_cont_21748
L_else_21747 : 
	fsub	f6 f0 f6
L_cont_21748 : 
	ldi	r7 r4 4
	fldi	f7 r7 2
	fbgt	f7 f6 L_else_21749
	addi	r7 r0 0
	jump	L_cont_21750
L_else_21749 : 
	addi	r7 r0 1
L_cont_21750 : 
	bne	r7 r0 L_else_21751
	addi	r7 r0 0
	jump	L_cont_21752
L_else_21751 : 
	addi	r7 r0 1
	fldi	f6 r6 1
	fbne	f6 f0 L_else_21753
	addi	r8 r0 1
	jump	L_cont_21754
L_else_21753 : 
	addi	r8 r0 0
L_cont_21754 : 
	sub	r7 r7 r8
L_cont_21752 : 
L_cont_21746 : 
	bne	r7 r0 L_else_21755
	fldi	f5 r6 2
	fsub	f5 f5 f3
	fldi	f6 r6 3
	fmul	f5 f5 f6
	fldi	f6 r5 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fbgt	f0 f6 L_else_21756
	fadd	f6 f0 f6
	jump	L_cont_21757
L_else_21756 : 
	fsub	f6 f0 f6
L_cont_21757 : 
	ldi	r7 r4 4
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_21758
	addi	r7 r0 0
	jump	L_cont_21759
L_else_21758 : 
	addi	r7 r0 1
L_cont_21759 : 
	bne	r7 r0 L_else_21760
	addi	r7 r0 0
	jump	L_cont_21761
L_else_21760 : 
	fldi	f6 r5 2
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_21762
	fadd	f6 f0 f6
	jump	L_cont_21763
L_else_21762 : 
	fsub	f6 f0 f6
L_cont_21763 : 
	ldi	r7 r4 4
	fldi	f7 r7 2
	fbgt	f7 f6 L_else_21764
	addi	r7 r0 0
	jump	L_cont_21765
L_else_21764 : 
	addi	r7 r0 1
L_cont_21765 : 
	bne	r7 r0 L_else_21766
	addi	r7 r0 0
	jump	L_cont_21767
L_else_21766 : 
	addi	r7 r0 1
	fldi	f6 r6 3
	fbne	f6 f0 L_else_21768
	addi	r8 r0 1
	jump	L_cont_21769
L_else_21768 : 
	addi	r8 r0 0
L_cont_21769 : 
	sub	r7 r7 r8
L_cont_21767 : 
L_cont_21761 : 
	bne	r7 r0 L_else_21770
	fldi	f5 r6 4
	fsub	f4 f5 f4
	fldi	f5 r6 5
	fmul	f4 f4 f5
	fldi	f5 r5 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fbgt	f0 f2 L_else_21771
	fadd	f2 f0 f2
	jump	L_cont_21772
L_else_21771 : 
	fsub	f2 f0 f2
L_cont_21772 : 
	ldi	r7 r4 4
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_21773
	addi	r7 r0 0
	jump	L_cont_21774
L_else_21773 : 
	addi	r7 r0 1
L_cont_21774 : 
	bne	r7 r0 L_else_21775
	addi	r4 r0 0
	jump	L_cont_21776
L_else_21775 : 
	fldi	f2 r5 1
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_21777
	fadd	f2 f0 f2
	jump	L_cont_21778
L_else_21777 : 
	fsub	f2 f0 f2
L_cont_21778 : 
	ldi	r4 r4 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_21779
	addi	r4 r0 0
	jump	L_cont_21780
L_else_21779 : 
	addi	r4 r0 1
L_cont_21780 : 
	bne	r4 r0 L_else_21781
	addi	r4 r0 0
	jump	L_cont_21782
L_else_21781 : 
	addi	r4 r0 1
	fldi	f2 r6 5
	fbne	f2 f0 L_else_21783
	addi	r5 r0 1
	jump	L_cont_21784
L_else_21783 : 
	addi	r5 r0 0
L_cont_21784 : 
	sub	r4 r4 r5
L_cont_21782 : 
L_cont_21776 : 
	bne	r4 r0 L_else_21785
	addi	r4 r0 0
	return
L_else_21785 : 
	addi	r4 r0 4145
	fsti	f4 r4 0
	addi	r4 r0 3
	return
L_else_21770 : 
	addi	r4 r0 4145
	fsti	f5 r4 0
	addi	r4 r0 2
	return
L_else_21755 : 
	addi	r4 r0 4145
	fsti	f5 r4 0
	addi	r4 r0 1
	return
L_solver_second_fast_2108 : 
	fldi	f5 r5 0
	fbne	f5 f0 L_else_21786
	addi	r6 r0 1
	jump	L_cont_21787
L_else_21786 : 
	addi	r6 r0 0
L_cont_21787 : 
	bne	r6 r0 L_else_21788
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
	bne	r6 r0 L_else_21789
	fadd	f2 f0 f7
	jump	L_cont_21790
L_else_21789 : 
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
L_cont_21790 : 
	ldi	r6 r4 1
	addi	r7 r0 3
	bne	r6 r7 L_else_21791
	fldi	f3 r0 38
	fsub	f2 f2 f3
	jump	L_cont_21792
L_else_21791 : 
	fadd	f2 f0 f2
L_cont_21792 : 
	fmul	f3 f6 f6
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_21793
	addi	r6 r0 0
	jump	L_cont_21794
L_else_21793 : 
	addi	r6 r0 1
L_cont_21794 : 
	bne	r6 r0 L_else_21795
	addi	r4 r0 0
	return
L_else_21795 : 
	ldi	r4 r4 6
	bne	r4 r0 L_else_21796
	addi	r4 r0 4145
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_21798
	fldi	f3 r0 38
	jump	L_cont_21799
L_else_21798 : 
	fldi	f3 r0 38
	fdiv	f3 f3 f2
L_cont_21799 : 
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r6 r0 13
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f6 r2 2
	fsti	f2 r2 4
	add	r4 r0 r6
	addi	r2 r2 7
	call	L_isqrt_1890
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
	jump	L_cont_21797
L_else_21796 : 
	addi	r4 r0 4145
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_21800
	fldi	f3 r0 38
	jump	L_cont_21801
L_else_21800 : 
	fldi	f3 r0 38
	fdiv	f3 f3 f2
L_cont_21801 : 
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r6 r0 13
	sti	r4 r2 6
	sti	r5 r2 1
	fsti	f6 r2 2
	fsti	f2 r2 4
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_isqrt_1890
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
L_cont_21797 : 
	addi	r4 r0 1
	return
L_else_21788 : 
	addi	r4 r0 0
	return
L_solver_second_fast2_2125 : 
	fldi	f5 r5 0
	fbne	f5 f0 L_else_21802
	addi	r7 r0 1
	jump	L_cont_21803
L_else_21802 : 
	addi	r7 r0 0
L_cont_21803 : 
	bne	r7 r0 L_else_21804
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
	fbgt	f3 f0 L_else_21805
	addi	r6 r0 0
	jump	L_cont_21806
L_else_21805 : 
	addi	r6 r0 1
L_cont_21806 : 
	bne	r6 r0 L_else_21807
	addi	r4 r0 0
	return
L_else_21807 : 
	ldi	r4 r4 6
	bne	r4 r0 L_else_21808
	addi	r4 r0 4145
	fldi	f4 r0 38
	fbgt	f3 f4 L_else_21810
	fldi	f4 r0 38
	jump	L_cont_21811
L_else_21810 : 
	fldi	f4 r0 38
	fdiv	f4 f4 f3
L_cont_21811 : 
	fldi	f5 r0 30
	fmul	f6 f3 f4
	fmul	f6 f6 f4
	fsub	f5 f5 f6
	fmul	f4 f4 f5
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	fldi	f5 r0 30
	fmul	f6 f3 f4
	fmul	f6 f6 f4
	fsub	f5 f5 f6
	fmul	f4 f4 f5
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	addi	r6 r0 13
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f2 r2 2
	fsti	f3 r2 4
	add	r4 r0 r6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	addi	r2 r2 7
	call	L_isqrt_1890
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
	jump	L_cont_21809
L_else_21808 : 
	addi	r4 r0 4145
	fldi	f4 r0 38
	fbgt	f3 f4 L_else_21812
	fldi	f4 r0 38
	jump	L_cont_21813
L_else_21812 : 
	fldi	f4 r0 38
	fdiv	f4 f4 f3
L_cont_21813 : 
	fldi	f5 r0 30
	fmul	f6 f3 f4
	fmul	f6 f6 f4
	fsub	f5 f5 f6
	fmul	f4 f4 f5
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	fldi	f5 r0 30
	fmul	f6 f3 f4
	fmul	f6 f6 f4
	fsub	f5 f5 f6
	fmul	f4 f4 f5
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	addi	r6 r0 13
	sti	r4 r2 6
	sti	r5 r2 1
	fsti	f2 r2 2
	fsti	f3 r2 4
	add	r4 r0 r6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	addi	r2 r2 8
	call	L_isqrt_1890
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
L_cont_21809 : 
	addi	r4 r0 1
	return
L_else_21804 : 
	addi	r4 r0 0
	return
L_solver_fast2_2132 : 
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
	bne	r8 r9 L_else_21814
	ldi	r5 r5 0
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r1
	jump	L_solver_rect_fast_2095
L_else_21814 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_21815
	fldi	f2 r4 0
	fbgt	f0 f2 L_else_21816
	addi	r5 r0 0
	jump	L_cont_21817
L_else_21816 : 
	addi	r5 r0 1
L_cont_21817 : 
	bne	r5 r0 L_else_21818
	addi	r4 r0 0
	return
L_else_21818 : 
	addi	r5 r0 4145
	fldi	f2 r4 0
	fldi	f3 r7 3
	fmul	f2 f2 f3
	fsti	f2 r5 0
	addi	r4 r0 1
	return
L_else_21815 : 
	fldi	f5 r4 0
	fbne	f5 f0 L_else_21819
	addi	r5 r0 1
	jump	L_cont_21820
L_else_21819 : 
	addi	r5 r0 0
L_cont_21820 : 
	bne	r5 r0 L_else_21821
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
	fbgt	f3 f0 L_else_21822
	addi	r5 r0 0
	jump	L_cont_21823
L_else_21822 : 
	addi	r5 r0 1
L_cont_21823 : 
	bne	r5 r0 L_else_21824
	addi	r4 r0 0
	return
L_else_21824 : 
	ldi	r5 r6 6
	bne	r5 r0 L_else_21825
	addi	r5 r0 4145
	fldi	f4 r0 38
	fbgt	f3 f4 L_else_21827
	fldi	f4 r0 38
	jump	L_cont_21828
L_else_21827 : 
	fldi	f4 r0 38
	fdiv	f4 f4 f3
L_cont_21828 : 
	fldi	f5 r0 30
	fmul	f6 f3 f4
	fmul	f6 f6 f4
	fsub	f5 f5 f6
	fmul	f4 f4 f5
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	addi	r6 r0 14
	sti	r5 r2 0
	sti	r4 r2 1
	fsti	f2 r2 2
	fsti	f3 r2 4
	add	r4 r0 r6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	addi	r2 r2 7
	call	L_isqrt_1890
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
	jump	L_cont_21826
L_else_21825 : 
	addi	r5 r0 4145
	fldi	f4 r0 38
	fbgt	f3 f4 L_else_21829
	fldi	f4 r0 38
	jump	L_cont_21830
L_else_21829 : 
	fldi	f4 r0 38
	fdiv	f4 f4 f3
L_cont_21830 : 
	fldi	f5 r0 30
	fmul	f6 f3 f4
	fmul	f6 f6 f4
	fsub	f5 f5 f6
	fmul	f4 f4 f5
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	addi	r6 r0 14
	sti	r5 r2 6
	sti	r4 r2 1
	fsti	f2 r2 2
	fsti	f3 r2 4
	add	r4 r0 r6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	addi	r2 r2 8
	call	L_isqrt_1890
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
L_cont_21826 : 
	addi	r4 r0 1
	return
L_else_21821 : 
	addi	r4 r0 0
	return
L_setup_rect_table_2135 : 
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
	fbne	f2 f0 L_else_21831
	addi	r6 r0 1
	jump	L_cont_21832
L_else_21831 : 
	addi	r6 r0 0
L_cont_21832 : 
	bne	r6 r0 L_else_21833
	ldi	r6 r2 0
	ldi	r7 r6 6
	fldi	f2 r5 0
	fbgt	f0 f2 L_else_21835
	addi	r8 r0 0
	jump	L_cont_21836
L_else_21835 : 
	addi	r8 r0 1
L_cont_21836 : 
	xor	r7 r7 r8
	ldi	r8 r6 4
	fldi	f2 r8 0
	bne	r7 r0 L_else_21837
	fsub	f2 f0 f2
	jump	L_cont_21838
L_else_21837 : 
	fadd	f2 f0 f2
L_cont_21838 : 
	fsti	f2 r4 0
	fldi	f2 r0 38
	fldi	f3 r5 0
	fdiv	f2 f2 f3
	fsti	f2 r4 1
	jump	L_cont_21834
L_else_21833 : 
	fldi	f2 r0 27
	fsti	f2 r4 1
L_cont_21834 : 
	fldi	f2 r5 1
	fbne	f2 f0 L_else_21839
	addi	r6 r0 1
	jump	L_cont_21840
L_else_21839 : 
	addi	r6 r0 0
L_cont_21840 : 
	bne	r6 r0 L_else_21841
	ldi	r6 r2 0
	ldi	r7 r6 6
	fldi	f2 r5 1
	fbgt	f0 f2 L_else_21843
	addi	r8 r0 0
	jump	L_cont_21844
L_else_21843 : 
	addi	r8 r0 1
L_cont_21844 : 
	xor	r7 r7 r8
	ldi	r8 r6 4
	fldi	f2 r8 1
	bne	r7 r0 L_else_21845
	fsub	f2 f0 f2
	jump	L_cont_21846
L_else_21845 : 
	fadd	f2 f0 f2
L_cont_21846 : 
	fsti	f2 r4 2
	fldi	f2 r0 38
	fldi	f3 r5 1
	fdiv	f2 f2 f3
	fsti	f2 r4 3
	jump	L_cont_21842
L_else_21841 : 
	fldi	f2 r0 27
	fsti	f2 r4 3
L_cont_21842 : 
	fldi	f2 r5 2
	fbne	f2 f0 L_else_21847
	addi	r6 r0 1
	jump	L_cont_21848
L_else_21847 : 
	addi	r6 r0 0
L_cont_21848 : 
	bne	r6 r0 L_else_21849
	ldi	r6 r2 0
	ldi	r7 r6 6
	fldi	f2 r5 2
	fbgt	f0 f2 L_else_21851
	addi	r8 r0 0
	jump	L_cont_21852
L_else_21851 : 
	addi	r8 r0 1
L_cont_21852 : 
	xor	r7 r7 r8
	ldi	r6 r6 4
	fldi	f2 r6 2
	bne	r7 r0 L_else_21853
	fsub	f2 f0 f2
	jump	L_cont_21854
L_else_21853 : 
	fadd	f2 f0 f2
L_cont_21854 : 
	fsti	f2 r4 4
	fldi	f2 r0 38
	fldi	f3 r5 2
	fdiv	f2 f2 f3
	fsti	f2 r4 5
	jump	L_cont_21850
L_else_21849 : 
	fldi	f2 r0 27
	fsti	f2 r4 5
L_cont_21850 : 
	add	r4 r0 r4
	return
L_setup_surface_table_2138 : 
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
	fbgt	f2 f0 L_else_21855
	addi	r5 r0 0
	jump	L_cont_21856
L_else_21855 : 
	addi	r5 r0 1
L_cont_21856 : 
	bne	r5 r0 L_else_21857
	fldi	f2 r0 27
	fsti	f2 r4 0
	jump	L_cont_21858
L_else_21857 : 
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
L_cont_21858 : 
	add	r4 r0 r4
	return
L_setup_second_table_2141 : 
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
	bne	r7 r0 L_else_21859
	fadd	f2 f0 f5
	jump	L_cont_21860
L_else_21859 : 
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
L_cont_21860 : 
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
	bne	r7 r0 L_else_21861
	fsti	f3 r4 1
	fsti	f4 r4 2
	fsti	f5 r4 3
	jump	L_cont_21862
L_else_21861 : 
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
L_cont_21862 : 
	fbne	f2 f0 L_else_21863
	addi	r5 r0 1
	jump	L_cont_21864
L_else_21863 : 
	addi	r5 r0 0
L_cont_21864 : 
	bne	r5 r0 L_else_21865
	fldi	f3 r0 38
	fdiv	f2 f3 f2
	fsti	f2 r4 4
	jump	L_cont_21866
L_else_21865 : 
L_cont_21866 : 
	add	r4 r0 r4
	return
L_iter_setup_dirvec_constants_2144 : 
	bgt	r0 r5 L_else_21867
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r4 1
	ldi	r8 r4 0
	ldi	r9 r6 1
	addi	r10 r0 1
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r9 r10 L_else_21868
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
	fbne	f2 f0 L_else_21870
	addi	r6 r0 1
	jump	L_cont_21871
L_else_21870 : 
	addi	r6 r0 0
L_cont_21871 : 
	bne	r6 r0 L_else_21872
	ldi	r6 r2 3
	ldi	r7 r6 6
	fldi	f2 r5 0
	fbgt	f0 f2 L_else_21874
	addi	r8 r0 0
	jump	L_cont_21875
L_else_21874 : 
	addi	r8 r0 1
L_cont_21875 : 
	xor	r7 r7 r8
	ldi	r8 r6 4
	fldi	f2 r8 0
	bne	r7 r0 L_else_21876
	fsub	f2 f0 f2
	jump	L_cont_21877
L_else_21876 : 
	fadd	f2 f0 f2
L_cont_21877 : 
	fsti	f2 r4 0
	fldi	f2 r0 38
	fldi	f3 r5 0
	fdiv	f2 f2 f3
	fsti	f2 r4 1
	jump	L_cont_21873
L_else_21872 : 
	fldi	f2 r0 27
	fsti	f2 r4 1
L_cont_21873 : 
	fldi	f2 r5 1
	fbne	f2 f0 L_else_21878
	addi	r6 r0 1
	jump	L_cont_21879
L_else_21878 : 
	addi	r6 r0 0
L_cont_21879 : 
	bne	r6 r0 L_else_21880
	ldi	r6 r2 3
	ldi	r7 r6 6
	fldi	f2 r5 1
	fbgt	f0 f2 L_else_21882
	addi	r8 r0 0
	jump	L_cont_21883
L_else_21882 : 
	addi	r8 r0 1
L_cont_21883 : 
	xor	r7 r7 r8
	ldi	r8 r6 4
	fldi	f2 r8 1
	bne	r7 r0 L_else_21884
	fsub	f2 f0 f2
	jump	L_cont_21885
L_else_21884 : 
	fadd	f2 f0 f2
L_cont_21885 : 
	fsti	f2 r4 2
	fldi	f2 r0 38
	fldi	f3 r5 1
	fdiv	f2 f2 f3
	fsti	f2 r4 3
	jump	L_cont_21881
L_else_21880 : 
	fldi	f2 r0 27
	fsti	f2 r4 3
L_cont_21881 : 
	fldi	f2 r5 2
	fbne	f2 f0 L_else_21886
	addi	r6 r0 1
	jump	L_cont_21887
L_else_21886 : 
	addi	r6 r0 0
L_cont_21887 : 
	bne	r6 r0 L_else_21888
	ldi	r6 r2 3
	ldi	r7 r6 6
	fldi	f2 r5 2
	fbgt	f0 f2 L_else_21890
	addi	r8 r0 0
	jump	L_cont_21891
L_else_21890 : 
	addi	r8 r0 1
L_cont_21891 : 
	xor	r7 r7 r8
	ldi	r6 r6 4
	fldi	f2 r6 2
	bne	r7 r0 L_else_21892
	fsub	f2 f0 f2
	jump	L_cont_21893
L_else_21892 : 
	fadd	f2 f0 f2
L_cont_21893 : 
	fsti	f2 r4 4
	fldi	f2 r0 38
	fldi	f3 r5 2
	fdiv	f2 f2 f3
	fsti	f2 r4 5
	jump	L_cont_21889
L_else_21888 : 
	fldi	f2 r0 27
	fsti	f2 r4 5
L_cont_21889 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21869
L_else_21868 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_21894
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
	fbgt	f2 f0 L_else_21896
	addi	r5 r0 0
	jump	L_cont_21897
L_else_21896 : 
	addi	r5 r0 1
L_cont_21897 : 
	bne	r5 r0 L_else_21898
	fldi	f2 r0 27
	fsti	f2 r4 0
	jump	L_cont_21899
L_else_21898 : 
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
L_cont_21899 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21895
L_else_21894 : 
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
	call	L_quadratic_2072
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
	bne	r7 r0 L_else_21900
	fsti	f3 r6 1
	fsti	f4 r6 2
	fsti	f5 r6 3
	jump	L_cont_21901
L_else_21900 : 
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
L_cont_21901 : 
	fbne	f2 f0 L_else_21902
	addi	r4 r0 1
	jump	L_cont_21903
L_else_21902 : 
	addi	r4 r0 0
L_cont_21903 : 
	bne	r4 r0 L_else_21904
	fldi	f3 r0 38
	fdiv	f2 f3 f2
	fsti	f2 r6 4
	jump	L_cont_21905
L_else_21904 : 
L_cont_21905 : 
	ldi	r4 r2 1
	ldi	r5 r2 2
	add	r5 r5 r4
	sti	r6 r5 0
L_cont_21895 : 
L_cont_21869 : 
	ldi	r4 r2 1
	addi	r4 r4 -1
	bgt	r0 r4 L_else_21906
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r2 0
	ldi	r7 r6 1
	ldi	r8 r6 0
	ldi	r9 r5 1
	addi	r10 r0 1
	bne	r9 r10 L_else_21907
	sti	r4 r2 6
	sti	r7 r2 7
	add	r4 r0 r8
	addi	r2 r2 9
	call	L_setup_rect_table_2135
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21908
L_else_21907 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_21909
	sti	r4 r2 6
	sti	r7 r2 7
	add	r4 r0 r8
	addi	r2 r2 9
	call	L_setup_surface_table_2138
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21910
L_else_21909 : 
	sti	r4 r2 6
	sti	r7 r2 7
	add	r4 r0 r8
	addi	r2 r2 9
	call	L_setup_second_table_2141
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_21910 : 
L_cont_21908 : 
	addi	r5 r5 -1
	ldi	r4 r2 0
	jump	L_iter_setup_dirvec_constants_2144
L_else_21906 : 
	return
L_else_21867 : 
	return
L_setup_startp_constants_2149 : 
	bgt	r0 r5 L_else_21913
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
	bne	r8 r9 L_else_21914
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
	jump	L_cont_21915
L_else_21914 : 
	addi	r9 r0 2
	bgt	r8 r9 L_else_21916
	jump	L_cont_21917
L_else_21916 : 
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
	bne	r9 r0 L_else_21918
	fadd	f2 f0 f5
	jump	L_cont_21919
L_else_21918 : 
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
L_cont_21919 : 
	addi	r6 r0 3
	bne	r8 r6 L_else_21920
	fldi	f3 r0 38
	fsub	f2 f2 f3
	jump	L_cont_21921
L_else_21920 : 
	fadd	f2 f0 f2
L_cont_21921 : 
	fsti	f2 r7 3
L_cont_21917 : 
L_cont_21915 : 
	addi	r5 r5 -1
	jump	L_setup_startp_constants_2149
L_else_21913 : 
	return
L_is_outside_2169 : 
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
	bne	r5 r6 L_else_21923
	fbgt	f0 f2 L_else_21924
	fadd	f2 f0 f2
	jump	L_cont_21925
L_else_21924 : 
	fsub	f2 f0 f2
L_cont_21925 : 
	ldi	r5 r4 4
	fldi	f5 r5 0
	fbgt	f5 f2 L_else_21926
	addi	r5 r0 0
	jump	L_cont_21927
L_else_21926 : 
	addi	r5 r0 1
L_cont_21927 : 
	bne	r5 r0 L_else_21928
	addi	r5 r0 0
	jump	L_cont_21929
L_else_21928 : 
	fbgt	f0 f3 L_else_21930
	fadd	f2 f0 f3
	jump	L_cont_21931
L_else_21930 : 
	fsub	f2 f0 f3
L_cont_21931 : 
	ldi	r5 r4 4
	fldi	f3 r5 1
	fbgt	f3 f2 L_else_21932
	addi	r5 r0 0
	jump	L_cont_21933
L_else_21932 : 
	addi	r5 r0 1
L_cont_21933 : 
	bne	r5 r0 L_else_21934
	addi	r5 r0 0
	jump	L_cont_21935
L_else_21934 : 
	fbgt	f0 f4 L_else_21936
	fadd	f2 f0 f4
	jump	L_cont_21937
L_else_21936 : 
	fsub	f2 f0 f4
L_cont_21937 : 
	ldi	r5 r4 4
	fldi	f3 r5 2
	fbgt	f3 f2 L_else_21938
	addi	r5 r0 0
	jump	L_cont_21939
L_else_21938 : 
	addi	r5 r0 1
L_cont_21939 : 
L_cont_21935 : 
L_cont_21929 : 
	bne	r5 r0 L_else_21940
	addi	r5 r0 1
	ldi	r4 r4 6
	sub	r4 r5 r4
	return
L_else_21940 : 
	ldi	r4 r4 6
	add	r4 r0 r4
	return
L_else_21923 : 
	addi	r6 r0 2
	bne	r5 r6 L_else_21941
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
	fbgt	f0 f2 L_else_21942
	addi	r6 r0 0
	jump	L_cont_21943
L_else_21942 : 
	addi	r6 r0 1
L_cont_21943 : 
	xor	r4 r4 r6
	sub	r4 r5 r4
	return
L_else_21941 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	L_quadratic_2072
	subi	r2 r2 2
	ldi	r4 r2 0
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_21944
	fldi	f3 r0 38
	fsub	f2 f2 f3
	jump	L_cont_21945
L_else_21944 : 
	fadd	f2 f0 f2
L_cont_21945 : 
	addi	r5 r0 1
	ldi	r4 r4 6
	fbgt	f0 f2 L_else_21946
	addi	r6 r0 0
	jump	L_cont_21947
L_else_21946 : 
	addi	r6 r0 1
L_cont_21947 : 
	xor	r4 r4 r6
	sub	r4 r5 r4
	return
L_check_all_inside_2174 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_21948
	addi	r4 r0 1
	return
L_else_21948 : 
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
	bne	r7 r8 L_else_21949
	fbgt	f0 f5 L_else_21951
	fadd	f5 f0 f5
	jump	L_cont_21952
L_else_21951 : 
	fsub	f5 f0 f5
L_cont_21952 : 
	ldi	r7 r6 4
	fldi	f8 r7 0
	fbgt	f8 f5 L_else_21953
	addi	r7 r0 0
	jump	L_cont_21954
L_else_21953 : 
	addi	r7 r0 1
L_cont_21954 : 
	bne	r7 r0 L_else_21955
	addi	r7 r0 0
	jump	L_cont_21956
L_else_21955 : 
	fbgt	f0 f6 L_else_21957
	fadd	f5 f0 f6
	jump	L_cont_21958
L_else_21957 : 
	fsub	f5 f0 f6
L_cont_21958 : 
	ldi	r7 r6 4
	fldi	f6 r7 1
	fbgt	f6 f5 L_else_21959
	addi	r7 r0 0
	jump	L_cont_21960
L_else_21959 : 
	addi	r7 r0 1
L_cont_21960 : 
	bne	r7 r0 L_else_21961
	addi	r7 r0 0
	jump	L_cont_21962
L_else_21961 : 
	fbgt	f0 f7 L_else_21963
	fadd	f5 f0 f7
	jump	L_cont_21964
L_else_21963 : 
	fsub	f5 f0 f7
L_cont_21964 : 
	ldi	r7 r6 4
	fldi	f6 r7 2
	fbgt	f6 f5 L_else_21965
	addi	r7 r0 0
	jump	L_cont_21966
L_else_21965 : 
	addi	r7 r0 1
L_cont_21966 : 
L_cont_21962 : 
L_cont_21956 : 
	bne	r7 r0 L_else_21967
	addi	r7 r0 1
	ldi	r6 r6 6
	sub	r6 r7 r6
	jump	L_cont_21968
L_else_21967 : 
	ldi	r6 r6 6
	add	r6 r0 r6
L_cont_21968 : 
	jump	L_cont_21950
L_else_21949 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_21969
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
	fbgt	f0 f5 L_else_21971
	addi	r8 r0 0
	jump	L_cont_21972
L_else_21971 : 
	addi	r8 r0 1
L_cont_21972 : 
	xor	r6 r6 r8
	sub	r6 r7 r6
	jump	L_cont_21970
L_else_21969 : 
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
	bne	r7 r0 L_else_21973
	fadd	f5 f0 f8
	jump	L_cont_21974
L_else_21973 : 
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
L_cont_21974 : 
	ldi	r7 r6 1
	addi	r8 r0 3
	bne	r7 r8 L_else_21975
	fldi	f6 r0 38
	fsub	f5 f5 f6
	jump	L_cont_21976
L_else_21975 : 
	fadd	f5 f0 f5
L_cont_21976 : 
	addi	r7 r0 1
	ldi	r6 r6 6
	fbgt	f0 f5 L_else_21977
	addi	r8 r0 0
	jump	L_cont_21978
L_else_21977 : 
	addi	r8 r0 1
L_cont_21978 : 
	xor	r6 r6 r8
	sub	r6 r7 r6
L_cont_21970 : 
L_cont_21950 : 
	bne	r6 r0 L_else_21979
	addi	r4 r4 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_21980
	addi	r4 r0 1
	return
L_else_21980 : 
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
	call	L_is_outside_2169
	subi	r2 r2 9
	bne	r4 r0 L_else_21981
	ldi	r4 r2 7
	addi	r4 r4 1
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r5 r2 6
	jump	L_check_all_inside_2174
L_else_21981 : 
	addi	r4 r0 0
	return
L_else_21979 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2180 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_21982
	addi	r4 r0 0
	return
L_else_21982 : 
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
	bne	r10 r11 L_else_21983
	ldi	r7 r7 0
	add	r6 r0 r8
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 4
	call	L_solver_rect_fast_2095
	subi	r2 r2 4
	jump	L_cont_21984
L_else_21983 : 
	addi	r7 r0 2
	bne	r10 r7 L_else_21985
	fldi	f5 r8 0
	fbgt	f0 f5 L_else_21987
	addi	r7 r0 0
	jump	L_cont_21988
L_else_21987 : 
	addi	r7 r0 1
L_cont_21988 : 
	bne	r7 r0 L_else_21989
	addi	r4 r0 0
	jump	L_cont_21990
L_else_21989 : 
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
L_cont_21990 : 
	jump	L_cont_21986
L_else_21985 : 
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 4
	call	L_solver_second_fast_2108
	subi	r2 r2 4
L_cont_21986 : 
L_cont_21984 : 
	addi	r5 r0 4145
	fldi	f2 r5 0
	bne	r4 r0 L_else_21991
	addi	r4 r0 0
	jump	L_cont_21992
L_else_21991 : 
	fldi	f3 r0 25
	fbgt	f3 f2 L_else_21993
	addi	r4 r0 0
	jump	L_cont_21994
L_else_21993 : 
	addi	r4 r0 1
L_cont_21994 : 
L_cont_21992 : 
	bne	r4 r0 L_else_21995
	addi	r4 r0 5042
	ldi	r5 r2 2
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_21996
	addi	r4 r0 0
	return
L_else_21996 : 
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2180
L_else_21995 : 
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
	bne	r4 r6 L_else_21997
	addi	r4 r0 1
	jump	L_cont_21998
L_else_21997 : 
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
	call	L_is_outside_2169
	subi	r2 r2 11
	bne	r4 r0 L_else_22000
	addi	r4 r0 1
	fldi	f2 r2 8
	fldi	f3 r2 6
	fldi	f4 r2 4
	ldi	r5 r2 0
	addi	r2 r2 11
	call	L_check_all_inside_2174
	subi	r2 r2 11
	jump	L_cont_22001
L_else_22000 : 
	addi	r4 r0 0
L_cont_22001 : 
L_cont_21998 : 
	bne	r4 r0 L_else_22002
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2180
L_else_22002 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2183 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22003
	addi	r4 r0 0
	return
L_else_22003 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r5 r2 0
	sti	r4 r2 1
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 3
	call	L_shadow_check_and_group_2180
	subi	r2 r2 3
	bne	r4 r0 L_else_22004
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22005
	addi	r4 r0 0
	return
L_else_22005 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 2
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 4
	call	L_shadow_check_and_group_2180
	subi	r2 r2 4
	bne	r4 r0 L_else_22006
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22007
	addi	r4 r0 0
	return
L_else_22007 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 3
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 5
	call	L_shadow_check_and_group_2180
	subi	r2 r2 5
	bne	r4 r0 L_else_22008
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22009
	addi	r4 r0 0
	return
L_else_22009 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 4
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_shadow_check_and_group_2180
	subi	r2 r2 6
	bne	r4 r0 L_else_22010
	ldi	r4 r2 4
	addi	r4 r4 1
	ldi	r5 r2 0
	jump	L_shadow_check_one_or_group_2183
L_else_22010 : 
	addi	r4 r0 1
	return
L_else_22008 : 
	addi	r4 r0 1
	return
L_else_22006 : 
	addi	r4 r0 1
	return
L_else_22004 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2186 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r7 r6 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22011
	addi	r4 r0 0
	return
L_else_22011 : 
	addi	r8 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r7 r8 L_else_22012
	addi	r4 r0 1
	jump	L_cont_22013
L_else_22012 : 
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
	bne	r9 r11 L_else_22014
	ldi	r8 r8 0
	add	r6 r0 r7
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 4
	call	L_solver_rect_fast_2095
	subi	r2 r2 4
	jump	L_cont_22015
L_else_22014 : 
	addi	r8 r0 2
	bne	r9 r8 L_else_22016
	fldi	f5 r7 0
	fbgt	f0 f5 L_else_22018
	addi	r8 r0 0
	jump	L_cont_22019
L_else_22018 : 
	addi	r8 r0 1
L_cont_22019 : 
	bne	r8 r0 L_else_22020
	addi	r4 r0 0
	jump	L_cont_22021
L_else_22020 : 
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
L_cont_22021 : 
	jump	L_cont_22017
L_else_22016 : 
	add	r5 r0 r7
	add	r4 r0 r10
	addi	r2 r2 4
	call	L_solver_second_fast_2108
	subi	r2 r2 4
L_cont_22017 : 
L_cont_22015 : 
	bne	r4 r0 L_else_22022
	addi	r4 r0 0
	jump	L_cont_22023
L_else_22022 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f3 f2 L_else_22024
	addi	r4 r0 0
	jump	L_cont_22025
L_else_22024 : 
	addi	r4 r0 1
L_cont_22025 : 
	bne	r4 r0 L_else_22026
	addi	r4 r0 0
	jump	L_cont_22027
L_else_22026 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22028
	addi	r4 r0 0
	jump	L_cont_22029
L_else_22028 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2180
	subi	r2 r2 4
	bne	r4 r0 L_else_22030
	addi	r4 r0 2
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22032
	addi	r4 r0 0
	jump	L_cont_22033
L_else_22032 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2180
	subi	r2 r2 4
	bne	r4 r0 L_else_22034
	addi	r4 r0 3
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22036
	addi	r4 r0 0
	jump	L_cont_22037
L_else_22036 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2180
	subi	r2 r2 4
	bne	r4 r0 L_else_22038
	addi	r4 r0 4
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2183
	subi	r2 r2 4
	jump	L_cont_22039
L_else_22038 : 
	addi	r4 r0 1
L_cont_22039 : 
L_cont_22037 : 
	jump	L_cont_22035
L_else_22034 : 
	addi	r4 r0 1
L_cont_22035 : 
L_cont_22033 : 
	jump	L_cont_22031
L_else_22030 : 
	addi	r4 r0 1
L_cont_22031 : 
L_cont_22029 : 
	bne	r4 r0 L_else_22040
	addi	r4 r0 0
	jump	L_cont_22041
L_else_22040 : 
	addi	r4 r0 1
L_cont_22041 : 
L_cont_22027 : 
L_cont_22023 : 
L_cont_22013 : 
	bne	r4 r0 L_else_22042
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2186
L_else_22042 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22043
	addi	r4 r0 0
	jump	L_cont_22044
L_else_22043 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2180
	subi	r2 r2 4
	bne	r4 r0 L_else_22045
	addi	r4 r0 2
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22047
	addi	r4 r0 0
	jump	L_cont_22048
L_else_22047 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2180
	subi	r2 r2 4
	bne	r4 r0 L_else_22049
	addi	r4 r0 3
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22051
	addi	r4 r0 0
	jump	L_cont_22052
L_else_22051 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2180
	subi	r2 r2 4
	bne	r4 r0 L_else_22053
	addi	r4 r0 4
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2183
	subi	r2 r2 4
	jump	L_cont_22054
L_else_22053 : 
	addi	r4 r0 1
L_cont_22054 : 
L_cont_22052 : 
	jump	L_cont_22050
L_else_22049 : 
	addi	r4 r0 1
L_cont_22050 : 
L_cont_22048 : 
	jump	L_cont_22046
L_else_22045 : 
	addi	r4 r0 1
L_cont_22046 : 
L_cont_22044 : 
	bne	r4 r0 L_else_22055
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2186
L_else_22055 : 
	addi	r4 r0 1
	return
L_solve_each_element_2189 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22056
	return
L_else_22056 : 
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
	bne	r8 r10 L_else_22058
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_rect_2060
	subi	r2 r2 5
	jump	L_cont_22059
L_else_22058 : 
	addi	r10 r0 2
	bne	r8 r10 L_else_22060
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_surface_2066
	subi	r2 r2 5
	jump	L_cont_22061
L_else_22060 : 
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_second_2085
	subi	r2 r2 5
L_cont_22061 : 
L_cont_22059 : 
	bne	r4 r0 L_else_22062
	addi	r4 r0 5042
	ldi	r5 r2 3
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22063
	return
L_else_22063 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2189
L_else_22062 : 
	addi	r5 r0 4145
	fldi	f2 r5 0
	fbgt	f2 f0 L_else_22065
	addi	r5 r0 0
	jump	L_cont_22066
L_else_22065 : 
	addi	r5 r0 1
L_cont_22066 : 
	bne	r5 r0 L_else_22067
	jump	L_cont_22068
L_else_22067 : 
	addi	r5 r0 4154
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_22069
	addi	r5 r0 0
	jump	L_cont_22070
L_else_22069 : 
	addi	r5 r0 1
L_cont_22070 : 
	bne	r5 r0 L_else_22071
	jump	L_cont_22072
L_else_22071 : 
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
	bne	r5 r8 L_else_22074
	addi	r4 r0 1
	jump	L_cont_22075
L_else_22074 : 
	addi	r8 r0 5042
	add	r5 r8 r5
	ldi	r5 r5 0
	add	r4 r0 r5
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 15
	call	L_is_outside_2169
	subi	r2 r2 15
	bne	r4 r0 L_else_22076
	addi	r4 r0 1
	fldi	f2 r2 10
	fldi	f3 r2 8
	fldi	f4 r2 6
	ldi	r5 r2 1
	addi	r2 r2 15
	call	L_check_all_inside_2174
	subi	r2 r2 15
	jump	L_cont_22077
L_else_22076 : 
	addi	r4 r0 0
L_cont_22077 : 
L_cont_22075 : 
	bne	r4 r0 L_else_22078
	jump	L_cont_22079
L_else_22078 : 
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
L_cont_22079 : 
L_cont_22072 : 
L_cont_22068 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2189
L_solve_one_or_network_2193 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22080
	return
L_else_22080 : 
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
	call	L_solve_each_element_2189
	subi	r2 r2 4
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22082
	return
L_else_22082 : 
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
	call	L_solve_each_element_2189
	subi	r2 r2 5
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22084
	return
L_else_22084 : 
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
	call	L_solve_each_element_2189
	subi	r2 r2 6
	ldi	r4 r2 4
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22086
	return
L_else_22086 : 
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
	call	L_solve_each_element_2189
	subi	r2 r2 7
	ldi	r4 r2 5
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_one_or_network_2193
L_trace_or_matrix_2197 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	ldi	r8 r7 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_22088
	return
L_else_22088 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_22090
	addi	r8 r0 1
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_22092
	jump	L_cont_22093
L_else_22092 : 
	addi	r9 r0 4155
	add	r8 r9 r8
	ldi	r8 r8 0
	addi	r9 r0 0
	sti	r7 r2 3
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solve_each_element_2189
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22094
	jump	L_cont_22095
L_else_22094 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2189
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22096
	jump	L_cont_22097
L_else_22096 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2189
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_2193
	subi	r2 r2 5
L_cont_22097 : 
L_cont_22095 : 
L_cont_22093 : 
	jump	L_cont_22091
L_else_22090 : 
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
	bne	r9 r10 L_else_22098
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_rect_2060
	subi	r2 r2 5
	jump	L_cont_22099
L_else_22098 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_22100
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_surface_2066
	subi	r2 r2 5
	jump	L_cont_22101
L_else_22100 : 
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_second_2085
	subi	r2 r2 5
L_cont_22101 : 
L_cont_22099 : 
	bne	r4 r0 L_else_22102
	jump	L_cont_22103
L_else_22102 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22104
	addi	r4 r0 0
	jump	L_cont_22105
L_else_22104 : 
	addi	r4 r0 1
L_cont_22105 : 
	bne	r4 r0 L_else_22106
	jump	L_cont_22107
L_else_22106 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22108
	jump	L_cont_22109
L_else_22108 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2189
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22110
	jump	L_cont_22111
L_else_22110 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2189
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22112
	jump	L_cont_22113
L_else_22112 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2189
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_2193
	subi	r2 r2 5
L_cont_22113 : 
L_cont_22111 : 
L_cont_22109 : 
L_cont_22107 : 
L_cont_22103 : 
L_cont_22091 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r7 r6 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22114
	return
L_else_22114 : 
	addi	r8 r0 99
	sti	r4 r2 4
	bne	r7 r8 L_else_22116
	addi	r7 r0 1
	add	r7 r6 r7
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22118
	jump	L_cont_22119
L_else_22118 : 
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
	call	L_solve_each_element_2189
	subi	r2 r2 7
	addi	r4 r0 2
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22120
	jump	L_cont_22121
L_else_22120 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 7
	call	L_solve_each_element_2189
	subi	r2 r2 7
	addi	r4 r0 3
	ldi	r5 r2 5
	ldi	r6 r2 0
	addi	r2 r2 7
	call	L_solve_one_or_network_2193
	subi	r2 r2 7
L_cont_22121 : 
L_cont_22119 : 
	jump	L_cont_22117
L_else_22116 : 
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
	bne	r8 r9 L_else_22122
	addi	r8 r0 0
	addi	r9 r0 1
	addi	r10 r0 2
	ldi	r11 r2 0
	add	r12 r11 r8
	fldi	f5 r12 0
	fbne	f5 f0 L_else_22124
	addi	r12 r0 1
	jump	L_cont_22125
L_else_22124 : 
	addi	r12 r0 0
L_cont_22125 : 
	bne	r12 r0 L_else_22126
	ldi	r12 r7 4
	ldi	r13 r7 6
	add	r14 r11 r8
	fldi	f5 r14 0
	fbgt	f0 f5 L_else_22128
	addi	r14 r0 0
	jump	L_cont_22129
L_else_22128 : 
	addi	r14 r0 1
L_cont_22129 : 
	xor	r13 r13 r14
	add	r14 r12 r8
	fldi	f5 r14 0
	bne	r13 r0 L_else_22130
	fsub	f5 f0 f5
	jump	L_cont_22131
L_else_22130 : 
	fadd	f5 f0 f5
L_cont_22131 : 
	fsub	f5 f5 f2
	add	r8 r11 r8
	fldi	f6 r8 0
	fdiv	f5 f5 f6
	add	r8 r11 r9
	fldi	f6 r8 0
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fbgt	f0 f6 L_else_22132
	fadd	f6 f0 f6
	jump	L_cont_22133
L_else_22132 : 
	fsub	f6 f0 f6
L_cont_22133 : 
	add	r8 r12 r9
	fldi	f7 r8 0
	fbgt	f7 f6 L_else_22134
	addi	r8 r0 0
	jump	L_cont_22135
L_else_22134 : 
	addi	r8 r0 1
L_cont_22135 : 
	bne	r8 r0 L_else_22136
	addi	r8 r0 0
	jump	L_cont_22137
L_else_22136 : 
	add	r8 r11 r10
	fldi	f6 r8 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_22138
	fadd	f6 f0 f6
	jump	L_cont_22139
L_else_22138 : 
	fsub	f6 f0 f6
L_cont_22139 : 
	add	r8 r12 r10
	fldi	f7 r8 0
	fbgt	f7 f6 L_else_22140
	addi	r8 r0 0
	jump	L_cont_22141
L_else_22140 : 
	addi	r8 r0 1
L_cont_22141 : 
	bne	r8 r0 L_else_22142
	addi	r8 r0 0
	jump	L_cont_22143
L_else_22142 : 
	addi	r8 r0 4145
	fsti	f5 r8 0
	addi	r8 r0 1
L_cont_22143 : 
L_cont_22137 : 
	jump	L_cont_22127
L_else_22126 : 
	addi	r8 r0 0
L_cont_22127 : 
	bne	r8 r0 L_else_22144
	addi	r8 r0 1
	addi	r9 r0 2
	addi	r10 r0 0
	add	r12 r11 r8
	fldi	f5 r12 0
	fbne	f5 f0 L_else_22146
	addi	r12 r0 1
	jump	L_cont_22147
L_else_22146 : 
	addi	r12 r0 0
L_cont_22147 : 
	bne	r12 r0 L_else_22148
	ldi	r12 r7 4
	ldi	r13 r7 6
	add	r14 r11 r8
	fldi	f5 r14 0
	fbgt	f0 f5 L_else_22150
	addi	r14 r0 0
	jump	L_cont_22151
L_else_22150 : 
	addi	r14 r0 1
L_cont_22151 : 
	xor	r13 r13 r14
	add	r14 r12 r8
	fldi	f5 r14 0
	bne	r13 r0 L_else_22152
	fsub	f5 f0 f5
	jump	L_cont_22153
L_else_22152 : 
	fadd	f5 f0 f5
L_cont_22153 : 
	fsub	f5 f5 f3
	add	r8 r11 r8
	fldi	f6 r8 0
	fdiv	f5 f5 f6
	add	r8 r11 r9
	fldi	f6 r8 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fbgt	f0 f6 L_else_22154
	fadd	f6 f0 f6
	jump	L_cont_22155
L_else_22154 : 
	fsub	f6 f0 f6
L_cont_22155 : 
	add	r8 r12 r9
	fldi	f7 r8 0
	fbgt	f7 f6 L_else_22156
	addi	r8 r0 0
	jump	L_cont_22157
L_else_22156 : 
	addi	r8 r0 1
L_cont_22157 : 
	bne	r8 r0 L_else_22158
	addi	r8 r0 0
	jump	L_cont_22159
L_else_22158 : 
	add	r8 r11 r10
	fldi	f6 r8 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fbgt	f0 f6 L_else_22160
	fadd	f6 f0 f6
	jump	L_cont_22161
L_else_22160 : 
	fsub	f6 f0 f6
L_cont_22161 : 
	add	r8 r12 r10
	fldi	f7 r8 0
	fbgt	f7 f6 L_else_22162
	addi	r8 r0 0
	jump	L_cont_22163
L_else_22162 : 
	addi	r8 r0 1
L_cont_22163 : 
	bne	r8 r0 L_else_22164
	addi	r8 r0 0
	jump	L_cont_22165
L_else_22164 : 
	addi	r8 r0 4145
	fsti	f5 r8 0
	addi	r8 r0 1
L_cont_22165 : 
L_cont_22159 : 
	jump	L_cont_22149
L_else_22148 : 
	addi	r8 r0 0
L_cont_22149 : 
	bne	r8 r0 L_else_22166
	addi	r8 r0 2
	addi	r9 r0 0
	addi	r10 r0 1
	add	r12 r11 r8
	fldi	f5 r12 0
	fbne	f5 f0 L_else_22168
	addi	r12 r0 1
	jump	L_cont_22169
L_else_22168 : 
	addi	r12 r0 0
L_cont_22169 : 
	bne	r12 r0 L_else_22170
	ldi	r12 r7 4
	ldi	r7 r7 6
	add	r13 r11 r8
	fldi	f5 r13 0
	fbgt	f0 f5 L_else_22172
	addi	r13 r0 0
	jump	L_cont_22173
L_else_22172 : 
	addi	r13 r0 1
L_cont_22173 : 
	xor	r7 r7 r13
	add	r13 r12 r8
	fldi	f5 r13 0
	bne	r7 r0 L_else_22174
	fsub	f5 f0 f5
	jump	L_cont_22175
L_else_22174 : 
	fadd	f5 f0 f5
L_cont_22175 : 
	fsub	f4 f5 f4
	add	r7 r11 r8
	fldi	f5 r7 0
	fdiv	f4 f4 f5
	add	r7 r11 r9
	fldi	f5 r7 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fbgt	f0 f2 L_else_22176
	fadd	f2 f0 f2
	jump	L_cont_22177
L_else_22176 : 
	fsub	f2 f0 f2
L_cont_22177 : 
	add	r7 r12 r9
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_22178
	addi	r7 r0 0
	jump	L_cont_22179
L_else_22178 : 
	addi	r7 r0 1
L_cont_22179 : 
	bne	r7 r0 L_else_22180
	addi	r7 r0 0
	jump	L_cont_22181
L_else_22180 : 
	add	r7 r11 r10
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_22182
	fadd	f2 f0 f2
	jump	L_cont_22183
L_else_22182 : 
	fsub	f2 f0 f2
L_cont_22183 : 
	add	r7 r12 r10
	fldi	f3 r7 0
	fbgt	f3 f2 L_else_22184
	addi	r7 r0 0
	jump	L_cont_22185
L_else_22184 : 
	addi	r7 r0 1
L_cont_22185 : 
	bne	r7 r0 L_else_22186
	addi	r7 r0 0
	jump	L_cont_22187
L_else_22186 : 
	addi	r7 r0 4145
	fsti	f4 r7 0
	addi	r7 r0 1
L_cont_22187 : 
L_cont_22181 : 
	jump	L_cont_22171
L_else_22170 : 
	addi	r7 r0 0
L_cont_22171 : 
	bne	r7 r0 L_else_22188
	addi	r4 r0 0
	jump	L_cont_22189
L_else_22188 : 
	addi	r4 r0 3
L_cont_22189 : 
	jump	L_cont_22167
L_else_22166 : 
	addi	r4 r0 2
L_cont_22167 : 
	jump	L_cont_22145
L_else_22144 : 
	addi	r4 r0 1
L_cont_22145 : 
	jump	L_cont_22123
L_else_22122 : 
	addi	r9 r0 2
	bne	r8 r9 L_else_22190
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
	fbgt	f5 f0 L_else_22192
	addi	r9 r0 0
	jump	L_cont_22193
L_else_22192 : 
	addi	r9 r0 1
L_cont_22193 : 
	bne	r9 r0 L_else_22194
	addi	r4 r0 0
	jump	L_cont_22195
L_else_22194 : 
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
L_cont_22195 : 
	jump	L_cont_22191
L_else_22190 : 
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
	call	L_quadratic_2072
	subi	r2 r2 15
	fbne	f2 f0 L_else_22197
	addi	r4 r0 1
	jump	L_cont_22198
L_else_22197 : 
	addi	r4 r0 0
L_cont_22198 : 
	bne	r4 r0 L_else_22199
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
	bne	r6 r0 L_else_22201
	fadd	f3 f0 f7
	jump	L_cont_22202
L_else_22201 : 
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
L_cont_22202 : 
	fsti	f2 r2 14
	fsti	f3 r2 16
	add	r4 r0 r5
	fadd	f4 f0 f9
	fadd	f3 f0 f8
	fadd	f2 f0 f6
	addi	r2 r2 19
	call	L_quadratic_2072
	subi	r2 r2 19
	ldi	r4 r2 10
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_22203
	fldi	f3 r0 38
	fsub	f2 f2 f3
	jump	L_cont_22204
L_else_22203 : 
	fadd	f2 f0 f2
L_cont_22204 : 
	fldi	f3 r2 16
	fmul	f4 f3 f3
	fldi	f5 r2 14
	fmul	f2 f5 f2
	fsub	f2 f4 f2
	fbgt	f2 f0 L_else_22205
	addi	r5 r0 0
	jump	L_cont_22206
L_else_22205 : 
	addi	r5 r0 1
L_cont_22206 : 
	bne	r5 r0 L_else_22207
	addi	r4 r0 0
	jump	L_cont_22208
L_else_22207 : 
	addi	r2 r2 19
	call	L_sqrt_1894
	subi	r2 r2 19
	ldi	r4 r2 10
	ldi	r4 r4 6
	bne	r4 r0 L_else_22209
	fsub	f2 f0 f2
	jump	L_cont_22210
L_else_22209 : 
	fadd	f2 f0 f2
L_cont_22210 : 
	addi	r4 r0 4145
	fldi	f3 r2 16
	fsub	f2 f2 f3
	fldi	f3 r2 14
	fdiv	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 1
L_cont_22208 : 
	jump	L_cont_22200
L_else_22199 : 
	addi	r4 r0 0
L_cont_22200 : 
L_cont_22191 : 
L_cont_22123 : 
	bne	r4 r0 L_else_22211
	jump	L_cont_22212
L_else_22211 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22213
	addi	r4 r0 0
	jump	L_cont_22214
L_else_22213 : 
	addi	r4 r0 1
L_cont_22214 : 
	bne	r4 r0 L_else_22215
	jump	L_cont_22216
L_else_22215 : 
	addi	r4 r0 1
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
	addi	r2 r2 19
	call	L_solve_each_element_2189
	subi	r2 r2 19
	addi	r4 r0 2
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22219
	jump	L_cont_22220
L_else_22219 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 19
	call	L_solve_each_element_2189
	subi	r2 r2 19
	addi	r4 r0 3
	ldi	r5 r2 5
	ldi	r6 r2 0
	addi	r2 r2 19
	call	L_solve_one_or_network_2193
	subi	r2 r2 19
L_cont_22220 : 
L_cont_22218 : 
L_cont_22216 : 
L_cont_22212 : 
L_cont_22117 : 
	ldi	r4 r2 4
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_2197
L_solve_each_element_fast_2203 : 
	ldi	r7 r6 0
	add	r8 r5 r4
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_22221
	return
L_else_22221 : 
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
	bne	r12 r13 L_else_22223
	ldi	r10 r6 0
	add	r6 r0 r11
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_solver_rect_fast_2095
	subi	r2 r2 6
	jump	L_cont_22224
L_else_22223 : 
	addi	r13 r0 2
	bne	r12 r13 L_else_22225
	fldi	f2 r11 0
	fbgt	f0 f2 L_else_22227
	addi	r9 r0 0
	jump	L_cont_22228
L_else_22227 : 
	addi	r9 r0 1
L_cont_22228 : 
	bne	r9 r0 L_else_22229
	addi	r4 r0 0
	jump	L_cont_22230
L_else_22229 : 
	addi	r9 r0 4145
	fldi	f2 r11 0
	fldi	f3 r10 3
	fmul	f2 f2 f3
	fsti	f2 r9 0
	addi	r4 r0 1
L_cont_22230 : 
	jump	L_cont_22226
L_else_22225 : 
	add	r6 r0 r10
	add	r5 r0 r11
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_solver_second_fast2_2125
	subi	r2 r2 6
L_cont_22226 : 
L_cont_22224 : 
	bne	r4 r0 L_else_22231
	addi	r4 r0 5042
	ldi	r5 r2 4
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22232
	return
L_else_22232 : 
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 2
	ldi	r6 r2 1
	jump	L_solve_each_element_fast_2203
L_else_22231 : 
	addi	r5 r0 4145
	fldi	f2 r5 0
	fbgt	f2 f0 L_else_22234
	addi	r5 r0 0
	jump	L_cont_22235
L_else_22234 : 
	addi	r5 r0 1
L_cont_22235 : 
	bne	r5 r0 L_else_22236
	jump	L_cont_22237
L_else_22236 : 
	addi	r5 r0 4154
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_22238
	addi	r5 r0 0
	jump	L_cont_22239
L_else_22238 : 
	addi	r5 r0 1
L_cont_22239 : 
	bne	r5 r0 L_else_22240
	jump	L_cont_22241
L_else_22240 : 
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
	bne	r5 r7 L_else_22242
	addi	r4 r0 1
	jump	L_cont_22243
L_else_22242 : 
	addi	r7 r0 5042
	add	r5 r7 r5
	ldi	r5 r5 0
	add	r4 r0 r5
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 15
	call	L_is_outside_2169
	subi	r2 r2 15
	bne	r4 r0 L_else_22244
	addi	r4 r0 1
	fldi	f2 r2 10
	fldi	f3 r2 8
	fldi	f4 r2 6
	ldi	r5 r2 2
	addi	r2 r2 15
	call	L_check_all_inside_2174
	subi	r2 r2 15
	jump	L_cont_22245
L_else_22244 : 
	addi	r4 r0 0
L_cont_22245 : 
L_cont_22243 : 
	bne	r4 r0 L_else_22246
	jump	L_cont_22247
L_else_22246 : 
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
L_cont_22247 : 
L_cont_22241 : 
L_cont_22237 : 
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 2
	ldi	r6 r2 1
	jump	L_solve_each_element_fast_2203
L_solve_one_or_network_fast_2207 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22248
	return
L_else_22248 : 
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
	call	L_solve_each_element_fast_2203
	subi	r2 r2 4
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22250
	return
L_else_22250 : 
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
	call	L_solve_each_element_fast_2203
	subi	r2 r2 5
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22252
	return
L_else_22252 : 
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
	call	L_solve_each_element_fast_2203
	subi	r2 r2 6
	ldi	r4 r2 4
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_22254
	return
L_else_22254 : 
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
	call	L_solve_each_element_fast_2203
	subi	r2 r2 7
	ldi	r4 r2 5
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_one_or_network_fast_2207
L_trace_or_matrix_fast_2211 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	ldi	r8 r7 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_22256
	return
L_else_22256 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_22258
	addi	r8 r0 1
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_22260
	jump	L_cont_22261
L_else_22260 : 
	addi	r9 r0 4155
	add	r8 r9 r8
	ldi	r8 r8 0
	addi	r9 r0 0
	sti	r7 r2 3
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solve_each_element_fast_2203
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22262
	jump	L_cont_22263
L_else_22262 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2203
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22264
	jump	L_cont_22265
L_else_22264 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2203
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_fast_2207
	subi	r2 r2 5
L_cont_22265 : 
L_cont_22263 : 
L_cont_22261 : 
	jump	L_cont_22259
L_else_22258 : 
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
	bne	r11 r12 L_else_22266
	ldi	r10 r6 0
	add	r6 r0 r8
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_rect_fast_2095
	subi	r2 r2 5
	jump	L_cont_22267
L_else_22266 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_22268
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_22270
	addi	r9 r0 0
	jump	L_cont_22271
L_else_22270 : 
	addi	r9 r0 1
L_cont_22271 : 
	bne	r9 r0 L_else_22272
	addi	r4 r0 0
	jump	L_cont_22273
L_else_22272 : 
	addi	r9 r0 4145
	fldi	f2 r8 0
	fldi	f3 r10 3
	fmul	f2 f2 f3
	fsti	f2 r9 0
	addi	r4 r0 1
L_cont_22273 : 
	jump	L_cont_22269
L_else_22268 : 
	add	r6 r0 r10
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_second_fast2_2125
	subi	r2 r2 5
L_cont_22269 : 
L_cont_22267 : 
	bne	r4 r0 L_else_22274
	jump	L_cont_22275
L_else_22274 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22276
	addi	r4 r0 0
	jump	L_cont_22277
L_else_22276 : 
	addi	r4 r0 1
L_cont_22277 : 
	bne	r4 r0 L_else_22278
	jump	L_cont_22279
L_else_22278 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22280
	jump	L_cont_22281
L_else_22280 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2203
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22282
	jump	L_cont_22283
L_else_22282 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2203
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22284
	jump	L_cont_22285
L_else_22284 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2203
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_fast_2207
	subi	r2 r2 5
L_cont_22285 : 
L_cont_22283 : 
L_cont_22281 : 
L_cont_22279 : 
L_cont_22275 : 
L_cont_22259 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r7 r6 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22286
	return
L_else_22286 : 
	addi	r8 r0 99
	sti	r4 r2 4
	bne	r7 r8 L_else_22288
	addi	r7 r0 1
	add	r7 r6 r7
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_22290
	jump	L_cont_22291
L_else_22290 : 
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
	call	L_solve_each_element_fast_2203
	subi	r2 r2 7
	addi	r4 r0 2
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22292
	jump	L_cont_22293
L_else_22292 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 7
	call	L_solve_each_element_fast_2203
	subi	r2 r2 7
	addi	r4 r0 3
	ldi	r5 r2 5
	ldi	r6 r2 0
	addi	r2 r2 7
	call	L_solve_one_or_network_fast_2207
	subi	r2 r2 7
L_cont_22293 : 
L_cont_22291 : 
	jump	L_cont_22289
L_else_22288 : 
	ldi	r8 r2 0
	sti	r6 r2 5
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 7
	call	L_solver_fast2_2132
	subi	r2 r2 7
	bne	r4 r0 L_else_22294
	jump	L_cont_22295
L_else_22294 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22296
	addi	r4 r0 0
	jump	L_cont_22297
L_else_22296 : 
	addi	r4 r0 1
L_cont_22297 : 
	bne	r4 r0 L_else_22298
	jump	L_cont_22299
L_else_22298 : 
	addi	r4 r0 1
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22300
	jump	L_cont_22301
L_else_22300 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 7
	call	L_solve_each_element_fast_2203
	subi	r2 r2 7
	addi	r4 r0 2
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22302
	jump	L_cont_22303
L_else_22302 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 7
	call	L_solve_each_element_fast_2203
	subi	r2 r2 7
	addi	r4 r0 3
	ldi	r5 r2 5
	ldi	r6 r2 0
	addi	r2 r2 7
	call	L_solve_one_or_network_fast_2207
	subi	r2 r2 7
L_cont_22303 : 
L_cont_22301 : 
L_cont_22299 : 
L_cont_22295 : 
L_cont_22289 : 
	ldi	r4 r2 4
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_fast_2211
L_get_nvector_second_2221 : 
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
	bne	r5 r0 L_else_22304
	addi	r5 r0 4118
	fsti	f5 r5 0
	addi	r5 r0 4118
	fsti	f6 r5 1
	addi	r5 r0 4118
	fsti	f7 r5 2
	jump	L_cont_22305
L_else_22304 : 
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
L_cont_22305 : 
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
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_22306
	fldi	f3 r0 38
	jump	L_cont_22307
L_else_22306 : 
	fldi	f3 r0 38
	fdiv	f3 f3 f2
L_cont_22307 : 
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r6 r0 14
	sti	r5 r2 0
	sti	r4 r2 1
	fsti	f2 r2 2
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_isqrt_1890
	subi	r2 r2 5
	fldi	f3 r2 2
	fmul	f2 f3 f2
	fbne	f2 f0 L_else_22308
	addi	r4 r0 1
	jump	L_cont_22309
L_else_22308 : 
	addi	r4 r0 0
L_cont_22309 : 
	bne	r4 r0 L_else_22310
	ldi	r4 r2 1
	bne	r4 r0 L_else_22312
	fldi	f3 r0 38
	fdiv	f2 f3 f2
	jump	L_cont_22313
L_else_22312 : 
	fldi	f3 r0 28
	fdiv	f2 f3 f2
L_cont_22313 : 
	jump	L_cont_22311
L_else_22310 : 
	fldi	f2 r0 38
L_cont_22311 : 
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
L_utexture_2226 : 
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
	bne	r6 r7 L_else_22315
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
	fbgt	f3 f2 L_else_22316
	addi	r6 r0 0
	jump	L_cont_22317
L_else_22316 : 
	addi	r6 r0 1
L_cont_22317 : 
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
	fbgt	f3 f2 L_else_22318
	addi	r4 r0 0
	jump	L_cont_22319
L_else_22318 : 
	addi	r4 r0 1
L_cont_22319 : 
	addi	r5 r0 4121
	bne	r6 r0 L_else_22320
	bne	r4 r0 L_else_22322
	fldi	f2 r0 17
	jump	L_cont_22323
L_else_22322 : 
	fldi	f2 r0 27
L_cont_22323 : 
	jump	L_cont_22321
L_else_22320 : 
	bne	r4 r0 L_else_22324
	fldi	f2 r0 27
	jump	L_cont_22325
L_else_22324 : 
	fldi	f2 r0 17
L_cont_22325 : 
L_cont_22321 : 
	fsti	f2 r5 1
	return
L_else_22315 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_22327
	fldi	f2 r5 1
	fldi	f3 r0 14
	fmul	f2 f2 f3
	fldi	f3 r0 56
	fldi	f4 r0 55
	fbgt	f2 f4 L_else_22328
	fldi	f5 r0 54
	fbgt	f5 f2 L_else_22330
	fldi	f3 r0 53
	fldi	f5 r0 52
	fldi	f6 r0 51
	fbgt	f2 f0 L_else_22332
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_22334
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	jump	L_cont_22335
L_else_22334 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_22336
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	jump	L_cont_22337
L_else_22336 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
L_cont_22337 : 
L_cont_22335 : 
	jump	L_cont_22333
L_else_22332 : 
	fbgt	f2 f3 L_else_22338
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	jump	L_cont_22339
L_else_22338 : 
	fbgt	f2 f6 L_else_22340
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	jump	L_cont_22341
L_else_22340 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
L_cont_22341 : 
L_cont_22339 : 
L_cont_22333 : 
	jump	L_cont_22331
L_else_22330 : 
	fadd	f2 f2 f3
	addi	r2 r2 1
	call	L_sin_1884
	subi	r2 r2 1
L_cont_22331 : 
	jump	L_cont_22329
L_else_22328 : 
	fsub	f2 f2 f3
	addi	r2 r2 1
	call	L_sin_1884
	subi	r2 r2 1
L_cont_22329 : 
	fmul	f2 f2 f2
	addi	r4 r0 4121
	fldi	f3 r0 17
	fmul	f3 f3 f2
	fsti	f3 r4 0
	addi	r4 r0 4121
	fldi	f3 r0 17
	fldi	f4 r0 38
	fsub	f2 f4 f2
	fmul	f2 f3 f2
	fsti	f2 r4 1
	return
L_else_22327 : 
	addi	r7 r0 3
	bne	r6 r7 L_else_22343
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
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_22344
	fldi	f3 r0 38
	jump	L_cont_22345
L_else_22344 : 
	fldi	f3 r0 38
	fdiv	f3 f3 f2
L_cont_22345 : 
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fldi	f4 r0 30
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	addi	r4 r0 13
	fsti	f2 r2 0
	addi	r2 r2 3
	call	L_isqrt_1890
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
	call	L_cos_1886
	subi	r2 r2 3
	fmul	f2 f2 f2
	addi	r4 r0 4121
	fldi	f3 r0 17
	fmul	f3 f2 f3
	fsti	f3 r4 1
	addi	r4 r0 4121
	fldi	f3 r0 38
	fsub	f2 f3 f2
	fldi	f3 r0 17
	fmul	f2 f2 f3
	fsti	f2 r4 2
	return
L_else_22343 : 
	addi	r7 r0 4
	bne	r6 r7 L_else_22347
	fldi	f2 r5 0
	ldi	r6 r4 5
	fldi	f3 r6 0
	fsub	f2 f2 f3
	ldi	r6 r4 4
	fldi	f3 r6 0
	fldi	f4 r0 38
	fbgt	f3 f4 L_else_22348
	fldi	f4 r0 38
	jump	L_cont_22349
L_else_22348 : 
	fldi	f4 r0 38
	fdiv	f4 f4 f3
L_cont_22349 : 
	fldi	f5 r0 30
	fmul	f6 f3 f4
	fmul	f6 f6 f4
	fsub	f5 f5 f6
	fmul	f4 f4 f5
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	fldi	f5 r0 30
	fmul	f6 f3 f4
	fmul	f6 f6 f4
	fsub	f5 f5 f6
	fmul	f4 f4 f5
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	addi	r6 r0 13
	sti	r4 r2 2
	sti	r5 r2 3
	fsti	f2 r2 4
	fsti	f3 r2 6
	add	r4 r0 r6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	addi	r2 r2 9
	call	L_isqrt_1890
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
	fldi	f5 r0 38
	fbgt	f4 f5 L_else_22350
	fldi	f5 r0 38
	jump	L_cont_22351
L_else_22350 : 
	fldi	f5 r0 38
	fdiv	f5 f5 f4
L_cont_22351 : 
	fldi	f6 r0 30
	fmul	f7 f4 f5
	fmul	f7 f7 f5
	fsub	f6 f6 f7
	fmul	f5 f5 f6
	fldi	f6 r0 29
	fdiv	f5 f5 f6
	fldi	f6 r0 30
	fmul	f7 f4 f5
	fmul	f7 f7 f5
	fsub	f6 f6 f7
	fmul	f5 f5 f6
	fldi	f6 r0 29
	fdiv	f5 f5 f6
	addi	r6 r0 13
	fsti	f2 r2 8
	fsti	f3 r2 10
	fsti	f4 r2 12
	add	r4 r0 r6
	fadd	f3 f0 f5
	fadd	f2 f0 f4
	addi	r2 r2 15
	call	L_isqrt_1890
	subi	r2 r2 15
	fldi	f3 r2 12
	fmul	f2 f3 f2
	fldi	f3 r2 10
	fmul	f2 f3 f2
	fldi	f3 r2 8
	fmul	f4 f3 f3
	fmul	f5 f2 f2
	fadd	f4 f4 f5
	fbgt	f0 f3 L_else_22352
	fadd	f5 f0 f3
	jump	L_cont_22353
L_else_22352 : 
	fsub	f5 f0 f3
L_cont_22353 : 
	fldi	f6 r0 22
	fbgt	f6 f5 L_else_22354
	addi	r4 r0 0
	jump	L_cont_22355
L_else_22354 : 
	addi	r4 r0 1
L_cont_22355 : 
	fsti	f4 r2 14
	bne	r4 r0 L_else_22356
	fdiv	f2 f2 f3
	fbgt	f0 f2 L_else_22358
	fadd	f2 f0 f2
	jump	L_cont_22359
L_else_22358 : 
	fsub	f2 f0 f2
L_cont_22359 : 
	addi	r2 r2 17
	call	L_atan_1888
	subi	r2 r2 17
	fldi	f3 r0 20
	fmul	f2 f2 f3
	fldi	f3 r0 19
	fdiv	f2 f2 f3
	jump	L_cont_22357
L_else_22356 : 
	fldi	f2 r0 21
L_cont_22357 : 
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
	fldi	f5 r0 38
	fbgt	f4 f5 L_else_22360
	fldi	f5 r0 38
	jump	L_cont_22361
L_else_22360 : 
	fldi	f5 r0 38
	fdiv	f5 f5 f4
L_cont_22361 : 
	fldi	f6 r0 30
	fmul	f7 f4 f5
	fmul	f7 f7 f5
	fsub	f6 f6 f7
	fmul	f5 f5 f6
	fldi	f6 r0 29
	fdiv	f5 f5 f6
	fldi	f6 r0 30
	fmul	f7 f4 f5
	fmul	f7 f7 f5
	fsub	f6 f6 f7
	fmul	f5 f5 f6
	fldi	f6 r0 29
	fdiv	f5 f5 f6
	addi	r4 r0 13
	fsti	f2 r2 16
	fsti	f3 r2 18
	fsti	f4 r2 20
	fadd	f3 f0 f5
	fadd	f2 f0 f4
	addi	r2 r2 23
	call	L_isqrt_1890
	subi	r2 r2 23
	fldi	f3 r2 20
	fmul	f2 f3 f2
	fldi	f3 r2 18
	fmul	f2 f3 f2
	fldi	f3 r2 14
	fbgt	f0 f3 L_else_22362
	fadd	f4 f0 f3
	jump	L_cont_22363
L_else_22362 : 
	fsub	f4 f0 f3
L_cont_22363 : 
	fldi	f5 r0 22
	fbgt	f5 f4 L_else_22364
	addi	r4 r0 0
	jump	L_cont_22365
L_else_22364 : 
	addi	r4 r0 1
L_cont_22365 : 
	bne	r4 r0 L_else_22366
	fdiv	f2 f2 f3
	fbgt	f0 f2 L_else_22368
	fadd	f2 f0 f2
	jump	L_cont_22369
L_else_22368 : 
	fsub	f2 f0 f2
L_cont_22369 : 
	addi	r2 r2 23
	call	L_atan_1888
	subi	r2 r2 23
	fldi	f3 r0 20
	fmul	f2 f2 f3
	fldi	f3 r0 19
	fdiv	f2 f2 f3
	jump	L_cont_22367
L_else_22366 : 
	fldi	f2 r0 21
L_cont_22367 : 
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 18
	fldi	f4 r0 39
	fldi	f5 r2 16
	fsub	f4 f4 f5
	fmul	f4 f4 f4
	fsub	f3 f3 f4
	fldi	f4 r0 39
	fsub	f2 f4 f2
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fbgt	f0 f2 L_else_22370
	addi	r4 r0 0
	jump	L_cont_22371
L_else_22370 : 
	addi	r4 r0 1
L_cont_22371 : 
	bne	r4 r0 L_else_22372
	fadd	f2 f0 f2
	jump	L_cont_22373
L_else_22372 : 
	fldi	f2 r0 27
L_cont_22373 : 
	addi	r4 r0 4121
	fldi	f3 r0 17
	fmul	f2 f3 f2
	fldi	f3 r0 16
	fdiv	f2 f2 f3
	fsti	f2 r4 2
	return
L_else_22347 : 
	return
L_trace_reflections_2233 : 
	bgt	r0 r4 L_else_22376
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
	call	L_trace_or_matrix_fast_2211
	subi	r2 r2 11
	addi	r4 r0 4154
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_22379
	addi	r4 r0 0
	jump	L_cont_22380
L_else_22379 : 
	addi	r4 r0 1
L_cont_22380 : 
	bne	r4 r0 L_else_22381
	addi	r4 r0 0
	jump	L_cont_22382
L_else_22381 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_22383
	addi	r4 r0 0
	jump	L_cont_22384
L_else_22383 : 
	addi	r4 r0 1
L_cont_22384 : 
L_cont_22382 : 
	bne	r4 r0 L_else_22385
	jump	L_cont_22386
L_else_22385 : 
	addi	r4 r0 4117
	ldi	r4 r4 0
	addi	r5 r0 4
	mul	r4 r4 r5
	addi	r5 r0 4146
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r5 r2 9
	ldi	r6 r5 0
	bne	r4 r6 L_else_22387
	addi	r4 r0 0
	addi	r6 r0 4255
	ldi	r6 r6 0
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_shadow_check_one_or_matrix_2186
	subi	r2 r2 11
	bne	r4 r0 L_else_22389
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
	fbgt	f2 f0 L_else_22391
	addi	r4 r0 0
	jump	L_cont_22392
L_else_22391 : 
	addi	r4 r0 1
L_cont_22392 : 
	bne	r4 r0 L_else_22393
	jump	L_cont_22394
L_else_22393 : 
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
L_cont_22394 : 
	fbgt	f3 f0 L_else_22395
	addi	r4 r0 0
	jump	L_cont_22396
L_else_22395 : 
	addi	r4 r0 1
L_cont_22396 : 
	bne	r4 r0 L_else_22397
	jump	L_cont_22398
L_else_22397 : 
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
L_cont_22398 : 
	jump	L_cont_22390
L_else_22389 : 
L_cont_22390 : 
	jump	L_cont_22388
L_else_22387 : 
L_cont_22388 : 
L_cont_22386 : 
	ldi	r4 r2 0
	addi	r4 r4 -1
	fldi	f2 r2 6
	fldi	f3 r2 2
	ldi	r5 r2 4
	jump	L_trace_reflections_2233
L_else_22376 : 
	return
L_trace_ray_2238 : 
	addi	r7 r0 4
	bgt	r4 r7 L_else_22400
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
	call	L_trace_or_matrix_2197
	subi	r2 r2 10
	addi	r4 r0 4154
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_22402
	addi	r4 r0 0
	jump	L_cont_22403
L_else_22402 : 
	addi	r4 r0 1
L_cont_22403 : 
	bne	r4 r0 L_else_22404
	addi	r4 r0 0
	jump	L_cont_22405
L_else_22404 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_22406
	addi	r4 r0 0
	jump	L_cont_22407
L_else_22406 : 
	addi	r4 r0 1
L_cont_22407 : 
L_cont_22405 : 
	bne	r4 r0 L_else_22408
	addi	r4 r0 -1
	ldi	r5 r2 7
	ldi	r6 r2 8
	add	r6 r6 r5
	sti	r4 r6 0
	bne	r5 r0 L_else_22409
	return
L_else_22409 : 
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
	fbgt	f2 f0 L_else_22411
	addi	r4 r0 0
	jump	L_cont_22412
L_else_22411 : 
	addi	r4 r0 1
L_cont_22412 : 
	bne	r4 r0 L_else_22413
	return
L_else_22413 : 
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
L_else_22408 : 
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
	bne	r7 r8 L_else_22416
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
	fbne	f4 f0 L_else_22418
	addi	r7 r0 1
	jump	L_cont_22419
L_else_22418 : 
	addi	r7 r0 0
L_cont_22419 : 
	bne	r7 r0 L_else_22420
	fbgt	f4 f0 L_else_22422
	addi	r7 r0 0
	jump	L_cont_22423
L_else_22422 : 
	addi	r7 r0 1
L_cont_22423 : 
	bne	r7 r0 L_else_22424
	fldi	f4 r0 28
	jump	L_cont_22425
L_else_22424 : 
	fldi	f4 r0 38
L_cont_22425 : 
	jump	L_cont_22421
L_else_22420 : 
	fldi	f4 r0 27
L_cont_22421 : 
	fsub	f4 f0 f4
	add	r7 r8 r9
	fsti	f4 r7 0
	jump	L_cont_22417
L_else_22416 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_22426
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
	jump	L_cont_22427
L_else_22426 : 
	add	r4 r0 r5
	addi	r2 r2 15
	call	L_get_nvector_second_2221
	subi	r2 r2 15
L_cont_22427 : 
L_cont_22417 : 
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
	call	L_utexture_2226
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
	fldi	f3 r0 39
	fbgt	f3 f2 L_else_22428
	addi	r9 r0 0
	jump	L_cont_22429
L_else_22428 : 
	addi	r9 r0 1
L_cont_22429 : 
	bne	r9 r0 L_else_22430
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
	jump	L_cont_22431
L_else_22430 : 
	addi	r9 r0 0
	add	r7 r7 r5
	sti	r9 r7 0
L_cont_22431 : 
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
	call	L_shadow_check_one_or_matrix_2186
	subi	r2 r2 17
	bne	r4 r0 L_else_22432
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
	fbgt	f2 f0 L_else_22434
	addi	r4 r0 0
	jump	L_cont_22435
L_else_22434 : 
	addi	r4 r0 1
L_cont_22435 : 
	bne	r4 r0 L_else_22436
	jump	L_cont_22437
L_else_22436 : 
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
L_cont_22437 : 
	fbgt	f4 f0 L_else_22438
	addi	r4 r0 0
	jump	L_cont_22439
L_else_22438 : 
	addi	r4 r0 1
L_cont_22439 : 
	bne	r4 r0 L_else_22440
	jump	L_cont_22441
L_else_22440 : 
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
L_cont_22441 : 
	jump	L_cont_22433
L_else_22432 : 
L_cont_22433 : 
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
	call	L_setup_startp_constants_2149
	subi	r2 r2 17
	addi	r4 r0 4147
	ldi	r4 r4 0
	addi	r4 r4 -1
	fldi	f2 r2 10
	fldi	f3 r2 14
	ldi	r5 r2 6
	addi	r2 r2 17
	call	L_trace_reflections_2233
	subi	r2 r2 17
	fldi	f2 r0 7
	fldi	f3 r2 4
	fbgt	f3 f2 L_else_22442
	addi	r4 r0 0
	jump	L_cont_22443
L_else_22442 : 
	addi	r4 r0 1
L_cont_22443 : 
	bne	r4 r0 L_else_22444
	return
L_else_22444 : 
	addi	r4 r0 4
	ldi	r5 r2 7
	bgt	r4 r5 L_else_22446
	jump	L_cont_22447
L_else_22446 : 
	addi	r4 r5 1
	addi	r6 r0 -1
	ldi	r7 r2 8
	add	r4 r7 r4
	sti	r6 r4 0
L_cont_22447 : 
	addi	r4 r0 2
	ldi	r6 r2 9
	bne	r6 r4 L_else_22448
	fldi	f2 r0 38
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
	jump	L_trace_ray_2238
L_else_22448 : 
	return
L_else_22400 : 
	return
L_trace_diffuse_ray_2244 : 
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
	call	L_trace_or_matrix_fast_2211
	subi	r2 r2 4
	addi	r4 r0 4154
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_22451
	addi	r4 r0 0
	jump	L_cont_22452
L_else_22451 : 
	addi	r4 r0 1
L_cont_22452 : 
	bne	r4 r0 L_else_22453
	addi	r4 r0 0
	jump	L_cont_22454
L_else_22453 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_22455
	addi	r4 r0 0
	jump	L_cont_22456
L_else_22455 : 
	addi	r4 r0 1
L_cont_22456 : 
L_cont_22454 : 
	bne	r4 r0 L_else_22457
	return
L_else_22457 : 
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
	bne	r6 r7 L_else_22459
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
	fbne	f2 f0 L_else_22461
	addi	r5 r0 1
	jump	L_cont_22462
L_else_22461 : 
	addi	r5 r0 0
L_cont_22462 : 
	bne	r5 r0 L_else_22463
	fbgt	f2 f0 L_else_22465
	addi	r5 r0 0
	jump	L_cont_22466
L_else_22465 : 
	addi	r5 r0 1
L_cont_22466 : 
	bne	r5 r0 L_else_22467
	fldi	f2 r0 28
	jump	L_cont_22468
L_else_22467 : 
	fldi	f2 r0 38
L_cont_22468 : 
	jump	L_cont_22464
L_else_22463 : 
	fldi	f2 r0 27
L_cont_22464 : 
	fsub	f2 f0 f2
	add	r5 r7 r8
	fsti	f2 r5 0
	jump	L_cont_22460
L_else_22459 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_22469
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
	jump	L_cont_22470
L_else_22469 : 
	addi	r2 r2 5
	call	L_get_nvector_second_2221
	subi	r2 r2 5
L_cont_22470 : 
L_cont_22460 : 
	addi	r5 r0 4114
	ldi	r4 r2 3
	addi	r2 r2 5
	call	L_utexture_2226
	subi	r2 r2 5
	addi	r4 r0 0
	addi	r5 r0 4255
	ldi	r5 r5 0
	addi	r2 r2 5
	call	L_shadow_check_one_or_matrix_2186
	subi	r2 r2 5
	bne	r4 r0 L_else_22471
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
	fbgt	f2 f0 L_else_22472
	addi	r4 r0 0
	jump	L_cont_22473
L_else_22472 : 
	addi	r4 r0 1
L_cont_22473 : 
	bne	r4 r0 L_else_22474
	fldi	f2 r0 27
	jump	L_cont_22475
L_else_22474 : 
	fadd	f2 f0 f2
L_cont_22475 : 
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
L_else_22471 : 
	return
L_iter_trace_diffuse_rays_2247 : 
	bgt	r0 r7 L_else_22478
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
	fbgt	f0 f2 L_else_22479
	addi	r8 r0 0
	jump	L_cont_22480
L_else_22479 : 
	addi	r8 r0 1
L_cont_22480 : 
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	bne	r8 r0 L_else_22481
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
	bne	r11 r12 L_else_22483
	jump	L_cont_22484
L_else_22483 : 
	addi	r12 r0 99
	sti	r10 r2 7
	bne	r11 r12 L_else_22485
	addi	r11 r0 1
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r11
	addi	r2 r2 9
	call	L_solve_one_or_network_fast_2207
	subi	r2 r2 9
	jump	L_cont_22486
L_else_22485 : 
	sti	r9 r2 8
	add	r5 r0 r8
	add	r4 r0 r11
	addi	r2 r2 10
	call	L_solver_fast2_2132
	subi	r2 r2 10
	bne	r4 r0 L_else_22487
	jump	L_cont_22488
L_else_22487 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22489
	addi	r4 r0 0
	jump	L_cont_22490
L_else_22489 : 
	addi	r4 r0 1
L_cont_22490 : 
	bne	r4 r0 L_else_22491
	jump	L_cont_22492
L_else_22491 : 
	addi	r4 r0 1
	ldi	r5 r2 8
	ldi	r6 r2 6
	addi	r2 r2 10
	call	L_solve_one_or_network_fast_2207
	subi	r2 r2 10
L_cont_22492 : 
L_cont_22488 : 
L_cont_22486 : 
	addi	r4 r0 1
	ldi	r5 r2 7
	ldi	r6 r2 6
	addi	r2 r2 10
	call	L_trace_or_matrix_fast_2211
	subi	r2 r2 10
L_cont_22484 : 
	addi	r4 r0 4154
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_22493
	addi	r4 r0 0
	jump	L_cont_22494
L_else_22493 : 
	addi	r4 r0 1
L_cont_22494 : 
	bne	r4 r0 L_else_22495
	addi	r4 r0 0
	jump	L_cont_22496
L_else_22495 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_22497
	addi	r4 r0 0
	jump	L_cont_22498
L_else_22497 : 
	addi	r4 r0 1
L_cont_22498 : 
L_cont_22496 : 
	bne	r4 r0 L_else_22499
	jump	L_cont_22500
L_else_22499 : 
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
	bne	r6 r7 L_else_22501
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
	fbne	f2 f0 L_else_22503
	addi	r5 r0 1
	jump	L_cont_22504
L_else_22503 : 
	addi	r5 r0 0
L_cont_22504 : 
	bne	r5 r0 L_else_22505
	fbgt	f2 f0 L_else_22507
	addi	r5 r0 0
	jump	L_cont_22508
L_else_22507 : 
	addi	r5 r0 1
L_cont_22508 : 
	bne	r5 r0 L_else_22509
	fldi	f2 r0 28
	jump	L_cont_22510
L_else_22509 : 
	fldi	f2 r0 38
L_cont_22510 : 
	jump	L_cont_22506
L_else_22505 : 
	fldi	f2 r0 27
L_cont_22506 : 
	fsub	f2 f0 f2
	add	r5 r7 r8
	fsti	f2 r5 0
	jump	L_cont_22502
L_else_22501 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_22511
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
	jump	L_cont_22512
L_else_22511 : 
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
	bne	r5 r0 L_else_22513
	addi	r5 r0 4118
	fsti	f5 r5 0
	addi	r5 r0 4118
	fsti	f6 r5 1
	addi	r5 r0 4118
	fsti	f7 r5 2
	jump	L_cont_22514
L_else_22513 : 
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
L_cont_22514 : 
	addi	r5 r0 4118
	ldi	r6 r4 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_vecunit_sgn_1929
	subi	r2 r2 11
L_cont_22512 : 
L_cont_22502 : 
	addi	r5 r0 4114
	ldi	r4 r2 9
	addi	r2 r2 11
	call	L_utexture_2226
	subi	r2 r2 11
	addi	r4 r0 0
	addi	r5 r0 4255
	ldi	r5 r5 0
	addi	r2 r2 11
	call	L_shadow_check_one_or_matrix_2186
	subi	r2 r2 11
	bne	r4 r0 L_else_22515
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
	fbgt	f2 f0 L_else_22517
	addi	r4 r0 0
	jump	L_cont_22518
L_else_22517 : 
	addi	r4 r0 1
L_cont_22518 : 
	bne	r4 r0 L_else_22519
	fldi	f2 r0 27
	jump	L_cont_22520
L_else_22519 : 
	fadd	f2 f0 f2
L_cont_22520 : 
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
	jump	L_cont_22516
L_else_22515 : 
L_cont_22516 : 
L_cont_22500 : 
	jump	L_cont_22482
L_else_22481 : 
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
	bne	r11 r12 L_else_22521
	jump	L_cont_22522
L_else_22521 : 
	addi	r12 r0 99
	sti	r10 r2 13
	bne	r11 r12 L_else_22523
	addi	r11 r0 1
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r11
	addi	r2 r2 15
	call	L_solve_one_or_network_fast_2207
	subi	r2 r2 15
	jump	L_cont_22524
L_else_22523 : 
	sti	r9 r2 14
	add	r5 r0 r8
	add	r4 r0 r11
	addi	r2 r2 16
	call	L_solver_fast2_2132
	subi	r2 r2 16
	bne	r4 r0 L_else_22525
	jump	L_cont_22526
L_else_22525 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22527
	addi	r4 r0 0
	jump	L_cont_22528
L_else_22527 : 
	addi	r4 r0 1
L_cont_22528 : 
	bne	r4 r0 L_else_22529
	jump	L_cont_22530
L_else_22529 : 
	addi	r4 r0 1
	ldi	r5 r2 14
	ldi	r6 r2 12
	addi	r2 r2 16
	call	L_solve_one_or_network_fast_2207
	subi	r2 r2 16
L_cont_22530 : 
L_cont_22526 : 
L_cont_22524 : 
	addi	r4 r0 1
	ldi	r5 r2 13
	ldi	r6 r2 12
	addi	r2 r2 16
	call	L_trace_or_matrix_fast_2211
	subi	r2 r2 16
L_cont_22522 : 
	addi	r4 r0 4154
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_22531
	addi	r4 r0 0
	jump	L_cont_22532
L_else_22531 : 
	addi	r4 r0 1
L_cont_22532 : 
	bne	r4 r0 L_else_22533
	addi	r4 r0 0
	jump	L_cont_22534
L_else_22533 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_22535
	addi	r4 r0 0
	jump	L_cont_22536
L_else_22535 : 
	addi	r4 r0 1
L_cont_22536 : 
L_cont_22534 : 
	bne	r4 r0 L_else_22537
	jump	L_cont_22538
L_else_22537 : 
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
	bne	r6 r7 L_else_22539
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
	fbne	f2 f0 L_else_22541
	addi	r5 r0 1
	jump	L_cont_22542
L_else_22541 : 
	addi	r5 r0 0
L_cont_22542 : 
	bne	r5 r0 L_else_22543
	fbgt	f2 f0 L_else_22545
	addi	r5 r0 0
	jump	L_cont_22546
L_else_22545 : 
	addi	r5 r0 1
L_cont_22546 : 
	bne	r5 r0 L_else_22547
	fldi	f2 r0 28
	jump	L_cont_22548
L_else_22547 : 
	fldi	f2 r0 38
L_cont_22548 : 
	jump	L_cont_22544
L_else_22543 : 
	fldi	f2 r0 27
L_cont_22544 : 
	fsub	f2 f0 f2
	add	r5 r7 r8
	fsti	f2 r5 0
	jump	L_cont_22540
L_else_22539 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_22549
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
	jump	L_cont_22550
L_else_22549 : 
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
	bne	r5 r0 L_else_22551
	addi	r5 r0 4118
	fsti	f5 r5 0
	addi	r5 r0 4118
	fsti	f6 r5 1
	addi	r5 r0 4118
	fsti	f7 r5 2
	jump	L_cont_22552
L_else_22551 : 
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
L_cont_22552 : 
	addi	r5 r0 4118
	ldi	r6 r4 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 17
	call	L_vecunit_sgn_1929
	subi	r2 r2 17
L_cont_22550 : 
L_cont_22540 : 
	addi	r5 r0 4114
	ldi	r4 r2 15
	addi	r2 r2 17
	call	L_utexture_2226
	subi	r2 r2 17
	addi	r4 r0 0
	addi	r5 r0 4255
	ldi	r5 r5 0
	addi	r2 r2 17
	call	L_shadow_check_one_or_matrix_2186
	subi	r2 r2 17
	bne	r4 r0 L_else_22553
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
	fbgt	f2 f0 L_else_22555
	addi	r4 r0 0
	jump	L_cont_22556
L_else_22555 : 
	addi	r4 r0 1
L_cont_22556 : 
	bne	r4 r0 L_else_22557
	fldi	f2 r0 27
	jump	L_cont_22558
L_else_22557 : 
	fadd	f2 f0 f2
L_cont_22558 : 
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
	jump	L_cont_22554
L_else_22553 : 
L_cont_22554 : 
L_cont_22538 : 
L_cont_22482 : 
	ldi	r4 r2 3
	addi	r4 r4 -2
	bgt	r0 r4 L_else_22559
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
	fbgt	f0 f2 L_else_22560
	addi	r6 r0 0
	jump	L_cont_22561
L_else_22560 : 
	addi	r6 r0 1
L_cont_22561 : 
	sti	r4 r2 16
	bne	r6 r0 L_else_22562
	add	r6 r5 r4
	ldi	r6 r6 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	add	r4 r0 r6
	addi	r2 r2 18
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 18
	jump	L_cont_22563
L_else_22562 : 
	addi	r6 r4 1
	add	r6 r5 r6
	ldi	r6 r6 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	add	r4 r0 r6
	addi	r2 r2 18
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 18
L_cont_22563 : 
	ldi	r4 r2 16
	addi	r7 r4 -2
	ldi	r4 r2 2
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_iter_trace_diffuse_rays_2247
L_else_22559 : 
	return
L_else_22478 : 
	return
L_calc_diffuse_using_1point_2260 : 
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
	bne	r4 r0 L_else_22566
	jump	L_cont_22567
L_else_22566 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f2 L_else_22568
	addi	r6 r0 0
	jump	L_cont_22569
L_else_22568 : 
	addi	r6 r0 1
L_cont_22569 : 
	bne	r6 r0 L_else_22570
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 7
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 7
	jump	L_cont_22571
L_else_22570 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 7
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 7
L_cont_22571 : 
	addi	r7 r0 116
	ldi	r4 r2 5
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 7
	call	L_iter_trace_diffuse_rays_2247
	subi	r2 r2 7
L_cont_22567 : 
	addi	r4 r0 1
	ldi	r5 r2 4
	bne	r5 r4 L_else_22572
	jump	L_cont_22573
L_else_22572 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f2 L_else_22574
	addi	r6 r0 0
	jump	L_cont_22575
L_else_22574 : 
	addi	r6 r0 1
L_cont_22575 : 
	bne	r6 r0 L_else_22576
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 8
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 8
	jump	L_cont_22577
L_else_22576 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 8
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 8
L_cont_22577 : 
	addi	r7 r0 116
	ldi	r4 r2 6
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 8
	call	L_iter_trace_diffuse_rays_2247
	subi	r2 r2 8
L_cont_22573 : 
	addi	r4 r0 2
	ldi	r5 r2 4
	bne	r5 r4 L_else_22578
	jump	L_cont_22579
L_else_22578 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f2 L_else_22580
	addi	r6 r0 0
	jump	L_cont_22581
L_else_22580 : 
	addi	r6 r0 1
L_cont_22581 : 
	bne	r6 r0 L_else_22582
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 9
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 9
	jump	L_cont_22583
L_else_22582 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 9
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 9
L_cont_22583 : 
	addi	r7 r0 116
	ldi	r4 r2 7
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 9
	call	L_iter_trace_diffuse_rays_2247
	subi	r2 r2 9
L_cont_22579 : 
	addi	r4 r0 3
	ldi	r5 r2 4
	bne	r5 r4 L_else_22584
	jump	L_cont_22585
L_else_22584 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f2 L_else_22586
	addi	r6 r0 0
	jump	L_cont_22587
L_else_22586 : 
	addi	r6 r0 1
L_cont_22587 : 
	bne	r6 r0 L_else_22588
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 10
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 10
	jump	L_cont_22589
L_else_22588 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 10
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 10
L_cont_22589 : 
	addi	r7 r0 116
	ldi	r4 r2 8
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 10
	call	L_iter_trace_diffuse_rays_2247
	subi	r2 r2 10
L_cont_22585 : 
	addi	r4 r0 4
	ldi	r5 r2 4
	bne	r5 r4 L_else_22590
	jump	L_cont_22591
L_else_22590 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f2 L_else_22592
	addi	r6 r0 0
	jump	L_cont_22593
L_else_22592 : 
	addi	r6 r0 1
L_cont_22593 : 
	bne	r6 r0 L_else_22594
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 11
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 11
	jump	L_cont_22595
L_else_22594 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 11
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 11
L_cont_22595 : 
	addi	r7 r0 116
	ldi	r4 r2 9
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 11
	call	L_iter_trace_diffuse_rays_2247
	subi	r2 r2 11
L_cont_22591 : 
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
L_calc_diffuse_using_5points_2263 : 
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
L_do_without_neighbors_2269 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_22598
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r0 r6 L_else_22599
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r4 r2 0
	bne	r6 r0 L_else_22600
	jump	L_cont_22601
L_else_22600 : 
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
	bne	r6 r0 L_else_22602
	jump	L_cont_22603
L_else_22602 : 
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
	call	L_setup_startp_constants_2149
	subi	r2 r2 8
	addi	r7 r0 118
	ldi	r4 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 8
	call	L_iter_trace_diffuse_rays_2247
	subi	r2 r2 8
L_cont_22603 : 
	addi	r4 r0 1
	ldi	r5 r2 5
	bne	r5 r4 L_else_22604
	jump	L_cont_22605
L_else_22604 : 
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
	call	L_setup_startp_constants_2149
	subi	r2 r2 9
	addi	r7 r0 118
	ldi	r4 r2 7
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 9
	call	L_iter_trace_diffuse_rays_2247
	subi	r2 r2 9
L_cont_22605 : 
	addi	r4 r0 2
	ldi	r5 r2 5
	bne	r5 r4 L_else_22606
	jump	L_cont_22607
L_else_22606 : 
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
	call	L_setup_startp_constants_2149
	subi	r2 r2 10
	addi	r7 r0 118
	ldi	r4 r2 8
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 10
	call	L_iter_trace_diffuse_rays_2247
	subi	r2 r2 10
L_cont_22607 : 
	addi	r4 r0 3
	ldi	r5 r2 5
	bne	r5 r4 L_else_22608
	jump	L_cont_22609
L_else_22608 : 
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
	call	L_setup_startp_constants_2149
	subi	r2 r2 11
	addi	r7 r0 118
	ldi	r4 r2 9
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 11
	call	L_iter_trace_diffuse_rays_2247
	subi	r2 r2 11
L_cont_22609 : 
	addi	r4 r0 4
	ldi	r5 r2 5
	bne	r5 r4 L_else_22610
	jump	L_cont_22611
L_else_22610 : 
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
	call	L_setup_startp_constants_2149
	subi	r2 r2 12
	addi	r7 r0 118
	ldi	r4 r2 10
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 12
	call	L_iter_trace_diffuse_rays_2247
	subi	r2 r2 12
L_cont_22611 : 
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
L_cont_22601 : 
	addi	r5 r5 1
	addi	r4 r0 4
	bgt	r5 r4 L_else_22612
	ldi	r4 r2 0
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r0 r6 L_else_22613
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r5 r2 11
	bne	r6 r0 L_else_22614
	jump	L_cont_22615
L_else_22614 : 
	addi	r2 r2 13
	call	L_calc_diffuse_using_1point_2260
	subi	r2 r2 13
L_cont_22615 : 
	ldi	r4 r2 11
	addi	r5 r4 1
	ldi	r4 r2 0
	jump	L_do_without_neighbors_2269
L_else_22613 : 
	return
L_else_22612 : 
	return
L_else_22599 : 
	return
L_else_22598 : 
	return
L_try_exploit_neighbors_2285 : 
	add	r10 r7 r4
	ldi	r10 r10 0
	addi	r11 r0 4
	bgt	r9 r11 L_else_22620
	ldi	r11 r10 2
	add	r11 r11 r9
	ldi	r11 r11 0
	bgt	r0 r11 L_else_22621
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
	bne	r12 r11 L_else_22622
	add	r12 r8 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22624
	addi	r12 r4 -1
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22626
	addi	r12 r4 1
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22628
	addi	r11 r0 1
	jump	L_cont_22629
L_else_22628 : 
	addi	r11 r0 0
L_cont_22629 : 
	jump	L_cont_22627
L_else_22626 : 
	addi	r11 r0 0
L_cont_22627 : 
	jump	L_cont_22625
L_else_22624 : 
	addi	r11 r0 0
L_cont_22625 : 
	jump	L_cont_22623
L_else_22622 : 
	addi	r11 r0 0
L_cont_22623 : 
	bne	r11 r0 L_else_22630
	add	r4 r7 r4
	ldi	r4 r4 0
	addi	r5 r0 4
	bgt	r9 r5 L_else_22631
	ldi	r5 r4 2
	add	r5 r5 r9
	ldi	r5 r5 0
	bgt	r0 r5 L_else_22632
	ldi	r5 r4 3
	add	r5 r5 r9
	ldi	r5 r5 0
	sti	r4 r2 0
	sti	r9 r2 1
	bne	r5 r0 L_else_22633
	jump	L_cont_22634
L_else_22633 : 
	add	r5 r0 r9
	addi	r2 r2 3
	call	L_calc_diffuse_using_1point_2260
	subi	r2 r2 3
L_cont_22634 : 
	ldi	r4 r2 1
	addi	r5 r4 1
	ldi	r4 r2 0
	jump	L_do_without_neighbors_2269
L_else_22632 : 
	return
L_else_22631 : 
	return
L_else_22630 : 
	ldi	r10 r10 3
	add	r10 r10 r9
	ldi	r10 r10 0
	bne	r10 r0 L_else_22637
	jump	L_cont_22638
L_else_22637 : 
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
L_cont_22638 : 
	addi	r9 r9 1
	add	r10 r7 r4
	ldi	r10 r10 0
	addi	r11 r0 4
	bgt	r9 r11 L_else_22639
	ldi	r11 r10 2
	add	r11 r11 r9
	ldi	r11 r11 0
	bgt	r0 r11 L_else_22640
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
	add	r4 r7 r4
	ldi	r4 r4 0
	add	r5 r0 r9
	jump	L_do_without_neighbors_2269
L_else_22649 : 
	ldi	r10 r10 3
	add	r10 r10 r9
	ldi	r10 r10 0
	sti	r8 r2 2
	sti	r7 r2 3
	sti	r6 r2 4
	sti	r5 r2 5
	sti	r4 r2 6
	sti	r9 r2 7
	bne	r10 r0 L_else_22650
	jump	L_cont_22651
L_else_22650 : 
	add	r5 r0 r6
	add	r6 r0 r7
	add	r7 r0 r8
	add	r8 r0 r9
	addi	r2 r2 9
	call	L_calc_diffuse_using_5points_2263
	subi	r2 r2 9
L_cont_22651 : 
	ldi	r4 r2 7
	addi	r9 r4 1
	ldi	r4 r2 6
	ldi	r5 r2 5
	ldi	r6 r2 4
	ldi	r7 r2 3
	ldi	r8 r2 2
	jump	L_try_exploit_neighbors_2285
L_else_22640 : 
	return
L_else_22639 : 
	return
L_else_22621 : 
	return
L_else_22620 : 
	return
L_pretrace_diffuse_rays_2298 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_22656
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r0 r6 L_else_22657
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r5 r2 0
	bne	r6 r0 L_else_22658
	jump	L_cont_22659
L_else_22658 : 
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
	call	L_setup_startp_constants_2149
	subi	r2 r2 6
	addi	r7 r0 118
	ldi	r4 r2 4
	ldi	r5 r2 3
	ldi	r6 r2 2
	addi	r2 r2 6
	call	L_iter_trace_diffuse_rays_2247
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
L_cont_22659 : 
	ldi	r5 r2 0
	addi	r5 r5 1
	addi	r6 r0 4
	bgt	r5 r6 L_else_22660
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r0 r6 L_else_22661
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r5 r2 5
	bne	r6 r0 L_else_22662
	jump	L_cont_22663
L_else_22662 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f2 L_else_22664
	addi	r6 r0 0
	jump	L_cont_22665
L_else_22664 : 
	addi	r6 r0 1
L_cont_22665 : 
	bne	r6 r0 L_else_22666
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 10
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 10
	jump	L_cont_22667
L_else_22666 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 10
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 10
L_cont_22667 : 
	addi	r7 r0 116
	ldi	r4 r2 8
	ldi	r5 r2 7
	ldi	r6 r2 6
	addi	r2 r2 10
	call	L_iter_trace_diffuse_rays_2247
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
L_cont_22663 : 
	ldi	r5 r2 5
	addi	r5 r5 1
	jump	L_pretrace_diffuse_rays_2298
L_else_22661 : 
	return
L_else_22660 : 
	return
L_else_22657 : 
	return
L_else_22656 : 
	return
L_pretrace_pixels_2301 : 
	bgt	r0 r5 L_else_22672
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
	fldi	f6 r0 38
	fbgt	f5 f6 L_else_22673
	fldi	f6 r0 38
	jump	L_cont_22674
L_else_22673 : 
	fldi	f6 r0 38
	fdiv	f6 f6 f5
L_cont_22674 : 
	fldi	f7 r0 30
	fmul	f8 f5 f6
	fmul	f8 f8 f6
	fsub	f7 f7 f8
	fmul	f6 f6 f7
	fldi	f7 r0 29
	fdiv	f6 f6 f7
	addi	r8 r0 14
	fsti	f4 r2 0
	fsti	f3 r2 2
	fsti	f2 r2 4
	sti	r6 r2 6
	sti	r5 r2 7
	sti	r4 r2 8
	sti	r7 r2 9
	fsti	f5 r2 10
	add	r4 r0 r8
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 13
	call	L_isqrt_1890
	subi	r2 r2 13
	fldi	f3 r2 10
	fmul	f2 f3 f2
	fbne	f2 f0 L_else_22675
	addi	r4 r0 1
	jump	L_cont_22676
L_else_22675 : 
	addi	r4 r0 0
L_cont_22676 : 
	bne	r4 r0 L_else_22677
	fldi	f3 r0 38
	fdiv	f2 f3 f2
	jump	L_cont_22678
L_else_22677 : 
	fldi	f2 r0 38
L_cont_22678 : 
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
	fldi	f2 r0 38
	addi	r5 r0 4141
	ldi	r6 r2 7
	ldi	r7 r2 8
	add	r8 r7 r6
	ldi	r8 r8 0
	fldi	f3 r0 27
	add	r6 r0 r8
	addi	r2 r2 13
	call	L_trace_ray_2238
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
	bgt	r0 r9 L_else_22679
	ldi	r9 r6 3
	add	r9 r9 r8
	ldi	r9 r9 0
	sti	r6 r2 12
	bne	r9 r0 L_else_22681
	jump	L_cont_22682
L_else_22681 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f2 L_else_22683
	addi	r6 r0 0
	jump	L_cont_22684
L_else_22683 : 
	addi	r6 r0 1
L_cont_22684 : 
	bne	r6 r0 L_else_22685
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 18
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 18
	jump	L_cont_22686
L_else_22685 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 18
	call	L_trace_diffuse_ray_2244
	subi	r2 r2 18
L_cont_22686 : 
	addi	r7 r0 116
	ldi	r4 r2 16
	ldi	r5 r2 15
	ldi	r6 r2 14
	addi	r2 r2 18
	call	L_iter_trace_diffuse_rays_2247
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
L_cont_22682 : 
	addi	r5 r0 1
	ldi	r4 r2 12
	addi	r2 r2 18
	call	L_pretrace_diffuse_rays_2298
	subi	r2 r2 18
	jump	L_cont_22680
L_else_22679 : 
L_cont_22680 : 
	ldi	r4 r2 7
	addi	r5 r4 -1
	ldi	r4 r2 6
	addi	r4 r4 1
	addi	r6 r0 5
	bgt	r6 r4 L_else_22687
	addi	r6 r4 -5
	jump	L_cont_22688
L_else_22687 : 
	add	r6 r0 r4
L_cont_22688 : 
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r4 r2 8
	jump	L_pretrace_pixels_2301
L_else_22672 : 
	return
L_pretrace_line_2308 : 
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
	jump	L_pretrace_pixels_2301
L_scan_pixel_2312 : 
	addi	r9 r0 4130
	ldi	r9 r9 0
	bgt	r9 r4 L_else_22690
	return
L_else_22690 : 
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
	bgt	r9 r10 L_else_22692
	addi	r9 r0 0
	jump	L_cont_22693
L_else_22692 : 
	bgt	r5 r0 L_else_22694
	addi	r9 r0 0
	jump	L_cont_22695
L_else_22694 : 
	addi	r9 r0 4130
	ldi	r9 r9 0
	addi	r10 r4 1
	bgt	r9 r10 L_else_22696
	addi	r9 r0 0
	jump	L_cont_22697
L_else_22696 : 
	bgt	r4 r0 L_else_22698
	addi	r9 r0 0
	jump	L_cont_22699
L_else_22698 : 
	addi	r9 r0 1
L_cont_22699 : 
L_cont_22697 : 
L_cont_22695 : 
L_cont_22693 : 
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	sti	r7 r2 3
	sti	r4 r2 4
	bne	r9 r0 L_else_22700
	add	r9 r7 r4
	ldi	r9 r9 0
	addi	r10 r0 0
	ldi	r11 r9 2
	add	r11 r11 r10
	ldi	r11 r11 0
	bgt	r0 r11 L_else_22702
	ldi	r11 r9 3
	add	r11 r11 r10
	ldi	r11 r11 0
	sti	r9 r2 5
	bne	r11 r0 L_else_22704
	jump	L_cont_22705
L_else_22704 : 
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 7
	call	L_calc_diffuse_using_1point_2260
	subi	r2 r2 7
L_cont_22705 : 
	addi	r5 r0 1
	ldi	r4 r2 5
	addi	r2 r2 7
	call	L_do_without_neighbors_2269
	subi	r2 r2 7
	jump	L_cont_22703
L_else_22702 : 
L_cont_22703 : 
	jump	L_cont_22701
L_else_22700 : 
	addi	r9 r0 0
	add	r10 r7 r4
	ldi	r10 r10 0
	ldi	r11 r10 2
	add	r11 r11 r9
	ldi	r11 r11 0
	bgt	r0 r11 L_else_22706
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
	bne	r12 r11 L_else_22708
	add	r12 r8 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22710
	addi	r12 r4 -1
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22712
	addi	r12 r4 1
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_22714
	addi	r11 r0 1
	jump	L_cont_22715
L_else_22714 : 
	addi	r11 r0 0
L_cont_22715 : 
	jump	L_cont_22713
L_else_22712 : 
	addi	r11 r0 0
L_cont_22713 : 
	jump	L_cont_22711
L_else_22710 : 
	addi	r11 r0 0
L_cont_22711 : 
	jump	L_cont_22709
L_else_22708 : 
	addi	r11 r0 0
L_cont_22709 : 
	bne	r11 r0 L_else_22716
	add	r10 r7 r4
	ldi	r10 r10 0
	add	r5 r0 r9
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_do_without_neighbors_2269
	subi	r2 r2 7
	jump	L_cont_22717
L_else_22716 : 
	ldi	r10 r10 3
	add	r10 r10 r9
	ldi	r10 r10 0
	bne	r10 r0 L_else_22718
	jump	L_cont_22719
L_else_22718 : 
	add	r5 r0 r6
	add	r6 r0 r7
	add	r7 r0 r8
	add	r8 r0 r9
	addi	r2 r2 7
	call	L_calc_diffuse_using_5points_2263
	subi	r2 r2 7
L_cont_22719 : 
	addi	r9 r0 1
	ldi	r4 r2 4
	ldi	r5 r2 2
	ldi	r6 r2 1
	ldi	r7 r2 3
	ldi	r8 r2 0
	addi	r2 r2 7
	call	L_try_exploit_neighbors_2285
	subi	r2 r2 7
L_cont_22717 : 
	jump	L_cont_22707
L_else_22706 : 
L_cont_22707 : 
L_cont_22701 : 
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
	bgt	r5 r4 L_else_22720
	return
L_else_22720 : 
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
	bgt	r5 r8 L_else_22722
	addi	r5 r0 0
	jump	L_cont_22723
L_else_22722 : 
	bgt	r6 r0 L_else_22724
	addi	r5 r0 0
	jump	L_cont_22725
L_else_22724 : 
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r8 r4 1
	bgt	r5 r8 L_else_22726
	addi	r5 r0 0
	jump	L_cont_22727
L_else_22726 : 
	bgt	r4 r0 L_else_22728
	addi	r5 r0 0
	jump	L_cont_22729
L_else_22728 : 
	addi	r5 r0 1
L_cont_22729 : 
L_cont_22727 : 
L_cont_22725 : 
L_cont_22723 : 
	sti	r4 r2 6
	bne	r5 r0 L_else_22730
	add	r5 r7 r4
	ldi	r5 r5 0
	addi	r8 r0 0
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 8
	call	L_do_without_neighbors_2269
	subi	r2 r2 8
	jump	L_cont_22731
L_else_22730 : 
	addi	r9 r0 0
	ldi	r5 r2 1
	ldi	r8 r2 0
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 8
	call	L_try_exploit_neighbors_2285
	subi	r2 r2 8
L_cont_22731 : 
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
	jump	L_scan_pixel_2312
L_scan_line_2318 : 
	addi	r9 r0 4130
	ldi	r9 r9 1
	bgt	r9 r4 L_else_22732
	return
L_else_22732 : 
	addi	r9 r0 4130
	ldi	r9 r9 1
	addi	r9 r9 -1
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r5 r2 2
	sti	r4 r2 3
	sti	r6 r2 4
	bgt	r9 r4 L_else_22734
	jump	L_cont_22735
L_else_22734 : 
	addi	r9 r4 1
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_pretrace_line_2308
	subi	r2 r2 6
L_cont_22735 : 
	addi	r4 r0 0
	addi	r5 r0 4130
	ldi	r5 r5 0
	bgt	r5 r0 L_else_22736
	jump	L_cont_22737
L_else_22736 : 
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
	bgt	r5 r8 L_else_22738
	addi	r5 r0 0
	jump	L_cont_22739
L_else_22738 : 
	bgt	r6 r0 L_else_22740
	addi	r5 r0 0
	jump	L_cont_22741
L_else_22740 : 
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r8 r0 1
	bgt	r5 r8 L_else_22742
	addi	r5 r0 0
	jump	L_cont_22743
L_else_22742 : 
	addi	r5 r0 0
L_cont_22743 : 
L_cont_22741 : 
L_cont_22739 : 
	bne	r5 r0 L_else_22744
	add	r4 r7 r4
	ldi	r4 r4 0
	addi	r5 r0 0
	addi	r2 r2 6
	call	L_do_without_neighbors_2269
	subi	r2 r2 6
	jump	L_cont_22745
L_else_22744 : 
	addi	r9 r0 0
	ldi	r5 r2 2
	ldi	r8 r2 1
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 6
	call	L_try_exploit_neighbors_2285
	subi	r2 r2 6
L_cont_22745 : 
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
	call	L_scan_pixel_2312
	subi	r2 r2 6
L_cont_22737 : 
	ldi	r4 r2 3
	addi	r5 r4 1
	ldi	r4 r2 0
	addi	r4 r4 2
	addi	r6 r0 5
	bgt	r6 r4 L_else_22746
	addi	r6 r4 -5
	jump	L_cont_22747
L_else_22746 : 
	add	r6 r0 r4
L_cont_22747 : 
	addi	r4 r0 4130
	ldi	r4 r4 1
	bgt	r4 r5 L_else_22748
	return
L_else_22748 : 
	addi	r4 r0 4130
	ldi	r4 r4 1
	addi	r4 r4 -1
	sti	r6 r2 5
	sti	r5 r2 6
	bgt	r4 r5 L_else_22750
	jump	L_cont_22751
L_else_22750 : 
	addi	r4 r5 1
	ldi	r7 r2 2
	add	r5 r0 r4
	add	r4 r0 r7
	addi	r2 r2 8
	call	L_pretrace_line_2308
	subi	r2 r2 8
L_cont_22751 : 
	addi	r4 r0 0
	ldi	r5 r2 6
	ldi	r6 r2 4
	ldi	r7 r2 1
	ldi	r8 r2 2
	addi	r2 r2 8
	call	L_scan_pixel_2312
	subi	r2 r2 8
	ldi	r4 r2 6
	addi	r4 r4 1
	ldi	r5 r2 5
	addi	r5 r5 2
	addi	r6 r0 5
	bgt	r6 r5 L_else_22752
	addi	r8 r5 -5
	jump	L_cont_22753
L_else_22752 : 
	add	r8 r0 r5
L_cont_22753 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	ldi	r7 r2 4
	jump	L_scan_line_2318
L_create_pixel_2326 : 
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
L_init_line_elements_2328 : 
	bgt	r0 r5 L_else_22754
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
	bgt	r0 r4 L_else_22755
	sti	r4 r2 10
	addi	r2 r2 12
	call	L_create_pixel_2326
	subi	r2 r2 12
	ldi	r5 r2 10
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	jump	L_init_line_elements_2328
L_else_22755 : 
	add	r4 r0 r6
	return
L_else_22754 : 
	add	r4 r0 r4
	return
L_calc_dirvec_2338 : 
	addi	r7 r0 5
	bgt	r7 r4 L_else_22756
	fmul	f4 f2 f2
	fmul	f5 f3 f3
	fadd	f4 f4 f5
	fldi	f5 r0 38
	fadd	f4 f4 f5
	fldi	f5 r0 38
	fbgt	f4 f5 L_else_22757
	fldi	f5 r0 38
	jump	L_cont_22758
L_else_22757 : 
	fldi	f5 r0 38
	fdiv	f5 f5 f4
L_cont_22758 : 
	fldi	f6 r0 30
	fmul	f7 f4 f5
	fmul	f7 f7 f5
	fsub	f6 f6 f7
	fmul	f5 f5 f6
	fldi	f6 r0 29
	fdiv	f5 f5 f6
	fldi	f6 r0 30
	fmul	f7 f4 f5
	fmul	f7 f7 f5
	fsub	f6 f6 f7
	fmul	f5 f5 f6
	fldi	f6 r0 29
	fdiv	f5 f5 f6
	addi	r4 r0 13
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f3 r2 2
	fsti	f2 r2 4
	fsti	f4 r2 6
	fadd	f3 f0 f5
	fadd	f2 f0 f4
	addi	r2 r2 9
	call	L_isqrt_1890
	subi	r2 r2 9
	fldi	f3 r2 6
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fdiv	f3 f3 f2
	fldi	f4 r2 2
	fdiv	f4 f4 f2
	fldi	f5 r0 38
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
L_else_22756 : 
	fmul	f2 f3 f3
	fldi	f3 r0 7
	fadd	f2 f2 f3
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_22760
	fldi	f3 r0 38
	jump	L_cont_22761
L_else_22760 : 
	fldi	f3 r0 38
	fdiv	f3 f3 f2
L_cont_22761 : 
	fldi	f6 r0 30
	fmul	f7 f2 f3
	fmul	f7 f7 f3
	fsub	f6 f6 f7
	fmul	f3 f3 f6
	fldi	f6 r0 29
	fdiv	f3 f3 f6
	addi	r7 r0 14
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f5 r2 8
	sti	r4 r2 10
	fsti	f4 r2 12
	fsti	f2 r2 14
	add	r4 r0 r7
	addi	r2 r2 17
	call	L_isqrt_1890
	subi	r2 r2 17
	fldi	f3 r2 14
	fmul	f2 f3 f2
	fldi	f3 r0 38
	fdiv	f3 f3 f2
	fsti	f2 r2 16
	fadd	f2 f0 f3
	addi	r2 r2 19
	call	L_atan_1888
	subi	r2 r2 19
	fldi	f3 r2 12
	fmul	f2 f2 f3
	fldi	f4 r0 56
	fldi	f5 r0 55
	fsti	f2 r2 18
	fbgt	f2 f5 L_else_22763
	fldi	f6 r0 54
	fbgt	f6 f2 L_else_22765
	fldi	f4 r0 53
	fldi	f6 r0 52
	fldi	f7 r0 51
	fbgt	f2 f0 L_else_22767
	fldi	f4 r0 37
	fbgt	f4 f2 L_else_22769
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_22770
L_else_22769 : 
	fldi	f4 r0 36
	fbgt	f4 f2 L_else_22771
	fadd	f4 f6 f2
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 44
	fmul	f9 f10 f9
	fldi	f10 r0 43
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 42
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 41
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 40
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 39
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 38
	fadd	f4 f4 f5
	fsub	f2 f0 f4
	jump	L_cont_22772
L_else_22771 : 
	fadd	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 50
	fmul	f5 f11 f5
	fldi	f11 r0 49
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 48
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 47
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 46
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 45
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f4 f5 f4
	fsub	f2 f0 f4
L_cont_22772 : 
L_cont_22770 : 
	jump	L_cont_22768
L_else_22767 : 
	fbgt	f2 f4 L_else_22773
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_22774
L_else_22773 : 
	fbgt	f2 f7 L_else_22775
	fsub	f4 f2 f6
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 44
	fmul	f9 f10 f9
	fldi	f10 r0 43
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 42
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 41
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 40
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 39
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 38
	fadd	f2 f4 f5
	jump	L_cont_22776
L_else_22775 : 
	fsub	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 50
	fmul	f5 f11 f5
	fldi	f11 r0 49
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 48
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 47
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 46
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 45
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f2 f5 f4
L_cont_22776 : 
L_cont_22774 : 
L_cont_22768 : 
	jump	L_cont_22766
L_else_22765 : 
	fadd	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 21
	call	L_sin_1884
	subi	r2 r2 21
L_cont_22766 : 
	jump	L_cont_22764
L_else_22763 : 
	fsub	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 21
	call	L_sin_1884
	subi	r2 r2 21
L_cont_22764 : 
	fldi	f3 r2 18
	fsti	f2 r2 20
	fadd	f2 f0 f3
	addi	r2 r2 23
	call	L_cos_1886
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
	fldi	f4 r0 38
	fbgt	f3 f4 L_else_22777
	fldi	f4 r0 38
	jump	L_cont_22778
L_else_22777 : 
	fldi	f4 r0 38
	fdiv	f4 f4 f3
L_cont_22778 : 
	fldi	f5 r0 30
	fmul	f6 f3 f4
	fmul	f6 f6 f4
	fsub	f5 f5 f6
	fmul	f4 f4 f5
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	addi	r5 r0 14
	fsti	f2 r2 22
	sti	r4 r2 24
	fsti	f3 r2 26
	add	r4 r0 r5
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	addi	r2 r2 29
	call	L_isqrt_1890
	subi	r2 r2 29
	fldi	f3 r2 26
	fmul	f2 f3 f2
	fldi	f3 r0 38
	fdiv	f3 f3 f2
	fsti	f2 r2 28
	fadd	f2 f0 f3
	addi	r2 r2 31
	call	L_atan_1888
	subi	r2 r2 31
	fldi	f3 r2 8
	fmul	f2 f2 f3
	fldi	f4 r0 56
	fldi	f5 r0 55
	fsti	f2 r2 30
	fbgt	f2 f5 L_else_22780
	fldi	f6 r0 54
	fbgt	f6 f2 L_else_22782
	fldi	f4 r0 53
	fldi	f6 r0 52
	fldi	f7 r0 51
	fbgt	f2 f0 L_else_22784
	fldi	f4 r0 37
	fbgt	f4 f2 L_else_22786
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_22787
L_else_22786 : 
	fldi	f4 r0 36
	fbgt	f4 f2 L_else_22788
	fadd	f4 f6 f2
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 44
	fmul	f9 f10 f9
	fldi	f10 r0 43
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 42
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 41
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 40
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 39
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 38
	fadd	f4 f4 f5
	fsub	f2 f0 f4
	jump	L_cont_22789
L_else_22788 : 
	fadd	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 50
	fmul	f5 f11 f5
	fldi	f11 r0 49
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 48
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 47
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 46
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 45
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f4 f5 f4
	fsub	f2 f0 f4
L_cont_22789 : 
L_cont_22787 : 
	jump	L_cont_22785
L_else_22784 : 
	fbgt	f2 f4 L_else_22790
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_22791
L_else_22790 : 
	fbgt	f2 f7 L_else_22792
	fsub	f4 f2 f6
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 44
	fmul	f9 f10 f9
	fldi	f10 r0 43
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 42
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 41
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 40
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 39
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 38
	fadd	f2 f4 f5
	jump	L_cont_22793
L_else_22792 : 
	fsub	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 50
	fmul	f5 f11 f5
	fldi	f11 r0 49
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 48
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 47
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 46
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 45
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f2 f5 f4
L_cont_22793 : 
L_cont_22791 : 
L_cont_22785 : 
	jump	L_cont_22783
L_else_22782 : 
	fadd	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 33
	call	L_sin_1884
	subi	r2 r2 33
L_cont_22783 : 
	jump	L_cont_22781
L_else_22780 : 
	fsub	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 33
	call	L_sin_1884
	subi	r2 r2 33
L_cont_22781 : 
	fldi	f3 r2 30
	fsti	f2 r2 32
	fadd	f2 f0 f3
	addi	r2 r2 35
	call	L_cos_1886
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
	jump	L_calc_dirvec_2338
L_calc_dirvecs_2346 : 
	bgt	r0 r4 L_else_22794
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
	call	L_calc_dirvec_2338
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
	call	L_calc_dirvec_2338
	subi	r2 r2 6
	ldi	r4 r2 4
	addi	r4 r4 -1
	ldi	r5 r2 2
	addi	r5 r5 1
	addi	r6 r0 5
	bgt	r6 r5 L_else_22795
	addi	r5 r5 -5
	jump	L_cont_22796
L_else_22795 : 
	add	r5 r0 r5
L_cont_22796 : 
	fldi	f2 r2 0
	ldi	r6 r2 3
	jump	L_calc_dirvecs_2346
L_else_22794 : 
	return
L_calc_dirvec_rows_2351 : 
	bgt	r0 r4 L_else_22798
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
	call	L_calc_dirvecs_2346
	subi	r2 r2 4
	ldi	r4 r2 2
	addi	r4 r4 -1
	ldi	r5 r2 1
	addi	r5 r5 2
	addi	r6 r0 5
	bgt	r6 r5 L_else_22799
	addi	r5 r5 -5
	jump	L_cont_22800
L_else_22799 : 
	add	r5 r0 r5
L_cont_22800 : 
	ldi	r6 r2 0
	addi	r6 r6 4
	bgt	r0 r4 L_else_22801
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
	call	L_calc_dirvecs_2346
	subi	r2 r2 7
	ldi	r4 r2 5
	addi	r4 r4 -1
	ldi	r5 r2 4
	addi	r5 r5 2
	addi	r6 r0 5
	bgt	r6 r5 L_else_22802
	addi	r5 r5 -5
	jump	L_cont_22803
L_else_22802 : 
	add	r5 r0 r5
L_cont_22803 : 
	ldi	r6 r2 3
	addi	r6 r6 4
	jump	L_calc_dirvec_rows_2351
L_else_22801 : 
	return
L_else_22798 : 
	return
L_create_dirvec_elements_2357 : 
	bgt	r0 r5 L_else_22806
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
	bgt	r0 r4 L_else_22807
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
	bgt	r0 r4 L_else_22808
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
	bgt	r0 r4 L_else_22809
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
	jump	L_create_dirvec_elements_2357
L_else_22809 : 
	return
L_else_22808 : 
	return
L_else_22807 : 
	return
L_else_22806 : 
	return
L_create_dirvecs_2360 : 
	bgt	r0 r4 L_else_22814
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
	call	L_create_dirvec_elements_2357
	subi	r2 r2 12
	ldi	r4 r2 0
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22815
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
	call	L_create_dirvec_elements_2357
	subi	r2 r2 21
	ldi	r4 r2 11
	addi	r4 r4 -1
	jump	L_create_dirvecs_2360
L_else_22815 : 
	return
L_else_22814 : 
	return
L_init_dirvec_constants_2362 : 
	bgt	r0 r5 L_else_22818
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
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 3
	ldi	r4 r2 1
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22819
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4144
	ldi	r7 r7 0
	addi	r7 r7 -1
	sti	r4 r2 2
	bgt	r0 r7 L_else_22820
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 3
	bne	r11 r12 L_else_22822
	sti	r7 r2 4
	sti	r9 r2 5
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_setup_rect_table_2135
	subi	r2 r2 7
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22823
L_else_22822 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_22824
	sti	r7 r2 4
	sti	r9 r2 5
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_setup_surface_table_2138
	subi	r2 r2 7
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22825
L_else_22824 : 
	sti	r7 r2 4
	sti	r9 r2 5
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_setup_second_table_2141
	subi	r2 r2 7
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22825 : 
L_cont_22823 : 
	addi	r5 r5 -1
	ldi	r4 r2 3
	addi	r2 r2 7
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 7
	jump	L_cont_22821
L_else_22820 : 
L_cont_22821 : 
	ldi	r4 r2 2
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22826
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
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 8
	ldi	r4 r2 6
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22827
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4144
	ldi	r7 r7 0
	addi	r7 r7 -1
	sti	r4 r2 7
	bgt	r0 r7 L_else_22828
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 8
	bne	r11 r12 L_else_22830
	sti	r7 r2 9
	sti	r9 r2 10
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 12
	call	L_setup_rect_table_2135
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22831
L_else_22830 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_22832
	sti	r7 r2 9
	sti	r9 r2 10
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 12
	call	L_setup_surface_table_2138
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22833
L_else_22832 : 
	sti	r7 r2 9
	sti	r9 r2 10
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 12
	call	L_setup_second_table_2141
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22833 : 
L_cont_22831 : 
	addi	r5 r5 -1
	ldi	r4 r2 8
	addi	r2 r2 12
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 12
	jump	L_cont_22829
L_else_22828 : 
L_cont_22829 : 
	ldi	r4 r2 7
	addi	r5 r4 -1
	ldi	r4 r2 0
	jump	L_init_dirvec_constants_2362
L_else_22827 : 
	return
L_else_22826 : 
	return
L_else_22819 : 
	return
L_else_22818 : 
	return
L_init_vecset_constants_2365 : 
	bgt	r0 r4 L_else_22838
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
	bgt	r0 r7 L_else_22839
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 2
	bne	r11 r12 L_else_22841
	sti	r7 r2 3
	sti	r9 r2 4
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_setup_rect_table_2135
	subi	r2 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22842
L_else_22841 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_22843
	sti	r7 r2 3
	sti	r9 r2 4
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_setup_surface_table_2138
	subi	r2 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22844
L_else_22843 : 
	sti	r7 r2 3
	sti	r9 r2 4
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_setup_second_table_2141
	subi	r2 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22844 : 
L_cont_22842 : 
	addi	r5 r5 -1
	ldi	r4 r2 2
	addi	r2 r2 6
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 6
	jump	L_cont_22840
L_else_22839 : 
L_cont_22840 : 
	addi	r4 r0 118
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	add	r5 r0 r6
	addi	r2 r2 6
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 6
	addi	r4 r0 117
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	bgt	r0 r6 L_else_22845
	addi	r7 r0 5042
	add	r7 r7 r6
	ldi	r7 r7 0
	ldi	r8 r4 1
	ldi	r9 r4 0
	ldi	r10 r7 1
	addi	r11 r0 1
	sti	r4 r2 5
	bne	r10 r11 L_else_22847
	sti	r6 r2 6
	sti	r8 r2 7
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_rect_table_2135
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22848
L_else_22847 : 
	addi	r11 r0 2
	bne	r10 r11 L_else_22849
	sti	r6 r2 6
	sti	r8 r2 7
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_surface_table_2138
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22850
L_else_22849 : 
	sti	r6 r2 6
	sti	r8 r2 7
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_second_table_2141
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22850 : 
L_cont_22848 : 
	addi	r5 r5 -1
	ldi	r4 r2 5
	addi	r2 r2 9
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 9
	jump	L_cont_22846
L_else_22845 : 
L_cont_22846 : 
	addi	r5 r0 116
	ldi	r4 r2 1
	addi	r2 r2 9
	call	L_init_dirvec_constants_2362
	subi	r2 r2 9
	ldi	r4 r2 0
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22851
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
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 11
	addi	r4 r0 118
	ldi	r5 r2 9
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 4144
	ldi	r6 r6 0
	addi	r6 r6 -1
	bgt	r0 r6 L_else_22852
	addi	r7 r0 5042
	add	r7 r7 r6
	ldi	r7 r7 0
	ldi	r8 r4 1
	ldi	r9 r4 0
	ldi	r10 r7 1
	addi	r11 r0 1
	sti	r4 r2 10
	bne	r10 r11 L_else_22854
	sti	r6 r2 11
	sti	r8 r2 12
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 14
	call	L_setup_rect_table_2135
	subi	r2 r2 14
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22855
L_else_22854 : 
	addi	r11 r0 2
	bne	r10 r11 L_else_22856
	sti	r6 r2 11
	sti	r8 r2 12
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 14
	call	L_setup_surface_table_2138
	subi	r2 r2 14
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22857
L_else_22856 : 
	sti	r6 r2 11
	sti	r8 r2 12
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 14
	call	L_setup_second_table_2141
	subi	r2 r2 14
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22857 : 
L_cont_22855 : 
	addi	r5 r5 -1
	ldi	r4 r2 10
	addi	r2 r2 14
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 14
	jump	L_cont_22853
L_else_22852 : 
L_cont_22853 : 
	addi	r5 r0 117
	ldi	r4 r2 9
	addi	r2 r2 14
	call	L_init_dirvec_constants_2362
	subi	r2 r2 14
	ldi	r4 r2 8
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22858
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
	bgt	r0 r7 L_else_22859
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 15
	bne	r11 r12 L_else_22861
	sti	r7 r2 16
	sti	r9 r2 17
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 19
	call	L_setup_rect_table_2135
	subi	r2 r2 19
	ldi	r5 r2 16
	ldi	r6 r2 17
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22862
L_else_22861 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_22863
	sti	r7 r2 16
	sti	r9 r2 17
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 19
	call	L_setup_surface_table_2138
	subi	r2 r2 19
	ldi	r5 r2 16
	ldi	r6 r2 17
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22864
L_else_22863 : 
	sti	r7 r2 16
	sti	r9 r2 17
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 19
	call	L_setup_second_table_2141
	subi	r2 r2 19
	ldi	r5 r2 16
	ldi	r6 r2 17
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22864 : 
L_cont_22862 : 
	addi	r5 r5 -1
	ldi	r4 r2 15
	addi	r2 r2 19
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 19
	jump	L_cont_22860
L_else_22859 : 
L_cont_22860 : 
	addi	r5 r0 118
	ldi	r4 r2 14
	addi	r2 r2 19
	call	L_init_dirvec_constants_2362
	subi	r2 r2 19
	ldi	r4 r2 13
	addi	r4 r4 -1
	bgt	r0 r4 L_else_22865
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	sti	r4 r2 18
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 20
	call	L_init_dirvec_constants_2362
	subi	r2 r2 20
	ldi	r4 r2 18
	addi	r4 r4 -1
	jump	L_init_vecset_constants_2365
L_else_22865 : 
	return
L_else_22858 : 
	return
L_else_22851 : 
	return
L_else_22838 : 
	return
L_main_21285 : 
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
	bgt	r0 r5 L_else_21286
	sti	r5 r2 9
	sti	r4 r2 10
	addi	r2 r2 12
	call	L_create_pixel_2326
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	addi	r2 r2 12
	call	L_init_line_elements_2328
	subi	r2 r2 12
	jump	L_cont_21287
L_else_21286 : 
	add	r4 r0 r4
L_cont_21287 : 
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
	bgt	r0 r5 L_else_21288
	sti	r5 r2 21
	sti	r4 r2 22
	addi	r2 r2 24
	call	L_create_pixel_2326
	subi	r2 r2 24
	ldi	r5 r2 21
	ldi	r6 r2 22
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	addi	r2 r2 24
	call	L_init_line_elements_2328
	subi	r2 r2 24
	jump	L_cont_21289
L_else_21288 : 
	add	r4 r0 r4
L_cont_21289 : 
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
	bgt	r0 r5 L_else_21290
	sti	r5 r2 33
	sti	r4 r2 34
	addi	r2 r2 36
	call	L_create_pixel_2326
	subi	r2 r2 36
	ldi	r5 r2 33
	ldi	r6 r2 34
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	addi	r2 r2 36
	call	L_init_line_elements_2328
	subi	r2 r2 36
	jump	L_cont_21291
L_else_21290 : 
	add	r4 r0 r4
L_cont_21291 : 
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
	call	L_cos_1886
	subi	r2 r2 43
	fldi	f3 r2 40
	fsti	f2 r2 42
	fadd	f2 f0 f3
	addi	r2 r2 45
	call	L_sin_1884
	subi	r2 r2 45
	fsti	f2 r2 44
	addi	r2 r2 47
	call	min_caml_read_float
	subi	r2 r2 47
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 46
	addi	r2 r2 49
	call	L_cos_1886
	subi	r2 r2 49
	fldi	f3 r2 46
	fsti	f2 r2 48
	fadd	f2 f0 f3
	addi	r2 r2 51
	call	L_sin_1884
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
	call	L_sin_1884
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
	call	L_cos_1886
	subi	r2 r2 55
	fldi	f3 r2 52
	fsti	f2 r2 54
	fadd	f2 f0 f3
	addi	r2 r2 57
	call	L_sin_1884
	subi	r2 r2 57
	addi	r4 r0 4111
	fldi	f3 r2 54
	fmul	f2 f3 f2
	fsti	f2 r4 0
	fldi	f2 r2 52
	addi	r2 r2 57
	call	L_cos_1886
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
	call	L_read_object_2039
	subi	r2 r2 58
	addi	r4 r0 0
	addi	r5 r0 0
	sti	r4 r2 57
	add	r4 r0 r5
	addi	r2 r2 59
	call	L_read_net_item_2043
	subi	r2 r2 59
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_21293
	jump	L_cont_21294
L_else_21293 : 
	addi	r5 r0 4155
	ldi	r6 r2 57
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r0 1
	addi	r2 r2 59
	call	L_read_and_network_2047
	subi	r2 r2 59
L_cont_21294 : 
	addi	r4 r0 4255
	addi	r5 r0 0
	addi	r6 r0 0
	sti	r4 r2 58
	sti	r5 r2 59
	add	r4 r0 r6
	addi	r2 r2 61
	call	L_read_net_item_2043
	subi	r2 r2 61
	add	r5 r0 r4
	ldi	r4 r5 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_21295
	addi	r4 r0 1
	addi	r2 r2 61
	call	min_caml_create_array
	subi	r2 r2 61
	jump	L_cont_21296
L_else_21295 : 
	addi	r4 r0 1
	sti	r5 r2 60
	addi	r2 r2 62
	call	L_read_or_network_2045
	subi	r2 r2 62
	ldi	r5 r2 59
	add	r5 r4 r5
	ldi	r6 r2 60
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_21296 : 
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
	bgt	r0 r5 L_else_21297
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21299
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21301
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 63
	call	L_sdiv10_1896
	subi	r2 r2 63
	jump	L_cont_21302
L_else_21301 : 
	addi	r4 r0 2
L_cont_21302 : 
	jump	L_cont_21300
L_else_21299 : 
	addi	r4 r0 1
L_cont_21300 : 
	jump	L_cont_21298
L_else_21297 : 
	addi	r4 r0 0
L_cont_21298 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21303
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21305
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21307
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 63
	call	L_sdiv10_1896
	subi	r2 r2 63
	jump	L_cont_21308
L_else_21307 : 
	addi	r4 r0 2
L_cont_21308 : 
	jump	L_cont_21306
L_else_21305 : 
	addi	r4 r0 1
L_cont_21306 : 
	jump	L_cont_21304
L_else_21303 : 
	addi	r4 r0 0
L_cont_21304 : 
	addi	r4 r4 48
	addi	r2 r2 63
	call	min_caml_print_char
	subi	r2 r2 63
	ldi	r4 r2 61
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21309
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21311
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21313
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 63
	call	L_sdiv10_1896
	subi	r2 r2 63
	jump	L_cont_21314
L_else_21313 : 
	addi	r4 r0 2
L_cont_21314 : 
	jump	L_cont_21312
L_else_21311 : 
	addi	r4 r0 1
L_cont_21312 : 
	jump	L_cont_21310
L_else_21309 : 
	addi	r4 r0 0
L_cont_21310 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21315
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21317
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21319
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 63
	call	L_sdiv10_1896
	subi	r2 r2 63
	jump	L_cont_21320
L_else_21319 : 
	addi	r4 r0 2
L_cont_21320 : 
	jump	L_cont_21318
L_else_21317 : 
	addi	r4 r0 1
L_cont_21318 : 
	jump	L_cont_21316
L_else_21315 : 
	addi	r4 r0 0
L_cont_21316 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 61
	sub	r4 r5 r4
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21321
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21323
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21325
	addi	r4 r4 -10
	addi	r6 r0 3
	add	r5 r0 r6
	addi	r2 r2 63
	call	L_sdiv10_1896
	subi	r2 r2 63
	jump	L_cont_21326
L_else_21325 : 
	addi	r4 r0 2
L_cont_21326 : 
	jump	L_cont_21324
L_else_21323 : 
	addi	r4 r0 1
L_cont_21324 : 
	jump	L_cont_21322
L_else_21321 : 
	addi	r4 r0 0
L_cont_21322 : 
	addi	r4 r4 48
	addi	r2 r2 63
	call	min_caml_print_char
	subi	r2 r2 63
	ldi	r4 r2 61
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21327
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21329
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21331
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 63
	call	L_sdiv10_1896
	subi	r2 r2 63
	jump	L_cont_21332
L_else_21331 : 
	addi	r4 r0 2
L_cont_21332 : 
	jump	L_cont_21330
L_else_21329 : 
	addi	r4 r0 1
L_cont_21330 : 
	jump	L_cont_21328
L_else_21327 : 
	addi	r4 r0 0
L_cont_21328 : 
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
	bgt	r0 r5 L_else_21333
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21335
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21337
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 64
	call	L_sdiv10_1896
	subi	r2 r2 64
	jump	L_cont_21338
L_else_21337 : 
	addi	r4 r0 2
L_cont_21338 : 
	jump	L_cont_21336
L_else_21335 : 
	addi	r4 r0 1
L_cont_21336 : 
	jump	L_cont_21334
L_else_21333 : 
	addi	r4 r0 0
L_cont_21334 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21339
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21341
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21343
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 64
	call	L_sdiv10_1896
	subi	r2 r2 64
	jump	L_cont_21344
L_else_21343 : 
	addi	r4 r0 2
L_cont_21344 : 
	jump	L_cont_21342
L_else_21341 : 
	addi	r4 r0 1
L_cont_21342 : 
	jump	L_cont_21340
L_else_21339 : 
	addi	r4 r0 0
L_cont_21340 : 
	addi	r4 r4 48
	addi	r2 r2 64
	call	min_caml_print_char
	subi	r2 r2 64
	ldi	r4 r2 62
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21345
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21347
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21349
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 64
	call	L_sdiv10_1896
	subi	r2 r2 64
	jump	L_cont_21350
L_else_21349 : 
	addi	r4 r0 2
L_cont_21350 : 
	jump	L_cont_21348
L_else_21347 : 
	addi	r4 r0 1
L_cont_21348 : 
	jump	L_cont_21346
L_else_21345 : 
	addi	r4 r0 0
L_cont_21346 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21351
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21353
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21355
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 64
	call	L_sdiv10_1896
	subi	r2 r2 64
	jump	L_cont_21356
L_else_21355 : 
	addi	r4 r0 2
L_cont_21356 : 
	jump	L_cont_21354
L_else_21353 : 
	addi	r4 r0 1
L_cont_21354 : 
	jump	L_cont_21352
L_else_21351 : 
	addi	r4 r0 0
L_cont_21352 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 62
	sub	r4 r5 r4
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21357
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21359
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21361
	addi	r4 r4 -10
	addi	r6 r0 3
	add	r5 r0 r6
	addi	r2 r2 64
	call	L_sdiv10_1896
	subi	r2 r2 64
	jump	L_cont_21362
L_else_21361 : 
	addi	r4 r0 2
L_cont_21362 : 
	jump	L_cont_21360
L_else_21359 : 
	addi	r4 r0 1
L_cont_21360 : 
	jump	L_cont_21358
L_else_21357 : 
	addi	r4 r0 0
L_cont_21358 : 
	addi	r4 r4 48
	addi	r2 r2 64
	call	min_caml_print_char
	subi	r2 r2 64
	ldi	r4 r2 62
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21363
	addi	r5 r4 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21365
	addi	r5 r5 -10
	addi	r6 r5 -10
	bgt	r0 r6 L_else_21367
	addi	r5 r5 -10
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 64
	call	L_sdiv10_1896
	subi	r2 r2 64
	jump	L_cont_21368
L_else_21367 : 
	addi	r4 r0 2
L_cont_21368 : 
	jump	L_cont_21366
L_else_21365 : 
	addi	r4 r0 1
L_cont_21366 : 
	jump	L_cont_21364
L_else_21363 : 
	addi	r4 r0 0
L_cont_21364 : 
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
	call	L_sdiv10_1896
	subi	r2 r2 65
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21369
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21371
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21373
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_1896
	subi	r2 r2 65
	jump	L_cont_21374
L_else_21373 : 
	addi	r4 r0 2
L_cont_21374 : 
	jump	L_cont_21372
L_else_21371 : 
	addi	r4 r0 1
L_cont_21372 : 
	jump	L_cont_21370
L_else_21369 : 
	addi	r4 r0 0
L_cont_21370 : 
	addi	r4 r4 48
	addi	r2 r2 65
	call	min_caml_print_char
	subi	r2 r2 65
	addi	r4 r0 225
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_1896
	subi	r2 r2 65
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21375
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21377
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_21379
	addi	r4 r4 -10
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_1896
	subi	r2 r2 65
	jump	L_cont_21380
L_else_21379 : 
	addi	r4 r0 2
L_cont_21380 : 
	jump	L_cont_21378
L_else_21377 : 
	addi	r4 r0 1
L_cont_21378 : 
	jump	L_cont_21376
L_else_21375 : 
	addi	r4 r0 0
L_cont_21376 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 63
	sub	r4 r5 r4
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21381
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21383
	addi	r4 r4 -10
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21385
	addi	r4 r4 -10
	addi	r6 r0 3
	add	r5 r0 r6
	addi	r2 r2 65
	call	L_sdiv10_1896
	subi	r2 r2 65
	jump	L_cont_21386
L_else_21385 : 
	addi	r4 r0 2
L_cont_21386 : 
	jump	L_cont_21384
L_else_21383 : 
	addi	r4 r0 1
L_cont_21384 : 
	jump	L_cont_21382
L_else_21381 : 
	addi	r4 r0 0
L_cont_21382 : 
	addi	r4 r4 48
	addi	r2 r2 65
	call	min_caml_print_char
	subi	r2 r2 65
	addi	r4 r0 225
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_1896
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
	call	L_create_dirvec_elements_2357
	subi	r2 r2 69
	addi	r4 r0 3
	addi	r2 r2 69
	call	L_create_dirvecs_2360
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
	call	L_calc_dirvecs_2346
	subi	r2 r2 69
	addi	r4 r0 8
	addi	r5 r0 2
	addi	r6 r0 4
	addi	r2 r2 69
	call	L_calc_dirvec_rows_2351
	subi	r2 r2 69
	addi	r4 r0 4
	addi	r5 r0 4148
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r5 r0 119
	addi	r2 r2 69
	call	L_init_dirvec_constants_2362
	subi	r2 r2 69
	addi	r4 r0 3
	addi	r2 r2 69
	call	L_init_vecset_constants_2365
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
	bgt	r0 r5 L_else_21387
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r4 1
	ldi	r8 r4 0
	ldi	r9 r6 1
	addi	r10 r0 1
	sti	r4 r2 68
	bne	r9 r10 L_else_21389
	sti	r5 r2 69
	sti	r7 r2 70
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 72
	call	L_setup_rect_table_2135
	subi	r2 r2 72
	ldi	r5 r2 69
	ldi	r6 r2 70
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21390
L_else_21389 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_21391
	sti	r5 r2 69
	sti	r7 r2 70
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 72
	call	L_setup_surface_table_2138
	subi	r2 r2 72
	ldi	r5 r2 69
	ldi	r6 r2 70
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_21392
L_else_21391 : 
	sti	r5 r2 69
	sti	r7 r2 70
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 72
	call	L_setup_second_table_2141
	subi	r2 r2 72
	ldi	r5 r2 69
	ldi	r6 r2 70
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_21392 : 
L_cont_21390 : 
	addi	r5 r5 -1
	ldi	r4 r2 68
	addi	r2 r2 72
	call	L_iter_setup_dirvec_constants_2144
	subi	r2 r2 72
	jump	L_cont_21388
L_else_21387 : 
L_cont_21388 : 
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r4 r4 -1
	bgt	r0 r4 L_else_21393
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r5 2
	addi	r7 r0 2
	bne	r6 r7 L_else_21395
	ldi	r6 r5 7
	fldi	f2 r6 0
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_21397
	addi	r6 r0 0
	jump	L_cont_21398
L_else_21397 : 
	addi	r6 r0 1
L_cont_21398 : 
	bne	r6 r0 L_else_21399
	jump	L_cont_21400
L_else_21399 : 
	ldi	r6 r5 1
	addi	r7 r0 1
	bne	r6 r7 L_else_21401
	addi	r6 r0 4
	mul	r4 r4 r6
	addi	r6 r0 4147
	ldi	r6 r6 0
	fldi	f2 r0 38
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
	call	L_iter_setup_dirvec_constants_2144
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
	call	L_iter_setup_dirvec_constants_2144
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
	call	L_iter_setup_dirvec_constants_2144
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
	jump	L_cont_21402
L_else_21401 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_21405
	addi	r6 r0 4
	mul	r4 r4 r6
	addi	r4 r4 1
	addi	r6 r0 4147
	ldi	r6 r6 0
	fldi	f2 r0 38
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
	call	L_iter_setup_dirvec_constants_2144
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
	jump	L_cont_21406
L_else_21405 : 
L_cont_21406 : 
L_cont_21402 : 
L_cont_21400 : 
	jump	L_cont_21396
L_else_21395 : 
L_cont_21396 : 
	jump	L_cont_21394
L_else_21393 : 
L_cont_21394 : 
	addi	r5 r0 0
	addi	r6 r0 0
	ldi	r4 r2 23
	addi	r2 r2 113
	call	L_pretrace_line_2308
	subi	r2 r2 113
	addi	r4 r0 0
	addi	r8 r0 2
	ldi	r5 r2 11
	ldi	r6 r2 23
	ldi	r7 r2 35
	addi	r2 r2 113
	call	L_scan_line_2318
	subi	r2 r2 113
	addi	r4 r0 0
