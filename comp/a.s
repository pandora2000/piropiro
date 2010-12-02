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
	bne	r0 r5 L_else_23756
	return
L_else_23756 : 
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
	bne	r0 r5 L_else_23757
	return
L_else_23757 : 
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
L_sin_1884 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_21184
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21186
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21188
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21190
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
L_else_21190 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21192
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
L_else_21192 : 
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
L_else_21188 : 
	fbgt	f9 f4 L_else_21194
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
L_else_21194 : 
	fbgt	f9 f2 L_else_21196
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
L_else_21196 : 
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
L_else_21186 : 
	fadd	f9 f9 f3
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_21198
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21200
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21202
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21204
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
L_else_21204 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21206
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
L_else_21206 : 
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
L_else_21202 : 
	fbgt	f9 f5 L_else_21208
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
L_else_21208 : 
	fbgt	f9 f2 L_else_21210
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
L_else_21210 : 
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
L_else_21200 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1884
L_else_21198 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1884
L_else_21184 : 
	fsub	f9 f9 f3
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_21212
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21214
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21216
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21218
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
L_else_21218 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21220
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
L_else_21220 : 
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
L_else_21216 : 
	fbgt	f9 f4 L_else_21222
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
L_else_21222 : 
	fbgt	f9 f2 L_else_21224
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
L_else_21224 : 
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
L_else_21214 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1884
L_else_21212 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1884
L_cos_1886 : 
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f6 f4 L_else_21227
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_21229
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_21231
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_21233
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
L_else_21233 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_21235
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
L_else_21235 : 
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
L_else_21231 : 
	fbgt	f6 f5 L_else_21237
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
L_else_21237 : 
	fbgt	f6 f2 L_else_21239
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
L_else_21239 : 
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
L_else_21229 : 
	fadd	f5 f6 f3
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f5 f4 L_else_21241
	fldi	f2 r0 2
	fbgt	f2 f5 L_else_21243
	fldi	f6 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f5 f0 L_else_21245
	fldi	f2 r0 6
	fbgt	f2 f5 L_else_21247
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
L_else_21247 : 
	fldi	f2 r0 13
	fbgt	f2 f5 L_else_21249
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
L_else_21249 : 
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
L_else_21245 : 
	fbgt	f5 f6 L_else_21251
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
L_else_21251 : 
	fbgt	f5 f2 L_else_21253
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
L_else_21253 : 
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
L_else_21243 : 
	fadd	f2 f5 f3
	fadd	f6 f0 f2
	jump	L_cos_1886
L_else_21241 : 
	fsub	f2 f5 f3
	fadd	f6 f0 f2
	jump	L_cos_1886
L_else_21227 : 
	fsub	f6 f6 f3
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_21255
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_21257
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_21259
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_21261
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
L_else_21261 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_21263
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
L_else_21263 : 
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
L_else_21259 : 
	fbgt	f6 f4 L_else_21265
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
L_else_21265 : 
	fbgt	f6 f2 L_else_21267
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
L_else_21267 : 
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
L_else_21257 : 
	fadd	f2 f6 f3
	fadd	f6 f0 f2
	jump	L_cos_1886
L_else_21255 : 
	fsub	f2 f6 f3
	fadd	f6 f0 f2
	jump	L_cos_1886
L_atan_1888 : 
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
L_isqrt_1890 : 
	bne	r4 r0 L_else_21271
	fadd	f2 f0 f4
	return
L_else_21271 : 
	fldi	f3 r0 26
	fmul	f2 f5 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	addi	r4 r4 -1
	bne	r4 r0 L_else_21273
	fadd	f2 f0 f3
	return
L_else_21273 : 
	fldi	f4 r0 26
	fmul	f2 f5 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r4 -1
	bne	r4 r0 L_else_21275
	fadd	f2 f0 f4
	return
L_else_21275 : 
	fldi	f3 r0 26
	fmul	f2 f5 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	addi	r4 r4 -1
	bne	r4 r0 L_else_21277
	fadd	f2 f0 f3
	return
L_else_21277 : 
	fldi	f4 r0 26
	fmul	f2 f5 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f2 f3 f2
	addi	r4 r4 -1
	fadd	f4 f0 f2
	jump	L_isqrt_1890
L_sdiv10_1896 : 
	addi	r6 r4 -10
	bgt	r0 r6 L_else_21280
	addi	r6 r4 -10
	addi	r4 r5 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_21282
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_21284
	addi	r6 r5 -10
	addi	r4 r7 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_21286
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_21288
	addi	r6 r5 -10
	addi	r4 r7 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_21290
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_21292
	addi	r6 r5 -10
	addi	r5 r7 1
	addi	r4 r6 -10
	bgt	r0 r4 L_else_21294
	addi	r4 r6 -10
	addi	r5 r5 1
	jump	L_sdiv10_1896
L_else_21294 : 
	add	r4 r0 r5
	return
L_else_21292 : 
	add	r4 r0 r7
	return
L_else_21290 : 
	add	r4 r0 r4
	return
L_else_21288 : 
	add	r4 r0 r7
	return
L_else_21286 : 
	add	r4 r0 r4
	return
L_else_21284 : 
	add	r4 r0 r7
	return
L_else_21282 : 
	add	r4 r0 r4
	return
L_else_21280 : 
	add	r4 r0 r5
	return
L_vecunit_sgn_1929 : 
	fldi	f2 r5 0
	fmul	f3 f2 f2
	fldi	f2 r5 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r5 2
	fmul	f2 f2 f2
	fadd	f6 f3 f2
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_21298
	fldi	f4 r0 20
	jump	L_cont_21296
L_else_21298 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_21296 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	fldi	f4 r0 26
	fmul	f2 f6 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 13
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f3 f6 f2
	fbne	f3 f0 L_else_21301
	addi	r4 r0 1
	jump	L_cont_21299
L_else_21301 : 
	addi	r4 r0 0
L_cont_21299 : 
	bne	r4 r0 L_else_21304
	bne	r6 r0 L_else_21306
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_21302
L_else_21306 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_21302
L_else_21304 : 
	fldi	f3 r0 20
L_cont_21302 : 
	fldi	f2 r5 0
	fmul	f2 f2 f3
	fsti	f2 r5 0
	fldi	f2 r5 1
	fmul	f2 f2 f3
	fsti	f2 r5 1
	fldi	f2 r5 2
	fmul	f2 f2 f3
	fsti	f2 r5 2
	return
L_read_object_2039 : 
	addi	r4 r0 60
	bgt	r4 r13 L_else_21309
	return
L_else_21309 : 
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21312
	addi	r4 r0 0
	jump	L_cont_21310
L_else_21312 : 
	call	min_caml_read_int
	add	r17 r0 r4
	call	min_caml_read_int
	add	r16 r0 r4
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r11 r0 r4
	call	min_caml_read_float
	fsti	f2 r11 0
	call	min_caml_read_float
	fsti	f2 r11 1
	call	min_caml_read_float
	fsti	f2 r11 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r15 r0 r4
	call	min_caml_read_float
	fsti	f2 r15 0
	call	min_caml_read_float
	fsti	f2 r15 1
	call	min_caml_read_float
	fsti	f2 r15 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_21403
	addi	r12 r0 0
	jump	L_cont_21401
L_else_21403 : 
	addi	r12 r0 1
L_cont_21401 : 
	addi	r4 r0 2
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r10 r0 r4
	call	min_caml_read_float
	fsti	f2 r10 0
	call	min_caml_read_float
	fsti	f2 r10 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	call	min_caml_read_float
	fsti	f2 r8 0
	call	min_caml_read_float
	fsti	f2 r8 1
	call	min_caml_read_float
	fsti	f2 r8 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r9 r0 r4
	bne	r14 r0 L_else_21406
	jump	L_cont_21404
L_else_21406 : 
	call	min_caml_read_float
	fldi	f3 r0 30
	fmul	f2 f2 f3
	fsti	f2 r9 0
	call	min_caml_read_float
	fldi	f3 r0 30
	fmul	f2 f2 f3
	fsti	f2 r9 1
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 30
	fmul	f2 f3 f2
	fsti	f2 r9 2
L_cont_21404 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_21409
	addi	r6 r0 1
	jump	L_cont_21407
L_else_21409 : 
	add	r6 r0 r12
L_cont_21407 : 
	addi	r4 r0 4
	fldi	f2 r0 29
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
	bne	r17 r4 L_else_21412
	fldi	f3 r11 0
	fbne	f3 f0 L_else_21508
	addi	r4 r0 1
	jump	L_cont_21506
L_else_21508 : 
	addi	r4 r0 0
L_cont_21506 : 
	bne	r4 r0 L_else_21511
	fbne	f3 f0 L_else_21548
	addi	r4 r0 1
	jump	L_cont_21546
L_else_21548 : 
	addi	r4 r0 0
L_cont_21546 : 
	bne	r4 r0 L_else_21551
	fbgt	f3 f0 L_else_21554
	addi	r4 r0 0
	jump	L_cont_21552
L_else_21554 : 
	addi	r4 r0 1
L_cont_21552 : 
	bne	r4 r0 L_else_21556
	fldi	f2 r0 28
	jump	L_cont_21549
L_else_21556 : 
	fldi	f2 r0 20
	jump	L_cont_21549
L_else_21551 : 
	fldi	f2 r0 29
L_cont_21549 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21509
L_else_21511 : 
	fldi	f2 r0 29
L_cont_21509 : 
	fsti	f2 r11 0
	fldi	f3 r11 1
	fbne	f3 f0 L_else_21514
	addi	r4 r0 1
	jump	L_cont_21512
L_else_21514 : 
	addi	r4 r0 0
L_cont_21512 : 
	bne	r4 r0 L_else_21517
	fbne	f3 f0 L_else_21537
	addi	r4 r0 1
	jump	L_cont_21535
L_else_21537 : 
	addi	r4 r0 0
L_cont_21535 : 
	bne	r4 r0 L_else_21540
	fbgt	f3 f0 L_else_21543
	addi	r4 r0 0
	jump	L_cont_21541
L_else_21543 : 
	addi	r4 r0 1
L_cont_21541 : 
	bne	r4 r0 L_else_21545
	fldi	f2 r0 28
	jump	L_cont_21538
L_else_21545 : 
	fldi	f2 r0 20
	jump	L_cont_21538
L_else_21540 : 
	fldi	f2 r0 29
L_cont_21538 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21515
L_else_21517 : 
	fldi	f2 r0 29
L_cont_21515 : 
	fsti	f2 r11 1
	fldi	f2 r11 2
	fbne	f2 f0 L_else_21520
	addi	r4 r0 1
	jump	L_cont_21518
L_else_21520 : 
	addi	r4 r0 0
L_cont_21518 : 
	bne	r4 r0 L_else_21523
	fbne	f2 f0 L_else_21526
	addi	r4 r0 1
	jump	L_cont_21524
L_else_21526 : 
	addi	r4 r0 0
L_cont_21524 : 
	bne	r4 r0 L_else_21529
	fbgt	f2 f0 L_else_21532
	addi	r4 r0 0
	jump	L_cont_21530
L_else_21532 : 
	addi	r4 r0 1
L_cont_21530 : 
	bne	r4 r0 L_else_21534
	fldi	f3 r0 28
	jump	L_cont_21527
L_else_21534 : 
	fldi	f3 r0 20
	jump	L_cont_21527
L_else_21529 : 
	fldi	f3 r0 29
L_cont_21527 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21521
L_else_21523 : 
	fldi	f2 r0 29
L_cont_21521 : 
	fsti	f2 r11 2
	jump	L_cont_21410
L_else_21412 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_21558
	addi	r4 r0 1
	sub	r6 r4 r12
	add	r5 r0 r11
	call	L_vecunit_sgn_1929
	jump	L_cont_21410
L_else_21558 : 
L_cont_21410 : 
	bne	r14 r0 L_else_21415
	jump	L_cont_21413
L_else_21415 : 
	fldi	f5 r9 0
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f5 f4 L_else_21418
	fldi	f2 r0 2
	fbgt	f2 f5 L_else_21495
	fldi	f3 r0 3
	fldi	f6 r0 4
	fldi	f2 r0 5
	fbgt	f5 f0 L_else_21497
	fldi	f2 r0 6
	fbgt	f2 f5 L_else_21499
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
	jump	L_cont_21416
L_else_21499 : 
	fldi	f2 r0 13
	fbgt	f2 f5 L_else_21501
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
	jump	L_cont_21416
L_else_21501 : 
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
	jump	L_cont_21416
L_else_21497 : 
	fbgt	f5 f3 L_else_21503
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
	jump	L_cont_21416
L_else_21503 : 
	fbgt	f5 f2 L_else_21505
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
	jump	L_cont_21416
L_else_21505 : 
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
	jump	L_cont_21416
L_else_21495 : 
	fadd	f6 f5 f3
	call	L_cos_1886
	fadd	f14 f0 f2
	jump	L_cont_21416
L_else_21418 : 
	fsub	f6 f5 f3
	call	L_cos_1886
	fadd	f14 f0 f2
L_cont_21416 : 
	fldi	f9 r9 0
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_21421
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21483
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21485
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21487
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
	jump	L_cont_21419
L_else_21487 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21489
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
	jump	L_cont_21419
L_else_21489 : 
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
	jump	L_cont_21419
L_else_21485 : 
	fbgt	f9 f5 L_else_21491
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
	jump	L_cont_21419
L_else_21491 : 
	fbgt	f9 f2 L_else_21493
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
	jump	L_cont_21419
L_else_21493 : 
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
	jump	L_cont_21419
L_else_21483 : 
	fadd	f9 f9 f3
	call	L_sin_1884
	fadd	f17 f0 f2
	jump	L_cont_21419
L_else_21421 : 
	fsub	f9 f9 f3
	call	L_sin_1884
	fadd	f17 f0 f2
L_cont_21419 : 
	fldi	f5 r9 1
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f5 f4 L_else_21424
	fldi	f2 r0 2
	fbgt	f2 f5 L_else_21471
	fldi	f6 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f5 f0 L_else_21473
	fldi	f2 r0 6
	fbgt	f2 f5 L_else_21475
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
	jump	L_cont_21422
L_else_21475 : 
	fldi	f2 r0 13
	fbgt	f2 f5 L_else_21477
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
	jump	L_cont_21422
L_else_21477 : 
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
	jump	L_cont_21422
L_else_21473 : 
	fbgt	f5 f6 L_else_21479
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
	jump	L_cont_21422
L_else_21479 : 
	fbgt	f5 f2 L_else_21481
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
	jump	L_cont_21422
L_else_21481 : 
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
	jump	L_cont_21422
L_else_21471 : 
	fadd	f6 f5 f3
	call	L_cos_1886
	fadd	f13 f0 f2
	jump	L_cont_21422
L_else_21424 : 
	fsub	f6 f5 f3
	call	L_cos_1886
	fadd	f13 f0 f2
L_cont_21422 : 
	fldi	f9 r9 1
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_21427
	fldi	f3 r0 2
	fbgt	f3 f9 L_else_21459
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21461
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21463
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
	jump	L_cont_21425
L_else_21463 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21465
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
	jump	L_cont_21425
L_else_21465 : 
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
	jump	L_cont_21425
L_else_21461 : 
	fbgt	f9 f3 L_else_21467
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
	jump	L_cont_21425
L_else_21467 : 
	fbgt	f9 f2 L_else_21469
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
	jump	L_cont_21425
L_else_21469 : 
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
	jump	L_cont_21425
L_else_21459 : 
	fadd	f9 f9 f2
	call	L_sin_1884
	fadd	f18 f0 f2
	jump	L_cont_21425
L_else_21427 : 
	fsub	f9 f9 f2
	call	L_sin_1884
	fadd	f18 f0 f2
L_cont_21425 : 
	fldi	f6 r9 2
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_21430
	fldi	f3 r0 2
	fbgt	f3 f6 L_else_21447
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_21449
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_21451
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
	jump	L_cont_21428
L_else_21451 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_21453
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
	jump	L_cont_21428
L_else_21453 : 
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
	jump	L_cont_21428
L_else_21449 : 
	fbgt	f6 f3 L_else_21455
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
	jump	L_cont_21428
L_else_21455 : 
	fbgt	f6 f2 L_else_21457
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
	jump	L_cont_21428
L_else_21457 : 
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
	jump	L_cont_21428
L_else_21447 : 
	fadd	f6 f6 f2
	call	L_cos_1886
	fadd	f15 f0 f2
	jump	L_cont_21428
L_else_21430 : 
	fsub	f6 f6 f2
	call	L_cos_1886
	fadd	f15 f0 f2
L_cont_21428 : 
	fldi	f9 r9 2
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_21433
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21435
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21437
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21439
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
	jump	L_cont_21431
L_else_21439 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21441
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
	jump	L_cont_21431
L_else_21441 : 
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
	jump	L_cont_21431
L_else_21437 : 
	fbgt	f9 f5 L_else_21443
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
	jump	L_cont_21431
L_else_21443 : 
	fbgt	f9 f2 L_else_21445
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
	jump	L_cont_21431
L_else_21445 : 
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
	jump	L_cont_21431
L_else_21435 : 
	fadd	f9 f9 f3
	call	L_sin_1884
	fadd	f4 f0 f2
	jump	L_cont_21431
L_else_21433 : 
	fsub	f9 f9 f3
	call	L_sin_1884
	fadd	f4 f0 f2
L_cont_21431 : 
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
	fldi	f4 r0 27
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
	fldi	f4 r0 27
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
	fldi	f4 r0 27
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
L_cont_21413 : 
	addi	r4 r0 1
L_cont_21310 : 
	bne	r4 r0 L_else_21314
	sti	r13 r0 1072
	return
L_else_21314 : 
	addi	r11 r13 1
	addi	r4 r0 60
	bgt	r4 r11 L_else_21316
	return
L_else_21316 : 
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21319
	addi	r4 r0 0
	jump	L_cont_21317
L_else_21319 : 
	call	min_caml_read_int
	add	r17 r0 r4
	call	min_caml_read_int
	add	r14 r0 r4
	call	min_caml_read_int
	add	r10 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r12 r0 r4
	call	min_caml_read_float
	fsti	f2 r12 0
	call	min_caml_read_float
	fsti	f2 r12 1
	call	min_caml_read_float
	fsti	f2 r12 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r16 r0 r4
	call	min_caml_read_float
	fsti	f2 r16 0
	call	min_caml_read_float
	fsti	f2 r16 1
	call	min_caml_read_float
	fsti	f2 r16 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_21324
	addi	r15 r0 0
	jump	L_cont_21322
L_else_21324 : 
	addi	r15 r0 1
L_cont_21322 : 
	addi	r4 r0 2
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r9 r0 r4
	call	min_caml_read_float
	fsti	f2 r9 0
	call	min_caml_read_float
	fsti	f2 r9 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	call	min_caml_read_float
	fsti	f2 r8 0
	call	min_caml_read_float
	fsti	f2 r8 1
	call	min_caml_read_float
	fsti	f2 r8 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r13 r0 r4
	bne	r10 r0 L_else_21327
	jump	L_cont_21325
L_else_21327 : 
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 30
	fmul	f2 f3 f2
	fsti	f2 r13 0
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 30
	fmul	f2 f3 f2
	fsti	f2 r13 1
	call	min_caml_read_float
	fldi	f3 r0 30
	fmul	f2 f2 f3
	fsti	f2 r13 2
L_cont_21325 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_21330
	addi	r6 r0 1
	jump	L_cont_21328
L_else_21330 : 
	add	r6 r0 r15
L_cont_21328 : 
	addi	r4 r0 4
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r18 r3 0
	sti	r17 r3 1
	sti	r14 r3 2
	sti	r10 r3 3
	sti	r12 r3 4
	sti	r16 r3 5
	sti	r6 r3 6
	sti	r9 r3 7
	sti	r8 r3 8
	sti	r13 r3 9
	sti	r4 r3 10
	add	r5 r0 r3
	addi	r3 r3 11
	addi	r4 r0 1970
	add	r1 r4 r11
	sti	r5 r1 0
	addi	r4 r0 3
	bne	r17 r4 L_else_21333
	fldi	f2 r12 0
	fbne	f2 f0 L_else_21339
	addi	r4 r0 1
	jump	L_cont_21337
L_else_21339 : 
	addi	r4 r0 0
L_cont_21337 : 
	bne	r4 r0 L_else_21342
	fbne	f2 f0 L_else_21379
	addi	r4 r0 1
	jump	L_cont_21377
L_else_21379 : 
	addi	r4 r0 0
L_cont_21377 : 
	bne	r4 r0 L_else_21382
	fbgt	f2 f0 L_else_21385
	addi	r4 r0 0
	jump	L_cont_21383
L_else_21385 : 
	addi	r4 r0 1
L_cont_21383 : 
	bne	r4 r0 L_else_21387
	fldi	f3 r0 28
	jump	L_cont_21380
L_else_21387 : 
	fldi	f3 r0 20
	jump	L_cont_21380
L_else_21382 : 
	fldi	f3 r0 29
L_cont_21380 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21340
L_else_21342 : 
	fldi	f2 r0 29
L_cont_21340 : 
	fsti	f2 r12 0
	fldi	f2 r12 1
	fbne	f2 f0 L_else_21345
	addi	r4 r0 1
	jump	L_cont_21343
L_else_21345 : 
	addi	r4 r0 0
L_cont_21343 : 
	bne	r4 r0 L_else_21348
	fbne	f2 f0 L_else_21368
	addi	r4 r0 1
	jump	L_cont_21366
L_else_21368 : 
	addi	r4 r0 0
L_cont_21366 : 
	bne	r4 r0 L_else_21371
	fbgt	f2 f0 L_else_21374
	addi	r4 r0 0
	jump	L_cont_21372
L_else_21374 : 
	addi	r4 r0 1
L_cont_21372 : 
	bne	r4 r0 L_else_21376
	fldi	f3 r0 28
	jump	L_cont_21369
L_else_21376 : 
	fldi	f3 r0 20
	jump	L_cont_21369
L_else_21371 : 
	fldi	f3 r0 29
L_cont_21369 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21346
L_else_21348 : 
	fldi	f2 r0 29
L_cont_21346 : 
	fsti	f2 r12 1
	fldi	f3 r12 2
	fbne	f3 f0 L_else_21351
	addi	r4 r0 1
	jump	L_cont_21349
L_else_21351 : 
	addi	r4 r0 0
L_cont_21349 : 
	bne	r4 r0 L_else_21354
	fbne	f3 f0 L_else_21357
	addi	r4 r0 1
	jump	L_cont_21355
L_else_21357 : 
	addi	r4 r0 0
L_cont_21355 : 
	bne	r4 r0 L_else_21360
	fbgt	f3 f0 L_else_21363
	addi	r4 r0 0
	jump	L_cont_21361
L_else_21363 : 
	addi	r4 r0 1
L_cont_21361 : 
	bne	r4 r0 L_else_21365
	fldi	f2 r0 28
	jump	L_cont_21358
L_else_21365 : 
	fldi	f2 r0 20
	jump	L_cont_21358
L_else_21360 : 
	fldi	f2 r0 29
L_cont_21358 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21352
L_else_21354 : 
	fldi	f2 r0 29
L_cont_21352 : 
	fsti	f2 r12 2
	jump	L_cont_21331
L_else_21333 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_21389
	addi	r4 r0 1
	sub	r5 r4 r15
	fldi	f2 r12 0
	fmul	f3 f2 f2
	fldi	f2 r12 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r12 2
	fmul	f2 f2 f2
	fadd	f6 f3 f2
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_21392
	fldi	f4 r0 20
	jump	L_cont_21390
L_else_21392 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_21390 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	fldi	f4 r0 26
	fmul	f2 f6 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f4 f2 f3
	addi	r4 r0 12
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f3 f6 f2
	fbne	f3 f0 L_else_21395
	addi	r4 r0 1
	jump	L_cont_21393
