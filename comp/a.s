	nop
	nop
	addi	r4 r0 170
	ptc	r4
	addi	r2 r0 256
	addi	r3 r0 1024
	addi	r4 r0 1006
	addi	r5 r0 0
	call	min_caml_create_array
	addi	r4 r0 1907
	sti	r4 r0 1905
	addi	r4 r0 1910
	sti	r4 r0 1906
	jump	min_caml_end
min_caml_create_array : 
	add	r7 r0 r3
	add	r3 r4 r3
	sub	r4 r3 r4
	add	r6 r0 r5
	sub	r5 r3 r4
	call	min_caml_init_array
	add	r4 r0 r7
	return
min_caml_init_array : 
	bne	r0 r5 L_else_24026
	return
L_else_24026 : 
	sti	r6 r4 0
	addi	r5 r5 -1
	addi	r4 r4 1
	jump	min_caml_init_array
min_caml_create_float_array : 
	add	r7 r0 r3
	add	r3 r4 r3
	sub	r4 r3 r4
	sub	r5 r3 r4
	call	min_caml_init_float_array
	add	r4 r0 r7
	return
min_caml_init_float_array : 
	bne	r0 r5 L_else_24027
	return
L_else_24027 : 
	fsti	f2 r4 0
	addi	r5 r5 -1
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
L_sin_1886 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_21259
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21261
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21263
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21265
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f6 f8 f2
	fmul	f7 f6 f2
	fmul	f4 f7 f2
	fmul	f5 f4 f2
	fmul	f2 f5 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_else_21265 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21267
	fadd	f2 f3 f9
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21267 : 
	fadd	f8 f5 f9
	fmul	f2 f8 f8
	fmul	f6 f8 f2
	fmul	f9 f6 f2
	fmul	f5 f9 f2
	fmul	f7 f5 f2
	fmul	f3 f7 f2
	fmul	f4 f3 f2
	fldi	f2 r0 7
	fmul	f4 f2 f4
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 9
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fadd	f2 f2 f8
	fsub	f2 f0 f2
	return
L_else_21263 : 
	fbgt	f9 f4 L_else_21269
	fmul	f2 f9 f9
	fmul	f7 f9 f2
	fmul	f8 f7 f2
	fmul	f5 f8 f2
	fmul	f6 f5 f2
	fmul	f4 f6 f2
	fmul	f3 f4 f2
	fldi	f2 r0 7
	fmul	f3 f2 f3
	fldi	f2 r0 8
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f7
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_else_21269 : 
	fbgt	f9 f2 L_else_21271
	fsub	f2 f9 f3
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	return
L_else_21271 : 
	fsub	f9 f5 f9
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_else_21261 : 
	fadd	f9 f9 f3
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_21273
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21275
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21277
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21279
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f7 f8 f2
	fmul	f6 f7 f2
	fmul	f5 f6 f2
	fmul	f4 f5 f2
	fmul	f3 f4 f2
	fldi	f2 r0 7
	fmul	f3 f2 f3
	fldi	f2 r0 8
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_else_21279 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21281
	fadd	f2 f3 f9
	fmul	f8 f2 f2
	fmul	f7 f8 f8
	fmul	f6 f7 f8
	fmul	f5 f6 f8
	fmul	f4 f5 f8
	fmul	f3 f4 f8
	fldi	f2 r0 14
	fmul	f3 f2 f3
	fldi	f2 r0 15
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21281 : 
	fadd	f9 f4 f9
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f7 f8 f2
	fmul	f6 f7 f2
	fmul	f5 f6 f2
	fmul	f4 f5 f2
	fmul	f3 f4 f2
	fldi	f2 r0 7
	fmul	f3 f2 f3
	fldi	f2 r0 8
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	fsub	f2 f0 f2
	return
L_else_21277 : 
	fbgt	f9 f5 L_else_21283
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f6 f8 f2
	fmul	f7 f6 f2
	fmul	f4 f7 f2
	fmul	f5 f4 f2
	fmul	f2 f5 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_else_21283 : 
	fbgt	f9 f2 L_else_21285
	fsub	f2 f9 f3
	fmul	f8 f2 f2
	fmul	f7 f8 f8
	fmul	f6 f7 f8
	fmul	f5 f6 f8
	fmul	f4 f5 f8
	fmul	f3 f4 f8
	fldi	f2 r0 14
	fmul	f3 f2 f3
	fldi	f2 r0 15
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	return
L_else_21285 : 
	fsub	f9 f4 f9
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f7 f8 f2
	fmul	f6 f7 f2
	fmul	f5 f6 f2
	fmul	f4 f5 f2
	fmul	f3 f4 f2
	fldi	f2 r0 7
	fmul	f3 f2 f3
	fldi	f2 r0 8
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_else_21275 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1886
L_else_21273 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1886
L_else_21259 : 
	fsub	f9 f9 f3
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_21287
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21289
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21291
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21293
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_else_21293 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21295
	fadd	f2 f3 f9
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21295 : 
	fadd	f8 f5 f9
	fmul	f2 f8 f8
	fmul	f6 f8 f2
	fmul	f9 f6 f2
	fmul	f5 f9 f2
	fmul	f7 f5 f2
	fmul	f3 f7 f2
	fmul	f4 f3 f2
	fldi	f2 r0 7
	fmul	f4 f2 f4
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 9
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fadd	f2 f2 f8
	fsub	f2 f0 f2
	return
L_else_21291 : 
	fbgt	f9 f4 L_else_21297
	fmul	f2 f9 f9
	fmul	f7 f9 f2
	fmul	f8 f7 f2
	fmul	f5 f8 f2
	fmul	f6 f5 f2
	fmul	f4 f6 f2
	fmul	f3 f4 f2
	fldi	f2 r0 7
	fmul	f3 f2 f3
	fldi	f2 r0 8
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f7
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_else_21297 : 
	fbgt	f9 f2 L_else_21299
	fsub	f2 f9 f3
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	return
L_else_21299 : 
	fsub	f9 f5 f9
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_else_21289 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1886
L_else_21287 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1886
L_cos_1888 : 
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f6 f4 L_else_21302
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_21304
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_21306
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_21308
	fmul	f8 f6 f6
	fmul	f7 f8 f8
	fmul	f6 f7 f8
	fmul	f5 f6 f8
	fmul	f4 f5 f8
	fmul	f3 f4 f8
	fldi	f2 r0 14
	fmul	f3 f2 f3
	fldi	f2 r0 15
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	return
L_else_21308 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_21310
	fadd	f8 f6 f3
	fmul	f2 f8 f8
	fmul	f6 f8 f2
	fmul	f9 f6 f2
	fmul	f5 f9 f2
	fmul	f7 f5 f2
	fmul	f3 f7 f2
	fmul	f4 f3 f2
	fldi	f2 r0 7
	fmul	f4 f2 f4
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 9
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fadd	f2 f2 f8
	return
L_else_21310 : 
	fadd	f2 f4 f6
	fmul	f6 f2 f2
	fmul	f8 f6 f6
	fmul	f5 f8 f6
	fmul	f7 f5 f6
	fmul	f3 f7 f6
	fmul	f4 f3 f6
	fldi	f2 r0 14
	fmul	f4 f2 f4
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21306 : 
	fbgt	f6 f5 L_else_21312
	fmul	f6 f6 f6
	fmul	f8 f6 f6
	fmul	f4 f8 f6
	fmul	f7 f4 f6
	fmul	f3 f7 f6
	fmul	f5 f3 f6
	fldi	f2 r0 14
	fmul	f5 f2 f5
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f5 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	return
L_else_21312 : 
	fbgt	f6 f2 L_else_21314
	fsub	f7 f6 f3
	fmul	f2 f7 f7
	fmul	f6 f7 f2
	fmul	f9 f6 f2
	fmul	f4 f9 f2
	fmul	f8 f4 f2
	fmul	f3 f8 f2
	fmul	f5 f3 f2
	fldi	f2 r0 7
	fmul	f5 f2 f5
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f5 f2
	fldi	f2 r0 9
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fadd	f2 f2 f7
	fsub	f2 f0 f2
	return
L_else_21314 : 
	fsub	f2 f4 f6
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21304 : 
	fadd	f5 f6 f3
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f5 f4 L_else_21316
	fldi	f2 r0 2
	fbgt	f2 f5 L_else_21318
	fldi	f6 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f5 f0 L_else_21320
	fldi	f2 r0 6
	fbgt	f2 f5 L_else_21322
	fmul	f8 f5 f5
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	return
L_else_21322 : 
	fldi	f2 r0 13
	fbgt	f2 f5 L_else_21324
	fadd	f9 f5 f3
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f6 f8 f2
	fmul	f7 f6 f2
	fmul	f4 f7 f2
	fmul	f5 f4 f2
	fmul	f2 f5 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_else_21324 : 
	fadd	f2 f4 f5
	fmul	f8 f2 f2
	fmul	f6 f8 f8
	fmul	f7 f6 f8
	fmul	f4 f7 f8
	fmul	f5 f4 f8
	fmul	f2 f5 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21320 : 
	fbgt	f5 f6 L_else_21326
	fmul	f8 f5 f5
	fmul	f7 f8 f8
	fmul	f6 f7 f8
	fmul	f5 f6 f8
	fmul	f4 f5 f8
	fmul	f3 f4 f8
	fldi	f2 r0 14
	fmul	f3 f2 f3
	fldi	f2 r0 15
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	return
L_else_21326 : 
	fbgt	f5 f2 L_else_21328
	fsub	f9 f5 f3
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f7 f8 f2
	fmul	f6 f7 f2
	fmul	f5 f6 f2
	fmul	f4 f5 f2
	fmul	f3 f4 f2
	fldi	f2 r0 7
	fmul	f3 f2 f3
	fldi	f2 r0 8
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	fsub	f2 f0 f2
	return
L_else_21328 : 
	fsub	f2 f4 f5
	fmul	f8 f2 f2
	fmul	f7 f8 f8
	fmul	f6 f7 f8
	fmul	f5 f6 f8
	fmul	f4 f5 f8
	fmul	f3 f4 f8
	fldi	f2 r0 14
	fmul	f3 f2 f3
	fldi	f2 r0 15
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21318 : 
	fadd	f2 f5 f3
	fadd	f6 f0 f2
	jump	L_cos_1888
L_else_21316 : 
	fsub	f2 f5 f3
	fadd	f6 f0 f2
	jump	L_cos_1888
L_else_21302 : 
	fsub	f6 f6 f3
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_21330
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_21332
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_21334
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_21336
	fmul	f7 f6 f6
	fmul	f8 f7 f7
	fmul	f5 f8 f7
	fmul	f6 f5 f7
	fmul	f4 f6 f7
	fmul	f3 f4 f7
	fldi	f2 r0 14
	fmul	f3 f2 f3
	fldi	f2 r0 15
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f7
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	return
L_else_21336 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_21338
	fadd	f8 f6 f3
	fmul	f2 f8 f8
	fmul	f6 f8 f2
	fmul	f9 f6 f2
	fmul	f5 f9 f2
	fmul	f7 f5 f2
	fmul	f3 f7 f2
	fmul	f4 f3 f2
	fldi	f2 r0 7
	fmul	f4 f2 f4
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 9
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fadd	f2 f2 f8
	return
L_else_21338 : 
	fadd	f2 f5 f6
	fmul	f6 f2 f2
	fmul	f8 f6 f6
	fmul	f5 f8 f6
	fmul	f7 f5 f6
	fmul	f3 f7 f6
	fmul	f4 f3 f6
	fldi	f2 r0 14
	fmul	f4 f2 f4
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_21334 : 
	fbgt	f6 f4 L_else_21340
	fmul	f6 f6 f6
	fmul	f8 f6 f6
	fmul	f4 f8 f6
	fmul	f7 f4 f6
	fmul	f3 f7 f6
	fmul	f5 f3 f6
	fldi	f2 r0 14
	fmul	f5 f2 f5
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f5 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	return
L_else_21340 : 
	fbgt	f6 f2 L_else_21342
	fsub	f7 f6 f3
	fmul	f2 f7 f7
	fmul	f6 f7 f2
	fmul	f9 f6 f2
	fmul	f4 f9 f2
	fmul	f8 f4 f2
	fmul	f3 f8 f2
	fmul	f5 f3 f2
	fldi	f2 r0 7
	fmul	f5 f2 f5
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f5 f2
	fldi	f2 r0 9
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fadd	f2 f2 f7
	fsub	f2 f0 f2
	return
L_else_21342 : 
	fsub	f2 f5 f6
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_21332 : 
	fadd	f2 f6 f3
	fadd	f6 f0 f2
	jump	L_cos_1888
L_else_21330 : 
	fsub	f2 f6 f3
	fadd	f6 f0 f2
	jump	L_cos_1888
L_atan_1890 : 
	fmul	f3 f13 f13
	fldi	f2 r0 20
	fadd	f12 f2 f3
	fmul	f11 f12 f12
	fmul	f14 f11 f12
	fmul	f9 f11 f11
	fmul	f10 f11 f14
	fmul	f7 f14 f14
	fmul	f8 f13 f3
	fmul	f5 f3 f8
	fmul	f6 f3 f5
	fmul	f4 f3 f6
	fmul	f3 f3 f4
	fldi	f2 r0 21
	fmul	f2 f2 f3
	fdiv	f3 f2 f7
	fldi	f2 r0 22
	fmul	f2 f2 f4
	fdiv	f2 f2 f10
	fadd	f3 f3 f2
	fldi	f2 r0 23
	fmul	f2 f2 f6
	fdiv	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 24
	fmul	f2 f2 f5
	fdiv	f2 f2 f14
	fadd	f3 f3 f2
	fldi	f2 r0 25
	fmul	f2 f2 f8
	fdiv	f2 f2 f11
	fadd	f2 f3 f2
	fdiv	f3 f13 f12
	fadd	f2 f2 f3
	return
L_isqrt_1892 : 
	fldi	f2 r0 26
	fmul	f2 f2 f5
	fsub	f3 f5 f3
	fbgt	f0 f3 L_else_21347
	fadd	f3 f0 f3
	jump	L_cont_21345
L_else_21347 : 
	fsub	f3 f0 f3
L_cont_21345 : 
	fbgt	f2 f3 L_else_21349
	fldi	f3 r0 27
	fmul	f2 f6 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f3 f5 f2
	fldi	f2 r0 28
	fdiv	f4 f3 f2
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_21352
	fadd	f2 f0 f2
	jump	L_cont_21350
L_else_21352 : 
	fsub	f2 f0 f2
L_cont_21350 : 
	fbgt	f3 f2 L_else_21354
	fldi	f3 r0 27
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fldi	f2 r0 26
	fmul	f2 f2 f5
	fsub	f3 f5 f4
	fbgt	f0 f3 L_else_21357
	fadd	f3 f0 f3
	jump	L_cont_21355
L_else_21357 : 
	fsub	f3 f0 f3
L_cont_21355 : 
	fbgt	f2 f3 L_else_21359
	fldi	f3 r0 27
	fmul	f2 f6 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f3 f5 f2
	fldi	f2 r0 28
	fdiv	f4 f3 f2
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_21362
	fadd	f2 f0 f2
	jump	L_cont_21360
L_else_21362 : 
	fsub	f2 f0 f2
L_cont_21360 : 
	fbgt	f3 f2 L_else_21364
	fldi	f3 r0 27
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fadd	f3 f0 f4
	fadd	f5 f0 f2
	jump	L_isqrt_1892
L_else_21364 : 
	fadd	f2 f0 f4
	return
L_else_21359 : 
	fadd	f2 f0 f5
	return
L_else_21354 : 
	fadd	f2 f0 f4
	return
L_else_21349 : 
	fadd	f2 f0 f5
	return
L_sqrt_1896 : 
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_21368
	fldi	f4 r0 20
	jump	L_cont_21366
L_else_21368 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_21366 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_21371
	fadd	f2 f0 f2
	jump	L_cont_21369
L_else_21371 : 
	fsub	f2 f0 f2
L_cont_21369 : 
	fbgt	f3 f2 L_else_21374
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fldi	f2 r0 26
	fmul	f2 f2 f5
	fsub	f3 f5 f4
	fbgt	f0 f3 L_else_21377
	fadd	f3 f0 f3
	jump	L_cont_21375
L_else_21377 : 
	fsub	f3 f0 f3
L_cont_21375 : 
	fbgt	f2 f3 L_else_21379
	fldi	f3 r0 27
	fmul	f2 f7 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f3 f5 f2
	fldi	f2 r0 28
	fdiv	f4 f3 f2
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_21382
	fadd	f2 f0 f2
	jump	L_cont_21380
L_else_21382 : 
	fsub	f2 f0 f2
L_cont_21380 : 
	fbgt	f3 f2 L_else_21384
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fadd	f6 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_21372
L_else_21384 : 
	fadd	f2 f0 f4
	jump	L_cont_21372
L_else_21379 : 
	fadd	f2 f0 f5
	jump	L_cont_21372
L_else_21374 : 
	fadd	f2 f0 f4
L_cont_21372 : 
	fmul	f2 f7 f2
	return
L_sdiv10_1898 : 
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21387
	addi	r6 r4 -10
	addi	r4 r5 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_21389
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_21391
	addi	r6 r5 -10
	addi	r4 r7 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_21393
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_21395
	addi	r6 r5 -10
	addi	r4 r7 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_21397
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_21399
	addi	r6 r5 -10
	addi	r5 r7 1
	addi	r4 r6 -10
	bgt	r0 r4 L_else_21401
	addi	r4 r6 -10
	addi	r5 r5 1
	jump	L_sdiv10_1898
L_else_21401 : 
	add	r4 r0 r5
	return
L_else_21399 : 
	add	r4 r0 r7
	return
L_else_21397 : 
	add	r4 r0 r4
	return
L_else_21395 : 
	add	r4 r0 r7
	return
L_else_21393 : 
	add	r4 r0 r4
	return
L_else_21391 : 
	add	r4 r0 r7
	return
L_else_21389 : 
	add	r4 r0 r4
	return
L_else_21387 : 
	add	r4 r0 r5
	return
L_vecunit_sgn_1931 : 
	fldi	f2 r4 0
	fmul	f3 f2 f2
	fldi	f2 r4 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f2
	fadd	f7 f3 f2
	fldi	f4 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_21405
	fldi	f5 r0 20
	jump	L_cont_21403
L_else_21405 : 
	fldi	f2 r0 20
	fdiv	f5 f2 f7
L_cont_21403 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_21408
	fadd	f2 f0 f2
	jump	L_cont_21406
L_else_21408 : 
	fsub	f2 f0 f2
L_cont_21406 : 
	fbgt	f3 f2 L_else_21411
	fldi	f3 r0 27
	fmul	f2 f7 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f2 f5 f2
	fldi	f3 r0 28
	fdiv	f4 f2 f3
	fldi	f2 r0 26
	fmul	f2 f2 f4
	fsub	f3 f4 f5
	fbgt	f0 f3 L_else_21422
	fadd	f3 f0 f3
	jump	L_cont_21420
L_else_21422 : 
	fsub	f3 f0 f3
L_cont_21420 : 
	fbgt	f2 f3 L_else_21424
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f5 f3 f2
	fadd	f6 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_21409
L_else_21424 : 
	fadd	f2 f0 f4
	jump	L_cont_21409
L_else_21411 : 
	fadd	f2 f0 f5
L_cont_21409 : 
	fmul	f3 f7 f2
	fbne	f3 f0 L_else_21414
	addi	r6 r0 1
	jump	L_cont_21412
L_else_21414 : 
	addi	r6 r0 0
L_cont_21412 : 
	bne	r6 r0 L_else_21417
	bne	r5 r0 L_else_21419
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_21415
L_else_21419 : 
	fldi	f2 r0 29
	fdiv	f3 f2 f3
	jump	L_cont_21415
L_else_21417 : 
	fldi	f3 r0 20
L_cont_21415 : 
	fldi	f2 r4 0
	fmul	f2 f2 f3
	fsti	f2 r4 0
	fldi	f2 r4 1
	fmul	f2 f2 f3
	fsti	f2 r4 1
	fldi	f2 r4 2
	fmul	f2 f2 f3
	fsti	f2 r4 2
	return
L_read_object_2041 : 
	addi	r4 r0 60
	bgt	r4 r13 L_else_21427
	return
L_else_21427 : 
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21430
	addi	r4 r0 0
	jump	L_cont_21428
L_else_21430 : 
	call	min_caml_read_int
	add	r17 r0 r4
	call	min_caml_read_int
	add	r16 r0 r4
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r11 r0 r4
	call	min_caml_read_float
	fsti	f2 r11 0
	call	min_caml_read_float
	fsti	f2 r11 1
	call	min_caml_read_float
	fsti	f2 r11 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r15 r0 r4
	call	min_caml_read_float
	fsti	f2 r15 0
	call	min_caml_read_float
	fsti	f2 r15 1
	call	min_caml_read_float
	fsti	f2 r15 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_21518
	addi	r12 r0 0
	jump	L_cont_21516
L_else_21518 : 
	addi	r12 r0 1
L_cont_21516 : 
	addi	r4 r0 2
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r10 r0 r4
	call	min_caml_read_float
	fsti	f2 r10 0
	call	min_caml_read_float
	fsti	f2 r10 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	call	min_caml_read_float
	fsti	f2 r8 0
	call	min_caml_read_float
	fsti	f2 r8 1
	call	min_caml_read_float
	fsti	f2 r8 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r9 r0 r4
	bne	r14 r0 L_else_21521
	jump	L_cont_21519
L_else_21521 : 
	call	min_caml_read_float
	fldi	f3 r0 31
	fmul	f2 f2 f3
	fsti	f2 r9 0
	call	min_caml_read_float
	fldi	f3 r0 31
	fmul	f2 f2 f3
	fsti	f2 r9 1
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 31
	fmul	f2 f3 f2
	fsti	f2 r9 2
L_cont_21519 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_21524
	addi	r6 r0 1
	jump	L_cont_21522
L_else_21524 : 
	add	r6 r0 r12
L_cont_21522 : 
	addi	r4 r0 4
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r18 r3 0
	sti	r17 r3 1
	sti	r16 r3 2
	sti	r14 r3 3
	sti	r11 r3 4
	sti	r15 r3 5
	sti	r6 r3 6
	sti	r10 r3 7
	sti	r8 r3 8
	sti	r9 r3 9
	sti	r4 r3 10
	add	r5 r0 r3
	addi	r3 r3 11
	addi	r4 r0 1970
	add	r1 r4 r13
	sti	r5 r1 0
	addi	r4 r0 3
	bne	r17 r4 L_else_21527
	fldi	f3 r11 0
	fbne	f3 f0 L_else_21623
	addi	r4 r0 1
	jump	L_cont_21621
L_else_21623 : 
	addi	r4 r0 0
L_cont_21621 : 
	bne	r4 r0 L_else_21626
	fbne	f3 f0 L_else_21663
	addi	r4 r0 1
	jump	L_cont_21661
L_else_21663 : 
	addi	r4 r0 0
L_cont_21661 : 
	bne	r4 r0 L_else_21666
	fbgt	f3 f0 L_else_21669
	addi	r4 r0 0
	jump	L_cont_21667
L_else_21669 : 
	addi	r4 r0 1
L_cont_21667 : 
	bne	r4 r0 L_else_21671
	fldi	f2 r0 29
	jump	L_cont_21664
L_else_21671 : 
	fldi	f2 r0 20
	jump	L_cont_21664
L_else_21666 : 
	fldi	f2 r0 30
L_cont_21664 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21624
L_else_21626 : 
	fldi	f2 r0 30
L_cont_21624 : 
	fsti	f2 r11 0
	fldi	f3 r11 1
	fbne	f3 f0 L_else_21629
	addi	r4 r0 1
	jump	L_cont_21627
L_else_21629 : 
	addi	r4 r0 0
L_cont_21627 : 
	bne	r4 r0 L_else_21632
	fbne	f3 f0 L_else_21652
	addi	r4 r0 1
	jump	L_cont_21650
L_else_21652 : 
	addi	r4 r0 0
L_cont_21650 : 
	bne	r4 r0 L_else_21655
	fbgt	f3 f0 L_else_21658
	addi	r4 r0 0
	jump	L_cont_21656
L_else_21658 : 
	addi	r4 r0 1
L_cont_21656 : 
	bne	r4 r0 L_else_21660
	fldi	f2 r0 29
	jump	L_cont_21653
L_else_21660 : 
	fldi	f2 r0 20
	jump	L_cont_21653
L_else_21655 : 
	fldi	f2 r0 30
L_cont_21653 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21630
L_else_21632 : 
	fldi	f2 r0 30
L_cont_21630 : 
	fsti	f2 r11 1
	fldi	f2 r11 2
	fbne	f2 f0 L_else_21635
	addi	r4 r0 1
	jump	L_cont_21633
L_else_21635 : 
	addi	r4 r0 0
L_cont_21633 : 
	bne	r4 r0 L_else_21638
	fbne	f2 f0 L_else_21641
	addi	r4 r0 1
	jump	L_cont_21639
L_else_21641 : 
	addi	r4 r0 0
L_cont_21639 : 
	bne	r4 r0 L_else_21644
	fbgt	f2 f0 L_else_21647
	addi	r4 r0 0
	jump	L_cont_21645
L_else_21647 : 
	addi	r4 r0 1
L_cont_21645 : 
	bne	r4 r0 L_else_21649
	fldi	f3 r0 29
	jump	L_cont_21642
L_else_21649 : 
	fldi	f3 r0 20
	jump	L_cont_21642
L_else_21644 : 
	fldi	f3 r0 30
L_cont_21642 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21636
L_else_21638 : 
	fldi	f2 r0 30
L_cont_21636 : 
	fsti	f2 r11 2
	jump	L_cont_21525
L_else_21527 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_21673
	addi	r4 r0 1
	sub	r5 r4 r12
	add	r4 r0 r11
	call	L_vecunit_sgn_1931
	jump	L_cont_21525
L_else_21673 : 
L_cont_21525 : 
	bne	r14 r0 L_else_21530
	jump	L_cont_21528
L_else_21530 : 
	fldi	f5 r9 0
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f5 f4 L_else_21533
	fldi	f2 r0 2
	fbgt	f2 f5 L_else_21610
	fldi	f3 r0 3
	fldi	f6 r0 4
	fldi	f2 r0 5
	fbgt	f5 f0 L_else_21612
	fldi	f2 r0 6
	fbgt	f2 f5 L_else_21614
	fmul	f5 f5 f5
	fmul	f8 f5 f5
	fmul	f4 f8 f5
	fmul	f7 f4 f5
	fmul	f3 f7 f5
	fmul	f6 f3 f5
	fldi	f2 r0 14
	fmul	f6 f2 f6
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f6 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f14 f2 f3
	jump	L_cont_21531
L_else_21614 : 
	fldi	f2 r0 13
	fbgt	f2 f5 L_else_21616
	fadd	f9 f5 f6
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f14 f2 f9
	jump	L_cont_21531
L_else_21616 : 
	fadd	f2 f4 f5
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f14 f0 f2
	jump	L_cont_21531
L_else_21612 : 
	fbgt	f5 f3 L_else_21618
	fmul	f8 f5 f5
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f14 f3 f2
	jump	L_cont_21531
L_else_21618 : 
	fbgt	f5 f2 L_else_21620
	fsub	f6 f5 f6
	fmul	f2 f6 f6
	fmul	f5 f6 f2
	fmul	f9 f5 f2
	fmul	f4 f9 f2
	fmul	f8 f4 f2
	fmul	f3 f8 f2
	fmul	f7 f3 f2
	fldi	f2 r0 7
	fmul	f7 f2 f7
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f7 f2
	fldi	f2 r0 9
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fadd	f2 f2 f6
	fsub	f14 f0 f2
	jump	L_cont_21531
L_else_21620 : 
	fsub	f2 f4 f5
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f14 f0 f2
	jump	L_cont_21531
L_else_21610 : 
	fadd	f6 f5 f3
	call	L_cos_1888
	fadd	f14 f0 f2
	jump	L_cont_21531
L_else_21533 : 
	fsub	f6 f5 f3
	call	L_cos_1888
	fadd	f14 f0 f2
L_cont_21531 : 
	fldi	f9 r9 0
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_21536
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21598
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21600
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21602
	fmul	f2 f9 f9
	fmul	f6 f9 f2
	fmul	f8 f6 f2
	fmul	f4 f8 f2
	fmul	f7 f4 f2
	fmul	f3 f7 f2
	fmul	f5 f3 f2
	fldi	f2 r0 7
	fmul	f5 f2 f5
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f5 f2
	fldi	f2 r0 9
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fadd	f17 f2 f9
	jump	L_cont_21534
L_else_21602 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21604
	fadd	f2 f3 f9
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f17 f0 f2
	jump	L_cont_21534
L_else_21604 : 
	fadd	f6 f4 f9
	fmul	f2 f6 f6
	fmul	f5 f6 f2
	fmul	f9 f5 f2
	fmul	f4 f9 f2
	fmul	f8 f4 f2
	fmul	f3 f8 f2
	fmul	f7 f3 f2
	fldi	f2 r0 7
	fmul	f7 f2 f7
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f7 f2
	fldi	f2 r0 9
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fadd	f2 f2 f6
	fsub	f17 f0 f2
	jump	L_cont_21534
L_else_21600 : 
	fbgt	f9 f5 L_else_21606
	fmul	f2 f9 f9
	fmul	f5 f9 f2
	fmul	f8 f5 f2
	fmul	f4 f8 f2
	fmul	f7 f4 f2
	fmul	f3 f7 f2
	fmul	f6 f3 f2
	fldi	f2 r0 7
	fmul	f6 f2 f6
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f6 f2
	fldi	f2 r0 9
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fadd	f17 f2 f9
	jump	L_cont_21534
L_else_21606 : 
	fbgt	f9 f2 L_else_21608
	fsub	f2 f9 f3
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f17 f3 f2
	jump	L_cont_21534
L_else_21608 : 
	fsub	f9 f4 f9
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f17 f2 f9
	jump	L_cont_21534
L_else_21598 : 
	fadd	f9 f9 f3
	call	L_sin_1886
	fadd	f17 f0 f2
	jump	L_cont_21534
L_else_21536 : 
	fsub	f9 f9 f3
	call	L_sin_1886
	fadd	f17 f0 f2
L_cont_21534 : 
	fldi	f5 r9 1
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f5 f4 L_else_21539
	fldi	f2 r0 2
	fbgt	f2 f5 L_else_21586
	fldi	f6 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f5 f0 L_else_21588
	fldi	f2 r0 6
	fbgt	f2 f5 L_else_21590
	fmul	f8 f5 f5
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f13 f3 f2
	jump	L_cont_21537
L_else_21590 : 
	fldi	f2 r0 13
	fbgt	f2 f5 L_else_21592
	fadd	f6 f5 f3
	fmul	f2 f6 f6
	fmul	f5 f6 f2
	fmul	f9 f5 f2
	fmul	f4 f9 f2
	fmul	f8 f4 f2
	fmul	f3 f8 f2
	fmul	f7 f3 f2
	fldi	f2 r0 7
	fmul	f7 f2 f7
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f7 f2
	fldi	f2 r0 9
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fadd	f13 f2 f6
	jump	L_cont_21537
L_else_21592 : 
	fadd	f2 f4 f5
	fmul	f5 f2 f2
	fmul	f8 f5 f5
	fmul	f4 f8 f5
	fmul	f7 f4 f5
	fmul	f3 f7 f5
	fmul	f6 f3 f5
	fldi	f2 r0 14
	fmul	f6 f2 f6
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f6 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	fsub	f13 f0 f2
	jump	L_cont_21537
L_else_21588 : 
	fbgt	f5 f6 L_else_21594
	fmul	f5 f5 f5
	fmul	f8 f5 f5
	fmul	f4 f8 f5
	fmul	f7 f4 f5
	fmul	f3 f7 f5
	fmul	f6 f3 f5
	fldi	f2 r0 14
	fmul	f6 f2 f6
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f6 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f13 f2 f3
	jump	L_cont_21537
L_else_21594 : 
	fbgt	f5 f2 L_else_21596
	fsub	f9 f5 f3
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	fsub	f13 f0 f2
	jump	L_cont_21537
L_else_21596 : 
	fsub	f2 f4 f5
	fmul	f5 f2 f2
	fmul	f8 f5 f5
	fmul	f4 f8 f5
	fmul	f7 f4 f5
	fmul	f3 f7 f5
	fmul	f6 f3 f5
	fldi	f2 r0 14
	fmul	f6 f2 f6
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f6 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	fsub	f13 f0 f2
	jump	L_cont_21537
L_else_21586 : 
	fadd	f6 f5 f3
	call	L_cos_1888
	fadd	f13 f0 f2
	jump	L_cont_21537
L_else_21539 : 
	fsub	f6 f5 f3
	call	L_cos_1888
	fadd	f13 f0 f2
L_cont_21537 : 
	fldi	f9 r9 1
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_21542
	fldi	f3 r0 2
	fbgt	f3 f9 L_else_21574
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21576
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21578
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f18 f2 f9
	jump	L_cont_21540
L_else_21578 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21580
	fadd	f2 f4 f9
	fmul	f5 f2 f2
	fmul	f8 f5 f5
	fmul	f4 f8 f5
	fmul	f7 f4 f5
	fmul	f3 f7 f5
	fmul	f6 f3 f5
	fldi	f2 r0 14
	fmul	f6 f2 f6
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f6 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	fsub	f18 f0 f2
	jump	L_cont_21540