L_else_21395 : 
	addi	r4 r0 0
L_cont_21393 : 
	bne	r4 r0 L_else_21398
	bne	r5 r0 L_else_21400
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_21396
L_else_21400 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_21396
L_else_21398 : 
	fldi	f3 r0 20
L_cont_21396 : 
	fldi	f2 r12 0
	fmul	f2 f2 f3
	fsti	f2 r12 0
	fldi	f2 r12 1
	fmul	f2 f2 f3
	fsti	f2 r12 1
	fldi	f2 r12 2
	fmul	f2 f2 f3
	fsti	f2 r12 2
	jump	L_cont_21331
L_else_21389 : 
L_cont_21331 : 
	bne	r10 r0 L_else_21336
	jump	L_cont_21334
L_else_21336 : 
	fldi	f6 r13 0
	call	L_cos_1886
	fadd	f18 f0 f2
	fldi	f9 r13 0
	call	L_sin_1884
	fadd	f19 f0 f2
	fldi	f6 r13 1
	call	L_cos_1886
	fadd	f17 f0 f2
	fldi	f9 r13 1
	call	L_sin_1884
	fadd	f14 f0 f2
	fldi	f6 r13 2
	call	L_cos_1886
	fadd	f13 f0 f2
	fldi	f9 r13 2
	call	L_sin_1884
	fadd	f4 f0 f2
	fmul	f12 f17 f13
	fmul	f2 f19 f14
	fmul	f2 f2 f13
	fmul	f3 f18 f4
	fsub	f10 f2 f3
	fmul	f2 f18 f14
	fmul	f2 f2 f13
	fmul	f3 f19 f4
	fadd	f16 f2 f3
	fmul	f11 f17 f4
	fmul	f2 f19 f14
	fmul	f3 f2 f4
	fmul	f2 f18 f13
	fadd	f9 f3 f2
	fmul	f2 f18 f14
	fmul	f3 f2 f4
	fmul	f2 f19 f13
	fsub	f15 f3 f2
	fsub	f8 f0 f14
	fmul	f7 f19 f17
	fmul	f14 f18 f17
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
	fldi	f4 r0 27
	fmul	f2 f13 f10
	fmul	f3 f2 f16
	fmul	f2 f6 f9
	fmul	f2 f2 f15
	fadd	f3 f3 f2
	fmul	f2 f5 f7
	fmul	f2 f2 f14
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r13 0
	fldi	f4 r0 27
	fmul	f2 f13 f12
	fmul	f3 f2 f16
	fmul	f2 f6 f11
	fmul	f2 f2 f15
	fadd	f3 f3 f2
	fmul	f2 f5 f8
	fmul	f2 f2 f14
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r13 1
	fldi	f4 r0 27
	fmul	f2 f13 f12
	fmul	f3 f2 f10
	fmul	f2 f6 f11
	fmul	f2 f2 f9
	fadd	f3 f3 f2
	fmul	f2 f5 f8
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r13 2
L_cont_21334 : 
	addi	r4 r0 1
L_cont_21317 : 
	bne	r4 r0 L_else_21321
	sti	r11 r0 1072
	return
L_else_21321 : 
	addi	r4 r11 1
	add	r13 r0 r4
	jump	L_read_object_2039
L_read_net_item_2043 : 
	call	min_caml_read_int
	add	r13 r0 r4
	addi	r4 r0 -1
	bne	r13 r4 L_else_21561
	addi	r4 r12 1
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_21561 : 
	addi	r11 r12 1
	call	min_caml_read_int
	add	r10 r0 r4
	addi	r4 r0 -1
	bne	r10 r4 L_else_21564
	addi	r4 r11 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21562
L_else_21564 : 
	addi	r9 r11 1
	call	min_caml_read_int
	add	r8 r0 r4
	addi	r4 r0 -1
	bne	r8 r4 L_else_21567
	addi	r4 r9 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21565
L_else_21567 : 
	addi	r6 r9 1
	call	min_caml_read_int
	add	r5 r0 r4
	addi	r4 r0 -1
	bne	r5 r4 L_else_21570
	addi	r4 r6 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21568
L_else_21570 : 
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
	call	L_read_net_item_2043
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
L_cont_21568 : 
	add	r1 r4 r9
	sti	r8 r1 0
	add	r4 r0 r4
L_cont_21565 : 
	add	r1 r4 r11
	sti	r10 r1 0
	add	r4 r0 r4
L_cont_21562 : 
	add	r1 r4 r12
	sti	r13 r1 0
	add	r4 r0 r4
	return
L_read_or_network_2045 : 
	addi	r20 r0 0
	call	min_caml_read_int
	add	r19 r0 r4
	addi	r4 r0 -1
	bne	r19 r4 L_else_21574
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r17 r0 r4
	jump	L_cont_21572
L_else_21574 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21597
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21595
L_else_21597 : 
	addi	r15 r0 2
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21600
	addi	r4 r0 3
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21598
L_else_21600 : 
	addi	r12 r0 3
	call	L_read_net_item_2043
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21598 : 
	add	r1 r4 r17
	sti	r16 r1 0
	add	r4 r0 r4
L_cont_21595 : 
	add	r1 r4 r20
	sti	r19 r1 0
	add	r17 r0 r4
L_cont_21572 : 
	ldi	r4 r17 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21576
	addi	r4 r18 1
	add	r5 r0 r17
	jump	min_caml_create_array
L_else_21576 : 
	addi	r20 r18 1
	addi	r19 r0 0
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21579
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r19 r0 r4
	jump	L_cont_21577
L_else_21579 : 
	addi	r15 r0 1
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21594
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21592
L_else_21594 : 
	addi	r12 r0 2
	call	L_read_net_item_2043
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21592 : 
	add	r1 r4 r19
	sti	r16 r1 0
	add	r19 r0 r4
L_cont_21577 : 
	ldi	r5 r19 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21582
	addi	r4 r20 1
	add	r5 r0 r19
	call	min_caml_create_array
	jump	L_cont_21580
L_else_21582 : 
	addi	r16 r20 1
	addi	r15 r0 0
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21585
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r15 r0 r4
	jump	L_cont_21583
L_else_21585 : 
	addi	r12 r0 1
	call	L_read_net_item_2043
	add	r1 r4 r15
	sti	r14 r1 0
	add	r15 r0 r4
L_cont_21583 : 
	ldi	r5 r15 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21588
	addi	r4 r16 1
	add	r5 r0 r15
	call	min_caml_create_array
	jump	L_cont_21586
L_else_21588 : 
	addi	r14 r16 1
	addi	r12 r0 0
	call	L_read_net_item_2043
	add	r5 r0 r4
	ldi	r6 r5 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_21591
	addi	r4 r14 1
	call	min_caml_create_array
	jump	L_cont_21589
L_else_21591 : 
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
	call	L_read_or_network_2045
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
L_cont_21589 : 
	add	r1 r4 r16
	sti	r15 r1 0
	add	r4 r0 r4
L_cont_21586 : 
	add	r1 r4 r20
	sti	r19 r1 0
	add	r4 r0 r4
L_cont_21580 : 
	add	r1 r4 r18
	sti	r17 r1 0
	add	r4 r0 r4
	return
L_read_and_network_2047 : 
	addi	r20 r0 0
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21604
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_21602
L_else_21604 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21624
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21622
L_else_21624 : 
	addi	r15 r0 2
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21627
	addi	r4 r0 3
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21625
L_else_21627 : 
	addi	r12 r0 3
	call	L_read_net_item_2043
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21625 : 
	add	r1 r4 r17
	sti	r16 r1 0
	add	r4 r0 r4
L_cont_21622 : 
	add	r1 r4 r20
	sti	r18 r1 0
	add	r6 r0 r4
L_cont_21602 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21606
	return
L_else_21606 : 
	addi	r4 r0 1083
	add	r1 r4 r19
	sti	r6 r1 0
	addi	r18 r19 1
	addi	r16 r0 0
	call	min_caml_read_int
	add	r17 r0 r4
	addi	r4 r0 -1
	bne	r17 r4 L_else_21609
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_21607
L_else_21609 : 
	addi	r15 r0 1
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21621
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21619
L_else_21621 : 
	addi	r12 r0 2
	call	L_read_net_item_2043
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21619 : 
	add	r1 r4 r16
	sti	r17 r1 0
	add	r6 r0 r4
L_cont_21607 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21611
	return
L_else_21611 : 
	addi	r4 r0 1083
	add	r1 r4 r18
	sti	r6 r1 0
	addi	r16 r18 1
	addi	r15 r0 0
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21614
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_21612
L_else_21614 : 
	addi	r12 r0 1
	call	L_read_net_item_2043
	add	r1 r4 r15
	sti	r14 r1 0
	add	r6 r0 r4
L_cont_21612 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21616
	return
L_else_21616 : 
	addi	r4 r0 1083
	add	r1 r4 r16
	sti	r6 r1 0
	addi	r14 r16 1
	addi	r12 r0 0
	call	L_read_net_item_2043
	add	r5 r0 r4
	ldi	r6 r5 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_21618
	return
L_else_21618 : 
	addi	r4 r0 1083
	add	r1 r4 r14
	sti	r5 r1 0
	addi	r4 r14 1
	add	r19 r0 r4
	jump	L_read_and_network_2047
L_solver_rect_surface_2051 : 
	add	r1 r6 r7
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21631
	addi	r5 r0 1
	jump	L_cont_21629
L_else_21631 : 
	addi	r5 r0 0
L_cont_21629 : 
	bne	r5 r0 L_else_21633
	ldi	r5 r4 4
	ldi	r9 r4 6
	add	r1 r6 r7
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21636
	addi	r4 r0 0
	jump	L_cont_21634
L_else_21636 : 
	addi	r4 r0 1
L_cont_21634 : 
	xor	r4 r9 r4
	add	r1 r5 r7
	fldi	f2 r1 0
	bne	r4 r0 L_else_21639
	fsub	f2 f0 f2
	jump	L_cont_21637
L_else_21639 : 
	fadd	f2 f0 f2
L_cont_21637 : 
	fsub	f4 f2 f4
	add	r1 r6 r7
	fldi	f2 r1 0
	fdiv	f4 f4 f2
	add	r1 r6 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_21642
	fadd	f2 f0 f2
	jump	L_cont_21640
L_else_21642 : 
	fsub	f2 f0 f2
L_cont_21640 : 
	add	r1 r5 r8
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21645
	addi	r4 r0 0
	jump	L_cont_21643
L_else_21645 : 
	addi	r4 r0 1
L_cont_21643 : 
	bne	r4 r0 L_else_21647
	addi	r4 r0 0
	return
L_else_21647 : 
	add	r1 r6 r10
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21650
	fadd	f2 f0 f2
	jump	L_cont_21648
L_else_21650 : 
	fsub	f2 f0 f2
L_cont_21648 : 
	add	r1 r5 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21653
	addi	r4 r0 0
	jump	L_cont_21651
L_else_21653 : 
	addi	r4 r0 1
L_cont_21651 : 
	bne	r4 r0 L_else_21655
	addi	r4 r0 0
	return
L_else_21655 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	return
L_else_21633 : 
	addi	r4 r0 0
	return
L_solver_rect_2060 : 
	addi	r9 r0 0
	addi	r7 r0 1
	addi	r8 r0 2
	add	r1 r10 r9
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21659
	addi	r4 r0 1
	jump	L_cont_21657
L_else_21659 : 
	addi	r4 r0 0
L_cont_21657 : 
	bne	r4 r0 L_else_21662
	ldi	r5 r11 4
	ldi	r6 r11 6
	add	r1 r10 r9
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21727
	addi	r4 r0 0
	jump	L_cont_21725
L_else_21727 : 
	addi	r4 r0 1
L_cont_21725 : 
	xor	r4 r6 r4
	add	r1 r5 r9
	fldi	f2 r1 0
	bne	r4 r0 L_else_21730
	fsub	f2 f0 f2
	jump	L_cont_21728
L_else_21730 : 
	fadd	f2 f0 f2
L_cont_21728 : 
	fsub	f3 f2 f6
	add	r1 r10 r9
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r10 r7
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21733
	fadd	f2 f0 f2
	jump	L_cont_21731
L_else_21733 : 
	fsub	f2 f0 f2
L_cont_21731 : 
	add	r1 r5 r7
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21736
	addi	r4 r0 0
	jump	L_cont_21734
L_else_21736 : 
	addi	r4 r0 1
L_cont_21734 : 
	bne	r4 r0 L_else_21738
	addi	r4 r0 0
	jump	L_cont_21660
L_else_21738 : 
	add	r1 r10 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21741
	fadd	f3 f0 f2
	jump	L_cont_21739
L_else_21741 : 
	fsub	f3 f0 f2
L_cont_21739 : 
	add	r1 r5 r8
	fldi	f2 r1 0
	fbgt	f2 f3 L_else_21744
	addi	r4 r0 0
	jump	L_cont_21742
L_else_21744 : 
	addi	r4 r0 1
L_cont_21742 : 
	bne	r4 r0 L_else_21746
	addi	r4 r0 0
	jump	L_cont_21660
L_else_21746 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21660
L_else_21662 : 
	addi	r4 r0 0
L_cont_21660 : 
	bne	r4 r0 L_else_21664
	addi	r6 r0 1
	addi	r9 r0 2
	addi	r5 r0 0
	add	r1 r10 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21667
	addi	r4 r0 1
	jump	L_cont_21665
L_else_21667 : 
	addi	r4 r0 0
L_cont_21665 : 
	bne	r4 r0 L_else_21670
	ldi	r8 r11 4
	ldi	r4 r11 6
	add	r1 r10 r6
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21705
	addi	r7 r0 0
	jump	L_cont_21703
L_else_21705 : 
	addi	r7 r0 1
L_cont_21703 : 
	xor	r4 r4 r7
	add	r1 r8 r6
	fldi	f2 r1 0
	bne	r4 r0 L_else_21708
	fsub	f2 f0 f2
	jump	L_cont_21706
L_else_21708 : 
	fadd	f2 f0 f2
L_cont_21706 : 
	fsub	f2 f2 f5
	add	r1 r10 r6
	fldi	f3 r1 0
	fdiv	f4 f2 f3
	add	r1 r10 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21711
	fadd	f3 f0 f2
	jump	L_cont_21709
L_else_21711 : 
	fsub	f3 f0 f2
L_cont_21709 : 
	add	r1 r8 r9
	fldi	f2 r1 0
	fbgt	f2 f3 L_else_21714
	addi	r4 r0 0
	jump	L_cont_21712
L_else_21714 : 
	addi	r4 r0 1
L_cont_21712 : 
	bne	r4 r0 L_else_21716
	addi	r4 r0 0
	jump	L_cont_21668
L_else_21716 : 
	add	r1 r10 r5
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21719
	fadd	f2 f0 f2
	jump	L_cont_21717
L_else_21719 : 
	fsub	f2 f0 f2
L_cont_21717 : 
	add	r1 r8 r5
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21722
	addi	r4 r0 0
	jump	L_cont_21720
L_else_21722 : 
	addi	r4 r0 1
L_cont_21720 : 
	bne	r4 r0 L_else_21724
	addi	r4 r0 0
	jump	L_cont_21668
L_else_21724 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21668
L_else_21670 : 
	addi	r4 r0 0
L_cont_21668 : 
	bne	r4 r0 L_else_21672
	addi	r9 r0 2
	addi	r6 r0 0
	addi	r8 r0 1
	add	r1 r10 r9
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21675
	addi	r4 r0 1
	jump	L_cont_21673
L_else_21675 : 
	addi	r4 r0 0
L_cont_21673 : 
	bne	r4 r0 L_else_21678
	ldi	r7 r11 4
	ldi	r4 r11 6
	add	r1 r10 r9
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21683
	addi	r5 r0 0
	jump	L_cont_21681
L_else_21683 : 
	addi	r5 r0 1
L_cont_21681 : 
	xor	r4 r4 r5
	add	r1 r7 r9
	fldi	f2 r1 0
	bne	r4 r0 L_else_21686
	fsub	f2 f0 f2
	jump	L_cont_21684
L_else_21686 : 
	fadd	f2 f0 f2
L_cont_21684 : 
	fsub	f2 f2 f7
	add	r1 r10 r9
	fldi	f3 r1 0
	fdiv	f4 f2 f3
	add	r1 r10 r6
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21689
	fadd	f3 f0 f2
	jump	L_cont_21687
L_else_21689 : 
	fsub	f3 f0 f2
L_cont_21687 : 
	add	r1 r7 r6
	fldi	f2 r1 0
	fbgt	f2 f3 L_else_21692
	addi	r4 r0 0
	jump	L_cont_21690
L_else_21692 : 
	addi	r4 r0 1
L_cont_21690 : 
	bne	r4 r0 L_else_21694
	addi	r4 r0 0
	jump	L_cont_21676
L_else_21694 : 
	add	r1 r10 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21697
	fadd	f2 f0 f2
	jump	L_cont_21695
L_else_21697 : 
	fsub	f2 f0 f2
L_cont_21695 : 
	add	r1 r7 r8
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21700
	addi	r4 r0 0
	jump	L_cont_21698
L_else_21700 : 
	addi	r4 r0 1
L_cont_21698 : 
	bne	r4 r0 L_else_21702
	addi	r4 r0 0
	jump	L_cont_21676
L_else_21702 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21676
L_else_21678 : 
	addi	r4 r0 0
L_cont_21676 : 
	bne	r4 r0 L_else_21680
	addi	r4 r0 0
	return
L_else_21680 : 
	addi	r4 r0 3
	return
L_else_21672 : 
	addi	r4 r0 2
	return
L_else_21664 : 
	addi	r4 r0 1
	return
L_solver_second_2085 : 
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
	bne	r4 r0 L_else_21750
	fadd	f7 f0 f4
	jump	L_cont_21748
L_else_21750 : 
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
	fadd	f7 f4 f2
L_cont_21748 : 
	fbne	f7 f0 L_else_21753
	addi	r4 r0 1
	jump	L_cont_21751
L_else_21753 : 
	addi	r4 r0 0
L_cont_21751 : 
	bne	r4 r0 L_else_21755
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
	fadd	f8 f3 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21758
	fadd	f8 f0 f8
	jump	L_cont_21756
L_else_21758 : 
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
	fldi	f3 r0 27
	fdiv	f2 f2 f3
	fadd	f8 f8 f2
L_cont_21756 : 
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
	bne	r4 r0 L_else_21761
	fadd	f3 f0 f4
	jump	L_cont_21759
L_else_21761 : 
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
L_cont_21759 : 
	ldi	r4 r6 1
	addi	r5 r0 3
	bne	r4 r5 L_else_21764
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_21762
L_else_21764 : 
	fadd	f2 f0 f3
L_cont_21762 : 
	fmul	f3 f8 f8
	fmul	f2 f7 f2
	fsub	f6 f3 f2
	fbgt	f6 f0 L_else_21767
	addi	r4 r0 0
	jump	L_cont_21765
L_else_21767 : 
	addi	r4 r0 1
L_cont_21765 : 
	bne	r4 r0 L_else_21769
	addi	r4 r0 0
	return
L_else_21769 : 
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_21772
	fldi	f4 r0 20
	jump	L_cont_21770
L_else_21772 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_21770 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f4 f2 f3
	addi	r4 r0 13
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f2 f6 f2
	ldi	r4 r6 6
	bne	r4 r0 L_else_21775
	fsub	f2 f0 f2
	jump	L_cont_21773
L_else_21775 : 
	fadd	f2 f0 f2
L_cont_21773 : 
	fsub	f2 f2 f8
	fdiv	f2 f2 f7
	fsti	f2 r0 1073
	addi	r4 r0 1
	return
L_else_21755 : 
	addi	r4 r0 0
	return
L_solver_rect_fast_2095 : 
	fldi	f2 r6 0
	fsub	f3 f2 f6
	fldi	f2 r6 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21779
	fadd	f3 f0 f2
	jump	L_cont_21777
L_else_21779 : 
	fsub	f3 f0 f2
L_cont_21777 : 
	ldi	r4 r8 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_21782
	addi	r4 r0 0
	jump	L_cont_21780
L_else_21782 : 
	addi	r4 r0 1
L_cont_21780 : 
	bne	r4 r0 L_else_21785
	addi	r4 r0 0
	jump	L_cont_21783
L_else_21785 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21834
	fadd	f3 f0 f2
	jump	L_cont_21832
L_else_21834 : 
	fsub	f3 f0 f2
L_cont_21832 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_21837
	addi	r4 r0 0
	jump	L_cont_21835
L_else_21837 : 
	addi	r4 r0 1
L_cont_21835 : 
	bne	r4 r0 L_else_21839
	addi	r4 r0 0
	jump	L_cont_21783
L_else_21839 : 
	addi	r5 r0 1
	fldi	f2 r6 1
	fbne	f2 f0 L_else_21842
	addi	r4 r0 1
	jump	L_cont_21840
L_else_21842 : 
	addi	r4 r0 0
L_cont_21840 : 
	sub	r4 r5 r4
L_cont_21783 : 
	bne	r4 r0 L_else_21787
	fldi	f2 r6 2
	fsub	f3 f2 f5
	fldi	f2 r6 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21790
	fadd	f3 f0 f2
	jump	L_cont_21788
L_else_21790 : 
	fsub	f3 f0 f2
L_cont_21788 : 
	ldi	r4 r8 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_21793
	addi	r4 r0 0
	jump	L_cont_21791
L_else_21793 : 
	addi	r4 r0 1
L_cont_21791 : 
	bne	r4 r0 L_else_21796
	addi	r4 r0 0
	jump	L_cont_21794
L_else_21796 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21823
	fadd	f3 f0 f2
	jump	L_cont_21821
L_else_21823 : 
	fsub	f3 f0 f2
L_cont_21821 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_21826
	addi	r4 r0 0
	jump	L_cont_21824
L_else_21826 : 
	addi	r4 r0 1
L_cont_21824 : 
	bne	r4 r0 L_else_21828
	addi	r4 r0 0
	jump	L_cont_21794
L_else_21828 : 
	addi	r5 r0 1
	fldi	f2 r6 3
	fbne	f2 f0 L_else_21831
	addi	r4 r0 1
	jump	L_cont_21829
L_else_21831 : 
	addi	r4 r0 0
L_cont_21829 : 
	sub	r4 r5 r4
L_cont_21794 : 
	bne	r4 r0 L_else_21798
	fldi	f2 r6 4
	fsub	f3 f2 f7
	fldi	f2 r6 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21801
	fadd	f2 f0 f2
	jump	L_cont_21799
L_else_21801 : 
	fsub	f2 f0 f2
L_cont_21799 : 
	ldi	r4 r8 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_21804
	addi	r4 r0 0
	jump	L_cont_21802
L_else_21804 : 
	addi	r4 r0 1
L_cont_21802 : 
	bne	r4 r0 L_else_21807
	addi	r4 r0 0
	jump	L_cont_21805
L_else_21807 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21812
	fadd	f2 f0 f2
	jump	L_cont_21810
L_else_21812 : 
	fsub	f2 f0 f2
L_cont_21810 : 
	ldi	r4 r8 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_21815
	addi	r4 r0 0
	jump	L_cont_21813
L_else_21815 : 
	addi	r4 r0 1
L_cont_21813 : 
	bne	r4 r0 L_else_21817
	addi	r4 r0 0
	jump	L_cont_21805
L_else_21817 : 
	addi	r4 r0 1
	fldi	f2 r6 5
	fbne	f2 f0 L_else_21820
	addi	r5 r0 1
	jump	L_cont_21818
L_else_21820 : 
	addi	r5 r0 0
L_cont_21818 : 
	sub	r4 r4 r5
L_cont_21805 : 
	bne	r4 r0 L_else_21809
	addi	r4 r0 0
	return
L_else_21809 : 
	fsti	f4 r0 1073
	addi	r4 r0 3
	return