L_else_21580 : 
	fadd	f9 f5 f9
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	fsub	f18 f0 f2
	jump	L_cont_21540
L_else_21576 : 
	fbgt	f9 f3 L_else_21582
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f18 f2 f9
	jump	L_cont_21540
L_else_21582 : 
	fbgt	f9 f2 L_else_21584
	fsub	f2 f9 f4
	fmul	f5 f2 f2
	fmul	f8 f5 f5
	fmul	f4 f8 f5
	fmul	f7 f4 f5
	fmul	f3 f7 f5
	fmul	f6 f3 f5
	fldi	f2 r0 14
	fmul	f6 f2 f6
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f6 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f18 f2 f3
	jump	L_cont_21540
L_else_21584 : 
	fsub	f6 f5 f9
	fmul	f2 f6 f6
	fmul	f5 f6 f2
	fmul	f9 f5 f2
	fmul	f4 f9 f2
	fmul	f8 f4 f2
	fmul	f3 f8 f2
	fmul	f7 f3 f2
	fldi	f2 r0 7
	fmul	f7 f2 f7
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f7 f2
	fldi	f2 r0 9
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fadd	f18 f2 f6
	jump	L_cont_21540
L_else_21574 : 
	fadd	f9 f9 f2
	call	L_sin_1886
	fadd	f18 f0 f2
	jump	L_cont_21540
L_else_21542 : 
	fsub	f9 f9 f2
	call	L_sin_1886
	fadd	f18 f0 f2
L_cont_21540 : 
	fldi	f6 r9 2
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_21545
	fldi	f3 r0 2
	fbgt	f3 f6 L_else_21562
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_21564
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_21566
	fmul	f5 f6 f6
	fmul	f8 f5 f5
	fmul	f4 f8 f5
	fmul	f7 f4 f5
	fmul	f3 f7 f5
	fmul	f6 f3 f5
	fldi	f2 r0 14
	fmul	f6 f2 f6
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f6 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f15 f2 f3
	jump	L_cont_21543
L_else_21566 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_21568
	fadd	f9 f6 f4
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f15 f2 f9
	jump	L_cont_21543
L_else_21568 : 
	fadd	f2 f5 f6
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f15 f0 f2
	jump	L_cont_21543
L_else_21564 : 
	fbgt	f6 f3 L_else_21570
	fmul	f8 f6 f6
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f15 f3 f2
	jump	L_cont_21543
L_else_21570 : 
	fbgt	f6 f2 L_else_21572
	fsub	f6 f6 f4
	fmul	f2 f6 f6
	fmul	f5 f6 f2
	fmul	f9 f5 f2
	fmul	f4 f9 f2
	fmul	f8 f4 f2
	fmul	f3 f8 f2
	fmul	f7 f3 f2
	fldi	f2 r0 7
	fmul	f7 f2 f7
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f7 f2
	fldi	f2 r0 9
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fadd	f2 f2 f6
	fsub	f15 f0 f2
	jump	L_cont_21543
L_else_21572 : 
	fsub	f2 f5 f6
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f15 f0 f2
	jump	L_cont_21543
L_else_21562 : 
	fadd	f6 f6 f2
	call	L_cos_1888
	fadd	f15 f0 f2
	jump	L_cont_21543
L_else_21545 : 
	fsub	f6 f6 f2
	call	L_cos_1888
	fadd	f15 f0 f2
L_cont_21543 : 
	fldi	f9 r9 2
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_21548
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21550
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21552
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21554
	fmul	f2 f9 f9
	fmul	f6 f9 f2
	fmul	f8 f6 f2
	fmul	f4 f8 f2
	fmul	f7 f4 f2
	fmul	f3 f7 f2
	fmul	f5 f3 f2
	fldi	f2 r0 7
	fmul	f5 f2 f5
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f5 f2
	fldi	f2 r0 9
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fadd	f4 f2 f9
	jump	L_cont_21546
L_else_21554 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21556
	fadd	f2 f3 f9
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f4 f0 f2
	jump	L_cont_21546
L_else_21556 : 
	fadd	f6 f4 f9
	fmul	f2 f6 f6
	fmul	f5 f6 f2
	fmul	f9 f5 f2
	fmul	f4 f9 f2
	fmul	f8 f4 f2
	fmul	f3 f8 f2
	fmul	f7 f3 f2
	fldi	f2 r0 7
	fmul	f7 f2 f7
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f7 f2
	fldi	f2 r0 9
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fadd	f2 f2 f6
	fsub	f4 f0 f2
	jump	L_cont_21546
L_else_21552 : 
	fbgt	f9 f5 L_else_21558
	fmul	f2 f9 f9
	fmul	f5 f9 f2
	fmul	f8 f5 f2
	fmul	f4 f8 f2
	fmul	f7 f4 f2
	fmul	f3 f7 f2
	fmul	f6 f3 f2
	fldi	f2 r0 7
	fmul	f6 f2 f6
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f6 f2
	fldi	f2 r0 9
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fadd	f4 f2 f9
	jump	L_cont_21546
L_else_21558 : 
	fbgt	f9 f2 L_else_21560
	fsub	f2 f9 f3
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f4 f3 f2
	jump	L_cont_21546
L_else_21560 : 
	fsub	f9 f4 f9
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f4 f2 f9
	jump	L_cont_21546
L_else_21550 : 
	fadd	f9 f9 f3
	call	L_sin_1886
	fadd	f4 f0 f2
	jump	L_cont_21546
L_else_21548 : 
	fsub	f9 f9 f3
	call	L_sin_1886
	fadd	f4 f0 f2
L_cont_21546 : 
	fmul	f12 f13 f15
	fmul	f2 f17 f18
	fmul	f2 f2 f15
	fmul	f3 f14 f4
	fsub	f10 f2 f3
	fmul	f2 f14 f18
	fmul	f2 f2 f15
	fmul	f3 f17 f4
	fadd	f16 f2 f3
	fmul	f11 f13 f4
	fmul	f2 f17 f18
	fmul	f3 f2 f4
	fmul	f2 f14 f15
	fadd	f9 f3 f2
	fmul	f2 f14 f18
	fmul	f3 f2 f4
	fmul	f2 f17 f15
	fsub	f15 f3 f2
	fsub	f8 f0 f18
	fmul	f7 f17 f13
	fmul	f14 f14 f13
	fldi	f13 r11 0
	fldi	f6 r11 1
	fldi	f5 r11 2
	fmul	f2 f12 f12
	fmul	f3 f13 f2
	fmul	f2 f11 f11
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f8 f8
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r11 0
	fmul	f2 f10 f10
	fmul	f3 f13 f2
	fmul	f2 f9 f9
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f7 f7
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r11 1
	fmul	f2 f16 f16
	fmul	f3 f13 f2
	fmul	f2 f15 f15
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f14 f14
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r11 2
	fldi	f4 r0 28
	fmul	f2 f13 f10
	fmul	f3 f2 f16
	fmul	f2 f6 f9
	fmul	f2 f2 f15
	fadd	f3 f3 f2
	fmul	f2 f5 f7
	fmul	f2 f2 f14
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r9 0
	fldi	f4 r0 28
	fmul	f2 f13 f12
	fmul	f3 f2 f16
	fmul	f2 f6 f11
	fmul	f2 f2 f15
	fadd	f3 f3 f2
	fmul	f2 f5 f8
	fmul	f2 f2 f14
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r9 1
	fldi	f4 r0 28
	fmul	f2 f13 f12
	fmul	f3 f2 f10
	fmul	f2 f6 f11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fmul	f2 f5 f8
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r9 2
L_cont_21528 : 
	addi	r4 r0 1
L_cont_21428 : 
	bne	r4 r0 L_else_21432
	sti	r13 r0 1072
	return
L_else_21432 : 
	addi	r13 r13 1
	addi	r4 r0 60
	bgt	r4 r13 L_else_21434
	return
L_else_21434 : 
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21437
	addi	r4 r0 0
	jump	L_cont_21435
L_else_21437 : 
	call	min_caml_read_int
	add	r17 r0 r4
	call	min_caml_read_int
	add	r14 r0 r4
	call	min_caml_read_int
	add	r11 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r12 r0 r4
	call	min_caml_read_float
	fsti	f2 r12 0
	call	min_caml_read_float
	fsti	f2 r12 1
	call	min_caml_read_float
	fsti	f2 r12 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r16 r0 r4
	call	min_caml_read_float
	fsti	f2 r16 0
	call	min_caml_read_float
	fsti	f2 r16 1
	call	min_caml_read_float
	fsti	f2 r16 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_21442
	addi	r15 r0 0
	jump	L_cont_21440
L_else_21442 : 
	addi	r15 r0 1
L_cont_21440 : 
	addi	r4 r0 2
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r9 r0 r4
	call	min_caml_read_float
	fsti	f2 r9 0
	call	min_caml_read_float
	fsti	f2 r9 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	call	min_caml_read_float
	fsti	f2 r8 0
	call	min_caml_read_float
	fsti	f2 r8 1
	call	min_caml_read_float
	fsti	f2 r8 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r10 r0 r4
	bne	r11 r0 L_else_21445
	jump	L_cont_21443
L_else_21445 : 
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 31
	fmul	f2 f3 f2
	fsti	f2 r10 0
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 31
	fmul	f2 f3 f2
	fsti	f2 r10 1
	call	min_caml_read_float
	fldi	f3 r0 31
	fmul	f2 f2 f3
	fsti	f2 r10 2
L_cont_21443 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_21448
	addi	r6 r0 1
	jump	L_cont_21446
L_else_21448 : 
	add	r6 r0 r15
L_cont_21446 : 
	addi	r4 r0 4
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r18 r3 0
	sti	r17 r3 1
	sti	r14 r3 2
	sti	r11 r3 3
	sti	r12 r3 4
	sti	r16 r3 5
	sti	r6 r3 6
	sti	r9 r3 7
	sti	r8 r3 8
	sti	r10 r3 9
	sti	r4 r3 10
	add	r5 r0 r3
	addi	r3 r3 11
	addi	r4 r0 1970
	add	r1 r4 r13
	sti	r5 r1 0
	addi	r4 r0 3
	bne	r17 r4 L_else_21451
	fldi	f2 r12 0
	fbne	f2 f0 L_else_21457
	addi	r4 r0 1
	jump	L_cont_21455
L_else_21457 : 
	addi	r4 r0 0
L_cont_21455 : 
	bne	r4 r0 L_else_21460
	fbne	f2 f0 L_else_21497
	addi	r4 r0 1
	jump	L_cont_21495
L_else_21497 : 
	addi	r4 r0 0
L_cont_21495 : 
	bne	r4 r0 L_else_21500
	fbgt	f2 f0 L_else_21503
	addi	r4 r0 0
	jump	L_cont_21501
L_else_21503 : 
	addi	r4 r0 1
L_cont_21501 : 
	bne	r4 r0 L_else_21505
	fldi	f3 r0 29
	jump	L_cont_21498
L_else_21505 : 
	fldi	f3 r0 20
	jump	L_cont_21498
L_else_21500 : 
	fldi	f3 r0 30
L_cont_21498 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21458
L_else_21460 : 
	fldi	f2 r0 30
L_cont_21458 : 
	fsti	f2 r12 0
	fldi	f2 r12 1
	fbne	f2 f0 L_else_21463
	addi	r4 r0 1
	jump	L_cont_21461
L_else_21463 : 
	addi	r4 r0 0
L_cont_21461 : 
	bne	r4 r0 L_else_21466
	fbne	f2 f0 L_else_21486
	addi	r4 r0 1
	jump	L_cont_21484
L_else_21486 : 
	addi	r4 r0 0
L_cont_21484 : 
	bne	r4 r0 L_else_21489
	fbgt	f2 f0 L_else_21492
	addi	r4 r0 0
	jump	L_cont_21490
L_else_21492 : 
	addi	r4 r0 1
L_cont_21490 : 
	bne	r4 r0 L_else_21494
	fldi	f3 r0 29
	jump	L_cont_21487
L_else_21494 : 
	fldi	f3 r0 20
	jump	L_cont_21487
L_else_21489 : 
	fldi	f3 r0 30
L_cont_21487 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21464
L_else_21466 : 
	fldi	f2 r0 30
L_cont_21464 : 
	fsti	f2 r12 1
	fldi	f3 r12 2
	fbne	f3 f0 L_else_21469
	addi	r4 r0 1
	jump	L_cont_21467
L_else_21469 : 
	addi	r4 r0 0
L_cont_21467 : 
	bne	r4 r0 L_else_21472
	fbne	f3 f0 L_else_21475
	addi	r4 r0 1
	jump	L_cont_21473
L_else_21475 : 
	addi	r4 r0 0
L_cont_21473 : 
	bne	r4 r0 L_else_21478
	fbgt	f3 f0 L_else_21481
	addi	r4 r0 0
	jump	L_cont_21479
L_else_21481 : 
	addi	r4 r0 1
L_cont_21479 : 
	bne	r4 r0 L_else_21483
	fldi	f2 r0 29
	jump	L_cont_21476
L_else_21483 : 
	fldi	f2 r0 20
	jump	L_cont_21476
L_else_21478 : 
	fldi	f2 r0 30
L_cont_21476 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21470
L_else_21472 : 
	fldi	f2 r0 30
L_cont_21470 : 
	fsti	f2 r12 2
	jump	L_cont_21449
L_else_21451 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_21507
	addi	r4 r0 1
	sub	r5 r4 r15
	fldi	f2 r12 0
	fmul	f3 f2 f2
	fldi	f2 r12 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r12 2
	fmul	f2 f2 f2
	fadd	f7 f3 f2
	call	L_sqrt_1896
	fadd	f3 f0 f2
	fbne	f3 f0 L_else_21510
	addi	r4 r0 1
	jump	L_cont_21508
L_else_21510 : 
	addi	r4 r0 0
L_cont_21508 : 
	bne	r4 r0 L_else_21513
	bne	r5 r0 L_else_21515
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_21511
L_else_21515 : 
	fldi	f2 r0 29
	fdiv	f3 f2 f3
	jump	L_cont_21511
L_else_21513 : 
	fldi	f3 r0 20
L_cont_21511 : 
	fldi	f2 r12 0
	fmul	f2 f2 f3
	fsti	f2 r12 0
	fldi	f2 r12 1
	fmul	f2 f2 f3
	fsti	f2 r12 1
	fldi	f2 r12 2
	fmul	f2 f2 f3
	fsti	f2 r12 2
	jump	L_cont_21449
L_else_21507 : 
L_cont_21449 : 
	bne	r11 r0 L_else_21454
	jump	L_cont_21452
L_else_21454 : 
	fldi	f6 r10 0
	call	L_cos_1888
	fadd	f19 f0 f2
	fldi	f9 r10 0
	call	L_sin_1886
	fadd	f18 f0 f2
	fldi	f6 r10 1
	call	L_cos_1888
	fadd	f17 f0 f2
	fldi	f9 r10 1
	call	L_sin_1886
	fadd	f14 f0 f2
	fldi	f6 r10 2
	call	L_cos_1888
	fadd	f13 f0 f2
	fldi	f9 r10 2
	call	L_sin_1886
	fadd	f3 f0 f2
	fmul	f12 f17 f13
	fmul	f2 f18 f14
	fmul	f4 f2 f13
	fmul	f2 f19 f3
	fsub	f10 f4 f2
	fmul	f2 f19 f14
	fmul	f4 f2 f13
	fmul	f2 f18 f3
	fadd	f16 f4 f2
	fmul	f11 f17 f3
	fmul	f2 f18 f14
	fmul	f2 f2 f3
	fmul	f4 f19 f13
	fadd	f9 f2 f4
	fmul	f2 f19 f14
	fmul	f2 f2 f3
	fmul	f3 f18 f13
	fsub	f15 f2 f3
	fsub	f8 f0 f14
	fmul	f7 f18 f17
	fmul	f14 f19 f17
	fldi	f13 r12 0
	fldi	f6 r12 1
	fldi	f5 r12 2
	fmul	f2 f12 f12
	fmul	f3 f13 f2
	fmul	f2 f11 f11
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f8 f8
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r12 0
	fmul	f2 f10 f10
	fmul	f3 f13 f2
	fmul	f2 f9 f9
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f7 f7
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r12 1
	fmul	f2 f16 f16
	fmul	f3 f13 f2
	fmul	f2 f15 f15
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f14 f14
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r12 2
	fldi	f4 r0 28
	fmul	f2 f13 f10
	fmul	f3 f2 f16
	fmul	f2 f6 f9
	fmul	f2 f2 f15
	fadd	f3 f3 f2
	fmul	f2 f5 f7
	fmul	f2 f2 f14
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r10 0
	fldi	f4 r0 28
	fmul	f2 f13 f12
	fmul	f3 f2 f16
	fmul	f2 f6 f11
	fmul	f2 f2 f15
	fadd	f3 f3 f2
	fmul	f2 f5 f8
	fmul	f2 f2 f14
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r10 1
	fldi	f4 r0 28
	fmul	f2 f13 f12
	fmul	f3 f2 f10
	fmul	f2 f6 f11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fmul	f2 f5 f8
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r10 2
L_cont_21452 : 
	addi	r4 r0 1
L_cont_21435 : 
	bne	r4 r0 L_else_21439
	sti	r13 r0 1072
	return
L_else_21439 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_read_object_2041
L_read_net_item_2045 : 
	call	min_caml_read_int
	add	r13 r0 r4
	addi	r4 r0 -1
	bne	r13 r4 L_else_21676
	addi	r4 r12 1
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_21676 : 
	addi	r11 r12 1
	call	min_caml_read_int
	add	r10 r0 r4
	addi	r4 r0 -1
	bne	r10 r4 L_else_21679
	addi	r4 r11 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21677
L_else_21679 : 
	addi	r9 r11 1
	call	min_caml_read_int
	add	r8 r0 r4
	addi	r4 r0 -1
	bne	r8 r4 L_else_21682
	addi	r4 r9 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21680
L_else_21682 : 
	addi	r6 r9 1
	call	min_caml_read_int
	add	r5 r0 r4
	addi	r4 r0 -1
	bne	r5 r4 L_else_21685
	addi	r4 r6 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21683
L_else_21685 : 
	addi	r4 r6 1
	sti	r13 r2 0
	sti	r12 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	sti	r9 r2 5
	sti	r5 r2 6
	sti	r6 r2 7
	add	r12 r0 r4
	addi	r2 r2 8
	call	L_read_net_item_2045
	addi	r2 r2 -8
	ldi	r13 r2 0
	ldi	r12 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	ldi	r9 r2 5
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r1 r4 r6
	sti	r5 r1 0
	add	r4 r0 r4
L_cont_21683 : 
	add	r1 r4 r9
	sti	r8 r1 0
	add	r4 r0 r4
L_cont_21680 : 
	add	r1 r4 r11
	sti	r10 r1 0
	add	r4 r0 r4
L_cont_21677 : 
	add	r1 r4 r12
	sti	r13 r1 0
	add	r4 r0 r4
	return
L_read_or_network_2047 : 
	addi	r20 r0 0
	call	min_caml_read_int
	add	r19 r0 r4
	addi	r4 r0 -1
	bne	r19 r4 L_else_21689
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r17 r0 r4
	jump	L_cont_21687
L_else_21689 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21712
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21710
L_else_21712 : 
	addi	r15 r0 2
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21715
	addi	r4 r0 3
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21713
L_else_21715 : 
	addi	r12 r0 3
	call	L_read_net_item_2045
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21713 : 
	add	r1 r4 r17
	sti	r16 r1 0
	add	r4 r0 r4
L_cont_21710 : 
	add	r1 r4 r20
	sti	r19 r1 0
	add	r17 r0 r4
L_cont_21687 : 
	ldi	r4 r17 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21691
	addi	r4 r18 1
	add	r5 r0 r17
	jump	min_caml_create_array
L_else_21691 : 
	addi	r20 r18 1
	addi	r19 r0 0
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21694
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r19 r0 r4
	jump	L_cont_21692
L_else_21694 : 
	addi	r15 r0 1
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21709
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21707
L_else_21709 : 
	addi	r12 r0 2
	call	L_read_net_item_2045
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21707 : 
	add	r1 r4 r19
	sti	r16 r1 0
	add	r19 r0 r4
L_cont_21692 : 
	ldi	r5 r19 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21697
	addi	r4 r20 1
	add	r5 r0 r19
	call	min_caml_create_array
	jump	L_cont_21695
L_else_21697 : 
	addi	r16 r20 1
	addi	r15 r0 0
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21700
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r15 r0 r4
	jump	L_cont_21698
L_else_21700 : 
	addi	r12 r0 1
	call	L_read_net_item_2045
	add	r1 r4 r15
	sti	r14 r1 0
	add	r15 r0 r4
L_cont_21698 : 
	ldi	r5 r15 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21703
	addi	r4 r16 1
	add	r5 r0 r15
	call	min_caml_create_array
	jump	L_cont_21701
L_else_21703 : 
	addi	r14 r16 1
	addi	r12 r0 0
	call	L_read_net_item_2045
	add	r5 r0 r4
	ldi	r6 r5 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_21706
	addi	r4 r14 1
	call	min_caml_create_array
	jump	L_cont_21704
L_else_21706 : 
	addi	r4 r14 1
	sti	r17 r2 0
	sti	r18 r2 1
	sti	r19 r2 2
	sti	r20 r2 3
	sti	r15 r2 4
	sti	r16 r2 5
	sti	r5 r2 6
	sti	r14 r2 7
	add	r18 r0 r4
	addi	r2 r2 8
	call	L_read_or_network_2047
	addi	r2 r2 -8
	ldi	r17 r2 0
	ldi	r18 r2 1
	ldi	r19 r2 2
	ldi	r20 r2 3
	ldi	r15 r2 4
	ldi	r16 r2 5
	ldi	r5 r2 6
	ldi	r14 r2 7
	add	r1 r4 r14
	sti	r5 r1 0
	add	r4 r0 r4
L_cont_21704 : 
	add	r1 r4 r16
	sti	r15 r1 0
	add	r4 r0 r4
L_cont_21701 : 
	add	r1 r4 r20
	sti	r19 r1 0
	add	r4 r0 r4
L_cont_21695 : 
	add	r1 r4 r18
	sti	r17 r1 0
	add	r4 r0 r4
	return
L_read_and_network_2049 : 
	addi	r20 r0 0
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21719
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_21717
L_else_21719 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21739
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21737
L_else_21739 : 
	addi	r15 r0 2
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21742
	addi	r4 r0 3
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21740
L_else_21742 : 
	addi	r12 r0 3
	call	L_read_net_item_2045
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21740 : 
	add	r1 r4 r17
	sti	r16 r1 0
	add	r4 r0 r4
L_cont_21737 : 
	add	r1 r4 r20
	sti	r18 r1 0
	add	r6 r0 r4
L_cont_21717 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21721
	return
L_else_21721 : 
	addi	r4 r0 1083
	add	r1 r4 r19
	sti	r6 r1 0
	addi	r18 r19 1
	addi	r16 r0 0
	call	min_caml_read_int
	add	r17 r0 r4
	addi	r4 r0 -1
	bne	r17 r4 L_else_21724
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_21722
L_else_21724 : 
	addi	r15 r0 1
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21736
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21734
L_else_21736 : 
	addi	r12 r0 2
	call	L_read_net_item_2045
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21734 : 
	add	r1 r4 r16
	sti	r17 r1 0
	add	r6 r0 r4
L_cont_21722 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21726
	return
L_else_21726 : 
	addi	r4 r0 1083
	add	r1 r4 r18
	sti	r6 r1 0
	addi	r16 r18 1
	addi	r15 r0 0
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21729
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_21727
L_else_21729 : 
	addi	r12 r0 1
	call	L_read_net_item_2045
	add	r1 r4 r15
	sti	r14 r1 0
	add	r6 r0 r4
L_cont_21727 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21731
	return
L_else_21731 : 
	addi	r4 r0 1083
	add	r1 r4 r16
	sti	r6 r1 0
	addi	r14 r16 1
	addi	r12 r0 0
	call	L_read_net_item_2045
	add	r5 r0 r4
	ldi	r6 r5 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_21733
	return
L_else_21733 : 
	addi	r4 r0 1083
	add	r1 r4 r14
	sti	r5 r1 0
	addi	r4 r14 1
	add	r19 r0 r4
	jump	L_read_and_network_2049
L_solver_rect_surface_2053 : 
	add	r1 r6 r7
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21746
	addi	r5 r0 1
	jump	L_cont_21744
L_else_21746 : 
	addi	r5 r0 0
L_cont_21744 : 
	bne	r5 r0 L_else_21748
	ldi	r5 r4 4
	ldi	r9 r4 6
	add	r1 r6 r7
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21751
	addi	r4 r0 0
	jump	L_cont_21749
L_else_21751 : 
	addi	r4 r0 1
L_cont_21749 : 
	xor	r4 r9 r4
	add	r1 r5 r7
	fldi	f2 r1 0
	bne	r4 r0 L_else_21754
	fsub	f2 f0 f2
	jump	L_cont_21752
L_else_21754 : 
	fadd	f2 f0 f2
L_cont_21752 : 
	fsub	f4 f2 f4
	add	r1 r6 r7
	fldi	f2 r1 0
	fdiv	f4 f4 f2
	add	r1 r6 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_21757
	fadd	f2 f0 f2
	jump	L_cont_21755
L_else_21757 : 
	fsub	f2 f0 f2
L_cont_21755 : 
	add	r1 r5 r8
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21760
	addi	r4 r0 0
	jump	L_cont_21758
L_else_21760 : 
	addi	r4 r0 1
L_cont_21758 : 
	bne	r4 r0 L_else_21762
	addi	r4 r0 0
	return
L_else_21762 : 
	add	r1 r6 r10
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21765
	fadd	f2 f0 f2
	jump	L_cont_21763
L_else_21765 : 
	fsub	f2 f0 f2
L_cont_21763 : 
	add	r1 r5 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21768
	addi	r4 r0 0
	jump	L_cont_21766
L_else_21768 : 
	addi	r4 r0 1
L_cont_21766 : 
	bne	r4 r0 L_else_21770
	addi	r4 r0 0
	return
L_else_21770 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	return
L_else_21748 : 
	addi	r4 r0 0
	return
L_solver_rect_2062 : 
	addi	r9 r0 0
	addi	r7 r0 1
	addi	r8 r0 2
	add	r1 r10 r9
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21774
	addi	r4 r0 1
	jump	L_cont_21772
L_else_21774 : 
	addi	r4 r0 0
L_cont_21772 : 
	bne	r4 r0 L_else_21777
	ldi	r5 r11 4
	ldi	r6 r11 6
	add	r1 r10 r9
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21842
	addi	r4 r0 0
	jump	L_cont_21840
L_else_21842 : 
	addi	r4 r0 1
L_cont_21840 : 
	xor	r4 r6 r4
	add	r1 r5 r9
	fldi	f2 r1 0
	bne	r4 r0 L_else_21845
	fsub	f2 f0 f2
	jump	L_cont_21843
L_else_21845 : 
	fadd	f2 f0 f2
L_cont_21843 : 
	fsub	f3 f2 f6
	add	r1 r10 r9
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r10 r7
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21848
	fadd	f2 f0 f2
	jump	L_cont_21846
L_else_21848 : 
	fsub	f2 f0 f2
L_cont_21846 : 
	add	r1 r5 r7
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21851
	addi	r4 r0 0
	jump	L_cont_21849
L_else_21851 : 
	addi	r4 r0 1
L_cont_21849 : 
	bne	r4 r0 L_else_21853
	addi	r4 r0 0
	jump	L_cont_21775
L_else_21853 : 
	add	r1 r10 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21856
	fadd	f3 f0 f2
	jump	L_cont_21854
L_else_21856 : 
	fsub	f3 f0 f2
L_cont_21854 : 
	add	r1 r5 r8
	fldi	f2 r1 0
	fbgt	f2 f3 L_else_21859
	addi	r4 r0 0
	jump	L_cont_21857
L_else_21859 : 
	addi	r4 r0 1
L_cont_21857 : 
	bne	r4 r0 L_else_21861
	addi	r4 r0 0
	jump	L_cont_21775
L_else_21861 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21775
L_else_21777 : 
	addi	r4 r0 0
L_cont_21775 : 
	bne	r4 r0 L_else_21779
	addi	r6 r0 1
	addi	r9 r0 2
	addi	r5 r0 0
	add	r1 r10 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21782
	addi	r4 r0 1
	jump	L_cont_21780
L_else_21782 : 
	addi	r4 r0 0
L_cont_21780 : 
	bne	r4 r0 L_else_21785
	ldi	r8 r11 4
	ldi	r4 r11 6
	add	r1 r10 r6
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21820
	addi	r7 r0 0
	jump	L_cont_21818
L_else_21820 : 
	addi	r7 r0 1
L_cont_21818 : 
	xor	r4 r4 r7
	add	r1 r8 r6
	fldi	f2 r1 0
	bne	r4 r0 L_else_21823
	fsub	f2 f0 f2
	jump	L_cont_21821
L_else_21823 : 
	fadd	f2 f0 f2
L_cont_21821 : 
	fsub	f2 f2 f5
	add	r1 r10 r6
	fldi	f3 r1 0
	fdiv	f4 f2 f3
	add	r1 r10 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21826
	fadd	f3 f0 f2
	jump	L_cont_21824
L_else_21826 : 
	fsub	f3 f0 f2
L_cont_21824 : 
	add	r1 r8 r9
	fldi	f2 r1 0
	fbgt	f2 f3 L_else_21829
	addi	r4 r0 0
	jump	L_cont_21827
L_else_21829 : 
	addi	r4 r0 1
L_cont_21827 : 
	bne	r4 r0 L_else_21831
	addi	r4 r0 0
	jump	L_cont_21783
L_else_21831 : 
	add	r1 r10 r5
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21834
	fadd	f2 f0 f2
	jump	L_cont_21832
L_else_21834 : 
	fsub	f2 f0 f2
L_cont_21832 : 
	add	r1 r8 r5
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21837
	addi	r4 r0 0
	jump	L_cont_21835
L_else_21837 : 
	addi	r4 r0 1
L_cont_21835 : 
	bne	r4 r0 L_else_21839
	addi	r4 r0 0
	jump	L_cont_21783
L_else_21839 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21783
L_else_21785 : 
	addi	r4 r0 0
L_cont_21783 : 
	bne	r4 r0 L_else_21787
	addi	r9 r0 2
	addi	r6 r0 0
	addi	r8 r0 1
	add	r1 r10 r9
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21790
	addi	r4 r0 1
	jump	L_cont_21788
L_else_21790 : 
	addi	r4 r0 0
L_cont_21788 : 
	bne	r4 r0 L_else_21793
	ldi	r7 r11 4
	ldi	r4 r11 6
	add	r1 r10 r9
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21798
	addi	r5 r0 0
	jump	L_cont_21796
L_else_21798 : 
	addi	r5 r0 1
L_cont_21796 : 
	xor	r4 r4 r5
	add	r1 r7 r9
	fldi	f2 r1 0
	bne	r4 r0 L_else_21801
	fsub	f2 f0 f2
	jump	L_cont_21799
L_else_21801 : 
	fadd	f2 f0 f2
L_cont_21799 : 
	fsub	f2 f2 f7
	add	r1 r10 r9
	fldi	f3 r1 0
	fdiv	f4 f2 f3
	add	r1 r10 r6
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21804
	fadd	f3 f0 f2
	jump	L_cont_21802
L_else_21804 : 
	fsub	f3 f0 f2
L_cont_21802 : 
	add	r1 r7 r6
	fldi	f2 r1 0
	fbgt	f2 f3 L_else_21807
	addi	r4 r0 0
	jump	L_cont_21805
L_else_21807 : 
	addi	r4 r0 1
L_cont_21805 : 
	bne	r4 r0 L_else_21809
	addi	r4 r0 0
	jump	L_cont_21791
L_else_21809 : 
	add	r1 r10 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21812
	fadd	f2 f0 f2
	jump	L_cont_21810
L_else_21812 : 
	fsub	f2 f0 f2
L_cont_21810 : 
	add	r1 r7 r8
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21815
	addi	r4 r0 0
	jump	L_cont_21813
L_else_21815 : 
	addi	r4 r0 1
L_cont_21813 : 
	bne	r4 r0 L_else_21817
	addi	r4 r0 0
	jump	L_cont_21791
L_else_21817 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21791
L_else_21793 : 
	addi	r4 r0 0
L_cont_21791 : 
	bne	r4 r0 L_else_21795
	addi	r4 r0 0
	return
L_else_21795 : 
	addi	r4 r0 3
	return
L_else_21787 : 
	addi	r4 r0 2
	return
L_else_21779 : 
	addi	r4 r0 1
	return
L_solver_second_2087 : 
	fldi	f10 r5 0
	fldi	f8 r5 1
	fldi	f7 r5 2
	fmul	f3 f10 f10
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f8 f8
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f7
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21865
	fadd	f8 f0 f4
	jump	L_cont_21863
L_else_21865 : 
	fmul	f3 f8 f7
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f10
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f10 f8
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f8 f4 f2
L_cont_21863 : 
	fbne	f8 f0 L_else_21868
	addi	r4 r0 1
	jump	L_cont_21866
L_else_21868 : 
	addi	r4 r0 0
L_cont_21866 : 
	bne	r4 r0 L_else_21870
	fldi	f11 r5 0
	fldi	f12 r5 1
	fldi	f10 r5 2
	fmul	f3 f11 f5
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f12 f6
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f10 f9
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f7 f3 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21873
	fadd	f7 f0 f7
	jump	L_cont_21871
L_else_21873 : 
	fmul	f2 f10 f6
	fmul	f3 f12 f9
	fadd	f3 f2 f3
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f2 f11 f9
	fmul	f3 f10 f5
	fadd	f3 f2 f3
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f11 f6
	fmul	f2 f12 f5
	fadd	f4 f4 f2
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fadd	f7 f7 f2
L_cont_21871 : 
	fmul	f3 f5 f5
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21876
	fadd	f3 f0 f4
	jump	L_cont_21874
L_else_21876 : 
	fmul	f3 f6 f9
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f5
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f6
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
L_cont_21874 : 
	ldi	r4 r6 1
	addi	r5 r0 3
	bne	r4 r5 L_else_21879
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_21877
L_else_21879 : 
	fadd	f2 f0 f3
L_cont_21877 : 
	fmul	f3 f7 f7
	fmul	f2 f8 f2
	fsub	f9 f3 f2
	fbgt	f9 f0 L_else_21882
	addi	r4 r0 0
	jump	L_cont_21880
L_else_21882 : 
	addi	r4 r0 1
L_cont_21880 : 
	bne	r4 r0 L_else_21884
	addi	r4 r0 0
	return
L_else_21884 : 
	fldi	f4 r0 28
	fldi	f2 r0 20
	fbgt	f9 f2 L_else_21887
	fldi	f5 r0 20
	jump	L_cont_21885
L_else_21887 : 
	fldi	f2 r0 20
	fdiv	f5 f2 f9
L_cont_21885 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_21890
	fadd	f2 f0 f2
	jump	L_cont_21888
L_else_21890 : 
	fsub	f2 f0 f2
L_cont_21888 : 
	fbgt	f3 f2 L_else_21893
	fldi	f3 r0 27
	fmul	f2 f9 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f2 f5 f2
	fldi	f3 r0 28
	fdiv	f4 f2 f3
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_21899
	fadd	f2 f0 f2
	jump	L_cont_21897
L_else_21899 : 
	fsub	f2 f0 f2
L_cont_21897 : 
	fbgt	f3 f2 L_else_21901
	fldi	f3 r0 27
	fmul	f2 f9 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fadd	f6 f0 f9
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_21891
L_else_21901 : 
	fadd	f2 f0 f4
	jump	L_cont_21891
L_else_21893 : 
	fadd	f2 f0 f5
L_cont_21891 : 
	fmul	f2 f9 f2
	ldi	r4 r6 6
	bne	r4 r0 L_else_21896
	fsub	f2 f0 f2
	jump	L_cont_21894
L_else_21896 : 
	fadd	f2 f0 f2
L_cont_21894 : 
	fsub	f2 f2 f7
	fdiv	f2 f2 f8
	fsti	f2 r0 1073
	addi	r4 r0 1
	return
L_else_21870 : 
	addi	r4 r0 0
	return
L_solver_rect_fast_2097 : 
	fldi	f2 r6 0
	fsub	f3 f2 f6
	fldi	f2 r6 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21905
	fadd	f3 f0 f2
	jump	L_cont_21903
L_else_21905 : 
	fsub	f3 f0 f2
L_cont_21903 : 
	ldi	r4 r8 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_21908
	addi	r4 r0 0
	jump	L_cont_21906
L_else_21908 : 
	addi	r4 r0 1
L_cont_21906 : 
	bne	r4 r0 L_else_21911
	addi	r4 r0 0
	jump	L_cont_21909
L_else_21911 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21960
	fadd	f3 f0 f2
	jump	L_cont_21958
L_else_21960 : 
	fsub	f3 f0 f2
L_cont_21958 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_21963
	addi	r4 r0 0
	jump	L_cont_21961
L_else_21963 : 
	addi	r4 r0 1
L_cont_21961 : 
	bne	r4 r0 L_else_21965
	addi	r4 r0 0
	jump	L_cont_21909
L_else_21965 : 
	addi	r5 r0 1
	fldi	f2 r6 1
	fbne	f2 f0 L_else_21968
	addi	r4 r0 1
	jump	L_cont_21966
L_else_21968 : 
	addi	r4 r0 0
L_cont_21966 : 
	sub	r4 r5 r4
L_cont_21909 : 
	bne	r4 r0 L_else_21913
	fldi	f2 r6 2
	fsub	f3 f2 f5
	fldi	f2 r6 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21916
	fadd	f3 f0 f2
	jump	L_cont_21914
L_else_21916 : 
	fsub	f3 f0 f2
L_cont_21914 : 
	ldi	r4 r8 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_21919
	addi	r4 r0 0
	jump	L_cont_21917
L_else_21919 : 
	addi	r4 r0 1
L_cont_21917 : 
	bne	r4 r0 L_else_21922
	addi	r4 r0 0
	jump	L_cont_21920
L_else_21922 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21949
	fadd	f3 f0 f2
	jump	L_cont_21947
L_else_21949 : 
	fsub	f3 f0 f2
L_cont_21947 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_21952
	addi	r4 r0 0
	jump	L_cont_21950
L_else_21952 : 
	addi	r4 r0 1
L_cont_21950 : 
	bne	r4 r0 L_else_21954
	addi	r4 r0 0
	jump	L_cont_21920
L_else_21954 : 
	addi	r5 r0 1
	fldi	f2 r6 3
	fbne	f2 f0 L_else_21957
	addi	r4 r0 1
	jump	L_cont_21955
L_else_21957 : 
	addi	r4 r0 0
L_cont_21955 : 
	sub	r4 r5 r4
L_cont_21920 : 
	bne	r4 r0 L_else_21924
	fldi	f2 r6 4
	fsub	f3 f2 f7
	fldi	f2 r6 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21927
	fadd	f2 f0 f2
	jump	L_cont_21925
L_else_21927 : 
	fsub	f2 f0 f2
L_cont_21925 : 
	ldi	r4 r8 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_21930
	addi	r4 r0 0
	jump	L_cont_21928
L_else_21930 : 
	addi	r4 r0 1
L_cont_21928 : 
	bne	r4 r0 L_else_21933
	addi	r4 r0 0
	jump	L_cont_21931
L_else_21933 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21938
	fadd	f2 f0 f2
	jump	L_cont_21936
L_else_21938 : 
	fsub	f2 f0 f2
L_cont_21936 : 
	ldi	r4 r8 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_21941
	addi	r4 r0 0
	jump	L_cont_21939
L_else_21941 : 
	addi	r4 r0 1
L_cont_21939 : 
	bne	r4 r0 L_else_21943
	addi	r4 r0 0
	jump	L_cont_21931
L_else_21943 : 
	addi	r4 r0 1
	fldi	f2 r6 5
	fbne	f2 f0 L_else_21946
	addi	r5 r0 1
	jump	L_cont_21944
L_else_21946 : 
	addi	r5 r0 0
L_cont_21944 : 
	sub	r4 r4 r5
L_cont_21931 : 
	bne	r4 r0 L_else_21935
	addi	r4 r0 0
	return
L_else_21935 : 
	fsti	f4 r0 1073
	addi	r4 r0 3
	return
L_else_21924 : 
	fsti	f4 r0 1073
	addi	r4 r0 2
	return
L_else_21913 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	return
L_solver_second_fast_2110 : 
	fldi	f5 r6 0
	fbne	f5 f0 L_else_21972
	addi	r4 r0 1
	jump	L_cont_21970
L_else_21972 : 
	addi	r4 r0 0
L_cont_21970 : 
	bne	r4 r0 L_else_21974
	fldi	f2 r6 1
	fmul	f3 f2 f9
	fldi	f2 r6 2
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f6
	fadd	f7 f3 f2
	fmul	f3 f9 f9
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f8 f8
	ldi	r4 r7 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f6 f6
	ldi	r4 r7 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	ldi	r4 r7 3
	bne	r4 r0 L_else_21977
	fadd	f3 f0 f4
	jump	L_cont_21975
L_else_21977 : 
	fmul	f3 f8 f6
	ldi	r4 r7 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fmul	f3 f6 f9
	ldi	r4 r7 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f8
	ldi	r4 r7 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
L_cont_21975 : 
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_21980
	fldi	f2 r0 20
	fsub	f3 f3 f2
	jump	L_cont_21978
L_else_21980 : 
	fadd	f3 f0 f3
L_cont_21978 : 
	fmul	f2 f7 f7
	fmul	f3 f5 f3
	fsub	f8 f2 f3
	fbgt	f8 f0 L_else_21983
	addi	r4 r0 0
	jump	L_cont_21981
L_else_21983 : 
	addi	r4 r0 1
L_cont_21981 : 
	bne	r4 r0 L_else_21985
	addi	r4 r0 0
	return
L_else_21985 : 
	ldi	r4 r7 6
	bne	r4 r0 L_else_21988
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_21991
	fldi	f4 r0 20
	jump	L_cont_21989
L_else_21991 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f8
L_cont_21989 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_21994
	fadd	f2 f0 f2
	jump	L_cont_21992
L_else_21994 : 
	fsub	f2 f0 f2
L_cont_21992 : 
	fbgt	f3 f2 L_else_21997
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f3 f2 f3
	fldi	f2 r0 26
	fmul	f2 f2 f3
	fsub	f4 f3 f4
	fbgt	f0 f4 L_else_22000
	fadd	f4 f0 f4
	jump	L_cont_21998
L_else_22000 : 
	fsub	f4 f0 f4
L_cont_21998 : 
	fbgt	f2 f4 L_else_22002
	fldi	f4 r0 27
	fmul	f2 f8 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f4 f3 f2
	fldi	f2 r0 28
	fdiv	f5 f4 f2
	fadd	f6 f0 f8
	call	L_isqrt_1892
	jump	L_cont_21995
L_else_22002 : 
	fadd	f2 f0 f3
	jump	L_cont_21995
L_else_21997 : 
	fadd	f2 f0 f4
L_cont_21995 : 
	fmul	f2 f8 f2
	fsub	f2 f7 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_21986
L_else_21988 : 
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_22005
	fldi	f4 r0 20
	jump	L_cont_22003
L_else_22005 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f8
L_cont_22003 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_22008
	fadd	f2 f0 f2
	jump	L_cont_22006
L_else_22008 : 
	fsub	f2 f0 f2
L_cont_22006 : 
	fbgt	f3 f2 L_else_22011
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f3 f2 f3
	fldi	f2 r0 26
	fmul	f2 f2 f3
	fsub	f4 f3 f4
	fbgt	f0 f4 L_else_22014
	fadd	f4 f0 f4
	jump	L_cont_22012
L_else_22014 : 
	fsub	f4 f0 f4
L_cont_22012 : 
	fbgt	f2 f4 L_else_22016
	fldi	f4 r0 27
	fmul	f2 f8 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f4 f3 f2
	fldi	f2 r0 28
	fdiv	f5 f4 f2
	fadd	f6 f0 f8
	call	L_isqrt_1892
	jump	L_cont_22009
L_else_22016 : 
	fadd	f2 f0 f3
	jump	L_cont_22009
L_else_22011 : 
	fadd	f2 f0 f4
L_cont_22009 : 
	fmul	f2 f8 f2
	fadd	f2 f7 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_21986 : 
	addi	r4 r0 1
	return
L_else_21974 : 
	addi	r4 r0 0
	return
L_solver_fast_2116 : 
	addi	r4 r0 1970
	add	r1 r4 r6
	ldi	r8 r1 0
	fldi	f3 r5 0
	ldi	r4 r8 5
	fldi	f2 r4 0
	fsub	f8 f3 f2
	fldi	f3 r5 1
	ldi	r4 r8 5
	fldi	f2 r4 1
	fsub	f6 f3 f2
	fldi	f3 r5 2
	ldi	r4 r8 5
	fldi	f2 r4 2
	fsub	f9 f3 f2
	ldi	r4 r7 1
	add	r1 r4 r6
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22019
	ldi	r7 r7 0
	fadd	f5 f0 f6
	fadd	f7 f0 f9
	fadd	f6 f0 f8
	jump	L_solver_rect_fast_2097
L_else_22019 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22021
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22024
	addi	r4 r0 0
	jump	L_cont_22022
L_else_22024 : 
	addi	r4 r0 1
L_cont_22022 : 
	bne	r4 r0 L_else_22026
	addi	r4 r0 0
	return
L_else_22026 : 
	fldi	f2 r6 1
	fmul	f3 f2 f8
	fldi	f2 r6 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r4 r0 1
	return
L_else_22021 : 
	fldi	f5 r6 0
	fbne	f5 f0 L_else_22029
	addi	r4 r0 1
	jump	L_cont_22027
L_else_22029 : 
	addi	r4 r0 0
L_cont_22027 : 
	bne	r4 r0 L_else_22031
	fldi	f2 r6 1
	fmul	f3 f2 f8
	fldi	f2 r6 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f9
	fadd	f7 f3 f2
	fmul	f3 f8 f8
	ldi	r4 r8 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r4 r8 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r4 r8 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	ldi	r4 r8 3
	bne	r4 r0 L_else_22034
	fadd	f3 f0 f4
	jump	L_cont_22032
L_else_22034 : 
	fmul	f3 f6 f9
	ldi	r4 r8 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fmul	f3 f9 f8
	ldi	r4 r8 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f8 f6
	ldi	r4 r8 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
L_cont_22032 : 
	ldi	r4 r8 1
	addi	r5 r0 3
	bne	r4 r5 L_else_22037
	fldi	f2 r0 20
	fsub	f3 f3 f2
	jump	L_cont_22035
L_else_22037 : 
	fadd	f3 f0 f3
L_cont_22035 : 
	fmul	f2 f7 f7
	fmul	f3 f5 f3
	fsub	f8 f2 f3
	fbgt	f8 f0 L_else_22040
	addi	r4 r0 0
	jump	L_cont_22038
L_else_22040 : 
	addi	r4 r0 1
L_cont_22038 : 
	bne	r4 r0 L_else_22042
	addi	r4 r0 0
	return
L_else_22042 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_22045
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_22048
	fldi	f4 r0 20
	jump	L_cont_22046
L_else_22048 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f8
L_cont_22046 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_22051
	fadd	f2 f0 f2
	jump	L_cont_22049
L_else_22051 : 
	fsub	f2 f0 f2
L_cont_22049 : 
	fbgt	f3 f2 L_else_22054
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fadd	f6 f0 f8
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_22052
L_else_22054 : 
	fadd	f2 f0 f4
L_cont_22052 : 
	fmul	f2 f8 f2
	fsub	f3 f7 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_22043
L_else_22045 : 
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_22057
	fldi	f4 r0 20
	jump	L_cont_22055
L_else_22057 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f8
L_cont_22055 : 
	fldi	f2 r0 26
	fmul	f2 f2 f4
	fsub	f3 f4 f3
	fbgt	f0 f3 L_else_22060
	fadd	f3 f0 f3
	jump	L_cont_22058
L_else_22060 : 
	fsub	f3 f0 f3
L_cont_22058 : 
	fbgt	f2 f3 L_else_22063
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f5 f3 f2
	fadd	f6 f0 f8
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_22061
L_else_22063 : 
	fadd	f2 f0 f4
L_cont_22061 : 
	fmul	f2 f8 f2
	fadd	f2 f7 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_22043 : 
	addi	r4 r0 1
	return
L_else_22031 : 
	addi	r4 r0 0
	return
L_solver_second_fast2_2127 : 
	fldi	f6 r4 0
	fbne	f6 f0 L_else_22067
	addi	r7 r0 1
	jump	L_cont_22065
L_else_22067 : 
	addi	r7 r0 0
L_cont_22065 : 
	bne	r7 r0 L_else_22069
	fldi	f2 r4 1
	fmul	f5 f2 f5
	fldi	f2 r4 2
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r4 3
	fmul	f2 f2 f4
	fadd	f7 f3 f2
	fldi	f2 r5 3
	fmul	f3 f7 f7
	fmul	f2 f6 f2
	fsub	f8 f3 f2
	fbgt	f8 f0 L_else_22072
	addi	r5 r0 0
	jump	L_cont_22070
L_else_22072 : 
	addi	r5 r0 1
L_cont_22070 : 
	bne	r5 r0 L_else_22074
	addi	r4 r0 0
	return
L_else_22074 : 
	ldi	r5 r6 6
	bne	r5 r0 L_else_22077
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_22080
	fldi	f5 r0 20
	jump	L_cont_22078
L_else_22080 : 
	fldi	f2 r0 20
	fdiv	f5 f2 f8
L_cont_22078 : 
	fldi	f2 r0 26
	fmul	f2 f2 f5
	fsub	f3 f5 f3
	fbgt	f0 f3 L_else_22083
	fadd	f3 f0 f3
	jump	L_cont_22081
L_else_22083 : 
	fsub	f3 f0 f3
L_cont_22081 : 
	fbgt	f2 f3 L_else_22086
	fldi	f3 r0 27
	fmul	f2 f8 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f3 f5 f2
	fldi	f2 r0 28
	fdiv	f4 f3 f2
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_22089
	fadd	f2 f0 f2
	jump	L_cont_22087
L_else_22089 : 
	fsub	f2 f0 f2
L_cont_22087 : 
	fbgt	f3 f2 L_else_22091
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fadd	f6 f0 f8
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_22084
L_else_22091 : 
	fadd	f2 f0 f4
	jump	L_cont_22084
L_else_22086 : 
	fadd	f2 f0 f5
L_cont_22084 : 
	fmul	f2 f8 f2
	fsub	f3 f7 f2
	fldi	f2 r4 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_22075
L_else_22077 : 
	fldi	f4 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_22094
	fldi	f5 r0 20
	jump	L_cont_22092
L_else_22094 : 
	fldi	f2 r0 20
	fdiv	f5 f2 f8
L_cont_22092 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_22097
	fadd	f2 f0 f2
	jump	L_cont_22095
L_else_22097 : 
	fsub	f2 f0 f2
L_cont_22095 : 
	fbgt	f3 f2 L_else_22100
	fldi	f3 r0 27
	fmul	f2 f8 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f2 f5 f2
	fldi	f3 r0 28
	fdiv	f4 f2 f3
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_22103
	fadd	f2 f0 f2
	jump	L_cont_22101
L_else_22103 : 
	fsub	f2 f0 f2
L_cont_22101 : 
	fbgt	f3 f2 L_else_22105
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fadd	f6 f0 f8
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_22098
L_else_22105 : 
	fadd	f2 f0 f4
	jump	L_cont_22098
L_else_22100 : 
	fadd	f2 f0 f5
L_cont_22098 : 
	fmul	f2 f8 f2
	fadd	f3 f7 f2
	fldi	f2 r4 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_22075 : 
	addi	r4 r0 1
	return
L_else_22069 : 
	addi	r4 r0 0
	return
L_solver_fast2_2134 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r8 r1 0
	ldi	r9 r8 10
	fldi	f6 r9 0
	fldi	f5 r9 1
	fldi	f7 r9 2
	ldi	r4 r7 1
	add	r1 r4 r5
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22108
	ldi	r7 r7 0
	jump	L_solver_rect_fast_2097
L_else_22108 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22110
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22113
	addi	r4 r0 0
	jump	L_cont_22111
L_else_22113 : 
	addi	r4 r0 1
L_cont_22111 : 
	bne	r4 r0 L_else_22115
	addi	r4 r0 0
	return
L_else_22115 : 
	fldi	f2 r6 0
	fldi	f3 r9 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r4 r0 1
	return
L_else_22110 : 
	fldi	f4 r6 0
	fbne	f4 f0 L_else_22118
	addi	r4 r0 1
	jump	L_cont_22116
L_else_22118 : 
	addi	r4 r0 0
L_cont_22116 : 
	bne	r4 r0 L_else_22120
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f7 f3 f2
	fldi	f2 r9 3
	fmul	f3 f7 f7
	fmul	f2 f4 f2
	fsub	f8 f3 f2
	fbgt	f8 f0 L_else_22123
	addi	r4 r0 0
	jump	L_cont_22121
L_else_22123 : 
	addi	r4 r0 1
L_cont_22121 : 
	bne	r4 r0 L_else_22125
	addi	r4 r0 0
	return
L_else_22125 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_22128
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_22131
	fldi	f4 r0 20
	jump	L_cont_22129
L_else_22131 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f8
L_cont_22129 : 
	fldi	f2 r0 26
	fmul	f2 f2 f4
	fsub	f3 f4 f3
	fbgt	f0 f3 L_else_22134
	fadd	f3 f0 f3
	jump	L_cont_22132
L_else_22134 : 
	fsub	f3 f0 f3
L_cont_22132 : 
	fbgt	f2 f3 L_else_22137
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f5 f3 f2
	fadd	f6 f0 f8
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_22135
L_else_22137 : 
	fadd	f2 f0 f4
L_cont_22135 : 
	fmul	f2 f8 f2
	fsub	f3 f7 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_22126
L_else_22128 : 
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_22140
	fldi	f4 r0 20
	jump	L_cont_22138
L_else_22140 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f8
L_cont_22138 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_22143
	fadd	f2 f0 f2
	jump	L_cont_22141
L_else_22143 : 
	fsub	f2 f0 f2
L_cont_22141 : 
	fbgt	f3 f2 L_else_22146
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fadd	f6 f0 f8
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_22144
L_else_22146 : 
	fadd	f2 f0 f4
L_cont_22144 : 
	fmul	f2 f8 f2
	fadd	f3 f7 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_22126 : 
	addi	r4 r0 1
	return
L_else_22120 : 
	addi	r4 r0 0
	return
L_setup_rect_table_2137 : 
	addi	r4 r0 6
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r7 r0 r4
	fldi	f2 r8 0
	fbne	f2 f0 L_else_22150
	addi	r4 r0 1
	jump	L_cont_22148
L_else_22150 : 
	addi	r4 r0 0
L_cont_22148 : 
	bne	r4 r0 L_else_22153
	ldi	r5 r6 6
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_22180
	addi	r4 r0 0
	jump	L_cont_22178
L_else_22180 : 
	addi	r4 r0 1
L_cont_22178 : 
	xor	r5 r5 r4
	ldi	r4 r6 4
	fldi	f2 r4 0
	bne	r5 r0 L_else_22183
	fsub	f2 f0 f2
	jump	L_cont_22181
L_else_22183 : 
	fadd	f2 f0 f2
L_cont_22181 : 
	fsti	f2 r7 0
	fldi	f2 r0 20
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	fsti	f2 r7 1
	jump	L_cont_22151
L_else_22153 : 
	fldi	f2 r0 30
	fsti	f2 r7 1
L_cont_22151 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_22156
	addi	r4 r0 1
	jump	L_cont_22154
L_else_22156 : 
	addi	r4 r0 0
L_cont_22154 : 
	bne	r4 r0 L_else_22159
	ldi	r4 r6 6
	fldi	f2 r8 1
	fbgt	f0 f2 L_else_22174
	addi	r5 r0 0
	jump	L_cont_22172
L_else_22174 : 
	addi	r5 r0 1
L_cont_22172 : 
	xor	r4 r4 r5
	ldi	r5 r6 4
	fldi	f2 r5 1
	bne	r4 r0 L_else_22177
	fsub	f2 f0 f2
	jump	L_cont_22175
L_else_22177 : 
	fadd	f2 f0 f2
L_cont_22175 : 
	fsti	f2 r7 2
	fldi	f3 r0 20
	fldi	f2 r8 1
	fdiv	f2 f3 f2
	fsti	f2 r7 3
	jump	L_cont_22157
L_else_22159 : 
	fldi	f2 r0 30
	fsti	f2 r7 3
L_cont_22157 : 
	fldi	f2 r8 2
	fbne	f2 f0 L_else_22162
	addi	r4 r0 1
	jump	L_cont_22160
L_else_22162 : 
	addi	r4 r0 0
L_cont_22160 : 
	bne	r4 r0 L_else_22165
	ldi	r5 r6 6
	fldi	f2 r8 2
	fbgt	f0 f2 L_else_22168
	addi	r4 r0 0
	jump	L_cont_22166
L_else_22168 : 
	addi	r4 r0 1
L_cont_22166 : 
	xor	r5 r5 r4
	ldi	r4 r6 4
	fldi	f2 r4 2
	bne	r5 r0 L_else_22171
	fsub	f2 f0 f2
	jump	L_cont_22169
L_else_22171 : 
	fadd	f2 f0 f2
L_cont_22169 : 
	fsti	f2 r7 4
	fldi	f3 r0 20
	fldi	f2 r8 2
	fdiv	f2 f3 f2
	fsti	f2 r7 5
	jump	L_cont_22163
L_else_22165 : 
	fldi	f2 r0 30
	fsti	f2 r7 5
L_cont_22163 : 
	add	r4 r0 r7
	return
L_setup_surface_table_2140 : 
	addi	r4 r0 4
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r5 r0 r4
	fldi	f3 r8 0
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r8 1
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fldi	f4 r8 2
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f3 f0 L_else_22187
	addi	r4 r0 0
	jump	L_cont_22185
L_else_22187 : 
	addi	r4 r0 1
L_cont_22185 : 
	bne	r4 r0 L_else_22190
	fldi	f2 r0 30
	fsti	f2 r5 0
	jump	L_cont_22188
L_else_22190 : 
	fldi	f2 r0 29
	fdiv	f2 f2 f3
	fsti	f2 r5 0
	ldi	r4 r6 4
	fldi	f2 r4 0
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 1
	ldi	r4 r6 4
	fldi	f2 r4 1
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 2
	ldi	r4 r6 4
	fldi	f2 r4 2
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 3
L_cont_22188 : 
	add	r4 r0 r5
	return
L_setup_second_table_2143 : 
	addi	r4 r0 5
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r5 r0 r4
	fldi	f6 r8 0
	fldi	f7 r8 1
	fldi	f5 r8 2
	fmul	f3 f6 f6
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f7 f7
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_22194
	fadd	f6 f0 f4
	jump	L_cont_22192
L_else_22194 : 
	fmul	f3 f7 f5
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f6
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f7
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f6 f4 f2
L_cont_22192 : 
	fldi	f3 r8 0
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fsub	f7 f0 f2
	fldi	f3 r8 1
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fsub	f8 f0 f2
	fldi	f3 r8 2
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fsub	f5 f0 f2
	fsti	f6 r5 0
	ldi	r4 r6 3
	bne	r4 r0 L_else_22197
	fsti	f7 r5 1
	fsti	f8 r5 2
	fsti	f5 r5 3
	jump	L_cont_22195
L_else_22197 : 
	fldi	f3 r8 2
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f4 f3 f2
	fldi	f3 r8 1
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fsub	f2 f7 f2
	fsti	f2 r5 1
	fldi	f3 r8 2
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r8 0
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fsub	f2 f8 f2
	fsti	f2 r5 2
	fldi	f3 r8 1
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r8 0
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fsub	f2 f5 f2
	fsti	f2 r5 3
L_cont_22195 : 
	fbne	f6 f0 L_else_22200
	addi	r4 r0 1
	jump	L_cont_22198
L_else_22200 : 
	addi	r4 r0 0
L_cont_22198 : 
	bne	r4 r0 L_else_22203
	fldi	f2 r0 20
	fdiv	f2 f2 f6
	fsti	f2 r5 4
	jump	L_cont_22201
L_else_22203 : 
L_cont_22201 : 
	add	r4 r0 r5
	return
L_iter_setup_dirvec_constants_2146 : 
	bgt	r0 r8 L_else_22206
	addi	r4 r0 1970
	add	r1 r4 r8
	ldi	r9 r1 0
	ldi	r6 r11 1
	ldi	r10 r11 0
	ldi	r5 r9 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22209
	addi	r4 r0 6
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r7 r0 r4
	fldi	f2 r10 0
	fbne	f2 f0 L_else_22219
	addi	r4 r0 1
	jump	L_cont_22217
L_else_22219 : 
	addi	r4 r0 0
L_cont_22217 : 
	bne	r4 r0 L_else_22222
	ldi	r4 r9 6
	fldi	f2 r10 0
	fbgt	f0 f2 L_else_22249
	addi	r5 r0 0
	jump	L_cont_22247
L_else_22249 : 
	addi	r5 r0 1
L_cont_22247 : 
	xor	r4 r4 r5
	ldi	r5 r9 4
	fldi	f2 r5 0
	bne	r4 r0 L_else_22252
	fsub	f2 f0 f2
	jump	L_cont_22250
L_else_22252 : 
	fadd	f2 f0 f2
L_cont_22250 : 
	fsti	f2 r7 0
	fldi	f3 r0 20
	fldi	f2 r10 0
	fdiv	f2 f3 f2
	fsti	f2 r7 1
	jump	L_cont_22220
L_else_22222 : 
	fldi	f2 r0 30
	fsti	f2 r7 1
L_cont_22220 : 
	fldi	f2 r10 1
	fbne	f2 f0 L_else_22225
	addi	r4 r0 1
	jump	L_cont_22223
L_else_22225 : 
	addi	r4 r0 0
L_cont_22223 : 
	bne	r4 r0 L_else_22228
	ldi	r5 r9 6
	fldi	f2 r10 1
	fbgt	f0 f2 L_else_22243
	addi	r4 r0 0
	jump	L_cont_22241
L_else_22243 : 
	addi	r4 r0 1
L_cont_22241 : 
	xor	r5 r5 r4
	ldi	r4 r9 4
	fldi	f2 r4 1
	bne	r5 r0 L_else_22246
	fsub	f2 f0 f2
	jump	L_cont_22244
L_else_22246 : 
	fadd	f2 f0 f2
L_cont_22244 : 
	fsti	f2 r7 2
	fldi	f3 r0 20
	fldi	f2 r10 1
	fdiv	f2 f3 f2
	fsti	f2 r7 3
	jump	L_cont_22226
L_else_22228 : 
	fldi	f2 r0 30
	fsti	f2 r7 3
L_cont_22226 : 
	fldi	f2 r10 2
	fbne	f2 f0 L_else_22231
	addi	r4 r0 1
	jump	L_cont_22229
L_else_22231 : 
	addi	r4 r0 0
L_cont_22229 : 
	bne	r4 r0 L_else_22234
	ldi	r4 r9 6
	fldi	f2 r10 2
	fbgt	f0 f2 L_else_22237
	addi	r5 r0 0
	jump	L_cont_22235
L_else_22237 : 
	addi	r5 r0 1
L_cont_22235 : 
	xor	r4 r4 r5
	ldi	r5 r9 4
	fldi	f2 r5 2
	bne	r4 r0 L_else_22240
	fsub	f2 f0 f2
	jump	L_cont_22238
L_else_22240 : 
	fadd	f2 f0 f2
L_cont_22238 : 
	fsti	f2 r7 4
	fldi	f2 r0 20
	fldi	f3 r10 2
	fdiv	f2 f2 f3
	fsti	f2 r7 5
	jump	L_cont_22232
L_else_22234 : 
	fldi	f2 r0 30
	fsti	f2 r7 5
L_cont_22232 : 
	add	r1 r6 r8
	sti	r7 r1 0
	jump	L_cont_22207
L_else_22209 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22254
	addi	r4 r0 4
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r5 r0 r4
	fldi	f3 r10 0
	ldi	r4 r9 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r10 1
	ldi	r4 r9 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fldi	f3 r10 2
	ldi	r4 r9 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f3 f0 L_else_22257
	addi	r4 r0 0
	jump	L_cont_22255
L_else_22257 : 
	addi	r4 r0 1
L_cont_22255 : 
	bne	r4 r0 L_else_22260
	fldi	f2 r0 30
	fsti	f2 r5 0
	jump	L_cont_22258
L_else_22260 : 
	fldi	f2 r0 29
	fdiv	f2 f2 f3
	fsti	f2 r5 0
	ldi	r4 r9 4
	fldi	f2 r4 0
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 1
	ldi	r4 r9 4
	fldi	f2 r4 1
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 2
	ldi	r4 r9 4
	fldi	f2 r4 2
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 3
L_cont_22258 : 
	add	r1 r6 r8
	sti	r5 r1 0
	jump	L_cont_22207
L_else_22254 : 
	addi	r4 r0 5
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r5 r0 r4
	fldi	f6 r10 0
	fldi	f7 r10 1
	fldi	f5 r10 2
	fmul	f3 f6 f6
	ldi	r4 r9 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f7 f7
	ldi	r4 r9 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r4 r9 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	ldi	r4 r9 3
	bne	r4 r0 L_else_22263
	fadd	f6 f0 f4
	jump	L_cont_22261
L_else_22263 : 
	fmul	f3 f7 f5
	ldi	r4 r9 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f6
	ldi	r4 r9 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f7
	ldi	r4 r9 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f6 f4 f2
L_cont_22261 : 
	fldi	f3 r10 0
	ldi	r4 r9 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fsub	f4 f0 f2
	fldi	f3 r10 1
	ldi	r4 r9 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fsub	f8 f0 f2
	fldi	f3 r10 2
	ldi	r4 r9 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fsub	f5 f0 f2
	fsti	f6 r5 0
	ldi	r4 r9 3
	bne	r4 r0 L_else_22266
	fsti	f4 r5 1
	fsti	f8 r5 2
	fsti	f5 r5 3
	jump	L_cont_22264
L_else_22266 : 
	fldi	f3 r10 2
	ldi	r4 r9 9
	fldi	f2 r4 1
	fmul	f7 f3 f2
	fldi	f3 r10 1
	ldi	r4 r9 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f7 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fsub	f2 f4 f2
	fsti	f2 r5 1
	fldi	f3 r10 2
	ldi	r4 r9 9
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r10 0
	ldi	r4 r9 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fsub	f2 f8 f2
	fsti	f2 r5 2
	fldi	f3 r10 1
	ldi	r4 r9 9
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r10 0
	ldi	r4 r9 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fsub	f2 f5 f2
	fsti	f2 r5 3