L_else_21798 : 
	fsti	f4 r0 1073
	addi	r4 r0 2
	return
L_else_21787 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	return
L_solver_second_fast_2108 : 
	fldi	f5 r6 0
	fbne	f5 f0 L_else_21846
	addi	r4 r0 1
	jump	L_cont_21844
L_else_21846 : 
	addi	r4 r0 0
L_cont_21844 : 
	bne	r4 r0 L_else_21848
	fldi	f2 r6 1
	fmul	f3 f2 f9
	fldi	f2 r6 2
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f6 f3 f2
	fmul	f3 f9 f9
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f8 f8
	ldi	r4 r7 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f7
	ldi	r4 r7 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	ldi	r4 r7 3
	bne	r4 r0 L_else_21851
	fadd	f3 f0 f4
	jump	L_cont_21849
L_else_21851 : 
	fmul	f3 f8 f7
	ldi	r4 r7 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fmul	f3 f7 f9
	ldi	r4 r7 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f8
	ldi	r4 r7 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
L_cont_21849 : 
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_21854
	fldi	f2 r0 20
	fsub	f3 f3 f2
	jump	L_cont_21852
L_else_21854 : 
	fadd	f3 f0 f3
L_cont_21852 : 
	fmul	f2 f6 f6
	fmul	f3 f5 f3
	fsub	f7 f2 f3
	fbgt	f7 f0 L_else_21857
	addi	r4 r0 0
	jump	L_cont_21855
L_else_21857 : 
	addi	r4 r0 1
L_cont_21855 : 
	bne	r4 r0 L_else_21859
	addi	r4 r0 0
	return
L_else_21859 : 
	ldi	r4 r7 6
	bne	r4 r0 L_else_21862
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_21865
	fldi	f4 r0 20
	jump	L_cont_21863
L_else_21865 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_21863 : 
	fldi	f3 r0 26
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	fldi	f3 r0 26
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f4 f2 f3
	addi	r4 r0 13
	fadd	f5 f0 f7
	call	L_isqrt_1890
	fmul	f2 f7 f2
	fsub	f2 f6 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_21860
L_else_21862 : 
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_21868
	fldi	f4 r0 20
	jump	L_cont_21866
L_else_21868 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_21866 : 
	fldi	f3 r0 26
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	fldi	f4 r0 26
	fmul	f2 f7 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 13
	fadd	f5 f0 f7
	call	L_isqrt_1890
	fmul	f2 f7 f2
	fadd	f3 f6 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_21860 : 
	addi	r4 r0 1
	return
L_else_21848 : 
	addi	r4 r0 0
	return
L_solver_fast_2114 : 
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
	bne	r5 r4 L_else_21871
	ldi	r7 r7 0
	fadd	f5 f0 f6
	fadd	f7 f0 f9
	fadd	f6 f0 f8
	jump	L_solver_rect_fast_2095
L_else_21871 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21873
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_21876
	addi	r4 r0 0
	jump	L_cont_21874
L_else_21876 : 
	addi	r4 r0 1
L_cont_21874 : 
	bne	r4 r0 L_else_21878
	addi	r4 r0 0
	return
L_else_21878 : 
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
L_else_21873 : 
	fldi	f5 r6 0
	fbne	f5 f0 L_else_21881
	addi	r4 r0 1
	jump	L_cont_21879
L_else_21881 : 
	addi	r4 r0 0
L_cont_21879 : 
	bne	r4 r0 L_else_21883
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
	bne	r4 r0 L_else_21886
	fadd	f3 f0 f4
	jump	L_cont_21884
L_else_21886 : 
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
L_cont_21884 : 
	ldi	r4 r8 1
	addi	r5 r0 3
	bne	r4 r5 L_else_21889
	fldi	f2 r0 20
	fsub	f3 f3 f2
	jump	L_cont_21887
L_else_21889 : 
	fadd	f3 f0 f3
L_cont_21887 : 
	fmul	f2 f7 f7
	fmul	f3 f5 f3
	fsub	f6 f2 f3
	fbgt	f6 f0 L_else_21892
	addi	r4 r0 0
	jump	L_cont_21890
L_else_21892 : 
	addi	r4 r0 1
L_cont_21890 : 
	bne	r4 r0 L_else_21894
	addi	r4 r0 0
	return
L_else_21894 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_21897
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_21900
	fldi	f4 r0 20
	jump	L_cont_21898
L_else_21900 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_21898 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 14
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f2 f6 f2
	fsub	f3 f7 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_21895
L_else_21897 : 
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_21903
	fldi	f4 r0 20
	jump	L_cont_21901
L_else_21903 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_21901 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 14
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f2 f6 f2
	fadd	f2 f7 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_21895 : 
	addi	r4 r0 1
	return
L_else_21883 : 
	addi	r4 r0 0
	return
L_solver_second_fast2_2125 : 
	fldi	f7 r5 0
	fbne	f7 f0 L_else_21907
	addi	r7 r0 1
	jump	L_cont_21905
L_else_21907 : 
	addi	r7 r0 0
L_cont_21905 : 
	bne	r7 r0 L_else_21909
	fldi	f2 r5 1
	fmul	f5 f2 f5
	fldi	f2 r5 2
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r5 3
	fmul	f2 f2 f4
	fadd	f6 f3 f2
	fldi	f2 r4 3
	fmul	f3 f6 f6
	fmul	f2 f7 f2
	fsub	f7 f3 f2
	fbgt	f7 f0 L_else_21912
	addi	r4 r0 0
	jump	L_cont_21910
L_else_21912 : 
	addi	r4 r0 1
L_cont_21910 : 
	bne	r4 r0 L_else_21914
	addi	r4 r0 0
	return
L_else_21914 : 
	ldi	r4 r6 6
	bne	r4 r0 L_else_21917
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_21920
	fldi	f4 r0 20
	jump	L_cont_21918
L_else_21920 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_21918 : 
	fldi	f3 r0 26
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	fldi	f4 r0 26
	fmul	f2 f7 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 13
	fadd	f5 f0 f7
	call	L_isqrt_1890
	fmul	f2 f7 f2
	fsub	f3 f6 f2
	fldi	f2 r5 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_21915
L_else_21917 : 
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_21923
	fldi	f4 r0 20
	jump	L_cont_21921
L_else_21923 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_21921 : 
	fldi	f3 r0 26
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	fldi	f3 r0 26
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f4 f2 f3
	addi	r4 r0 13
	fadd	f5 f0 f7
	call	L_isqrt_1890
	fmul	f2 f7 f2
	fadd	f2 f6 f2
	fldi	f3 r5 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_21915 : 
	addi	r4 r0 1
	return
L_else_21909 : 
	addi	r4 r0 0
	return
L_solver_fast2_2132 : 
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
	bne	r5 r4 L_else_21926
	ldi	r7 r7 0
	jump	L_solver_rect_fast_2095
L_else_21926 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21928
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_21931
	addi	r4 r0 0
	jump	L_cont_21929
L_else_21931 : 
	addi	r4 r0 1
L_cont_21929 : 
	bne	r4 r0 L_else_21933
	addi	r4 r0 0
	return
L_else_21933 : 
	fldi	f2 r6 0
	fldi	f3 r9 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r4 r0 1
	return
L_else_21928 : 
	fldi	f4 r6 0
	fbne	f4 f0 L_else_21936
	addi	r4 r0 1
	jump	L_cont_21934
L_else_21936 : 
	addi	r4 r0 0
L_cont_21934 : 
	bne	r4 r0 L_else_21938
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
	fsub	f6 f3 f2
	fbgt	f6 f0 L_else_21941
	addi	r4 r0 0
	jump	L_cont_21939
L_else_21941 : 
	addi	r4 r0 1
L_cont_21939 : 
	bne	r4 r0 L_else_21943
	addi	r4 r0 0
	return
L_else_21943 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_21946
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_21949
	fldi	f4 r0 20
	jump	L_cont_21947
L_else_21949 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_21947 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f4 f2 f3
	addi	r4 r0 14
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f2 f6 f2
	fsub	f2 f7 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_21944
L_else_21946 : 
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_21952
	fldi	f4 r0 20
	jump	L_cont_21950
L_else_21952 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_21950 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f4 f2 f3
	addi	r4 r0 14
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f2 f6 f2
	fadd	f2 f7 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_21944 : 
	addi	r4 r0 1
	return
L_else_21938 : 
	addi	r4 r0 0
	return
L_setup_rect_table_2135 : 
	addi	r4 r0 6
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r7 r0 r4
	fldi	f2 r8 0
	fbne	f2 f0 L_else_21956
	addi	r4 r0 1
	jump	L_cont_21954
L_else_21956 : 
	addi	r4 r0 0
L_cont_21954 : 
	bne	r4 r0 L_else_21959
	ldi	r5 r6 6
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_21986
	addi	r4 r0 0
	jump	L_cont_21984
L_else_21986 : 
	addi	r4 r0 1
L_cont_21984 : 
	xor	r5 r5 r4
	ldi	r4 r6 4
	fldi	f2 r4 0
	bne	r5 r0 L_else_21989
	fsub	f2 f0 f2
	jump	L_cont_21987
L_else_21989 : 
	fadd	f2 f0 f2
L_cont_21987 : 
	fsti	f2 r7 0
	fldi	f2 r0 20
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	fsti	f2 r7 1
	jump	L_cont_21957
L_else_21959 : 
	fldi	f2 r0 29
	fsti	f2 r7 1
L_cont_21957 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_21962
	addi	r4 r0 1
	jump	L_cont_21960
L_else_21962 : 
	addi	r4 r0 0
L_cont_21960 : 
	bne	r4 r0 L_else_21965
	ldi	r4 r6 6
	fldi	f2 r8 1
	fbgt	f0 f2 L_else_21980
	addi	r5 r0 0
	jump	L_cont_21978
L_else_21980 : 
	addi	r5 r0 1
L_cont_21978 : 
	xor	r4 r4 r5
	ldi	r5 r6 4
	fldi	f2 r5 1
	bne	r4 r0 L_else_21983
	fsub	f2 f0 f2
	jump	L_cont_21981
L_else_21983 : 
	fadd	f2 f0 f2
L_cont_21981 : 
	fsti	f2 r7 2
	fldi	f3 r0 20
	fldi	f2 r8 1
	fdiv	f2 f3 f2
	fsti	f2 r7 3
	jump	L_cont_21963
L_else_21965 : 
	fldi	f2 r0 29
	fsti	f2 r7 3
L_cont_21963 : 
	fldi	f2 r8 2
	fbne	f2 f0 L_else_21968
	addi	r4 r0 1
	jump	L_cont_21966
L_else_21968 : 
	addi	r4 r0 0
L_cont_21966 : 
	bne	r4 r0 L_else_21971
	ldi	r5 r6 6
	fldi	f2 r8 2
	fbgt	f0 f2 L_else_21974
	addi	r4 r0 0
	jump	L_cont_21972
L_else_21974 : 
	addi	r4 r0 1
L_cont_21972 : 
	xor	r5 r5 r4
	ldi	r4 r6 4
	fldi	f2 r4 2
	bne	r5 r0 L_else_21977
	fsub	f2 f0 f2
	jump	L_cont_21975
L_else_21977 : 
	fadd	f2 f0 f2
L_cont_21975 : 
	fsti	f2 r7 4
	fldi	f3 r0 20
	fldi	f2 r8 2
	fdiv	f2 f3 f2
	fsti	f2 r7 5
	jump	L_cont_21969
L_else_21971 : 
	fldi	f2 r0 29
	fsti	f2 r7 5
L_cont_21969 : 
	add	r4 r0 r7
	return
L_setup_surface_table_2138 : 
	addi	r4 r0 4
	fldi	f2 r0 29
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
	fbgt	f3 f0 L_else_21993
	addi	r4 r0 0
	jump	L_cont_21991
L_else_21993 : 
	addi	r4 r0 1
L_cont_21991 : 
	bne	r4 r0 L_else_21996
	fldi	f2 r0 29
	fsti	f2 r5 0
	jump	L_cont_21994
L_else_21996 : 
	fldi	f2 r0 28
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
L_cont_21994 : 
	add	r4 r0 r5
	return
L_setup_second_table_2141 : 
	addi	r4 r0 5
	fldi	f2 r0 29
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
	bne	r4 r0 L_else_22000
	fadd	f6 f0 f4
	jump	L_cont_21998
L_else_22000 : 
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
L_cont_21998 : 
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
	bne	r4 r0 L_else_22003
	fsti	f7 r5 1
	fsti	f8 r5 2
	fsti	f5 r5 3
	jump	L_cont_22001
L_else_22003 : 
	fldi	f3 r8 2
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f4 f3 f2
	fldi	f3 r8 1
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fldi	f3 r0 27
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
	fldi	f2 r0 27
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
	fldi	f3 r0 27
	fdiv	f2 f2 f3
	fsub	f2 f5 f2
	fsti	f2 r5 3
L_cont_22001 : 
	fbne	f6 f0 L_else_22006
	addi	r4 r0 1
	jump	L_cont_22004
L_else_22006 : 
	addi	r4 r0 0
L_cont_22004 : 
	bne	r4 r0 L_else_22009
	fldi	f2 r0 20
	fdiv	f2 f2 f6
	fsti	f2 r5 4
	jump	L_cont_22007
L_else_22009 : 
L_cont_22007 : 
	add	r4 r0 r5
	return
L_iter_setup_dirvec_constants_2144 : 
	bgt	r0 r8 L_else_22012
	addi	r4 r0 1970
	add	r1 r4 r8
	ldi	r9 r1 0
	ldi	r6 r11 1
	ldi	r10 r11 0
	ldi	r5 r9 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22015
	addi	r4 r0 6
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r7 r0 r4
	fldi	f2 r10 0
	fbne	f2 f0 L_else_22025
	addi	r4 r0 1
	jump	L_cont_22023
L_else_22025 : 
	addi	r4 r0 0
L_cont_22023 : 
	bne	r4 r0 L_else_22028
	ldi	r4 r9 6
	fldi	f2 r10 0
	fbgt	f0 f2 L_else_22055
	addi	r5 r0 0
	jump	L_cont_22053
L_else_22055 : 
	addi	r5 r0 1
L_cont_22053 : 
	xor	r4 r4 r5
	ldi	r5 r9 4
	fldi	f2 r5 0
	bne	r4 r0 L_else_22058
	fsub	f2 f0 f2
	jump	L_cont_22056
L_else_22058 : 
	fadd	f2 f0 f2
L_cont_22056 : 
	fsti	f2 r7 0
	fldi	f3 r0 20
	fldi	f2 r10 0
	fdiv	f2 f3 f2
	fsti	f2 r7 1
	jump	L_cont_22026
L_else_22028 : 
	fldi	f2 r0 29
	fsti	f2 r7 1
L_cont_22026 : 
	fldi	f2 r10 1
	fbne	f2 f0 L_else_22031
	addi	r4 r0 1
	jump	L_cont_22029
L_else_22031 : 
	addi	r4 r0 0
L_cont_22029 : 
	bne	r4 r0 L_else_22034
	ldi	r5 r9 6
	fldi	f2 r10 1
	fbgt	f0 f2 L_else_22049
	addi	r4 r0 0
	jump	L_cont_22047
L_else_22049 : 
	addi	r4 r0 1
L_cont_22047 : 
	xor	r5 r5 r4
	ldi	r4 r9 4
	fldi	f2 r4 1
	bne	r5 r0 L_else_22052
	fsub	f2 f0 f2
	jump	L_cont_22050
L_else_22052 : 
	fadd	f2 f0 f2
L_cont_22050 : 
	fsti	f2 r7 2
	fldi	f3 r0 20
	fldi	f2 r10 1
	fdiv	f2 f3 f2
	fsti	f2 r7 3
	jump	L_cont_22032
L_else_22034 : 
	fldi	f2 r0 29
	fsti	f2 r7 3
L_cont_22032 : 
	fldi	f2 r10 2
	fbne	f2 f0 L_else_22037
	addi	r4 r0 1
	jump	L_cont_22035
L_else_22037 : 
	addi	r4 r0 0
L_cont_22035 : 
	bne	r4 r0 L_else_22040
	ldi	r4 r9 6
	fldi	f2 r10 2
	fbgt	f0 f2 L_else_22043
	addi	r5 r0 0
	jump	L_cont_22041
L_else_22043 : 
	addi	r5 r0 1
L_cont_22041 : 
	xor	r4 r4 r5
	ldi	r5 r9 4
	fldi	f2 r5 2
	bne	r4 r0 L_else_22046
	fsub	f2 f0 f2
	jump	L_cont_22044
L_else_22046 : 
	fadd	f2 f0 f2
L_cont_22044 : 
	fsti	f2 r7 4
	fldi	f2 r0 20
	fldi	f3 r10 2
	fdiv	f2 f2 f3
	fsti	f2 r7 5
	jump	L_cont_22038
L_else_22040 : 
	fldi	f2 r0 29
	fsti	f2 r7 5
L_cont_22038 : 
	add	r1 r6 r8
	sti	r7 r1 0
	jump	L_cont_22013
L_else_22015 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22060
	addi	r4 r0 4
	fldi	f2 r0 29
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
	fbgt	f3 f0 L_else_22063
	addi	r4 r0 0
	jump	L_cont_22061
L_else_22063 : 
	addi	r4 r0 1
L_cont_22061 : 
	bne	r4 r0 L_else_22066
	fldi	f2 r0 29
	fsti	f2 r5 0
	jump	L_cont_22064
L_else_22066 : 
	fldi	f2 r0 28
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
L_cont_22064 : 
	add	r1 r6 r8
	sti	r5 r1 0
	jump	L_cont_22013
L_else_22060 : 
	addi	r4 r0 5
	fldi	f2 r0 29
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
	bne	r4 r0 L_else_22069
	fadd	f6 f0 f4
	jump	L_cont_22067
L_else_22069 : 
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
L_cont_22067 : 
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
	bne	r4 r0 L_else_22072
	fsti	f4 r5 1
	fsti	f8 r5 2
	fsti	f5 r5 3
	jump	L_cont_22070
L_else_22072 : 
	fldi	f3 r10 2
	ldi	r4 r9 9
	fldi	f2 r4 1
	fmul	f7 f3 f2
	fldi	f3 r10 1
	ldi	r4 r9 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f7 f2
	fldi	f3 r0 27
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
	fldi	f2 r0 27
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
	fldi	f3 r0 27
	fdiv	f2 f2 f3
	fsub	f2 f5 f2
	fsti	f2 r5 3
L_cont_22070 : 
	fbne	f6 f0 L_else_22075
	addi	r4 r0 1
	jump	L_cont_22073
L_else_22075 : 
	addi	r4 r0 0
L_cont_22073 : 
	bne	r4 r0 L_else_22078
	fldi	f2 r0 20
	fdiv	f2 f2 f6
	fsti	f2 r5 4
	jump	L_cont_22076
L_else_22078 : 
L_cont_22076 : 
	add	r1 r6 r8
	sti	r5 r1 0
L_cont_22013 : 
	addi	r10 r8 -1
	bgt	r0 r10 L_else_22017
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22020
	call	L_setup_rect_table_2135
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_22018
L_else_22020 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22022
	call	L_setup_surface_table_2138
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_22018
L_else_22022 : 
	call	L_setup_second_table_2141
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_22018 : 
	addi	r4 r10 -1
	add	r8 r0 r4
	jump	L_iter_setup_dirvec_constants_2144
L_else_22017 : 
	return
L_else_22012 : 
	return
L_setup_startp_constants_2149 : 
	bgt	r0 r7 L_else_22081
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
	bne	r5 r4 L_else_22084
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
	jump	L_cont_22082
L_else_22084 : 
	addi	r4 r0 2
	bgt	r5 r4 L_else_22086
	jump	L_cont_22082
L_else_22086 : 
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
	bne	r4 r0 L_else_22089
	fadd	f3 f0 f3
	jump	L_cont_22087
L_else_22089 : 
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
L_cont_22087 : 
	addi	r4 r0 3
	bne	r5 r4 L_else_22092
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_22090
L_else_22092 : 
	fadd	f2 f0 f3
L_cont_22090 : 
	fsti	f2 r8 3
L_cont_22082 : 
	addi	r4 r7 -1
	add	r7 r0 r4
	jump	L_setup_startp_constants_2149
L_else_22081 : 
	return
L_is_second_outside_2164 : 
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
	bne	r4 r0 L_else_22096
	fadd	f3 f0 f4
	jump	L_cont_22094
L_else_22096 : 
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
L_cont_22094 : 
	ldi	r4 r6 1
	addi	r5 r0 3
	bne	r4 r5 L_else_22099
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_22097
L_else_22099 : 
	fadd	f2 f0 f3
L_cont_22097 : 
	addi	r5 r0 1
	ldi	r6 r6 6
	fbgt	f0 f2 L_else_22102
	addi	r4 r0 0
	jump	L_cont_22100
L_else_22102 : 
	addi	r4 r0 1
L_cont_22100 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	return
L_is_outside_2169 : 
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
	bne	r5 r4 L_else_22105
	fbgt	f0 f7 L_else_22108
	fadd	f3 f0 f7
	jump	L_cont_22106
L_else_22108 : 
	fsub	f3 f0 f7
L_cont_22106 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22111
	addi	r4 r0 0
	jump	L_cont_22109
L_else_22111 : 
	addi	r4 r0 1
L_cont_22109 : 
	bne	r4 r0 L_else_22114
	addi	r4 r0 0
	jump	L_cont_22112
L_else_22114 : 
	fbgt	f0 f5 L_else_22119
	fadd	f3 f0 f5
	jump	L_cont_22117
L_else_22119 : 
	fsub	f3 f0 f5
L_cont_22117 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22122
	addi	r4 r0 0
	jump	L_cont_22120
L_else_22122 : 
	addi	r4 r0 1
L_cont_22120 : 
	bne	r4 r0 L_else_22124
	addi	r4 r0 0
	jump	L_cont_22112
L_else_22124 : 
	fbgt	f0 f6 L_else_22127
	fadd	f3 f0 f6
	jump	L_cont_22125
L_else_22127 : 
	fsub	f3 f0 f6
L_cont_22125 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22129
	addi	r4 r0 0
	jump	L_cont_22112
L_else_22129 : 
	addi	r4 r0 1
L_cont_22112 : 
	bne	r4 r0 L_else_22116
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	return
L_else_22116 : 
	ldi	r4 r7 6
	add	r4 r0 r4
	return
L_else_22105 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22131
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
	fbgt	f0 f2 L_else_22134
	addi	r4 r0 0
	jump	L_cont_22132
L_else_22134 : 
	addi	r4 r0 1
L_cont_22132 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	return
L_else_22131 : 
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
	bne	r4 r0 L_else_22137
	fadd	f3 f0 f4
	jump	L_cont_22135
L_else_22137 : 
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
L_cont_22135 : 
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_22140
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_22138
L_else_22140 : 
	fadd	f2 f0 f3
L_cont_22138 : 
	addi	r6 r0 1
	ldi	r4 r7 6
	fbgt	f0 f2 L_else_22143
	addi	r5 r0 0
	jump	L_cont_22141
L_else_22143 : 
	addi	r5 r0 1
L_cont_22141 : 
	xor	r4 r4 r5
	sub	r4 r6 r4
	return
L_check_all_inside_2174 : 
	add	r1 r9 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22146
	addi	r4 r0 1
	return
L_else_22146 : 
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
	bne	r5 r4 L_else_22149
	fbgt	f0 f7 L_else_22198
	fadd	f3 f0 f7
	jump	L_cont_22196
L_else_22198 : 
	fsub	f3 f0 f7
L_cont_22196 : 
	ldi	r4 r8 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22201
	addi	r4 r0 0
	jump	L_cont_22199
L_else_22201 : 
	addi	r4 r0 1