L_cont_22264 : 
	fbne	f6 f0 L_else_22269
	addi	r4 r0 1
	jump	L_cont_22267
L_else_22269 : 
	addi	r4 r0 0
L_cont_22267 : 
	bne	r4 r0 L_else_22272
	fldi	f2 r0 20
	fdiv	f2 f2 f6
	fsti	f2 r5 4
	jump	L_cont_22270
L_else_22272 : 
L_cont_22270 : 
	add	r1 r6 r8
	sti	r5 r1 0
L_cont_22207 : 
	addi	r10 r8 -1
	bgt	r0 r10 L_else_22211
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22214
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_22212
L_else_22214 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22216
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_22212
L_else_22216 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_22212 : 
	addi	r4 r10 -1
	add	r8 r0 r4
	jump	L_iter_setup_dirvec_constants_2146
L_else_22211 : 
	return
L_else_22206 : 
	return
L_setup_startp_constants_2151 : 
	bgt	r0 r7 L_else_22275
	addi	r4 r0 1970
	add	r1 r4 r7
	ldi	r6 r1 0
	ldi	r8 r6 10
	ldi	r5 r6 1
	fldi	f3 r9 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f2 f3 f2
	fsti	f2 r8 0
	fldi	f3 r9 1
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f2 f3 f2
	fsti	f2 r8 1
	fldi	f3 r9 2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f2 f3 f2
	fsti	f2 r8 2
	addi	r4 r0 2
	bne	r5 r4 L_else_22278
	ldi	r4 r6 4
	fldi	f2 r8 0
	fldi	f5 r8 1
	fldi	f4 r8 2
	fldi	f3 r4 0
	fmul	f3 f3 f2
	fldi	f2 r4 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r8 3
	jump	L_cont_22276
L_else_22278 : 
	addi	r4 r0 2
	bgt	r5 r4 L_else_22280
	jump	L_cont_22276
L_else_22280 : 
	fldi	f6 r8 0
	fldi	f7 r8 1
	fldi	f5 r8 2
	fmul	f3 f6 f6
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f7 f7
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_22283
	fadd	f3 f0 f3
	jump	L_cont_22281
L_else_22283 : 
	fmul	f4 f7 f5
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f6
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f6 f7
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
L_cont_22281 : 
	addi	r4 r0 3
	bne	r5 r4 L_else_22286
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_22284
L_else_22286 : 
	fadd	f2 f0 f3
L_cont_22284 : 
	fsti	f2 r8 3
L_cont_22276 : 
	addi	r4 r7 -1
	add	r7 r0 r4
	jump	L_setup_startp_constants_2151
L_else_22275 : 
	return
L_is_second_outside_2166 : 
	fmul	f3 f5 f5
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f6 f6
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f7
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_22290
	fadd	f3 f0 f4
	jump	L_cont_22288
L_else_22290 : 
	fmul	f3 f6 f7
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f5
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f6
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
L_cont_22288 : 
	ldi	r4 r6 1
	addi	r5 r0 3
	bne	r4 r5 L_else_22293
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_22291
L_else_22293 : 
	fadd	f2 f0 f3
L_cont_22291 : 
	addi	r5 r0 1
	ldi	r6 r6 6
	fbgt	f0 f2 L_else_22296
	addi	r4 r0 0
	jump	L_cont_22294
L_else_22296 : 
	addi	r4 r0 1
L_cont_22294 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	return
L_is_outside_2171 : 
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f7 f3 f2
	ldi	r4 r7 5
	fldi	f2 r4 1
	fsub	f5 f5 f2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f6 f4 f2
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22299
	fbgt	f0 f7 L_else_22302
	fadd	f3 f0 f7
	jump	L_cont_22300
L_else_22302 : 
	fsub	f3 f0 f7
L_cont_22300 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22305
	addi	r4 r0 0
	jump	L_cont_22303
L_else_22305 : 
	addi	r4 r0 1
L_cont_22303 : 
	bne	r4 r0 L_else_22308
	addi	r4 r0 0
	jump	L_cont_22306
L_else_22308 : 
	fbgt	f0 f5 L_else_22313
	fadd	f3 f0 f5
	jump	L_cont_22311
L_else_22313 : 
	fsub	f3 f0 f5
L_cont_22311 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22316
	addi	r4 r0 0
	jump	L_cont_22314
L_else_22316 : 
	addi	r4 r0 1
L_cont_22314 : 
	bne	r4 r0 L_else_22318
	addi	r4 r0 0
	jump	L_cont_22306
L_else_22318 : 
	fbgt	f0 f6 L_else_22321
	fadd	f3 f0 f6
	jump	L_cont_22319
L_else_22321 : 
	fsub	f3 f0 f6
L_cont_22319 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22323
	addi	r4 r0 0
	jump	L_cont_22306
L_else_22323 : 
	addi	r4 r0 1
L_cont_22306 : 
	bne	r4 r0 L_else_22310
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	return
L_else_22310 : 
	ldi	r4 r7 6
	add	r4 r0 r4
	return
L_else_22299 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22325
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f2 f7
	fldi	f2 r4 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_22328
	addi	r4 r0 0
	jump	L_cont_22326
L_else_22328 : 
	addi	r4 r0 1
L_cont_22326 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	return
L_else_22325 : 
	fmul	f3 f7 f7
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f5 f5
	ldi	r4 r7 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r4 r7 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	ldi	r4 r7 3
	bne	r4 r0 L_else_22331
	fadd	f3 f0 f4
	jump	L_cont_22329
L_else_22331 : 
	fmul	f3 f5 f6
	ldi	r4 r7 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f6 f7
	ldi	r4 r7 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f2 f7 f5
	ldi	r4 r7 9
	fldi	f3 r4 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
L_cont_22329 : 
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_22334
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_22332
L_else_22334 : 
	fadd	f2 f0 f3
L_cont_22332 : 
	addi	r6 r0 1
	ldi	r4 r7 6
	fbgt	f0 f2 L_else_22337
	addi	r5 r0 0
	jump	L_cont_22335
L_else_22337 : 
	addi	r5 r0 1
L_cont_22335 : 
	xor	r4 r4 r5
	sub	r4 r6 r4
	return
L_check_all_inside_2176 : 
	add	r1 r9 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22340
	addi	r4 r0 1
	return
L_else_22340 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r8 r1 0
	ldi	r4 r8 5
	fldi	f2 r4 0
	fsub	f7 f8 f2
	ldi	r4 r8 5
	fldi	f2 r4 1
	fsub	f6 f10 f2
	ldi	r4 r8 5
	fldi	f2 r4 2
	fsub	f5 f9 f2
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22343
	fbgt	f0 f7 L_else_22392
	fadd	f3 f0 f7
	jump	L_cont_22390
L_else_22392 : 
	fsub	f3 f0 f7
L_cont_22390 : 
	ldi	r4 r8 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22395
	addi	r4 r0 0
	jump	L_cont_22393
L_else_22395 : 
	addi	r4 r0 1
L_cont_22393 : 
	bne	r4 r0 L_else_22398
	addi	r4 r0 0
	jump	L_cont_22396
L_else_22398 : 
	fbgt	f0 f6 L_else_22403
	fadd	f3 f0 f6
	jump	L_cont_22401
L_else_22403 : 
	fsub	f3 f0 f6
L_cont_22401 : 
	ldi	r4 r8 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22406
	addi	r4 r0 0
	jump	L_cont_22404
L_else_22406 : 
	addi	r4 r0 1
L_cont_22404 : 
	bne	r4 r0 L_else_22408
	addi	r4 r0 0
	jump	L_cont_22396
L_else_22408 : 
	fbgt	f0 f5 L_else_22411
	fadd	f3 f0 f5
	jump	L_cont_22409
L_else_22411 : 
	fsub	f3 f0 f5
L_cont_22409 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22413
	addi	r4 r0 0
	jump	L_cont_22396
L_else_22413 : 
	addi	r4 r0 1
L_cont_22396 : 
	bne	r4 r0 L_else_22400
	addi	r5 r0 1
	ldi	r4 r8 6
	sub	r4 r5 r4
	jump	L_cont_22341
L_else_22400 : 
	ldi	r4 r8 6
	add	r4 r0 r4
	jump	L_cont_22341
L_else_22343 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22415
	ldi	r4 r8 4
	fldi	f2 r4 0
	fmul	f3 f2 f7
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	addi	r5 r0 1
	ldi	r6 r8 6
	fbgt	f0 f2 L_else_22418
	addi	r4 r0 0
	jump	L_cont_22416
L_else_22418 : 
	addi	r4 r0 1
L_cont_22416 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_22341
L_else_22415 : 
	fmul	f3 f7 f7
	ldi	r4 r8 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r4 r8 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f5
	ldi	r4 r8 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	ldi	r4 r8 3
	bne	r4 r0 L_else_22421
	fadd	f3 f0 f4
	jump	L_cont_22419
L_else_22421 : 
	fmul	f3 f6 f5
	ldi	r4 r8 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fmul	f3 f5 f7
	ldi	r4 r8 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f6
	ldi	r4 r8 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
L_cont_22419 : 
	ldi	r4 r8 1
	addi	r5 r0 3
	bne	r4 r5 L_else_22424
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_22422
L_else_22424 : 
	fadd	f2 f0 f3
L_cont_22422 : 
	addi	r6 r0 1
	ldi	r5 r8 6
	fbgt	f0 f2 L_else_22427
	addi	r4 r0 0
	jump	L_cont_22425
L_else_22427 : 
	addi	r4 r0 1
L_cont_22425 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
L_cont_22341 : 
	bne	r4 r0 L_else_22345
	addi	r8 r7 1
	add	r1 r9 r8
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22347
	addi	r4 r0 1
	return
L_else_22347 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2171
	bne	r4 r0 L_else_22349
	addi	r7 r8 1
	add	r1 r9 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22351
	addi	r4 r0 1
	return
L_else_22351 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r6 r1 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f5 f8 f2
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f6 f10 f2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f7 f9 f2
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22354
	fbgt	f0 f5 L_else_22363
	fadd	f3 f0 f5
	jump	L_cont_22361
L_else_22363 : 
	fsub	f3 f0 f5
L_cont_22361 : 
	ldi	r4 r6 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22366
	addi	r4 r0 0
	jump	L_cont_22364
L_else_22366 : 
	addi	r4 r0 1
L_cont_22364 : 
	bne	r4 r0 L_else_22369
	addi	r4 r0 0
	jump	L_cont_22367
L_else_22369 : 
	fbgt	f0 f6 L_else_22374
	fadd	f3 f0 f6
	jump	L_cont_22372
L_else_22374 : 
	fsub	f3 f0 f6
L_cont_22372 : 
	ldi	r4 r6 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22377
	addi	r4 r0 0
	jump	L_cont_22375
L_else_22377 : 
	addi	r4 r0 1
L_cont_22375 : 
	bne	r4 r0 L_else_22379
	addi	r4 r0 0
	jump	L_cont_22367
L_else_22379 : 
	fbgt	f0 f7 L_else_22382
	fadd	f3 f0 f7
	jump	L_cont_22380
L_else_22382 : 
	fsub	f3 f0 f7
L_cont_22380 : 
	ldi	r4 r6 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22384
	addi	r4 r0 0
	jump	L_cont_22367
L_else_22384 : 
	addi	r4 r0 1
L_cont_22367 : 
	bne	r4 r0 L_else_22371
	addi	r5 r0 1
	ldi	r4 r6 6
	sub	r4 r5 r4
	jump	L_cont_22352
L_else_22371 : 
	ldi	r4 r6 6
	add	r4 r0 r4
	jump	L_cont_22352
L_else_22354 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22386
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f3 f2 f5
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	addi	r5 r0 1
	ldi	r6 r6 6
	fbgt	f0 f2 L_else_22389
	addi	r4 r0 0
	jump	L_cont_22387
L_else_22389 : 
	addi	r4 r0 1
L_cont_22387 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_22352
L_else_22386 : 
	call	L_is_second_outside_2166
L_cont_22352 : 
	bne	r4 r0 L_else_22356
	addi	r8 r7 1
	add	r1 r9 r8
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22358
	addi	r4 r0 1
	return
L_else_22358 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2171
	bne	r4 r0 L_else_22360
	addi	r4 r8 1
	add	r7 r0 r4
	jump	L_check_all_inside_2176
L_else_22360 : 
	addi	r4 r0 0
	return
L_else_22356 : 
	addi	r4 r0 0
	return
L_else_22349 : 
	addi	r4 r0 0
	return
L_else_22345 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2182 : 
	add	r1 r10 r11
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22430
	addi	r4 r0 0
	return
L_else_22430 : 
	add	r1 r10 r11
	ldi	r9 r1 0
	addi	r7 r0 1905
	addi	r4 r0 1970
	add	r1 r4 r9
	ldi	r8 r1 0
	fldi	f3 r0 1042
	ldi	r4 r8 5
	fldi	f2 r4 0
	fsub	f6 f3 f2
	fldi	f3 r0 1043
	ldi	r4 r8 5
	fldi	f2 r4 1
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	ldi	r4 r8 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r4 r7 1
	add	r1 r4 r9
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22433
	ldi	r7 r7 0
	call	L_solver_rect_fast_2097
	jump	L_cont_22431
L_else_22433 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22491
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22494
	addi	r4 r0 0
	jump	L_cont_22492
L_else_22494 : 
	addi	r4 r0 1
L_cont_22492 : 
	bne	r4 r0 L_else_22496
	addi	r4 r0 0
	jump	L_cont_22431
L_else_22496 : 
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22431
L_else_22491 : 
	add	r7 r0 r8
	fadd	f9 f0 f6
	fadd	f8 f0 f5
	fadd	f6 f0 f7
	call	L_solver_second_fast_2110
L_cont_22431 : 
	fldi	f3 r0 1073
	bne	r4 r0 L_else_22436
	addi	r4 r0 0
	jump	L_cont_22434
L_else_22436 : 
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_22489
	addi	r4 r0 0
	jump	L_cont_22434
L_else_22489 : 
	addi	r4 r0 1
L_cont_22434 : 
	bne	r4 r0 L_else_22438
	addi	r4 r0 1970
	add	r1 r4 r9
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22440
	addi	r4 r0 0
	return
L_else_22440 : 
	addi	r4 r11 1
	add	r11 r0 r4
	jump	L_shadow_check_and_group_2182
L_else_22438 : 
	fldi	f2 r0 33
	fadd	f4 f3 f2
	fldi	f2 r0 1039
	fmul	f3 f2 f4
	fldi	f2 r0 1042
	fadd	f8 f3 f2
	fldi	f2 r0 1040
	fmul	f3 f2 f4
	fldi	f2 r0 1043
	fadd	f10 f3 f2
	fldi	f2 r0 1041
	fmul	f3 f2 f4
	fldi	f2 r0 1044
	fadd	f9 f3 f2
	addi	r4 r0 0
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22443
	addi	r4 r0 1
	jump	L_cont_22441
L_else_22443 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2171
	bne	r4 r0 L_else_22447
	addi	r4 r0 1
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22449
	addi	r4 r0 1
	jump	L_cont_22441
L_else_22449 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r6 r1 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f5 f8 f2
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f6 f10 f2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f7 f9 f2
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22452
	fbgt	f0 f5 L_else_22461
	fadd	f3 f0 f5
	jump	L_cont_22459
L_else_22461 : 
	fsub	f3 f0 f5
L_cont_22459 : 
	ldi	r4 r6 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22464
	addi	r4 r0 0
	jump	L_cont_22462
L_else_22464 : 
	addi	r4 r0 1
L_cont_22462 : 
	bne	r4 r0 L_else_22467
	addi	r4 r0 0
	jump	L_cont_22465
L_else_22467 : 
	fbgt	f0 f6 L_else_22472
	fadd	f3 f0 f6
	jump	L_cont_22470
L_else_22472 : 
	fsub	f3 f0 f6
L_cont_22470 : 
	ldi	r4 r6 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22475
	addi	r4 r0 0
	jump	L_cont_22473
L_else_22475 : 
	addi	r4 r0 1
L_cont_22473 : 
	bne	r4 r0 L_else_22477
	addi	r4 r0 0
	jump	L_cont_22465
L_else_22477 : 
	fbgt	f0 f7 L_else_22480
	fadd	f3 f0 f7
	jump	L_cont_22478
L_else_22480 : 
	fsub	f3 f0 f7
L_cont_22478 : 
	ldi	r4 r6 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22482
	addi	r4 r0 0
	jump	L_cont_22465
L_else_22482 : 
	addi	r4 r0 1
L_cont_22465 : 
	bne	r4 r0 L_else_22469
	addi	r5 r0 1
	ldi	r4 r6 6
	sub	r4 r5 r4
	jump	L_cont_22450
L_else_22469 : 
	ldi	r4 r6 6
	add	r4 r0 r4
	jump	L_cont_22450
L_else_22452 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22484
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f3 f2 f5
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	addi	r4 r0 1
	ldi	r6 r6 6
	fbgt	f0 f2 L_else_22487
	addi	r5 r0 0
	jump	L_cont_22485
L_else_22487 : 
	addi	r5 r0 1
L_cont_22485 : 
	xor	r5 r6 r5
	sub	r4 r4 r5
	jump	L_cont_22450
L_else_22484 : 
	call	L_is_second_outside_2166
L_cont_22450 : 
	bne	r4 r0 L_else_22454
	addi	r4 r0 2
	add	r1 r10 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22456
	addi	r4 r0 1
	jump	L_cont_22441
L_else_22456 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2171
	bne	r4 r0 L_else_22458
	addi	r7 r0 3
	add	r9 r0 r10
	call	L_check_all_inside_2176
	jump	L_cont_22441
L_else_22458 : 
	addi	r4 r0 0
	jump	L_cont_22441
L_else_22454 : 
	addi	r4 r0 0
	jump	L_cont_22441
L_else_22447 : 
	addi	r4 r0 0
L_cont_22441 : 
	bne	r4 r0 L_else_22445
	addi	r4 r11 1
	add	r11 r0 r4
	jump	L_shadow_check_and_group_2182
L_else_22445 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2185 : 
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22499
	addi	r4 r0 0
	return
L_else_22499 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22501
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22503
	addi	r4 r0 0
	return
L_else_22503 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22505
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22507
	addi	r4 r0 0
	return
L_else_22507 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22509
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22511
	addi	r4 r0 0
	return
L_else_22511 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22513
	addi	r4 r12 1
	add	r12 r0 r4
	jump	L_shadow_check_one_or_group_2185
L_else_22513 : 
	addi	r4 r0 1
	return
L_else_22509 : 
	addi	r4 r0 1
	return
L_else_22505 : 
	addi	r4 r0 1
	return
L_else_22501 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2188 : 
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22516
	addi	r4 r0 0
	return
L_else_22516 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22519
	addi	r4 r0 1
	jump	L_cont_22517
L_else_22519 : 
	addi	r7 r0 1905
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r8 r1 0
	fldi	f3 r0 1042
	ldi	r4 r8 5
	fldi	f2 r4 0
	fsub	f6 f3 f2
	fldi	f3 r0 1043
	ldi	r4 r8 5
	fldi	f2 r4 1
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	ldi	r4 r8 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r4 r7 1
	add	r1 r4 r5
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22611
	ldi	r7 r7 0
	call	L_solver_rect_fast_2097
	jump	L_cont_22609
L_else_22611 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22635
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22638
	addi	r4 r0 0
	jump	L_cont_22636
L_else_22638 : 
	addi	r4 r0 1
L_cont_22636 : 
	bne	r4 r0 L_else_22640
	addi	r4 r0 0
	jump	L_cont_22609
L_else_22640 : 
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22609
L_else_22635 : 
	add	r7 r0 r8
	fadd	f9 f0 f6
	fadd	f8 f0 f5
	fadd	f6 f0 f7
	call	L_solver_second_fast_2110
L_cont_22609 : 
	bne	r4 r0 L_else_22613
	addi	r4 r0 0
	jump	L_cont_22517
L_else_22613 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_22616
	addi	r4 r0 0
	jump	L_cont_22614
L_else_22616 : 
	addi	r4 r0 1
L_cont_22614 : 
	bne	r4 r0 L_else_22618
	addi	r4 r0 0
	jump	L_cont_22517
L_else_22618 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22621
	addi	r4 r0 0
	jump	L_cont_22619
L_else_22621 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22625
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22627
	addi	r4 r0 0
	jump	L_cont_22619
L_else_22627 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22629
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22631
	addi	r4 r0 0
	jump	L_cont_22619
L_else_22631 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22633
	addi	r12 r0 4
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_22619
L_else_22633 : 
	addi	r4 r0 1
	jump	L_cont_22619
L_else_22629 : 
	addi	r4 r0 1
	jump	L_cont_22619
L_else_22625 : 
	addi	r4 r0 1
L_cont_22619 : 
	bne	r4 r0 L_else_22623
	addi	r4 r0 0
	jump	L_cont_22517
L_else_22623 : 
	addi	r4 r0 1
L_cont_22517 : 
	bne	r4 r0 L_else_22521
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r6 r16 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22523
	addi	r4 r0 0
	return
L_else_22523 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22526
	addi	r4 r0 1
	jump	L_cont_22524
L_else_22526 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2116
	bne	r4 r0 L_else_22541
	addi	r4 r0 0
	jump	L_cont_22524
L_else_22541 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_22544
	addi	r4 r0 0
	jump	L_cont_22542
L_else_22544 : 
	addi	r4 r0 1
L_cont_22542 : 
	bne	r4 r0 L_else_22546
	addi	r4 r0 0
	jump	L_cont_22524
L_else_22546 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22549
	addi	r4 r0 0
	jump	L_cont_22547
L_else_22549 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22553
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22555
	addi	r4 r0 0
	jump	L_cont_22547
L_else_22555 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22557
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_22547
L_else_22557 : 
	addi	r4 r0 1
	jump	L_cont_22547
L_else_22553 : 
	addi	r4 r0 1
L_cont_22547 : 
	bne	r4 r0 L_else_22551
	addi	r4 r0 0
	jump	L_cont_22524
L_else_22551 : 
	addi	r4 r0 1
L_cont_22524 : 
	bne	r4 r0 L_else_22528
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2188
L_else_22528 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22531
	addi	r4 r0 0
	jump	L_cont_22529
L_else_22531 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22535
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22537
	addi	r4 r0 0
	jump	L_cont_22529
L_else_22537 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22539
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_22529
L_else_22539 : 
	addi	r4 r0 1
	jump	L_cont_22529
L_else_22535 : 
	addi	r4 r0 1
L_cont_22529 : 
	bne	r4 r0 L_else_22533
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2188
L_else_22533 : 
	addi	r4 r0 1
	return
L_else_22521 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22560
	addi	r4 r0 0
	jump	L_cont_22558
L_else_22560 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22600
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22602
	addi	r4 r0 0
	jump	L_cont_22558
L_else_22602 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22604
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22606
	addi	r4 r0 0
	jump	L_cont_22558
L_else_22606 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22608
	addi	r12 r0 4
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_22558
L_else_22608 : 
	addi	r4 r0 1
	jump	L_cont_22558
L_else_22604 : 
	addi	r4 r0 1
	jump	L_cont_22558
L_else_22600 : 
	addi	r4 r0 1
L_cont_22558 : 
	bne	r4 r0 L_else_22562
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r6 r16 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22564
	addi	r4 r0 0
	return
L_else_22564 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22567
	addi	r4 r0 1
	jump	L_cont_22565
L_else_22567 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2116
	bne	r4 r0 L_else_22582
	addi	r4 r0 0
	jump	L_cont_22565
L_else_22582 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else_22585
	addi	r4 r0 0
	jump	L_cont_22583
L_else_22585 : 
	addi	r4 r0 1
L_cont_22583 : 
	bne	r4 r0 L_else_22587
	addi	r4 r0 0
	jump	L_cont_22565
L_else_22587 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22590
	addi	r4 r0 0
	jump	L_cont_22588
L_else_22590 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22594
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22596
	addi	r4 r0 0
	jump	L_cont_22588
L_else_22596 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22598
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_22588
L_else_22598 : 
	addi	r4 r0 1
	jump	L_cont_22588
L_else_22594 : 
	addi	r4 r0 1
L_cont_22588 : 
	bne	r4 r0 L_else_22592
	addi	r4 r0 0
	jump	L_cont_22565
L_else_22592 : 
	addi	r4 r0 1
L_cont_22565 : 
	bne	r4 r0 L_else_22569
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2188
L_else_22569 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22572
	addi	r4 r0 0
	jump	L_cont_22570
L_else_22572 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22576
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22578
	addi	r4 r0 0
	jump	L_cont_22570
L_else_22578 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_22580
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_22570
L_else_22580 : 
	addi	r4 r0 1
	jump	L_cont_22570
L_else_22576 : 
	addi	r4 r0 1
L_cont_22570 : 
	bne	r4 r0 L_else_22574
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2188
L_else_22574 : 
	addi	r4 r0 1
	return
L_else_22562 : 
	addi	r4 r0 1
	return
L_solve_each_element_2191 : 
	add	r1 r12 r13
	ldi	r15 r1 0
	addi	r4 r0 -1
	bne	r15 r4 L_else_22643
	return
L_else_22643 : 
	addi	r4 r0 1970
	add	r1 r4 r15
	ldi	r11 r1 0
	fldi	f3 r0 1063
	ldi	r4 r11 5
	fldi	f2 r4 0
	fsub	f6 f3 f2
	fldi	f3 r0 1064
	ldi	r4 r11 5
	fldi	f2 r4 1
	fsub	f5 f3 f2
	fldi	f3 r0 1065
	ldi	r4 r11 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r5 r11 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22646
	add	r10 r0 r14
	call	L_solver_rect_2062
	add	r10 r0 r4
	jump	L_cont_22644
L_else_22646 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22710
	ldi	r4 r11 4
	fldi	f2 r14 0
	fldi	f3 r4 0
	fmul	f3 f2 f3
	fldi	f4 r14 1
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r14 2
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fbgt	f4 f0 L_else_22713
	addi	r5 r0 0
	jump	L_cont_22711
L_else_22713 : 
	addi	r5 r0 1
L_cont_22711 : 
	bne	r5 r0 L_else_22715
	addi	r10 r0 0
	jump	L_cont_22644
L_else_22715 : 
	fldi	f2 r4 0
	fmul	f3 f2 f6
	fldi	f2 r4 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r10 r0 1
	jump	L_cont_22644
L_else_22710 : 
	add	r6 r0 r11
	add	r5 r0 r14
	fadd	f9 f0 f7
	fadd	f1 f0 f5
	fadd	f5 f0 f6
	fadd	f6 f0 f1
	call	L_solver_second_2087
	add	r10 r0 r4
L_cont_22644 : 
	bne	r10 r0 L_else_22648
	addi	r4 r0 1970
	add	r1 r4 r15
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22650
	return
L_else_22650 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_solve_each_element_2191
L_else_22648 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_22653
	addi	r4 r0 0
	jump	L_cont_22651
L_else_22653 : 
	addi	r4 r0 1
L_cont_22651 : 
	bne	r4 r0 L_else_22656
	jump	L_cont_22654
L_else_22656 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22659
	addi	r4 r0 0
	jump	L_cont_22657
L_else_22659 : 
	addi	r4 r0 1
L_cont_22657 : 
	bne	r4 r0 L_else_22661
	jump	L_cont_22654
L_else_22661 : 
	fldi	f2 r0 33
	fadd	f13 f3 f2
	fldi	f2 r14 0
	fmul	f3 f2 f13
	fldi	f2 r0 1063
	fadd	f14 f3 f2
	fldi	f2 r14 1
	fmul	f3 f2 f13
	fldi	f2 r0 1064
	fadd	f12 f3 f2
	fldi	f2 r14 2
	fmul	f3 f2 f13
	fldi	f2 r0 1065
	fadd	f11 f3 f2
	addi	r4 r0 0
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22664
	addi	r4 r0 1
	jump	L_cont_22662
L_else_22664 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2171
	bne	r4 r0 L_else_22668
	addi	r4 r0 1
	add	r1 r12 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22670
	addi	r4 r0 1
	jump	L_cont_22662
L_else_22670 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r7 r1 0
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f5 f14 f2
	ldi	r4 r7 5
	fldi	f2 r4 1
	fsub	f6 f12 f2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f7 f11 f2
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22673
	fbgt	f0 f5 L_else_22682
	fadd	f3 f0 f5
	jump	L_cont_22680
L_else_22682 : 
	fsub	f3 f0 f5
L_cont_22680 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22685
	addi	r4 r0 0
	jump	L_cont_22683
L_else_22685 : 
	addi	r4 r0 1
L_cont_22683 : 
	bne	r4 r0 L_else_22688
	addi	r4 r0 0
	jump	L_cont_22686
L_else_22688 : 
	fbgt	f0 f6 L_else_22693
	fadd	f3 f0 f6
	jump	L_cont_22691
L_else_22693 : 
	fsub	f3 f0 f6
L_cont_22691 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22696
	addi	r4 r0 0
	jump	L_cont_22694
L_else_22696 : 
	addi	r4 r0 1
L_cont_22694 : 
	bne	r4 r0 L_else_22698
	addi	r4 r0 0
	jump	L_cont_22686
L_else_22698 : 
	fbgt	f0 f7 L_else_22701
	fadd	f3 f0 f7
	jump	L_cont_22699
L_else_22701 : 
	fsub	f3 f0 f7
L_cont_22699 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22703
	addi	r4 r0 0
	jump	L_cont_22686
L_else_22703 : 
	addi	r4 r0 1
L_cont_22686 : 
	bne	r4 r0 L_else_22690
	addi	r4 r0 1
	ldi	r5 r7 6
	sub	r4 r4 r5
	jump	L_cont_22671
L_else_22690 : 
	ldi	r4 r7 6
	add	r4 r0 r4
	jump	L_cont_22671
L_else_22673 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22705
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f2 f5
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_22708
	addi	r4 r0 0
	jump	L_cont_22706
L_else_22708 : 
	addi	r4 r0 1
L_cont_22706 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	jump	L_cont_22671
L_else_22705 : 
	add	r6 r0 r7
	call	L_is_second_outside_2166
L_cont_22671 : 
	bne	r4 r0 L_else_22675
	addi	r4 r0 2
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22677
	addi	r4 r0 1
	jump	L_cont_22662
L_else_22677 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2171
	bne	r4 r0 L_else_22679
	addi	r7 r0 3
	add	r9 r0 r12
	fadd	f8 f0 f14
	fadd	f10 f0 f12
	fadd	f9 f0 f11
	call	L_check_all_inside_2176
	jump	L_cont_22662
L_else_22679 : 
	addi	r4 r0 0
	jump	L_cont_22662
L_else_22675 : 
	addi	r4 r0 0
	jump	L_cont_22662
L_else_22668 : 
	addi	r4 r0 0
L_cont_22662 : 
	bne	r4 r0 L_else_22666
	jump	L_cont_22654
L_else_22666 : 
	fsti	f13 r0 1082
	fsti	f14 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r15 r0 1045
	sti	r10 r0 1074
L_cont_22654 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_solve_each_element_2191
L_solve_one_or_network_2195 : 
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22718
	return
L_else_22718 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2191
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22720
	return
L_else_22720 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2191
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22722
	return
L_else_22722 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2191
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22724
	return
L_else_22724 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2191
	addi	r4 r16 1
	add	r16 r0 r4
	jump	L_solve_one_or_network_2195
L_trace_or_matrix_2199 : 
	add	r1 r19 r21
	ldi	r17 r1 0
	ldi	r5 r17 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22727
	return
L_else_22727 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22730
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22793
	jump	L_cont_22728
L_else_22793 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2191
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22795
	jump	L_cont_22728
L_else_22795 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2191
	addi	r4 r0 3
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22797
	jump	L_cont_22728
L_else_22797 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2191
	addi	r16 r0 4
	add	r18 r0 r20
	call	L_solve_one_or_network_2195
	jump	L_cont_22728
L_else_22730 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r11 r1 0
	fldi	f3 r0 1063
	ldi	r4 r11 5
	fldi	f2 r4 0
	fsub	f6 f3 f2
	fldi	f3 r0 1064
	ldi	r4 r11 5
	fldi	f2 r4 1
	fsub	f5 f3 f2
	fldi	f3 r0 1065
	ldi	r4 r11 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r5 r11 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22800
	add	r10 r0 r20
	call	L_solver_rect_2062
	jump	L_cont_22798
L_else_22800 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22815
	ldi	r4 r11 4
	fldi	f2 r20 0
	fldi	f3 r4 0
	fmul	f3 f2 f3
	fldi	f4 r20 1
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r20 2
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fbgt	f4 f0 L_else_22818
	addi	r5 r0 0
	jump	L_cont_22816
L_else_22818 : 
	addi	r5 r0 1
L_cont_22816 : 
	bne	r5 r0 L_else_22820
	addi	r4 r0 0
	jump	L_cont_22798
L_else_22820 : 
	fldi	f2 r4 0
	fmul	f3 f2 f6
	fldi	f2 r4 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22798
L_else_22815 : 
	add	r6 r0 r11
	add	r5 r0 r20
	fadd	f9 f0 f7
	fadd	f1 f0 f5
	fadd	f5 f0 f6
	fadd	f6 f0 f1
	call	L_solver_second_2087
L_cont_22798 : 
	bne	r4 r0 L_else_22802
	jump	L_cont_22728
L_else_22802 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22805
	addi	r4 r0 0
	jump	L_cont_22803
L_else_22805 : 
	addi	r4 r0 1
L_cont_22803 : 
	bne	r4 r0 L_else_22807
	jump	L_cont_22728
L_else_22807 : 
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22809
	jump	L_cont_22728
L_else_22809 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2191
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22811
	jump	L_cont_22728
L_else_22811 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2191
	addi	r4 r0 3
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22813
	jump	L_cont_22728
L_else_22813 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2191
	addi	r16 r0 4
	add	r18 r0 r20
	call	L_solve_one_or_network_2195
L_cont_22728 : 
	addi	r21 r21 1
	add	r1 r19 r21
	ldi	r17 r1 0
	ldi	r5 r17 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22732
	return
L_else_22732 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22735
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22737
	jump	L_cont_22733
L_else_22737 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2191
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22739
	jump	L_cont_22733
L_else_22739 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2191
	addi	r16 r0 3
	add	r18 r0 r20
	call	L_solve_one_or_network_2195
	jump	L_cont_22733
L_else_22735 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r11 r1 0
	fldi	f3 r0 1063
	ldi	r4 r11 5
	fldi	f2 r4 0
	fsub	f7 f3 f2
	fldi	f3 r0 1064
	ldi	r4 r11 5
	fldi	f2 r4 1
	fsub	f6 f3 f2
	fldi	f3 r0 1065
	ldi	r4 r11 5
	fldi	f2 r4 2
	fsub	f10 f3 f2
	ldi	r5 r11 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22742
	addi	r7 r0 0
	addi	r8 r0 1
	addi	r10 r0 2
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f7
	fadd	f3 f0 f6
	fadd	f5 f0 f10
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_22755
	addi	r7 r0 1
	addi	r8 r0 2
	addi	r10 r0 0
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f6
	fadd	f3 f0 f10
	fadd	f5 f0 f7
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_22757
	addi	r7 r0 2
	addi	r8 r0 0
	addi	r10 r0 1
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f10
	fadd	f3 f0 f7
	fadd	f5 f0 f6
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_22759
	addi	r4 r0 0
	jump	L_cont_22740
L_else_22759 : 
	addi	r4 r0 3
	jump	L_cont_22740
L_else_22757 : 
	addi	r4 r0 2
	jump	L_cont_22740
L_else_22755 : 
	addi	r4 r0 1
	jump	L_cont_22740
L_else_22742 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22761
	ldi	r4 r11 4
	fldi	f3 r20 0
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f2 r20 1
	fldi	f3 r4 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r20 2
	fldi	f3 r4 2
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fbgt	f4 f0 L_else_22764
	addi	r5 r0 0
	jump	L_cont_22762
L_else_22764 : 
	addi	r5 r0 1
L_cont_22762 : 
	bne	r5 r0 L_else_22766
	addi	r4 r0 0
	jump	L_cont_22740
L_else_22766 : 
	fldi	f2 r4 0
	fmul	f3 f2 f7
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f10
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22740
L_else_22761 : 
	fldi	f8 r20 0
	fldi	f9 r20 1
	fldi	f5 r20 2
	fmul	f3 f8 f8
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f9 f9
	ldi	r4 r11 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r4 r11 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	ldi	r4 r11 3
	bne	r4 r0 L_else_22769
	fadd	f8 f0 f4
	jump	L_cont_22767
L_else_22769 : 
	fmul	f3 f9 f5
	ldi	r4 r11 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f8
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f8 f9
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f8 f4 f2
L_cont_22767 : 
	fbne	f8 f0 L_else_22772
	addi	r4 r0 1
	jump	L_cont_22770
L_else_22772 : 
	addi	r4 r0 0
L_cont_22770 : 
	bne	r4 r0 L_else_22774
	fldi	f11 r20 0
	fldi	f12 r20 1
	fldi	f9 r20 2
	fmul	f3 f11 f7
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f12 f6
	ldi	r4 r11 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f9 f10
	ldi	r4 r11 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f5 f4 f2
	ldi	r4 r11 3
	bne	r4 r0 L_else_22777
	fadd	f9 f0 f5
	jump	L_cont_22775
L_else_22777 : 
	fmul	f2 f9 f6
	fmul	f3 f12 f10
	fadd	f3 f2 f3
	ldi	r4 r11 9
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f2 f11 f10
	fmul	f3 f9 f7
	fadd	f3 f2 f3
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f11 f6
	fmul	f2 f12 f7
	fadd	f4 f4 f2
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f9 f5 f2
L_cont_22775 : 
	fmul	f3 f7 f7
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r4 r11 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f10 f10
	ldi	r4 r11 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	ldi	r4 r11 3
	bne	r4 r0 L_else_22780
	fadd	f3 f0 f4
	jump	L_cont_22778
L_else_22780 : 
	fmul	f3 f6 f10
	ldi	r4 r11 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f10 f7
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f6
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
L_cont_22778 : 
	ldi	r5 r11 1
	addi	r4 r0 3
	bne	r5 r4 L_else_22783
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_22781
L_else_22783 : 
	fadd	f2 f0 f3
L_cont_22781 : 
	fmul	f3 f9 f9
	fmul	f2 f8 f2
	fsub	f7 f3 f2
	fbgt	f7 f0 L_else_22786
	addi	r4 r0 0
	jump	L_cont_22784
L_else_22786 : 
	addi	r4 r0 1
L_cont_22784 : 
	bne	r4 r0 L_else_22788
	addi	r4 r0 0
	jump	L_cont_22740
L_else_22788 : 
	call	L_sqrt_1896
	ldi	r4 r11 6
	bne	r4 r0 L_else_22791
	fsub	f2 f0 f2
	jump	L_cont_22789
L_else_22791 : 
	fadd	f2 f0 f2
L_cont_22789 : 
	fsub	f2 f2 f9
	fdiv	f2 f2 f8
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22740
L_else_22774 : 
	addi	r4 r0 0
L_cont_22740 : 
	bne	r4 r0 L_else_22744
	jump	L_cont_22733
L_else_22744 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22747
	addi	r4 r0 0
	jump	L_cont_22745
L_else_22747 : 
	addi	r4 r0 1
L_cont_22745 : 
	bne	r4 r0 L_else_22749
	jump	L_cont_22733
L_else_22749 : 
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22751
	jump	L_cont_22733
L_else_22751 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2191
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22753
	jump	L_cont_22733
L_else_22753 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2191
	addi	r16 r0 3
	add	r18 r0 r20
	call	L_solve_one_or_network_2195
L_cont_22733 : 
	addi	r4 r21 1
	add	r21 r0 r4
	jump	L_trace_or_matrix_2199
L_solve_each_element_fast_2205 : 
	ldi	r9 r12 0
	add	r1 r13 r14
	ldi	r11 r1 0
	addi	r4 r0 -1
	bne	r11 r4 L_else_22823
	return
L_else_22823 : 
	addi	r4 r0 1970
	add	r1 r4 r11
	ldi	r8 r1 0
	ldi	r7 r8 10
	fldi	f6 r7 0
	fldi	f5 r7 1
	fldi	f7 r7 2
	ldi	r4 r12 1
	add	r1 r4 r11
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22826
	ldi	r7 r12 0
	call	L_solver_rect_fast_2097
	add	r10 r0 r4
	jump	L_cont_22824
L_else_22826 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22890
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22893
	addi	r4 r0 0
	jump	L_cont_22891
L_else_22893 : 
	addi	r4 r0 1
L_cont_22891 : 
	bne	r4 r0 L_else_22895
	addi	r10 r0 0
	jump	L_cont_22824
L_else_22895 : 
	fldi	f3 r6 0
	fldi	f2 r7 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r10 r0 1
	jump	L_cont_22824
L_else_22890 : 
	add	r4 r0 r6
	add	r5 r0 r7
	add	r6 r0 r8
	fadd	f3 f0 f5
	fadd	f4 f0 f7
	fadd	f5 f0 f6
	call	L_solver_second_fast2_2127
	add	r10 r0 r4
L_cont_22824 : 
	bne	r10 r0 L_else_22828
	addi	r4 r0 1970
	add	r1 r4 r11
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22830
	return
L_else_22830 : 
	addi	r4 r14 1
	add	r14 r0 r4
	jump	L_solve_each_element_fast_2205
L_else_22828 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_22833
	addi	r4 r0 0
	jump	L_cont_22831
L_else_22833 : 
	addi	r4 r0 1
L_cont_22831 : 
	bne	r4 r0 L_else_22836
	jump	L_cont_22834
L_else_22836 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22839
	addi	r4 r0 0
	jump	L_cont_22837
L_else_22839 : 
	addi	r4 r0 1
L_cont_22837 : 
	bne	r4 r0 L_else_22841
	jump	L_cont_22834
L_else_22841 : 
	fldi	f2 r0 33
	fadd	f13 f3 f2
	fldi	f2 r9 0
	fmul	f3 f2 f13
	fldi	f2 r0 1066
	fadd	f14 f3 f2
	fldi	f2 r9 1
	fmul	f3 f2 f13
	fldi	f2 r0 1067
	fadd	f12 f3 f2
	fldi	f2 r9 2
	fmul	f3 f2 f13
	fldi	f2 r0 1068
	fadd	f11 f3 f2
	addi	r4 r0 0
	add	r1 r13 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22844
	addi	r4 r0 1
	jump	L_cont_22842
L_else_22844 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2171
	bne	r4 r0 L_else_22848
	addi	r4 r0 1
	add	r1 r13 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22850
	addi	r4 r0 1
	jump	L_cont_22842
L_else_22850 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r6 r1 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f5 f14 f2
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f6 f12 f2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f7 f11 f2
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22853
	fbgt	f0 f5 L_else_22862
	fadd	f3 f0 f5
	jump	L_cont_22860
L_else_22862 : 
	fsub	f3 f0 f5
L_cont_22860 : 
	ldi	r4 r6 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22865
	addi	r4 r0 0
	jump	L_cont_22863
L_else_22865 : 
	addi	r4 r0 1
L_cont_22863 : 
	bne	r4 r0 L_else_22868
	addi	r4 r0 0
	jump	L_cont_22866
L_else_22868 : 
	fbgt	f0 f6 L_else_22873
	fadd	f3 f0 f6
	jump	L_cont_22871
L_else_22873 : 
	fsub	f3 f0 f6
L_cont_22871 : 
	ldi	r4 r6 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22876
	addi	r4 r0 0
	jump	L_cont_22874
L_else_22876 : 
	addi	r4 r0 1
L_cont_22874 : 
	bne	r4 r0 L_else_22878
	addi	r4 r0 0
	jump	L_cont_22866
L_else_22878 : 
	fbgt	f0 f7 L_else_22881
	fadd	f3 f0 f7
	jump	L_cont_22879
L_else_22881 : 
	fsub	f3 f0 f7
L_cont_22879 : 
	ldi	r4 r6 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22883
	addi	r4 r0 0
	jump	L_cont_22866
L_else_22883 : 
	addi	r4 r0 1
L_cont_22866 : 
	bne	r4 r0 L_else_22870
	addi	r5 r0 1
	ldi	r4 r6 6
	sub	r4 r5 r4
	jump	L_cont_22851
L_else_22870 : 
	ldi	r4 r6 6
	add	r4 r0 r4
	jump	L_cont_22851
L_else_22853 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22885
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f3 f2 f5
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	addi	r5 r0 1
	ldi	r6 r6 6
	fbgt	f0 f2 L_else_22888
	addi	r4 r0 0
	jump	L_cont_22886
L_else_22888 : 
	addi	r4 r0 1
L_cont_22886 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_22851
L_else_22885 : 
	call	L_is_second_outside_2166
L_cont_22851 : 
	bne	r4 r0 L_else_22855
	addi	r4 r0 2
	add	r1 r13 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22857
	addi	r4 r0 1
	jump	L_cont_22842
L_else_22857 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2171
	bne	r4 r0 L_else_22859
	addi	r7 r0 3
	add	r9 r0 r13
	fadd	f8 f0 f14
	fadd	f10 f0 f12
	fadd	f9 f0 f11
	call	L_check_all_inside_2176
	jump	L_cont_22842
L_else_22859 : 
	addi	r4 r0 0
	jump	L_cont_22842
L_else_22855 : 
	addi	r4 r0 0
	jump	L_cont_22842
L_else_22848 : 
	addi	r4 r0 0
L_cont_22842 : 
	bne	r4 r0 L_else_22846
	jump	L_cont_22834
L_else_22846 : 
	fsti	f13 r0 1082
	fsti	f14 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r11 r0 1045
	sti	r10 r0 1074
L_cont_22834 : 
	addi	r4 r14 1
	add	r14 r0 r4
	jump	L_solve_each_element_fast_2205
L_solve_one_or_network_fast_2209 : 
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22898
	return
L_else_22898 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2205
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22900
	return
L_else_22900 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2205
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22902
	return
L_else_22902 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2205
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22904
	return
L_else_22904 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2205
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_solve_one_or_network_fast_2209
L_trace_or_matrix_fast_2213 : 
	add	r1 r18 r20
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22907
	return
L_else_22907 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22910
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22932
	jump	L_cont_22908
L_else_22932 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22934
	jump	L_cont_22908
L_else_22934 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22936
	jump	L_cont_22908
L_else_22936 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r15 r0 4
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2209
	jump	L_cont_22908
L_else_22910 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r8 r1 0
	ldi	r7 r8 10
	fldi	f6 r7 0
	fldi	f5 r7 1
	fldi	f7 r7 2
	ldi	r4 r19 1
	add	r1 r4 r5
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22939
	ldi	r7 r19 0
	call	L_solver_rect_fast_2097
	jump	L_cont_22937
L_else_22939 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22954
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22957
	addi	r4 r0 0
	jump	L_cont_22955
L_else_22957 : 
	addi	r4 r0 1
L_cont_22955 : 
	bne	r4 r0 L_else_22959
	addi	r4 r0 0
	jump	L_cont_22937
L_else_22959 : 
	fldi	f3 r6 0
	fldi	f2 r7 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22937
L_else_22954 : 
	add	r4 r0 r6
	add	r5 r0 r7
	add	r6 r0 r8
	fadd	f3 f0 f5
	fadd	f4 f0 f7
	fadd	f5 f0 f6
	call	L_solver_second_fast2_2127
L_cont_22937 : 
	bne	r4 r0 L_else_22941
	jump	L_cont_22908
L_else_22941 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_22944
	addi	r4 r0 0
	jump	L_cont_22942
L_else_22944 : 
	addi	r4 r0 1
L_cont_22942 : 
	bne	r4 r0 L_else_22946
	jump	L_cont_22908
L_else_22946 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22948
	jump	L_cont_22908
L_else_22948 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22950
	jump	L_cont_22908
L_else_22950 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22952
	jump	L_cont_22908
L_else_22952 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r15 r0 4
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2209
L_cont_22908 : 
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22912
	return
L_else_22912 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22915
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22917
	jump	L_cont_22913
L_else_22917 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22919
	jump	L_cont_22913
L_else_22919 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r15 r0 3
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2209
	jump	L_cont_22913
L_else_22915 : 
	add	r7 r0 r19
	call	L_solver_fast2_2134
	bne	r4 r0 L_else_22921
	jump	L_cont_22913
L_else_22921 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22924
	addi	r4 r0 0
	jump	L_cont_22922
L_else_22924 : 
	addi	r4 r0 1
L_cont_22922 : 
	bne	r4 r0 L_else_22926
	jump	L_cont_22913
L_else_22926 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22928
	jump	L_cont_22913
L_else_22928 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22930
	jump	L_cont_22913
L_else_22930 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r15 r0 3
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2209
L_cont_22913 : 
	addi	r4 r20 1
	add	r20 r0 r4
	jump	L_trace_or_matrix_fast_2213
L_get_nvector_second_2223 : 
	fldi	f3 r0 1042
	ldi	r4 r5 5
	fldi	f2 r4 0
	fsub	f9 f3 f2
	fldi	f3 r0 1043
	ldi	r4 r5 5
	fldi	f2 r4 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r4 r5 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r4 r5 4
	fldi	f2 r4 0
	fmul	f5 f9 f2
	ldi	r4 r5 4
	fldi	f2 r4 1
	fmul	f6 f8 f2
	ldi	r4 r5 4
	fldi	f2 r4 2
	fmul	f4 f7 f2
	ldi	r4 r5 3
	bne	r4 r0 L_else_22963
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_22961
L_else_22963 : 
	ldi	r4 r5 9
	fldi	f2 r4 2
	fmul	f3 f8 f2
	ldi	r4 r5 9
	fldi	f2 r4 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f2 f5 f2
	fsti	f2 r0 1046
	ldi	r4 r5 9
	fldi	f2 r4 2
	fmul	f3 f9 f2
	ldi	r4 r5 9
	fldi	f2 r4 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r4 r5 9
	fldi	f2 r4 1
	fmul	f3 f9 f2
	ldi	r4 r5 9
	fldi	f2 r4 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_22961 : 
	ldi	r4 r5 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f7 f3 f2
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_22966
	fldi	f4 r0 20
	jump	L_cont_22964
L_else_22966 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_22964 : 
	fldi	f2 r0 26
	fmul	f2 f2 f4
	fsub	f3 f4 f3
	fbgt	f0 f3 L_else_22969
	fadd	f3 f0 f3
	jump	L_cont_22967
L_else_22969 : 
	fsub	f3 f0 f3
L_cont_22967 : 
	fbgt	f2 f3 L_else_22972
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f5 f3 f2
	fadd	f6 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_22970
L_else_22972 : 
	fadd	f2 f0 f4
L_cont_22970 : 
	fmul	f3 f7 f2
	fbne	f3 f0 L_else_22975
	addi	r5 r0 1
	jump	L_cont_22973
L_else_22975 : 
	addi	r5 r0 0
L_cont_22973 : 
	bne	r5 r0 L_else_22978
	bne	r4 r0 L_else_22980
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_22976
L_else_22980 : 
	fldi	f2 r0 29
	fdiv	f3 f2 f3
	jump	L_cont_22976
L_else_22978 : 
	fldi	f3 r0 20
L_cont_22976 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
	return
L_get_nvector_2225 : 
	ldi	r6 r5 1
	addi	r4 r0 1
	bne	r6 r4 L_else_22983
	ldi	r4 r0 1074
	fldi	f2 r0 30
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r6 r0 1046
	addi	r5 r4 -1
	addi	r4 r4 -1
	add	r1 r7 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_22986
	addi	r4 r0 1
	jump	L_cont_22984
L_else_22986 : 
	addi	r4 r0 0
L_cont_22984 : 
	bne	r4 r0 L_else_22989
	fbgt	f2 f0 L_else_22992
	addi	r4 r0 0
	jump	L_cont_22990
L_else_22992 : 
	addi	r4 r0 1
L_cont_22990 : 
	bne	r4 r0 L_else_22994
	fldi	f2 r0 29
	jump	L_cont_22987
L_else_22994 : 
	fldi	f2 r0 20
	jump	L_cont_22987
L_else_22989 : 
	fldi	f2 r0 30
L_cont_22987 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	return
L_else_22983 : 
	addi	r4 r0 2
	bne	r6 r4 L_else_22996
	ldi	r4 r5 4
	fldi	f2 r4 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	ldi	r4 r5 4
	fldi	f2 r4 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	ldi	r4 r5 4
	fldi	f2 r4 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	return
L_else_22996 : 
	fldi	f3 r0 1042
	ldi	r4 r5 5
	fldi	f2 r4 0
	fsub	f9 f3 f2
	fldi	f3 r0 1043
	ldi	r4 r5 5
	fldi	f2 r4 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r4 r5 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r4 r5 4
	fldi	f2 r4 0
	fmul	f5 f9 f2
	ldi	r4 r5 4
	fldi	f2 r4 1
	fmul	f6 f8 f2
	ldi	r4 r5 4
	fldi	f2 r4 2
	fmul	f4 f7 f2
	ldi	r4 r5 3
	bne	r4 r0 L_else_22999
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_22997
L_else_22999 : 
	ldi	r4 r5 9
	fldi	f2 r4 2
	fmul	f3 f8 f2
	ldi	r4 r5 9
	fldi	f2 r4 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f2 f5 f2
	fsti	f2 r0 1046
	ldi	r4 r5 9
	fldi	f2 r4 2
	fmul	f3 f9 f2
	ldi	r4 r5 9
	fldi	f2 r4 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r4 r5 9
	fldi	f2 r4 1
	fmul	f3 f9 f2
	ldi	r4 r5 9
	fldi	f2 r4 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_22997 : 
	addi	r4 r0 1046
	ldi	r5 r5 6
	jump	L_vecunit_sgn_1931
L_utexture_2228 : 
	ldi	r5 r6 0
	ldi	r4 r6 8
	fldi	f2 r4 0
	fsti	f2 r0 1049
	ldi	r4 r6 8
	fldi	f2 r4 1
	fsti	f2 r0 1050
	ldi	r4 r6 8
	fldi	f2 r4 2
	fsti	f2 r0 1051
	addi	r4 r0 1
	bne	r5 r4 L_else_23002
	fldi	f3 r7 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f4 f3 f2
	fldi	f2 r0 35
	fmul	f2 f4 f2
	flr	f2 f2
	fldi	f3 r0 36
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 37
	fbgt	f2 f3 L_else_23005
	addi	r5 r0 0
	jump	L_cont_23003
L_else_23005 : 
	addi	r5 r0 1
L_cont_23003 : 
	fldi	f3 r7 2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f3 f3 f2
	fldi	f2 r0 35
	fmul	f2 f3 f2
	flr	f4 f2
	fldi	f2 r0 36
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_23008
	addi	r4 r0 0
	jump	L_cont_23006
L_else_23008 : 
	addi	r4 r0 1
L_cont_23006 : 
	bne	r5 r0 L_else_23011
	bne	r4 r0 L_else_23013
	fldi	f2 r0 38
	jump	L_cont_23009
L_else_23013 : 
	fldi	f2 r0 30
	jump	L_cont_23009
L_else_23011 : 
	bne	r4 r0 L_else_23015
	fldi	f2 r0 30
	jump	L_cont_23009
L_else_23015 : 
	fldi	f2 r0 38
L_cont_23009 : 
	fsti	f2 r0 1050
	return
L_else_23002 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23017
	fldi	f3 r7 1
	fldi	f2 r0 39
	fmul	f9 f3 f2
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_23020
	fldi	f3 r0 2
	fbgt	f3 f9 L_else_23022
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_23024
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_23026
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	jump	L_cont_23018
L_else_23026 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_23028
	fadd	f2 f4 f9
	fmul	f6 f2 f2
	fmul	f8 f6 f6
	fmul	f5 f8 f6
	fmul	f7 f5 f6
	fmul	f3 f7 f6
	fmul	f4 f3 f6
	fldi	f2 r0 14
	fmul	f4 f2 f4
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	jump	L_cont_23018
L_else_23028 : 
	fadd	f9 f5 f9
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	fsub	f2 f0 f2
	jump	L_cont_23018
L_else_23024 : 
	fbgt	f9 f3 L_else_23030
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	jump	L_cont_23018
L_else_23030 : 
	fbgt	f9 f2 L_else_23032
	fsub	f2 f9 f4
	fmul	f6 f2 f2
	fmul	f8 f6 f6
	fmul	f5 f8 f6
	fmul	f7 f5 f6
	fmul	f3 f7 f6
	fmul	f4 f3 f6
	fldi	f2 r0 14
	fmul	f4 f2 f4
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	jump	L_cont_23018
L_else_23032 : 
	fsub	f8 f5 f9
	fmul	f2 f8 f8
	fmul	f6 f8 f2
	fmul	f9 f6 f2
	fmul	f5 f9 f2
	fmul	f7 f5 f2
	fmul	f3 f7 f2
	fmul	f4 f3 f2
	fldi	f2 r0 7
	fmul	f4 f2 f4
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 9
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fadd	f2 f2 f8
	jump	L_cont_23018
L_else_23022 : 
	fadd	f9 f9 f2
	call	L_sin_1886
	jump	L_cont_23018
L_else_23020 : 
	fsub	f9 f9 f2
	call	L_sin_1886
L_cont_23018 : 
	fmul	f4 f2 f2
	fldi	f2 r0 38
	fmul	f2 f2 f4
	fsti	f2 r0 1049
	fldi	f3 r0 38
	fldi	f2 r0 20
	fsub	f2 f2 f4
	fmul	f2 f3 f2
	fsti	f2 r0 1050
	return
L_else_23017 : 
	addi	r4 r0 3
	bne	r5 r4 L_else_23034
	fldi	f3 r7 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f4 f3 f2
	fldi	f3 r7 2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f3 f3 f2
	fmul	f2 f4 f4
	fmul	f3 f3 f3
	fadd	f7 f2 f3
	fldi	f4 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_23037
	fldi	f5 r0 20
	jump	L_cont_23035
L_else_23037 : 
	fldi	f2 r0 20
	fdiv	f5 f2 f7
L_cont_23035 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_23040
	fadd	f2 f0 f2
	jump	L_cont_23038
L_else_23040 : 
	fsub	f2 f0 f2
L_cont_23038 : 
	fbgt	f3 f2 L_else_23043
	fldi	f3 r0 27
	fmul	f2 f7 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f2 f5 f2
	fldi	f3 r0 28
	fdiv	f4 f2 f3
	fldi	f2 r0 26
	fmul	f2 f2 f4
	fsub	f3 f4 f5
	fbgt	f0 f3 L_else_23061
	fadd	f3 f0 f3
	jump	L_cont_23059
L_else_23061 : 
	fsub	f3 f0 f3
L_cont_23059 : 
	fbgt	f2 f3 L_else_23063
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f5 f3 f2
	fadd	f6 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_23041
L_else_23063 : 
	fadd	f2 f0 f4
	jump	L_cont_23041
L_else_23043 : 
	fadd	f2 f0 f5
L_cont_23041 : 
	fmul	f3 f7 f2
	fldi	f2 r0 37
	fdiv	f3 f3 f2
	flr	f2 f3
	fsub	f3 f3 f2
	fldi	f2 r0 40
	fmul	f6 f3 f2
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_23046
	fldi	f3 r0 2
	fbgt	f3 f6 L_else_23048
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_23050
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_23052
	fmul	f6 f6 f6
	fmul	f8 f6 f6
	fmul	f4 f8 f6
	fmul	f7 f4 f6
	fmul	f3 f7 f6
	fmul	f5 f3 f6
	fldi	f2 r0 14
	fmul	f5 f2 f5
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f5 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	jump	L_cont_23044
L_else_23052 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_23054
	fadd	f9 f6 f4
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f5 f8 f2
	fmul	f7 f5 f2
	fmul	f4 f7 f2
	fmul	f6 f4 f2
	fmul	f2 f6 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	jump	L_cont_23044
L_else_23054 : 
	fadd	f2 f5 f6
	fmul	f8 f2 f2
	fmul	f5 f8 f8
	fmul	f7 f5 f8
	fmul	f4 f7 f8
	fmul	f6 f4 f8
	fmul	f2 f6 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	jump	L_cont_23044
L_else_23050 : 
	fbgt	f6 f3 L_else_23056
	fmul	f8 f6 f6
	fmul	f6 f8 f8
	fmul	f7 f6 f8
	fmul	f4 f7 f8
	fmul	f5 f4 f8
	fmul	f2 f5 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	jump	L_cont_23044
L_else_23056 : 
	fbgt	f6 f2 L_else_23058
	fsub	f9 f6 f4
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f6 f8 f2
	fmul	f7 f6 f2
	fmul	f4 f7 f2
	fmul	f5 f4 f2
	fmul	f2 f5 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	fsub	f2 f0 f2
	jump	L_cont_23044
L_else_23058 : 
	fsub	f2 f5 f6
	fmul	f7 f2 f2
	fmul	f8 f7 f7
	fmul	f5 f8 f7
	fmul	f6 f5 f7
	fmul	f4 f6 f7
	fmul	f3 f4 f7
	fldi	f2 r0 14
	fmul	f3 f2 f3
	fldi	f2 r0 15
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f7
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	jump	L_cont_23044
L_else_23048 : 
	fadd	f6 f6 f2
	call	L_cos_1888
	jump	L_cont_23044
L_else_23046 : 
	fsub	f6 f6 f2
	call	L_cos_1888
L_cont_23044 : 
	fmul	f3 f2 f2
	fldi	f2 r0 38
	fmul	f2 f3 f2
	fsti	f2 r0 1050
	fldi	f2 r0 20
	fsub	f3 f2 f3
	fldi	f2 r0 38
	fmul	f2 f3 f2
	fsti	f2 r0 1051
	return
L_else_23034 : 
	addi	r4 r0 4
	bne	r5 r4 L_else_23065
	fldi	f3 r7 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f8 f3 f2
	ldi	r4 r6 4
	fldi	f7 r4 0
	fldi	f4 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_23068
	fldi	f5 r0 20
	jump	L_cont_23066
L_else_23068 : 
	fldi	f2 r0 20
	fdiv	f5 f2 f7
L_cont_23066 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_23071
	fadd	f2 f0 f2
	jump	L_cont_23069
L_else_23071 : 
	fsub	f2 f0 f2
L_cont_23069 : 
	fbgt	f3 f2 L_else_23074
	fldi	f3 r0 27
	fmul	f2 f7 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f2 f5 f2
	fldi	f3 r0 28
	fdiv	f4 f2 f3
	fldi	f2 r0 26
	fmul	f2 f2 f4
	fsub	f3 f4 f5
	fbgt	f0 f3 L_else_23135
	fadd	f3 f0 f3
	jump	L_cont_23133
L_else_23135 : 
	fsub	f3 f0 f3
L_cont_23133 : 
	fbgt	f2 f3 L_else_23137
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f5 f3 f2
	fadd	f6 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_23072
L_else_23137 : 
	fadd	f2 f0 f4
	jump	L_cont_23072
L_else_23074 : 
	fadd	f2 f0 f5
L_cont_23072 : 
	fmul	f2 f7 f2
	fmul	f7 f8 f2
	fldi	f3 r7 2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f8 f3 f2
	ldi	r4 r6 4
	fldi	f9 r4 2
	fldi	f4 r0 28
	fldi	f2 r0 20
	fbgt	f9 f2 L_else_23077
	fldi	f5 r0 20
	jump	L_cont_23075
L_else_23077 : 
	fldi	f2 r0 20
	fdiv	f5 f2 f9
L_cont_23075 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_23080
	fadd	f2 f0 f2
	jump	L_cont_23078
L_else_23080 : 
	fsub	f2 f0 f2
L_cont_23078 : 
	fbgt	f3 f2 L_else_23083
	fldi	f3 r0 27
	fmul	f2 f9 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f2 f5 f2
	fldi	f3 r0 28
	fdiv	f4 f2 f3
	fldi	f2 r0 26
	fmul	f2 f2 f4
	fsub	f3 f4 f5
	fbgt	f0 f3 L_else_23130
	fadd	f3 f0 f3
	jump	L_cont_23128
L_else_23130 : 
	fsub	f3 f0 f3
L_cont_23128 : 
	fbgt	f2 f3 L_else_23132
	fldi	f3 r0 27
	fmul	f2 f9 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f5 f3 f2
	fadd	f6 f0 f9
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_23081
L_else_23132 : 
	fadd	f2 f0 f4
	jump	L_cont_23081
L_else_23083 : 
	fadd	f2 f0 f5
L_cont_23081 : 
	fmul	f2 f9 f2
	fmul	f3 f8 f2
	fmul	f4 f7 f7
	fmul	f2 f3 f3
	fadd	f16 f4 f2
	fbgt	f0 f7 L_else_23086
	fadd	f4 f0 f7
	jump	L_cont_23084
L_else_23086 : 
	fsub	f4 f0 f7
L_cont_23084 : 
	fldi	f2 r0 41
	fbgt	f2 f4 L_else_23089
	addi	r4 r0 0
	jump	L_cont_23087
L_else_23089 : 
	addi	r4 r0 1
L_cont_23087 : 
	bne	r4 r0 L_else_23092
	fdiv	f2 f3 f7
	fbgt	f0 f2 L_else_23127
	fadd	f13 f0 f2
	jump	L_cont_23125
L_else_23127 : 
	fsub	f13 f0 f2
L_cont_23125 : 
	call	L_atan_1890
	fldi	f3 r0 42
	fmul	f2 f2 f3
	fldi	f3 r0 40
	fdiv	f2 f2 f3
	jump	L_cont_23090
L_else_23092 : 
	fldi	f2 r0 43
L_cont_23090 : 
	flr	f3 f2
	fsub	f15 f2 f3
	fldi	f3 r7 1
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f7 f3 f2
	ldi	r4 r6 4
	fldi	f8 r4 1
	fldi	f4 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_23095
	fldi	f5 r0 20
	jump	L_cont_23093
L_else_23095 : 
	fldi	f2 r0 20
	fdiv	f5 f2 f8
L_cont_23093 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_23098
	fadd	f2 f0 f2
	jump	L_cont_23096
L_else_23098 : 
	fsub	f2 f0 f2
L_cont_23096 : 
	fbgt	f3 f2 L_else_23101
	fldi	f3 r0 27
	fmul	f2 f8 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f2 f5 f2
	fldi	f3 r0 28
	fdiv	f4 f2 f3
	fldi	f2 r0 26
	fmul	f2 f2 f4
	fsub	f3 f4 f5
	fbgt	f0 f3 L_else_23122
	fadd	f3 f0 f3
	jump	L_cont_23120
L_else_23122 : 
	fsub	f3 f0 f3