L_cont_22199 : 
	bne	r4 r0 L_else_22204
	addi	r4 r0 0
	jump	L_cont_22202
L_else_22204 : 
	fbgt	f0 f6 L_else_22209
	fadd	f3 f0 f6
	jump	L_cont_22207
L_else_22209 : 
	fsub	f3 f0 f6
L_cont_22207 : 
	ldi	r4 r8 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22212
	addi	r4 r0 0
	jump	L_cont_22210
L_else_22212 : 
	addi	r4 r0 1
L_cont_22210 : 
	bne	r4 r0 L_else_22214
	addi	r4 r0 0
	jump	L_cont_22202
L_else_22214 : 
	fbgt	f0 f5 L_else_22217
	fadd	f3 f0 f5
	jump	L_cont_22215
L_else_22217 : 
	fsub	f3 f0 f5
L_cont_22215 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22219
	addi	r4 r0 0
	jump	L_cont_22202
L_else_22219 : 
	addi	r4 r0 1
L_cont_22202 : 
	bne	r4 r0 L_else_22206
	addi	r5 r0 1
	ldi	r4 r8 6
	sub	r4 r5 r4
	jump	L_cont_22147
L_else_22206 : 
	ldi	r4 r8 6
	add	r4 r0 r4
	jump	L_cont_22147
L_else_22149 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22221
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
	fbgt	f0 f2 L_else_22224
	addi	r4 r0 0
	jump	L_cont_22222
L_else_22224 : 
	addi	r4 r0 1
L_cont_22222 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_22147
L_else_22221 : 
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
	bne	r4 r0 L_else_22227
	fadd	f3 f0 f4
	jump	L_cont_22225
L_else_22227 : 
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
L_cont_22225 : 
	ldi	r4 r8 1
	addi	r5 r0 3
	bne	r4 r5 L_else_22230
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_22228
L_else_22230 : 
	fadd	f2 f0 f3
L_cont_22228 : 
	addi	r6 r0 1
	ldi	r5 r8 6
	fbgt	f0 f2 L_else_22233
	addi	r4 r0 0
	jump	L_cont_22231
L_else_22233 : 
	addi	r4 r0 1
L_cont_22231 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
L_cont_22147 : 
	bne	r4 r0 L_else_22151
	addi	r8 r7 1
	add	r1 r9 r8
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22153
	addi	r4 r0 1
	return
L_else_22153 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2169
	bne	r4 r0 L_else_22155
	addi	r7 r8 1
	add	r1 r9 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22157
	addi	r4 r0 1
	return
L_else_22157 : 
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
	bne	r5 r4 L_else_22160
	fbgt	f0 f5 L_else_22169
	fadd	f3 f0 f5
	jump	L_cont_22167
L_else_22169 : 
	fsub	f3 f0 f5
L_cont_22167 : 
	ldi	r4 r6 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22172
	addi	r4 r0 0
	jump	L_cont_22170
L_else_22172 : 
	addi	r4 r0 1
L_cont_22170 : 
	bne	r4 r0 L_else_22175
	addi	r4 r0 0
	jump	L_cont_22173
L_else_22175 : 
	fbgt	f0 f6 L_else_22180
	fadd	f3 f0 f6
	jump	L_cont_22178
L_else_22180 : 
	fsub	f3 f0 f6
L_cont_22178 : 
	ldi	r4 r6 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22183
	addi	r4 r0 0
	jump	L_cont_22181
L_else_22183 : 
	addi	r4 r0 1
L_cont_22181 : 
	bne	r4 r0 L_else_22185
	addi	r4 r0 0
	jump	L_cont_22173
L_else_22185 : 
	fbgt	f0 f7 L_else_22188
	fadd	f3 f0 f7
	jump	L_cont_22186
L_else_22188 : 
	fsub	f3 f0 f7
L_cont_22186 : 
	ldi	r4 r6 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22190
	addi	r4 r0 0
	jump	L_cont_22173
L_else_22190 : 
	addi	r4 r0 1
L_cont_22173 : 
	bne	r4 r0 L_else_22177
	addi	r5 r0 1
	ldi	r4 r6 6
	sub	r4 r5 r4
	jump	L_cont_22158
L_else_22177 : 
	ldi	r4 r6 6
	add	r4 r0 r4
	jump	L_cont_22158
L_else_22160 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22192
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
	fbgt	f0 f2 L_else_22195
	addi	r4 r0 0
	jump	L_cont_22193
L_else_22195 : 
	addi	r4 r0 1
L_cont_22193 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_22158
L_else_22192 : 
	call	L_is_second_outside_2164
L_cont_22158 : 
	bne	r4 r0 L_else_22162
	addi	r8 r7 1
	add	r1 r9 r8
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22164
	addi	r4 r0 1
	return
L_else_22164 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2169
	bne	r4 r0 L_else_22166
	addi	r4 r8 1
	add	r7 r0 r4
	jump	L_check_all_inside_2174
L_else_22166 : 
	addi	r4 r0 0
	return
L_else_22162 : 
	addi	r4 r0 0
	return
L_else_22155 : 
	addi	r4 r0 0
	return
L_else_22151 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2180 : 
	add	r1 r10 r11
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22236
	addi	r4 r0 0
	return
L_else_22236 : 
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
	bne	r5 r4 L_else_22239
	ldi	r7 r7 0
	call	L_solver_rect_fast_2095
	jump	L_cont_22237
L_else_22239 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22297
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22300
	addi	r4 r0 0
	jump	L_cont_22298
L_else_22300 : 
	addi	r4 r0 1
L_cont_22298 : 
	bne	r4 r0 L_else_22302
	addi	r4 r0 0
	jump	L_cont_22237
L_else_22302 : 
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
	jump	L_cont_22237
L_else_22297 : 
	add	r7 r0 r8
	fadd	f9 f0 f6
	fadd	f8 f0 f5
	call	L_solver_second_fast_2108
L_cont_22237 : 
	fldi	f3 r0 1073
	bne	r4 r0 L_else_22242
	addi	r4 r0 0
	jump	L_cont_22240
L_else_22242 : 
	fldi	f2 r0 31
	fbgt	f2 f3 L_else_22295
	addi	r4 r0 0
	jump	L_cont_22240
L_else_22295 : 
	addi	r4 r0 1
L_cont_22240 : 
	bne	r4 r0 L_else_22244
	addi	r4 r0 1970
	add	r1 r4 r9
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22246
	addi	r4 r0 0
	return
L_else_22246 : 
	addi	r4 r11 1
	add	r11 r0 r4
	jump	L_shadow_check_and_group_2180
L_else_22244 : 
	fldi	f2 r0 32
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
	bne	r5 r4 L_else_22249
	addi	r4 r0 1
	jump	L_cont_22247
L_else_22249 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2169
	bne	r4 r0 L_else_22253
	addi	r4 r0 1
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22255
	addi	r4 r0 1
	jump	L_cont_22247
L_else_22255 : 
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
	bne	r5 r4 L_else_22258
	fbgt	f0 f5 L_else_22267
	fadd	f3 f0 f5
	jump	L_cont_22265
L_else_22267 : 
	fsub	f3 f0 f5
L_cont_22265 : 
	ldi	r4 r6 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22270
	addi	r4 r0 0
	jump	L_cont_22268
L_else_22270 : 
	addi	r4 r0 1
L_cont_22268 : 
	bne	r4 r0 L_else_22273
	addi	r4 r0 0
	jump	L_cont_22271
L_else_22273 : 
	fbgt	f0 f6 L_else_22278
	fadd	f3 f0 f6
	jump	L_cont_22276
L_else_22278 : 
	fsub	f3 f0 f6
L_cont_22276 : 
	ldi	r4 r6 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22281
	addi	r4 r0 0
	jump	L_cont_22279
L_else_22281 : 
	addi	r4 r0 1
L_cont_22279 : 
	bne	r4 r0 L_else_22283
	addi	r4 r0 0
	jump	L_cont_22271
L_else_22283 : 
	fbgt	f0 f7 L_else_22286
	fadd	f3 f0 f7
	jump	L_cont_22284
L_else_22286 : 
	fsub	f3 f0 f7
L_cont_22284 : 
	ldi	r4 r6 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22288
	addi	r4 r0 0
	jump	L_cont_22271
L_else_22288 : 
	addi	r4 r0 1
L_cont_22271 : 
	bne	r4 r0 L_else_22275
	addi	r5 r0 1
	ldi	r4 r6 6
	sub	r4 r5 r4
	jump	L_cont_22256
L_else_22275 : 
	ldi	r4 r6 6
	add	r4 r0 r4
	jump	L_cont_22256
L_else_22258 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22290
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
	fbgt	f0 f2 L_else_22293
	addi	r5 r0 0
	jump	L_cont_22291
L_else_22293 : 
	addi	r5 r0 1
L_cont_22291 : 
	xor	r5 r6 r5
	sub	r4 r4 r5
	jump	L_cont_22256
L_else_22290 : 
	call	L_is_second_outside_2164
L_cont_22256 : 
	bne	r4 r0 L_else_22260
	addi	r4 r0 2
	add	r1 r10 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22262
	addi	r4 r0 1
	jump	L_cont_22247
L_else_22262 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2169
	bne	r4 r0 L_else_22264
	addi	r7 r0 3
	add	r9 r0 r10
	call	L_check_all_inside_2174
	jump	L_cont_22247
L_else_22264 : 
	addi	r4 r0 0
	jump	L_cont_22247
L_else_22260 : 
	addi	r4 r0 0
	jump	L_cont_22247
L_else_22253 : 
	addi	r4 r0 0
L_cont_22247 : 
	bne	r4 r0 L_else_22251
	addi	r4 r11 1
	add	r11 r0 r4
	jump	L_shadow_check_and_group_2180
L_else_22251 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2183 : 
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22305
	addi	r4 r0 0
	return
L_else_22305 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22307
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22309
	addi	r4 r0 0
	return
L_else_22309 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22311
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22313
	addi	r4 r0 0
	return
L_else_22313 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22315
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22317
	addi	r4 r0 0
	return
L_else_22317 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22319
	addi	r4 r12 1
	add	r12 r0 r4
	jump	L_shadow_check_one_or_group_2183
L_else_22319 : 
	addi	r4 r0 1
	return
L_else_22315 : 
	addi	r4 r0 1
	return
L_else_22311 : 
	addi	r4 r0 1
	return
L_else_22307 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2186 : 
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22322
	addi	r4 r0 0
	return
L_else_22322 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22325
	addi	r4 r0 1
	jump	L_cont_22323
L_else_22325 : 
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
	bne	r5 r4 L_else_22417
	ldi	r7 r7 0
	call	L_solver_rect_fast_2095
	jump	L_cont_22415
L_else_22417 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22441
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22444
	addi	r4 r0 0
	jump	L_cont_22442
L_else_22444 : 
	addi	r4 r0 1
L_cont_22442 : 
	bne	r4 r0 L_else_22446
	addi	r4 r0 0
	jump	L_cont_22415
L_else_22446 : 
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
	jump	L_cont_22415
L_else_22441 : 
	add	r7 r0 r8
	fadd	f9 f0 f6
	fadd	f8 f0 f5
	call	L_solver_second_fast_2108
L_cont_22415 : 
	bne	r4 r0 L_else_22419
	addi	r4 r0 0
	jump	L_cont_22323
L_else_22419 : 
	fldi	f2 r0 1073
	fldi	f3 r0 33
	fbgt	f3 f2 L_else_22422
	addi	r4 r0 0
	jump	L_cont_22420
L_else_22422 : 
	addi	r4 r0 1
L_cont_22420 : 
	bne	r4 r0 L_else_22424
	addi	r4 r0 0
	jump	L_cont_22323
L_else_22424 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22427
	addi	r4 r0 0
	jump	L_cont_22425
L_else_22427 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22431
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22433
	addi	r4 r0 0
	jump	L_cont_22425
L_else_22433 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22435
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22437
	addi	r4 r0 0
	jump	L_cont_22425
L_else_22437 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22439
	addi	r12 r0 4
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_22425
L_else_22439 : 
	addi	r4 r0 1
	jump	L_cont_22425
L_else_22435 : 
	addi	r4 r0 1
	jump	L_cont_22425
L_else_22431 : 
	addi	r4 r0 1
L_cont_22425 : 
	bne	r4 r0 L_else_22429
	addi	r4 r0 0
	jump	L_cont_22323
L_else_22429 : 
	addi	r4 r0 1
L_cont_22323 : 
	bne	r4 r0 L_else_22327
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r6 r16 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22329
	addi	r4 r0 0
	return
L_else_22329 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22332
	addi	r4 r0 1
	jump	L_cont_22330
L_else_22332 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2114
	bne	r4 r0 L_else_22347
	addi	r4 r0 0
	jump	L_cont_22330
L_else_22347 : 
	fldi	f2 r0 1073
	fldi	f3 r0 33
	fbgt	f3 f2 L_else_22350
	addi	r4 r0 0
	jump	L_cont_22348
L_else_22350 : 
	addi	r4 r0 1
L_cont_22348 : 
	bne	r4 r0 L_else_22352
	addi	r4 r0 0
	jump	L_cont_22330
L_else_22352 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22355
	addi	r4 r0 0
	jump	L_cont_22353
L_else_22355 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22359
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22361
	addi	r4 r0 0
	jump	L_cont_22353
L_else_22361 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22363
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_22353
L_else_22363 : 
	addi	r4 r0 1
	jump	L_cont_22353
L_else_22359 : 
	addi	r4 r0 1
L_cont_22353 : 
	bne	r4 r0 L_else_22357
	addi	r4 r0 0
	jump	L_cont_22330
L_else_22357 : 
	addi	r4 r0 1
L_cont_22330 : 
	bne	r4 r0 L_else_22334
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2186
L_else_22334 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22337
	addi	r4 r0 0
	jump	L_cont_22335
L_else_22337 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22341
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22343
	addi	r4 r0 0
	jump	L_cont_22335
L_else_22343 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22345
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_22335
L_else_22345 : 
	addi	r4 r0 1
	jump	L_cont_22335
L_else_22341 : 
	addi	r4 r0 1
L_cont_22335 : 
	bne	r4 r0 L_else_22339
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2186
L_else_22339 : 
	addi	r4 r0 1
	return
L_else_22327 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22366
	addi	r4 r0 0
	jump	L_cont_22364
L_else_22366 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22406
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22408
	addi	r4 r0 0
	jump	L_cont_22364
L_else_22408 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22410
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22412
	addi	r4 r0 0
	jump	L_cont_22364
L_else_22412 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22414
	addi	r12 r0 4
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_22364
L_else_22414 : 
	addi	r4 r0 1
	jump	L_cont_22364
L_else_22410 : 
	addi	r4 r0 1
	jump	L_cont_22364
L_else_22406 : 
	addi	r4 r0 1
L_cont_22364 : 
	bne	r4 r0 L_else_22368
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r6 r16 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22370
	addi	r4 r0 0
	return
L_else_22370 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22373
	addi	r4 r0 1
	jump	L_cont_22371
L_else_22373 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2114
	bne	r4 r0 L_else_22388
	addi	r4 r0 0
	jump	L_cont_22371
L_else_22388 : 
	fldi	f3 r0 1073
	fldi	f2 r0 33
	fbgt	f2 f3 L_else_22391
	addi	r4 r0 0
	jump	L_cont_22389
L_else_22391 : 
	addi	r4 r0 1
L_cont_22389 : 
	bne	r4 r0 L_else_22393
	addi	r4 r0 0
	jump	L_cont_22371
L_else_22393 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22396
	addi	r4 r0 0
	jump	L_cont_22394
L_else_22396 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22400
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22402
	addi	r4 r0 0
	jump	L_cont_22394
L_else_22402 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22404
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_22394
L_else_22404 : 
	addi	r4 r0 1
	jump	L_cont_22394
L_else_22400 : 
	addi	r4 r0 1
L_cont_22394 : 
	bne	r4 r0 L_else_22398
	addi	r4 r0 0
	jump	L_cont_22371
L_else_22398 : 
	addi	r4 r0 1
L_cont_22371 : 
	bne	r4 r0 L_else_22375
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2186
L_else_22375 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22378
	addi	r4 r0 0
	jump	L_cont_22376
L_else_22378 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22382
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22384
	addi	r4 r0 0
	jump	L_cont_22376
L_else_22384 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22386
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_22376
L_else_22386 : 
	addi	r4 r0 1
	jump	L_cont_22376
L_else_22382 : 
	addi	r4 r0 1
L_cont_22376 : 
	bne	r4 r0 L_else_22380
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2186
L_else_22380 : 
	addi	r4 r0 1
	return
L_else_22368 : 
	addi	r4 r0 1
	return
L_solve_each_element_2189 : 
	add	r1 r12 r13
	ldi	r15 r1 0
	addi	r4 r0 -1
	bne	r15 r4 L_else_22449
	return
L_else_22449 : 
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
	bne	r5 r4 L_else_22452
	add	r10 r0 r14
	call	L_solver_rect_2060
	add	r10 r0 r4
	jump	L_cont_22450
L_else_22452 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22516
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
	fbgt	f4 f0 L_else_22519
	addi	r5 r0 0
	jump	L_cont_22517
L_else_22519 : 
	addi	r5 r0 1
L_cont_22517 : 
	bne	r5 r0 L_else_22521
	addi	r10 r0 0
	jump	L_cont_22450
L_else_22521 : 
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
	jump	L_cont_22450
L_else_22516 : 
	add	r6 r0 r11
	add	r5 r0 r14
	fadd	f9 f0 f7
	fadd	f1 f0 f5
	fadd	f5 f0 f6
	fadd	f6 f0 f1
	call	L_solver_second_2085
	add	r10 r0 r4
L_cont_22450 : 
	bne	r10 r0 L_else_22454
	addi	r4 r0 1970
	add	r1 r4 r15
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22456
	return
L_else_22456 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_solve_each_element_2189
L_else_22454 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_22459
	addi	r4 r0 0
	jump	L_cont_22457
L_else_22459 : 
	addi	r4 r0 1
L_cont_22457 : 
	bne	r4 r0 L_else_22462
	jump	L_cont_22460
L_else_22462 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22465
	addi	r4 r0 0
	jump	L_cont_22463
L_else_22465 : 
	addi	r4 r0 1
L_cont_22463 : 
	bne	r4 r0 L_else_22467
	jump	L_cont_22460
L_else_22467 : 
	fldi	f2 r0 32
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
	bne	r5 r4 L_else_22470
	addi	r4 r0 1
	jump	L_cont_22468
L_else_22470 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2169
	bne	r4 r0 L_else_22474
	addi	r4 r0 1
	add	r1 r12 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22476
	addi	r4 r0 1
	jump	L_cont_22468
L_else_22476 : 
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
	bne	r5 r4 L_else_22479
	fbgt	f0 f5 L_else_22488
	fadd	f3 f0 f5
	jump	L_cont_22486
L_else_22488 : 
	fsub	f3 f0 f5
L_cont_22486 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22491
	addi	r4 r0 0
	jump	L_cont_22489
L_else_22491 : 
	addi	r4 r0 1
L_cont_22489 : 
	bne	r4 r0 L_else_22494
	addi	r4 r0 0
	jump	L_cont_22492
L_else_22494 : 
	fbgt	f0 f6 L_else_22499
	fadd	f3 f0 f6
	jump	L_cont_22497
L_else_22499 : 
	fsub	f3 f0 f6
L_cont_22497 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22502
	addi	r4 r0 0
	jump	L_cont_22500
L_else_22502 : 
	addi	r4 r0 1
L_cont_22500 : 
	bne	r4 r0 L_else_22504
	addi	r4 r0 0
	jump	L_cont_22492
L_else_22504 : 
	fbgt	f0 f7 L_else_22507
	fadd	f3 f0 f7
	jump	L_cont_22505
L_else_22507 : 
	fsub	f3 f0 f7
L_cont_22505 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22509
	addi	r4 r0 0
	jump	L_cont_22492
L_else_22509 : 
	addi	r4 r0 1
L_cont_22492 : 
	bne	r4 r0 L_else_22496
	addi	r4 r0 1
	ldi	r5 r7 6
	sub	r4 r4 r5
	jump	L_cont_22477
L_else_22496 : 
	ldi	r4 r7 6
	add	r4 r0 r4
	jump	L_cont_22477
L_else_22479 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22511
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
	fbgt	f0 f2 L_else_22514
	addi	r4 r0 0
	jump	L_cont_22512
L_else_22514 : 
	addi	r4 r0 1
L_cont_22512 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	jump	L_cont_22477
L_else_22511 : 
	add	r6 r0 r7
	call	L_is_second_outside_2164
L_cont_22477 : 
	bne	r4 r0 L_else_22481
	addi	r4 r0 2
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22483
	addi	r4 r0 1
	jump	L_cont_22468
L_else_22483 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2169
	bne	r4 r0 L_else_22485
	addi	r7 r0 3
	add	r9 r0 r12
	fadd	f8 f0 f14
	fadd	f10 f0 f12
	fadd	f9 f0 f11
	call	L_check_all_inside_2174
	jump	L_cont_22468
L_else_22485 : 
	addi	r4 r0 0
	jump	L_cont_22468
L_else_22481 : 
	addi	r4 r0 0
	jump	L_cont_22468
L_else_22474 : 
	addi	r4 r0 0
L_cont_22468 : 
	bne	r4 r0 L_else_22472
	jump	L_cont_22460
L_else_22472 : 
	fsti	f13 r0 1082
	fsti	f14 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r15 r0 1045
	sti	r10 r0 1074
L_cont_22460 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_solve_each_element_2189
L_solve_one_or_network_2193 : 
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22524
	return
L_else_22524 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2189
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22526
	return
L_else_22526 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2189
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22528
	return
L_else_22528 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2189
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22530
	return
L_else_22530 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2189
	addi	r4 r16 1
	add	r16 r0 r4
	jump	L_solve_one_or_network_2193
L_trace_or_matrix_2197 : 
	add	r1 r19 r21
	ldi	r17 r1 0
	ldi	r5 r17 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22533
	return
L_else_22533 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22536
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22602
	jump	L_cont_22534
L_else_22602 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2189
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22604
	jump	L_cont_22534
L_else_22604 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2189
	addi	r4 r0 3
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22606
	jump	L_cont_22534
L_else_22606 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2189
	addi	r16 r0 4
	add	r18 r0 r20
	call	L_solve_one_or_network_2193
	jump	L_cont_22534
L_else_22536 : 
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
	bne	r5 r4 L_else_22609
	add	r10 r0 r20
	call	L_solver_rect_2060
	jump	L_cont_22607
L_else_22609 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22624
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
	fbgt	f4 f0 L_else_22627
	addi	r5 r0 0
	jump	L_cont_22625
L_else_22627 : 
	addi	r5 r0 1
L_cont_22625 : 
	bne	r5 r0 L_else_22629
	addi	r4 r0 0
	jump	L_cont_22607
L_else_22629 : 
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
	jump	L_cont_22607
L_else_22624 : 
	add	r6 r0 r11
	add	r5 r0 r20
	fadd	f9 f0 f7
	fadd	f1 f0 f5
	fadd	f5 f0 f6
	fadd	f6 f0 f1
	call	L_solver_second_2085
L_cont_22607 : 
	bne	r4 r0 L_else_22611
	jump	L_cont_22534
L_else_22611 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22614
	addi	r4 r0 0
	jump	L_cont_22612
L_else_22614 : 
	addi	r4 r0 1
L_cont_22612 : 
	bne	r4 r0 L_else_22616
	jump	L_cont_22534
L_else_22616 : 
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22618
	jump	L_cont_22534
L_else_22618 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2189
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22620
	jump	L_cont_22534
L_else_22620 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2189
	addi	r4 r0 3
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22622
	jump	L_cont_22534
L_else_22622 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2189
	addi	r16 r0 4
	add	r18 r0 r20
	call	L_solve_one_or_network_2193