L_cont_23120 : 
	fbgt	f2 f3 L_else_23124
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f5 f3 f2
	fadd	f6 f0 f8
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_23099
L_else_23124 : 
	fadd	f2 f0 f4
	jump	L_cont_23099
L_else_23101 : 
	fadd	f2 f0 f5
L_cont_23099 : 
	fmul	f2 f8 f2
	fmul	f3 f7 f2
	fbgt	f0 f16 L_else_23104
	fadd	f2 f0 f16
	jump	L_cont_23102
L_else_23104 : 
	fsub	f2 f0 f16
L_cont_23102 : 
	fldi	f4 r0 41
	fbgt	f4 f2 L_else_23107
	addi	r4 r0 0
	jump	L_cont_23105
L_else_23107 : 
	addi	r4 r0 1
L_cont_23105 : 
	bne	r4 r0 L_else_23110
	fdiv	f2 f3 f16
	fbgt	f0 f2 L_else_23119
	fadd	f13 f0 f2
	jump	L_cont_23117
L_else_23119 : 
	fsub	f13 f0 f2
L_cont_23117 : 
	call	L_atan_1890
	fldi	f3 r0 42
	fmul	f2 f2 f3
	fldi	f3 r0 40
	fdiv	f2 f2 f3
	jump	L_cont_23108
L_else_23110 : 
	fldi	f2 r0 43
L_cont_23108 : 
	flr	f3 f2
	fsub	f4 f2 f3
	fldi	f3 r0 44
	fldi	f2 r0 19
	fsub	f2 f2 f15
	fmul	f2 f2 f2
	fsub	f3 f3 f2
	fldi	f2 r0 19
	fsub	f2 f2 f4
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fbgt	f0 f2 L_else_23113
	addi	r4 r0 0
	jump	L_cont_23111
L_else_23113 : 
	addi	r4 r0 1
L_cont_23111 : 
	bne	r4 r0 L_else_23116
	fadd	f3 f0 f2
	jump	L_cont_23114
L_else_23116 : 
	fldi	f3 r0 30
L_cont_23114 : 
	fldi	f2 r0 38
	fmul	f3 f2 f3
	fldi	f2 r0 45
	fdiv	f2 f3 f2
	fsti	f2 r0 1051
	return
L_else_23065 : 
	return
L_trace_reflections_2235 : 
	bgt	r0 r22 L_else_23140
	addi	r4 r0 1185
	add	r1 r4 r22
	ldi	r23 r1 0
	ldi	r24 r23 1
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r20 r0 0
	ldi	r18 r0 1183
	add	r19 r0 r24
	call	L_trace_or_matrix_fast_2213
	fldi	f2 r0 1082
	fldi	f3 r0 34
	fbgt	f2 f3 L_else_23143
	addi	r4 r0 0
	jump	L_cont_23141
L_else_23143 : 
	addi	r4 r0 1
L_cont_23141 : 
	bne	r4 r0 L_else_23146
	addi	r4 r0 0
	jump	L_cont_23144
L_else_23146 : 
	fldi	f3 r0 47
	fbgt	f3 f2 L_else_23203
	addi	r4 r0 0
	jump	L_cont_23144
L_else_23203 : 
	addi	r4 r0 1
L_cont_23144 : 
	bne	r4 r0 L_else_23149
	jump	L_cont_23147
L_else_23149 : 
	ldi	r4 r0 1045
	addi	r5 r0 4
	mul	r4 r4 r5
	ldi	r5 r0 1074
	add	r4 r4 r5
	ldi	r5 r23 0
	bne	r4 r5 L_else_23151
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_23154
	addi	r4 r0 0
	jump	L_cont_23152
L_else_23154 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_23170
	addi	r4 r0 1
	jump	L_cont_23168
L_else_23170 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2116
	bne	r4 r0 L_else_23185
	addi	r4 r0 0
	jump	L_cont_23168
L_else_23185 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else_23188
	addi	r4 r0 0
	jump	L_cont_23186
L_else_23188 : 
	addi	r4 r0 1
L_cont_23186 : 
	bne	r4 r0 L_else_23190
	addi	r4 r0 0
	jump	L_cont_23168
L_else_23190 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23193
	addi	r4 r0 0
	jump	L_cont_23191
L_else_23193 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23197
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23199
	addi	r4 r0 0
	jump	L_cont_23191
L_else_23199 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23201
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_23191
L_else_23201 : 
	addi	r4 r0 1
	jump	L_cont_23191
L_else_23197 : 
	addi	r4 r0 1
L_cont_23191 : 
	bne	r4 r0 L_else_23195
	addi	r4 r0 0
	jump	L_cont_23168
L_else_23195 : 
	addi	r4 r0 1
L_cont_23168 : 
	bne	r4 r0 L_else_23172
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2188
	jump	L_cont_23152
L_else_23172 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23175
	addi	r4 r0 0
	jump	L_cont_23173
L_else_23175 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23179
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23181
	addi	r4 r0 0
	jump	L_cont_23173
L_else_23181 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23183
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_23173
L_else_23183 : 
	addi	r4 r0 1
	jump	L_cont_23173
L_else_23179 : 
	addi	r4 r0 1
L_cont_23173 : 
	bne	r4 r0 L_else_23177
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2188
	jump	L_cont_23152
L_else_23177 : 
	addi	r4 r0 1
L_cont_23152 : 
	bne	r4 r0 L_else_23156
	ldi	r4 r24 0
	fldi	f3 r0 1046
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r0 1047
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r0 1048
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fldi	f6 r23 2
	fmul	f2 f6 f16
	fmul	f5 f2 f3
	ldi	r4 r24 0
	fldi	f2 r21 0
	fldi	f3 r4 0
	fmul	f3 f2 f3
	fldi	f4 r21 1
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r21 2
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fmul	f4 f6 f2
	fbgt	f5 f0 L_else_23159
	addi	r4 r0 0
	jump	L_cont_23157
L_else_23159 : 
	addi	r4 r0 1
L_cont_23157 : 
	bne	r4 r0 L_else_23162
	jump	L_cont_23160
L_else_23162 : 
	fldi	f3 r0 1055
	fldi	f2 r0 1049
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f3 r0 1056
	fldi	f2 r0 1050
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f2 r0 1051
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
L_cont_23160 : 
	fbgt	f4 f0 L_else_23165
	addi	r4 r0 0
	jump	L_cont_23163
L_else_23165 : 
	addi	r4 r0 1
L_cont_23163 : 
	bne	r4 r0 L_else_23167
	jump	L_cont_23147
L_else_23167 : 
	fmul	f2 f4 f4
	fmul	f2 f2 f2
	fmul	f3 f2 f15
	fldi	f2 r0 1055
	fadd	f2 f2 f3
	fsti	f2 r0 1055
	fldi	f2 r0 1056
	fadd	f2 f2 f3
	fsti	f2 r0 1056
	fldi	f2 r0 1057
	fadd	f2 f2 f3
	fsti	f2 r0 1057
	jump	L_cont_23147
L_else_23156 : 
	jump	L_cont_23147
L_else_23151 : 
L_cont_23147 : 
	addi	r4 r22 -1
	add	r22 r0 r4
	jump	L_trace_reflections_2235
L_else_23140 : 
	return
L_trace_ray_2240 : 
	addi	r4 r0 4
	bgt	r29 r4 L_else_23206
	ldi	r30 r26 2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r21 r0 0
	ldi	r19 r0 1183
	add	r20 r0 r27
	call	L_trace_or_matrix_2199
	fldi	f2 r0 1082
	fldi	f3 r0 34
	fbgt	f2 f3 L_else_23209
	addi	r4 r0 0
	jump	L_cont_23207
L_else_23209 : 
	addi	r4 r0 1
L_cont_23207 : 
	bne	r4 r0 L_else_23212
	addi	r4 r0 0
	jump	L_cont_23210
L_else_23212 : 
	fldi	f3 r0 47
	fbgt	f3 f2 L_else_23306
	addi	r4 r0 0
	jump	L_cont_23210
L_else_23306 : 
	addi	r4 r0 1
L_cont_23210 : 
	bne	r4 r0 L_else_23214
	addi	r4 r0 -1
	add	r1 r30 r29
	sti	r4 r1 0
	bne	r29 r0 L_else_23216
	return
L_else_23216 : 
	fldi	f3 r27 0
	fldi	f2 r0 1039
	fmul	f4 f3 f2
	fldi	f3 r27 1
	fldi	f2 r0 1040
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r27 2
	fldi	f2 r0 1041
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsub	f3 f0 f2
	fbgt	f3 f0 L_else_23219
	addi	r4 r0 0
	jump	L_cont_23217
L_else_23219 : 
	addi	r4 r0 1
L_cont_23217 : 
	bne	r4 r0 L_else_23221
	return
L_else_23221 : 
	fmul	f2 f3 f3
	fmul	f2 f2 f3
	fmul	f3 f2 f18
	fldi	f2 r0 1081
	fmul	f3 f3 f2
	fldi	f2 r0 1055
	fadd	f2 f2 f3
	fsti	f2 r0 1055
	fldi	f2 r0 1056
	fadd	f2 f2 f3
	fsti	f2 r0 1056
	fldi	f2 r0 1057
	fadd	f2 f2 f3
	fsti	f2 r0 1057
	return
L_else_23214 : 
	ldi	r8 r0 1045
	addi	r4 r0 1970
	add	r1 r4 r8
	ldi	r25 r1 0
	ldi	r28 r25 2
	ldi	r4 r25 7
	fldi	f2 r4 0
	fmul	f19 f2 f18
	ldi	r5 r25 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23224
	ldi	r4 r0 1074
	fldi	f2 r0 30
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r6 r0 1046
	addi	r5 r4 -1
	addi	r4 r4 -1
	add	r1 r27 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_23294
	addi	r4 r0 1
	jump	L_cont_23292
L_else_23294 : 
	addi	r4 r0 0
L_cont_23292 : 
	bne	r4 r0 L_else_23297
	fbgt	f2 f0 L_else_23300
	addi	r4 r0 0
	jump	L_cont_23298
L_else_23300 : 
	addi	r4 r0 1
L_cont_23298 : 
	bne	r4 r0 L_else_23302
	fldi	f2 r0 29
	jump	L_cont_23295
L_else_23302 : 
	fldi	f2 r0 20
	jump	L_cont_23295
L_else_23297 : 
	fldi	f2 r0 30
L_cont_23295 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	jump	L_cont_23222
L_else_23224 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23304
	ldi	r4 r25 4
	fldi	f2 r4 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	ldi	r4 r25 4
	fldi	f2 r4 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	ldi	r4 r25 4
	fldi	f2 r4 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	jump	L_cont_23222
L_else_23304 : 
	add	r5 r0 r25
	call	L_get_nvector_second_2223
L_cont_23222 : 
	fldi	f2 r0 1042
	fsti	f2 r0 1063
	fldi	f2 r0 1043
	fsti	f2 r0 1064
	fldi	f2 r0 1044
	fsti	f2 r0 1065
	addi	r7 r0 1042
	add	r6 r0 r25
	call	L_utexture_2228
	addi	r4 r0 4
	mul	r4 r8 r4
	ldi	r5 r0 1074
	add	r4 r4 r5
	add	r1 r30 r29
	sti	r4 r1 0
	ldi	r4 r26 1
	add	r1 r4 r29
	ldi	r4 r1 0
	fldi	f2 r0 1042
	fsti	f2 r4 0
	fldi	f2 r0 1043
	fsti	f2 r4 1
	fldi	f2 r0 1044
	fsti	f2 r4 2
	ldi	r5 r26 3
	ldi	r4 r25 7
	fldi	f2 r4 0
	fldi	f3 r0 19
	fbgt	f3 f2 L_else_23227
	addi	r4 r0 0
	jump	L_cont_23225
L_else_23227 : 
	addi	r4 r0 1
L_cont_23225 : 
	bne	r4 r0 L_else_23230
	addi	r4 r0 1
	add	r1 r5 r29
	sti	r4 r1 0
	ldi	r4 r26 4
	add	r1 r4 r29
	ldi	r5 r1 0
	fldi	f2 r0 1049
	fsti	f2 r5 0
	fldi	f2 r0 1050
	fsti	f2 r5 1
	fldi	f2 r0 1051
	fsti	f2 r5 2
	add	r1 r4 r29
	ldi	r4 r1 0
	fldi	f2 r0 48
	fmul	f3 f2 f19
	fldi	f2 r4 0
	fmul	f2 f2 f3
	fsti	f2 r4 0
	fldi	f2 r4 1
	fmul	f2 f2 f3
	fsti	f2 r4 1
	fldi	f2 r4 2
	fmul	f2 f2 f3
	fsti	f2 r4 2
	ldi	r4 r26 7
	add	r1 r4 r29
	ldi	r4 r1 0
	fldi	f2 r0 1046
	fsti	f2 r4 0
	fldi	f2 r0 1047
	fsti	f2 r4 1
	fldi	f2 r0 1048
	fsti	f2 r4 2
	jump	L_cont_23228
L_else_23230 : 
	addi	r4 r0 0
	add	r1 r5 r29
	sti	r4 r1 0
L_cont_23228 : 
	fldi	f5 r0 49
	fldi	f3 r27 0
	fldi	f2 r0 1046
	fmul	f4 f3 f2
	fldi	f2 r27 1
	fldi	f3 r0 1047
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r27 2
	fldi	f3 r0 1048
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fmul	f4 f5 f2
	fldi	f3 r27 0
	fldi	f2 r0 1046
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r27 0
	fldi	f3 r27 1
	fldi	f2 r0 1047
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r27 1
	fldi	f3 r27 2
	fldi	f2 r0 1048
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r27 2
	ldi	r4 r25 7
	fldi	f2 r4 1
	fmul	f15 f18 f2
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_23233
	addi	r4 r0 0
	jump	L_cont_23231
L_else_23233 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_23260
	addi	r4 r0 1
	jump	L_cont_23258
L_else_23260 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2116
	bne	r4 r0 L_else_23275
	addi	r4 r0 0
	jump	L_cont_23258
L_else_23275 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else_23278
	addi	r4 r0 0
	jump	L_cont_23276
L_else_23278 : 
	addi	r4 r0 1
L_cont_23276 : 
	bne	r4 r0 L_else_23280
	addi	r4 r0 0
	jump	L_cont_23258
L_else_23280 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23283
	addi	r4 r0 0
	jump	L_cont_23281
L_else_23283 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23287
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23289
	addi	r4 r0 0
	jump	L_cont_23281
L_else_23289 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23291
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_23281
L_else_23291 : 
	addi	r4 r0 1
	jump	L_cont_23281
L_else_23287 : 
	addi	r4 r0 1
L_cont_23281 : 
	bne	r4 r0 L_else_23285
	addi	r4 r0 0
	jump	L_cont_23258
L_else_23285 : 
	addi	r4 r0 1
L_cont_23258 : 
	bne	r4 r0 L_else_23262
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2188
	jump	L_cont_23231
L_else_23262 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23265
	addi	r4 r0 0
	jump	L_cont_23263
L_else_23265 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23269
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23271
	addi	r4 r0 0
	jump	L_cont_23263
L_else_23271 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23273
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_23263
L_else_23273 : 
	addi	r4 r0 1
	jump	L_cont_23263
L_else_23269 : 
	addi	r4 r0 1
L_cont_23263 : 
	bne	r4 r0 L_else_23267
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2188
	jump	L_cont_23231
L_else_23267 : 
	addi	r4 r0 1
L_cont_23231 : 
	bne	r4 r0 L_else_23236
	fldi	f3 r0 1046
	fldi	f2 r0 1039
	fmul	f4 f3 f2
	fldi	f2 r0 1047
	fldi	f3 r0 1040
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r0 1048
	fldi	f3 r0 1041
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsub	f2 f0 f2
	fmul	f5 f2 f19
	fldi	f2 r27 0
	fldi	f3 r0 1039
	fmul	f3 f2 f3
	fldi	f4 r27 1
	fldi	f2 r0 1040
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r27 2
	fldi	f2 r0 1041
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsub	f4 f0 f2
	fbgt	f5 f0 L_else_23249
	addi	r4 r0 0
	jump	L_cont_23247
L_else_23249 : 
	addi	r4 r0 1
L_cont_23247 : 
	bne	r4 r0 L_else_23252
	jump	L_cont_23250
L_else_23252 : 
	fldi	f3 r0 1055
	fldi	f2 r0 1049
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f3 r0 1056
	fldi	f2 r0 1050
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f2 r0 1051
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
L_cont_23250 : 
	fbgt	f4 f0 L_else_23255
	addi	r4 r0 0
	jump	L_cont_23253
L_else_23255 : 
	addi	r4 r0 1
L_cont_23253 : 
	bne	r4 r0 L_else_23257
	jump	L_cont_23234
L_else_23257 : 
	fmul	f2 f4 f4
	fmul	f2 f2 f2
	fmul	f3 f2 f15
	fldi	f2 r0 1055
	fadd	f2 f2 f3
	fsti	f2 r0 1055
	fldi	f2 r0 1056
	fadd	f2 f2 f3
	fsti	f2 r0 1056
	fldi	f2 r0 1057
	fadd	f2 f2 f3
	fsti	f2 r0 1057
	jump	L_cont_23234
L_else_23236 : 
L_cont_23234 : 
	addi	r9 r0 1042
	fldi	f2 r0 1042
	fsti	f2 r0 1066
	fldi	f2 r0 1043
	fsti	f2 r0 1067
	fldi	f2 r0 1044
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	call	L_setup_startp_constants_2151
	ldi	r4 r0 1075
	addi	r22 r4 -1
	add	r21 r0 r27
	fadd	f16 f0 f19
	call	L_trace_reflections_2235
	fldi	f2 r0 50
	fbgt	f18 f2 L_else_23239
	addi	r4 r0 0
	jump	L_cont_23237
L_else_23239 : 
	addi	r4 r0 1
L_cont_23237 : 
	bne	r4 r0 L_else_23241
	return
L_else_23241 : 
	addi	r4 r0 4
	bgt	r4 r29 L_else_23244
	jump	L_cont_23242
L_else_23244 : 
	addi	r4 r29 1
	addi	r5 r0 -1
	add	r1 r30 r4
	sti	r5 r1 0
L_cont_23242 : 
	addi	r4 r0 2
	bne	r28 r4 L_else_23246
	fldi	f3 r0 20
	ldi	r4 r25 7
	fldi	f2 r4 0
	fsub	f2 f3 f2
	fmul	f3 f18 f2
	addi	r4 r29 1
	fldi	f2 r0 1082
	fadd	f2 f17 f2
	add	r29 r0 r4
	fadd	f18 f0 f3
	fadd	f17 f0 f2
	jump	L_trace_ray_2240
L_else_23246 : 
	return
L_else_23206 : 
	return
L_trace_diffuse_ray_2246 : 
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r20 r0 0
	ldi	r18 r0 1183
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2213
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_23310
	addi	r4 r0 0
	jump	L_cont_23308
L_else_23310 : 
	addi	r4 r0 1
L_cont_23308 : 
	bne	r4 r0 L_else_23313
	addi	r4 r0 0
	jump	L_cont_23311
L_else_23313 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_23378
	addi	r4 r0 0
	jump	L_cont_23311
L_else_23378 : 
	addi	r4 r0 1
L_cont_23311 : 
	bne	r4 r0 L_else_23315
	return
L_else_23315 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r21 0
	ldi	r5 r17 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23318
	ldi	r4 r0 1074
	fldi	f2 r0 30
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r6 r0 1046
	addi	r5 r4 -1
	addi	r4 r4 -1
	add	r1 r7 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_23366
	addi	r4 r0 1
	jump	L_cont_23364
L_else_23366 : 
	addi	r4 r0 0
L_cont_23364 : 
	bne	r4 r0 L_else_23369
	fbgt	f2 f0 L_else_23372
	addi	r4 r0 0
	jump	L_cont_23370
L_else_23372 : 
	addi	r4 r0 1
L_cont_23370 : 
	bne	r4 r0 L_else_23374
	fldi	f2 r0 29
	jump	L_cont_23367
L_else_23374 : 
	fldi	f2 r0 20
	jump	L_cont_23367
L_else_23369 : 
	fldi	f2 r0 30
L_cont_23367 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	jump	L_cont_23316
L_else_23318 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23376
	ldi	r4 r17 4
	fldi	f2 r4 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	ldi	r4 r17 4
	fldi	f2 r4 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	ldi	r4 r17 4
	fldi	f2 r4 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	jump	L_cont_23316
L_else_23376 : 
	add	r5 r0 r17
	call	L_get_nvector_second_2223
L_cont_23316 : 
	addi	r7 r0 1042
	add	r6 r0 r17
	call	L_utexture_2228
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_23321
	addi	r4 r0 0
	jump	L_cont_23319
L_else_23321 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_23332
	addi	r4 r0 1
	jump	L_cont_23330
L_else_23332 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2116
	bne	r4 r0 L_else_23347
	addi	r4 r0 0
	jump	L_cont_23330
L_else_23347 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_23350
	addi	r4 r0 0
	jump	L_cont_23348
L_else_23350 : 
	addi	r4 r0 1
L_cont_23348 : 
	bne	r4 r0 L_else_23352
	addi	r4 r0 0
	jump	L_cont_23330
L_else_23352 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23355
	addi	r4 r0 0
	jump	L_cont_23353
L_else_23355 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23359
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23361
	addi	r4 r0 0
	jump	L_cont_23353
L_else_23361 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23363
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_23353
L_else_23363 : 
	addi	r4 r0 1
	jump	L_cont_23353
L_else_23359 : 
	addi	r4 r0 1
L_cont_23353 : 
	bne	r4 r0 L_else_23357
	addi	r4 r0 0
	jump	L_cont_23330
L_else_23357 : 
	addi	r4 r0 1
L_cont_23330 : 
	bne	r4 r0 L_else_23334
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2188
	jump	L_cont_23319
L_else_23334 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23337
	addi	r4 r0 0
	jump	L_cont_23335
L_else_23337 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23341
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23343
	addi	r4 r0 0
	jump	L_cont_23335
L_else_23343 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_23345
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_23335
L_else_23345 : 
	addi	r4 r0 1
	jump	L_cont_23335
L_else_23341 : 
	addi	r4 r0 1
L_cont_23335 : 
	bne	r4 r0 L_else_23339
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2188
	jump	L_cont_23319
L_else_23339 : 
	addi	r4 r0 1
L_cont_23319 : 
	bne	r4 r0 L_else_23323
	fldi	f2 r0 1046
	fldi	f3 r0 1039
	fmul	f3 f2 f3
	fldi	f4 r0 1047
	fldi	f2 r0 1040
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r0 1048
	fldi	f2 r0 1041
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_23326
	addi	r4 r0 0
	jump	L_cont_23324
L_else_23326 : 
	addi	r4 r0 1
L_cont_23324 : 
	bne	r4 r0 L_else_23329
	fldi	f2 r0 30
	jump	L_cont_23327
L_else_23329 : 
	fadd	f2 f0 f2
L_cont_23327 : 
	fmul	f3 f17 f2
	ldi	r4 r17 7
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r0 1052
	fldi	f2 r0 1049
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r0 1050
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r0 1051
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	return
L_else_23323 : 
	return
L_iter_trace_diffuse_rays_2249 : 
	bgt	r0 r22 L_else_23381
	add	r1 r25 r22
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fldi	f3 r23 0
	fmul	f3 f2 f3
	fldi	f4 r4 1
	fldi	f2 r23 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r4 2
	fldi	f2 r23 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_23384
	addi	r4 r0 0
	jump	L_cont_23382
L_else_23384 : 
	addi	r4 r0 1
L_cont_23382 : 
	bne	r4 r0 L_else_23387
	add	r1 r25 r22
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r4 r0 0
	ldi	r18 r0 1183
	add	r1 r18 r4
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23398
	jump	L_cont_23396
L_else_23398 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_23419
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2209
	jump	L_cont_23417
L_else_23419 : 
	add	r7 r0 r21
	call	L_solver_fast2_2134
	bne	r4 r0 L_else_23421
	jump	L_cont_23417
L_else_23421 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_23424
	addi	r4 r0 0
	jump	L_cont_23422
L_else_23424 : 
	addi	r4 r0 1
L_cont_23422 : 
	bne	r4 r0 L_else_23426
	jump	L_cont_23417
L_else_23426 : 
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2209
L_cont_23417 : 
	addi	r20 r0 1
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2213
L_cont_23396 : 
	fldi	f2 r0 1082
	fldi	f3 r0 34
	fbgt	f2 f3 L_else_23401
	addi	r4 r0 0
	jump	L_cont_23399
L_else_23401 : 
	addi	r4 r0 1
L_cont_23399 : 
	bne	r4 r0 L_else_23404
	addi	r4 r0 0
	jump	L_cont_23402
L_else_23404 : 
	fldi	f3 r0 47
	fbgt	f3 f2 L_else_23416
	addi	r4 r0 0
	jump	L_cont_23402
L_else_23416 : 
	addi	r4 r0 1
L_cont_23402 : 
	bne	r4 r0 L_else_23406
	jump	L_cont_23385
L_else_23406 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r21 0
	add	r5 r0 r17
	call	L_get_nvector_2225
	addi	r7 r0 1042
	add	r6 r0 r17
	call	L_utexture_2228
	addi	r15 r0 0
	ldi	r14 r0 1183
	call	L_shadow_check_one_or_matrix_2188
	bne	r4 r0 L_else_23408
	fldi	f3 r0 1046
	fldi	f2 r0 1039
	fmul	f4 f3 f2
	fldi	f2 r0 1047
	fldi	f3 r0 1040
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r0 1048
	fldi	f3 r0 1041
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_23411
	addi	r4 r0 0
	jump	L_cont_23409
L_else_23411 : 
	addi	r4 r0 1
L_cont_23409 : 
	bne	r4 r0 L_else_23414
	fldi	f2 r0 30
	jump	L_cont_23412
L_else_23414 : 
	fadd	f2 f0 f2
L_cont_23412 : 
	fmul	f3 f17 f2
	ldi	r4 r17 7
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r0 1052
	fldi	f2 r0 1049
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r0 1050
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r0 1051
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	jump	L_cont_23385
L_else_23408 : 
	jump	L_cont_23385
L_else_23387 : 
	addi	r4 r22 1
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r4 r0 0
	ldi	r18 r0 1183
	add	r1 r18 r4
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23429
	jump	L_cont_23427
L_else_23429 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_23450
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2209
	jump	L_cont_23448
L_else_23450 : 
	add	r7 r0 r21
	call	L_solver_fast2_2134
	bne	r4 r0 L_else_23452
	jump	L_cont_23448
L_else_23452 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_23455
	addi	r4 r0 0
	jump	L_cont_23453
L_else_23455 : 
	addi	r4 r0 1
L_cont_23453 : 
	bne	r4 r0 L_else_23457
	jump	L_cont_23448
L_else_23457 : 
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2209
L_cont_23448 : 
	addi	r20 r0 1
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2213
L_cont_23427 : 
	fldi	f2 r0 1082
	fldi	f3 r0 34
	fbgt	f2 f3 L_else_23432
	addi	r4 r0 0
	jump	L_cont_23430
L_else_23432 : 
	addi	r4 r0 1
L_cont_23430 : 
	bne	r4 r0 L_else_23435
	addi	r4 r0 0
	jump	L_cont_23433
L_else_23435 : 
	fldi	f3 r0 47
	fbgt	f3 f2 L_else_23447
	addi	r4 r0 0
	jump	L_cont_23433
L_else_23447 : 
	addi	r4 r0 1
L_cont_23433 : 
	bne	r4 r0 L_else_23437
	jump	L_cont_23385
L_else_23437 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r21 0
	add	r5 r0 r17
	call	L_get_nvector_2225
	addi	r7 r0 1042
	add	r6 r0 r17
	call	L_utexture_2228
	addi	r15 r0 0
	ldi	r14 r0 1183
	call	L_shadow_check_one_or_matrix_2188
	bne	r4 r0 L_else_23439
	fldi	f3 r0 1046
	fldi	f2 r0 1039
	fmul	f4 f3 f2
	fldi	f2 r0 1047
	fldi	f3 r0 1040
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r0 1048
	fldi	f3 r0 1041
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_23442
	addi	r4 r0 0
	jump	L_cont_23440
L_else_23442 : 
	addi	r4 r0 1
L_cont_23440 : 
	bne	r4 r0 L_else_23445
	fldi	f2 r0 30
	jump	L_cont_23443
L_else_23445 : 
	fadd	f2 f0 f2
L_cont_23443 : 
	fmul	f3 f17 f2
	ldi	r4 r17 7
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r0 1052
	fldi	f2 r0 1049
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r0 1050
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r0 1051
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	jump	L_cont_23385
L_else_23439 : 
L_cont_23385 : 
	addi	r22 r22 -2
	bgt	r0 r22 L_else_23389
	add	r1 r25 r22
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r23 0
	fmul	f4 f3 f2
	fldi	f2 r4 1
	fldi	f3 r23 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r4 2
	fldi	f3 r23 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_23392
	addi	r4 r0 0
	jump	L_cont_23390
L_else_23392 : 
	addi	r4 r0 1
L_cont_23390 : 
	bne	r4 r0 L_else_23395
	add	r1 r25 r22
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_23393
L_else_23395 : 
	addi	r4 r22 1
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_23393 : 
	addi	r4 r22 -2
	add	r22 r0 r4
	jump	L_iter_trace_diffuse_rays_2249
L_else_23389 : 
	return
L_else_23381 : 
	return
L_calc_diffuse_using_1point_2262 : 
	ldi	r4 r7 5
	ldi	r5 r7 7
	ldi	r6 r7 1
	ldi	r27 r7 4
	add	r1 r4 r28
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r0 1052
	fldi	f2 r4 1
	fsti	f2 r0 1053
	fldi	f2 r4 2
	fsti	f2 r0 1054
	ldi	r4 r7 6
	ldi	r30 r4 0
	add	r1 r5 r28
	ldi	r26 r1 0
	add	r1 r6 r28
	ldi	r29 r1 0
	bne	r30 r0 L_else_23461
	jump	L_cont_23459
L_else_23461 : 
	ldi	r25 r0 1076
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	add	r9 r0 r29
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r26 0
	fmul	f4 f3 f2
	fldi	f2 r4 1
	fldi	f3 r26 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r4 2
	fldi	f3 r26 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_23500
	addi	r4 r0 0
	jump	L_cont_23498
L_else_23500 : 
	addi	r4 r0 1
L_cont_23498 : 
	bne	r4 r0 L_else_23503
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_23501
L_else_23503 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_23501 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2249
L_cont_23459 : 
	addi	r4 r0 1
	bne	r30 r4 L_else_23464
	jump	L_cont_23462
L_else_23464 : 
	ldi	r25 r0 1077
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	add	r9 r0 r29
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fldi	f3 r26 0
	fmul	f3 f2 f3
	fldi	f4 r4 1
	fldi	f2 r26 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r4 2
	fldi	f2 r26 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_23494
	addi	r4 r0 0
	jump	L_cont_23492
L_else_23494 : 
	addi	r4 r0 1
L_cont_23492 : 
	bne	r4 r0 L_else_23497
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_23495
L_else_23497 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_23495 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2249
L_cont_23462 : 
	addi	r4 r0 2
	bne	r30 r4 L_else_23467
	jump	L_cont_23465
L_else_23467 : 
	ldi	r25 r0 1078
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	add	r9 r0 r29
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r26 0
	fmul	f4 f3 f2
	fldi	f2 r4 1
	fldi	f3 r26 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r4 2
	fldi	f3 r26 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_23488
	addi	r4 r0 0
	jump	L_cont_23486
L_else_23488 : 
	addi	r4 r0 1
L_cont_23486 : 
	bne	r4 r0 L_else_23491
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_23489
L_else_23491 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_23489 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2249
L_cont_23465 : 
	addi	r4 r0 3
	bne	r30 r4 L_else_23470
	jump	L_cont_23468
L_else_23470 : 
	ldi	r25 r0 1079
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	add	r9 r0 r29
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fldi	f3 r26 0
	fmul	f3 f2 f3
	fldi	f4 r4 1
	fldi	f2 r26 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r4 2
	fldi	f2 r26 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_23482
	addi	r4 r0 0
	jump	L_cont_23480
L_else_23482 : 
	addi	r4 r0 1
L_cont_23480 : 
	bne	r4 r0 L_else_23485
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_23483
L_else_23485 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_23483 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2249
L_cont_23468 : 
	addi	r4 r0 4
	bne	r30 r4 L_else_23473
	jump	L_cont_23471
L_else_23473 : 
	ldi	r25 r0 1080
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	add	r9 r0 r29
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fldi	f3 r26 0
	fmul	f3 f2 f3
	fldi	f4 r4 1
	fldi	f2 r26 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r4 2
	fldi	f2 r26 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_23476
	addi	r4 r0 0
	jump	L_cont_23474
L_else_23476 : 
	addi	r4 r0 1
L_cont_23474 : 
	bne	r4 r0 L_else_23479
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_23477
L_else_23479 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_23477 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2249
L_cont_23471 : 
	add	r1 r27 r28
	ldi	r4 r1 0
	fldi	f3 r0 1055
	fldi	f4 r4 0
	fldi	f2 r0 1052
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f2 r4 1
	fldi	f3 r0 1053
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f4 r4 2
	fldi	f2 r0 1054
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
	return