L_cont_22534 : 
	addi	r21 r21 1
	add	r1 r19 r21
	ldi	r17 r1 0
	ldi	r5 r17 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22538
	return
L_else_22538 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22541
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22543
	jump	L_cont_22539
L_else_22543 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2189
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22545
	jump	L_cont_22539
L_else_22545 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2189
	addi	r16 r0 3
	add	r18 r0 r20
	call	L_solve_one_or_network_2193
	jump	L_cont_22539
L_else_22541 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r11 r1 0
	fldi	f3 r0 1063
	ldi	r4 r11 5
	fldi	f2 r4 0
	fsub	f9 f3 f2
	fldi	f3 r0 1064
	ldi	r4 r11 5
	fldi	f2 r4 1
	fsub	f7 f3 f2
	fldi	f3 r0 1065
	ldi	r4 r11 5
	fldi	f2 r4 2
	fsub	f10 f3 f2
	ldi	r5 r11 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22548
	addi	r7 r0 0
	addi	r8 r0 1
	addi	r10 r0 2
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f9
	fadd	f3 f0 f7
	fadd	f5 f0 f10
	call	L_solver_rect_surface_2051
	bne	r4 r0 L_else_22561
	addi	r7 r0 1
	addi	r8 r0 2
	addi	r10 r0 0
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f7
	fadd	f3 f0 f10
	fadd	f5 f0 f9
	call	L_solver_rect_surface_2051
	bne	r4 r0 L_else_22563
	addi	r7 r0 2
	addi	r8 r0 0
	addi	r10 r0 1
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f10
	fadd	f3 f0 f9
	fadd	f5 f0 f7
	call	L_solver_rect_surface_2051
	bne	r4 r0 L_else_22565
	addi	r4 r0 0
	jump	L_cont_22546
L_else_22565 : 
	addi	r4 r0 3
	jump	L_cont_22546
L_else_22563 : 
	addi	r4 r0 2
	jump	L_cont_22546
L_else_22561 : 
	addi	r4 r0 1
	jump	L_cont_22546
L_else_22548 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22567
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
	fbgt	f4 f0 L_else_22570
	addi	r5 r0 0
	jump	L_cont_22568
L_else_22570 : 
	addi	r5 r0 1
L_cont_22568 : 
	bne	r5 r0 L_else_22572
	addi	r4 r0 0
	jump	L_cont_22546
L_else_22572 : 
	fldi	f2 r4 0
	fmul	f3 f2 f9
	fldi	f2 r4 1
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f10
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22546
L_else_22567 : 
	fldi	f6 r20 0
	fldi	f8 r20 1
	fldi	f5 r20 2
	fmul	f3 f6 f6
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f8 f8
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
	bne	r4 r0 L_else_22575
	fadd	f8 f0 f4
	jump	L_cont_22573
L_else_22575 : 
	fmul	f3 f8 f5
	ldi	r4 r11 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f6
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f8
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f8 f4 f2
L_cont_22573 : 
	fbne	f8 f0 L_else_22578
	addi	r4 r0 1
	jump	L_cont_22576
L_else_22578 : 
	addi	r4 r0 0
L_cont_22576 : 
	bne	r4 r0 L_else_22580
	fldi	f11 r20 0
	fldi	f12 r20 1
	fldi	f6 r20 2
	fmul	f3 f11 f9
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f12 f7
	ldi	r4 r11 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f10
	ldi	r4 r11 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f5 f4 f2
	ldi	r4 r11 3
	bne	r4 r0 L_else_22583
	fadd	f6 f0 f5
	jump	L_cont_22581
L_else_22583 : 
	fmul	f2 f6 f7
	fmul	f3 f12 f10
	fadd	f3 f2 f3
	ldi	r4 r11 9
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f2 f11 f10
	fmul	f3 f6 f9
	fadd	f3 f2 f3
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f11 f7
	fmul	f2 f12 f9
	fadd	f4 f4 f2
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f2 f3 f2
	fadd	f6 f5 f2
L_cont_22581 : 
	fmul	f3 f9 f9
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f7 f7
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
	bne	r4 r0 L_else_22586
	fadd	f3 f0 f4
	jump	L_cont_22584
L_else_22586 : 
	fmul	f3 f7 f10
	ldi	r4 r11 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fmul	f3 f10 f9
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f7
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
L_cont_22584 : 
	ldi	r5 r11 1
	addi	r4 r0 3
	bne	r5 r4 L_else_22589
	fldi	f2 r0 20
	fsub	f3 f3 f2
	jump	L_cont_22587
L_else_22589 : 
	fadd	f3 f0 f3
L_cont_22587 : 
	fmul	f2 f6 f6
	fmul	f3 f8 f3
	fsub	f7 f2 f3
	fbgt	f7 f0 L_else_22592
	addi	r4 r0 0
	jump	L_cont_22590
L_else_22592 : 
	addi	r4 r0 1
L_cont_22590 : 
	bne	r4 r0 L_else_22594
	addi	r4 r0 0
	jump	L_cont_22546
L_else_22594 : 
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_22597
	fldi	f4 r0 20
	jump	L_cont_22595
L_else_22597 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_22595 : 
	fldi	f3 r0 26
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	fldi	f4 r0 26
	fmul	f2 f7 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	fldi	f3 r0 26
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f4 f2 f3
	addi	r4 r0 12
	fadd	f5 f0 f7
	call	L_isqrt_1890
	fmul	f2 f7 f2
	ldi	r4 r11 6
	bne	r4 r0 L_else_22600
	fsub	f2 f0 f2
	jump	L_cont_22598
L_else_22600 : 
	fadd	f2 f0 f2
L_cont_22598 : 
	fsub	f2 f2 f6
	fdiv	f2 f2 f8
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22546
L_else_22580 : 
	addi	r4 r0 0
L_cont_22546 : 
	bne	r4 r0 L_else_22550
	jump	L_cont_22539
L_else_22550 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22553
	addi	r4 r0 0
	jump	L_cont_22551
L_else_22553 : 
	addi	r4 r0 1
L_cont_22551 : 
	bne	r4 r0 L_else_22555
	jump	L_cont_22539
L_else_22555 : 
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22557
	jump	L_cont_22539
L_else_22557 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2189
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22559
	jump	L_cont_22539
L_else_22559 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2189
	addi	r16 r0 3
	add	r18 r0 r20
	call	L_solve_one_or_network_2193
L_cont_22539 : 
	addi	r4 r21 1
	add	r21 r0 r4
	jump	L_trace_or_matrix_2197
L_solve_each_element_fast_2203 : 
	ldi	r9 r12 0
	add	r1 r13 r14
	ldi	r11 r1 0
	addi	r4 r0 -1
	bne	r11 r4 L_else_22632
	return
L_else_22632 : 
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
	bne	r5 r4 L_else_22635
	ldi	r7 r12 0
	call	L_solver_rect_fast_2095
	add	r10 r0 r4
	jump	L_cont_22633
L_else_22635 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22699
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22702
	addi	r4 r0 0
	jump	L_cont_22700
L_else_22702 : 
	addi	r4 r0 1
L_cont_22700 : 
	bne	r4 r0 L_else_22704
	addi	r10 r0 0
	jump	L_cont_22633
L_else_22704 : 
	fldi	f3 r6 0
	fldi	f2 r7 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r10 r0 1
	jump	L_cont_22633
L_else_22699 : 
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	fadd	f3 f0 f5
	fadd	f4 f0 f7
	fadd	f5 f0 f6
	call	L_solver_second_fast2_2125
	add	r10 r0 r4
L_cont_22633 : 
	bne	r10 r0 L_else_22637
	addi	r4 r0 1970
	add	r1 r4 r11
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22639
	return
L_else_22639 : 
	addi	r4 r14 1
	add	r14 r0 r4
	jump	L_solve_each_element_fast_2203
L_else_22637 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_22642
	addi	r4 r0 0
	jump	L_cont_22640
L_else_22642 : 
	addi	r4 r0 1
L_cont_22640 : 
	bne	r4 r0 L_else_22645
	jump	L_cont_22643
L_else_22645 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22648
	addi	r4 r0 0
	jump	L_cont_22646
L_else_22648 : 
	addi	r4 r0 1
L_cont_22646 : 
	bne	r4 r0 L_else_22650
	jump	L_cont_22643
L_else_22650 : 
	fldi	f2 r0 32
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
	bne	r5 r4 L_else_22653
	addi	r4 r0 1
	jump	L_cont_22651
L_else_22653 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2169
	bne	r4 r0 L_else_22657
	addi	r4 r0 1
	add	r1 r13 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22659
	addi	r4 r0 1
	jump	L_cont_22651
L_else_22659 : 
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
	bne	r5 r4 L_else_22662
	fbgt	f0 f5 L_else_22671
	fadd	f3 f0 f5
	jump	L_cont_22669
L_else_22671 : 
	fsub	f3 f0 f5
L_cont_22669 : 
	ldi	r4 r6 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22674
	addi	r4 r0 0
	jump	L_cont_22672
L_else_22674 : 
	addi	r4 r0 1
L_cont_22672 : 
	bne	r4 r0 L_else_22677
	addi	r4 r0 0
	jump	L_cont_22675
L_else_22677 : 
	fbgt	f0 f6 L_else_22682
	fadd	f3 f0 f6
	jump	L_cont_22680
L_else_22682 : 
	fsub	f3 f0 f6
L_cont_22680 : 
	ldi	r4 r6 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22685
	addi	r4 r0 0
	jump	L_cont_22683
L_else_22685 : 
	addi	r4 r0 1
L_cont_22683 : 
	bne	r4 r0 L_else_22687
	addi	r4 r0 0
	jump	L_cont_22675
L_else_22687 : 
	fbgt	f0 f7 L_else_22690
	fadd	f3 f0 f7
	jump	L_cont_22688
L_else_22690 : 
	fsub	f3 f0 f7
L_cont_22688 : 
	ldi	r4 r6 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22692
	addi	r4 r0 0
	jump	L_cont_22675
L_else_22692 : 
	addi	r4 r0 1
L_cont_22675 : 
	bne	r4 r0 L_else_22679
	addi	r5 r0 1
	ldi	r4 r6 6
	sub	r4 r5 r4
	jump	L_cont_22660
L_else_22679 : 
	ldi	r4 r6 6
	add	r4 r0 r4
	jump	L_cont_22660
L_else_22662 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22694
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
	fbgt	f0 f2 L_else_22697
	addi	r4 r0 0
	jump	L_cont_22695
L_else_22697 : 
	addi	r4 r0 1
L_cont_22695 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_22660
L_else_22694 : 
	call	L_is_second_outside_2164
L_cont_22660 : 
	bne	r4 r0 L_else_22664
	addi	r4 r0 2
	add	r1 r13 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22666
	addi	r4 r0 1
	jump	L_cont_22651
L_else_22666 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2169
	bne	r4 r0 L_else_22668
	addi	r7 r0 3
	add	r9 r0 r13
	fadd	f8 f0 f14
	fadd	f10 f0 f12
	fadd	f9 f0 f11
	call	L_check_all_inside_2174
	jump	L_cont_22651
L_else_22668 : 
	addi	r4 r0 0
	jump	L_cont_22651
L_else_22664 : 
	addi	r4 r0 0
	jump	L_cont_22651
L_else_22657 : 
	addi	r4 r0 0
L_cont_22651 : 
	bne	r4 r0 L_else_22655
	jump	L_cont_22643
L_else_22655 : 
	fsti	f13 r0 1082
	fsti	f14 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r11 r0 1045
	sti	r10 r0 1074
L_cont_22643 : 
	addi	r4 r14 1
	add	r14 r0 r4
	jump	L_solve_each_element_fast_2203
L_solve_one_or_network_fast_2207 : 
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22707
	return
L_else_22707 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2203
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22709
	return
L_else_22709 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2203
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22711
	return
L_else_22711 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2203
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22713
	return
L_else_22713 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2203
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_solve_one_or_network_fast_2207
L_trace_or_matrix_fast_2211 : 
	add	r1 r18 r20
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22716
	return
L_else_22716 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22719
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22741
	jump	L_cont_22717
L_else_22741 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2203
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22743
	jump	L_cont_22717
L_else_22743 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2203
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22745
	jump	L_cont_22717
L_else_22745 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2203
	addi	r15 r0 4
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2207
	jump	L_cont_22717
L_else_22719 : 
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
	bne	r5 r4 L_else_22748
	ldi	r7 r19 0
	call	L_solver_rect_fast_2095
	jump	L_cont_22746
L_else_22748 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22763
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22766
	addi	r4 r0 0
	jump	L_cont_22764
L_else_22766 : 
	addi	r4 r0 1
L_cont_22764 : 
	bne	r4 r0 L_else_22768
	addi	r4 r0 0
	jump	L_cont_22746
L_else_22768 : 
	fldi	f3 r6 0
	fldi	f2 r7 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22746
L_else_22763 : 
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	fadd	f3 f0 f5
	fadd	f4 f0 f7
	fadd	f5 f0 f6
	call	L_solver_second_fast2_2125
L_cont_22746 : 
	bne	r4 r0 L_else_22750
	jump	L_cont_22717
L_else_22750 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_22753
	addi	r4 r0 0
	jump	L_cont_22751
L_else_22753 : 
	addi	r4 r0 1
L_cont_22751 : 
	bne	r4 r0 L_else_22755
	jump	L_cont_22717
L_else_22755 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22757
	jump	L_cont_22717
L_else_22757 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2203
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22759
	jump	L_cont_22717
L_else_22759 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2203
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22761
	jump	L_cont_22717
L_else_22761 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2203
	addi	r15 r0 4
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2207
L_cont_22717 : 
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22721
	return
L_else_22721 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22724
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22726
	jump	L_cont_22722
L_else_22726 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2203
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22728
	jump	L_cont_22722
L_else_22728 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2203
	addi	r15 r0 3
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2207
	jump	L_cont_22722
L_else_22724 : 
	add	r7 r0 r19
	call	L_solver_fast2_2132
	bne	r4 r0 L_else_22730
	jump	L_cont_22722
L_else_22730 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22733
	addi	r4 r0 0
	jump	L_cont_22731
L_else_22733 : 
	addi	r4 r0 1
L_cont_22731 : 
	bne	r4 r0 L_else_22735
	jump	L_cont_22722
L_else_22735 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22737
	jump	L_cont_22722
L_else_22737 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2203
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22739
	jump	L_cont_22722
L_else_22739 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2203
	addi	r15 r0 3
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2207
L_cont_22722 : 
	addi	r4 r20 1
	add	r20 r0 r4
	jump	L_trace_or_matrix_fast_2211
L_get_nvector_second_2221 : 
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
	bne	r4 r0 L_else_22772
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_22770
L_else_22772 : 
	ldi	r4 r5 9
	fldi	f2 r4 2
	fmul	f3 f8 f2
	ldi	r4 r5 9
	fldi	f2 r4 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 27
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
	fldi	f3 r0 27
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
	fldi	f2 r0 27
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_22770 : 
	ldi	r5 r5 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f6 f3 f2
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_22775
	fldi	f4 r0 20
	jump	L_cont_22773
L_else_22775 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_22773 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f4 f2 f3
	addi	r4 r0 14
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f3 f6 f2
	fbne	f3 f0 L_else_22778
	addi	r4 r0 1
	jump	L_cont_22776
L_else_22778 : 
	addi	r4 r0 0
L_cont_22776 : 
	bne	r4 r0 L_else_22781
	bne	r5 r0 L_else_22783
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_22779
L_else_22783 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_22779
L_else_22781 : 
	fldi	f3 r0 20
L_cont_22779 : 
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
L_get_nvector_2223 : 
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22786
	ldi	r4 r0 1074
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r6 r0 1046
	addi	r5 r4 -1
	addi	r4 r4 -1
	add	r1 r7 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_22789
	addi	r4 r0 1
	jump	L_cont_22787
L_else_22789 : 
	addi	r4 r0 0
L_cont_22787 : 
	bne	r4 r0 L_else_22792
	fbgt	f2 f0 L_else_22795
	addi	r4 r0 0
	jump	L_cont_22793
L_else_22795 : 
	addi	r4 r0 1
L_cont_22793 : 
	bne	r4 r0 L_else_22797
	fldi	f2 r0 28
	jump	L_cont_22790
L_else_22797 : 
	fldi	f2 r0 20
	jump	L_cont_22790
L_else_22792 : 
	fldi	f2 r0 29
L_cont_22790 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	return
L_else_22786 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22799
	ldi	r4 r6 4
	fldi	f2 r4 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	ldi	r4 r6 4
	fldi	f2 r4 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	ldi	r4 r6 4
	fldi	f2 r4 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	return
L_else_22799 : 
	fldi	f3 r0 1042
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f9 f3 f2
	fldi	f3 r0 1043
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f5 f9 f2
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f6 f8 f2
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f4 f7 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_22802
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_22800
L_else_22802 : 
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f3 f8 f2
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f2 f3 f2
	fadd	f2 f5 f2
	fsti	f2 r0 1046
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f3 f9 f2
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 27
	fdiv	f2 f2 f3
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f3 f9 f2
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_22800 : 
	addi	r5 r0 1046
	ldi	r6 r6 6
	jump	L_vecunit_sgn_1929
L_utexture_2226 : 
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
	bne	r5 r4 L_else_22805
	fldi	f3 r7 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f4 f3 f2
	fldi	f2 r0 34
	fmul	f2 f4 f2
	flr	f2 f2
	fldi	f3 r0 35
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 36
	fbgt	f2 f3 L_else_22808
	addi	r5 r0 0
	jump	L_cont_22806
L_else_22808 : 
	addi	r5 r0 1
L_cont_22806 : 
	fldi	f3 r7 2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f3 f3 f2
	fldi	f2 r0 34
	fmul	f2 f3 f2
	flr	f4 f2
	fldi	f2 r0 35
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_22811
	addi	r4 r0 0
	jump	L_cont_22809
L_else_22811 : 
	addi	r4 r0 1
L_cont_22809 : 
	bne	r5 r0 L_else_22814
	bne	r4 r0 L_else_22816
	fldi	f2 r0 37
	jump	L_cont_22812
L_else_22816 : 
	fldi	f2 r0 29
	jump	L_cont_22812
L_else_22814 : 
	bne	r4 r0 L_else_22818
	fldi	f2 r0 29
	jump	L_cont_22812
L_else_22818 : 
	fldi	f2 r0 37
L_cont_22812 : 
	fsti	f2 r0 1050
	return
L_else_22805 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22820
	fldi	f3 r7 1
	fldi	f2 r0 38
	fmul	f9 f3 f2
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_22823
	fldi	f3 r0 2
	fbgt	f3 f9 L_else_22825
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_22827
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_22829
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
	jump	L_cont_22821
L_else_22829 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_22831
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
	jump	L_cont_22821
L_else_22831 : 
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
	jump	L_cont_22821
L_else_22827 : 
	fbgt	f9 f3 L_else_22833
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
	jump	L_cont_22821
L_else_22833 : 
	fbgt	f9 f2 L_else_22835
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
	jump	L_cont_22821
L_else_22835 : 
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
	jump	L_cont_22821
L_else_22825 : 
	fadd	f9 f9 f2
	call	L_sin_1884
	jump	L_cont_22821
L_else_22823 : 
	fsub	f9 f9 f2
	call	L_sin_1884
L_cont_22821 : 
	fmul	f4 f2 f2
	fldi	f2 r0 37
	fmul	f2 f2 f4
	fsti	f2 r0 1049
	fldi	f3 r0 37
	fldi	f2 r0 20
	fsub	f2 f2 f4
	fmul	f2 f3 f2
	fsti	f2 r0 1050
	return
L_else_22820 : 
	addi	r4 r0 3
	bne	r5 r4 L_else_22837
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
	fadd	f6 f2 f3
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_22840
	fldi	f4 r0 20
	jump	L_cont_22838
L_else_22840 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_22838 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	fldi	f4 r0 26
	fmul	f2 f6 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 13
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f3 f6 f2
	fldi	f2 r0 36
	fdiv	f3 f3 f2
	flr	f2 f3
	fsub	f3 f3 f2
	fldi	f2 r0 39
	fmul	f6 f3 f2
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_22843
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_22845
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_22847
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_22849
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
	jump	L_cont_22841
L_else_22849 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_22851
	fadd	f9 f6 f3
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
	jump	L_cont_22841
L_else_22851 : 
	fadd	f2 f5 f6
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
	jump	L_cont_22841
L_else_22847 : 
	fbgt	f6 f4 L_else_22853
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
	jump	L_cont_22841
L_else_22853 : 
	fbgt	f6 f2 L_else_22855
	fsub	f9 f6 f3
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
	fsub	f2 f0 f2
	jump	L_cont_22841
L_else_22855 : 
	fsub	f2 f5 f6
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
	jump	L_cont_22841
L_else_22845 : 
	fadd	f6 f6 f3
	call	L_cos_1886
	jump	L_cont_22841
L_else_22843 : 
	fsub	f6 f6 f3
	call	L_cos_1886
L_cont_22841 : 
	fmul	f3 f2 f2
	fldi	f2 r0 37
	fmul	f2 f3 f2
	fsti	f2 r0 1050
	fldi	f2 r0 20
	fsub	f2 f2 f3
	fldi	f3 r0 37
	fmul	f2 f2 f3
	fsti	f2 r0 1051
	return
L_else_22837 : 
	addi	r4 r0 4
	bne	r5 r4 L_else_22857
	fldi	f3 r7 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f7 f3 f2
	ldi	r4 r6 4
	fldi	f6 r4 0
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_22860
	fldi	f4 r0 20
	jump	L_cont_22858
L_else_22860 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_22858 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	fldi	f4 r0 26
	fmul	f2 f6 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 13
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f2 f6 f2
	fmul	f8 f7 f2
	fldi	f3 r7 2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r4 r6 4
	fldi	f6 r4 2
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_22863
	fldi	f4 r0 20
	jump	L_cont_22861
L_else_22863 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_22861 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	fldi	f4 r0 26
	fmul	f2 f6 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 13
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f2 f6 f2
	fmul	f4 f7 f2
	fmul	f2 f8 f8
	fmul	f3 f4 f4
	fadd	f16 f2 f3
	fbgt	f0 f8 L_else_22866
	fadd	f2 f0 f8
	jump	L_cont_22864
L_else_22866 : 
	fsub	f2 f0 f8
L_cont_22864 : 
	fldi	f3 r0 40
	fbgt	f3 f2 L_else_22869
	addi	r4 r0 0
	jump	L_cont_22867
L_else_22869 : 
	addi	r4 r0 1
L_cont_22867 : 
	bne	r4 r0 L_else_22872
	fdiv	f2 f4 f8
	fbgt	f0 f2 L_else_22896
	fadd	f13 f0 f2
	jump	L_cont_22894
L_else_22896 : 
	fsub	f13 f0 f2
L_cont_22894 : 
	call	L_atan_1888
	fadd	f3 f0 f2
	fldi	f2 r0 41
	fmul	f3 f3 f2
	fldi	f2 r0 39
	fdiv	f3 f3 f2
	jump	L_cont_22870
L_else_22872 : 
	fldi	f3 r0 42
L_cont_22870 : 
	flr	f2 f3
	fsub	f15 f3 f2
	fldi	f3 r7 1
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f7 f3 f2
	ldi	r4 r6 4
	fldi	f6 r4 1
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_22875
	fldi	f4 r0 20
	jump	L_cont_22873
L_else_22875 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_22873 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	fldi	f4 r0 26
	fmul	f2 f6 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 13
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f2 f6 f2
	fmul	f4 f7 f2
	fbgt	f0 f16 L_else_22878
	fadd	f3 f0 f16
	jump	L_cont_22876
L_else_22878 : 
	fsub	f3 f0 f16
L_cont_22876 : 
	fldi	f2 r0 40
	fbgt	f2 f3 L_else_22881
	addi	r4 r0 0
	jump	L_cont_22879
L_else_22881 : 
	addi	r4 r0 1
L_cont_22879 : 
	bne	r4 r0 L_else_22884
	fdiv	f2 f4 f16
	fbgt	f0 f2 L_else_22893
	fadd	f13 f0 f2
	jump	L_cont_22891
L_else_22893 : 
	fsub	f13 f0 f2
L_cont_22891 : 
	call	L_atan_1888
	fadd	f3 f0 f2
	fldi	f2 r0 41
	fmul	f3 f3 f2
	fldi	f2 r0 39
	fdiv	f3 f3 f2
	jump	L_cont_22882
L_else_22884 : 
	fldi	f3 r0 42
L_cont_22882 : 
	flr	f2 f3
	fsub	f4 f3 f2
	fldi	f3 r0 43
	fldi	f2 r0 19
	fsub	f2 f2 f15
	fmul	f2 f2 f2
	fsub	f3 f3 f2
	fldi	f2 r0 19
	fsub	f2 f2 f4
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fbgt	f0 f2 L_else_22887
	addi	r4 r0 0
	jump	L_cont_22885
L_else_22887 : 
	addi	r4 r0 1
L_cont_22885 : 
	bne	r4 r0 L_else_22890
	fadd	f2 f0 f2
	jump	L_cont_22888
L_else_22890 : 
	fldi	f2 r0 29
L_cont_22888 : 
	fldi	f3 r0 37
	fmul	f2 f3 f2
	fldi	f3 r0 44
	fdiv	f2 f2 f3
	fsti	f2 r0 1051
	return
L_else_22857 : 
	return
L_trace_reflections_2233 : 
	bgt	r0 r22 L_else_22899
	addi	r4 r0 1185
	add	r1 r4 r22
	ldi	r23 r1 0
	ldi	r24 r23 1
	fldi	f2 r0 45
	fsti	f2 r0 1082
	addi	r20 r0 0
	ldi	r18 r0 1183
	add	r19 r0 r24
	call	L_trace_or_matrix_fast_2211
	fldi	f2 r0 1082
	fldi	f3 r0 33
	fbgt	f2 f3 L_else_22902
	addi	r4 r0 0
	jump	L_cont_22900
L_else_22902 : 
	addi	r4 r0 1
L_cont_22900 : 
	bne	r4 r0 L_else_22905
	addi	r4 r0 0
	jump	L_cont_22903
L_else_22905 : 
	fldi	f3 r0 46
	fbgt	f3 f2 L_else_22962
	addi	r4 r0 0
	jump	L_cont_22903
L_else_22962 : 
	addi	r4 r0 1
L_cont_22903 : 
	bne	r4 r0 L_else_22908
	jump	L_cont_22906
L_else_22908 : 
	ldi	r4 r0 1045
	addi	r5 r0 4
	mul	r4 r4 r5
	ldi	r5 r0 1074
	add	r4 r4 r5
	ldi	r5 r23 0
	bne	r4 r5 L_else_22910
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22913
	addi	r4 r0 0
	jump	L_cont_22911
L_else_22913 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22929
	addi	r4 r0 1
	jump	L_cont_22927
L_else_22929 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2114
	bne	r4 r0 L_else_22944
	addi	r4 r0 0
	jump	L_cont_22927
L_else_22944 : 
	fldi	f3 r0 1073
	fldi	f2 r0 33
	fbgt	f2 f3 L_else_22947
	addi	r4 r0 0
	jump	L_cont_22945
L_else_22947 : 
	addi	r4 r0 1
L_cont_22945 : 
	bne	r4 r0 L_else_22949
	addi	r4 r0 0
	jump	L_cont_22927
L_else_22949 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22952
	addi	r4 r0 0
	jump	L_cont_22950
L_else_22952 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22956
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22958
	addi	r4 r0 0
	jump	L_cont_22950
L_else_22958 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22960
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_22950
L_else_22960 : 
	addi	r4 r0 1
	jump	L_cont_22950
L_else_22956 : 
	addi	r4 r0 1
L_cont_22950 : 
	bne	r4 r0 L_else_22954
	addi	r4 r0 0
	jump	L_cont_22927
L_else_22954 : 
	addi	r4 r0 1
L_cont_22927 : 
	bne	r4 r0 L_else_22931
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2186
	jump	L_cont_22911
L_else_22931 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22934
	addi	r4 r0 0
	jump	L_cont_22932
L_else_22934 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22938
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22940
	addi	r4 r0 0
	jump	L_cont_22932
L_else_22940 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_22942
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_22932
L_else_22942 : 
	addi	r4 r0 1
	jump	L_cont_22932
L_else_22938 : 
	addi	r4 r0 1
L_cont_22932 : 
	bne	r4 r0 L_else_22936
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2186
	jump	L_cont_22911
L_else_22936 : 
	addi	r4 r0 1
L_cont_22911 : 
	bne	r4 r0 L_else_22915
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
	fbgt	f5 f0 L_else_22918
	addi	r4 r0 0
	jump	L_cont_22916
L_else_22918 : 
	addi	r4 r0 1
L_cont_22916 : 
	bne	r4 r0 L_else_22921
	jump	L_cont_22919
L_else_22921 : 
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
L_cont_22919 : 
	fbgt	f4 f0 L_else_22924
	addi	r4 r0 0
	jump	L_cont_22922
L_else_22924 : 
	addi	r4 r0 1
L_cont_22922 : 
	bne	r4 r0 L_else_22926
	jump	L_cont_22906
L_else_22926 : 
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
	jump	L_cont_22906
L_else_22915 : 
	jump	L_cont_22906
L_else_22910 : 
L_cont_22906 : 
	addi	r4 r22 -1
	add	r22 r0 r4
	jump	L_trace_reflections_2233
L_else_22899 : 
	return
L_trace_ray_2238 : 
	addi	r4 r0 4
	bgt	r29 r4 L_else_22965
	ldi	r30 r26 2
	fldi	f2 r0 45
	fsti	f2 r0 1082
	addi	r21 r0 0
	ldi	r19 r0 1183
	add	r20 r0 r27
	call	L_trace_or_matrix_2197
	fldi	f2 r0 1082
	fldi	f3 r0 33
	fbgt	f2 f3 L_else_22968
	addi	r4 r0 0
	jump	L_cont_22966
L_else_22968 : 
	addi	r4 r0 1
L_cont_22966 : 
	bne	r4 r0 L_else_22971
	addi	r4 r0 0
	jump	L_cont_22969
L_else_22971 : 
	fldi	f3 r0 46
	fbgt	f3 f2 L_else_23065
	addi	r4 r0 0
	jump	L_cont_22969
L_else_23065 : 
	addi	r4 r0 1
L_cont_22969 : 
	bne	r4 r0 L_else_22973
	addi	r4 r0 -1
	add	r1 r30 r29
	sti	r4 r1 0
	bne	r29 r0 L_else_22975
	return
L_else_22975 : 
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
	fbgt	f3 f0 L_else_22978
	addi	r4 r0 0
	jump	L_cont_22976
L_else_22978 : 
	addi	r4 r0 1
L_cont_22976 : 
	bne	r4 r0 L_else_22980
	return
L_else_22980 : 
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
L_else_22973 : 
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
	bne	r5 r4 L_else_22983
	ldi	r4 r0 1074
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r6 r0 1046
	addi	r5 r4 -1
	addi	r4 r4 -1
	add	r1 r27 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_23053
	addi	r4 r0 1
	jump	L_cont_23051
L_else_23053 : 
	addi	r4 r0 0
L_cont_23051 : 
	bne	r4 r0 L_else_23056
	fbgt	f2 f0 L_else_23059
	addi	r4 r0 0
	jump	L_cont_23057
L_else_23059 : 
	addi	r4 r0 1
L_cont_23057 : 
	bne	r4 r0 L_else_23061
	fldi	f2 r0 28
	jump	L_cont_23054
L_else_23061 : 
	fldi	f2 r0 20
	jump	L_cont_23054
L_else_23056 : 
	fldi	f2 r0 29
L_cont_23054 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	jump	L_cont_22981
L_else_22983 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23063
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
	jump	L_cont_22981
L_else_23063 : 
	add	r5 r0 r25
	call	L_get_nvector_second_2221
L_cont_22981 : 
	fldi	f2 r0 1042
	fsti	f2 r0 1063
	fldi	f2 r0 1043
	fsti	f2 r0 1064
	fldi	f2 r0 1044
	fsti	f2 r0 1065
	addi	r7 r0 1042
	add	r6 r0 r25
	call	L_utexture_2226
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
	fbgt	f3 f2 L_else_22986
	addi	r4 r0 0
	jump	L_cont_22984
L_else_22986 : 
	addi	r4 r0 1
L_cont_22984 : 
	bne	r4 r0 L_else_22989
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
	fldi	f2 r0 47
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
	jump	L_cont_22987
L_else_22989 : 
	addi	r4 r0 0
	add	r1 r5 r29
	sti	r4 r1 0
L_cont_22987 : 
	fldi	f5 r0 48
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
	bne	r6 r4 L_else_22992
	addi	r4 r0 0
	jump	L_cont_22990
L_else_22992 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_23019
	addi	r4 r0 1
	jump	L_cont_23017
L_else_23019 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2114
	bne	r4 r0 L_else_23034
	addi	r4 r0 0
	jump	L_cont_23017
L_else_23034 : 
	fldi	f3 r0 1073
	fldi	f2 r0 33
	fbgt	f2 f3 L_else_23037
	addi	r4 r0 0
	jump	L_cont_23035
L_else_23037 : 
	addi	r4 r0 1
L_cont_23035 : 
	bne	r4 r0 L_else_23039
	addi	r4 r0 0
	jump	L_cont_23017
L_else_23039 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23042
	addi	r4 r0 0
	jump	L_cont_23040
L_else_23042 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_23046
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23048
	addi	r4 r0 0
	jump	L_cont_23040
L_else_23048 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_23050
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_23040
L_else_23050 : 
	addi	r4 r0 1
	jump	L_cont_23040
L_else_23046 : 
	addi	r4 r0 1
L_cont_23040 : 
	bne	r4 r0 L_else_23044
	addi	r4 r0 0
	jump	L_cont_23017
L_else_23044 : 
	addi	r4 r0 1
L_cont_23017 : 
	bne	r4 r0 L_else_23021
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2186
	jump	L_cont_22990
L_else_23021 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23024
	addi	r4 r0 0
	jump	L_cont_23022
L_else_23024 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_23028
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23030
	addi	r4 r0 0
	jump	L_cont_23022
L_else_23030 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_23032
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_23022
L_else_23032 : 
	addi	r4 r0 1
	jump	L_cont_23022
L_else_23028 : 
	addi	r4 r0 1
L_cont_23022 : 
	bne	r4 r0 L_else_23026
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2186
	jump	L_cont_22990
L_else_23026 : 
	addi	r4 r0 1
L_cont_22990 : 
	bne	r4 r0 L_else_22995
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
	fbgt	f5 f0 L_else_23008
	addi	r4 r0 0
	jump	L_cont_23006
L_else_23008 : 
	addi	r4 r0 1
L_cont_23006 : 
	bne	r4 r0 L_else_23011
	jump	L_cont_23009
L_else_23011 : 
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
L_cont_23009 : 
	fbgt	f4 f0 L_else_23014
	addi	r4 r0 0
	jump	L_cont_23012
L_else_23014 : 
	addi	r4 r0 1
L_cont_23012 : 
	bne	r4 r0 L_else_23016
	jump	L_cont_22993
L_else_23016 : 
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
	jump	L_cont_22993
L_else_22995 : 
L_cont_22993 : 
	addi	r9 r0 1042
	fldi	f2 r0 1042
	fsti	f2 r0 1066
	fldi	f2 r0 1043
	fsti	f2 r0 1067
	fldi	f2 r0 1044
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	call	L_setup_startp_constants_2149
	ldi	r4 r0 1075
	addi	r22 r4 -1
	add	r21 r0 r27
	fadd	f16 f0 f19
	call	L_trace_reflections_2233
	fldi	f2 r0 49
	fbgt	f18 f2 L_else_22998
	addi	r4 r0 0
	jump	L_cont_22996
L_else_22998 : 
	addi	r4 r0 1
L_cont_22996 : 
	bne	r4 r0 L_else_23000
	return
L_else_23000 : 
	addi	r4 r0 4
	bgt	r4 r29 L_else_23003
	jump	L_cont_23001
L_else_23003 : 
	addi	r4 r29 1
	addi	r5 r0 -1
	add	r1 r30 r4
	sti	r5 r1 0
L_cont_23001 : 
	addi	r4 r0 2
	bne	r28 r4 L_else_23005
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
	jump	L_trace_ray_2238
L_else_23005 : 
	return
L_else_22965 : 
	return
L_trace_diffuse_ray_2244 : 
	fldi	f2 r0 45
	fsti	f2 r0 1082
	addi	r20 r0 0
	ldi	r18 r0 1183
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2211
	fldi	f3 r0 1082
	fldi	f2 r0 33
	fbgt	f3 f2 L_else_23069
	addi	r4 r0 0
	jump	L_cont_23067
L_else_23069 : 
	addi	r4 r0 1
L_cont_23067 : 
	bne	r4 r0 L_else_23072
	addi	r4 r0 0
	jump	L_cont_23070
L_else_23072 : 
	fldi	f2 r0 46
	fbgt	f2 f3 L_else_23137
	addi	r4 r0 0
	jump	L_cont_23070
L_else_23137 : 
	addi	r4 r0 1
L_cont_23070 : 
	bne	r4 r0 L_else_23074
	return
L_else_23074 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r21 0
	ldi	r5 r17 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23077
	ldi	r4 r0 1074
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r6 r0 1046
	addi	r5 r4 -1
	addi	r4 r4 -1
	add	r1 r7 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_23125
	addi	r4 r0 1
	jump	L_cont_23123
L_else_23125 : 
	addi	r4 r0 0
L_cont_23123 : 
	bne	r4 r0 L_else_23128
	fbgt	f2 f0 L_else_23131
	addi	r4 r0 0
	jump	L_cont_23129
L_else_23131 : 
	addi	r4 r0 1
L_cont_23129 : 
	bne	r4 r0 L_else_23133
	fldi	f2 r0 28
	jump	L_cont_23126
L_else_23133 : 
	fldi	f2 r0 20
	jump	L_cont_23126
L_else_23128 : 
	fldi	f2 r0 29
L_cont_23126 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	jump	L_cont_23075
L_else_23077 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23135
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
	jump	L_cont_23075
L_else_23135 : 
	add	r5 r0 r17
	call	L_get_nvector_second_2221
L_cont_23075 : 
	addi	r7 r0 1042
	add	r6 r0 r17
	call	L_utexture_2226
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_23080
	addi	r4 r0 0
	jump	L_cont_23078
L_else_23080 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_23091
	addi	r4 r0 1
	jump	L_cont_23089
L_else_23091 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2114
	bne	r4 r0 L_else_23106
	addi	r4 r0 0
	jump	L_cont_23089
L_else_23106 : 
	fldi	f2 r0 1073
	fldi	f3 r0 33
	fbgt	f3 f2 L_else_23109
	addi	r4 r0 0
	jump	L_cont_23107
L_else_23109 : 
	addi	r4 r0 1
L_cont_23107 : 
	bne	r4 r0 L_else_23111
	addi	r4 r0 0
	jump	L_cont_23089
L_else_23111 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23114
	addi	r4 r0 0
	jump	L_cont_23112
L_else_23114 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_23118
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23120
	addi	r4 r0 0
	jump	L_cont_23112
L_else_23120 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_23122
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_23112
L_else_23122 : 
	addi	r4 r0 1
	jump	L_cont_23112
L_else_23118 : 
	addi	r4 r0 1
L_cont_23112 : 
	bne	r4 r0 L_else_23116
	addi	r4 r0 0
	jump	L_cont_23089
L_else_23116 : 
	addi	r4 r0 1
L_cont_23089 : 
	bne	r4 r0 L_else_23093
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2186
	jump	L_cont_23078
L_else_23093 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23096
	addi	r4 r0 0
	jump	L_cont_23094
L_else_23096 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_23100
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23102
	addi	r4 r0 0
	jump	L_cont_23094
L_else_23102 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2180
	bne	r4 r0 L_else_23104
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2183
	jump	L_cont_23094
L_else_23104 : 
	addi	r4 r0 1
	jump	L_cont_23094
L_else_23100 : 
	addi	r4 r0 1
L_cont_23094 : 
	bne	r4 r0 L_else_23098
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2186
	jump	L_cont_23078
L_else_23098 : 
	addi	r4 r0 1
L_cont_23078 : 
	bne	r4 r0 L_else_23082
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
	fbgt	f2 f0 L_else_23085
	addi	r4 r0 0
	jump	L_cont_23083
L_else_23085 : 
	addi	r4 r0 1
L_cont_23083 : 
	bne	r4 r0 L_else_23088
	fldi	f2 r0 29
	jump	L_cont_23086
L_else_23088 : 
	fadd	f2 f0 f2
L_cont_23086 : 
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
L_else_23082 : 
	return
L_iter_trace_diffuse_rays_2247 : 
	bgt	r0 r22 L_else_23140
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
	fbgt	f0 f3 L_else_23143
	addi	r4 r0 0
	jump	L_cont_23141
L_else_23143 : 
	addi	r4 r0 1
L_cont_23141 : 
	bne	r4 r0 L_else_23146
	add	r1 r25 r22
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	fldi	f2 r0 45
	fsti	f2 r0 1082
	addi	r4 r0 0
	ldi	r18 r0 1183
	add	r1 r18 r4
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23157
	jump	L_cont_23155
L_else_23157 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_23178
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2207
	jump	L_cont_23176
L_else_23178 : 
	add	r7 r0 r21
	call	L_solver_fast2_2132
	bne	r4 r0 L_else_23180
	jump	L_cont_23176
L_else_23180 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_23183
	addi	r4 r0 0
	jump	L_cont_23181
L_else_23183 : 
	addi	r4 r0 1
L_cont_23181 : 
	bne	r4 r0 L_else_23185
	jump	L_cont_23176
L_else_23185 : 
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2207
L_cont_23176 : 
	addi	r20 r0 1
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2211
L_cont_23155 : 
	fldi	f2 r0 1082
	fldi	f3 r0 33
	fbgt	f2 f3 L_else_23160
	addi	r4 r0 0
	jump	L_cont_23158
L_else_23160 : 
	addi	r4 r0 1
L_cont_23158 : 
	bne	r4 r0 L_else_23163
	addi	r4 r0 0
	jump	L_cont_23161
L_else_23163 : 
	fldi	f3 r0 46
	fbgt	f3 f2 L_else_23175
	addi	r4 r0 0
	jump	L_cont_23161
L_else_23175 : 
	addi	r4 r0 1
L_cont_23161 : 
	bne	r4 r0 L_else_23165
	jump	L_cont_23144
L_else_23165 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r21 0
	add	r6 r0 r17
	call	L_get_nvector_2223
	addi	r7 r0 1042
	add	r6 r0 r17
	call	L_utexture_2226
	addi	r15 r0 0
	ldi	r14 r0 1183
	call	L_shadow_check_one_or_matrix_2186
	bne	r4 r0 L_else_23167
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
	fbgt	f2 f0 L_else_23170
	addi	r4 r0 0
	jump	L_cont_23168
L_else_23170 : 
	addi	r4 r0 1
L_cont_23168 : 
	bne	r4 r0 L_else_23173
	fldi	f2 r0 29
	jump	L_cont_23171
L_else_23173 : 
	fadd	f2 f0 f2
L_cont_23171 : 
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
	jump	L_cont_23144
L_else_23167 : 
	jump	L_cont_23144
L_else_23146 : 
	addi	r4 r22 1
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	fldi	f2 r0 45
	fsti	f2 r0 1082
	addi	r4 r0 0
	ldi	r18 r0 1183
	add	r1 r18 r4
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23188
	jump	L_cont_23186
L_else_23188 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_23209
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2207
	jump	L_cont_23207
L_else_23209 : 
	add	r7 r0 r21
	call	L_solver_fast2_2132
	bne	r4 r0 L_else_23211
	jump	L_cont_23207
L_else_23211 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_23214
	addi	r4 r0 0
	jump	L_cont_23212
L_else_23214 : 
	addi	r4 r0 1
L_cont_23212 : 
	bne	r4 r0 L_else_23216
	jump	L_cont_23207
L_else_23216 : 
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2207
L_cont_23207 : 
	addi	r20 r0 1
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2211
L_cont_23186 : 
	fldi	f2 r0 1082
	fldi	f3 r0 33
	fbgt	f2 f3 L_else_23191
	addi	r4 r0 0
	jump	L_cont_23189
L_else_23191 : 
	addi	r4 r0 1
L_cont_23189 : 
	bne	r4 r0 L_else_23194
	addi	r4 r0 0
	jump	L_cont_23192
L_else_23194 : 
	fldi	f3 r0 46
	fbgt	f3 f2 L_else_23206
	addi	r4 r0 0
	jump	L_cont_23192
L_else_23206 : 
	addi	r4 r0 1
L_cont_23192 : 
	bne	r4 r0 L_else_23196
	jump	L_cont_23144
L_else_23196 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r21 0
	add	r6 r0 r17
	call	L_get_nvector_2223
	addi	r7 r0 1042
	add	r6 r0 r17
	call	L_utexture_2226
	addi	r15 r0 0
	ldi	r14 r0 1183
	call	L_shadow_check_one_or_matrix_2186
	bne	r4 r0 L_else_23198
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
	fbgt	f2 f0 L_else_23201
	addi	r4 r0 0
	jump	L_cont_23199
L_else_23201 : 
	addi	r4 r0 1
L_cont_23199 : 
	bne	r4 r0 L_else_23204
	fldi	f2 r0 29
	jump	L_cont_23202
L_else_23204 : 
	fadd	f2 f0 f2
L_cont_23202 : 
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
	jump	L_cont_23144
L_else_23198 : 
L_cont_23144 : 
	addi	r22 r22 -2
	bgt	r0 r22 L_else_23148
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
	fbgt	f0 f3 L_else_23151
	addi	r4 r0 0
	jump	L_cont_23149
L_else_23151 : 
	addi	r4 r0 1
L_cont_23149 : 
	bne	r4 r0 L_else_23154
	add	r1 r25 r22
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
	jump	L_cont_23152
L_else_23154 : 
	addi	r4 r22 1
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
L_cont_23152 : 
	addi	r4 r22 -2
	add	r22 r0 r4
	jump	L_iter_trace_diffuse_rays_2247
L_else_23148 : 
	return
L_else_23140 : 
	return
L_calc_diffuse_using_1point_2260 : 
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
	bne	r30 r0 L_else_23220
	jump	L_cont_23218
L_else_23220 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f3 L_else_23259
	addi	r4 r0 0
	jump	L_cont_23257
L_else_23259 : 
	addi	r4 r0 1
L_cont_23257 : 
	bne	r4 r0 L_else_23262
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
	jump	L_cont_23260
L_else_23262 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
L_cont_23260 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2247
L_cont_23218 : 
	addi	r4 r0 1
	bne	r30 r4 L_else_23223
	jump	L_cont_23221
L_else_23223 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f3 L_else_23253
	addi	r4 r0 0
	jump	L_cont_23251
L_else_23253 : 
	addi	r4 r0 1
L_cont_23251 : 
	bne	r4 r0 L_else_23256
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
	jump	L_cont_23254
L_else_23256 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
L_cont_23254 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2247
L_cont_23221 : 
	addi	r4 r0 2
	bne	r30 r4 L_else_23226
	jump	L_cont_23224
L_else_23226 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f3 L_else_23247
	addi	r4 r0 0
	jump	L_cont_23245
L_else_23247 : 
	addi	r4 r0 1