L_calc_diffuse_using_5points_2265 : 
	add	r1 r4 r8
	ldi	r4 r1 0
	ldi	r7 r4 5
	addi	r4 r8 -1
	add	r1 r12 r4
	ldi	r4 r1 0
	ldi	r10 r4 5
	add	r1 r12 r8
	ldi	r4 r1 0
	ldi	r9 r4 5
	addi	r4 r8 1
	add	r1 r12 r4
	ldi	r4 r1 0
	ldi	r6 r4 5
	add	r1 r5 r8
	ldi	r4 r1 0
	ldi	r5 r4 5
	add	r1 r7 r11
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r0 1052
	fldi	f2 r4 1
	fsti	f2 r0 1053
	fldi	f2 r4 2
	fsti	f2 r0 1054
	add	r1 r10 r11
	ldi	r4 r1 0
	fldi	f3 r0 1052
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r4 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r9 r11
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fldi	f3 r4 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r4 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	add	r1 r6 r11
	ldi	r4 r1 0
	fldi	f3 r0 1052
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r4 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r5 r11
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fldi	f3 r4 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r4 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	add	r1 r12 r8
	ldi	r4 r1 0
	ldi	r4 r4 4
	add	r1 r4 r11
	ldi	r4 r1 0
	fldi	f4 r0 1055
	fldi	f2 r4 0
	fldi	f3 r0 1052
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1055
	fldi	f3 r0 1056
	fldi	f4 r4 1
	fldi	f2 r0 1053
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1056
	fldi	f4 r0 1057
	fldi	f2 r4 2
	fldi	f3 r0 1054
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1057
	return
L_do_without_neighbors_2271 : 
	addi	r4 r0 4
	bgt	r29 r4 L_else_23507
	ldi	r4 r5 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23509
	ldi	r4 r5 3
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r0 L_else_23512
	jump	L_cont_23510
L_else_23512 : 
	ldi	r4 r5 5
	ldi	r7 r5 7
	ldi	r6 r5 1
	ldi	r27 r5 4
	add	r1 r4 r29
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r0 1052
	fldi	f2 r4 1
	fsti	f2 r0 1053
	fldi	f2 r4 2
	fsti	f2 r0 1054
	ldi	r4 r5 6
	ldi	r30 r4 0
	add	r1 r7 r29
	ldi	r26 r1 0
	add	r1 r6 r29
	ldi	r28 r1 0
	bne	r30 r0 L_else_23522
	jump	L_cont_23520
L_else_23522 : 
	ldi	r25 r0 1076
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	sti	r5 r2 0
	add	r9 r0 r28
	addi	r2 r2 1
	call	L_setup_startp_constants_2151
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23520 : 
	addi	r4 r0 1
	bne	r30 r4 L_else_23525
	jump	L_cont_23523
L_else_23525 : 
	ldi	r25 r0 1077
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	sti	r5 r2 0
	add	r9 r0 r28
	addi	r2 r2 1
	call	L_setup_startp_constants_2151
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23523 : 
	addi	r4 r0 2
	bne	r30 r4 L_else_23528
	jump	L_cont_23526
L_else_23528 : 
	ldi	r25 r0 1078
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	sti	r5 r2 0
	add	r9 r0 r28
	addi	r2 r2 1
	call	L_setup_startp_constants_2151
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23526 : 
	addi	r4 r0 3
	bne	r30 r4 L_else_23531
	jump	L_cont_23529
L_else_23531 : 
	ldi	r25 r0 1079
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	sti	r5 r2 0
	add	r9 r0 r28
	addi	r2 r2 1
	call	L_setup_startp_constants_2151
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23529 : 
	addi	r4 r0 4
	bne	r30 r4 L_else_23534
	jump	L_cont_23532
L_else_23534 : 
	ldi	r25 r0 1080
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	sti	r5 r2 0
	add	r9 r0 r28
	addi	r2 r2 1
	call	L_setup_startp_constants_2151
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23532 : 
	add	r1 r27 r29
	ldi	r4 r1 0
	fldi	f3 r0 1055
	fldi	f4 r4 0
	fldi	f2 r0 1052
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f2 r4 1
	fldi	f3 r0 1053
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f4 r4 2
	fldi	f2 r0 1054
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
L_cont_23510 : 
	addi	r31 r29 1
	addi	r4 r0 4
	bgt	r31 r4 L_else_23514
	ldi	r4 r5 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23516
	ldi	r4 r5 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_23519
	jump	L_cont_23517
L_else_23519 : 
	sti	r5 r2 0
	add	r7 r0 r5
	add	r28 r0 r31
	addi	r2 r2 1
	call	L_calc_diffuse_using_1point_2262
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23517 : 
	addi	r4 r31 1
	add	r29 r0 r4
	jump	L_do_without_neighbors_2271
L_else_23516 : 
	return
L_else_23514 : 
	return
L_else_23509 : 
	return
L_else_23507 : 
	return
L_try_exploit_neighbors_2287 : 
	add	r1 r13 r14
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r31 r4 L_else_23537
	ldi	r4 r6 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23539
	add	r1 r13 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r5 r1 0
	add	r1 r17 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_23542
	add	r1 r16 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_23574
	addi	r4 r14 -1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_23576
	addi	r4 r14 1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_23578
	addi	r4 r0 1
	jump	L_cont_23540
L_else_23578 : 
	addi	r4 r0 0
	jump	L_cont_23540
L_else_23576 : 
	addi	r4 r0 0
	jump	L_cont_23540
L_else_23574 : 
	addi	r4 r0 0
	jump	L_cont_23540
L_else_23542 : 
	addi	r4 r0 0
L_cont_23540 : 
	bne	r4 r0 L_else_23544
	add	r1 r13 r14
	ldi	r5 r1 0
	addi	r4 r0 4
	bgt	r31 r4 L_else_23546
	ldi	r4 r5 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23548
	ldi	r4 r5 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_23551
	jump	L_cont_23549
L_else_23551 : 
	sti	r5 r2 0
	add	r7 r0 r5
	add	r28 r0 r31
	addi	r2 r2 1
	call	L_calc_diffuse_using_1point_2262
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23549 : 
	addi	r29 r31 1
	jump	L_do_without_neighbors_2271
L_else_23548 : 
	return
L_else_23546 : 
	return
L_else_23544 : 
	ldi	r4 r6 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_23554
	jump	L_cont_23552
L_else_23554 : 
	add	r1 r17 r14
	ldi	r4 r1 0
	ldi	r9 r4 5
	addi	r4 r14 -1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r8 r4 5
	add	r1 r13 r14
	ldi	r4 r1 0
	ldi	r7 r4 5
	addi	r4 r14 1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r6 r4 5
	add	r1 r16 r14
	ldi	r4 r1 0
	ldi	r5 r4 5
	add	r1 r9 r31
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r0 1052
	fldi	f2 r4 1
	fsti	f2 r0 1053
	fldi	f2 r4 2
	fsti	f2 r0 1054
	add	r1 r8 r31
	ldi	r4 r1 0
	fldi	f3 r0 1052
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r7 r31
	ldi	r4 r1 0
	fldi	f3 r0 1052
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r6 r31
	ldi	r4 r1 0
	fldi	f3 r0 1052
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r5 r31
	ldi	r4 r1 0
	fldi	f3 r0 1052
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r13 r14
	ldi	r4 r1 0
	ldi	r4 r4 4
	add	r1 r4 r31
	ldi	r4 r1 0
	fldi	f4 r0 1055
	fldi	f3 r4 0
	fldi	f2 r0 1052
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f3 r4 1
	fldi	f2 r0 1053
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f4 r0 1057
	fldi	f3 r4 2
	fldi	f2 r0 1054
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1057
L_cont_23552 : 
	addi	r29 r31 1
	add	r1 r13 r14
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r29 r4 L_else_23556
	ldi	r4 r6 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23558
	add	r1 r13 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r5 r1 0
	add	r1 r17 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23561
	add	r1 r16 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23568
	addi	r4 r14 -1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23570
	addi	r4 r14 1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23572
	addi	r4 r0 1
	jump	L_cont_23559
L_else_23572 : 
	addi	r4 r0 0
	jump	L_cont_23559
L_else_23570 : 
	addi	r4 r0 0
	jump	L_cont_23559
L_else_23568 : 
	addi	r4 r0 0
	jump	L_cont_23559
L_else_23561 : 
	addi	r4 r0 0
L_cont_23559 : 
	bne	r4 r0 L_else_23563
	add	r1 r13 r14
	ldi	r5 r1 0
	jump	L_do_without_neighbors_2271
L_else_23563 : 
	ldi	r4 r6 3
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r0 L_else_23566
	jump	L_cont_23564
L_else_23566 : 
	add	r8 r0 r14
	add	r4 r0 r17
	add	r12 r0 r13
	add	r5 r0 r16
	add	r11 r0 r29
	call	L_calc_diffuse_using_5points_2265
L_cont_23564 : 
	addi	r4 r29 1
	add	r31 r0 r4
	jump	L_try_exploit_neighbors_2287
L_else_23558 : 
	return
L_else_23556 : 
	return
L_else_23539 : 
	return
L_else_23537 : 
	return
L_pretrace_diffuse_rays_2300 : 
	addi	r4 r0 4
	bgt	r26 r4 L_else_23581
	ldi	r4 r27 2
	add	r1 r4 r26
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23583
	ldi	r4 r27 3
	add	r1 r4 r26
	ldi	r4 r1 0
	bne	r4 r0 L_else_23586
	jump	L_cont_23584
L_else_23586 : 
	ldi	r4 r27 6
	ldi	r7 r4 0
	fldi	f2 r0 30
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r6 r27 7
	ldi	r5 r27 1
	addi	r4 r0 1076
	add	r1 r4 r7
	ldi	r25 r1 0
	add	r1 r6 r26
	ldi	r23 r1 0
	add	r1 r5 r26
	ldi	r24 r1 0
	fldi	f2 r24 0
	fsti	f2 r0 1066
	fldi	f2 r24 1
	fsti	f2 r0 1067
	fldi	f2 r24 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	add	r9 r0 r24
	call	L_setup_startp_constants_2151
	addi	r22 r0 118
	call	L_iter_trace_diffuse_rays_2249
	ldi	r4 r27 5
	add	r1 r4 r26
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_23584 : 
	addi	r26 r26 1
	addi	r4 r0 4
	bgt	r26 r4 L_else_23588
	ldi	r4 r27 2
	add	r1 r4 r26
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23590
	ldi	r4 r27 3
	add	r1 r4 r26
	ldi	r4 r1 0
	bne	r4 r0 L_else_23593
	jump	L_cont_23591
L_else_23593 : 
	ldi	r4 r27 6
	ldi	r7 r4 0
	fldi	f2 r0 30
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r5 r27 7
	ldi	r6 r27 1
	addi	r4 r0 1076
	add	r1 r4 r7
	ldi	r25 r1 0
	add	r1 r5 r26
	ldi	r23 r1 0
	add	r1 r6 r26
	ldi	r24 r1 0
	fldi	f2 r24 0
	fsti	f2 r0 1066
	fldi	f2 r24 1
	fsti	f2 r0 1067
	fldi	f2 r24 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	add	r9 r0 r24
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r23 0
	fmul	f4 f3 f2
	fldi	f2 r4 1
	fldi	f3 r23 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r4 2
	fldi	f3 r23 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_23596
	addi	r4 r0 0
	jump	L_cont_23594
L_else_23596 : 
	addi	r4 r0 1
L_cont_23594 : 
	bne	r4 r0 L_else_23599
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_23597
L_else_23599 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_23597 : 
	addi	r22 r0 116
	call	L_iter_trace_diffuse_rays_2249
	ldi	r4 r27 5
	add	r1 r4 r26
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_23591 : 
	addi	r4 r26 1
	add	r26 r0 r4
	jump	L_pretrace_diffuse_rays_2300
L_else_23590 : 
	return
L_else_23588 : 
	return
L_else_23583 : 
	return
L_else_23581 : 
	return
L_pretrace_pixels_2303 : 
	bgt	r0 r8 L_else_23602
	fldi	f2 r0 1062
	ldi	r4 r0 1060
	sub	r4 r8 r4
	foi	f3 r4
	fmul	f3 f2 f3
	fldi	f2 r0 1030
	fmul	f2 f3 f2
	fadd	f2 f2 f20
	fsti	f2 r0 1069
	fldi	f2 r0 1031
	fmul	f2 f3 f2
	fadd	f2 f2 f21
	fsti	f2 r0 1070
	fldi	f2 r0 1032
	fmul	f2 f3 f2
	fadd	f2 f2 f22
	fsti	f2 r0 1071
	fldi	f2 r0 1069
	fmul	f3 f2 f2
	fldi	f2 r0 1070
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1071
	fmul	f2 f2 f2
	fadd	f7 f3 f2
	fldi	f4 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_23605
	fldi	f6 r0 20
	jump	L_cont_23603
L_else_23605 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_23603 : 
	fldi	f2 r0 26
	fmul	f3 f2 f6
	fsub	f2 f6 f4
	fbgt	f0 f2 L_else_23608
	fadd	f2 f0 f2
	jump	L_cont_23606
L_else_23608 : 
	fsub	f2 f0 f2
L_cont_23606 : 
	fbgt	f3 f2 L_else_23611
	fldi	f3 r0 27
	fmul	f2 f7 f6
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fmul	f2 f6 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fadd	f3 f0 f6
	fadd	f6 f0 f7
	call	L_isqrt_1892
	jump	L_cont_23609
L_else_23611 : 
	fadd	f2 f0 f6
L_cont_23609 : 
	fmul	f2 f7 f2
	fbne	f2 f0 L_else_23614
	addi	r4 r0 1
	jump	L_cont_23612
L_else_23614 : 
	addi	r4 r0 0
L_cont_23612 : 
	bne	r4 r0 L_else_23617
	fldi	f3 r0 20
	fdiv	f3 f3 f2
	jump	L_cont_23615
L_else_23617 : 
	fldi	f3 r0 20
L_cont_23615 : 
	fldi	f2 r0 1069
	fmul	f2 f2 f3
	fsti	f2 r0 1069
	fldi	f2 r0 1070
	fmul	f2 f2 f3
	fsti	f2 r0 1070
	fldi	f2 r0 1071
	fmul	f2 f2 f3
	fsti	f2 r0 1071
	fldi	f2 r0 30
	fsti	f2 r0 1055
	fsti	f2 r0 1056
	fsti	f2 r0 1057
	fldi	f2 r0 1036
	fsti	f2 r0 1063
	fldi	f2 r0 1037
	fsti	f2 r0 1064
	fldi	f2 r0 1038
	fsti	f2 r0 1065
	addi	r29 r0 0
	fldi	f18 r0 20
	addi	r27 r0 1069
	add	r1 r31 r8
	ldi	r26 r1 0
	fldi	f17 r0 30
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_trace_ray_2240
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
	add	r1 r31 r8
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r0 1055
	fsti	f2 r4 0
	fldi	f2 r0 1056
	fsti	f2 r4 1
	fldi	f2 r0 1057
	fsti	f2 r4 2
	add	r1 r31 r8
	ldi	r4 r1 0
	ldi	r4 r4 6
	sti	r9 r4 0
	add	r1 r31 r8
	ldi	r27 r1 0
	addi	r26 r0 0
	ldi	r4 r27 2
	add	r1 r4 r26
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23620
	ldi	r4 r27 3
	add	r1 r4 r26
	ldi	r4 r1 0
	bne	r4 r0 L_else_23626
	jump	L_cont_23624
L_else_23626 : 
	ldi	r4 r27 6
	ldi	r5 r4 0
	fldi	f2 r0 30
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r7 r27 7
	ldi	r4 r27 1
	addi	r6 r0 1076
	add	r1 r6 r5
	ldi	r25 r1 0
	add	r1 r7 r26
	ldi	r23 r1 0
	add	r1 r4 r26
	ldi	r24 r1 0
	fldi	f2 r24 0
	fsti	f2 r0 1066
	fldi	f2 r24 1
	fsti	f2 r0 1067
	fldi	f2 r24 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	sti	r8 r2 0
	sti	r9 r2 1
	add	r9 r0 r24
	addi	r2 r2 2
	call	L_setup_startp_constants_2151
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r9 r2 1
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fldi	f3 r23 0
	fmul	f3 f2 f3
	fldi	f4 r4 1
	fldi	f2 r23 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r4 2
	fldi	f2 r23 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_23629
	addi	r4 r0 0
	jump	L_cont_23627
L_else_23629 : 
	addi	r4 r0 1
L_cont_23627 : 
	bne	r4 r0 L_else_23632
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_trace_diffuse_ray_2246
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
	jump	L_cont_23630
L_else_23632 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_trace_diffuse_ray_2246
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
L_cont_23630 : 
	addi	r22 r0 116
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
	ldi	r4 r27 5
	add	r1 r4 r26
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_23624 : 
	addi	r26 r0 1
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_pretrace_diffuse_rays_2300
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
	jump	L_cont_23618
L_else_23620 : 
L_cont_23618 : 
	addi	r4 r8 -1
	addi	r6 r9 1
	addi	r5 r0 5
	bgt	r5 r6 L_else_23623
	addi	r5 r6 -5
	jump	L_cont_23621
L_else_23623 : 
	add	r5 r0 r6
L_cont_23621 : 
	add	r8 r0 r4
	add	r9 r0 r5
	jump	L_pretrace_pixels_2303
L_else_23602 : 
	return
L_scan_pixel_2314 : 
	ldi	r4 r0 1058
	bgt	r4 r6 L_else_23635
	return
L_else_23635 : 
	add	r1 r10 r6
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fsti	f2 r0 1055
	fldi	f2 r4 1
	fsti	f2 r0 1056
	fldi	f2 r4 2
	fsti	f2 r0 1057
	ldi	r4 r0 1059
	addi	r5 r7 1
	bgt	r4 r5 L_else_23638
	addi	r4 r0 0
	jump	L_cont_23636
L_else_23638 : 
	bgt	r7 r0 L_else_23678
	addi	r4 r0 0
	jump	L_cont_23636
L_else_23678 : 
	ldi	r5 r0 1058
	addi	r4 r6 1
	bgt	r5 r4 L_else_23680
	addi	r4 r0 0
	jump	L_cont_23636
L_else_23680 : 
	bgt	r6 r0 L_else_23682
	addi	r4 r0 0
	jump	L_cont_23636
L_else_23682 : 
	addi	r4 r0 1
L_cont_23636 : 
	bne	r4 r0 L_else_23641
	add	r1 r10 r6
	ldi	r31 r1 0
	addi	r28 r0 0
	ldi	r4 r31 2
	add	r1 r4 r28
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23657
	ldi	r4 r31 3
	add	r1 r4 r28
	ldi	r4 r1 0
	bne	r4 r0 L_else_23660
	jump	L_cont_23658
L_else_23660 : 
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r7 r0 r31
	addi	r2 r2 5
	call	L_calc_diffuse_using_1point_2262
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
L_cont_23658 : 
	addi	r29 r0 1
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r5 r0 r31
	addi	r2 r2 5
	call	L_do_without_neighbors_2271
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont_23639
L_else_23657 : 
	jump	L_cont_23639
L_else_23641 : 
	addi	r29 r0 0
	add	r1 r10 r6
	ldi	r11 r1 0
	ldi	r4 r11 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23662
	add	r1 r10 r6
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r5 r1 0
	add	r1 r9 r6
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23665
	add	r1 r8 r6
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23672
	addi	r4 r6 -1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23674
	addi	r4 r6 1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23676
	addi	r4 r0 1
	jump	L_cont_23663
L_else_23676 : 
	addi	r4 r0 0
	jump	L_cont_23663
L_else_23674 : 
	addi	r4 r0 0
	jump	L_cont_23663
L_else_23672 : 
	addi	r4 r0 0
	jump	L_cont_23663
L_else_23665 : 
	addi	r4 r0 0
L_cont_23663 : 
	bne	r4 r0 L_else_23667
	add	r1 r10 r6
	ldi	r5 r1 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2271
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont_23639
L_else_23667 : 
	ldi	r4 r11 3
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r0 L_else_23670
	jump	L_cont_23668
L_else_23670 : 
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r8 r2 4
	add	r4 r0 r9
	add	r12 r0 r10
	add	r5 r0 r8
	add	r11 r0 r29
	add	r8 r0 r6
	addi	r2 r2 5
	call	L_calc_diffuse_using_5points_2265
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r8 r2 4
L_cont_23668 : 
	addi	r31 r0 1
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r14 r0 r6
	add	r15 r0 r7
	add	r17 r0 r9
	add	r13 r0 r10
	add	r16 r0 r8
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2287
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont_23639
L_else_23662 : 
L_cont_23639 : 
	fldi	f2 r0 1055
	call	min_caml_print_float
	fldi	f2 r0 1056
	call	min_caml_print_float
	fldi	f2 r0 1057
	call	min_caml_print_float
	addi	r6 r6 1
	ldi	r4 r0 1058
	bgt	r4 r6 L_else_23643
	return
L_else_23643 : 
	add	r1 r10 r6
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fsti	f2 r0 1055
	fldi	f2 r4 1
	fsti	f2 r0 1056
	fldi	f2 r4 2
	fsti	f2 r0 1057
	ldi	r4 r0 1059
	addi	r5 r7 1
	bgt	r4 r5 L_else_23646
	addi	r4 r0 0
	jump	L_cont_23644
L_else_23646 : 
	bgt	r7 r0 L_else_23651
	addi	r4 r0 0
	jump	L_cont_23644
L_else_23651 : 
	ldi	r4 r0 1058
	addi	r5 r6 1
	bgt	r4 r5 L_else_23653
	addi	r4 r0 0
	jump	L_cont_23644
L_else_23653 : 
	bgt	r6 r0 L_else_23655
	addi	r4 r0 0
	jump	L_cont_23644
L_else_23655 : 
	addi	r4 r0 1
L_cont_23644 : 
	bne	r4 r0 L_else_23649
	add	r1 r10 r6
	ldi	r5 r1 0
	addi	r29 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2271
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
	jump	L_cont_23647
L_else_23649 : 
	addi	r31 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	add	r14 r0 r6
	add	r15 r0 r7
	add	r17 r0 r9
	add	r13 r0 r10
	add	r16 r0 r8
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2287
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
L_cont_23647 : 
	fldi	f2 r0 1055
	call	min_caml_print_float
	fldi	f2 r0 1056
	call	min_caml_print_float
	fldi	f2 r0 1057
	call	min_caml_print_float
	addi	r4 r6 1
	add	r6 r0 r4
	jump	L_scan_pixel_2314
L_scan_line_2320 : 
	ldi	r4 r0 1059
	bgt	r4 r9 L_else_23685
	return
L_else_23685 : 
	ldi	r4 r0 1059
	addi	r4 r4 -1
	bgt	r4 r9 L_else_23688
	jump	L_cont_23686
L_else_23688 : 
	addi	r5 r9 1
	fldi	f3 r0 1062
	ldi	r4 r0 1061
	sub	r4 r5 r4
	foi	f2 r4
	fmul	f4 f3 f2
	fldi	f2 r0 1033
	fmul	f3 f4 f2
	fldi	f2 r0 1027
	fadd	f20 f3 f2
	fldi	f2 r0 1034
	fmul	f3 f4 f2
	fldi	f2 r0 1028
	fadd	f21 f3 f2
	fldi	f2 r0 1035
	fmul	f3 f4 f2
	fldi	f2 r0 1029
	fadd	f22 f3 f2
	ldi	r4 r0 1058
	addi	r8 r4 -1
	sti	r9 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r7 r2 4
	add	r31 r0 r11
	add	r9 r0 r7
	addi	r2 r2 5
	call	L_pretrace_pixels_2303
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r7 r2 4
L_cont_23686 : 
	addi	r14 r0 0
	ldi	r4 r0 1058
	bgt	r4 r0 L_else_23691
	jump	L_cont_23689
L_else_23691 : 
	add	r1 r12 r14
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fsti	f2 r0 1055
	fldi	f2 r4 1
	fsti	f2 r0 1056
	fldi	f2 r4 2
	fsti	f2 r0 1057
	ldi	r4 r0 1059
	addi	r5 r9 1
	bgt	r4 r5 L_else_23705
	addi	r4 r0 0
	jump	L_cont_23703
L_else_23705 : 
	bgt	r9 r0 L_else_23710
	addi	r4 r0 0
	jump	L_cont_23703
L_else_23710 : 
	ldi	r4 r0 1058
	addi	r5 r0 1
	bgt	r4 r5 L_else_23712
	addi	r4 r0 0
	jump	L_cont_23703
L_else_23712 : 
	addi	r4 r0 0
L_cont_23703 : 
	bne	r4 r0 L_else_23708
	add	r1 r12 r14
	ldi	r5 r1 0
	addi	r29 r0 0
	sti	r9 r2 0
	sti	r10 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2271
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r10 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	jump	L_cont_23706
L_else_23708 : 
	addi	r31 r0 0
	sti	r9 r2 0
	sti	r10 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	add	r15 r0 r9
	add	r17 r0 r10
	add	r13 r0 r12
	add	r16 r0 r11
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2287
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r10 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
L_cont_23706 : 
	fldi	f2 r0 1055
	call	min_caml_print_float
	fldi	f2 r0 1056
	call	min_caml_print_float
	fldi	f2 r0 1057
	call	min_caml_print_float
	addi	r6 r0 1
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r9 r2 4
	add	r7 r0 r9
	add	r8 r0 r11
	add	r9 r0 r10
	add	r10 r0 r12
	addi	r2 r2 5
	call	L_scan_pixel_2314
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r9 r2 4
L_cont_23689 : 
	addi	r9 r9 1
	addi	r5 r7 2
	addi	r4 r0 5
	bgt	r4 r5 L_else_23694
	addi	r7 r5 -5
	jump	L_cont_23692
L_else_23694 : 
	add	r7 r0 r5
L_cont_23692 : 
	ldi	r4 r0 1059
	bgt	r4 r9 L_else_23696
	return
L_else_23696 : 
	ldi	r4 r0 1059
	addi	r4 r4 -1
	bgt	r4 r9 L_else_23699
	jump	L_cont_23697
L_else_23699 : 
	addi	r5 r9 1
	fldi	f3 r0 1062
	ldi	r4 r0 1061
	sub	r4 r5 r4
	foi	f2 r4
	fmul	f4 f3 f2
	fldi	f2 r0 1033
	fmul	f3 f4 f2
	fldi	f2 r0 1027
	fadd	f20 f3 f2
	fldi	f2 r0 1034
	fmul	f3 f4 f2
	fldi	f2 r0 1028
	fadd	f21 f3 f2
	fldi	f2 r0 1035
	fmul	f3 f4 f2
	fldi	f2 r0 1029
	fadd	f22 f3 f2
	ldi	r4 r0 1058
	addi	r8 r4 -1
	sti	r9 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r7 r2 4
	add	r31 r0 r10
	add	r9 r0 r7
	addi	r2 r2 5
	call	L_pretrace_pixels_2303
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r7 r2 4
L_cont_23697 : 
	addi	r6 r0 0
	sti	r7 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r12 r2 3
	sti	r9 r2 4
	add	r7 r0 r9
	add	r8 r0 r10
	add	r9 r0 r12
	add	r10 r0 r11
	addi	r2 r2 5
	call	L_scan_pixel_2314
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r12 r2 3
	ldi	r9 r2 4
	addi	r4 r9 1
	addi	r6 r7 2
	addi	r5 r0 5
	bgt	r5 r6 L_else_23702
	addi	r5 r6 -5
	jump	L_cont_23700
L_else_23702 : 
	add	r5 r0 r6
L_cont_23700 : 
	add	r9 r0 r4
	add	r7 r0 r5
	add	r1 r0 r10
	add	r10 r0 r11
	add	r11 r0 r12
	add	r12 r0 r1
	jump	L_scan_line_2320
L_create_pixel_2328 : 
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r13 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r14 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r14 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r14 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r14 4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r11 r0 r4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r12 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r10 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r10 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r10 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r10 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r10 4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r9 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 4
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r8 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
	call	min_caml_create_array
	add	r6 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 4
	sti	r13 r3 0
	sti	r14 r3 1
	sti	r11 r3 2
	sti	r12 r3 3
	sti	r10 r3 4
	sti	r9 r3 5
	sti	r8 r3 6
	sti	r6 r3 7
	add	r4 r0 r3
	addi	r3 r3 8
	return
L_init_line_elements_2330 : 
	bgt	r0 r13 L_else_23716
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r15 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r15 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r15 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r15 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r15 4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r12 r0 r4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r10 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r11 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r11 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r11 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r11 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r11 4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r9 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 4
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r8 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
	call	min_caml_create_array
	add	r6 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 4
	sti	r14 r3 0
	sti	r15 r3 1
	sti	r12 r3 2
	sti	r10 r3 3
	sti	r11 r3 4
	sti	r9 r3 5
	sti	r8 r3 6
	sti	r6 r3 7
	add	r4 r0 r3
	addi	r3 r3 8
	add	r1 r16 r13
	sti	r4 r1 0
	addi	r15 r13 -1
	bgt	r0 r15 L_else_23718
	call	L_create_pixel_2328
	add	r1 r16 r15
	sti	r4 r1 0
	addi	r4 r15 -1
	add	r13 r0 r4
	jump	L_init_line_elements_2330
L_else_23718 : 
	add	r4 r0 r16
	return
L_else_23716 : 
	add	r4 r0 r16
	return
L_create_pixelline_2333 : 
	ldi	r13 r0 1058
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
	call	min_caml_create_array
	add	r15 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r15 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r15 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r15 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r15 4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r12 r0 r4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r11 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r10 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r10 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r10 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r10 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r10 4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r9 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r9 4
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r8 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
	call	min_caml_create_array
	add	r6 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 1
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 2
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r4 r6 4
	sti	r14 r3 0
	sti	r15 r3 1
	sti	r12 r3 2
	sti	r11 r3 3
	sti	r10 r3 4
	sti	r9 r3 5
	sti	r8 r3 6
	sti	r6 r3 7
	add	r5 r0 r3
	addi	r3 r3 8
	add	r4 r0 r13
	call	min_caml_create_array
	add	r16 r0 r4
	ldi	r4 r0 1058
	addi	r15 r4 -2
	bgt	r0 r15 L_else_23721
	call	L_create_pixel_2328
	add	r1 r16 r15
	sti	r4 r1 0
	addi	r13 r15 -1
	jump	L_init_line_elements_2330
L_else_23721 : 
	add	r4 r0 r16
	return
L_tan_2335 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f11 f5 L_else_23725
	fldi	f2 r0 2
	fbgt	f2 f11 L_else_23742
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f11 f0 L_else_23744
	fldi	f2 r0 6
	fbgt	f2 f11 L_else_23746
	fmul	f2 f11 f11
	fmul	f8 f11 f2
	fmul	f6 f8 f2
	fmul	f7 f6 f2
	fmul	f4 f7 f2
	fmul	f5 f4 f2
	fmul	f2 f5 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f10 f2 f11
	jump	L_cont_23723
L_else_23746 : 
	fldi	f2 r0 13
	fbgt	f2 f11 L_else_23748
	fadd	f2 f3 f11
	fmul	f8 f2 f2
	fmul	f6 f8 f8
	fmul	f7 f6 f8
	fmul	f4 f7 f8
	fmul	f5 f4 f8
	fmul	f2 f5 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f10 f0 f2
	jump	L_cont_23723
L_else_23748 : 
	fadd	f9 f5 f11
	fmul	f2 f9 f9
	fmul	f7 f9 f2
	fmul	f8 f7 f2
	fmul	f5 f8 f2
	fmul	f6 f5 f2
	fmul	f4 f6 f2
	fmul	f3 f4 f2
	fldi	f2 r0 7
	fmul	f3 f2 f3
	fldi	f2 r0 8
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f7
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	fsub	f10 f0 f2
	jump	L_cont_23723
L_else_23744 : 
	fbgt	f11 f4 L_else_23750
	fmul	f2 f11 f11
	fmul	f8 f11 f2
	fmul	f7 f8 f2
	fmul	f6 f7 f2
	fmul	f5 f6 f2
	fmul	f4 f5 f2
	fmul	f3 f4 f2
	fldi	f2 r0 7
	fmul	f3 f2 f3
	fldi	f2 r0 8
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f10 f2 f11
	jump	L_cont_23723
L_else_23750 : 
	fbgt	f11 f2 L_else_23752
	fsub	f2 f11 f3
	fmul	f8 f2 f2
	fmul	f6 f8 f8
	fmul	f7 f6 f8
	fmul	f4 f7 f8
	fmul	f5 f4 f8
	fmul	f2 f5 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f10 f3 f2
	jump	L_cont_23723
L_else_23752 : 
	fsub	f9 f5 f11
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f6 f8 f2
	fmul	f7 f6 f2
	fmul	f4 f7 f2
	fmul	f5 f4 f2
	fmul	f2 f5 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f10 f2 f9
	jump	L_cont_23723
L_else_23742 : 
	fadd	f9 f11 f3
	call	L_sin_1886
	fadd	f10 f0 f2
	jump	L_cont_23723
L_else_23725 : 
	fsub	f9 f11 f3
	call	L_sin_1886
	fadd	f10 f0 f2