L_cont_23245 : 
	bne	r4 r0 L_else_23250
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
	jump	L_cont_23248
L_else_23250 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
L_cont_23248 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2247
L_cont_23224 : 
	addi	r4 r0 3
	bne	r30 r4 L_else_23229
	jump	L_cont_23227
L_else_23229 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f3 L_else_23241
	addi	r4 r0 0
	jump	L_cont_23239
L_else_23241 : 
	addi	r4 r0 1
L_cont_23239 : 
	bne	r4 r0 L_else_23244
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
	jump	L_cont_23242
L_else_23244 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
L_cont_23242 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2247
L_cont_23227 : 
	addi	r4 r0 4
	bne	r30 r4 L_else_23232
	jump	L_cont_23230
L_else_23232 : 
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f3 L_else_23235
	addi	r4 r0 0
	jump	L_cont_23233
L_else_23235 : 
	addi	r4 r0 1
L_cont_23233 : 
	bne	r4 r0 L_else_23238
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
	jump	L_cont_23236
L_else_23238 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
L_cont_23236 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2247
L_cont_23230 : 
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
L_calc_diffuse_using_5points_2263 : 
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
L_do_without_neighbors_2269 : 
	addi	r4 r0 4
	bgt	r29 r4 L_else_23266
	ldi	r4 r5 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23268
	ldi	r4 r5 3
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r0 L_else_23271
	jump	L_cont_23269
L_else_23271 : 
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
	bne	r30 r0 L_else_23281
	jump	L_cont_23279
L_else_23281 : 
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
	call	L_setup_startp_constants_2149
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2247
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23279 : 
	addi	r4 r0 1
	bne	r30 r4 L_else_23284
	jump	L_cont_23282
L_else_23284 : 
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
	call	L_setup_startp_constants_2149
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2247
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23282 : 
	addi	r4 r0 2
	bne	r30 r4 L_else_23287
	jump	L_cont_23285
L_else_23287 : 
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
	call	L_setup_startp_constants_2149
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2247
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23285 : 
	addi	r4 r0 3
	bne	r30 r4 L_else_23290
	jump	L_cont_23288
L_else_23290 : 
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
	call	L_setup_startp_constants_2149
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2247
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23288 : 
	addi	r4 r0 4
	bne	r30 r4 L_else_23293
	jump	L_cont_23291
L_else_23293 : 
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
	call	L_setup_startp_constants_2149
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2247
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23291 : 
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
L_cont_23269 : 
	addi	r31 r29 1
	addi	r4 r0 4
	bgt	r31 r4 L_else_23273
	ldi	r4 r5 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23275
	ldi	r4 r5 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_23278
	jump	L_cont_23276
L_else_23278 : 
	sti	r5 r2 0
	add	r7 r0 r5
	add	r28 r0 r31
	addi	r2 r2 1
	call	L_calc_diffuse_using_1point_2260
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23276 : 
	addi	r4 r31 1
	add	r29 r0 r4
	jump	L_do_without_neighbors_2269
L_else_23275 : 
	return
L_else_23273 : 
	return
L_else_23268 : 
	return
L_else_23266 : 
	return
L_try_exploit_neighbors_2285 : 
	add	r1 r13 r14
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r31 r4 L_else_23296
	ldi	r4 r6 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23298
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
	bne	r4 r5 L_else_23301
	add	r1 r16 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_23333
	addi	r4 r14 -1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_23335
	addi	r4 r14 1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_23337
	addi	r4 r0 1
	jump	L_cont_23299
L_else_23337 : 
	addi	r4 r0 0
	jump	L_cont_23299
L_else_23335 : 
	addi	r4 r0 0
	jump	L_cont_23299
L_else_23333 : 
	addi	r4 r0 0
	jump	L_cont_23299
L_else_23301 : 
	addi	r4 r0 0
L_cont_23299 : 
	bne	r4 r0 L_else_23303
	add	r1 r13 r14
	ldi	r5 r1 0
	addi	r4 r0 4
	bgt	r31 r4 L_else_23305
	ldi	r4 r5 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23307
	ldi	r4 r5 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_23310
	jump	L_cont_23308
L_else_23310 : 
	sti	r5 r2 0
	add	r7 r0 r5
	add	r28 r0 r31
	addi	r2 r2 1
	call	L_calc_diffuse_using_1point_2260
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_23308 : 
	addi	r29 r31 1
	jump	L_do_without_neighbors_2269
L_else_23307 : 
	return
L_else_23305 : 
	return
L_else_23303 : 
	ldi	r4 r6 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_23313
	jump	L_cont_23311
L_else_23313 : 
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
L_cont_23311 : 
	addi	r29 r31 1
	add	r1 r13 r14
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r29 r4 L_else_23315
	ldi	r4 r6 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23317
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
	bne	r4 r5 L_else_23320
	add	r1 r16 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23327
	addi	r4 r14 -1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23329
	addi	r4 r14 1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23331
	addi	r4 r0 1
	jump	L_cont_23318
L_else_23331 : 
	addi	r4 r0 0
	jump	L_cont_23318
L_else_23329 : 
	addi	r4 r0 0
	jump	L_cont_23318
L_else_23327 : 
	addi	r4 r0 0
	jump	L_cont_23318
L_else_23320 : 
	addi	r4 r0 0
L_cont_23318 : 
	bne	r4 r0 L_else_23322
	add	r1 r13 r14
	ldi	r5 r1 0
	jump	L_do_without_neighbors_2269
L_else_23322 : 
	ldi	r4 r6 3
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r0 L_else_23325
	jump	L_cont_23323
L_else_23325 : 
	add	r8 r0 r14
	add	r4 r0 r17
	add	r12 r0 r13
	add	r5 r0 r16
	add	r11 r0 r29
	call	L_calc_diffuse_using_5points_2263
L_cont_23323 : 
	addi	r4 r29 1
	add	r31 r0 r4
	jump	L_try_exploit_neighbors_2285
L_else_23317 : 
	return
L_else_23315 : 
	return
L_else_23298 : 
	return
L_else_23296 : 
	return
L_pretrace_diffuse_rays_2298 : 
	addi	r4 r0 4
	bgt	r26 r4 L_else_23340
	ldi	r4 r27 2
	add	r1 r4 r26
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23342
	ldi	r4 r27 3
	add	r1 r4 r26
	ldi	r4 r1 0
	bne	r4 r0 L_else_23345
	jump	L_cont_23343
L_else_23345 : 
	ldi	r4 r27 6
	ldi	r7 r4 0
	fldi	f2 r0 29
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
	call	L_setup_startp_constants_2149
	addi	r22 r0 118
	call	L_iter_trace_diffuse_rays_2247
	ldi	r4 r27 5
	add	r1 r4 r26
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_23343 : 
	addi	r26 r26 1
	addi	r4 r0 4
	bgt	r26 r4 L_else_23347
	ldi	r4 r27 2
	add	r1 r4 r26
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23349
	ldi	r4 r27 3
	add	r1 r4 r26
	ldi	r4 r1 0
	bne	r4 r0 L_else_23352
	jump	L_cont_23350
L_else_23352 : 
	ldi	r4 r27 6
	ldi	r7 r4 0
	fldi	f2 r0 29
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
	call	L_setup_startp_constants_2149
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
	fbgt	f0 f3 L_else_23355
	addi	r4 r0 0
	jump	L_cont_23353
L_else_23355 : 
	addi	r4 r0 1
L_cont_23353 : 
	bne	r4 r0 L_else_23358
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
	jump	L_cont_23356
L_else_23358 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2244
L_cont_23356 : 
	addi	r22 r0 116
	call	L_iter_trace_diffuse_rays_2247
	ldi	r4 r27 5
	add	r1 r4 r26
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_23350 : 
	addi	r4 r26 1
	add	r26 r0 r4
	jump	L_pretrace_diffuse_rays_2298
L_else_23349 : 
	return
L_else_23347 : 
	return
L_else_23342 : 
	return
L_else_23340 : 
	return
L_pretrace_pixels_2301 : 
	bgt	r0 r9 L_else_23361
	fldi	f2 r0 1062
	ldi	r4 r0 1060
	sub	r4 r9 r4
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
	fadd	f6 f3 f2
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_23364
	fldi	f4 r0 20
	jump	L_cont_23362
L_else_23364 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_23362 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f4 f2 f3
	addi	r4 r0 14
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f3 f6 f2
	fbne	f3 f0 L_else_23367
	addi	r4 r0 1
	jump	L_cont_23365
L_else_23367 : 
	addi	r4 r0 0
L_cont_23365 : 
	bne	r4 r0 L_else_23370
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_23368
L_else_23370 : 
	fldi	f3 r0 20
L_cont_23368 : 
	fldi	f2 r0 1069
	fmul	f2 f2 f3
	fsti	f2 r0 1069
	fldi	f2 r0 1070
	fmul	f2 f2 f3
	fsti	f2 r0 1070
	fldi	f2 r0 1071
	fmul	f2 f2 f3
	fsti	f2 r0 1071
	fldi	f2 r0 29
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
	add	r1 r31 r9
	ldi	r26 r1 0
	fldi	f17 r0 29
	sti	r8 r2 0
	sti	r9 r2 1
	addi	r2 r2 2
	call	L_trace_ray_2238
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r9 r2 1
	add	r1 r31 r9
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r0 1055
	fsti	f2 r4 0
	fldi	f2 r0 1056
	fsti	f2 r4 1
	fldi	f2 r0 1057
	fsti	f2 r4 2
	add	r1 r31 r9
	ldi	r4 r1 0
	ldi	r4 r4 6
	sti	r8 r4 0
	add	r1 r31 r9
	ldi	r27 r1 0
	addi	r26 r0 0
	ldi	r4 r27 2
	add	r1 r4 r26
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23373
	ldi	r4 r27 3
	add	r1 r4 r26
	ldi	r4 r1 0
	bne	r4 r0 L_else_23379
	jump	L_cont_23377
L_else_23379 : 
	ldi	r4 r27 6
	ldi	r5 r4 0
	fldi	f2 r0 29
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
	sti	r9 r2 0
	sti	r8 r2 1
	add	r9 r0 r24
	addi	r2 r2 2
	call	L_setup_startp_constants_2149
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
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
	fbgt	f0 f3 L_else_23382
	addi	r4 r0 0
	jump	L_cont_23380
L_else_23382 : 
	addi	r4 r0 1
L_cont_23380 : 
	bne	r4 r0 L_else_23385
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	sti	r8 r2 0
	sti	r9 r2 1
	addi	r2 r2 2
	call	L_trace_diffuse_ray_2244
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r9 r2 1
	jump	L_cont_23383
L_else_23385 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	sti	r8 r2 0
	sti	r9 r2 1
	addi	r2 r2 2
	call	L_trace_diffuse_ray_2244
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r9 r2 1
L_cont_23383 : 
	addi	r22 r0 116
	sti	r8 r2 0
	sti	r9 r2 1
	addi	r2 r2 2
	call	L_iter_trace_diffuse_rays_2247
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r9 r2 1
	ldi	r4 r27 5
	add	r1 r4 r26
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_23377 : 
	addi	r26 r0 1
	sti	r8 r2 0
	sti	r9 r2 1
	addi	r2 r2 2
	call	L_pretrace_diffuse_rays_2298
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r9 r2 1
	jump	L_cont_23371
L_else_23373 : 
L_cont_23371 : 
	addi	r4 r9 -1
	addi	r6 r8 1
	addi	r5 r0 5
	bgt	r5 r6 L_else_23376
	addi	r5 r6 -5
	jump	L_cont_23374
L_else_23376 : 
	add	r5 r0 r6
L_cont_23374 : 
	add	r9 r0 r4
	add	r8 r0 r5
	jump	L_pretrace_pixels_2301
L_else_23361 : 
	return
L_scan_pixel_2312 : 
	ldi	r4 r0 1058
	bgt	r4 r6 L_else_23388
	return
L_else_23388 : 
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
	bgt	r4 r5 L_else_23391
	addi	r4 r0 0
	jump	L_cont_23389
L_else_23391 : 
	bgt	r7 r0 L_else_23431
	addi	r4 r0 0
	jump	L_cont_23389
L_else_23431 : 
	ldi	r5 r0 1058
	addi	r4 r6 1
	bgt	r5 r4 L_else_23433
	addi	r4 r0 0
	jump	L_cont_23389
L_else_23433 : 
	bgt	r6 r0 L_else_23435
	addi	r4 r0 0
	jump	L_cont_23389
L_else_23435 : 
	addi	r4 r0 1
L_cont_23389 : 
	bne	r4 r0 L_else_23394
	add	r1 r10 r6
	ldi	r31 r1 0
	addi	r28 r0 0
	ldi	r4 r31 2
	add	r1 r4 r28
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23410
	ldi	r4 r31 3
	add	r1 r4 r28
	ldi	r4 r1 0
	bne	r4 r0 L_else_23413
	jump	L_cont_23411
L_else_23413 : 
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r7 r0 r31
	addi	r2 r2 5
	call	L_calc_diffuse_using_1point_2260
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
L_cont_23411 : 
	addi	r29 r0 1
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r5 r0 r31
	addi	r2 r2 5
	call	L_do_without_neighbors_2269
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont_23392
L_else_23410 : 
	jump	L_cont_23392
L_else_23394 : 
	addi	r29 r0 0
	add	r1 r10 r6
	ldi	r11 r1 0
	ldi	r4 r11 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23415
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
	bne	r4 r5 L_else_23418
	add	r1 r8 r6
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23425
	addi	r4 r6 -1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23427
	addi	r4 r6 1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23429
	addi	r4 r0 1
	jump	L_cont_23416
L_else_23429 : 
	addi	r4 r0 0
	jump	L_cont_23416
L_else_23427 : 
	addi	r4 r0 0
	jump	L_cont_23416
L_else_23425 : 
	addi	r4 r0 0
	jump	L_cont_23416
L_else_23418 : 
	addi	r4 r0 0
L_cont_23416 : 
	bne	r4 r0 L_else_23420
	add	r1 r10 r6
	ldi	r5 r1 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2269
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont_23392
L_else_23420 : 
	ldi	r4 r11 3
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r0 L_else_23423
	jump	L_cont_23421
L_else_23423 : 
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
	call	L_calc_diffuse_using_5points_2263
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r8 r2 4
L_cont_23421 : 
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
	call	L_try_exploit_neighbors_2285
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont_23392
L_else_23415 : 
L_cont_23392 : 
	fldi	f2 r0 1055
	call	min_caml_print_float
	fldi	f2 r0 1056
	call	min_caml_print_float
	fldi	f2 r0 1057
	call	min_caml_print_float
	addi	r6 r6 1
	ldi	r4 r0 1058
	bgt	r4 r6 L_else_23396
	return
L_else_23396 : 
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
	bgt	r4 r5 L_else_23399
	addi	r4 r0 0
	jump	L_cont_23397
L_else_23399 : 
	bgt	r7 r0 L_else_23404
	addi	r4 r0 0
	jump	L_cont_23397
L_else_23404 : 
	ldi	r4 r0 1058
	addi	r5 r6 1
	bgt	r4 r5 L_else_23406
	addi	r4 r0 0
	jump	L_cont_23397
L_else_23406 : 
	bgt	r6 r0 L_else_23408
	addi	r4 r0 0
	jump	L_cont_23397
L_else_23408 : 
	addi	r4 r0 1
L_cont_23397 : 
	bne	r4 r0 L_else_23402
	add	r1 r10 r6
	ldi	r5 r1 0
	addi	r29 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2269
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
	jump	L_cont_23400
L_else_23402 : 
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
	call	L_try_exploit_neighbors_2285
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
L_cont_23400 : 
	fldi	f2 r0 1055
	call	min_caml_print_float
	fldi	f2 r0 1056
	call	min_caml_print_float
	fldi	f2 r0 1057
	call	min_caml_print_float
	addi	r4 r6 1
	add	r6 r0 r4
	jump	L_scan_pixel_2312
L_scan_line_2318 : 
	ldi	r4 r0 1059
	bgt	r4 r8 L_else_23438
	return
L_else_23438 : 
	ldi	r4 r0 1059
	addi	r4 r4 -1
	bgt	r4 r8 L_else_23441
	jump	L_cont_23439
L_else_23441 : 
	addi	r5 r8 1
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
	addi	r9 r4 -1
	sti	r8 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r7 r2 4
	add	r31 r0 r11
	add	r8 r0 r7
	addi	r2 r2 5
	call	L_pretrace_pixels_2301
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r7 r2 4
L_cont_23439 : 
	addi	r14 r0 0
	ldi	r4 r0 1058
	bgt	r4 r0 L_else_23444
	jump	L_cont_23442
L_else_23444 : 
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
	addi	r5 r8 1
	bgt	r4 r5 L_else_23458
	addi	r4 r0 0
	jump	L_cont_23456
L_else_23458 : 
	bgt	r8 r0 L_else_23463
	addi	r4 r0 0
	jump	L_cont_23456
L_else_23463 : 
	ldi	r4 r0 1058
	addi	r5 r0 1
	bgt	r4 r5 L_else_23465
	addi	r4 r0 0
	jump	L_cont_23456
L_else_23465 : 
	addi	r4 r0 0
L_cont_23456 : 
	bne	r4 r0 L_else_23461
	add	r1 r12 r14
	ldi	r5 r1 0
	addi	r29 r0 0
	sti	r8 r2 0
	sti	r10 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2269
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r10 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	jump	L_cont_23459
L_else_23461 : 
	addi	r31 r0 0
	sti	r8 r2 0
	sti	r10 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	add	r15 r0 r8
	add	r17 r0 r10
	add	r13 r0 r12
	add	r16 r0 r11
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2285
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r10 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
L_cont_23459 : 
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
	sti	r8 r2 4
	add	r7 r0 r8
	add	r9 r0 r10
	add	r10 r0 r12
	add	r8 r0 r11
	addi	r2 r2 5
	call	L_scan_pixel_2312
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r8 r2 4
L_cont_23442 : 
	addi	r8 r8 1
	addi	r5 r7 2
	addi	r4 r0 5
	bgt	r4 r5 L_else_23447
	addi	r7 r5 -5
	jump	L_cont_23445
L_else_23447 : 
	add	r7 r0 r5
L_cont_23445 : 
	ldi	r4 r0 1059
	bgt	r4 r8 L_else_23449
	return
L_else_23449 : 
	ldi	r4 r0 1059
	addi	r4 r4 -1
	bgt	r4 r8 L_else_23452
	jump	L_cont_23450
L_else_23452 : 
	addi	r5 r8 1
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
	addi	r9 r4 -1
	sti	r8 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r7 r2 4
	add	r31 r0 r10
	add	r8 r0 r7
	addi	r2 r2 5
	call	L_pretrace_pixels_2301
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r7 r2 4
L_cont_23450 : 
	addi	r6 r0 0
	sti	r7 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r12 r2 3
	sti	r8 r2 4
	add	r7 r0 r8
	add	r9 r0 r12
	add	r8 r0 r10
	add	r10 r0 r11
	addi	r2 r2 5
	call	L_scan_pixel_2312
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r12 r2 3
	ldi	r8 r2 4
	addi	r4 r8 1
	addi	r6 r7 2
	addi	r5 r0 5
	bgt	r5 r6 L_else_23455
	addi	r5 r6 -5
	jump	L_cont_23453
L_else_23455 : 
	add	r5 r0 r6
L_cont_23453 : 
	add	r8 r0 r4
	add	r7 r0 r5
	add	r1 r0 r10
	add	r10 r0 r11
	add	r11 r0 r12
	add	r12 r0 r1
	jump	L_scan_line_2318
L_create_pixel_2326 : 
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r13 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r14 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r14 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r14 3
	addi	r4 r0 3
	fldi	f2 r0 29
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
	fldi	f2 r0 29
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r10 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r10 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r10 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r10 3
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r10 4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r9 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 3
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 4
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r8 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
	call	min_caml_create_array
	add	r6 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r6 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r6 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r6 3
	addi	r4 r0 3
	fldi	f2 r0 29
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
L_init_line_elements_2328 : 
	bgt	r0 r13 L_else_23469
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r15 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r15 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r15 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r15 3
	addi	r4 r0 3
	fldi	f2 r0 29
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
	fldi	f2 r0 29
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r11 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r11 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r11 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r11 3
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r11 4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r9 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 3
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 4
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r8 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
	call	min_caml_create_array
	add	r6 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r6 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r6 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r6 3
	addi	r4 r0 3
	fldi	f2 r0 29
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
	bgt	r0 r15 L_else_23471
	call	L_create_pixel_2326
	add	r1 r16 r15
	sti	r4 r1 0
	addi	r4 r15 -1
	add	r13 r0 r4
	jump	L_init_line_elements_2328
L_else_23471 : 
	add	r4 r0 r16
	return
L_else_23469 : 
	add	r4 r0 r16
	return
L_create_pixelline_2331 : 
	ldi	r13 r0 1058
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
	call	min_caml_create_array
	add	r15 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r15 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r15 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r15 3
	addi	r4 r0 3
	fldi	f2 r0 29
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
	fldi	f2 r0 29
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r10 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r10 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r10 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r10 3
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r10 4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r9 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 3
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r9 4
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r8 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
	call	min_caml_create_array
	add	r6 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r6 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r6 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r4 r6 3
	addi	r4 r0 3
	fldi	f2 r0 29
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
	bgt	r0 r15 L_else_23474
	call	L_create_pixel_2326
	add	r1 r16 r15
	sti	r4 r1 0
	addi	r13 r15 -1
	jump	L_init_line_elements_2328
L_else_23474 : 
	add	r4 r0 r16
	return
L_tan_2333 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f11 f5 L_else_23478
	fldi	f2 r0 2
	fbgt	f2 f11 L_else_23495
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f11 f0 L_else_23497
	fldi	f2 r0 6
	fbgt	f2 f11 L_else_23499
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
	jump	L_cont_23476
L_else_23499 : 
	fldi	f2 r0 13
	fbgt	f2 f11 L_else_23501
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
	jump	L_cont_23476
L_else_23501 : 
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
	jump	L_cont_23476
L_else_23497 : 
	fbgt	f11 f4 L_else_23503
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
	jump	L_cont_23476
L_else_23503 : 
	fbgt	f11 f2 L_else_23505
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
	jump	L_cont_23476
L_else_23505 : 
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
	jump	L_cont_23476
L_else_23495 : 
	fadd	f9 f11 f3
	call	L_sin_1884
	fadd	f10 f0 f2
	jump	L_cont_23476
L_else_23478 : 
	fsub	f9 f11 f3
	call	L_sin_1884
	fadd	f10 f0 f2
L_cont_23476 : 
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f11 f5 L_else_23481
	fldi	f3 r0 2
	fbgt	f3 f11 L_else_23483
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f11 f0 L_else_23485
	fldi	f2 r0 6
	fbgt	f2 f11 L_else_23487
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
	jump	L_cont_23479
L_else_23487 : 
	fldi	f2 r0 13
	fbgt	f2 f11 L_else_23489
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
	jump	L_cont_23479
L_else_23489 : 
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
	jump	L_cont_23479
L_else_23485 : 
	fbgt	f11 f4 L_else_23491
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
	jump	L_cont_23479
L_else_23491 : 
	fbgt	f11 f2 L_else_23493
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
	jump	L_cont_23479
L_else_23493 : 
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
	jump	L_cont_23479
L_else_23483 : 
	fadd	f6 f11 f2
	call	L_cos_1886
	jump	L_cont_23479
L_else_23481 : 
	fsub	f6 f11 f2
	call	L_cos_1886
L_cont_23479 : 
	fdiv	f2 f10 f2
	return
L_calc_dirvec_2338 : 
	addi	r4 r0 5
	bgt	r4 r5 L_else_23508
	fmul	f3 f7 f7
	fmul	f2 f8 f8
	fadd	f3 f3 f2
	fldi	f2 r0 20
	fadd	f6 f3 f2
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_23511
	fldi	f4 r0 20
	jump	L_cont_23509