L_cont_23723 : 
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f11 f5 L_else_23728
	fldi	f3 r0 2
	fbgt	f3 f11 L_else_23730
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f11 f0 L_else_23732
	fldi	f2 r0 6
	fbgt	f2 f11 L_else_23734
	fmul	f6 f11 f11
	fmul	f8 f6 f6
	fmul	f5 f8 f6
	fmul	f7 f5 f6
	fmul	f3 f7 f6
	fmul	f4 f3 f6
	fldi	f2 r0 14
	fmul	f4 f2 f4
	fldi	f2 r0 15
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 16
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	jump	L_cont_23726
L_else_23734 : 
	fldi	f2 r0 13
	fbgt	f2 f11 L_else_23736
	fadd	f9 f11 f3
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f6 f8 f2
	fmul	f7 f6 f2
	fmul	f4 f7 f2
	fmul	f5 f4 f2
	fmul	f2 f5 f2
	fldi	f3 r0 7
	fmul	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	jump	L_cont_23726
L_else_23736 : 
	fadd	f2 f5 f11
	fmul	f8 f2 f2
	fmul	f6 f8 f8
	fmul	f7 f6 f8
	fmul	f4 f7 f8
	fmul	f5 f4 f8
	fmul	f2 f5 f8
	fldi	f3 r0 14
	fmul	f3 f3 f2
	fldi	f2 r0 15
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f7
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	jump	L_cont_23726
L_else_23732 : 
	fbgt	f11 f4 L_else_23738
	fmul	f8 f11 f11
	fmul	f7 f8 f8
	fmul	f6 f7 f8
	fmul	f5 f6 f8
	fmul	f4 f5 f8
	fmul	f3 f4 f8
	fldi	f2 r0 14
	fmul	f3 f2 f3
	fldi	f2 r0 15
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	jump	L_cont_23726
L_else_23738 : 
	fbgt	f11 f2 L_else_23740
	fsub	f9 f11 f3
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f7 f8 f2
	fmul	f6 f7 f2
	fmul	f5 f6 f2
	fmul	f4 f5 f2
	fmul	f3 f4 f2
	fldi	f2 r0 7
	fmul	f3 f2 f3
	fldi	f2 r0 8
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	fsub	f2 f0 f2
	jump	L_cont_23726
L_else_23740 : 
	fsub	f2 f5 f11
	fmul	f7 f2 f2
	fmul	f8 f7 f7
	fmul	f5 f8 f7
	fmul	f6 f5 f7
	fmul	f4 f6 f7
	fmul	f3 f4 f7
	fldi	f2 r0 14
	fmul	f3 f2 f3
	fldi	f2 r0 15
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 16
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 17
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 18
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 19
	fmul	f2 f2 f7
	fsub	f2 f3 f2
	fldi	f3 r0 20
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	jump	L_cont_23726
L_else_23730 : 
	fadd	f6 f11 f2
	call	L_cos_1888
	jump	L_cont_23726
L_else_23728 : 
	fsub	f6 f11 f2
	call	L_cos_1888
L_cont_23726 : 
	fdiv	f2 f10 f2
	return
L_calc_dirvec_2340 : 
	addi	r7 r0 5
	bgt	r7 r4 L_else_23755
	fmul	f3 f7 f7
	fmul	f2 f8 f8
	fadd	f3 f3 f2
	fldi	f2 r0 20
	fadd	f9 f3 f2
	fldi	f4 r0 28
	fldi	f2 r0 20
	fbgt	f9 f2 L_else_23758
	fldi	f5 r0 20
	jump	L_cont_23756
L_else_23758 : 
	fldi	f2 r0 20
	fdiv	f5 f2 f9
L_cont_23756 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_23761
	fadd	f2 f0 f2
	jump	L_cont_23759
L_else_23761 : 
	fsub	f2 f0 f2
L_cont_23759 : 
	fbgt	f3 f2 L_else_23764
	fldi	f3 r0 27
	fmul	f2 f9 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f2 f5 f2
	fldi	f3 r0 28
	fdiv	f4 f2 f3
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_23767
	fadd	f2 f0 f2
	jump	L_cont_23765
L_else_23767 : 
	fsub	f2 f0 f2
L_cont_23765 : 
	fbgt	f3 f2 L_else_23769
	fldi	f3 r0 27
	fmul	f2 f9 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fadd	f6 f0 f9
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_23762
L_else_23769 : 
	fadd	f2 f0 f4
	jump	L_cont_23762
L_else_23764 : 
	fadd	f2 f0 f5
L_cont_23762 : 
	fmul	f3 f9 f2
	fdiv	f7 f7 f3
	fdiv	f6 f8 f3
	fldi	f2 r0 20
	fdiv	f5 f2 f3
	addi	r4 r0 1076
	add	r1 r4 r5
	ldi	r5 r1 0
	add	r1 r5 r6
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsti	f7 r4 0
	fsti	f6 r4 1
	fsti	f5 r4 2
	addi	r4 r6 40
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f6
	fsti	f7 r4 0
	fsti	f5 r4 1
	fsti	f2 r4 2
	addi	r4 r6 80
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f7
	fsub	f3 f0 f6
	fsti	f5 r4 0
	fsti	f2 r4 1
	fsti	f3 r4 2
	addi	r4 r6 1
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f4 f0 f7
	fsub	f3 f0 f6
	fsub	f2 f0 f5
	fsti	f4 r4 0
	fsti	f3 r4 1
	fsti	f2 r4 2
	addi	r4 r6 41
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f3 f0 f7
	fsub	f2 f0 f5
	fsti	f3 r4 0
	fsti	f2 r4 1
	fsti	f6 r4 2
	addi	r4 r6 81
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f5
	fsti	f2 r4 0
	fsti	f7 r4 1
	fsti	f6 r4 2
	return
L_else_23755 : 
	fmul	f2 f8 f8
	fldi	f3 r0 50
	fadd	f7 f2 f3
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_23772
	fldi	f4 r0 20
	jump	L_cont_23770
L_else_23772 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_23770 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_23775
	fadd	f2 f0 f2
	jump	L_cont_23773
L_else_23775 : 
	fsub	f2 f0 f2
L_cont_23773 : 
	fbgt	f3 f2 L_else_23778
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fadd	f6 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_23776
L_else_23778 : 
	fadd	f2 f0 f4
L_cont_23776 : 
	fmul	f15 f7 f2
	fldi	f2 r0 20
	fdiv	f13 f2 f15
	call	L_atan_1890
	fmul	f11 f2 f18
	call	L_tan_2335
	fmul	f16 f2 f15
	addi	r4 r4 1
	fmul	f2 f16 f16
	fldi	f3 r0 50
	fadd	f7 f2 f3
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_23781
	fldi	f4 r0 20
	jump	L_cont_23779
L_else_23781 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_23779 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_23784
	fadd	f2 f0 f2
	jump	L_cont_23782
L_else_23784 : 
	fsub	f2 f0 f2
L_cont_23782 : 
	fbgt	f3 f2 L_else_23787
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f5 f2 f3
	fadd	f6 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_23785
L_else_23787 : 
	fadd	f2 f0 f4
L_cont_23785 : 
	fmul	f15 f7 f2
	fldi	f2 r0 20
	fdiv	f13 f2 f15
	call	L_atan_1890
	fmul	f11 f2 f17
	call	L_tan_2335
	fmul	f2 f2 f15
	fadd	f7 f0 f16
	fadd	f8 f0 f2
	jump	L_calc_dirvec_2340
L_calc_dirvecs_2348 : 
	bgt	r0 r8 L_else_23790
	foi	f2 r8
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f18 f2 f3
	addi	r4 r0 0
	fldi	f7 r0 30
	fldi	f8 r0 30
	add	r5 r0 r11
	add	r6 r0 r10
	fadd	f17 f0 f19
	call	L_calc_dirvec_2340
	foi	f3 r8
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 50
	fadd	f18 f3 f2
	addi	r4 r0 0
	fldi	f7 r0 30
	fldi	f8 r0 30
	addi	r6 r10 2
	add	r5 r0 r11
	fadd	f17 f0 f19
	call	L_calc_dirvec_2340
	addi	r9 r8 -1
	addi	r4 r11 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_23793
	addi	r8 r4 -5
	jump	L_cont_23791
L_else_23793 : 
	add	r8 r0 r4
L_cont_23791 : 
	bgt	r0 r9 L_else_23795
	foi	f3 r9
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f18 f3 f2
	addi	r4 r0 0
	fldi	f7 r0 30
	fldi	f8 r0 30
	add	r5 r0 r8
	add	r6 r0 r10
	fadd	f17 f0 f19
	call	L_calc_dirvec_2340
	foi	f3 r9
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 50
	fadd	f18 f3 f2
	addi	r4 r0 0
	fldi	f7 r0 30
	fldi	f8 r0 30
	addi	r6 r10 2
	add	r5 r0 r8
	fadd	f17 f0 f19
	call	L_calc_dirvec_2340
	addi	r6 r9 -1
	addi	r4 r8 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_23798
	addi	r4 r4 -5
	jump	L_cont_23796
L_else_23798 : 
	add	r4 r0 r4
L_cont_23796 : 
	add	r8 r0 r6
	add	r11 r0 r4
	jump	L_calc_dirvecs_2348
L_else_23795 : 
	return
L_else_23790 : 
	return
L_calc_dirvec_rows_2353 : 
	bgt	r0 r12 L_else_23801
	foi	f2 r12
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f19 f2 f3
	addi	r8 r0 4
	foi	f2 r8
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f18 f2 f3
	addi	r4 r0 0
	fldi	f7 r0 30
	fldi	f8 r0 30
	add	r5 r0 r15
	add	r6 r0 r13
	fadd	f17 f0 f19
	call	L_calc_dirvec_2340
	foi	f3 r8
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 50
	fadd	f18 f3 f2
	addi	r4 r0 0
	fldi	f7 r0 30
	fldi	f8 r0 30
	addi	r6 r13 2
	add	r5 r0 r15
	fadd	f17 f0 f19
	call	L_calc_dirvec_2340
	addi	r8 r0 3
	addi	r4 r15 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_23804
	addi	r11 r4 -5
	jump	L_cont_23802
L_else_23804 : 
	add	r11 r0 r4
L_cont_23802 : 
	add	r10 r0 r13
	call	L_calc_dirvecs_2348
	addi	r14 r12 -1
	addi	r5 r15 2
	addi	r4 r0 5
	bgt	r4 r5 L_else_23807
	addi	r12 r5 -5
	jump	L_cont_23805
L_else_23807 : 
	add	r12 r0 r5
L_cont_23805 : 
	addi	r13 r13 4
	bgt	r0 r14 L_else_23809
	foi	f2 r14
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f19 f2 f3
	addi	r8 r0 4
	add	r11 r0 r12
	add	r10 r0 r13
	call	L_calc_dirvecs_2348
	addi	r6 r14 -1
	addi	r4 r12 2
	addi	r5 r0 5
	bgt	r5 r4 L_else_23812
	addi	r5 r4 -5
	jump	L_cont_23810
L_else_23812 : 
	add	r5 r0 r4
L_cont_23810 : 
	addi	r4 r13 4
	add	r12 r0 r6
	add	r15 r0 r5
	add	r13 r0 r4
	jump	L_calc_dirvec_rows_2353
L_else_23809 : 
	return
L_else_23801 : 
	return
L_create_dirvec_elements_2359 : 
	bgt	r0 r9 L_else_23815
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r9
	sti	r4 r1 0
	addi	r8 r9 -1
	bgt	r0 r8 L_else_23817
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r9 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r9
	call	min_caml_create_array
	sti	r9 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r8
	sti	r4 r1 0
	addi	r8 r8 -1
	bgt	r0 r8 L_else_23819
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r9 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r9
	call	min_caml_create_array
	sti	r9 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r8
	sti	r4 r1 0
	addi	r8 r8 -1
	bgt	r0 r8 L_else_23821
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r9 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r9
	call	min_caml_create_array
	sti	r9 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r8
	sti	r4 r1 0
	addi	r4 r8 -1
	add	r9 r0 r4
	jump	L_create_dirvec_elements_2359
L_else_23821 : 
	return
L_else_23819 : 
	return
L_else_23817 : 
	return
L_else_23815 : 
	return
L_create_dirvecs_2362 : 
	bgt	r0 r11 L_else_23824
	addi	r10 r0 1076
	addi	r9 r0 120
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r5 r0 r3
	addi	r3 r3 2
	add	r4 r0 r9
	call	min_caml_create_array
	add	r1 r10 r11
	sti	r4 r1 0
	addi	r4 r0 1076
	add	r1 r4 r11
	ldi	r10 r1 0
	addi	r9 r0 118
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r9
	sti	r4 r1 0
	addi	r9 r0 117
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r9
	sti	r4 r1 0
	addi	r9 r0 116
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r9
	sti	r4 r1 0
	addi	r9 r0 115
	call	L_create_dirvec_elements_2359
	addi	r11 r11 -1
	bgt	r0 r11 L_else_23826
	addi	r9 r0 1076
	addi	r10 r0 120
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r5 r0 r3
	addi	r3 r3 2
	add	r4 r0 r10
	call	min_caml_create_array
	add	r1 r9 r11
	sti	r4 r1 0
	addi	r4 r0 1076
	add	r1 r4 r11
	ldi	r10 r1 0
	addi	r8 r0 118
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r9 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r9
	call	min_caml_create_array
	sti	r9 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r8
	sti	r4 r1 0
	addi	r8 r0 117
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r9 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r9
	call	min_caml_create_array
	sti	r9 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r8
	sti	r4 r1 0
	addi	r9 r0 116
	call	L_create_dirvec_elements_2359
	addi	r4 r11 -1
	add	r11 r0 r4
	jump	L_create_dirvecs_2362
L_else_23826 : 
	return
L_else_23824 : 
	return
L_init_dirvec_constants_2364 : 
	bgt	r0 r12 L_else_23829
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2146
	addi	r12 r12 -1
	bgt	r0 r12 L_else_23831
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23834
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23849
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23847
L_else_23849 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23851
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23847
L_else_23851 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23847 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_23832
L_else_23834 : 
L_cont_23832 : 
	addi	r12 r12 -1
	bgt	r0 r12 L_else_23836
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2146
	addi	r12 r12 -1
	bgt	r0 r12 L_else_23838
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23841
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23844
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23842
L_else_23844 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23846
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23842
L_else_23846 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23842 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_23839
L_else_23841 : 
L_cont_23839 : 
	addi	r4 r12 -1
	add	r12 r0 r4
	jump	L_init_dirvec_constants_2364
L_else_23838 : 
	return
L_else_23836 : 
	return
L_else_23831 : 
	return
L_else_23829 : 
	return
L_init_vecset_constants_2367 : 
	bgt	r0 r14 L_else_23854
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r4 r0 119
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23857
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23890
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23888
L_else_23890 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23892
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23888
L_else_23892 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23888 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_23855
L_else_23857 : 
L_cont_23855 : 
	addi	r4 r0 118
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2146
	addi	r4 r0 117
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23860
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23885
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23883
L_else_23885 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23887
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23883
L_else_23887 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23883 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_23858
L_else_23860 : 
L_cont_23858 : 
	addi	r12 r0 116
	call	L_init_dirvec_constants_2364
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23862
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r4 r0 119
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2146
	addi	r4 r0 118
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23865
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23880
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23878
L_else_23880 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23882
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23878
L_else_23882 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23878 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_23863
L_else_23865 : 
L_cont_23863 : 
	addi	r12 r0 117
	call	L_init_dirvec_constants_2364
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23867
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r4 r0 119
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23870
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23875
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23873
L_else_23875 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23877
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23873
L_else_23877 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23873 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_23868
L_else_23870 : 
L_cont_23868 : 
	addi	r12 r0 118
	call	L_init_dirvec_constants_2364
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23872
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r12 r0 119
	call	L_init_dirvec_constants_2364
	addi	r4 r14 -1
	add	r14 r0 r4
	jump	L_init_vecset_constants_2367
L_else_23872 : 
	return
L_else_23867 : 
	return
L_else_23862 : 
	return
L_else_23854 : 
	return
min_caml_start : 
	addi	r5 r0 128
	addi	r4 r0 128
	sti	r5 r0 1058
	sti	r4 r0 1059
	addi	r4 r0 64
	sti	r4 r0 1060
	addi	r4 r0 64
	sti	r4 r0 1061
	fldi	f2 r0 55
	foi	f3 r5
	fdiv	f2 f2 f3
	fsti	f2 r0 1062
	call	L_create_pixelline_2333
	add	r10 r0 r4
	sti	r10 r2 0
	addi	r2 r2 1
	call	L_create_pixelline_2333
	addi	r2 r2 -1
	add	r11 r0 r4
	ldi	r10 r2 0
	sti	r11 r2 0
	sti	r10 r2 1
	addi	r2 r2 2
	call	L_create_pixelline_2333
	addi	r2 r2 -2
	add	r6 r0 r4
	ldi	r11 r2 0
	ldi	r10 r2 1
	call	min_caml_read_float
	fsti	f2 r0 1024
	call	min_caml_read_float
	fsti	f2 r0 1025
	call	min_caml_read_float
	fsti	f2 r0 1026
	call	min_caml_read_float
	fldi	f3 r0 31
	fmul	f10 f2 f3
	fadd	f6 f0 f10
	call	L_cos_1888
	fadd	f13 f0 f2
	fadd	f9 f0 f10
	call	L_sin_1886
	fadd	f12 f0 f2
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 31
	fmul	f11 f3 f2
	fadd	f6 f0 f11
	call	L_cos_1888
	fadd	f10 f0 f2
	fadd	f9 f0 f11
	call	L_sin_1886
	fadd	f4 f0 f2
	fmul	f2 f13 f4
	fldi	f3 r0 56
	fmul	f2 f2 f3
	fsti	f2 r0 1027
	fldi	f2 r0 57
	fmul	f2 f12 f2
	fsti	f2 r0 1028
	fmul	f3 f13 f10
	fldi	f2 r0 56
	fmul	f2 f3 f2
	fsti	f2 r0 1029
	fsti	f10 r0 1030
	fldi	f2 r0 30
	fsti	f2 r0 1031
	fsub	f2 f0 f4
	fsti	f2 r0 1032
	fsub	f2 f0 f12
	fmul	f2 f2 f4
	fsti	f2 r0 1033
	fsub	f2 f0 f13
	fsti	f2 r0 1034
	fsub	f2 f0 f12
	fmul	f2 f2 f10
	fsti	f2 r0 1035
	fldi	f2 r0 1024
	fldi	f3 r0 1027
	fsub	f2 f2 f3
	fsti	f2 r0 1036
	fldi	f2 r0 1025
	fldi	f3 r0 1028
	fsub	f2 f2 f3
	fsti	f2 r0 1037
	fldi	f3 r0 1026
	fldi	f2 r0 1029
	fsub	f2 f3 f2
	fsti	f2 r0 1038
	call	min_caml_read_int
	call	min_caml_read_float
	fldi	f3 r0 31
	fmul	f11 f2 f3
	fadd	f9 f0 f11
	call	L_sin_1886
	fsub	f2 f0 f2
	fsti	f2 r0 1040
	call	min_caml_read_float
	fldi	f3 r0 31
	fmul	f10 f2 f3
	fadd	f6 f0 f11
	call	L_cos_1888
	fadd	f11 f0 f2
	fadd	f9 f0 f10
	call	L_sin_1886
	fmul	f2 f11 f2
	fsti	f2 r0 1039
	fadd	f6 f0 f10
	call	L_cos_1888
	fmul	f2 f11 f2
	fsti	f2 r0 1041
	call	min_caml_read_float
	fsti	f2 r0 1081
	addi	r13 r0 0
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_read_object_2041
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	addi	r14 r0 0
	addi	r12 r0 0
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_read_net_item_2045
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	ldi	r5 r7 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23895
	jump	L_cont_23893
L_else_23895 : 
	addi	r4 r0 1083
	add	r1 r4 r14
	sti	r7 r1 0
	addi	r19 r0 1
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_read_and_network_2049
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r6 r2 2
L_cont_23893 : 
	addi	r22 r0 0
	addi	r12 r0 0
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_read_net_item_2045
	addi	r2 r2 -3
	add	r21 r0 r4
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r6 r2 2
	ldi	r5 r21 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23898
	addi	r4 r0 1
	sti	r6 r2 0
	add	r5 r0 r21
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23896
L_else_23898 : 
	addi	r18 r0 1
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_read_or_network_2047
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	add	r1 r4 r22
	sti	r21 r1 0
	add	r4 r0 r4
L_cont_23896 : 
	sti	r4 r0 1183
	addi	r4 r0 80
	call	min_caml_print_char
	addi	r4 r0 54
	call	min_caml_print_char
	addi	r4 r0 10
	call	min_caml_print_char
	ldi	r8 r0 1058
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23901
	addi	r4 r8 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_24023
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_24025
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23899
L_else_24025 : 
	addi	r5 r0 2
	jump	L_cont_23899
L_else_24023 : 
	addi	r5 r0 1
	jump	L_cont_23899
L_else_23901 : 
	addi	r5 r0 0
L_cont_23899 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23904
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_24019
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_24021
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23902
L_else_24021 : 
	addi	r4 r0 2
	jump	L_cont_23902
L_else_24019 : 
	addi	r4 r0 1
	jump	L_cont_23902
L_else_23904 : 
	addi	r4 r0 0
L_cont_23902 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23907
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_24015
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_24017
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23905
L_else_24017 : 
	addi	r5 r0 2
	jump	L_cont_23905
L_else_24015 : 
	addi	r5 r0 1
	jump	L_cont_23905
L_else_23907 : 
	addi	r5 r0 0
L_cont_23905 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23910
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_24011
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_24013
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23908
L_else_24013 : 
	addi	r5 r0 2
	jump	L_cont_23908
L_else_24011 : 
	addi	r5 r0 1
	jump	L_cont_23908
L_else_23910 : 
	addi	r5 r0 0
L_cont_23908 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23913
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_24007
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_24009
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23911
L_else_24009 : 
	addi	r4 r0 2
	jump	L_cont_23911
L_else_24007 : 
	addi	r4 r0 1
	jump	L_cont_23911
L_else_23913 : 
	addi	r4 r0 0
L_cont_23911 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23916
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_24003
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_24005
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23914
L_else_24005 : 
	addi	r5 r0 2
	jump	L_cont_23914
L_else_24003 : 
	addi	r5 r0 1
	jump	L_cont_23914
L_else_23916 : 
	addi	r5 r0 0
L_cont_23914 : 
	addi	r4 r0 10
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 32
	call	min_caml_print_char
	ldi	r8 r0 1059
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23919
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23999
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_24001
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23917
L_else_24001 : 
	addi	r5 r0 2
	jump	L_cont_23917
L_else_23999 : 
	addi	r5 r0 1
	jump	L_cont_23917
L_else_23919 : 
	addi	r5 r0 0
L_cont_23917 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23922
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23995
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23997
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23920
L_else_23997 : 
	addi	r4 r0 2
	jump	L_cont_23920
L_else_23995 : 
	addi	r4 r0 1
	jump	L_cont_23920
L_else_23922 : 
	addi	r4 r0 0
L_cont_23920 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23925
	addi	r4 r8 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23991
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23993
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23923
L_else_23993 : 
	addi	r4 r0 2
	jump	L_cont_23923
L_else_23991 : 
	addi	r4 r0 1
	jump	L_cont_23923
L_else_23925 : 
	addi	r4 r0 0
L_cont_23923 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23928
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23987
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23989
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23926
L_else_23989 : 
	addi	r4 r0 2
	jump	L_cont_23926
L_else_23987 : 
	addi	r4 r0 1
	jump	L_cont_23926
L_else_23928 : 
	addi	r4 r0 0
L_cont_23926 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	sub	r5 r8 r4
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23931
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23983
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23985
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23929
L_else_23985 : 
	addi	r4 r0 2
	jump	L_cont_23929
L_else_23983 : 
	addi	r4 r0 1
	jump	L_cont_23929
L_else_23931 : 
	addi	r4 r0 0
L_cont_23929 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23934
	addi	r4 r8 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23979
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23981
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23932
L_else_23981 : 
	addi	r4 r0 2
	jump	L_cont_23932
L_else_23979 : 
	addi	r4 r0 1
	jump	L_cont_23932
L_else_23934 : 
	addi	r4 r0 0
L_cont_23932 : 
	addi	r5 r0 10
	mul	r4 r4 r5
	sub	r4 r8 r4
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 32
	call	min_caml_print_char
	addi	r8 r0 255
	addi	r4 r0 225
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23937
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23975
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23977
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23935
L_else_23977 : 
	addi	r4 r0 2
	jump	L_cont_23935
L_else_23975 : 
	addi	r4 r0 1
	jump	L_cont_23935
L_else_23937 : 
	addi	r4 r0 0
L_cont_23935 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 225
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23940
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23971
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23973
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23938
L_else_23973 : 
	addi	r5 r0 2
	jump	L_cont_23938
L_else_23971 : 
	addi	r5 r0 1
	jump	L_cont_23938
L_else_23940 : 
	addi	r5 r0 0
L_cont_23938 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23943
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23967
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23969
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23941
L_else_23969 : 
	addi	r4 r0 2
	jump	L_cont_23941
L_else_23967 : 
	addi	r4 r0 1
	jump	L_cont_23941
L_else_23943 : 
	addi	r4 r0 0
L_cont_23941 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 225
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	addi	r4 r0 10
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 10
	call	min_caml_print_char
	addi	r13 r0 4
	addi	r12 r0 1076
	addi	r9 r0 120
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	sti	r6 r2 0
	add	r5 r0 r8
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r6 r2 0
	sti	r8 r3 0
	sti	r4 r3 1
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r6 r2 0
	add	r4 r0 r9
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r12 r13
	sti	r4 r1 0
	addi	r4 r0 1076
	add	r1 r4 r13
	ldi	r4 r1 0
	addi	r9 r0 118
	sti	r6 r2 0
	sti	r10 r2 1
	add	r10 r0 r4
	addi	r2 r2 2
	call	L_create_dirvec_elements_2359
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r10 r2 1
	addi	r4 r0 3
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	add	r11 r0 r4
	addi	r2 r2 3
	call	L_create_dirvecs_2362
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	addi	r5 r0 9
	addi	r7 r0 0
	addi	r4 r0 0
	foi	f2 r5
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f19 f2 f3
	addi	r8 r0 4
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	add	r11 r0 r7
	add	r10 r0 r4
	addi	r2 r2 3
	call	L_calc_dirvecs_2348
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	addi	r12 r0 8
	addi	r15 r0 2
	addi	r13 r0 4
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	L_calc_dirvec_rows_2353
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	addi	r4 r0 4
	addi	r5 r0 1076
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r12 r0 119
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_init_dirvec_constants_2364
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	addi	r14 r0 3
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_init_vecset_constants_2367
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	addi	r4 r0 1905
	ldi	r4 r4 0
	fldi	f2 r0 1039
	fsti	f2 r4 0
	fldi	f2 r0 1040
	fsti	f2 r4 1
	fldi	f2 r0 1041
	fsti	f2 r4 2
	addi	r13 r0 1905
	ldi	r4 r0 1072
	addi	r12 r4 -1
	bgt	r0 r12 L_else_23946
	addi	r4 r0 1970
	add	r1 r4 r12
	ldi	r7 r1 0
	ldi	r9 r13 1
	ldi	r8 r13 0
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23963
	sti	r6 r2 0
	add	r6 r0 r7
	addi	r2 r2 1
	call	L_setup_rect_table_2137
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r9 r12
	sti	r4 r1 0
	jump	L_cont_23961
L_else_23963 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23965
	sti	r6 r2 0
	add	r6 r0 r7
	addi	r2 r2 1
	call	L_setup_surface_table_2140
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r9 r12
	sti	r4 r1 0
	jump	L_cont_23961
L_else_23965 : 
	sti	r6 r2 0
	add	r6 r0 r7
	addi	r2 r2 1
	call	L_setup_second_table_2143
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r9 r12
	sti	r4 r1 0
L_cont_23961 : 
	addi	r8 r12 -1
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	add	r11 r0 r13
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	jump	L_cont_23944
L_else_23946 : 
L_cont_23944 : 
	ldi	r4 r0 1072
	addi	r7 r4 -1
	bgt	r0 r7 L_else_23949
	addi	r4 r0 1970
	add	r1 r4 r7
	ldi	r8 r1 0
	ldi	r4 r8 2
	addi	r5 r0 2
	bne	r4 r5 L_else_23951
	ldi	r4 r8 7
	fldi	f3 r4 0
	fldi	f2 r0 20
	fbgt	f2 f3 L_else_23954
	addi	r4 r0 0
	jump	L_cont_23952
L_else_23954 : 
	addi	r4 r0 1
L_cont_23952 : 
	bne	r4 r0 L_else_23956
	jump	L_cont_23947
L_else_23956 : 
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23958
	addi	r4 r0 4
	mul	r16 r7 r4
	ldi	r15 r0 1075
	fldi	f3 r0 20
	ldi	r4 r8 7
	fldi	f2 r4 0
	fsub	f12 f3 f2
	fldi	f2 r0 1039
	fsub	f11 f0 f2
	fldi	f2 r0 1040
	fsub	f10 f0 f2
	fldi	f2 r0 1041
	fsub	f9 f0 f2
	addi	r12 r16 1
	fldi	f3 r0 1039
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	sti	r6 r2 0
	add	r5 r0 r8
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r6 r2 0
	sti	r8 r3 0
	sti	r4 r3 1
	add	r13 r0 r3
	addi	r3 r3 2
	fsti	f3 r8 0
	fsti	f10 r8 1
	fsti	f9 r8 2
	ldi	r4 r0 1072
	addi	r8 r4 -1
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	add	r11 r0 r13
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	addi	r5 r0 1185
	sti	r12 r3 0
	sti	r13 r3 1
	fsti	f12 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r15
	sti	r4 r1 0
	addi	r13 r15 1
	addi	r14 r16 2
	fldi	f3 r0 1040
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	sti	r6 r2 0
	add	r5 r0 r8
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r6 r2 0
	sti	r8 r3 0
	sti	r4 r3 1
	add	r12 r0 r3
	addi	r3 r3 2
	fsti	f11 r8 0
	fsti	f3 r8 1
	fsti	f9 r8 2
	ldi	r4 r0 1072
	addi	r8 r4 -1
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	add	r11 r0 r12
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	addi	r5 r0 1185
	sti	r14 r3 0
	sti	r12 r3 1
	fsti	f12 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r13
	sti	r4 r1 0
	addi	r14 r15 2
	addi	r13 r16 3
	fldi	f3 r0 1041
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	sti	r6 r2 0
	add	r5 r0 r8
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r6 r2 0
	sti	r8 r3 0
	sti	r4 r3 1
	add	r12 r0 r3
	addi	r3 r3 2
	fsti	f11 r8 0
	fsti	f10 r8 1
	fsti	f3 r8 2
	ldi	r4 r0 1072
	addi	r8 r4 -1
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	add	r11 r0 r12
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	addi	r5 r0 1185
	sti	r13 r3 0
	sti	r12 r3 1
	fsti	f12 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r14
	sti	r4 r1 0
	addi	r4 r15 3
	sti	r4 r0 1075
	jump	L_cont_23947
L_else_23958 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23960
	addi	r4 r0 4
	mul	r4 r7 r4
	addi	r14 r4 1
	ldi	r13 r0 1075
	fldi	f3 r0 20
	ldi	r4 r8 7
	fldi	f2 r4 0
	fsub	f9 f3 f2
	ldi	r4 r8 4
	fldi	f3 r0 1039
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f2 r0 1040
	fldi	f3 r4 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r0 1041
	fldi	f3 r4 2
	fmul	f2 f2 f3
	fadd	f6 f4 f2
	fldi	f3 r0 28
	ldi	r4 r8 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	fldi	f3 r0 1039
	fsub	f4 f2 f3
	fldi	f3 r0 28
	ldi	r4 r8 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fmul	f3 f2 f6
	fldi	f2 r0 1040
	fsub	f5 f3 f2
	fldi	f3 r0 28
	ldi	r4 r8 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	fldi	f3 r0 1041
	fsub	f3 f2 f3
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r8 r0 r4
	ldi	r4 r0 1072
	sti	r6 r2 0
	add	r5 r0 r8
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r6 r2 0
	sti	r8 r3 0
	sti	r4 r3 1
	add	r12 r0 r3
	addi	r3 r3 2
	fsti	f4 r8 0
	fsti	f5 r8 1
	fsti	f3 r8 2
	ldi	r4 r0 1072
	addi	r8 r4 -1
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	add	r11 r0 r12
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	addi	r5 r0 1185
	sti	r14 r3 0
	sti	r12 r3 1
	fsti	f9 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r13
	sti	r4 r1 0
	addi	r4 r13 1
	sti	r4 r0 1075
	jump	L_cont_23947
L_else_23960 : 
	jump	L_cont_23947
L_else_23951 : 
	jump	L_cont_23947
L_else_23949 : 
L_cont_23947 : 
	addi	r5 r0 0
	addi	r9 r0 0
	fldi	f2 r0 1062
	ldi	r4 r0 1061
	sub	r4 r5 r4
	foi	f3 r4
	fmul	f3 f2 f3
	fldi	f2 r0 1033
	fmul	f2 f3 f2
	fldi	f4 r0 1027
	fadd	f20 f2 f4
	fldi	f2 r0 1034
	fmul	f2 f3 f2
	fldi	f4 r0 1028
	fadd	f21 f2 f4
	fldi	f2 r0 1035
	fmul	f2 f3 f2
	fldi	f3 r0 1029
	fadd	f22 f2 f3
	ldi	r4 r0 1058
	addi	r8 r4 -1
	sti	r6 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	add	r31 r0 r11
	addi	r2 r2 3
	call	L_pretrace_pixels_2303
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r9 r0 0
	addi	r7 r0 2
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_scan_line_2320
	return
min_caml_end : 
	call	min_caml_start