L_else_23511 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_23509 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 27
	fdiv	f3 f2 f3
	fldi	f4 r0 26
	fmul	f2 f6 f3
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fmul	f3 f3 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 13
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f2 f6 f2
	fdiv	f7 f7 f2
	fdiv	f6 f8 f2
	fldi	f3 r0 20
	fdiv	f5 f3 f2
	addi	r4 r0 1076
	add	r1 r4 r6
	ldi	r5 r1 0
	add	r1 r5 r7
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsti	f7 r4 0
	fsti	f6 r4 1
	fsti	f5 r4 2
	addi	r4 r7 40
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f6
	fsti	f7 r4 0
	fsti	f5 r4 1
	fsti	f2 r4 2
	addi	r4 r7 80
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f7
	fsub	f3 f0 f6
	fsti	f5 r4 0
	fsti	f2 r4 1
	fsti	f3 r4 2
	addi	r4 r7 1
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f4 f0 f7
	fsub	f2 f0 f6
	fsub	f3 f0 f5
	fsti	f4 r4 0
	fsti	f2 r4 1
	fsti	f3 r4 2
	addi	r4 r7 41
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f7
	fsub	f3 f0 f5
	fsti	f2 r4 0
	fsti	f3 r4 1
	fsti	f6 r4 2
	addi	r4 r7 81
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f5
	fsti	f2 r4 0
	fsti	f7 r4 1
	fsti	f6 r4 2
	return
L_else_23508 : 
	fmul	f2 f8 f8
	fldi	f3 r0 49
	fadd	f6 f2 f3
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_23514
	fldi	f4 r0 20
	jump	L_cont_23512
L_else_23514 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_23512 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 14
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f15 f6 f2
	fldi	f2 r0 20
	fdiv	f13 f2 f15
	call	L_atan_1888
	fmul	f11 f2 f17
	call	L_tan_2333
	fmul	f16 f2 f15
	addi	r5 r5 1
	fmul	f2 f16 f16
	fldi	f3 r0 49
	fadd	f6 f2 f3
	fldi	f2 r0 20
	fbgt	f6 f2 L_else_23517
	fldi	f4 r0 20
	jump	L_cont_23515
L_else_23517 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f6
L_cont_23515 : 
	fldi	f3 r0 26
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 27
	fdiv	f4 f3 f2
	addi	r4 r0 14
	fadd	f5 f0 f6
	call	L_isqrt_1890
	fmul	f15 f6 f2
	fldi	f2 r0 20
	fdiv	f13 f2 f15
	call	L_atan_1888
	fmul	f11 f2 f18
	call	L_tan_2333
	fmul	f2 f2 f15
	fadd	f7 f0 f16
	fadd	f8 f0 f2
	jump	L_calc_dirvec_2338
L_calc_dirvecs_2346 : 
	bgt	r0 r8 L_else_23520
	foi	f2 r8
	fldi	f3 r0 52
	fmul	f2 f2 f3
	fldi	f3 r0 53
	fsub	f17 f2 f3
	addi	r5 r0 0
	fldi	f7 r0 29
	fldi	f8 r0 29
	add	r6 r0 r11
	add	r7 r0 r10
	fadd	f18 f0 f19
	call	L_calc_dirvec_2338
	foi	f3 r8
	fldi	f2 r0 52
	fmul	f3 f3 f2
	fldi	f2 r0 49
	fadd	f17 f3 f2
	addi	r5 r0 0
	fldi	f7 r0 29
	fldi	f8 r0 29
	addi	r7 r10 2
	add	r6 r0 r11
	fadd	f18 f0 f19
	call	L_calc_dirvec_2338
	addi	r9 r8 -1
	addi	r4 r11 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_23523
	addi	r8 r4 -5
	jump	L_cont_23521
L_else_23523 : 
	add	r8 r0 r4
L_cont_23521 : 
	bgt	r0 r9 L_else_23525
	foi	f3 r9
	fldi	f2 r0 52
	fmul	f3 f3 f2
	fldi	f2 r0 53
	fsub	f17 f3 f2
	addi	r5 r0 0
	fldi	f7 r0 29
	fldi	f8 r0 29
	add	r6 r0 r8
	add	r7 r0 r10
	fadd	f18 f0 f19
	call	L_calc_dirvec_2338
	foi	f3 r9
	fldi	f2 r0 52
	fmul	f3 f3 f2
	fldi	f2 r0 49
	fadd	f17 f3 f2
	addi	r5 r0 0
	fldi	f7 r0 29
	fldi	f8 r0 29
	addi	r7 r10 2
	add	r6 r0 r8
	fadd	f18 f0 f19
	call	L_calc_dirvec_2338
	addi	r6 r9 -1
	addi	r4 r8 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_23528
	addi	r4 r4 -5
	jump	L_cont_23526
L_else_23528 : 
	add	r4 r0 r4
L_cont_23526 : 
	add	r8 r0 r6
	add	r11 r0 r4
	jump	L_calc_dirvecs_2346
L_else_23525 : 
	return
L_else_23520 : 
	return
L_calc_dirvec_rows_2351 : 
	bgt	r0 r12 L_else_23531
	foi	f2 r12
	fldi	f3 r0 52
	fmul	f2 f2 f3
	fldi	f3 r0 53
	fsub	f19 f2 f3
	addi	r8 r0 4
	foi	f2 r8
	fldi	f3 r0 52
	fmul	f2 f2 f3
	fldi	f3 r0 53
	fsub	f17 f2 f3
	addi	r5 r0 0
	fldi	f7 r0 29
	fldi	f8 r0 29
	add	r6 r0 r15
	add	r7 r0 r13
	fadd	f18 f0 f19
	call	L_calc_dirvec_2338
	foi	f3 r8
	fldi	f2 r0 52
	fmul	f3 f3 f2
	fldi	f2 r0 49
	fadd	f17 f3 f2
	addi	r5 r0 0
	fldi	f7 r0 29
	fldi	f8 r0 29
	addi	r7 r13 2
	add	r6 r0 r15
	fadd	f18 f0 f19
	call	L_calc_dirvec_2338
	addi	r8 r0 3
	addi	r4 r15 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_23534
	addi	r11 r4 -5
	jump	L_cont_23532
L_else_23534 : 
	add	r11 r0 r4
L_cont_23532 : 
	add	r10 r0 r13
	call	L_calc_dirvecs_2346
	addi	r14 r12 -1
	addi	r5 r15 2
	addi	r4 r0 5
	bgt	r4 r5 L_else_23537
	addi	r12 r5 -5
	jump	L_cont_23535
L_else_23537 : 
	add	r12 r0 r5
L_cont_23535 : 
	addi	r13 r13 4
	bgt	r0 r14 L_else_23539
	foi	f2 r14
	fldi	f3 r0 52
	fmul	f2 f2 f3
	fldi	f3 r0 53
	fsub	f19 f2 f3
	addi	r8 r0 4
	add	r11 r0 r12
	add	r10 r0 r13
	call	L_calc_dirvecs_2346
	addi	r6 r14 -1
	addi	r4 r12 2
	addi	r5 r0 5
	bgt	r5 r4 L_else_23542
	addi	r5 r4 -5
	jump	L_cont_23540
L_else_23542 : 
	add	r5 r0 r4
L_cont_23540 : 
	addi	r4 r13 4
	add	r12 r0 r6
	add	r15 r0 r5
	add	r13 r0 r4
	jump	L_calc_dirvec_rows_2351
L_else_23539 : 
	return
L_else_23531 : 
	return
L_create_dirvec_elements_2357 : 
	bgt	r0 r9 L_else_23545
	addi	r4 r0 3
	fldi	f2 r0 29
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
	bgt	r0 r8 L_else_23547
	addi	r4 r0 3
	fldi	f2 r0 29
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
	bgt	r0 r8 L_else_23549
	addi	r4 r0 3
	fldi	f2 r0 29
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
	bgt	r0 r8 L_else_23551
	addi	r4 r0 3
	fldi	f2 r0 29
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
	jump	L_create_dirvec_elements_2357
L_else_23551 : 
	return
L_else_23549 : 
	return
L_else_23547 : 
	return
L_else_23545 : 
	return
L_create_dirvecs_2360 : 
	bgt	r0 r11 L_else_23554
	addi	r10 r0 1076
	addi	r9 r0 120
	addi	r4 r0 3
	fldi	f2 r0 29
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
	fldi	f2 r0 29
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
	fldi	f2 r0 29
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
	fldi	f2 r0 29
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
	call	L_create_dirvec_elements_2357
	addi	r11 r11 -1
	bgt	r0 r11 L_else_23556
	addi	r9 r0 1076
	addi	r10 r0 120
	addi	r4 r0 3
	fldi	f2 r0 29
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
	fldi	f2 r0 29
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
	fldi	f2 r0 29
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
	call	L_create_dirvec_elements_2357
	addi	r4 r11 -1
	add	r11 r0 r4
	jump	L_create_dirvecs_2360
L_else_23556 : 
	return
L_else_23554 : 
	return
L_init_dirvec_constants_2362 : 
	bgt	r0 r12 L_else_23559
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2144
	addi	r12 r12 -1
	bgt	r0 r12 L_else_23561
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23564
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23579
	call	L_setup_rect_table_2135
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23577
L_else_23579 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23581
	call	L_setup_surface_table_2138
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23577
L_else_23581 : 
	call	L_setup_second_table_2141
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23577 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2144
	jump	L_cont_23562
L_else_23564 : 
L_cont_23562 : 
	addi	r12 r12 -1
	bgt	r0 r12 L_else_23566
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2144
	addi	r12 r12 -1
	bgt	r0 r12 L_else_23568
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23571
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23574
	call	L_setup_rect_table_2135
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23572
L_else_23574 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23576
	call	L_setup_surface_table_2138
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23572
L_else_23576 : 
	call	L_setup_second_table_2141
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23572 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2144
	jump	L_cont_23569
L_else_23571 : 
L_cont_23569 : 
	addi	r4 r12 -1
	add	r12 r0 r4
	jump	L_init_dirvec_constants_2362
L_else_23568 : 
	return
L_else_23566 : 
	return
L_else_23561 : 
	return
L_else_23559 : 
	return
L_init_vecset_constants_2365 : 
	bgt	r0 r14 L_else_23584
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r4 r0 119
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23587
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23620
	call	L_setup_rect_table_2135
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23618
L_else_23620 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23622
	call	L_setup_surface_table_2138
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23618
L_else_23622 : 
	call	L_setup_second_table_2141
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23618 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2144
	jump	L_cont_23585
L_else_23587 : 
L_cont_23585 : 
	addi	r4 r0 118
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2144
	addi	r4 r0 117
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23590
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23615
	call	L_setup_rect_table_2135
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23613
L_else_23615 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23617
	call	L_setup_surface_table_2138
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23613
L_else_23617 : 
	call	L_setup_second_table_2141
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23613 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2144
	jump	L_cont_23588
L_else_23590 : 
L_cont_23588 : 
	addi	r12 r0 116
	call	L_init_dirvec_constants_2362
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23592
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r4 r0 119
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2144
	addi	r4 r0 118
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23595
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23610
	call	L_setup_rect_table_2135
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23608
L_else_23610 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23612
	call	L_setup_surface_table_2138
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23608
L_else_23612 : 
	call	L_setup_second_table_2141
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23608 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2144
	jump	L_cont_23593
L_else_23595 : 
L_cont_23593 : 
	addi	r12 r0 117
	call	L_init_dirvec_constants_2362
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23597
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r4 r0 119
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23600
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23605
	call	L_setup_rect_table_2135
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23603
L_else_23605 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23607
	call	L_setup_surface_table_2138
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23603
L_else_23607 : 
	call	L_setup_second_table_2141
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23603 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2144
	jump	L_cont_23598
L_else_23600 : 
L_cont_23598 : 
	addi	r12 r0 118
	call	L_init_dirvec_constants_2362
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23602
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r12 r0 119
	call	L_init_dirvec_constants_2362
	addi	r4 r14 -1
	add	r14 r0 r4
	jump	L_init_vecset_constants_2365
L_else_23602 : 
	return
L_else_23597 : 
	return
L_else_23592 : 
	return
L_else_23584 : 
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
	fldi	f2 r0 54
	foi	f3 r5
	fdiv	f2 f2 f3
	fsti	f2 r0 1062
	call	L_create_pixelline_2331
	add	r10 r0 r4
	sti	r10 r2 0
	addi	r2 r2 1
	call	L_create_pixelline_2331
	addi	r2 r2 -1
	add	r11 r0 r4
	ldi	r10 r2 0
	sti	r11 r2 0
	sti	r10 r2 1
	addi	r2 r2 2
	call	L_create_pixelline_2331
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
	fldi	f3 r0 30
	fmul	f10 f2 f3
	fadd	f6 f0 f10
	call	L_cos_1886
	fadd	f13 f0 f2
	fadd	f9 f0 f10
	call	L_sin_1884
	fadd	f12 f0 f2
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 30
	fmul	f11 f3 f2
	fadd	f6 f0 f11
	call	L_cos_1886
	fadd	f10 f0 f2
	fadd	f9 f0 f11
	call	L_sin_1884
	fadd	f4 f0 f2
	fmul	f2 f13 f4
	fldi	f3 r0 55
	fmul	f2 f2 f3
	fsti	f2 r0 1027
	fldi	f2 r0 56
	fmul	f2 f12 f2
	fsti	f2 r0 1028
	fmul	f3 f13 f10
	fldi	f2 r0 55
	fmul	f2 f3 f2
	fsti	f2 r0 1029
	fsti	f10 r0 1030
	fldi	f2 r0 29
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
	fldi	f3 r0 30
	fmul	f11 f2 f3
	fadd	f9 f0 f11
	call	L_sin_1884
	fsub	f2 f0 f2
	fsti	f2 r0 1040
	call	min_caml_read_float
	fldi	f3 r0 30
	fmul	f10 f2 f3
	fadd	f6 f0 f11
	call	L_cos_1886
	fadd	f11 f0 f2
	fadd	f9 f0 f10
	call	L_sin_1884
	fmul	f2 f11 f2
	fsti	f2 r0 1039
	fadd	f6 f0 f10
	call	L_cos_1886
	fmul	f2 f11 f2
	fsti	f2 r0 1041
	call	min_caml_read_float
	fsti	f2 r0 1081
	addi	r13 r0 0
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_read_object_2039
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
	call	L_read_net_item_2043
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	ldi	r5 r7 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23625
	jump	L_cont_23623
L_else_23625 : 
	addi	r4 r0 1083
	add	r1 r4 r14
	sti	r7 r1 0
	addi	r19 r0 1
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_read_and_network_2047
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r6 r2 2
L_cont_23623 : 
	addi	r22 r0 0
	addi	r12 r0 0
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_read_net_item_2043
	addi	r2 r2 -3
	add	r21 r0 r4
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r6 r2 2
	ldi	r5 r21 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23628
	addi	r4 r0 1
	sti	r6 r2 0
	add	r5 r0 r21
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23626
L_else_23628 : 
	addi	r18 r0 1
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_read_or_network_2045
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	add	r1 r4 r22
	sti	r21 r1 0
	add	r4 r0 r4
L_cont_23626 : 
	sti	r4 r0 1183
	addi	r4 r0 80
	call	min_caml_print_char
	addi	r4 r0 54
	call	min_caml_print_char
	addi	r4 r0 10
	call	min_caml_print_char
	ldi	r8 r0 1058
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23631
	addi	r4 r8 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23753
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23755
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23629
L_else_23755 : 
	addi	r5 r0 2
	jump	L_cont_23629
L_else_23753 : 
	addi	r5 r0 1
	jump	L_cont_23629
L_else_23631 : 
	addi	r5 r0 0
L_cont_23629 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23634
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23749
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23751
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23632
L_else_23751 : 
	addi	r4 r0 2
	jump	L_cont_23632
L_else_23749 : 
	addi	r4 r0 1
	jump	L_cont_23632
L_else_23634 : 
	addi	r4 r0 0
L_cont_23632 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23637
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23745
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23747
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23635
L_else_23747 : 
	addi	r5 r0 2
	jump	L_cont_23635
L_else_23745 : 
	addi	r5 r0 1
	jump	L_cont_23635
L_else_23637 : 
	addi	r5 r0 0
L_cont_23635 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23640
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23741
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23743
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23638
L_else_23743 : 
	addi	r5 r0 2
	jump	L_cont_23638
L_else_23741 : 
	addi	r5 r0 1
	jump	L_cont_23638
L_else_23640 : 
	addi	r5 r0 0
L_cont_23638 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23643
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23737
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23739
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23641
L_else_23739 : 
	addi	r4 r0 2
	jump	L_cont_23641
L_else_23737 : 
	addi	r4 r0 1
	jump	L_cont_23641
L_else_23643 : 
	addi	r4 r0 0
L_cont_23641 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23646
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23733
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23735
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23644
L_else_23735 : 
	addi	r5 r0 2
	jump	L_cont_23644
L_else_23733 : 
	addi	r5 r0 1
	jump	L_cont_23644
L_else_23646 : 
	addi	r5 r0 0
L_cont_23644 : 
	addi	r4 r0 10
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 32
	call	min_caml_print_char
	ldi	r8 r0 1059
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23649
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23729
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23731
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23647
L_else_23731 : 
	addi	r5 r0 2
	jump	L_cont_23647
L_else_23729 : 
	addi	r5 r0 1
	jump	L_cont_23647
L_else_23649 : 
	addi	r5 r0 0
L_cont_23647 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23652
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23725
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23727
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23650
L_else_23727 : 
	addi	r4 r0 2
	jump	L_cont_23650
L_else_23725 : 
	addi	r4 r0 1
	jump	L_cont_23650
L_else_23652 : 
	addi	r4 r0 0
L_cont_23650 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23655
	addi	r4 r8 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23721
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23723
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23653
L_else_23723 : 
	addi	r4 r0 2
	jump	L_cont_23653
L_else_23721 : 
	addi	r4 r0 1
	jump	L_cont_23653
L_else_23655 : 
	addi	r4 r0 0
L_cont_23653 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23658
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23717
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23719
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23656
L_else_23719 : 
	addi	r4 r0 2
	jump	L_cont_23656
L_else_23717 : 
	addi	r4 r0 1
	jump	L_cont_23656
L_else_23658 : 
	addi	r4 r0 0
L_cont_23656 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	sub	r5 r8 r4
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23661
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23713
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23715
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23659
L_else_23715 : 
	addi	r4 r0 2
	jump	L_cont_23659
L_else_23713 : 
	addi	r4 r0 1
	jump	L_cont_23659
L_else_23661 : 
	addi	r4 r0 0
L_cont_23659 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23664
	addi	r4 r8 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23709
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23711
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23662
L_else_23711 : 
	addi	r4 r0 2
	jump	L_cont_23662
L_else_23709 : 
	addi	r4 r0 1
	jump	L_cont_23662
L_else_23664 : 
	addi	r4 r0 0
L_cont_23662 : 
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
	call	L_sdiv10_1896
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23667
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23705
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23707
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23665
L_else_23707 : 
	addi	r4 r0 2
	jump	L_cont_23665
L_else_23705 : 
	addi	r4 r0 1
	jump	L_cont_23665
L_else_23667 : 
	addi	r4 r0 0
L_cont_23665 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 225
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23670
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23701
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23703
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23668
L_else_23703 : 
	addi	r5 r0 2
	jump	L_cont_23668
L_else_23701 : 
	addi	r5 r0 1
	jump	L_cont_23668
L_else_23670 : 
	addi	r5 r0 0
L_cont_23668 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23673
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23697
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23699
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23671
L_else_23699 : 
	addi	r4 r0 2
	jump	L_cont_23671
L_else_23697 : 
	addi	r4 r0 1
	jump	L_cont_23671
L_else_23673 : 
	addi	r4 r0 0
L_cont_23671 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 225
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1896
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
	fldi	f2 r0 29
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
	call	L_create_dirvec_elements_2357
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r10 r2 1
	addi	r4 r0 3
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	add	r11 r0 r4
	addi	r2 r2 3
	call	L_create_dirvecs_2360
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	addi	r5 r0 9
	addi	r7 r0 0
	addi	r4 r0 0
	foi	f2 r5
	fldi	f3 r0 52
	fmul	f2 f2 f3
	fldi	f3 r0 53
	fsub	f19 f2 f3
	addi	r8 r0 4
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	add	r11 r0 r7
	add	r10 r0 r4
	addi	r2 r2 3
	call	L_calc_dirvecs_2346
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
	call	L_calc_dirvec_rows_2351
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
	call	L_init_dirvec_constants_2362
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	addi	r14 r0 3
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_init_vecset_constants_2365
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
	bgt	r0 r12 L_else_23676
	addi	r4 r0 1970
	add	r1 r4 r12
	ldi	r7 r1 0
	ldi	r9 r13 1
	ldi	r8 r13 0
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23693
	sti	r6 r2 0
	add	r6 r0 r7
	addi	r2 r2 1
	call	L_setup_rect_table_2135
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r9 r12
	sti	r4 r1 0
	jump	L_cont_23691
L_else_23693 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23695
	sti	r6 r2 0
	add	r6 r0 r7
	addi	r2 r2 1
	call	L_setup_surface_table_2138
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r9 r12
	sti	r4 r1 0
	jump	L_cont_23691
L_else_23695 : 
	sti	r6 r2 0
	add	r6 r0 r7
	addi	r2 r2 1
	call	L_setup_second_table_2141
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r9 r12
	sti	r4 r1 0
L_cont_23691 : 
	addi	r8 r12 -1
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	add	r11 r0 r13
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2144
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	jump	L_cont_23674
L_else_23676 : 
L_cont_23674 : 
	ldi	r4 r0 1072
	addi	r7 r4 -1
	bgt	r0 r7 L_else_23679
	addi	r4 r0 1970
	add	r1 r4 r7
	ldi	r8 r1 0
	ldi	r4 r8 2
	addi	r5 r0 2
	bne	r4 r5 L_else_23681
	ldi	r4 r8 7
	fldi	f3 r4 0
	fldi	f2 r0 20
	fbgt	f2 f3 L_else_23684
	addi	r4 r0 0
	jump	L_cont_23682
L_else_23684 : 
	addi	r4 r0 1
L_cont_23682 : 
	bne	r4 r0 L_else_23686
	jump	L_cont_23677
L_else_23686 : 
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23688
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
	fldi	f2 r0 29
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
	call	L_iter_setup_dirvec_constants_2144
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
	fldi	f2 r0 29
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
	call	L_iter_setup_dirvec_constants_2144
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
	fldi	f2 r0 29
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
	call	L_iter_setup_dirvec_constants_2144
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
	jump	L_cont_23677
L_else_23688 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23690
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
	fldi	f3 r0 27
	ldi	r4 r8 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	fldi	f3 r0 1039
	fsub	f4 f2 f3
	fldi	f3 r0 27
	ldi	r4 r8 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fmul	f3 f2 f6
	fldi	f2 r0 1040
	fsub	f5 f3 f2
	fldi	f3 r0 27
	ldi	r4 r8 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	fldi	f3 r0 1041
	fsub	f3 f2 f3
	addi	r4 r0 3
	fldi	f2 r0 29
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
	call	L_iter_setup_dirvec_constants_2144
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
	jump	L_cont_23677
L_else_23690 : 
	jump	L_cont_23677
L_else_23681 : 
	jump	L_cont_23677
L_else_23679 : 
L_cont_23677 : 
	addi	r5 r0 0
	addi	r8 r0 0
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
	addi	r9 r4 -1
	sti	r6 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	add	r31 r0 r11
	addi	r2 r2 3
	call	L_pretrace_pixels_2301
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r8 r0 0
	addi	r7 r0 2
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_scan_line_2318
	return
min_caml_end : 
	call	min_caml_start
