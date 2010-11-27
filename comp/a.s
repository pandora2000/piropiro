	nop
	nop
	addi	r4 r0 170
	ptc	r4
	addi	r2 r0 256
	addi	r3 r0 409
	muli	r3 r3 10
	addi	r3 r3 6
	addi	r4 r0 1006
	addi	r5 r0 0
	call	min_caml_create_array
	addi	r4 r0 4979
	sti	r4 r0 4977
	addi	r4 r0 4982
	sti	r4 r0 4978
	jump	L_mend_19050
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
	bne	r0 r5 L_else_19051
	return
L_else_19051 : 
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
	bne	r0 r5 L_else_19052
	return
L_else_19052 : 
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
	fbgt	f9 f5 L_else_17116
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_17118
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_17120
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_17122
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
L_else_17122 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_17124
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
L_else_17124 : 
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
L_else_17120 : 
	fbgt	f9 f4 L_else_17126
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
L_else_17126 : 
	fbgt	f9 f2 L_else_17128
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
L_else_17128 : 
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
L_else_17118 : 
	fadd	f9 f9 f3
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_17130
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_17132
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_17134
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_17136
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
L_else_17136 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_17138
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
L_else_17138 : 
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
L_else_17134 : 
	fbgt	f9 f5 L_else_17140
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
L_else_17140 : 
	fbgt	f9 f2 L_else_17142
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
L_else_17142 : 
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
L_else_17132 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1886
L_else_17130 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1886
L_else_17116 : 
	fsub	f9 f9 f3
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_17144
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_17146
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_17148
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_17150
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
L_else_17150 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_17152
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
L_else_17152 : 
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
L_else_17148 : 
	fbgt	f9 f4 L_else_17154
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
L_else_17154 : 
	fbgt	f9 f2 L_else_17156
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
L_else_17156 : 
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
L_else_17146 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1886
L_else_17144 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1886
L_cos_1888 : 
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f6 f4 L_else_17159
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_17161
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_17163
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_17165
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
L_else_17165 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_17167
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
L_else_17167 : 
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
L_else_17163 : 
	fbgt	f6 f5 L_else_17169
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
L_else_17169 : 
	fbgt	f6 f2 L_else_17171
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
L_else_17171 : 
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
L_else_17161 : 
	fadd	f2 f6 f3
	fadd	f6 f0 f2
	jump	L_cos_1888
L_else_17159 : 
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
	fmul	f2 f2 f6
	fsub	f3 f6 f3
	fbgt	f0 f3 L_else_17176
	fadd	f3 f0 f3
	jump	L_cont_17174
L_else_17176 : 
	fsub	f3 f0 f3
L_cont_17174 : 
	fbgt	f2 f3 L_else_17178
	fldi	f3 r0 27
	fmul	f2 f5 f6
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fmul	f3 f6 f2
	fldi	f2 r0 28
	fdiv	f4 f3 f2
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f6
	fbgt	f0 f2 L_else_17181
	fadd	f2 f0 f2
	jump	L_cont_17179
L_else_17181 : 
	fsub	f2 f0 f2
L_cont_17179 : 
	fbgt	f3 f2 L_else_17183
	fldi	f3 r0 27
	fmul	f2 f5 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fadd	f3 f0 f4
	fadd	f6 f0 f2
	jump	L_isqrt_1892
L_else_17183 : 
	fadd	f2 f0 f4
	return
L_else_17178 : 
	fadd	f2 f0 f6
	return
L_sdiv10_1898 : 
	addi	r6 r4 -10
	bgt	r0 r6 L_else_17186
	addi	r6 r4 -10
	addi	r4 r5 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_17188
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_17190
	addi	r6 r5 -10
	addi	r4 r7 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_17192
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_17194
	addi	r6 r5 -10
	addi	r4 r7 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_17196
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_17198
	addi	r6 r5 -10
	addi	r5 r7 1
	addi	r4 r6 -10
	bgt	r0 r4 L_else_17200
	addi	r4 r6 -10
	addi	r5 r5 1
	jump	L_sdiv10_1898
L_else_17200 : 
	add	r4 r0 r5
	return
L_else_17198 : 
	add	r4 r0 r7
	return
L_else_17196 : 
	add	r4 r0 r4
	return
L_else_17194 : 
	add	r4 r0 r7
	return
L_else_17192 : 
	add	r4 r0 r4
	return
L_else_17190 : 
	add	r4 r0 r7
	return
L_else_17188 : 
	add	r4 r0 r4
	return
L_else_17186 : 
	add	r4 r0 r5
	return
L_read_object_2041 : 
	addi	r4 r0 60
	bgt	r4 r11 L_else_17203
	return
L_else_17203 : 
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_17206
	addi	r4 r0 0
	jump	L_cont_17204
L_else_17206 : 
	call	min_caml_read_int
	add	r17 r0 r4
	call	min_caml_read_int
	add	r16 r0 r4
	call	min_caml_read_int
	add	r12 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r13 r0 r4
	call	min_caml_read_float
	fsti	f2 r13 0
	call	min_caml_read_float
	fsti	f2 r13 1
	call	min_caml_read_float
	fsti	f2 r13 2
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
	fbgt	f0 f2 L_else_17303
	addi	r14 r0 0
	jump	L_cont_17301
L_else_17303 : 
	addi	r14 r0 1
L_cont_17301 : 
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
	bne	r12 r0 L_else_17306
	jump	L_cont_17304
L_else_17306 : 
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
L_cont_17304 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_17309
	addi	r6 r0 1
	jump	L_cont_17307
L_else_17309 : 
	add	r6 r0 r14
L_cont_17307 : 
	addi	r4 r0 4
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r18 r3 0
	sti	r17 r3 1
	sti	r16 r3 2
	sti	r12 r3 3
	sti	r13 r3 4
	sti	r15 r3 5
	sti	r6 r3 6
	sti	r10 r3 7
	sti	r8 r3 8
	sti	r9 r3 9
	sti	r4 r3 10
	add	r5 r0 r3
	addi	r3 r3 11
	addi	r4 r0 5042
	add	r1 r4 r11
	sti	r5 r1 0
	addi	r4 r0 3
	bne	r17 r4 L_else_17312
	fldi	f3 r13 0
	fbne	f3 f0 L_else_17363
	addi	r4 r0 1
	jump	L_cont_17361
L_else_17363 : 
	addi	r4 r0 0
L_cont_17361 : 
	bne	r4 r0 L_else_17366
	fbne	f3 f0 L_else_17403
	addi	r4 r0 1
	jump	L_cont_17401
L_else_17403 : 
	addi	r4 r0 0
L_cont_17401 : 
	bne	r4 r0 L_else_17406
	fbgt	f3 f0 L_else_17409
	addi	r4 r0 0
	jump	L_cont_17407
L_else_17409 : 
	addi	r4 r0 1
L_cont_17407 : 
	bne	r4 r0 L_else_17411
	fldi	f2 r0 31
	jump	L_cont_17404
L_else_17411 : 
	fldi	f2 r0 20
	jump	L_cont_17404
L_else_17406 : 
	fldi	f2 r0 29
L_cont_17404 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_17364
L_else_17366 : 
	fldi	f2 r0 29
L_cont_17364 : 
	fsti	f2 r13 0
	fldi	f3 r13 1
	fbne	f3 f0 L_else_17369
	addi	r4 r0 1
	jump	L_cont_17367
L_else_17369 : 
	addi	r4 r0 0
L_cont_17367 : 
	bne	r4 r0 L_else_17372
	fbne	f3 f0 L_else_17392
	addi	r4 r0 1
	jump	L_cont_17390
L_else_17392 : 
	addi	r4 r0 0
L_cont_17390 : 
	bne	r4 r0 L_else_17395
	fbgt	f3 f0 L_else_17398
	addi	r4 r0 0
	jump	L_cont_17396
L_else_17398 : 
	addi	r4 r0 1
L_cont_17396 : 
	bne	r4 r0 L_else_17400
	fldi	f2 r0 31
	jump	L_cont_17393
L_else_17400 : 
	fldi	f2 r0 20
	jump	L_cont_17393
L_else_17395 : 
	fldi	f2 r0 29
L_cont_17393 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_17370
L_else_17372 : 
	fldi	f2 r0 29
L_cont_17370 : 
	fsti	f2 r13 1
	fldi	f2 r13 2
	fbne	f2 f0 L_else_17375
	addi	r4 r0 1
	jump	L_cont_17373
L_else_17375 : 
	addi	r4 r0 0
L_cont_17373 : 
	bne	r4 r0 L_else_17378
	fbne	f2 f0 L_else_17381
	addi	r4 r0 1
	jump	L_cont_17379
L_else_17381 : 
	addi	r4 r0 0
L_cont_17379 : 
	bne	r4 r0 L_else_17384
	fbgt	f2 f0 L_else_17387
	addi	r4 r0 0
	jump	L_cont_17385
L_else_17387 : 
	addi	r4 r0 1
L_cont_17385 : 
	bne	r4 r0 L_else_17389
	fldi	f3 r0 31
	jump	L_cont_17382
L_else_17389 : 
	fldi	f3 r0 20
	jump	L_cont_17382
L_else_17384 : 
	fldi	f3 r0 29
L_cont_17382 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_17376
L_else_17378 : 
	fldi	f2 r0 29
L_cont_17376 : 
	fsti	f2 r13 2
	jump	L_cont_17310
L_else_17312 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_17413
	addi	r4 r0 1
	sub	r5 r4 r14
	fldi	f2 r13 0
	fmul	f3 f2 f2
	fldi	f2 r13 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r13 2
	fmul	f2 f2 f2
	fadd	f7 f3 f2
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_17416
	fldi	f6 r0 20
	jump	L_cont_17414
L_else_17416 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_17414 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f3 f7 f2
	fbne	f3 f0 L_else_17419
	addi	r4 r0 1
	jump	L_cont_17417
L_else_17419 : 
	addi	r4 r0 0
L_cont_17417 : 
	bne	r4 r0 L_else_17422
	bne	r5 r0 L_else_17424
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_17420
L_else_17424 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
	jump	L_cont_17420
L_else_17422 : 
	fldi	f3 r0 20
L_cont_17420 : 
	fldi	f2 r13 0
	fmul	f2 f2 f3
	fsti	f2 r13 0
	fldi	f2 r13 1
	fmul	f2 f2 f3
	fsti	f2 r13 1
	fldi	f2 r13 2
	fmul	f2 f2 f3
	fsti	f2 r13 2
	jump	L_cont_17310
L_else_17413 : 
L_cont_17310 : 
	bne	r12 r0 L_else_17315
	jump	L_cont_17313
L_else_17315 : 
	fldi	f6 r9 0
	call	L_cos_1888
	fadd	f17 f0 f2
	fldi	f9 r9 0
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_17318
	fldi	f3 r0 2
	fbgt	f3 f9 L_else_17350
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_17352
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_17354
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
	fadd	f18 f2 f9
	jump	L_cont_17316
L_else_17354 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_17356
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
	fsub	f18 f0 f2
	jump	L_cont_17316
L_else_17356 : 
	fadd	f9 f5 f9
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
	fsub	f18 f0 f2
	jump	L_cont_17316
L_else_17352 : 
	fbgt	f9 f4 L_else_17358
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
	fadd	f18 f2 f9
	jump	L_cont_17316
L_else_17358 : 
	fbgt	f9 f2 L_else_17360
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
	fadd	f18 f3 f2
	jump	L_cont_17316
L_else_17360 : 
	fsub	f9 f5 f9
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
	fadd	f18 f2 f9
	jump	L_cont_17316
L_else_17350 : 
	fadd	f9 f9 f2
	call	L_sin_1886
	fadd	f18 f0 f2
	jump	L_cont_17316
L_else_17318 : 
	fsub	f9 f9 f2
	call	L_sin_1886
	fadd	f18 f0 f2
L_cont_17316 : 
	fldi	f6 r9 1
	call	L_cos_1888
	fadd	f14 f0 f2
	fldi	f9 r9 1
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_17321
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_17338
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_17340
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_17342
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
	fadd	f13 f2 f9
	jump	L_cont_17319
L_else_17342 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_17344
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
	fsub	f13 f0 f2
	jump	L_cont_17319
L_else_17344 : 
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
	fsub	f13 f0 f2
	jump	L_cont_17319
L_else_17340 : 
	fbgt	f9 f4 L_else_17346
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
	fadd	f13 f2 f9
	jump	L_cont_17319
L_else_17346 : 
	fbgt	f9 f2 L_else_17348
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
	fadd	f13 f3 f2
	jump	L_cont_17319
L_else_17348 : 
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
	fadd	f13 f2 f9
	jump	L_cont_17319
L_else_17338 : 
	fadd	f9 f9 f3
	call	L_sin_1886
	fadd	f13 f0 f2
	jump	L_cont_17319
L_else_17321 : 
	fsub	f9 f9 f3
	call	L_sin_1886
	fadd	f13 f0 f2
L_cont_17319 : 
	fldi	f6 r9 2
	call	L_cos_1888
	fadd	f15 f0 f2
	fldi	f9 r9 2
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_17324
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_17326
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_17328
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_17330
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
	fadd	f4 f2 f9
	jump	L_cont_17322
L_else_17330 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_17332
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
	jump	L_cont_17322
L_else_17332 : 
	fadd	f7 f4 f9
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
	fsub	f4 f0 f2
	jump	L_cont_17322
L_else_17328 : 
	fbgt	f9 f5 L_else_17334
	fmul	f2 f9 f9
	fmul	f6 f9 f2
	fmul	f8 f6 f2
	fmul	f5 f8 f2
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
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 12
	fmul	f2 f2 f6
	fsub	f2 f3 f2
	fadd	f4 f2 f9
	jump	L_cont_17322
L_else_17334 : 
	fbgt	f9 f2 L_else_17336
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
	jump	L_cont_17322
L_else_17336 : 
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
	jump	L_cont_17322
L_else_17326 : 
	fadd	f9 f9 f3
	call	L_sin_1886
	fadd	f4 f0 f2
	jump	L_cont_17322
L_else_17324 : 
	fsub	f9 f9 f3
	call	L_sin_1886
	fadd	f4 f0 f2
L_cont_17322 : 
	fmul	f12 f14 f15
	fmul	f2 f18 f13
	fmul	f3 f2 f15
	fmul	f2 f17 f4
	fsub	f10 f3 f2
	fmul	f2 f17 f13
	fmul	f3 f2 f15
	fmul	f2 f18 f4
	fadd	f16 f3 f2
	fmul	f11 f14 f4
	fmul	f2 f18 f13
	fmul	f2 f2 f4
	fmul	f3 f17 f15
	fadd	f9 f2 f3
	fmul	f2 f17 f13
	fmul	f2 f2 f4
	fmul	f3 f18 f15
	fsub	f15 f2 f3
	fsub	f8 f0 f13
	fmul	f7 f18 f14
	fmul	f14 f17 f14
	fldi	f13 r13 0
	fldi	f6 r13 1
	fldi	f5 r13 2
	fmul	f2 f12 f12
	fmul	f3 f13 f2
	fmul	f2 f11 f11
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f8 f8
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r13 0
	fmul	f2 f10 f10
	fmul	f3 f13 f2
	fmul	f2 f9 f9
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f7 f7
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r13 1
	fmul	f2 f16 f16
	fmul	f3 f13 f2
	fmul	f2 f15 f15
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f14 f14
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r13 2
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
L_cont_17313 : 
	addi	r4 r0 1
L_cont_17204 : 
	bne	r4 r0 L_else_17208
	addi	r4 r0 4144
	sti	r11 r4 0
	return
L_else_17208 : 
	addi	r12 r11 1
	addi	r4 r0 60
	bgt	r4 r12 L_else_17210
	return
L_else_17210 : 
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_17213
	addi	r4 r0 0
	jump	L_cont_17211
L_else_17213 : 
	call	min_caml_read_int
	add	r17 r0 r4
	call	min_caml_read_int
	add	r16 r0 r4
	call	min_caml_read_int
	add	r10 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r13 r0 r4
	call	min_caml_read_float
	fsti	f2 r13 0
	call	min_caml_read_float
	fsti	f2 r13 1
	call	min_caml_read_float
	fsti	f2 r13 2
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
	fbgt	f0 f2 L_else_17218
	addi	r14 r0 0
	jump	L_cont_17216
L_else_17218 : 
	addi	r14 r0 1
L_cont_17216 : 
	addi	r4 r0 2
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r11 r0 r4
	call	min_caml_read_float
	fsti	f2 r11 0
	call	min_caml_read_float
	fsti	f2 r11 1
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r9 r0 r4
	call	min_caml_read_float
	fsti	f2 r9 0
	call	min_caml_read_float
	fsti	f2 r9 1
	call	min_caml_read_float
	fsti	f2 r9 2
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	bne	r10 r0 L_else_17221
	jump	L_cont_17219
L_else_17221 : 
	call	min_caml_read_float
	fldi	f3 r0 30
	fmul	f2 f2 f3
	fsti	f2 r8 0
	call	min_caml_read_float
	fldi	f3 r0 30
	fmul	f2 f2 f3
	fsti	f2 r8 1
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 30
	fmul	f2 f3 f2
	fsti	f2 r8 2
L_cont_17219 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_17224
	addi	r6 r0 1
	jump	L_cont_17222
L_else_17224 : 
	add	r6 r0 r14
L_cont_17222 : 
	addi	r4 r0 4
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r18 r3 0
	sti	r17 r3 1
	sti	r16 r3 2
	sti	r10 r3 3
	sti	r13 r3 4
	sti	r15 r3 5
	sti	r6 r3 6
	sti	r11 r3 7
	sti	r9 r3 8
	sti	r8 r3 9
	sti	r4 r3 10
	add	r5 r0 r3
	addi	r3 r3 11
	addi	r4 r0 5042
	add	r1 r4 r12
	sti	r5 r1 0
	addi	r4 r0 3
	bne	r17 r4 L_else_17227
	fldi	f3 r13 0
	fbne	f3 f0 L_else_17233
	addi	r4 r0 1
	jump	L_cont_17231
L_else_17233 : 
	addi	r4 r0 0
L_cont_17231 : 
	bne	r4 r0 L_else_17236
	fbne	f3 f0 L_else_17273
	addi	r4 r0 1
	jump	L_cont_17271
L_else_17273 : 
	addi	r4 r0 0
L_cont_17271 : 
	bne	r4 r0 L_else_17276
	fbgt	f3 f0 L_else_17279
	addi	r4 r0 0
	jump	L_cont_17277
L_else_17279 : 
	addi	r4 r0 1
L_cont_17277 : 
	bne	r4 r0 L_else_17281
	fldi	f2 r0 31
	jump	L_cont_17274
L_else_17281 : 
	fldi	f2 r0 20
	jump	L_cont_17274
L_else_17276 : 
	fldi	f2 r0 29
L_cont_17274 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_17234
L_else_17236 : 
	fldi	f2 r0 29
L_cont_17234 : 
	fsti	f2 r13 0
	fldi	f3 r13 1
	fbne	f3 f0 L_else_17239
	addi	r4 r0 1
	jump	L_cont_17237
L_else_17239 : 
	addi	r4 r0 0
L_cont_17237 : 
	bne	r4 r0 L_else_17242
	fbne	f3 f0 L_else_17262
	addi	r4 r0 1
	jump	L_cont_17260
L_else_17262 : 
	addi	r4 r0 0
L_cont_17260 : 
	bne	r4 r0 L_else_17265
	fbgt	f3 f0 L_else_17268
	addi	r4 r0 0
	jump	L_cont_17266
L_else_17268 : 
	addi	r4 r0 1
L_cont_17266 : 
	bne	r4 r0 L_else_17270
	fldi	f2 r0 31
	jump	L_cont_17263
L_else_17270 : 
	fldi	f2 r0 20
	jump	L_cont_17263
L_else_17265 : 
	fldi	f2 r0 29
L_cont_17263 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_17240
L_else_17242 : 
	fldi	f2 r0 29
L_cont_17240 : 
	fsti	f2 r13 1
	fldi	f2 r13 2
	fbne	f2 f0 L_else_17245
	addi	r4 r0 1
	jump	L_cont_17243
L_else_17245 : 
	addi	r4 r0 0
L_cont_17243 : 
	bne	r4 r0 L_else_17248
	fbne	f2 f0 L_else_17251
	addi	r4 r0 1
	jump	L_cont_17249
L_else_17251 : 
	addi	r4 r0 0
L_cont_17249 : 
	bne	r4 r0 L_else_17254
	fbgt	f2 f0 L_else_17257
	addi	r4 r0 0
	jump	L_cont_17255
L_else_17257 : 
	addi	r4 r0 1
L_cont_17255 : 
	bne	r4 r0 L_else_17259
	fldi	f3 r0 31
	jump	L_cont_17252
L_else_17259 : 
	fldi	f3 r0 20
	jump	L_cont_17252
L_else_17254 : 
	fldi	f3 r0 29
L_cont_17252 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_17246
L_else_17248 : 
	fldi	f2 r0 29
L_cont_17246 : 
	fsti	f2 r13 2
	jump	L_cont_17225
L_else_17227 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_17283
	addi	r4 r0 1
	sub	r4 r4 r14
	fldi	f2 r13 0
	fmul	f3 f2 f2
	fldi	f2 r13 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r13 2
	fmul	f2 f2 f2
	fadd	f7 f3 f2
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_17286
	fldi	f4 r0 20
	jump	L_cont_17284
L_else_17286 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_17284 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_17289
	fadd	f2 f0 f2
	jump	L_cont_17287
L_else_17289 : 
	fsub	f2 f0 f2
L_cont_17287 : 
	fbgt	f3 f2 L_else_17292
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f6 f2 f3
	fadd	f5 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_17290
L_else_17292 : 
	fadd	f2 f0 f4
L_cont_17290 : 
	fmul	f3 f7 f2
	fbne	f3 f0 L_else_17295
	addi	r5 r0 1
	jump	L_cont_17293
L_else_17295 : 
	addi	r5 r0 0
L_cont_17293 : 
	bne	r5 r0 L_else_17298
	bne	r4 r0 L_else_17300
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_17296
L_else_17300 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
	jump	L_cont_17296
L_else_17298 : 
	fldi	f3 r0 20
L_cont_17296 : 
	fldi	f2 r13 0
	fmul	f2 f2 f3
	fsti	f2 r13 0
	fldi	f2 r13 1
	fmul	f2 f2 f3
	fsti	f2 r13 1
	fldi	f2 r13 2
	fmul	f2 f2 f3
	fsti	f2 r13 2
	jump	L_cont_17225
L_else_17283 : 
L_cont_17225 : 
	bne	r10 r0 L_else_17230
	jump	L_cont_17228
L_else_17230 : 
	fldi	f6 r8 0
	call	L_cos_1888
	fadd	f19 f0 f2
	fldi	f9 r8 0
	call	L_sin_1886
	fadd	f18 f0 f2
	fldi	f6 r8 1
	call	L_cos_1888
	fadd	f17 f0 f2
	fldi	f9 r8 1
	call	L_sin_1886
	fadd	f14 f0 f2
	fldi	f6 r8 2
	call	L_cos_1888
	fadd	f13 f0 f2
	fldi	f9 r8 2
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
	fldi	f13 r13 0
	fldi	f6 r13 1
	fldi	f5 r13 2
	fmul	f2 f12 f12
	fmul	f3 f13 f2
	fmul	f2 f11 f11
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f8 f8
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r13 0
	fmul	f2 f10 f10
	fmul	f3 f13 f2
	fmul	f2 f9 f9
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f7 f7
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r13 1
	fmul	f2 f16 f16
	fmul	f3 f13 f2
	fmul	f2 f15 f15
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fmul	f2 f14 f14
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r13 2
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
	fsti	f2 r8 0
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
	fsti	f2 r8 1
	fldi	f4 r0 28
	fmul	f2 f13 f12
	fmul	f2 f2 f10
	fmul	f3 f6 f11
	fmul	f3 f3 f9
	fadd	f3 f2 f3
	fmul	f2 f5 f8
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r8 2
L_cont_17228 : 
	addi	r4 r0 1
L_cont_17211 : 
	bne	r4 r0 L_else_17215
	addi	r4 r0 4144
	sti	r12 r4 0
	return
L_else_17215 : 
	addi	r4 r12 1
	add	r11 r0 r4
	jump	L_read_object_2041
L_read_net_item_2045 : 
	call	min_caml_read_int
	add	r13 r0 r4
	addi	r4 r0 -1
	bne	r13 r4 L_else_17427
	addi	r4 r12 1
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_17427 : 
	addi	r11 r12 1
	call	min_caml_read_int
	add	r10 r0 r4
	addi	r4 r0 -1
	bne	r10 r4 L_else_17430
	addi	r4 r11 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_17428
L_else_17430 : 
	addi	r9 r11 1
	call	min_caml_read_int
	add	r8 r0 r4
	addi	r4 r0 -1
	bne	r8 r4 L_else_17433
	addi	r4 r9 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_17431
L_else_17433 : 
	addi	r6 r9 1
	call	min_caml_read_int
	add	r5 r0 r4
	addi	r4 r0 -1
	bne	r5 r4 L_else_17436
	addi	r4 r6 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_17434
L_else_17436 : 
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
L_cont_17434 : 
	add	r1 r4 r9
	sti	r8 r1 0
	add	r4 r0 r4
L_cont_17431 : 
	add	r1 r4 r11
	sti	r10 r1 0
	add	r4 r0 r4
L_cont_17428 : 
	add	r1 r4 r12
	sti	r13 r1 0
	add	r4 r0 r4
	return
L_read_or_network_2047 : 
	addi	r20 r0 0
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_17440
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r20 r0 r4
	jump	L_cont_17438
L_else_17440 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_17454
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_17452
L_else_17454 : 
	addi	r15 r0 2
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_17457
	addi	r4 r0 3
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_17455
L_else_17457 : 
	addi	r12 r0 3
	call	L_read_net_item_2045
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_17455 : 
	add	r1 r4 r17
	sti	r16 r1 0
	add	r4 r0 r4
L_cont_17452 : 
	add	r1 r4 r20
	sti	r18 r1 0
	add	r20 r0 r4
L_cont_17438 : 
	ldi	r4 r20 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_17442
	addi	r4 r19 1
	add	r5 r0 r20
	jump	min_caml_create_array
L_else_17442 : 
	addi	r17 r19 1
	addi	r18 r0 0
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_17445
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_17443
L_else_17445 : 
	addi	r15 r0 1
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_17451
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_17449
L_else_17451 : 
	addi	r12 r0 2
	call	L_read_net_item_2045
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_17449 : 
	add	r1 r4 r18
	sti	r16 r1 0
	add	r6 r0 r4
L_cont_17443 : 
	ldi	r5 r6 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17448
	addi	r4 r17 1
	add	r5 r0 r6
	call	min_caml_create_array
	jump	L_cont_17446
L_else_17448 : 
	addi	r4 r17 1
	sti	r20 r2 0
	sti	r19 r2 1
	sti	r6 r2 2
	sti	r17 r2 3
	add	r19 r0 r4
	addi	r2 r2 4
	call	L_read_or_network_2047
	addi	r2 r2 -4
	ldi	r20 r2 0
	ldi	r19 r2 1
	ldi	r6 r2 2
	ldi	r17 r2 3
	add	r1 r4 r17
	sti	r6 r1 0
	add	r4 r0 r4
L_cont_17446 : 
	add	r1 r4 r19
	sti	r20 r1 0
	add	r4 r0 r4
	return
L_read_and_network_2049 : 
	addi	r20 r0 0
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_17461
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_17459
L_else_17461 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_17474
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_17472
L_else_17474 : 
	addi	r15 r0 2
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_17477
	addi	r4 r0 3
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_17475
L_else_17477 : 
	addi	r12 r0 3
	call	L_read_net_item_2045
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_17475 : 
	add	r1 r4 r17
	sti	r16 r1 0
	add	r4 r0 r4
L_cont_17472 : 
	add	r1 r4 r20
	sti	r18 r1 0
	add	r6 r0 r4
L_cont_17459 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_17463
	return
L_else_17463 : 
	addi	r4 r0 4155
	add	r1 r4 r19
	sti	r6 r1 0
	addi	r18 r19 1
	addi	r16 r0 0
	call	min_caml_read_int
	add	r17 r0 r4
	addi	r4 r0 -1
	bne	r17 r4 L_else_17466
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_17464
L_else_17466 : 
	addi	r15 r0 1
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_17471
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_17469
L_else_17471 : 
	addi	r12 r0 2
	call	L_read_net_item_2045
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_17469 : 
	add	r1 r4 r16
	sti	r17 r1 0
	add	r6 r0 r4
L_cont_17464 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_17468
	return
L_else_17468 : 
	addi	r4 r0 4155
	add	r1 r4 r18
	sti	r6 r1 0
	addi	r4 r18 1
	add	r19 r0 r4
	jump	L_read_and_network_2049
L_solver_rect_surface_2053 : 
	add	r1 r6 r7
	fldi	f2 r1 0
	fbne	f2 f0 L_else_17481
	addi	r5 r0 1
	jump	L_cont_17479
L_else_17481 : 
	addi	r5 r0 0
L_cont_17479 : 
	bne	r5 r0 L_else_17483
	ldi	r5 r4 4
	ldi	r9 r4 6
	add	r1 r6 r7
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_17486
	addi	r4 r0 0
	jump	L_cont_17484
L_else_17486 : 
	addi	r4 r0 1
L_cont_17484 : 
	xor	r4 r9 r4
	add	r1 r5 r7
	fldi	f2 r1 0
	bne	r4 r0 L_else_17489
	fsub	f2 f0 f2
	jump	L_cont_17487
L_else_17489 : 
	fadd	f2 f0 f2
L_cont_17487 : 
	fsub	f4 f2 f4
	add	r1 r6 r7
	fldi	f2 r1 0
	fdiv	f4 f4 f2
	add	r1 r6 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_17492
	fadd	f2 f0 f2
	jump	L_cont_17490
L_else_17492 : 
	fsub	f2 f0 f2
L_cont_17490 : 
	add	r1 r5 r8
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17495
	addi	r4 r0 0
	jump	L_cont_17493
L_else_17495 : 
	addi	r4 r0 1
L_cont_17493 : 
	bne	r4 r0 L_else_17497
	addi	r4 r0 0
	return
L_else_17497 : 
	add	r1 r6 r10
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_17500
	fadd	f2 f0 f2
	jump	L_cont_17498
L_else_17500 : 
	fsub	f2 f0 f2
L_cont_17498 : 
	add	r1 r5 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17503
	addi	r4 r0 0
	jump	L_cont_17501
L_else_17503 : 
	addi	r4 r0 1
L_cont_17501 : 
	bne	r4 r0 L_else_17505
	addi	r4 r0 0
	return
L_else_17505 : 
	addi	r4 r0 4145
	fsti	f4 r4 0
	addi	r4 r0 1
	return
L_else_17483 : 
	addi	r4 r0 0
	return
L_solver_surface_2068 : 
	ldi	r6 r4 4
	fldi	f2 r5 0
	fldi	f3 r6 0
	fmul	f3 f2 f3
	fldi	f4 r5 1
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r5 2
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fbgt	f4 f0 L_else_17509
	addi	r4 r0 0
	jump	L_cont_17507
L_else_17509 : 
	addi	r4 r0 1
L_cont_17507 : 
	bne	r4 r0 L_else_17511
	addi	r4 r0 0
	return
L_else_17511 : 
	addi	r4 r0 4145
	fldi	f2 r6 0
	fmul	f3 f2 f5
	fldi	f2 r6 1
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fldi	f3 r6 2
	fmul	f3 f3 f7
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_quadratic_2074 : 
	fmul	f3 f5 f5
	ldi	r4 r5 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f6 f6
	ldi	r4 r5 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f7
	ldi	r4 r5 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	ldi	r4 r5 3
	bne	r4 r0 L_else_17514
	fadd	f2 f0 f4
	return
L_else_17514 : 
	fmul	f3 f6 f7
	ldi	r4 r5 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f5
	ldi	r4 r5 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f2 f5 f6
	ldi	r4 r5 9
	fldi	f3 r4 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	return
L_solver_second_2087 : 
	fldi	f10 r5 0
	fldi	f9 r5 1
	fldi	f8 r5 2
	fmul	f3 f10 f10
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f9 f9
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f8 f8
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_17518
	fadd	f9 f0 f4
	jump	L_cont_17516
L_else_17518 : 
	fmul	f3 f9 f8
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f8 f10
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f10 f9
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f9 f4 f2
L_cont_17516 : 
	fbne	f9 f0 L_else_17521
	addi	r4 r0 1
	jump	L_cont_17519
L_else_17521 : 
	addi	r4 r0 0
L_cont_17519 : 
	bne	r4 r0 L_else_17523
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
	fmul	f4 f10 f7
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f8 f3 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_17526
	fadd	f8 f0 f8
	jump	L_cont_17524
L_else_17526 : 
	fmul	f2 f10 f6
	fmul	f3 f12 f7
	fadd	f3 f2 f3
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f2 f11 f7
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
	fadd	f8 f8 f2
L_cont_17524 : 
	fmul	f3 f5 f5
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
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
	bne	r4 r0 L_else_17529
	fadd	f3 f0 f4
	jump	L_cont_17527
L_else_17529 : 
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
L_cont_17527 : 
	ldi	r4 r6 1
	addi	r5 r0 3
	bne	r4 r5 L_else_17532
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_17530
L_else_17532 : 
	fadd	f2 f0 f3
L_cont_17530 : 
	fmul	f3 f8 f8
	fmul	f2 f9 f2
	fsub	f7 f3 f2
	fbgt	f7 f0 L_else_17535
	addi	r4 r0 0
	jump	L_cont_17533
L_else_17535 : 
	addi	r4 r0 1
L_cont_17533 : 
	bne	r4 r0 L_else_17537
	addi	r4 r0 0
	return
L_else_17537 : 
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_17540
	fldi	f6 r0 20
	jump	L_cont_17538
L_else_17540 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_17538 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f2 f7 f2
	ldi	r4 r6 6
	bne	r4 r0 L_else_17543
	fsub	f2 f0 f2
	jump	L_cont_17541
L_else_17543 : 
	fadd	f2 f0 f2
L_cont_17541 : 
	addi	r4 r0 4145
	fsub	f2 f2 f8
	fdiv	f2 f2 f9
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_17523 : 
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
	fbgt	f0 f2 L_else_17547
	fadd	f3 f0 f2
	jump	L_cont_17545
L_else_17547 : 
	fsub	f3 f0 f2
L_cont_17545 : 
	ldi	r4 r8 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_17550
	addi	r4 r0 0
	jump	L_cont_17548
L_else_17550 : 
	addi	r4 r0 1
L_cont_17548 : 
	bne	r4 r0 L_else_17553
	addi	r4 r0 0
	jump	L_cont_17551
L_else_17553 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_17602
	fadd	f3 f0 f2
	jump	L_cont_17600
L_else_17602 : 
	fsub	f3 f0 f2
L_cont_17600 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_17605
	addi	r4 r0 0
	jump	L_cont_17603
L_else_17605 : 
	addi	r4 r0 1
L_cont_17603 : 
	bne	r4 r0 L_else_17607
	addi	r4 r0 0
	jump	L_cont_17551
L_else_17607 : 
	addi	r5 r0 1
	fldi	f2 r6 1
	fbne	f2 f0 L_else_17610
	addi	r4 r0 1
	jump	L_cont_17608
L_else_17610 : 
	addi	r4 r0 0
L_cont_17608 : 
	sub	r4 r5 r4
L_cont_17551 : 
	bne	r4 r0 L_else_17555
	fldi	f2 r6 2
	fsub	f3 f2 f5
	fldi	f2 r6 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_17558
	fadd	f3 f0 f2
	jump	L_cont_17556
L_else_17558 : 
	fsub	f3 f0 f2
L_cont_17556 : 
	ldi	r4 r8 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_17561
	addi	r4 r0 0
	jump	L_cont_17559
L_else_17561 : 
	addi	r4 r0 1
L_cont_17559 : 
	bne	r4 r0 L_else_17564
	addi	r4 r0 0
	jump	L_cont_17562
L_else_17564 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_17591
	fadd	f3 f0 f2
	jump	L_cont_17589
L_else_17591 : 
	fsub	f3 f0 f2
L_cont_17589 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_17594
	addi	r4 r0 0
	jump	L_cont_17592
L_else_17594 : 
	addi	r4 r0 1
L_cont_17592 : 
	bne	r4 r0 L_else_17596
	addi	r4 r0 0
	jump	L_cont_17562
L_else_17596 : 
	addi	r5 r0 1
	fldi	f2 r6 3
	fbne	f2 f0 L_else_17599
	addi	r4 r0 1
	jump	L_cont_17597
L_else_17599 : 
	addi	r4 r0 0
L_cont_17597 : 
	sub	r4 r5 r4
L_cont_17562 : 
	bne	r4 r0 L_else_17566
	fldi	f2 r6 4
	fsub	f3 f2 f7
	fldi	f2 r6 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_17569
	fadd	f2 f0 f2
	jump	L_cont_17567
L_else_17569 : 
	fsub	f2 f0 f2
L_cont_17567 : 
	ldi	r4 r8 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_17572
	addi	r4 r0 0
	jump	L_cont_17570
L_else_17572 : 
	addi	r4 r0 1
L_cont_17570 : 
	bne	r4 r0 L_else_17575
	addi	r4 r0 0
	jump	L_cont_17573
L_else_17575 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_17580
	fadd	f2 f0 f2
	jump	L_cont_17578
L_else_17580 : 
	fsub	f2 f0 f2
L_cont_17578 : 
	ldi	r4 r8 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_17583
	addi	r4 r0 0
	jump	L_cont_17581
L_else_17583 : 
	addi	r4 r0 1
L_cont_17581 : 
	bne	r4 r0 L_else_17585
	addi	r4 r0 0
	jump	L_cont_17573
L_else_17585 : 
	addi	r4 r0 1
	fldi	f2 r6 5
	fbne	f2 f0 L_else_17588
	addi	r5 r0 1
	jump	L_cont_17586
L_else_17588 : 
	addi	r5 r0 0
L_cont_17586 : 
	sub	r4 r4 r5
L_cont_17573 : 
	bne	r4 r0 L_else_17577
	addi	r4 r0 0
	return
L_else_17577 : 
	addi	r4 r0 4145
	fsti	f4 r4 0
	addi	r4 r0 3
	return
L_else_17566 : 
	addi	r4 r0 4145
	fsti	f4 r4 0
	addi	r4 r0 2
	return
L_else_17555 : 
	addi	r4 r0 4145
	fsti	f4 r4 0
	addi	r4 r0 1
	return
L_solver_second_fast_2110 : 
	fldi	f5 r6 0
	fbne	f5 f0 L_else_17614
	addi	r4 r0 1
	jump	L_cont_17612
L_else_17614 : 
	addi	r4 r0 0
L_cont_17612 : 
	bne	r4 r0 L_else_17616
	fldi	f2 r6 1
	fmul	f3 f2 f9
	fldi	f2 r6 2
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f6
	fadd	f8 f3 f2
	fmul	f3 f9 f9
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f7 f7
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
	bne	r4 r0 L_else_17619
	fadd	f3 f0 f4
	jump	L_cont_17617
L_else_17619 : 
	fmul	f3 f7 f6
	ldi	r4 r7 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fmul	f3 f6 f9
	ldi	r4 r7 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f7
	ldi	r4 r7 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
L_cont_17617 : 
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_17622
	fldi	f2 r0 20
	fsub	f3 f3 f2
	jump	L_cont_17620
L_else_17622 : 
	fadd	f3 f0 f3
L_cont_17620 : 
	fmul	f2 f8 f8
	fmul	f3 f5 f3
	fsub	f7 f2 f3
	fbgt	f7 f0 L_else_17625
	addi	r4 r0 0
	jump	L_cont_17623
L_else_17625 : 
	addi	r4 r0 1
L_cont_17623 : 
	bne	r4 r0 L_else_17627
	addi	r4 r0 0
	return
L_else_17627 : 
	ldi	r4 r7 6
	bne	r4 r0 L_else_17630
	addi	r4 r0 4145
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_17633
	fldi	f6 r0 20
	jump	L_cont_17631
L_else_17633 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_17631 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f2 f7 f2
	fsub	f2 f8 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r4 0
	jump	L_cont_17628
L_else_17630 : 
	addi	r4 r0 4145
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_17636
	fldi	f6 r0 20
	jump	L_cont_17634
L_else_17636 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_17634 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f2 f7 f2
	fadd	f2 f8 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r4 0
L_cont_17628 : 
	addi	r4 r0 1
	return
L_else_17616 : 
	addi	r4 r0 0
	return
L_solver_second_fast2_2127 : 
	fldi	f6 r5 0
	fbne	f6 f0 L_else_17640
	addi	r7 r0 1
	jump	L_cont_17638
L_else_17640 : 
	addi	r7 r0 0
L_cont_17638 : 
	bne	r7 r0 L_else_17642
	fldi	f2 r5 1
	fmul	f5 f2 f5
	fldi	f2 r5 2
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r5 3
	fmul	f2 f2 f4
	fadd	f8 f3 f2
	fldi	f2 r4 3
	fmul	f3 f8 f8
	fmul	f2 f6 f2
	fsub	f7 f3 f2
	fbgt	f7 f0 L_else_17645
	addi	r4 r0 0
	jump	L_cont_17643
L_else_17645 : 
	addi	r4 r0 1
L_cont_17643 : 
	bne	r4 r0 L_else_17647
	addi	r4 r0 0
	return
L_else_17647 : 
	ldi	r4 r6 6
	bne	r4 r0 L_else_17650
	addi	r4 r0 4145
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_17653
	fldi	f6 r0 20
	jump	L_cont_17651
L_else_17653 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_17651 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f2 f7 f2
	fsub	f3 f8 f2
	fldi	f2 r5 4
	fmul	f2 f3 f2
	fsti	f2 r4 0
	jump	L_cont_17648
L_else_17650 : 
	addi	r4 r0 4145
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_17656
	fldi	f6 r0 20
	jump	L_cont_17654
L_else_17656 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_17654 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f2 f7 f2
	fadd	f3 f8 f2
	fldi	f2 r5 4
	fmul	f2 f3 f2
	fsti	f2 r4 0
L_cont_17648 : 
	addi	r4 r0 1
	return
L_else_17642 : 
	addi	r4 r0 0
	return
L_setup_rect_table_2137 : 
	addi	r4 r0 6
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r7 r0 r4
	fldi	f2 r8 0
	fbne	f2 f0 L_else_17660
	addi	r4 r0 1
	jump	L_cont_17658
L_else_17660 : 
	addi	r4 r0 0
L_cont_17658 : 
	bne	r4 r0 L_else_17663
	ldi	r5 r6 6
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_17690
	addi	r4 r0 0
	jump	L_cont_17688
L_else_17690 : 
	addi	r4 r0 1
L_cont_17688 : 
	xor	r5 r5 r4
	ldi	r4 r6 4
	fldi	f2 r4 0
	bne	r5 r0 L_else_17693
	fsub	f2 f0 f2
	jump	L_cont_17691
L_else_17693 : 
	fadd	f2 f0 f2
L_cont_17691 : 
	fsti	f2 r7 0
	fldi	f2 r0 20
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	fsti	f2 r7 1
	jump	L_cont_17661
L_else_17663 : 
	fldi	f2 r0 29
	fsti	f2 r7 1
L_cont_17661 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_17666
	addi	r4 r0 1
	jump	L_cont_17664
L_else_17666 : 
	addi	r4 r0 0
L_cont_17664 : 
	bne	r4 r0 L_else_17669
	ldi	r4 r6 6
	fldi	f2 r8 1
	fbgt	f0 f2 L_else_17684
	addi	r5 r0 0
	jump	L_cont_17682
L_else_17684 : 
	addi	r5 r0 1
L_cont_17682 : 
	xor	r4 r4 r5
	ldi	r5 r6 4
	fldi	f2 r5 1
	bne	r4 r0 L_else_17687
	fsub	f2 f0 f2
	jump	L_cont_17685
L_else_17687 : 
	fadd	f2 f0 f2
L_cont_17685 : 
	fsti	f2 r7 2
	fldi	f3 r0 20
	fldi	f2 r8 1
	fdiv	f2 f3 f2
	fsti	f2 r7 3
	jump	L_cont_17667
L_else_17669 : 
	fldi	f2 r0 29
	fsti	f2 r7 3
L_cont_17667 : 
	fldi	f2 r8 2
	fbne	f2 f0 L_else_17672
	addi	r4 r0 1
	jump	L_cont_17670
L_else_17672 : 
	addi	r4 r0 0
L_cont_17670 : 
	bne	r4 r0 L_else_17675
	ldi	r5 r6 6
	fldi	f2 r8 2
	fbgt	f0 f2 L_else_17678
	addi	r4 r0 0
	jump	L_cont_17676
L_else_17678 : 
	addi	r4 r0 1
L_cont_17676 : 
	xor	r5 r5 r4
	ldi	r4 r6 4
	fldi	f2 r4 2
	bne	r5 r0 L_else_17681
	fsub	f2 f0 f2
	jump	L_cont_17679
L_else_17681 : 
	fadd	f2 f0 f2
L_cont_17679 : 
	fsti	f2 r7 4
	fldi	f3 r0 20
	fldi	f2 r8 2
	fdiv	f2 f3 f2
	fsti	f2 r7 5
	jump	L_cont_17673
L_else_17675 : 
	fldi	f2 r0 29
	fsti	f2 r7 5
L_cont_17673 : 
	add	r4 r0 r7
	return
L_setup_surface_table_2140 : 
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
	fbgt	f3 f0 L_else_17697
	addi	r4 r0 0
	jump	L_cont_17695
L_else_17697 : 
	addi	r4 r0 1
L_cont_17695 : 
	bne	r4 r0 L_else_17700
	fldi	f2 r0 29
	fsti	f2 r5 0
	jump	L_cont_17698
L_else_17700 : 
	fldi	f2 r0 31
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
L_cont_17698 : 
	add	r4 r0 r5
	return
L_setup_second_table_2143 : 
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
	bne	r4 r0 L_else_17704
	fadd	f6 f0 f4
	jump	L_cont_17702
L_else_17704 : 
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
L_cont_17702 : 
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
	bne	r4 r0 L_else_17707
	fsti	f7 r5 1
	fsti	f8 r5 2
	fsti	f5 r5 3
	jump	L_cont_17705
L_else_17707 : 
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
L_cont_17705 : 
	fbne	f6 f0 L_else_17710
	addi	r4 r0 1
	jump	L_cont_17708
L_else_17710 : 
	addi	r4 r0 0
L_cont_17708 : 
	bne	r4 r0 L_else_17713
	fldi	f2 r0 20
	fdiv	f2 f2 f6
	fsti	f2 r5 4
	jump	L_cont_17711
L_else_17713 : 
L_cont_17711 : 
	add	r4 r0 r5
	return
L_iter_setup_dirvec_constants_2146 : 
	bgt	r0 r8 L_else_17716
	addi	r4 r0 5042
	add	r1 r4 r8
	ldi	r10 r1 0
	ldi	r9 r11 1
	ldi	r12 r11 0
	ldi	r5 r10 1
	addi	r4 r0 1
	bne	r5 r4 L_else_17719
	addi	r4 r0 6
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r6 r0 r4
	fldi	f2 r12 0
	fbne	f2 f0 L_else_17729
	addi	r4 r0 1
	jump	L_cont_17727
L_else_17729 : 
	addi	r4 r0 0
L_cont_17727 : 
	bne	r4 r0 L_else_17732
	ldi	r4 r10 6
	fldi	f2 r12 0
	fbgt	f0 f2 L_else_17759
	addi	r5 r0 0
	jump	L_cont_17757
L_else_17759 : 
	addi	r5 r0 1
L_cont_17757 : 
	xor	r4 r4 r5
	ldi	r5 r10 4
	fldi	f2 r5 0
	bne	r4 r0 L_else_17762
	fsub	f2 f0 f2
	jump	L_cont_17760
L_else_17762 : 
	fadd	f2 f0 f2
L_cont_17760 : 
	fsti	f2 r6 0
	fldi	f3 r0 20
	fldi	f2 r12 0
	fdiv	f2 f3 f2
	fsti	f2 r6 1
	jump	L_cont_17730
L_else_17732 : 
	fldi	f2 r0 29
	fsti	f2 r6 1
L_cont_17730 : 
	fldi	f2 r12 1
	fbne	f2 f0 L_else_17735
	addi	r4 r0 1
	jump	L_cont_17733
L_else_17735 : 
	addi	r4 r0 0
L_cont_17733 : 
	bne	r4 r0 L_else_17738
	ldi	r5 r10 6
	fldi	f2 r12 1
	fbgt	f0 f2 L_else_17753
	addi	r4 r0 0
	jump	L_cont_17751
L_else_17753 : 
	addi	r4 r0 1
L_cont_17751 : 
	xor	r5 r5 r4
	ldi	r4 r10 4
	fldi	f2 r4 1
	bne	r5 r0 L_else_17756
	fsub	f2 f0 f2
	jump	L_cont_17754
L_else_17756 : 
	fadd	f2 f0 f2
L_cont_17754 : 
	fsti	f2 r6 2
	fldi	f3 r0 20
	fldi	f2 r12 1
	fdiv	f2 f3 f2
	fsti	f2 r6 3
	jump	L_cont_17736
L_else_17738 : 
	fldi	f2 r0 29
	fsti	f2 r6 3
L_cont_17736 : 
	fldi	f2 r12 2
	fbne	f2 f0 L_else_17741
	addi	r4 r0 1
	jump	L_cont_17739
L_else_17741 : 
	addi	r4 r0 0
L_cont_17739 : 
	bne	r4 r0 L_else_17744
	ldi	r4 r10 6
	fldi	f2 r12 2
	fbgt	f0 f2 L_else_17747
	addi	r5 r0 0
	jump	L_cont_17745
L_else_17747 : 
	addi	r5 r0 1
L_cont_17745 : 
	xor	r4 r4 r5
	ldi	r5 r10 4
	fldi	f2 r5 2
	bne	r4 r0 L_else_17750
	fsub	f2 f0 f2
	jump	L_cont_17748
L_else_17750 : 
	fadd	f2 f0 f2
L_cont_17748 : 
	fsti	f2 r6 4
	fldi	f2 r0 20
	fldi	f3 r12 2
	fdiv	f2 f2 f3
	fsti	f2 r6 5
	jump	L_cont_17742
L_else_17744 : 
	fldi	f2 r0 29
	fsti	f2 r6 5
L_cont_17742 : 
	add	r1 r9 r8
	sti	r6 r1 0
	jump	L_cont_17717
L_else_17719 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_17764
	addi	r4 r0 4
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r5 r0 r4
	fldi	f3 r12 0
	ldi	r4 r10 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r12 1
	ldi	r4 r10 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fldi	f3 r12 2
	ldi	r4 r10 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f3 f0 L_else_17767
	addi	r4 r0 0
	jump	L_cont_17765
L_else_17767 : 
	addi	r4 r0 1
L_cont_17765 : 
	bne	r4 r0 L_else_17770
	fldi	f2 r0 29
	fsti	f2 r5 0
	jump	L_cont_17768
L_else_17770 : 
	fldi	f2 r0 31
	fdiv	f2 f2 f3
	fsti	f2 r5 0
	ldi	r4 r10 4
	fldi	f2 r4 0
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 1
	ldi	r4 r10 4
	fldi	f2 r4 1
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 2
	ldi	r4 r10 4
	fldi	f2 r4 2
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 3
L_cont_17768 : 
	add	r1 r9 r8
	sti	r5 r1 0
	jump	L_cont_17717
L_else_17764 : 
	addi	r4 r0 5
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r6 r0 r4
	fldi	f5 r12 0
	fldi	f6 r12 1
	fldi	f7 r12 2
	add	r5 r0 r10
	call	L_quadratic_2074
	fadd	f6 f0 f2
	fldi	f3 r12 0
	ldi	r4 r10 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fsub	f4 f0 f2
	fldi	f3 r12 1
	ldi	r4 r10 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fsub	f8 f0 f2
	fldi	f3 r12 2
	ldi	r4 r10 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fsub	f5 f0 f2
	fsti	f6 r6 0
	ldi	r4 r10 3
	bne	r4 r0 L_else_17773
	fsti	f4 r6 1
	fsti	f8 r6 2
	fsti	f5 r6 3
	jump	L_cont_17771
L_else_17773 : 
	fldi	f3 r12 2
	ldi	r4 r10 9
	fldi	f2 r4 1
	fmul	f7 f3 f2
	fldi	f3 r12 1
	ldi	r4 r10 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f7 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fsub	f2 f4 f2
	fsti	f2 r6 1
	fldi	f3 r12 2
	ldi	r4 r10 9
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r12 0
	ldi	r4 r10 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fsub	f2 f8 f2
	fsti	f2 r6 2
	fldi	f3 r12 1
	ldi	r4 r10 9
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r12 0
	ldi	r4 r10 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fsub	f2 f5 f2
	fsti	f2 r6 3
L_cont_17771 : 
	fbne	f6 f0 L_else_17776
	addi	r4 r0 1
	jump	L_cont_17774
L_else_17776 : 
	addi	r4 r0 0
L_cont_17774 : 
	bne	r4 r0 L_else_17779
	fldi	f2 r0 20
	fdiv	f2 f2 f6
	fsti	f2 r6 4
	jump	L_cont_17777
L_else_17779 : 
L_cont_17777 : 
	add	r1 r9 r8
	sti	r6 r1 0
L_cont_17717 : 
	addi	r10 r8 -1
	bgt	r0 r10 L_else_17721
	addi	r4 r0 5042
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_17724
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_17722
L_else_17724 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_17726
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_17722
L_else_17726 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_17722 : 
	addi	r4 r10 -1
	add	r8 r0 r4
	jump	L_iter_setup_dirvec_constants_2146
L_else_17721 : 
	return
L_else_17716 : 
	return
L_setup_startp_constants_2151 : 
	bgt	r0 r7 L_else_17782
	addi	r4 r0 5042
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
	bne	r5 r4 L_else_17785
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
	jump	L_cont_17783
L_else_17785 : 
	addi	r4 r0 2
	bgt	r5 r4 L_else_17787
	jump	L_cont_17783
L_else_17787 : 
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
	bne	r4 r0 L_else_17790
	fadd	f3 f0 f3
	jump	L_cont_17788
L_else_17790 : 
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
L_cont_17788 : 
	addi	r4 r0 3
	bne	r5 r4 L_else_17793
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_17791
L_else_17793 : 
	fadd	f2 f0 f3
L_cont_17791 : 
	fsti	f2 r8 3
L_cont_17783 : 
	addi	r4 r7 -1
	add	r7 r0 r4
	jump	L_setup_startp_constants_2151
L_else_17782 : 
	return
L_is_outside_2171 : 
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f3 f3 f2
	ldi	r4 r7 5
	fldi	f2 r4 1
	fsub	f6 f5 f2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f7 f4 f2
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_17796
	fbgt	f0 f3 L_else_17799
	fadd	f3 f0 f3
	jump	L_cont_17797
L_else_17799 : 
	fsub	f3 f0 f3
L_cont_17797 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_17802
	addi	r4 r0 0
	jump	L_cont_17800
L_else_17802 : 
	addi	r4 r0 1
L_cont_17800 : 
	bne	r4 r0 L_else_17805
	addi	r4 r0 0
	jump	L_cont_17803
L_else_17805 : 
	fbgt	f0 f6 L_else_17810
	fadd	f3 f0 f6
	jump	L_cont_17808
L_else_17810 : 
	fsub	f3 f0 f6
L_cont_17808 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_17813
	addi	r4 r0 0
	jump	L_cont_17811
L_else_17813 : 
	addi	r4 r0 1
L_cont_17811 : 
	bne	r4 r0 L_else_17815
	addi	r4 r0 0
	jump	L_cont_17803
L_else_17815 : 
	fbgt	f0 f7 L_else_17818
	fadd	f3 f0 f7
	jump	L_cont_17816
L_else_17818 : 
	fsub	f3 f0 f7
L_cont_17816 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_17820
	addi	r4 r0 0
	jump	L_cont_17803
L_else_17820 : 
	addi	r4 r0 1
L_cont_17803 : 
	bne	r4 r0 L_else_17807
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	return
L_else_17807 : 
	ldi	r4 r7 6
	add	r4 r0 r4
	return
L_else_17796 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_17822
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f2 f3
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fldi	f3 r4 2
	fmul	f3 f3 f7
	fadd	f2 f2 f3
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_17825
	addi	r4 r0 0
	jump	L_cont_17823
L_else_17825 : 
	addi	r4 r0 1
L_cont_17823 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	return
L_else_17822 : 
	add	r5 r0 r7
	fadd	f5 f0 f3
	call	L_quadratic_2074
	fadd	f3 f0 f2
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_17828
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_17826
L_else_17828 : 
	fadd	f2 f0 f3
L_cont_17826 : 
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_17831
	addi	r4 r0 0
	jump	L_cont_17829
L_else_17831 : 
	addi	r4 r0 1
L_cont_17829 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	return
L_check_all_inside_2176 : 
	add	r1 r9 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17834
	addi	r4 r0 1
	return
L_else_17834 : 
	addi	r4 r0 5042
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
	bne	r5 r4 L_else_17837
	fbgt	f0 f7 L_else_17846
	fadd	f3 f0 f7
	jump	L_cont_17844
L_else_17846 : 
	fsub	f3 f0 f7
L_cont_17844 : 
	ldi	r4 r8 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_17849
	addi	r4 r0 0
	jump	L_cont_17847
L_else_17849 : 
	addi	r4 r0 1
L_cont_17847 : 
	bne	r4 r0 L_else_17852
	addi	r4 r0 0
	jump	L_cont_17850
L_else_17852 : 
	fbgt	f0 f6 L_else_17857
	fadd	f3 f0 f6
	jump	L_cont_17855
L_else_17857 : 
	fsub	f3 f0 f6
L_cont_17855 : 
	ldi	r4 r8 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_17860
	addi	r4 r0 0
	jump	L_cont_17858
L_else_17860 : 
	addi	r4 r0 1
L_cont_17858 : 
	bne	r4 r0 L_else_17862
	addi	r4 r0 0
	jump	L_cont_17850
L_else_17862 : 
	fbgt	f0 f5 L_else_17865
	fadd	f3 f0 f5
	jump	L_cont_17863
L_else_17865 : 
	fsub	f3 f0 f5
L_cont_17863 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_17867
	addi	r4 r0 0
	jump	L_cont_17850
L_else_17867 : 
	addi	r4 r0 1
L_cont_17850 : 
	bne	r4 r0 L_else_17854
	addi	r5 r0 1
	ldi	r4 r8 6
	sub	r4 r5 r4
	jump	L_cont_17835
L_else_17854 : 
	ldi	r4 r8 6
	add	r4 r0 r4
	jump	L_cont_17835
L_else_17837 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_17869
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
	fbgt	f0 f2 L_else_17872
	addi	r4 r0 0
	jump	L_cont_17870
L_else_17872 : 
	addi	r4 r0 1
L_cont_17870 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_17835
L_else_17869 : 
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
	bne	r4 r0 L_else_17875
	fadd	f3 f0 f4
	jump	L_cont_17873
L_else_17875 : 
	fmul	f3 f6 f5
	ldi	r4 r8 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f7
	ldi	r4 r8 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f6
	ldi	r4 r8 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
L_cont_17873 : 
	ldi	r4 r8 1
	addi	r5 r0 3
	bne	r4 r5 L_else_17878
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_17876
L_else_17878 : 
	fadd	f2 f0 f3
L_cont_17876 : 
	addi	r6 r0 1
	ldi	r5 r8 6
	fbgt	f0 f2 L_else_17881
	addi	r4 r0 0
	jump	L_cont_17879
L_else_17881 : 
	addi	r4 r0 1
L_cont_17879 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
L_cont_17835 : 
	bne	r4 r0 L_else_17839
	addi	r8 r7 1
	add	r1 r9 r8
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_17841
	addi	r4 r0 1
	return
L_else_17841 : 
	addi	r5 r0 5042
	add	r1 r5 r4
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2171
	bne	r4 r0 L_else_17843
	addi	r4 r8 1
	add	r7 r0 r4
	jump	L_check_all_inside_2176
L_else_17843 : 
	addi	r4 r0 0
	return
L_else_17839 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2182 : 
	add	r1 r10 r11
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17884
	addi	r4 r0 0
	return
L_else_17884 : 
	add	r1 r10 r11
	ldi	r9 r1 0
	addi	r7 r0 4977
	addi	r5 r0 4114
	addi	r4 r0 5042
	add	r1 r4 r9
	ldi	r8 r1 0
	fldi	f3 r5 0
	ldi	r4 r8 5
	fldi	f2 r4 0
	fsub	f6 f3 f2
	fldi	f3 r5 1
	ldi	r4 r8 5
	fldi	f2 r4 1
	fsub	f5 f3 f2
	fldi	f3 r5 2
	ldi	r4 r8 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r4 r7 1
	add	r1 r4 r9
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_17887
	ldi	r7 r7 0
	call	L_solver_rect_fast_2097
	add	r5 r0 r4
	jump	L_cont_17885
L_else_17887 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_17905
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_17908
	addi	r4 r0 0
	jump	L_cont_17906
L_else_17908 : 
	addi	r4 r0 1
L_cont_17906 : 
	bne	r4 r0 L_else_17910
	addi	r5 r0 0
	jump	L_cont_17885
L_else_17910 : 
	addi	r4 r0 4145
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsti	f2 r4 0
	addi	r5 r0 1
	jump	L_cont_17885
L_else_17905 : 
	add	r7 r0 r8
	fadd	f9 f0 f6
	fadd	f6 f0 f7
	fadd	f7 f0 f5
	call	L_solver_second_fast_2110
	add	r5 r0 r4
L_cont_17885 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	bne	r5 r0 L_else_17890
	addi	r4 r0 0
	jump	L_cont_17888
L_else_17890 : 
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_17903
	addi	r4 r0 0
	jump	L_cont_17888
L_else_17903 : 
	addi	r4 r0 1
L_cont_17888 : 
	bne	r4 r0 L_else_17892
	addi	r4 r0 5042
	add	r1 r4 r9
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_17894
	addi	r4 r0 0
	return
L_else_17894 : 
	addi	r4 r11 1
	add	r11 r0 r4
	jump	L_shadow_check_and_group_2182
L_else_17892 : 
	fldi	f3 r0 33
	fadd	f4 f2 f3
	addi	r4 r0 4111
	fldi	f2 r4 0
	fmul	f3 f2 f4
	addi	r4 r0 4114
	fldi	f2 r4 0
	fadd	f8 f3 f2
	addi	r4 r0 4111
	fldi	f2 r4 1
	fmul	f3 f2 f4
	addi	r4 r0 4114
	fldi	f2 r4 1
	fadd	f10 f3 f2
	addi	r4 r0 4111
	fldi	f2 r4 2
	fmul	f3 f2 f4
	addi	r4 r0 4114
	fldi	f2 r4 2
	fadd	f9 f3 f2
	addi	r4 r0 0
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17897
	addi	r4 r0 1
	jump	L_cont_17895
L_else_17897 : 
	addi	r4 r0 5042
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2171
	bne	r4 r0 L_else_17901
	addi	r7 r0 1
	add	r9 r0 r10
	call	L_check_all_inside_2176
	jump	L_cont_17895
L_else_17901 : 
	addi	r4 r0 0
L_cont_17895 : 
	bne	r4 r0 L_else_17899
	addi	r4 r11 1
	add	r11 r0 r4
	jump	L_shadow_check_and_group_2182
L_else_17899 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2185 : 
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17913
	addi	r4 r0 0
	return
L_else_17913 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_17915
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17917
	addi	r4 r0 0
	return
L_else_17917 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_17919
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_17921
	addi	r4 r0 0
	return
L_else_17921 : 
	addi	r5 r0 4155
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_17923
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17925
	addi	r4 r0 0
	return
L_else_17925 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_17927
	addi	r4 r12 1
	add	r12 r0 r4
	jump	L_shadow_check_one_or_group_2185
L_else_17927 : 
	addi	r4 r0 1
	return
L_else_17923 : 
	addi	r4 r0 1
	return
L_else_17919 : 
	addi	r4 r0 1
	return
L_else_17915 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2188 : 
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r6 r16 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_17930
	addi	r4 r0 0
	return
L_else_17930 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_17933
	addi	r4 r0 1
	jump	L_cont_17931
L_else_17933 : 
	addi	r7 r0 4977
	addi	r5 r0 4114
	addi	r4 r0 5042
	add	r1 r4 r6
	ldi	r8 r1 0
	fldi	f3 r5 0
	ldi	r4 r8 5
	fldi	f2 r4 0
	fsub	f6 f3 f2
	fldi	f3 r5 1
	ldi	r4 r8 5
	fldi	f2 r4 1
	fsub	f5 f3 f2
	fldi	f3 r5 2
	ldi	r4 r8 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r4 r7 1
	add	r1 r4 r6
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_17953
	ldi	r7 r7 0
	call	L_solver_rect_fast_2097
	jump	L_cont_17951
L_else_17953 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_17977
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_17980
	addi	r4 r0 0
	jump	L_cont_17978
L_else_17980 : 
	addi	r4 r0 1
L_cont_17978 : 
	bne	r4 r0 L_else_17982
	addi	r4 r0 0
	jump	L_cont_17951
L_else_17982 : 
	addi	r4 r0 4145
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsti	f2 r4 0
	addi	r4 r0 1
	jump	L_cont_17951
L_else_17977 : 
	add	r7 r0 r8
	fadd	f9 f0 f6
	fadd	f6 f0 f7
	fadd	f7 f0 f5
	call	L_solver_second_fast_2110
L_cont_17951 : 
	bne	r4 r0 L_else_17955
	addi	r4 r0 0
	jump	L_cont_17931
L_else_17955 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_17958
	addi	r4 r0 0
	jump	L_cont_17956
L_else_17958 : 
	addi	r4 r0 1
L_cont_17956 : 
	bne	r4 r0 L_else_17960
	addi	r4 r0 0
	jump	L_cont_17931
L_else_17960 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17963
	addi	r4 r0 0
	jump	L_cont_17961
L_else_17963 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_17967
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17969
	addi	r4 r0 0
	jump	L_cont_17961
L_else_17969 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_17971
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17973
	addi	r4 r0 0
	jump	L_cont_17961
L_else_17973 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_17975
	addi	r12 r0 4
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_17961
L_else_17975 : 
	addi	r4 r0 1
	jump	L_cont_17961
L_else_17971 : 
	addi	r4 r0 1
	jump	L_cont_17961
L_else_17967 : 
	addi	r4 r0 1
L_cont_17961 : 
	bne	r4 r0 L_else_17965
	addi	r4 r0 0
	jump	L_cont_17931
L_else_17965 : 
	addi	r4 r0 1
L_cont_17931 : 
	bne	r4 r0 L_else_17935
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2188
L_else_17935 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17938
	addi	r4 r0 0
	jump	L_cont_17936
L_else_17938 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_17942
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17944
	addi	r4 r0 0
	jump	L_cont_17936
L_else_17944 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_17946
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_17948
	addi	r4 r0 0
	jump	L_cont_17936
L_else_17948 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2182
	bne	r4 r0 L_else_17950
	addi	r12 r0 4
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2185
	jump	L_cont_17936
L_else_17950 : 
	addi	r4 r0 1
	jump	L_cont_17936
L_else_17946 : 
	addi	r4 r0 1
	jump	L_cont_17936
L_else_17942 : 
	addi	r4 r0 1
L_cont_17936 : 
	bne	r4 r0 L_else_17940
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2188
L_else_17940 : 
	addi	r4 r0 1
	return
L_solve_each_element_2191 : 
	add	r1 r11 r13
	ldi	r14 r1 0
	addi	r4 r0 -1
	bne	r14 r4 L_else_17985
	return
L_else_17985 : 
	addi	r5 r0 4135
	addi	r4 r0 5042
	add	r1 r4 r14
	ldi	r15 r1 0
	fldi	f3 r5 0
	ldi	r4 r15 5
	fldi	f2 r4 0
	fsub	f8 f3 f2
	fldi	f3 r5 1
	ldi	r4 r15 5
	fldi	f2 r4 1
	fsub	f6 f3 f2
	fldi	f3 r5 2
	ldi	r4 r15 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r5 r15 1
	addi	r4 r0 1
	bne	r5 r4 L_else_17988
	addi	r7 r0 0
	addi	r8 r0 1
	addi	r10 r0 2
	add	r4 r0 r15
	add	r6 r0 r12
	fadd	f4 f0 f8
	fadd	f3 f0 f6
	fadd	f5 f0 f7
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_18012
	addi	r7 r0 1
	addi	r8 r0 2
	addi	r10 r0 0
	add	r4 r0 r15
	add	r6 r0 r12
	fadd	f4 f0 f6
	fadd	f3 f0 f7
	fadd	f5 f0 f8
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_18014
	addi	r7 r0 2
	addi	r8 r0 0
	addi	r10 r0 1
	add	r4 r0 r15
	add	r6 r0 r12
	fadd	f4 f0 f7
	fadd	f3 f0 f8
	fadd	f5 f0 f6
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_18016
	addi	r10 r0 0
	jump	L_cont_17986
L_else_18016 : 
	addi	r10 r0 3
	jump	L_cont_17986
L_else_18014 : 
	addi	r10 r0 2
	jump	L_cont_17986
L_else_18012 : 
	addi	r10 r0 1
	jump	L_cont_17986
L_else_17988 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18018
	add	r4 r0 r15
	add	r5 r0 r12
	fadd	f5 f0 f8
	call	L_solver_surface_2068
	add	r10 r0 r4
	jump	L_cont_17986
L_else_18018 : 
	add	r6 r0 r15
	add	r5 r0 r12
	fadd	f5 f0 f8
	call	L_solver_second_2087
	add	r10 r0 r4
L_cont_17986 : 
	bne	r10 r0 L_else_17990
	addi	r4 r0 5042
	add	r1 r4 r14
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_17992
	return
L_else_17992 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_solve_each_element_2191
L_else_17990 : 
	addi	r4 r0 4145
	fldi	f3 r4 0
	fbgt	f3 f0 L_else_17995
	addi	r4 r0 0
	jump	L_cont_17993
L_else_17995 : 
	addi	r4 r0 1
L_cont_17993 : 
	bne	r4 r0 L_else_17998
	jump	L_cont_17996
L_else_17998 : 
	addi	r4 r0 4154
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_18001
	addi	r4 r0 0
	jump	L_cont_17999
L_else_18001 : 
	addi	r4 r0 1
L_cont_17999 : 
	bne	r4 r0 L_else_18003
	jump	L_cont_17996
L_else_18003 : 
	fldi	f2 r0 33
	fadd	f14 f3 f2
	fldi	f2 r12 0
	fmul	f3 f2 f14
	addi	r4 r0 4135
	fldi	f2 r4 0
	fadd	f13 f3 f2
	fldi	f2 r12 1
	fmul	f3 f2 f14
	addi	r4 r0 4135
	fldi	f2 r4 1
	fadd	f12 f3 f2
	fldi	f2 r12 2
	fmul	f3 f2 f14
	addi	r4 r0 4135
	fldi	f2 r4 2
	fadd	f11 f3 f2
	addi	r4 r0 0
	add	r1 r11 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18006
	addi	r4 r0 1
	jump	L_cont_18004
L_else_18006 : 
	addi	r4 r0 5042
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f13
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2171
	bne	r4 r0 L_else_18010
	addi	r7 r0 1
	add	r9 r0 r11
	fadd	f8 f0 f13
	fadd	f10 f0 f12
	fadd	f9 f0 f11
	call	L_check_all_inside_2176
	jump	L_cont_18004
L_else_18010 : 
	addi	r4 r0 0
L_cont_18004 : 
	bne	r4 r0 L_else_18008
	jump	L_cont_17996
L_else_18008 : 
	addi	r4 r0 4154
	fsti	f14 r4 0
	addi	r4 r0 4114
	fsti	f13 r4 0
	fsti	f12 r4 1
	fsti	f11 r4 2
	addi	r4 r0 4117
	sti	r14 r4 0
	addi	r4 r0 4146
	sti	r10 r4 0
L_cont_17996 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_solve_each_element_2191
L_solve_one_or_network_2195 : 
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18021
	return
L_else_18021 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r18
	call	L_solve_each_element_2191
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_18023
	return
L_else_18023 : 
	addi	r5 r0 4155
	add	r1 r5 r4
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r18
	call	L_solve_each_element_2191
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18025
	return
L_else_18025 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r18
	call	L_solve_each_element_2191
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18027
	return
L_else_18027 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r18
	call	L_solve_each_element_2191
	addi	r4 r16 1
	add	r16 r0 r4
	jump	L_solve_one_or_network_2195
L_trace_or_matrix_2199 : 
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r6 r17 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_18030
	return
L_else_18030 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_18033
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18099
	jump	L_cont_18031
L_else_18099 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r21
	call	L_solve_each_element_2191
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18101
	jump	L_cont_18031
L_else_18101 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r21
	call	L_solve_each_element_2191
	addi	r4 r0 3
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_18103
	jump	L_cont_18031
L_else_18103 : 
	addi	r5 r0 4155
	add	r1 r5 r4
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r21
	call	L_solve_each_element_2191
	addi	r16 r0 4
	add	r18 r0 r21
	call	L_solve_one_or_network_2195
	jump	L_cont_18031
L_else_18033 : 
	addi	r5 r0 4135
	addi	r4 r0 5042
	add	r1 r4 r6
	ldi	r11 r1 0
	fldi	f3 r5 0
	ldi	r4 r11 5
	fldi	f2 r4 0
	fsub	f8 f3 f2
	fldi	f3 r5 1
	ldi	r4 r11 5
	fldi	f2 r4 1
	fsub	f6 f3 f2
	fldi	f3 r5 2
	ldi	r4 r11 5
	fldi	f2 r4 2
	fsub	f7 f3 f2
	ldi	r5 r11 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18106
	addi	r7 r0 0
	addi	r8 r0 1
	addi	r10 r0 2
	add	r4 r0 r11
	add	r6 r0 r21
	fadd	f4 f0 f8
	fadd	f3 f0 f6
	fadd	f5 f0 f7
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_18121
	addi	r7 r0 1
	addi	r8 r0 2
	addi	r10 r0 0
	add	r4 r0 r11
	add	r6 r0 r21
	fadd	f4 f0 f6
	fadd	f3 f0 f7
	fadd	f5 f0 f8
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_18123
	addi	r7 r0 2
	addi	r8 r0 0
	addi	r10 r0 1
	add	r4 r0 r11
	add	r6 r0 r21
	fadd	f4 f0 f7
	fadd	f3 f0 f8
	fadd	f5 f0 f6
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_18125
	addi	r4 r0 0
	jump	L_cont_18104
L_else_18125 : 
	addi	r4 r0 3
	jump	L_cont_18104
L_else_18123 : 
	addi	r4 r0 2
	jump	L_cont_18104
L_else_18121 : 
	addi	r4 r0 1
	jump	L_cont_18104
L_else_18106 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18127
	add	r4 r0 r11
	add	r5 r0 r21
	fadd	f5 f0 f8
	call	L_solver_surface_2068
	jump	L_cont_18104
L_else_18127 : 
	add	r6 r0 r11
	add	r5 r0 r21
	fadd	f5 f0 f8
	call	L_solver_second_2087
L_cont_18104 : 
	bne	r4 r0 L_else_18108
	jump	L_cont_18031
L_else_18108 : 
	addi	r4 r0 4145
	fldi	f3 r4 0
	addi	r4 r0 4154
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_18111
	addi	r4 r0 0
	jump	L_cont_18109
L_else_18111 : 
	addi	r4 r0 1
L_cont_18109 : 
	bne	r4 r0 L_else_18113
	jump	L_cont_18031
L_else_18113 : 
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_18115
	jump	L_cont_18031
L_else_18115 : 
	addi	r5 r0 4155
	add	r1 r5 r4
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r21
	call	L_solve_each_element_2191
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18117
	jump	L_cont_18031
L_else_18117 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r21
	call	L_solve_each_element_2191
	addi	r4 r0 3
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_18119
	jump	L_cont_18031
L_else_18119 : 
	addi	r5 r0 4155
	add	r1 r5 r4
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r21
	call	L_solve_each_element_2191
	addi	r16 r0 4
	add	r18 r0 r21
	call	L_solve_one_or_network_2195
L_cont_18031 : 
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r6 r17 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_18035
	return
L_else_18035 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_18038
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18040
	jump	L_cont_18036
L_else_18040 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r21
	call	L_solve_each_element_2191
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18042
	jump	L_cont_18036
L_else_18042 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r21
	call	L_solve_each_element_2191
	addi	r16 r0 3
	add	r18 r0 r21
	call	L_solve_one_or_network_2195
	jump	L_cont_18036
L_else_18038 : 
	addi	r5 r0 4135
	addi	r4 r0 5042
	add	r1 r4 r6
	ldi	r11 r1 0
	fldi	f3 r5 0
	ldi	r4 r11 5
	fldi	f2 r4 0
	fsub	f12 f3 f2
	fldi	f3 r5 1
	ldi	r4 r11 5
	fldi	f2 r4 1
	fsub	f11 f3 f2
	fldi	f3 r5 2
	ldi	r4 r11 5
	fldi	f2 r4 2
	fsub	f10 f3 f2
	ldi	r5 r11 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18045
	addi	r7 r0 0
	addi	r8 r0 1
	addi	r10 r0 2
	add	r4 r0 r11
	add	r6 r0 r21
	fadd	f4 f0 f12
	fadd	f3 f0 f11
	fadd	f5 f0 f10
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_18058
	addi	r7 r0 1
	addi	r8 r0 2
	addi	r10 r0 0
	add	r4 r0 r11
	add	r6 r0 r21
	fadd	f4 f0 f11
	fadd	f3 f0 f10
	fadd	f5 f0 f12
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_18060
	addi	r7 r0 2
	addi	r8 r0 0
	addi	r10 r0 1
	add	r4 r0 r11
	add	r6 r0 r21
	fadd	f4 f0 f10
	fadd	f3 f0 f12
	fadd	f5 f0 f11
	call	L_solver_rect_surface_2053
	bne	r4 r0 L_else_18062
	addi	r4 r0 0
	jump	L_cont_18043
L_else_18062 : 
	addi	r4 r0 3
	jump	L_cont_18043
L_else_18060 : 
	addi	r4 r0 2
	jump	L_cont_18043
L_else_18058 : 
	addi	r4 r0 1
	jump	L_cont_18043
L_else_18045 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18064
	ldi	r5 r11 4
	fldi	f3 r21 0
	fldi	f2 r5 0
	fmul	f4 f3 f2
	fldi	f2 r21 1
	fldi	f3 r5 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r21 2
	fldi	f3 r5 2
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fbgt	f4 f0 L_else_18067
	addi	r4 r0 0
	jump	L_cont_18065
L_else_18067 : 
	addi	r4 r0 1
L_cont_18065 : 
	bne	r4 r0 L_else_18069
	addi	r4 r0 0
	jump	L_cont_18043
L_else_18069 : 
	addi	r4 r0 4145
	fldi	f2 r5 0
	fmul	f3 f2 f12
	fldi	f2 r5 1
	fmul	f2 f2 f11
	fadd	f3 f3 f2
	fldi	f2 r5 2
	fmul	f2 f2 f10
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r4 0
	addi	r4 r0 1
	jump	L_cont_18043
L_else_18064 : 
	fldi	f5 r21 0
	fldi	f6 r21 1
	fldi	f7 r21 2
	add	r5 r0 r11
	call	L_quadratic_2074
	fadd	f8 f0 f2
	fbne	f8 f0 L_else_18072
	addi	r4 r0 1
	jump	L_cont_18070
L_else_18072 : 
	addi	r4 r0 0
L_cont_18070 : 
	bne	r4 r0 L_else_18074
	fldi	f9 r21 0
	fldi	f5 r21 1
	fldi	f7 r21 2
	fmul	f3 f9 f12
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f5 f11
	ldi	r4 r11 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f10
	ldi	r4 r11 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f6 f3 f2
	ldi	r4 r11 3
	bne	r4 r0 L_else_18077
	fadd	f9 f0 f6
	jump	L_cont_18075
L_else_18077 : 
	fmul	f3 f7 f11
	fmul	f2 f5 f10
	fadd	f3 f3 f2
	ldi	r4 r11 9
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f9 f10
	fmul	f2 f7 f12
	fadd	f4 f4 f2
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f2 f9 f11
	fmul	f3 f5 f12
	fadd	f3 f2 f3
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fadd	f9 f6 f2
L_cont_18075 : 
	add	r5 r0 r11
	fadd	f5 f0 f12
	fadd	f6 f0 f11
	fadd	f7 f0 f10
	call	L_quadratic_2074
	fadd	f3 f0 f2
	ldi	r5 r11 1
	addi	r4 r0 3
	bne	r5 r4 L_else_18080
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_18078
L_else_18080 : 
	fadd	f2 f0 f3
L_cont_18078 : 
	fmul	f3 f9 f9
	fmul	f2 f8 f2
	fsub	f7 f3 f2
	fbgt	f7 f0 L_else_18083
	addi	r4 r0 0
	jump	L_cont_18081
L_else_18083 : 
	addi	r4 r0 1
L_cont_18081 : 
	bne	r4 r0 L_else_18085
	addi	r4 r0 0
	jump	L_cont_18043
L_else_18085 : 
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_18088
	fldi	f4 r0 20
	jump	L_cont_18086
L_else_18088 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_18086 : 
	fldi	f2 r0 26
	fmul	f2 f2 f4
	fsub	f3 f4 f3
	fbgt	f0 f3 L_else_18091
	fadd	f3 f0 f3
	jump	L_cont_18089
L_else_18091 : 
	fsub	f3 f0 f3
L_cont_18089 : 
	fbgt	f2 f3 L_else_18094
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f6 f3 f2
	fadd	f5 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_18092
L_else_18094 : 
	fadd	f2 f0 f4
L_cont_18092 : 
	fmul	f2 f7 f2
	ldi	r4 r11 6
	bne	r4 r0 L_else_18097
	fsub	f2 f0 f2
	jump	L_cont_18095
L_else_18097 : 
	fadd	f2 f0 f2
L_cont_18095 : 
	addi	r4 r0 4145
	fsub	f2 f2 f9
	fdiv	f2 f2 f8
	fsti	f2 r4 0
	addi	r4 r0 1
	jump	L_cont_18043
L_else_18074 : 
	addi	r4 r0 0
L_cont_18043 : 
	bne	r4 r0 L_else_18047
	jump	L_cont_18036
L_else_18047 : 
	addi	r4 r0 4145
	fldi	f3 r4 0
	addi	r4 r0 4154
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_18050
	addi	r4 r0 0
	jump	L_cont_18048
L_else_18050 : 
	addi	r4 r0 1
L_cont_18048 : 
	bne	r4 r0 L_else_18052
	jump	L_cont_18036
L_else_18052 : 
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18054
	jump	L_cont_18036
L_else_18054 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r21
	call	L_solve_each_element_2191
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_18056
	jump	L_cont_18036
L_else_18056 : 
	addi	r5 r0 4155
	add	r1 r5 r4
	ldi	r11 r1 0
	addi	r13 r0 0
	add	r12 r0 r21
	call	L_solve_each_element_2191
	addi	r16 r0 3
	add	r18 r0 r21
	call	L_solve_one_or_network_2195
L_cont_18036 : 
	addi	r4 r19 1
	add	r19 r0 r4
	jump	L_trace_or_matrix_2199
L_solve_each_element_fast_2205 : 
	ldi	r9 r10 0
	add	r1 r11 r12
	ldi	r14 r1 0
	addi	r4 r0 -1
	bne	r14 r4 L_else_18130
	return
L_else_18130 : 
	addi	r4 r0 5042
	add	r1 r4 r14
	ldi	r8 r1 0
	ldi	r7 r8 10
	fldi	f6 r7 0
	fldi	f5 r7 1
	fldi	f7 r7 2
	ldi	r4 r10 1
	add	r1 r4 r14
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18133
	ldi	r7 r10 0
	call	L_solver_rect_fast_2097
	add	r13 r0 r4
	jump	L_cont_18131
L_else_18133 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18157
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_18160
	addi	r4 r0 0
	jump	L_cont_18158
L_else_18160 : 
	addi	r4 r0 1
L_cont_18158 : 
	bne	r4 r0 L_else_18162
	addi	r13 r0 0
	jump	L_cont_18131
L_else_18162 : 
	addi	r4 r0 4145
	fldi	f2 r6 0
	fldi	f3 r7 3
	fmul	f2 f2 f3
	fsti	f2 r4 0
	addi	r13 r0 1
	jump	L_cont_18131
L_else_18157 : 
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	fadd	f3 f0 f5
	fadd	f4 f0 f7
	fadd	f5 f0 f6
	call	L_solver_second_fast2_2127
	add	r13 r0 r4
L_cont_18131 : 
	bne	r13 r0 L_else_18135
	addi	r4 r0 5042
	add	r1 r4 r14
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_18137
	return
L_else_18137 : 
	addi	r4 r12 1
	add	r12 r0 r4
	jump	L_solve_each_element_fast_2205
L_else_18135 : 
	addi	r4 r0 4145
	fldi	f3 r4 0
	fbgt	f3 f0 L_else_18140
	addi	r4 r0 0
	jump	L_cont_18138
L_else_18140 : 
	addi	r4 r0 1
L_cont_18138 : 
	bne	r4 r0 L_else_18143
	jump	L_cont_18141
L_else_18143 : 
	addi	r4 r0 4154
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_18146
	addi	r4 r0 0
	jump	L_cont_18144
L_else_18146 : 
	addi	r4 r0 1
L_cont_18144 : 
	bne	r4 r0 L_else_18148
	jump	L_cont_18141
L_else_18148 : 
	fldi	f2 r0 33
	fadd	f14 f3 f2
	fldi	f2 r9 0
	fmul	f3 f2 f14
	addi	r4 r0 4138
	fldi	f2 r4 0
	fadd	f13 f3 f2
	fldi	f2 r9 1
	fmul	f3 f2 f14
	addi	r4 r0 4138
	fldi	f2 r4 1
	fadd	f12 f3 f2
	fldi	f2 r9 2
	fmul	f3 f2 f14
	addi	r4 r0 4138
	fldi	f2 r4 2
	fadd	f11 f3 f2
	addi	r4 r0 0
	add	r1 r11 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18151
	addi	r4 r0 1
	jump	L_cont_18149
L_else_18151 : 
	addi	r4 r0 5042
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f13
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2171
	bne	r4 r0 L_else_18155
	addi	r7 r0 1
	add	r9 r0 r11
	fadd	f8 f0 f13
	fadd	f10 f0 f12
	fadd	f9 f0 f11
	call	L_check_all_inside_2176
	jump	L_cont_18149
L_else_18155 : 
	addi	r4 r0 0
L_cont_18149 : 
	bne	r4 r0 L_else_18153
	jump	L_cont_18141
L_else_18153 : 
	addi	r4 r0 4154
	fsti	f14 r4 0
	addi	r4 r0 4114
	fsti	f13 r4 0
	fsti	f12 r4 1
	fsti	f11 r4 2
	addi	r4 r0 4117
	sti	r14 r4 0
	addi	r4 r0 4146
	sti	r13 r4 0
L_cont_18141 : 
	addi	r4 r12 1
	add	r12 r0 r4
	jump	L_solve_each_element_fast_2205
L_solve_one_or_network_fast_2209 : 
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18165
	return
L_else_18165 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r17
	call	L_solve_each_element_fast_2205
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_18167
	return
L_else_18167 : 
	addi	r5 r0 4155
	add	r1 r5 r4
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r17
	call	L_solve_each_element_fast_2205
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18169
	return
L_else_18169 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r17
	call	L_solve_each_element_fast_2205
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18171
	return
L_else_18171 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r17
	call	L_solve_each_element_fast_2205
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_solve_one_or_network_fast_2209
L_trace_or_matrix_fast_2213 : 
	add	r1 r18 r20
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18174
	return
L_else_18174 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_18177
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18240
	jump	L_cont_18175
L_else_18240 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18242
	jump	L_cont_18175
L_else_18242 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_18244
	jump	L_cont_18175
L_else_18244 : 
	addi	r5 r0 4155
	add	r1 r5 r4
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r15 r0 4
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2209
	jump	L_cont_18175
L_else_18177 : 
	addi	r4 r0 5042
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
	bne	r5 r4 L_else_18247
	ldi	r7 r19 0
	call	L_solver_rect_fast_2097
	jump	L_cont_18245
L_else_18247 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18262
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_18265
	addi	r4 r0 0
	jump	L_cont_18263
L_else_18265 : 
	addi	r4 r0 1
L_cont_18263 : 
	bne	r4 r0 L_else_18267
	addi	r4 r0 0
	jump	L_cont_18245
L_else_18267 : 
	addi	r4 r0 4145
	fldi	f2 r6 0
	fldi	f3 r7 3
	fmul	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 1
	jump	L_cont_18245
L_else_18262 : 
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	fadd	f3 f0 f5
	fadd	f4 f0 f7
	fadd	f5 f0 f6
	call	L_solver_second_fast2_2127
L_cont_18245 : 
	bne	r4 r0 L_else_18249
	jump	L_cont_18175
L_else_18249 : 
	addi	r4 r0 4145
	fldi	f3 r4 0
	addi	r4 r0 4154
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_18252
	addi	r4 r0 0
	jump	L_cont_18250
L_else_18252 : 
	addi	r4 r0 1
L_cont_18250 : 
	bne	r4 r0 L_else_18254
	jump	L_cont_18175
L_else_18254 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18256
	jump	L_cont_18175
L_else_18256 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18258
	jump	L_cont_18175
L_else_18258 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18260
	jump	L_cont_18175
L_else_18260 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r15 r0 4
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2209
L_cont_18175 : 
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r16 r1 0
	ldi	r6 r16 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_18179
	return
L_else_18179 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_18182
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18184
	jump	L_cont_18180
L_else_18184 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18186
	jump	L_cont_18180
L_else_18186 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r15 r0 3
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2209
	jump	L_cont_18180
L_else_18182 : 
	addi	r4 r0 5042
	add	r1 r4 r6
	ldi	r9 r1 0
	ldi	r5 r9 10
	fldi	f6 r5 0
	fldi	f5 r5 1
	fldi	f7 r5 2
	ldi	r4 r19 1
	add	r1 r4 r6
	ldi	r8 r1 0
	ldi	r4 r9 1
	addi	r6 r0 1
	bne	r4 r6 L_else_18189
	ldi	r7 r19 0
	add	r6 r0 r8
	add	r8 r0 r9
	call	L_solver_rect_fast_2097
	jump	L_cont_18187
L_else_18189 : 
	addi	r6 r0 2
	bne	r4 r6 L_else_18202
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_18205
	addi	r4 r0 0
	jump	L_cont_18203
L_else_18205 : 
	addi	r4 r0 1
L_cont_18203 : 
	bne	r4 r0 L_else_18207
	addi	r4 r0 0
	jump	L_cont_18187
L_else_18207 : 
	addi	r4 r0 4145
	fldi	f2 r8 0
	fldi	f3 r5 3
	fmul	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 1
	jump	L_cont_18187
L_else_18202 : 
	fldi	f4 r8 0
	fbne	f4 f0 L_else_18210
	addi	r4 r0 1
	jump	L_cont_18208
L_else_18210 : 
	addi	r4 r0 0
L_cont_18208 : 
	bne	r4 r0 L_else_18212
	fldi	f2 r8 1
	fmul	f3 f2 f6
	fldi	f2 r8 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f7
	fadd	f7 f3 f2
	fldi	f2 r5 3
	fmul	f3 f7 f7
	fmul	f2 f4 f2
	fsub	f8 f3 f2
	fbgt	f8 f0 L_else_18215
	addi	r4 r0 0
	jump	L_cont_18213
L_else_18215 : 
	addi	r4 r0 1
L_cont_18213 : 
	bne	r4 r0 L_else_18217
	addi	r4 r0 0
	jump	L_cont_18187
L_else_18217 : 
	ldi	r4 r9 6
	bne	r4 r0 L_else_18220
	addi	r4 r0 4145
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_18223
	fldi	f4 r0 20
	jump	L_cont_18221
L_else_18223 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f8
L_cont_18221 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_18226
	fadd	f2 f0 f2
	jump	L_cont_18224
L_else_18226 : 
	fsub	f2 f0 f2
L_cont_18224 : 
	fbgt	f3 f2 L_else_18229
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f6 f2 f3
	fadd	f5 f0 f8
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_18227
L_else_18229 : 
	fadd	f2 f0 f4
L_cont_18227 : 
	fmul	f2 f8 f2
	fsub	f3 f7 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r4 0
	jump	L_cont_18218
L_else_18220 : 
	addi	r4 r0 4145
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f8 f2 L_else_18232
	fldi	f4 r0 20
	jump	L_cont_18230
L_else_18232 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f8
L_cont_18230 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_18235
	fadd	f2 f0 f2
	jump	L_cont_18233
L_else_18235 : 
	fsub	f2 f0 f2
L_cont_18233 : 
	fbgt	f3 f2 L_else_18238
	fldi	f3 r0 27
	fmul	f2 f8 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f6 f2 f3
	fadd	f5 f0 f8
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_18236
L_else_18238 : 
	fadd	f2 f0 f4
L_cont_18236 : 
	fmul	f2 f8 f2
	fadd	f3 f7 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r4 0
L_cont_18218 : 
	addi	r4 r0 1
	jump	L_cont_18187
L_else_18212 : 
	addi	r4 r0 0
L_cont_18187 : 
	bne	r4 r0 L_else_18191
	jump	L_cont_18180
L_else_18191 : 
	addi	r4 r0 4145
	fldi	f3 r4 0
	addi	r4 r0 4154
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_18194
	addi	r4 r0 0
	jump	L_cont_18192
L_else_18194 : 
	addi	r4 r0 1
L_cont_18192 : 
	bne	r4 r0 L_else_18196
	jump	L_cont_18180
L_else_18196 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18198
	jump	L_cont_18180
L_else_18198 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18200
	jump	L_cont_18180
L_else_18200 : 
	addi	r4 r0 4155
	add	r1 r4 r5
	ldi	r11 r1 0
	addi	r12 r0 0
	add	r10 r0 r19
	call	L_solve_each_element_fast_2205
	addi	r15 r0 3
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2209
L_cont_18180 : 
	addi	r4 r20 1
	add	r20 r0 r4
	jump	L_trace_or_matrix_fast_2213
L_get_nvector_second_2223 : 
	addi	r4 r0 4114
	fldi	f3 r4 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f9 f3 f2
	addi	r4 r0 4114
	fldi	f3 r4 1
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f8 f3 f2
	addi	r4 r0 4114
	fldi	f3 r4 2
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
	bne	r4 r0 L_else_18271
	addi	r4 r0 4118
	fsti	f5 r4 0
	addi	r4 r0 4118
	fsti	f6 r4 1
	addi	r4 r0 4118
	fsti	f4 r4 2
	jump	L_cont_18269
L_else_18271 : 
	addi	r5 r0 4118
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f3 f8 f2
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f2 f5 f2
	fsti	f2 r5 0
	addi	r5 r0 4118
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f3 f9 f2
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r5 1
	addi	r5 r0 4118
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f3 f9 f2
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r5 2
L_cont_18269 : 
	addi	r5 r0 4118
	ldi	r6 r6 6
	fldi	f2 r5 0
	fmul	f3 f2 f2
	fldi	f2 r5 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r5 2
	fmul	f2 f2 f2
	fadd	f7 f3 f2
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_18274
	fldi	f4 r0 20
	jump	L_cont_18272
L_else_18274 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_18272 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_18277
	fadd	f2 f0 f2
	jump	L_cont_18275
L_else_18277 : 
	fsub	f2 f0 f2
L_cont_18275 : 
	fbgt	f3 f2 L_else_18280
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f6 f2 f3
	fadd	f5 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_18278
L_else_18280 : 
	fadd	f2 f0 f4
L_cont_18278 : 
	fmul	f3 f7 f2
	fbne	f3 f0 L_else_18283
	addi	r4 r0 1
	jump	L_cont_18281
L_else_18283 : 
	addi	r4 r0 0
L_cont_18281 : 
	bne	r4 r0 L_else_18286
	bne	r6 r0 L_else_18288
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_18284
L_else_18288 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
	jump	L_cont_18284
L_else_18286 : 
	fldi	f3 r0 20
L_cont_18284 : 
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
L_utexture_2228 : 
	ldi	r8 r6 0
	addi	r4 r0 4121
	ldi	r5 r6 8
	fldi	f2 r5 0
	fsti	f2 r4 0
	addi	r5 r0 4121
	ldi	r4 r6 8
	fldi	f2 r4 1
	fsti	f2 r5 1
	addi	r4 r0 4121
	ldi	r5 r6 8
	fldi	f2 r5 2
	fsti	f2 r4 2
	addi	r4 r0 1
	bne	r8 r4 L_else_18291
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
	fbgt	f2 f3 L_else_18294
	addi	r5 r0 0
	jump	L_cont_18292
L_else_18294 : 
	addi	r5 r0 1
L_cont_18292 : 
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
	fbgt	f3 f2 L_else_18297
	addi	r6 r0 0
	jump	L_cont_18295
L_else_18297 : 
	addi	r6 r0 1
L_cont_18295 : 
	addi	r4 r0 4121
	bne	r5 r0 L_else_18300
	bne	r6 r0 L_else_18302
	fldi	f2 r0 38
	jump	L_cont_18298
L_else_18302 : 
	fldi	f2 r0 29
	jump	L_cont_18298
L_else_18300 : 
	bne	r6 r0 L_else_18304
	fldi	f2 r0 29
	jump	L_cont_18298
L_else_18304 : 
	fldi	f2 r0 38
L_cont_18298 : 
	fsti	f2 r4 1
	return
L_else_18291 : 
	addi	r4 r0 2
	bne	r8 r4 L_else_18306
	fldi	f3 r7 1
	fldi	f2 r0 39
	fmul	f9 f3 f2
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_18309
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_18311
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_18313
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_18315
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
	jump	L_cont_18307
L_else_18315 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_18317
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
	jump	L_cont_18307
L_else_18317 : 
	fadd	f9 f5 f9
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
	jump	L_cont_18307
L_else_18313 : 
	fbgt	f9 f4 L_else_18319
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
	jump	L_cont_18307
L_else_18319 : 
	fbgt	f9 f2 L_else_18321
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
	jump	L_cont_18307
L_else_18321 : 
	fsub	f9 f5 f9
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
	jump	L_cont_18307
L_else_18311 : 
	fadd	f9 f9 f3
	call	L_sin_1886
	jump	L_cont_18307
L_else_18309 : 
	fsub	f9 f9 f3
	call	L_sin_1886
L_cont_18307 : 
	fmul	f4 f2 f2
	addi	r4 r0 4121
	fldi	f2 r0 38
	fmul	f2 f2 f4
	fsti	f2 r4 0
	addi	r4 r0 4121
	fldi	f3 r0 38
	fldi	f2 r0 20
	fsub	f2 f2 f4
	fmul	f2 f3 f2
	fsti	f2 r4 1
	return
L_else_18306 : 
	addi	r4 r0 3
	bne	r8 r4 L_else_18323
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
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_18326
	fldi	f6 r0 20
	jump	L_cont_18324
L_else_18326 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_18324 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f2 f7 f2
	fldi	f3 r0 37
	fdiv	f2 f2 f3
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 40
	fmul	f6 f2 f3
	call	L_cos_1888
	fmul	f3 f2 f2
	addi	r4 r0 4121
	fldi	f2 r0 38
	fmul	f2 f3 f2
	fsti	f2 r4 1
	addi	r4 r0 4121
	fldi	f2 r0 20
	fsub	f2 f2 f3
	fldi	f3 r0 38
	fmul	f2 f2 f3
	fsti	f2 r4 2
	return
L_else_18323 : 
	addi	r4 r0 4
	bne	r8 r4 L_else_18328
	fldi	f3 r7 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f8 f3 f2
	ldi	r4 r6 4
	fldi	f7 r4 0
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_18331
	fldi	f6 r0 20
	jump	L_cont_18329
L_else_18331 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_18329 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f2 f7 f2
	fmul	f9 f8 f2
	fldi	f3 r7 2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f8 f3 f2
	ldi	r4 r6 4
	fldi	f7 r4 2
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_18334
	fldi	f6 r0 20
	jump	L_cont_18332
L_else_18334 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_18332 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f2 f7 f2
	fmul	f3 f8 f2
	fmul	f4 f9 f9
	fmul	f2 f3 f3
	fadd	f16 f4 f2
	fbgt	f0 f9 L_else_18337
	fadd	f4 f0 f9
	jump	L_cont_18335
L_else_18337 : 
	fsub	f4 f0 f9
L_cont_18335 : 
	fldi	f2 r0 41
	fbgt	f2 f4 L_else_18340
	addi	r4 r0 0
	jump	L_cont_18338
L_else_18340 : 
	addi	r4 r0 1
L_cont_18338 : 
	bne	r4 r0 L_else_18343
	fdiv	f2 f3 f9
	fbgt	f0 f2 L_else_18367
	fadd	f13 f0 f2
	jump	L_cont_18365
L_else_18367 : 
	fsub	f13 f0 f2
L_cont_18365 : 
	call	L_atan_1890
	fldi	f3 r0 42
	fmul	f2 f2 f3
	fldi	f3 r0 40
	fdiv	f2 f2 f3
	jump	L_cont_18341
L_else_18343 : 
	fldi	f2 r0 43
L_cont_18341 : 
	flr	f3 f2
	fsub	f15 f2 f3
	fldi	f3 r7 1
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f8 f3 f2
	ldi	r4 r6 4
	fldi	f7 r4 1
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_18346
	fldi	f6 r0 20
	jump	L_cont_18344
L_else_18346 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_18344 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f2 f7 f2
	fmul	f4 f8 f2
	fbgt	f0 f16 L_else_18349
	fadd	f3 f0 f16
	jump	L_cont_18347
L_else_18349 : 
	fsub	f3 f0 f16
L_cont_18347 : 
	fldi	f2 r0 41
	fbgt	f2 f3 L_else_18352
	addi	r4 r0 0
	jump	L_cont_18350
L_else_18352 : 
	addi	r4 r0 1
L_cont_18350 : 
	bne	r4 r0 L_else_18355
	fdiv	f2 f4 f16
	fbgt	f0 f2 L_else_18364
	fadd	f13 f0 f2
	jump	L_cont_18362
L_else_18364 : 
	fsub	f13 f0 f2
L_cont_18362 : 
	call	L_atan_1890
	fadd	f3 f0 f2
	fldi	f2 r0 42
	fmul	f3 f3 f2
	fldi	f2 r0 40
	fdiv	f3 f3 f2
	jump	L_cont_18353
L_else_18355 : 
	fldi	f3 r0 43
L_cont_18353 : 
	flr	f2 f3
	fsub	f4 f3 f2
	fldi	f3 r0 44
	fldi	f2 r0 19
	fsub	f2 f2 f15
	fmul	f2 f2 f2
	fsub	f3 f3 f2
	fldi	f2 r0 19
	fsub	f2 f2 f4
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fbgt	f0 f2 L_else_18358
	addi	r4 r0 0
	jump	L_cont_18356
L_else_18358 : 
	addi	r4 r0 1
L_cont_18356 : 
	bne	r4 r0 L_else_18361
	fadd	f3 f0 f2
	jump	L_cont_18359
L_else_18361 : 
	fldi	f3 r0 29
L_cont_18359 : 
	addi	r4 r0 4121
	fldi	f2 r0 38
	fmul	f3 f2 f3
	fldi	f2 r0 45
	fdiv	f2 f3 f2
	fsti	f2 r4 2
	return
L_else_18328 : 
	return
L_trace_reflections_2235 : 
	bgt	r0 r22 L_else_18370
	addi	r4 r0 4257
	add	r1 r4 r22
	ldi	r24 r1 0
	ldi	r23 r24 1
	addi	r4 r0 4154
	fldi	f2 r0 46
	fsti	f2 r4 0
	addi	r20 r0 0
	addi	r4 r0 4255
	ldi	r18 r4 0
	add	r19 r0 r23
	call	L_trace_or_matrix_fast_2213
	addi	r4 r0 4154
	fldi	f3 r4 0
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_18373
	addi	r4 r0 0
	jump	L_cont_18371
L_else_18373 : 
	addi	r4 r0 1
L_cont_18371 : 
	bne	r4 r0 L_else_18376
	addi	r4 r0 0
	jump	L_cont_18374
L_else_18376 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_18396
	addi	r4 r0 0
	jump	L_cont_18374
L_else_18396 : 
	addi	r4 r0 1
L_cont_18374 : 
	bne	r4 r0 L_else_18379
	jump	L_cont_18377
L_else_18379 : 
	addi	r4 r0 4117
	ldi	r5 r4 0
	addi	r4 r0 4
	mul	r5 r5 r4
	addi	r4 r0 4146
	ldi	r4 r4 0
	add	r4 r5 r4
	ldi	r5 r24 0
	bne	r4 r5 L_else_18381
	addi	r15 r0 0
	addi	r4 r0 4255
	ldi	r14 r4 0
	call	L_shadow_check_one_or_matrix_2188
	bne	r4 r0 L_else_18383
	addi	r4 r0 4118
	ldi	r5 r23 0
	fldi	f3 r4 0
	fldi	f2 r5 0
	fmul	f4 f3 f2
	fldi	f2 r4 1
	fldi	f3 r5 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r4 2
	fldi	f3 r5 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fldi	f6 r24 2
	fmul	f2 f6 f15
	fmul	f5 f2 f3
	ldi	r4 r23 0
	fldi	f2 r21 0
	fldi	f3 r4 0
	fmul	f3 f2 f3
	fldi	f4 r21 1
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fldi	f3 r21 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fmul	f4 f6 f2
	fbgt	f5 f0 L_else_18386
	addi	r4 r0 0
	jump	L_cont_18384
L_else_18386 : 
	addi	r4 r0 1
L_cont_18384 : 
	bne	r4 r0 L_else_18389
	jump	L_cont_18387
L_else_18389 : 
	addi	r5 r0 4127
	addi	r4 r0 4121
	fldi	f3 r5 0
	fldi	f2 r4 0
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r5 2
	fldi	f2 r4 2
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r5 2
L_cont_18387 : 
	fbgt	f4 f0 L_else_18392
	addi	r4 r0 0
	jump	L_cont_18390
L_else_18392 : 
	addi	r4 r0 1
L_cont_18390 : 
	bne	r4 r0 L_else_18394
	jump	L_cont_18377
L_else_18394 : 
	fmul	f2 f4 f4
	fmul	f2 f2 f2
	fmul	f3 f2 f16
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f2 r5 0
	fadd	f2 f2 f3
	fsti	f2 r4 0
	addi	r5 r0 4127
	addi	r4 r0 4127
	fldi	f2 r4 1
	fadd	f2 f2 f3
	fsti	f2 r5 1
	addi	r5 r0 4127
	addi	r4 r0 4127
	fldi	f2 r4 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	jump	L_cont_18377
L_else_18383 : 
	jump	L_cont_18377
L_else_18381 : 
L_cont_18377 : 
	addi	r4 r22 -1
	add	r22 r0 r4
	jump	L_trace_reflections_2235
L_else_18370 : 
	return
L_trace_ray_2240 : 
	addi	r4 r0 4
	bgt	r27 r4 L_else_18399
	ldi	r30 r25 2
	addi	r4 r0 4154
	fldi	f2 r0 46
	fsti	f2 r4 0
	addi	r19 r0 0
	addi	r4 r0 4255
	ldi	r20 r4 0
	add	r21 r0 r26
	call	L_trace_or_matrix_2199
	addi	r4 r0 4154
	fldi	f3 r4 0
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_18402
	addi	r4 r0 0
	jump	L_cont_18400
L_else_18402 : 
	addi	r4 r0 1
L_cont_18400 : 
	bne	r4 r0 L_else_18405
	addi	r4 r0 0
	jump	L_cont_18403
L_else_18405 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_18462
	addi	r4 r0 0
	jump	L_cont_18403
L_else_18462 : 
	addi	r4 r0 1
L_cont_18403 : 
	bne	r4 r0 L_else_18407
	addi	r4 r0 -1
	add	r1 r30 r27
	sti	r4 r1 0
	bne	r27 r0 L_else_18409
	return
L_else_18409 : 
	addi	r4 r0 4111
	fldi	f3 r26 0
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r26 1
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r26 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsub	f3 f0 f2
	fbgt	f3 f0 L_else_18412
	addi	r4 r0 0
	jump	L_cont_18410
L_else_18412 : 
	addi	r4 r0 1
L_cont_18410 : 
	bne	r4 r0 L_else_18414
	return
L_else_18414 : 
	fmul	f2 f3 f3
	fmul	f2 f2 f3
	fmul	f3 f2 f18
	addi	r4 r0 4153
	fldi	f2 r4 0
	fmul	f3 f3 f2
	addi	r5 r0 4127
	addi	r4 r0 4127
	fldi	f2 r4 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	addi	r5 r0 4127
	addi	r4 r0 4127
	fldi	f2 r4 1
	fadd	f2 f2 f3
	fsti	f2 r5 1
	addi	r5 r0 4127
	addi	r4 r0 4127
	fldi	f2 r4 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	return
L_else_18407 : 
	addi	r4 r0 4117
	ldi	r9 r4 0
	addi	r4 r0 5042
	add	r1 r4 r9
	ldi	r29 r1 0
	ldi	r28 r29 2
	ldi	r4 r29 7
	fldi	f2 r4 0
	fmul	f19 f2 f18
	ldi	r5 r29 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18417
	addi	r4 r0 4146
	ldi	r7 r4 0
	addi	r4 r0 4118
	fldi	f2 r0 29
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	addi	r5 r0 4118
	addi	r6 r7 -1
	addi	r4 r7 -1
	add	r1 r26 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_18450
	addi	r4 r0 1
	jump	L_cont_18448
L_else_18450 : 
	addi	r4 r0 0
L_cont_18448 : 
	bne	r4 r0 L_else_18453
	fbgt	f2 f0 L_else_18456
	addi	r4 r0 0
	jump	L_cont_18454
L_else_18456 : 
	addi	r4 r0 1
L_cont_18454 : 
	bne	r4 r0 L_else_18458
	fldi	f2 r0 31
	jump	L_cont_18451
L_else_18458 : 
	fldi	f2 r0 20
	jump	L_cont_18451
L_else_18453 : 
	fldi	f2 r0 29
L_cont_18451 : 
	fsub	f2 f0 f2
	add	r1 r5 r6
	fsti	f2 r1 0
	jump	L_cont_18415
L_else_18417 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18460
	addi	r4 r0 4118
	ldi	r5 r29 4
	fldi	f2 r5 0
	fsub	f2 f0 f2
	fsti	f2 r4 0
	addi	r5 r0 4118
	ldi	r4 r29 4
	fldi	f2 r4 1
	fsub	f2 f0 f2
	fsti	f2 r5 1
	addi	r4 r0 4118
	ldi	r5 r29 4
	fldi	f2 r5 2
	fsub	f2 f0 f2
	fsti	f2 r4 2
	jump	L_cont_18415
L_else_18460 : 
	add	r6 r0 r29
	call	L_get_nvector_second_2223
L_cont_18415 : 
	addi	r4 r0 4135
	addi	r5 r0 4114
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	addi	r7 r0 4114
	add	r6 r0 r29
	call	L_utexture_2228
	addi	r4 r0 4
	mul	r5 r9 r4
	addi	r4 r0 4146
	ldi	r4 r4 0
	add	r4 r5 r4
	add	r1 r30 r27
	sti	r4 r1 0
	ldi	r4 r25 1
	add	r1 r4 r27
	ldi	r5 r1 0
	addi	r4 r0 4114
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	ldi	r5 r25 3
	ldi	r4 r29 7
	fldi	f2 r4 0
	fldi	f3 r0 19
	fbgt	f3 f2 L_else_18420
	addi	r4 r0 0
	jump	L_cont_18418
L_else_18420 : 
	addi	r4 r0 1
L_cont_18418 : 
	bne	r4 r0 L_else_18423
	addi	r4 r0 1
	add	r1 r5 r27
	sti	r4 r1 0
	ldi	r5 r25 4
	add	r1 r5 r27
	ldi	r6 r1 0
	addi	r4 r0 4121
	fldi	f2 r4 0
	fsti	f2 r6 0
	fldi	f2 r4 1
	fsti	f2 r6 1
	fldi	f2 r4 2
	fsti	f2 r6 2
	add	r1 r5 r27
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
	ldi	r4 r25 7
	add	r1 r4 r27
	ldi	r4 r1 0
	addi	r5 r0 4118
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	jump	L_cont_18421
L_else_18423 : 
	addi	r4 r0 0
	add	r1 r5 r27
	sti	r4 r1 0
L_cont_18421 : 
	fldi	f4 r0 49
	addi	r4 r0 4118
	fldi	f2 r26 0
	fldi	f3 r4 0
	fmul	f3 f2 f3
	fldi	f5 r26 1
	fldi	f2 r4 1
	fmul	f2 f5 f2
	fadd	f3 f3 f2
	fldi	f5 r26 2
	fldi	f2 r4 2
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fmul	f4 f4 f2
	addi	r4 r0 4118
	fldi	f3 r26 0
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r26 0
	fldi	f3 r26 1
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r26 1
	fldi	f3 r26 2
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r26 2
	ldi	r4 r29 7
	fldi	f2 r4 1
	fmul	f16 f18 f2
	addi	r15 r0 0
	addi	r4 r0 4255
	ldi	r14 r4 0
	call	L_shadow_check_one_or_matrix_2188
	bne	r4 r0 L_else_18426
	addi	r4 r0 4118
	addi	r5 r0 4111
	fldi	f3 r4 0
	fldi	f2 r5 0
	fmul	f4 f3 f2
	fldi	f2 r4 1
	fldi	f3 r5 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r4 2
	fldi	f3 r5 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsub	f2 f0 f2
	fmul	f5 f2 f19
	addi	r4 r0 4111
	fldi	f3 r26 0
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f2 r26 1
	fldi	f3 r4 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r26 2
	fldi	f3 r4 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsub	f4 f0 f2
	fbgt	f5 f0 L_else_18439
	addi	r4 r0 0
	jump	L_cont_18437
L_else_18439 : 
	addi	r4 r0 1
L_cont_18437 : 
	bne	r4 r0 L_else_18442
	jump	L_cont_18440
L_else_18442 : 
	addi	r4 r0 4127
	addi	r5 r0 4121
	fldi	f3 r4 0
	fldi	f2 r5 0
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r4 0
	fldi	f3 r4 1
	fldi	f2 r5 1
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r4 1
	fldi	f3 r4 2
	fldi	f2 r5 2
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r4 2
L_cont_18440 : 
	fbgt	f4 f0 L_else_18445
	addi	r4 r0 0
	jump	L_cont_18443
L_else_18445 : 
	addi	r4 r0 1
L_cont_18443 : 
	bne	r4 r0 L_else_18447
	jump	L_cont_18424
L_else_18447 : 
	fmul	f2 f4 f4
	fmul	f2 f2 f2
	fmul	f3 f2 f16
	addi	r5 r0 4127
	addi	r4 r0 4127
	fldi	f2 r4 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f2 r5 1
	fadd	f2 f2 f3
	fsti	f2 r4 1
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f2 r5 2
	fadd	f2 f2 f3
	fsti	f2 r4 2
	jump	L_cont_18424
L_else_18426 : 
L_cont_18424 : 
	addi	r9 r0 4114
	addi	r4 r0 4138
	fldi	f2 r9 0
	fsti	f2 r4 0
	fldi	f2 r9 1
	fsti	f2 r4 1
	fldi	f2 r9 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	call	L_setup_startp_constants_2151
	addi	r4 r0 4147
	ldi	r4 r4 0
	addi	r22 r4 -1
	add	r21 r0 r26
	fadd	f15 f0 f19
	call	L_trace_reflections_2235
	fldi	f2 r0 50
	fbgt	f18 f2 L_else_18429
	addi	r4 r0 0
	jump	L_cont_18427
L_else_18429 : 
	addi	r4 r0 1
L_cont_18427 : 
	bne	r4 r0 L_else_18431
	return
L_else_18431 : 
	addi	r4 r0 4
	bgt	r4 r27 L_else_18434
	jump	L_cont_18432
L_else_18434 : 
	addi	r5 r27 1
	addi	r4 r0 -1
	add	r1 r30 r5
	sti	r4 r1 0
L_cont_18432 : 
	addi	r4 r0 2
	bne	r28 r4 L_else_18436
	fldi	f3 r0 20
	ldi	r4 r29 7
	fldi	f2 r4 0
	fsub	f2 f3 f2
	fmul	f2 f18 f2
	addi	r5 r27 1
	addi	r4 r0 4154
	fldi	f3 r4 0
	fadd	f3 f17 f3
	add	r27 r0 r5
	fadd	f18 f0 f2
	fadd	f17 f0 f3
	jump	L_trace_ray_2240
L_else_18436 : 
	return
L_else_18399 : 
	return
L_trace_diffuse_ray_2246 : 
	addi	r4 r0 4154
	fldi	f2 r0 46
	fsti	f2 r4 0
	addi	r20 r0 0
	addi	r4 r0 4255
	ldi	r18 r4 0
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2213
	addi	r4 r0 4154
	fldi	f3 r4 0
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_18466
	addi	r4 r0 0
	jump	L_cont_18464
L_else_18466 : 
	addi	r4 r0 1
L_cont_18464 : 
	bne	r4 r0 L_else_18469
	addi	r4 r0 0
	jump	L_cont_18467
L_else_18469 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_18497
	addi	r4 r0 0
	jump	L_cont_18467
L_else_18497 : 
	addi	r4 r0 1
L_cont_18467 : 
	bne	r4 r0 L_else_18471
	return
L_else_18471 : 
	addi	r5 r0 5042
	addi	r4 r0 4117
	ldi	r4 r4 0
	add	r1 r5 r4
	ldi	r17 r1 0
	ldi	r8 r21 0
	ldi	r5 r17 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18474
	addi	r4 r0 4146
	ldi	r7 r4 0
	addi	r4 r0 4118
	fldi	f2 r0 29
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	addi	r5 r0 4118
	addi	r6 r7 -1
	addi	r4 r7 -1
	add	r1 r8 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_18485
	addi	r4 r0 1
	jump	L_cont_18483
L_else_18485 : 
	addi	r4 r0 0
L_cont_18483 : 
	bne	r4 r0 L_else_18488
	fbgt	f2 f0 L_else_18491
	addi	r4 r0 0
	jump	L_cont_18489
L_else_18491 : 
	addi	r4 r0 1
L_cont_18489 : 
	bne	r4 r0 L_else_18493
	fldi	f2 r0 31
	jump	L_cont_18486
L_else_18493 : 
	fldi	f2 r0 20
	jump	L_cont_18486
L_else_18488 : 
	fldi	f2 r0 29
L_cont_18486 : 
	fsub	f2 f0 f2
	add	r1 r5 r6
	fsti	f2 r1 0
	jump	L_cont_18472
L_else_18474 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18495
	addi	r4 r0 4118
	ldi	r5 r17 4
	fldi	f2 r5 0
	fsub	f2 f0 f2
	fsti	f2 r4 0
	addi	r4 r0 4118
	ldi	r5 r17 4
	fldi	f2 r5 1
	fsub	f2 f0 f2
	fsti	f2 r4 1
	addi	r4 r0 4118
	ldi	r5 r17 4
	fldi	f2 r5 2
	fsub	f2 f0 f2
	fsti	f2 r4 2
	jump	L_cont_18472
L_else_18495 : 
	add	r6 r0 r17
	call	L_get_nvector_second_2223
L_cont_18472 : 
	addi	r7 r0 4114
	add	r6 r0 r17
	call	L_utexture_2228
	addi	r15 r0 0
	addi	r4 r0 4255
	ldi	r14 r4 0
	call	L_shadow_check_one_or_matrix_2188
	bne	r4 r0 L_else_18476
	addi	r4 r0 4118
	addi	r5 r0 4111
	fldi	f2 r4 0
	fldi	f3 r5 0
	fmul	f3 f2 f3
	fldi	f4 r4 1
	fldi	f2 r5 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r4 2
	fldi	f2 r5 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_18479
	addi	r4 r0 0
	jump	L_cont_18477
L_else_18479 : 
	addi	r4 r0 1
L_cont_18477 : 
	bne	r4 r0 L_else_18482
	fldi	f2 r0 29
	jump	L_cont_18480
L_else_18482 : 
	fadd	f2 f0 f2
L_cont_18480 : 
	addi	r5 r0 4124
	fmul	f3 f17 f2
	ldi	r4 r17 7
	fldi	f2 r4 0
	fmul	f4 f3 f2
	addi	r4 r0 4121
	fldi	f3 r5 0
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r5 2
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r5 2
	return
L_else_18476 : 
	return
L_iter_trace_diffuse_rays_2249 : 
	bgt	r0 r22 L_else_18500
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
	fbgt	f0 f3 L_else_18503
	addi	r4 r0 0
	jump	L_cont_18501
L_else_18503 : 
	addi	r4 r0 1
L_cont_18501 : 
	bne	r4 r0 L_else_18506
	add	r1 r25 r22
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_18504
L_else_18506 : 
	addi	r4 r22 1
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_18504 : 
	addi	r22 r22 -2
	bgt	r0 r22 L_else_18508
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
	fbgt	f0 f3 L_else_18511
	addi	r4 r0 0
	jump	L_cont_18509
L_else_18511 : 
	addi	r4 r0 1
L_cont_18509 : 
	bne	r4 r0 L_else_18514
	add	r1 r25 r22
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_18512
L_else_18514 : 
	addi	r4 r22 1
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_18512 : 
	addi	r4 r22 -2
	add	r22 r0 r4
	jump	L_iter_trace_diffuse_rays_2249
L_else_18508 : 
	return
L_else_18500 : 
	return
L_calc_diffuse_using_1point_2262 : 
	ldi	r4 r8 5
	ldi	r6 r8 7
	ldi	r7 r8 1
	ldi	r27 r8 4
	addi	r5 r0 4124
	add	r1 r4 r28
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	ldi	r4 r8 6
	ldi	r30 r4 0
	add	r1 r6 r28
	ldi	r29 r1 0
	add	r1 r7 r28
	ldi	r26 r1 0
	bne	r30 r0 L_else_18518
	jump	L_cont_18516
L_else_18518 : 
	addi	r4 r0 4148
	ldi	r25 r4 0
	addi	r4 r0 4138
	fldi	f2 r26 0
	fsti	f2 r4 0
	fldi	f2 r26 1
	fsti	f2 r4 1
	fldi	f2 r26 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	add	r9 r0 r26
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r29 0
	fmul	f4 f3 f2
	fldi	f2 r4 1
	fldi	f3 r29 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r4 2
	fldi	f3 r29 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_18557
	addi	r4 r0 0
	jump	L_cont_18555
L_else_18557 : 
	addi	r4 r0 1
L_cont_18555 : 
	bne	r4 r0 L_else_18560
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_18558
L_else_18560 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_18558 : 
	addi	r22 r0 116
	add	r23 r0 r29
	add	r24 r0 r26
	call	L_iter_trace_diffuse_rays_2249
L_cont_18516 : 
	addi	r4 r0 1
	bne	r30 r4 L_else_18521
	jump	L_cont_18519
L_else_18521 : 
	addi	r4 r0 4148
	ldi	r25 r4 1
	addi	r4 r0 4138
	fldi	f2 r26 0
	fsti	f2 r4 0
	fldi	f2 r26 1
	fsti	f2 r4 1
	fldi	f2 r26 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	add	r9 r0 r26
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r29 0
	fmul	f4 f3 f2
	fldi	f3 r4 1
	fldi	f2 r29 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r4 2
	fldi	f2 r29 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_18551
	addi	r4 r0 0
	jump	L_cont_18549
L_else_18551 : 
	addi	r4 r0 1
L_cont_18549 : 
	bne	r4 r0 L_else_18554
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_18552
L_else_18554 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_18552 : 
	addi	r22 r0 116
	add	r23 r0 r29
	add	r24 r0 r26
	call	L_iter_trace_diffuse_rays_2249
L_cont_18519 : 
	addi	r4 r0 2
	bne	r30 r4 L_else_18524
	jump	L_cont_18522
L_else_18524 : 
	addi	r4 r0 4148
	ldi	r25 r4 2
	addi	r4 r0 4138
	fldi	f2 r26 0
	fsti	f2 r4 0
	fldi	f2 r26 1
	fsti	f2 r4 1
	fldi	f2 r26 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	add	r9 r0 r26
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r29 0
	fmul	f4 f3 f2
	fldi	f2 r4 1
	fldi	f3 r29 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r4 2
	fldi	f3 r29 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_18545
	addi	r4 r0 0
	jump	L_cont_18543
L_else_18545 : 
	addi	r4 r0 1
L_cont_18543 : 
	bne	r4 r0 L_else_18548
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_18546
L_else_18548 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_18546 : 
	addi	r22 r0 116
	add	r23 r0 r29
	add	r24 r0 r26
	call	L_iter_trace_diffuse_rays_2249
L_cont_18522 : 
	addi	r4 r0 3
	bne	r30 r4 L_else_18527
	jump	L_cont_18525
L_else_18527 : 
	addi	r4 r0 4148
	ldi	r25 r4 3
	addi	r4 r0 4138
	fldi	f2 r26 0
	fsti	f2 r4 0
	fldi	f2 r26 1
	fsti	f2 r4 1
	fldi	f2 r26 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	add	r9 r0 r26
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r29 0
	fmul	f4 f3 f2
	fldi	f3 r4 1
	fldi	f2 r29 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r4 2
	fldi	f2 r29 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_18539
	addi	r4 r0 0
	jump	L_cont_18537
L_else_18539 : 
	addi	r4 r0 1
L_cont_18537 : 
	bne	r4 r0 L_else_18542
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_18540
L_else_18542 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_18540 : 
	addi	r22 r0 116
	add	r23 r0 r29
	add	r24 r0 r26
	call	L_iter_trace_diffuse_rays_2249
L_cont_18525 : 
	addi	r4 r0 4
	bne	r30 r4 L_else_18530
	jump	L_cont_18528
L_else_18530 : 
	addi	r4 r0 4148
	ldi	r25 r4 4
	addi	r4 r0 4138
	fldi	f2 r26 0
	fsti	f2 r4 0
	fldi	f2 r26 1
	fsti	f2 r4 1
	fldi	f2 r26 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	add	r9 r0 r26
	call	L_setup_startp_constants_2151
	addi	r5 r0 118
	add	r1 r25 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r29 0
	fmul	f4 f3 f2
	fldi	f3 r4 1
	fldi	f2 r29 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r4 2
	fldi	f2 r29 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_18533
	addi	r4 r0 0
	jump	L_cont_18531
L_else_18533 : 
	addi	r4 r0 1
L_cont_18531 : 
	bne	r4 r0 L_else_18536
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_18534
L_else_18536 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_18534 : 
	addi	r22 r0 116
	add	r23 r0 r29
	add	r24 r0 r26
	call	L_iter_trace_diffuse_rays_2249
L_cont_18528 : 
	addi	r4 r0 4127
	add	r1 r27 r28
	ldi	r6 r1 0
	addi	r5 r0 4124
	fldi	f3 r4 0
	fldi	f4 r6 0
	fldi	f2 r5 0
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r4 0
	fldi	f4 r4 1
	fldi	f2 r6 1
	fldi	f3 r5 1
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r4 1
	fldi	f3 r4 2
	fldi	f4 r6 2
	fldi	f2 r5 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r4 2
	return
L_calc_diffuse_using_5points_2265 : 
	add	r1 r4 r9
	ldi	r4 r1 0
	ldi	r8 r4 5
	addi	r4 r9 -1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r11 r4 5
	add	r1 r13 r9
	ldi	r4 r1 0
	ldi	r10 r4 5
	addi	r4 r9 1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r6 r4 5
	add	r1 r5 r9
	ldi	r4 r1 0
	ldi	r5 r4 5
	addi	r7 r0 4124
	add	r1 r8 r12
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r7 0
	fldi	f2 r4 1
	fsti	f2 r7 1
	fldi	f2 r4 2
	fsti	f2 r7 2
	addi	r7 r0 4124
	add	r1 r11 r12
	ldi	r4 r1 0
	fldi	f2 r7 0
	fldi	f3 r4 0
	fadd	f2 f2 f3
	fsti	f2 r7 0
	fldi	f3 r7 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r7 1
	fldi	f2 r7 2
	fldi	f3 r4 2
	fadd	f2 f2 f3
	fsti	f2 r7 2
	addi	r7 r0 4124
	add	r1 r10 r12
	ldi	r4 r1 0
	fldi	f2 r7 0
	fldi	f3 r4 0
	fadd	f2 f2 f3
	fsti	f2 r7 0
	fldi	f3 r7 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r7 1
	fldi	f2 r7 2
	fldi	f3 r4 2
	fadd	f2 f2 f3
	fsti	f2 r7 2
	addi	r7 r0 4124
	add	r1 r6 r12
	ldi	r4 r1 0
	fldi	f2 r7 0
	fldi	f3 r4 0
	fadd	f2 f2 f3
	fsti	f2 r7 0
	fldi	f3 r7 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r7 1
	fldi	f2 r7 2
	fldi	f3 r4 2
	fadd	f2 f2 f3
	fsti	f2 r7 2
	addi	r6 r0 4124
	add	r1 r5 r12
	ldi	r4 r1 0
	fldi	f2 r6 0
	fldi	f3 r4 0
	fadd	f2 f2 f3
	fsti	f2 r6 0
	fldi	f3 r6 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r6 1
	fldi	f2 r6 2
	fldi	f3 r4 2
	fadd	f2 f2 f3
	fsti	f2 r6 2
	add	r1 r13 r9
	ldi	r4 r1 0
	ldi	r4 r4 4
	addi	r6 r0 4127
	add	r1 r4 r12
	ldi	r4 r1 0
	addi	r5 r0 4124
	fldi	f4 r6 0
	fldi	f2 r4 0
	fldi	f3 r5 0
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r6 0
	fldi	f3 r6 1
	fldi	f4 r4 1
	fldi	f2 r5 1
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r6 1
	fldi	f4 r6 2
	fldi	f2 r4 2
	fldi	f3 r5 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r6 2
	return
L_do_without_neighbors_2271 : 
	addi	r4 r0 4
	bgt	r27 r4 L_else_18564
	ldi	r4 r8 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bgt	r0 r4 L_else_18566
	ldi	r4 r8 3
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r0 L_else_18569
	jump	L_cont_18567
L_else_18569 : 
	ldi	r6 r8 5
	ldi	r7 r8 7
	ldi	r5 r8 1
	ldi	r28 r8 4
	addi	r4 r0 4124
	add	r1 r6 r27
	ldi	r6 r1 0
	fldi	f2 r6 0
	fsti	f2 r4 0
	fldi	f2 r6 1
	fsti	f2 r4 1
	fldi	f2 r6 2
	fsti	f2 r4 2
	ldi	r4 r8 6
	ldi	r30 r4 0
	add	r1 r7 r27
	ldi	r29 r1 0
	add	r1 r5 r27
	ldi	r26 r1 0
	bne	r30 r0 L_else_18579
	jump	L_cont_18577
L_else_18579 : 
	addi	r4 r0 4148
	ldi	r25 r4 0
	addi	r4 r0 4138
	fldi	f2 r26 0
	fsti	f2 r4 0
	fldi	f2 r26 1
	fsti	f2 r4 1
	fldi	f2 r26 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	sti	r8 r2 0
	add	r9 r0 r26
	addi	r2 r2 1
	call	L_setup_startp_constants_2151
	addi	r2 r2 -1
	ldi	r8 r2 0
	addi	r22 r0 118
	sti	r8 r2 0
	add	r23 r0 r29
	add	r24 r0 r26
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -1
	ldi	r8 r2 0
L_cont_18577 : 
	addi	r4 r0 1
	bne	r30 r4 L_else_18582
	jump	L_cont_18580
L_else_18582 : 
	addi	r4 r0 4148
	ldi	r25 r4 1
	addi	r4 r0 4138
	fldi	f2 r26 0
	fsti	f2 r4 0
	fldi	f2 r26 1
	fsti	f2 r4 1
	fldi	f2 r26 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	sti	r8 r2 0
	add	r9 r0 r26
	addi	r2 r2 1
	call	L_setup_startp_constants_2151
	addi	r2 r2 -1
	ldi	r8 r2 0
	addi	r22 r0 118
	sti	r8 r2 0
	add	r23 r0 r29
	add	r24 r0 r26
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -1
	ldi	r8 r2 0
L_cont_18580 : 
	addi	r4 r0 2
	bne	r30 r4 L_else_18585
	jump	L_cont_18583
L_else_18585 : 
	addi	r4 r0 4148
	ldi	r25 r4 2
	addi	r4 r0 4138
	fldi	f2 r26 0
	fsti	f2 r4 0
	fldi	f2 r26 1
	fsti	f2 r4 1
	fldi	f2 r26 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	sti	r8 r2 0
	add	r9 r0 r26
	addi	r2 r2 1
	call	L_setup_startp_constants_2151
	addi	r2 r2 -1
	ldi	r8 r2 0
	addi	r22 r0 118
	sti	r8 r2 0
	add	r23 r0 r29
	add	r24 r0 r26
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -1
	ldi	r8 r2 0
L_cont_18583 : 
	addi	r4 r0 3
	bne	r30 r4 L_else_18588
	jump	L_cont_18586
L_else_18588 : 
	addi	r4 r0 4148
	ldi	r25 r4 3
	addi	r4 r0 4138
	fldi	f2 r26 0
	fsti	f2 r4 0
	fldi	f2 r26 1
	fsti	f2 r4 1
	fldi	f2 r26 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	sti	r8 r2 0
	add	r9 r0 r26
	addi	r2 r2 1
	call	L_setup_startp_constants_2151
	addi	r2 r2 -1
	ldi	r8 r2 0
	addi	r22 r0 118
	sti	r8 r2 0
	add	r23 r0 r29
	add	r24 r0 r26
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -1
	ldi	r8 r2 0
L_cont_18586 : 
	addi	r4 r0 4
	bne	r30 r4 L_else_18591
	jump	L_cont_18589
L_else_18591 : 
	addi	r4 r0 4148
	ldi	r25 r4 4
	addi	r4 r0 4138
	fldi	f2 r26 0
	fsti	f2 r4 0
	fldi	f2 r26 1
	fsti	f2 r4 1
	fldi	f2 r26 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	sti	r8 r2 0
	add	r9 r0 r26
	addi	r2 r2 1
	call	L_setup_startp_constants_2151
	addi	r2 r2 -1
	ldi	r8 r2 0
	addi	r22 r0 118
	sti	r8 r2 0
	add	r23 r0 r29
	add	r24 r0 r26
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -1
	ldi	r8 r2 0
L_cont_18589 : 
	addi	r5 r0 4127
	add	r1 r28 r27
	ldi	r6 r1 0
	addi	r4 r0 4124
	fldi	f4 r5 0
	fldi	f3 r6 0
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r5 0
	fldi	f4 r5 1
	fldi	f3 r6 1
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r5 1
	fldi	f4 r5 2
	fldi	f3 r6 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r5 2
L_cont_18567 : 
	addi	r31 r27 1
	addi	r4 r0 4
	bgt	r31 r4 L_else_18571
	ldi	r4 r8 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_18573
	ldi	r4 r8 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_18576
	jump	L_cont_18574
L_else_18576 : 
	sti	r8 r2 0
	add	r28 r0 r31
	addi	r2 r2 1
	call	L_calc_diffuse_using_1point_2262
	addi	r2 r2 -1
	ldi	r8 r2 0
L_cont_18574 : 
	addi	r4 r31 1
	add	r27 r0 r4
	jump	L_do_without_neighbors_2271
L_else_18573 : 
	return
L_else_18571 : 
	return
L_else_18566 : 
	return
L_else_18564 : 
	return
L_try_exploit_neighbors_2287 : 
	add	r1 r14 r15
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r31 r4 L_else_18594
	ldi	r4 r6 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_18596
	add	r1 r14 r15
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r5 r1 0
	add	r1 r18 r15
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_18599
	add	r1 r17 r15
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_18631
	addi	r4 r15 -1
	add	r1 r14 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_18633
	addi	r4 r15 1
	add	r1 r14 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_18635
	addi	r4 r0 1
	jump	L_cont_18597
L_else_18635 : 
	addi	r4 r0 0
	jump	L_cont_18597
L_else_18633 : 
	addi	r4 r0 0
	jump	L_cont_18597
L_else_18631 : 
	addi	r4 r0 0
	jump	L_cont_18597
L_else_18599 : 
	addi	r4 r0 0
L_cont_18597 : 
	bne	r4 r0 L_else_18601
	add	r1 r14 r15
	ldi	r5 r1 0
	addi	r4 r0 4
	bgt	r31 r4 L_else_18603
	ldi	r4 r5 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_18605
	ldi	r4 r5 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_18608
	jump	L_cont_18606
L_else_18608 : 
	sti	r5 r2 0
	add	r8 r0 r5
	add	r28 r0 r31
	addi	r2 r2 1
	call	L_calc_diffuse_using_1point_2262
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_18606 : 
	addi	r27 r31 1
	add	r8 r0 r5
	jump	L_do_without_neighbors_2271
L_else_18605 : 
	return
L_else_18603 : 
	return
L_else_18601 : 
	ldi	r4 r6 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_18611
	jump	L_cont_18609
L_else_18611 : 
	add	r1 r18 r15
	ldi	r4 r1 0
	ldi	r9 r4 5
	addi	r4 r15 -1
	add	r1 r14 r4
	ldi	r4 r1 0
	ldi	r10 r4 5
	add	r1 r14 r15
	ldi	r4 r1 0
	ldi	r8 r4 5
	addi	r4 r15 1
	add	r1 r14 r4
	ldi	r4 r1 0
	ldi	r7 r4 5
	add	r1 r17 r15
	ldi	r4 r1 0
	ldi	r6 r4 5
	addi	r5 r0 4124
	add	r1 r9 r31
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r5 r0 4124
	add	r1 r10 r31
	ldi	r4 r1 0
	fldi	f2 r5 0
	fldi	f3 r4 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f2 r5 2
	fldi	f3 r4 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	addi	r5 r0 4124
	add	r1 r8 r31
	ldi	r4 r1 0
	fldi	f2 r5 0
	fldi	f3 r4 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f2 r5 2
	fldi	f3 r4 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	addi	r5 r0 4124
	add	r1 r7 r31
	ldi	r4 r1 0
	fldi	f2 r5 0
	fldi	f3 r4 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f2 r5 2
	fldi	f3 r4 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	addi	r5 r0 4124
	add	r1 r6 r31
	ldi	r4 r1 0
	fldi	f2 r5 0
	fldi	f3 r4 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f2 r5 2
	fldi	f3 r4 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	add	r1 r14 r15
	ldi	r4 r1 0
	ldi	r4 r4 4
	addi	r6 r0 4127
	add	r1 r4 r31
	ldi	r4 r1 0
	addi	r5 r0 4124
	fldi	f4 r6 0
	fldi	f2 r4 0
	fldi	f3 r5 0
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r6 0
	fldi	f3 r6 1
	fldi	f4 r4 1
	fldi	f2 r5 1
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r6 1
	fldi	f4 r6 2
	fldi	f2 r4 2
	fldi	f3 r5 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r6 2
L_cont_18609 : 
	addi	r27 r31 1
	add	r1 r14 r15
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r27 r4 L_else_18613
	ldi	r4 r6 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bgt	r0 r4 L_else_18615
	add	r1 r14 r15
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r5 r1 0
	add	r1 r18 r15
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_18618
	add	r1 r17 r15
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_18625
	addi	r4 r15 -1
	add	r1 r14 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_18627
	addi	r4 r15 1
	add	r1 r14 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_18629
	addi	r4 r0 1
	jump	L_cont_18616
L_else_18629 : 
	addi	r4 r0 0
	jump	L_cont_18616
L_else_18627 : 
	addi	r4 r0 0
	jump	L_cont_18616
L_else_18625 : 
	addi	r4 r0 0
	jump	L_cont_18616
L_else_18618 : 
	addi	r4 r0 0
L_cont_18616 : 
	bne	r4 r0 L_else_18620
	add	r1 r14 r15
	ldi	r8 r1 0
	jump	L_do_without_neighbors_2271
L_else_18620 : 
	ldi	r4 r6 3
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r0 L_else_18623
	jump	L_cont_18621
L_else_18623 : 
	add	r9 r0 r15
	add	r4 r0 r18
	add	r13 r0 r14
	add	r5 r0 r17
	add	r12 r0 r27
	call	L_calc_diffuse_using_5points_2265
L_cont_18621 : 
	addi	r4 r27 1
	add	r31 r0 r4
	jump	L_try_exploit_neighbors_2287
L_else_18615 : 
	return
L_else_18613 : 
	return
L_else_18596 : 
	return
L_else_18594 : 
	return
L_pretrace_diffuse_rays_2300 : 
	addi	r4 r0 4
	bgt	r27 r4 L_else_18638
	ldi	r4 r26 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bgt	r0 r4 L_else_18640
	ldi	r4 r26 3
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r0 L_else_18643
	jump	L_cont_18641
L_else_18643 : 
	ldi	r4 r26 6
	ldi	r7 r4 0
	addi	r4 r0 4124
	fldi	f2 r0 29
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	ldi	r5 r26 7
	ldi	r6 r26 1
	addi	r4 r0 4148
	add	r1 r4 r7
	ldi	r25 r1 0
	add	r1 r5 r27
	ldi	r23 r1 0
	add	r1 r6 r27
	ldi	r24 r1 0
	addi	r4 r0 4138
	fldi	f2 r24 0
	fsti	f2 r4 0
	fldi	f2 r24 1
	fsti	f2 r4 1
	fldi	f2 r24 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	add	r9 r0 r24
	call	L_setup_startp_constants_2151
	addi	r22 r0 118
	call	L_iter_trace_diffuse_rays_2249
	ldi	r4 r26 5
	add	r1 r4 r27
	ldi	r5 r1 0
	addi	r4 r0 4124
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
L_cont_18641 : 
	addi	r27 r27 1
	addi	r4 r0 4
	bgt	r27 r4 L_else_18645
	ldi	r4 r26 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bgt	r0 r4 L_else_18647
	ldi	r4 r26 3
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r0 L_else_18650
	jump	L_cont_18648
L_else_18650 : 
	ldi	r4 r26 6
	ldi	r7 r4 0
	addi	r4 r0 4124
	fldi	f2 r0 29
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	ldi	r5 r26 7
	ldi	r6 r26 1
	addi	r4 r0 4148
	add	r1 r4 r7
	ldi	r25 r1 0
	add	r1 r5 r27
	ldi	r23 r1 0
	add	r1 r6 r27
	ldi	r24 r1 0
	addi	r4 r0 4138
	fldi	f2 r24 0
	fsti	f2 r4 0
	fldi	f2 r24 1
	fsti	f2 r4 1
	fldi	f2 r24 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r7 r4 -1
	add	r9 r0 r24
	call	L_setup_startp_constants_2151
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
	fbgt	f0 f3 L_else_18653
	addi	r4 r0 0
	jump	L_cont_18651
L_else_18653 : 
	addi	r4 r0 1
L_cont_18651 : 
	bne	r4 r0 L_else_18656
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
	jump	L_cont_18654
L_else_18656 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2246
L_cont_18654 : 
	addi	r22 r0 116
	call	L_iter_trace_diffuse_rays_2249
	ldi	r4 r26 5
	add	r1 r4 r27
	ldi	r5 r1 0
	addi	r4 r0 4124
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
L_cont_18648 : 
	addi	r4 r27 1
	add	r27 r0 r4
	jump	L_pretrace_diffuse_rays_2300
L_else_18647 : 
	return
L_else_18645 : 
	return
L_else_18640 : 
	return
L_else_18638 : 
	return
L_pretrace_pixels_2303 : 
	bgt	r0 r9 L_else_18659
	addi	r4 r0 4134
	fldi	f3 r4 0
	addi	r4 r0 4132
	ldi	r4 r4 0
	sub	r4 r9 r4
	foi	f2 r4
	fmul	f3 f3 f2
	addi	r5 r0 4141
	addi	r4 r0 4102
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f2 f2 f20
	fsti	f2 r5 0
	addi	r5 r0 4141
	addi	r4 r0 4102
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f2 f2 f21
	fsti	f2 r5 1
	addi	r5 r0 4141
	addi	r4 r0 4102
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f2 f22
	fsti	f2 r5 2
	addi	r5 r0 4141
	fldi	f2 r5 0
	fmul	f3 f2 f2
	fldi	f2 r5 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r5 2
	fmul	f2 f2 f2
	fadd	f7 f3 f2
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_18662
	fldi	f4 r0 20
	jump	L_cont_18660
L_else_18662 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_18660 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_18665
	fadd	f2 f0 f2
	jump	L_cont_18663
L_else_18665 : 
	fsub	f2 f0 f2
L_cont_18663 : 
	fbgt	f3 f2 L_else_18668
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f6 f2 f3
	fadd	f5 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_18666
L_else_18668 : 
	fadd	f2 f0 f4
L_cont_18666 : 
	fmul	f2 f7 f2
	fbne	f2 f0 L_else_18671
	addi	r4 r0 1
	jump	L_cont_18669
L_else_18671 : 
	addi	r4 r0 0
L_cont_18669 : 
	bne	r4 r0 L_else_18674
	fldi	f3 r0 20
	fdiv	f3 f3 f2
	jump	L_cont_18672
L_else_18674 : 
	fldi	f3 r0 20
L_cont_18672 : 
	fldi	f2 r5 0
	fmul	f2 f2 f3
	fsti	f2 r5 0
	fldi	f2 r5 1
	fmul	f2 f2 f3
	fsti	f2 r5 1
	fldi	f2 r5 2
	fmul	f2 f2 f3
	fsti	f2 r5 2
	addi	r4 r0 4127
	fldi	f2 r0 29
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
	addi	r27 r0 0
	fldi	f18 r0 20
	addi	r26 r0 4141
	add	r1 r31 r9
	ldi	r25 r1 0
	fldi	f17 r0 29
	sti	r8 r2 0
	sti	r9 r2 1
	addi	r2 r2 2
	call	L_trace_ray_2240
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r9 r2 1
	add	r1 r31 r9
	ldi	r4 r1 0
	ldi	r5 r4 0
	addi	r4 r0 4127
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	add	r1 r31 r9
	ldi	r4 r1 0
	ldi	r4 r4 6
	sti	r8 r4 0
	add	r1 r31 r9
	ldi	r26 r1 0
	addi	r27 r0 0
	ldi	r4 r26 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bgt	r0 r4 L_else_18677
	ldi	r4 r26 3
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r0 L_else_18683
	jump	L_cont_18681
L_else_18683 : 
	ldi	r4 r26 6
	ldi	r7 r4 0
	addi	r4 r0 4124
	fldi	f2 r0 29
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	ldi	r5 r26 7
	ldi	r6 r26 1
	addi	r4 r0 4148
	add	r1 r4 r7
	ldi	r25 r1 0
	add	r1 r5 r27
	ldi	r23 r1 0
	add	r1 r6 r27
	ldi	r24 r1 0
	addi	r4 r0 4138
	fldi	f2 r24 0
	fsti	f2 r4 0
	fldi	f2 r24 1
	fsti	f2 r4 1
	fldi	f2 r24 2
	fsti	f2 r4 2
	addi	r4 r0 4144
	ldi	r4 r4 0
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
	fbgt	f0 f3 L_else_18686
	addi	r4 r0 0
	jump	L_cont_18684
L_else_18686 : 
	addi	r4 r0 1
L_cont_18684 : 
	bne	r4 r0 L_else_18689
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
	jump	L_cont_18687
L_else_18689 : 
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
L_cont_18687 : 
	addi	r22 r0 116
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
	ldi	r4 r26 5
	add	r1 r4 r27
	ldi	r5 r1 0
	addi	r4 r0 4124
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
L_cont_18681 : 
	addi	r27 r0 1
	sti	r8 r2 0
	sti	r9 r2 1
	addi	r2 r2 2
	call	L_pretrace_diffuse_rays_2300
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r9 r2 1
	jump	L_cont_18675
L_else_18677 : 
L_cont_18675 : 
	addi	r6 r9 -1
	addi	r4 r8 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_18680
	addi	r4 r4 -5
	jump	L_cont_18678
L_else_18680 : 
	add	r4 r0 r4
L_cont_18678 : 
	add	r9 r0 r6
	add	r8 r0 r4
	jump	L_pretrace_pixels_2303
L_else_18659 : 
	return
L_pretrace_line_2310 : 
	addi	r4 r0 4134
	fldi	f3 r4 0
	addi	r4 r0 4132
	ldi	r4 r4 1
	sub	r4 r5 r4
	foi	f2 r4
	fmul	f4 f3 f2
	addi	r4 r0 4105
	fldi	f2 r4 0
	fmul	f3 f4 f2
	addi	r4 r0 4099
	fldi	f2 r4 0
	fadd	f20 f3 f2
	addi	r4 r0 4105
	fldi	f2 r4 1
	fmul	f3 f4 f2
	addi	r4 r0 4099
	fldi	f2 r4 1
	fadd	f21 f3 f2
	addi	r4 r0 4105
	fldi	f2 r4 2
	fmul	f3 f4 f2
	addi	r4 r0 4099
	fldi	f2 r4 2
	fadd	f22 f3 f2
	addi	r4 r0 4130
	ldi	r4 r4 0
	addi	r9 r4 -1
	jump	L_pretrace_pixels_2303
L_scan_pixel_2314 : 
	addi	r4 r0 4130
	ldi	r4 r4 0
	bgt	r4 r7 L_else_18693
	return
L_else_18693 : 
	addi	r5 r0 4127
	add	r1 r11 r7
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r4 r0 4130
	ldi	r5 r4 1
	addi	r4 r10 1
	bgt	r5 r4 L_else_18696
	addi	r4 r0 0
	jump	L_cont_18694
L_else_18696 : 
	bgt	r10 r0 L_else_18736
	addi	r4 r0 0
	jump	L_cont_18694
L_else_18736 : 
	addi	r4 r0 4130
	ldi	r4 r4 0
	addi	r5 r7 1
	bgt	r4 r5 L_else_18738
	addi	r4 r0 0
	jump	L_cont_18694
L_else_18738 : 
	bgt	r7 r0 L_else_18740
	addi	r4 r0 0
	jump	L_cont_18694
L_else_18740 : 
	addi	r4 r0 1
L_cont_18694 : 
	bne	r4 r0 L_else_18699
	add	r1 r11 r7
	ldi	r31 r1 0
	addi	r28 r0 0
	ldi	r4 r31 2
	add	r1 r4 r28
	ldi	r4 r1 0
	bgt	r0 r4 L_else_18715
	ldi	r4 r31 3
	add	r1 r4 r28
	ldi	r4 r1 0
	bne	r4 r0 L_else_18718
	jump	L_cont_18716
L_else_18718 : 
	sti	r7 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	sti	r9 r2 4
	add	r8 r0 r31
	addi	r2 r2 5
	call	L_calc_diffuse_using_1point_2262
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	ldi	r9 r2 4
L_cont_18716 : 
	addi	r27 r0 1
	sti	r7 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	sti	r9 r2 4
	add	r8 r0 r31
	addi	r2 r2 5
	call	L_do_without_neighbors_2271
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	ldi	r9 r2 4
	jump	L_cont_18697
L_else_18715 : 
	jump	L_cont_18697
L_else_18699 : 
	addi	r27 r0 0
	add	r1 r11 r7
	ldi	r8 r1 0
	ldi	r4 r8 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bgt	r0 r4 L_else_18720
	add	r1 r11 r7
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r5 r1 0
	add	r1 r6 r7
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_18723
	add	r1 r9 r7
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_18730
	addi	r4 r7 -1
	add	r1 r11 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_18732
	addi	r4 r7 1
	add	r1 r11 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_18734
	addi	r4 r0 1
	jump	L_cont_18721
L_else_18734 : 
	addi	r4 r0 0
	jump	L_cont_18721
L_else_18732 : 
	addi	r4 r0 0
	jump	L_cont_18721
L_else_18730 : 
	addi	r4 r0 0
	jump	L_cont_18721
L_else_18723 : 
	addi	r4 r0 0
L_cont_18721 : 
	bne	r4 r0 L_else_18725
	add	r1 r11 r7
	ldi	r8 r1 0
	sti	r7 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	sti	r9 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2271
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	ldi	r9 r2 4
	jump	L_cont_18697
L_else_18725 : 
	ldi	r4 r8 3
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r0 L_else_18728
	jump	L_cont_18726
L_else_18728 : 
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r6 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	add	r4 r0 r6
	add	r13 r0 r11
	add	r5 r0 r9
	add	r12 r0 r27
	add	r9 r0 r7
	addi	r2 r2 5
	call	L_calc_diffuse_using_5points_2265
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r6 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
L_cont_18726 : 
	addi	r31 r0 1
	sti	r7 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	sti	r9 r2 4
	add	r15 r0 r7
	add	r16 r0 r10
	add	r18 r0 r6
	add	r14 r0 r11
	add	r17 r0 r9
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2287
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	ldi	r9 r2 4
	jump	L_cont_18697
L_else_18720 : 
L_cont_18697 : 
	addi	r4 r0 4127
	fldi	f2 r4 0
	call	min_caml_print_float
	addi	r4 r0 4127
	fldi	f2 r4 1
	call	min_caml_print_float
	addi	r4 r0 4127
	fldi	f2 r4 2
	call	min_caml_print_float
	addi	r7 r7 1
	addi	r4 r0 4130
	ldi	r4 r4 0
	bgt	r4 r7 L_else_18701
	return
L_else_18701 : 
	addi	r5 r0 4127
	add	r1 r11 r7
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r4 r0 4130
	ldi	r5 r4 1
	addi	r4 r10 1
	bgt	r5 r4 L_else_18704
	addi	r4 r0 0
	jump	L_cont_18702
L_else_18704 : 
	bgt	r10 r0 L_else_18709
	addi	r4 r0 0
	jump	L_cont_18702
L_else_18709 : 
	addi	r4 r0 4130
	ldi	r4 r4 0
	addi	r5 r7 1
	bgt	r4 r5 L_else_18711
	addi	r4 r0 0
	jump	L_cont_18702
L_else_18711 : 
	bgt	r7 r0 L_else_18713
	addi	r4 r0 0
	jump	L_cont_18702
L_else_18713 : 
	addi	r4 r0 1
L_cont_18702 : 
	bne	r4 r0 L_else_18707
	add	r1 r11 r7
	ldi	r8 r1 0
	addi	r27 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r6 r2 3
	sti	r10 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2271
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r6 r2 3
	ldi	r10 r2 4
	jump	L_cont_18705
L_else_18707 : 
	addi	r31 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r6 r2 3
	sti	r10 r2 4
	add	r15 r0 r7
	add	r16 r0 r10
	add	r18 r0 r6
	add	r14 r0 r11
	add	r17 r0 r9
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2287
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r6 r2 3
	ldi	r10 r2 4
L_cont_18705 : 
	addi	r4 r0 4127
	fldi	f2 r4 0
	call	min_caml_print_float
	addi	r4 r0 4127
	fldi	f2 r4 1
	call	min_caml_print_float
	addi	r4 r0 4127
	fldi	f2 r4 2
	call	min_caml_print_float
	addi	r4 r7 1
	add	r7 r0 r4
	jump	L_scan_pixel_2314
L_scan_line_2320 : 
	addi	r4 r0 4130
	ldi	r4 r4 1
	bgt	r4 r12 L_else_18743
	return
L_else_18743 : 
	addi	r4 r0 4130
	ldi	r4 r4 1
	addi	r4 r4 -1
	bgt	r4 r12 L_else_18746
	jump	L_cont_18744
L_else_18746 : 
	addi	r5 r12 1
	sti	r6 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r12 r2 4
	add	r31 r0 r10
	add	r8 r0 r6
	addi	r2 r2 5
	call	L_pretrace_line_2310
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r12 r2 4
L_cont_18744 : 
	addi	r15 r0 0
	addi	r4 r0 4130
	ldi	r4 r4 0
	bgt	r4 r0 L_else_18749
	jump	L_cont_18747
L_else_18749 : 
	addi	r5 r0 4127
	add	r1 r9 r15
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r4 r0 4130
	ldi	r4 r4 1
	addi	r5 r12 1
	bgt	r4 r5 L_else_18763
	addi	r4 r0 0
	jump	L_cont_18761
L_else_18763 : 
	bgt	r12 r0 L_else_18768
	addi	r4 r0 0
	jump	L_cont_18761
L_else_18768 : 
	addi	r4 r0 4130
	ldi	r5 r4 0
	addi	r4 r0 1
	bgt	r5 r4 L_else_18770
	addi	r4 r0 0
	jump	L_cont_18761
L_else_18770 : 
	addi	r4 r0 0
L_cont_18761 : 
	bne	r4 r0 L_else_18766
	add	r1 r9 r15
	ldi	r8 r1 0
	addi	r27 r0 0
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r12 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2271
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r12 r2 4
	jump	L_cont_18764
L_else_18766 : 
	addi	r31 r0 0
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r12 r2 4
	add	r16 r0 r12
	add	r18 r0 r11
	add	r14 r0 r9
	add	r17 r0 r10
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2287
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r12 r2 4
L_cont_18764 : 
	addi	r4 r0 4127
	fldi	f2 r4 0
	call	min_caml_print_float
	addi	r4 r0 4127
	fldi	f2 r4 1
	call	min_caml_print_float
	addi	r4 r0 4127
	fldi	f2 r4 2
	call	min_caml_print_float
	addi	r7 r0 1
	sti	r6 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r12 r2 4
	add	r6 r0 r11
	add	r11 r0 r9
	add	r9 r0 r10
	add	r10 r0 r12
	addi	r2 r2 5
	call	L_scan_pixel_2314
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r12 r2 4
L_cont_18747 : 
	addi	r8 r12 1
	addi	r4 r6 2
	addi	r5 r0 5
	bgt	r5 r4 L_else_18752
	addi	r6 r4 -5
	jump	L_cont_18750
L_else_18752 : 
	add	r6 r0 r4
L_cont_18750 : 
	addi	r4 r0 4130
	ldi	r4 r4 1
	bgt	r4 r8 L_else_18754
	return
L_else_18754 : 
	addi	r4 r0 4130
	ldi	r4 r4 1
	addi	r4 r4 -1
	bgt	r4 r8 L_else_18757
	jump	L_cont_18755
L_else_18757 : 
	addi	r5 r8 1
	sti	r8 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r6 r2 4
	add	r31 r0 r11
	add	r8 r0 r6
	addi	r2 r2 5
	call	L_pretrace_line_2310
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r6 r2 4
L_cont_18755 : 
	addi	r7 r0 0
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	sti	r8 r2 4
	add	r6 r0 r9
	add	r9 r0 r11
	add	r11 r0 r10
	add	r10 r0 r8
	addi	r2 r2 5
	call	L_scan_pixel_2314
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	ldi	r8 r2 4
	addi	r4 r8 1
	addi	r6 r6 2
	addi	r5 r0 5
	bgt	r5 r6 L_else_18760
	addi	r5 r6 -5
	jump	L_cont_18758
L_else_18760 : 
	add	r5 r0 r6
L_cont_18758 : 
	add	r12 r0 r4
	add	r6 r0 r5
	add	r1 r0 r11
	add	r11 r0 r10
	add	r10 r0 r9
	add	r9 r0 r1
	jump	L_scan_line_2320
L_create_pixel_2328 : 
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
L_init_line_elements_2330 : 
	bgt	r0 r13 L_else_18774
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
	bgt	r0 r15 L_else_18776
	call	L_create_pixel_2328
	add	r1 r16 r15
	sti	r4 r1 0
	addi	r4 r15 -1
	add	r13 r0 r4
	jump	L_init_line_elements_2330
L_else_18776 : 
	add	r4 r0 r16
	return
L_else_18774 : 
	add	r4 r0 r16
	return
L_create_pixelline_2333 : 
	addi	r4 r0 4130
	ldi	r13 r4 0
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
	addi	r4 r0 4130
	ldi	r4 r4 0
	addi	r15 r4 -2
	bgt	r0 r15 L_else_18779
	call	L_create_pixel_2328
	add	r1 r16 r15
	sti	r4 r1 0
	addi	r13 r15 -1
	jump	L_init_line_elements_2330
L_else_18779 : 
	add	r4 r0 r16
	return
L_tan_2335 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f10 f5 L_else_18783
	fldi	f2 r0 2
	fbgt	f2 f10 L_else_18785
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f10 f0 L_else_18787
	fldi	f2 r0 6
	fbgt	f2 f10 L_else_18789
	fmul	f2 f10 f10
	fmul	f8 f10 f2
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
	fadd	f11 f2 f10
	jump	L_cont_18781
L_else_18789 : 
	fldi	f2 r0 13
	fbgt	f2 f10 L_else_18791
	fadd	f2 f3 f10
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
	fsub	f11 f0 f2
	jump	L_cont_18781
L_else_18791 : 
	fadd	f9 f5 f10
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
	fsub	f11 f0 f2
	jump	L_cont_18781
L_else_18787 : 
	fbgt	f10 f4 L_else_18793
	fmul	f2 f10 f10
	fmul	f8 f10 f2
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
	fadd	f11 f2 f10
	jump	L_cont_18781
L_else_18793 : 
	fbgt	f10 f2 L_else_18795
	fsub	f2 f10 f3
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
	fadd	f11 f3 f2
	jump	L_cont_18781
L_else_18795 : 
	fsub	f9 f5 f10
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
	fadd	f11 f2 f9
	jump	L_cont_18781
L_else_18785 : 
	fadd	f9 f10 f3
	call	L_sin_1886
	fadd	f11 f0 f2
	jump	L_cont_18781
L_else_18783 : 
	fsub	f9 f10 f3
	call	L_sin_1886
	fadd	f11 f0 f2
L_cont_18781 : 
	fadd	f6 f0 f10
	call	L_cos_1888
	fdiv	f2 f11 f2
	return
L_calc_dirvec_2340 : 
	addi	r7 r0 5
	bgt	r7 r4 L_else_18798
	fmul	f3 f8 f8
	fmul	f2 f9 f9
	fadd	f3 f3 f2
	fldi	f2 r0 20
	fadd	f7 f3 f2
	fldi	f3 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_18801
	fldi	f6 r0 20
	jump	L_cont_18799
L_else_18801 : 
	fldi	f2 r0 20
	fdiv	f6 f2 f7
L_cont_18799 : 
	fadd	f5 f0 f7
	call	L_isqrt_1892
	fmul	f3 f7 f2
	fdiv	f5 f8 f3
	fdiv	f7 f9 f3
	fldi	f2 r0 20
	fdiv	f6 f2 f3
	addi	r4 r0 4148
	add	r1 r4 r5
	ldi	r5 r1 0
	add	r1 r5 r6
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsti	f5 r4 0
	fsti	f7 r4 1
	fsti	f6 r4 2
	addi	r4 r6 40
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f7
	fsti	f5 r4 0
	fsti	f6 r4 1
	fsti	f2 r4 2
	addi	r4 r6 80
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f3 f0 f5
	fsub	f2 f0 f7
	fsti	f6 r4 0
	fsti	f3 r4 1
	fsti	f2 r4 2
	addi	r4 r6 1
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f3 f0 f5
	fsub	f4 f0 f7
	fsub	f2 f0 f6
	fsti	f3 r4 0
	fsti	f4 r4 1
	fsti	f2 r4 2
	addi	r4 r6 41
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f3 f0 f5
	fsub	f2 f0 f6
	fsti	f3 r4 0
	fsti	f2 r4 1
	fsti	f7 r4 2
	addi	r4 r6 81
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f6
	fsti	f2 r4 0
	fsti	f5 r4 1
	fsti	f7 r4 2
	return
L_else_18798 : 
	fmul	f3 f9 f9
	fldi	f2 r0 50
	fadd	f7 f3 f2
	fldi	f4 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_18804
	fldi	f5 r0 20
	jump	L_cont_18802
L_else_18804 : 
	fldi	f2 r0 20
	fdiv	f5 f2 f7
L_cont_18802 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_18807
	fadd	f2 f0 f2
	jump	L_cont_18805
L_else_18807 : 
	fsub	f2 f0 f2
L_cont_18805 : 
	fbgt	f3 f2 L_else_18810
	fldi	f3 r0 27
	fmul	f2 f7 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f2 f5 f2
	fldi	f3 r0 28
	fdiv	f6 f2 f3
	fadd	f3 f0 f5
	fadd	f5 f0 f7
	call	L_isqrt_1892
	jump	L_cont_18808
L_else_18810 : 
	fadd	f2 f0 f5
L_cont_18808 : 
	fmul	f15 f7 f2
	fldi	f2 r0 20
	fdiv	f13 f2 f15
	call	L_atan_1890
	fmul	f10 f2 f18
	call	L_tan_2335
	fmul	f17 f2 f15
	addi	r4 r4 1
	fmul	f3 f17 f17
	fldi	f2 r0 50
	fadd	f7 f3 f2
	fldi	f5 r0 28
	fldi	f2 r0 20
	fbgt	f7 f2 L_else_18813
	fldi	f4 r0 20
	jump	L_cont_18811
L_else_18813 : 
	fldi	f2 r0 20
	fdiv	f4 f2 f7
L_cont_18811 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_18816
	fadd	f2 f0 f2
	jump	L_cont_18814
L_else_18816 : 
	fsub	f2 f0 f2
L_cont_18814 : 
	fbgt	f3 f2 L_else_18819
	fldi	f3 r0 27
	fmul	f2 f7 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fldi	f3 r0 28
	fdiv	f6 f2 f3
	fadd	f5 f0 f7
	fadd	f3 f0 f4
	call	L_isqrt_1892
	jump	L_cont_18817
L_else_18819 : 
	fadd	f2 f0 f4
L_cont_18817 : 
	fmul	f15 f7 f2
	fldi	f2 r0 20
	fdiv	f13 f2 f15
	call	L_atan_1890
	fmul	f10 f2 f16
	call	L_tan_2335
	fmul	f2 f2 f15
	fadd	f8 f0 f17
	fadd	f9 f0 f2
	jump	L_calc_dirvec_2340
L_calc_dirvecs_2348 : 
	bgt	r0 r8 L_else_18822
	foi	f2 r8
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f18 f2 f3
	addi	r4 r0 0
	fldi	f8 r0 29
	fldi	f9 r0 29
	add	r5 r0 r10
	add	r6 r0 r9
	fadd	f16 f0 f19
	call	L_calc_dirvec_2340
	foi	f3 r8
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 50
	fadd	f18 f3 f2
	addi	r4 r0 0
	fldi	f8 r0 29
	fldi	f9 r0 29
	addi	r6 r9 2
	add	r5 r0 r10
	fadd	f16 f0 f19
	call	L_calc_dirvec_2340
	addi	r6 r8 -1
	addi	r4 r10 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_18825
	addi	r4 r4 -5
	jump	L_cont_18823
L_else_18825 : 
	add	r4 r0 r4
L_cont_18823 : 
	add	r8 r0 r6
	add	r10 r0 r4
	jump	L_calc_dirvecs_2348
L_else_18822 : 
	return
L_calc_dirvec_rows_2353 : 
	bgt	r0 r11 L_else_18828
	foi	f2 r11
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f19 f2 f3
	addi	r8 r0 4
	add	r10 r0 r12
	add	r9 r0 r13
	call	L_calc_dirvecs_2348
	addi	r14 r11 -1
	addi	r4 r12 2
	addi	r5 r0 5
	bgt	r5 r4 L_else_18831
	addi	r12 r4 -5
	jump	L_cont_18829
L_else_18831 : 
	add	r12 r0 r4
L_cont_18829 : 
	addi	r11 r13 4
	bgt	r0 r14 L_else_18833
	foi	f2 r14
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f19 f2 f3
	addi	r8 r0 4
	add	r10 r0 r12
	add	r9 r0 r11
	call	L_calc_dirvecs_2348
	addi	r6 r14 -1
	addi	r5 r12 2
	addi	r4 r0 5
	bgt	r4 r5 L_else_18836
	addi	r4 r5 -5
	jump	L_cont_18834
L_else_18836 : 
	add	r4 r0 r5
L_cont_18834 : 
	addi	r5 r11 4
	add	r11 r0 r6
	add	r12 r0 r4
	add	r13 r0 r5
	jump	L_calc_dirvec_rows_2353
L_else_18833 : 
	return
L_else_18828 : 
	return
L_create_dirvec_elements_2359 : 
	bgt	r0 r9 L_else_18839
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r9
	sti	r4 r1 0
	addi	r9 r9 -1
	bgt	r0 r9 L_else_18841
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r9
	sti	r4 r1 0
	addi	r9 r9 -1
	bgt	r0 r9 L_else_18843
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r9
	sti	r4 r1 0
	addi	r9 r9 -1
	bgt	r0 r9 L_else_18845
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r9
	sti	r4 r1 0
	addi	r4 r9 -1
	add	r9 r0 r4
	jump	L_create_dirvec_elements_2359
L_else_18845 : 
	return
L_else_18843 : 
	return
L_else_18841 : 
	return
L_else_18839 : 
	return
L_create_dirvecs_2362 : 
	bgt	r0 r11 L_else_18848
	addi	r10 r0 4148
	addi	r9 r0 120
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
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
	addi	r4 r0 4148
	add	r1 r4 r11
	ldi	r10 r1 0
	addi	r9 r0 118
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
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
	addi	r4 r0 4144
	ldi	r4 r4 0
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
	addi	r4 r0 4144
	ldi	r4 r4 0
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
	bgt	r0 r11 L_else_18850
	addi	r9 r0 4148
	addi	r10 r0 120
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
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
	addi	r4 r0 4148
	add	r1 r4 r11
	ldi	r10 r1 0
	addi	r9 r0 118
	addi	r4 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r8 r0 r4
	addi	r4 r0 4144
	ldi	r4 r4 0
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
	addi	r4 r0 4144
	ldi	r4 r4 0
	add	r5 r0 r8
	call	min_caml_create_array
	sti	r8 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r10 r9
	sti	r4 r1 0
	addi	r9 r0 116
	call	L_create_dirvec_elements_2359
	addi	r4 r11 -1
	add	r11 r0 r4
	jump	L_create_dirvecs_2362
L_else_18850 : 
	return
L_else_18848 : 
	return
L_init_dirvec_constants_2364 : 
	bgt	r0 r13 L_else_18853
	add	r1 r14 r13
	ldi	r11 r1 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2146
	addi	r13 r13 -1
	bgt	r0 r13 L_else_18855
	add	r1 r14 r13
	ldi	r11 r1 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r10 r4 -1
	bgt	r0 r10 L_else_18858
	addi	r4 r0 5042
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18873
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18871
L_else_18873 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18875
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18871
L_else_18875 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_18871 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_18856
L_else_18858 : 
L_cont_18856 : 
	addi	r13 r13 -1
	bgt	r0 r13 L_else_18860
	add	r1 r14 r13
	ldi	r11 r1 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2146
	addi	r13 r13 -1
	bgt	r0 r13 L_else_18862
	add	r1 r14 r13
	ldi	r11 r1 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r10 r4 -1
	bgt	r0 r10 L_else_18865
	addi	r4 r0 5042
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18868
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18866
L_else_18868 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18870
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18866
L_else_18870 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_18866 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_18863
L_else_18865 : 
L_cont_18863 : 
	addi	r4 r13 -1
	add	r13 r0 r4
	jump	L_init_dirvec_constants_2364
L_else_18862 : 
	return
L_else_18860 : 
	return
L_else_18855 : 
	return
L_else_18853 : 
	return
L_init_vecset_constants_2367 : 
	bgt	r0 r15 L_else_18878
	addi	r4 r0 4148
	add	r1 r4 r15
	ldi	r14 r1 0
	addi	r4 r0 119
	add	r1 r14 r4
	ldi	r11 r1 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r10 r4 -1
	bgt	r0 r10 L_else_18881
	addi	r4 r0 5042
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18914
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18912
L_else_18914 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18916
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18912
L_else_18916 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_18912 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_18879
L_else_18881 : 
L_cont_18879 : 
	addi	r4 r0 118
	add	r1 r14 r4
	ldi	r11 r1 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2146
	addi	r4 r0 117
	add	r1 r14 r4
	ldi	r11 r1 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r10 r4 -1
	bgt	r0 r10 L_else_18884
	addi	r4 r0 5042
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18909
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18907
L_else_18909 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18911
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18907
L_else_18911 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_18907 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_18882
L_else_18884 : 
L_cont_18882 : 
	addi	r13 r0 116
	call	L_init_dirvec_constants_2364
	addi	r15 r15 -1
	bgt	r0 r15 L_else_18886
	addi	r4 r0 4148
	add	r1 r4 r15
	ldi	r14 r1 0
	addi	r4 r0 119
	add	r1 r14 r4
	ldi	r11 r1 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2146
	addi	r4 r0 118
	add	r1 r14 r4
	ldi	r11 r1 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r10 r4 -1
	bgt	r0 r10 L_else_18889
	addi	r4 r0 5042
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18904
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18902
L_else_18904 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18906
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18902
L_else_18906 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_18902 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_18887
L_else_18889 : 
L_cont_18887 : 
	addi	r13 r0 117
	call	L_init_dirvec_constants_2364
	addi	r15 r15 -1
	bgt	r0 r15 L_else_18891
	addi	r4 r0 4148
	add	r1 r4 r15
	ldi	r14 r1 0
	addi	r4 r0 119
	add	r1 r14 r4
	ldi	r11 r1 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r10 r4 -1
	bgt	r0 r10 L_else_18894
	addi	r4 r0 5042
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18899
	call	L_setup_rect_table_2137
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18897
L_else_18899 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18901
	call	L_setup_surface_table_2140
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_18897
L_else_18901 : 
	call	L_setup_second_table_2143
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_18897 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2146
	jump	L_cont_18892
L_else_18894 : 
L_cont_18892 : 
	addi	r13 r0 118
	call	L_init_dirvec_constants_2364
	addi	r15 r15 -1
	bgt	r0 r15 L_else_18896
	addi	r4 r0 4148
	add	r1 r4 r15
	ldi	r14 r1 0
	addi	r13 r0 119
	call	L_init_dirvec_constants_2364
	addi	r4 r15 -1
	add	r15 r0 r4
	jump	L_init_vecset_constants_2367
L_else_18896 : 
	return
L_else_18891 : 
	return
L_else_18886 : 
	return
L_else_18878 : 
	return
min_caml_start : 
	addi	r6 r0 128
	addi	r5 r0 128
	addi	r4 r0 4130
	sti	r6 r4 0
	addi	r4 r0 4130
	sti	r5 r4 1
	addi	r5 r0 4132
	addi	r4 r0 64
	sti	r4 r5 0
	addi	r5 r0 4132
	addi	r4 r0 64
	sti	r4 r5 1
	addi	r4 r0 4134
	fldi	f3 r0 55
	foi	f2 r6
	fdiv	f2 f3 f2
	fsti	f2 r4 0
	call	L_create_pixelline_2333
	add	r9 r0 r4
	sti	r9 r2 0
	addi	r2 r2 1
	call	L_create_pixelline_2333
	addi	r2 r2 -1
	add	r10 r0 r4
	ldi	r9 r2 0
	sti	r9 r2 0
	sti	r10 r2 1
	addi	r2 r2 2
	call	L_create_pixelline_2333
	addi	r2 r2 -2
	add	r7 r0 r4
	ldi	r9 r2 0
	ldi	r10 r2 1
	addi	r4 r0 4096
	call	min_caml_read_float
	fsti	f2 r4 0
	addi	r4 r0 4096
	call	min_caml_read_float
	fsti	f2 r4 1
	addi	r4 r0 4096
	call	min_caml_read_float
	fsti	f2 r4 2
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 30
	fmul	f10 f3 f2
	fadd	f6 f0 f10
	call	L_cos_1888
	fadd	f12 f0 f2
	fadd	f9 f0 f10
	call	L_sin_1886
	fadd	f13 f0 f2
	call	min_caml_read_float
	fldi	f3 r0 30
	fmul	f10 f2 f3
	fadd	f6 f0 f10
	call	L_cos_1888
	fadd	f11 f0 f2
	fadd	f9 f0 f10
	call	L_sin_1886
	fadd	f4 f0 f2
	addi	r4 r0 4099
	fmul	f2 f12 f4
	fldi	f3 r0 56
	fmul	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 4099
	fldi	f2 r0 57
	fmul	f2 f13 f2
	fsti	f2 r4 1
	addi	r4 r0 4099
	fmul	f3 f12 f11
	fldi	f2 r0 56
	fmul	f2 f3 f2
	fsti	f2 r4 2
	addi	r4 r0 4102
	fsti	f11 r4 0
	addi	r4 r0 4102
	fldi	f2 r0 29
	fsti	f2 r4 1
	addi	r4 r0 4102
	fsub	f2 f0 f4
	fsti	f2 r4 2
	addi	r4 r0 4105
	fsub	f2 f0 f13
	fmul	f2 f2 f4
	fsti	f2 r4 0
	addi	r4 r0 4105
	fsub	f2 f0 f12
	fsti	f2 r4 1
	addi	r4 r0 4105
	fsub	f2 f0 f13
	fmul	f2 f2 f11
	fsti	f2 r4 2
	addi	r4 r0 4108
	addi	r5 r0 4096
	fldi	f3 r5 0
	addi	r5 r0 4099
	fldi	f2 r5 0
	fsub	f2 f3 f2
	fsti	f2 r4 0
	addi	r4 r0 4108
	addi	r5 r0 4096
	fldi	f3 r5 1
	addi	r5 r0 4099
	fldi	f2 r5 1
	fsub	f2 f3 f2
	fsti	f2 r4 1
	addi	r5 r0 4108
	addi	r4 r0 4096
	fldi	f3 r4 2
	addi	r4 r0 4099
	fldi	f2 r4 2
	fsub	f2 f3 f2
	fsti	f2 r5 2
	call	min_caml_read_int
	call	min_caml_read_float
	fldi	f3 r0 30
	fmul	f10 f2 f3
	fadd	f9 f0 f10
	call	L_sin_1886
	addi	r4 r0 4111
	fsub	f2 f0 f2
	fsti	f2 r4 1
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 30
	fmul	f11 f3 f2
	fadd	f6 f0 f10
	call	L_cos_1888
	fadd	f10 f0 f2
	fadd	f9 f0 f11
	call	L_sin_1886
	addi	r4 r0 4111
	fmul	f2 f10 f2
	fsti	f2 r4 0
	fadd	f6 f0 f11
	call	L_cos_1888
	addi	r4 r0 4111
	fmul	f2 f10 f2
	fsti	f2 r4 2
	addi	r4 r0 4153
	call	min_caml_read_float
	fsti	f2 r4 0
	addi	r11 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	L_read_object_2041
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	addi	r14 r0 0
	addi	r12 r0 0
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	L_read_net_item_2045
	addi	r2 r2 -3
	add	r6 r0 r4
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_18919
	jump	L_cont_18917
L_else_18919 : 
	addi	r4 r0 4155
	add	r1 r4 r14
	sti	r6 r1 0
	addi	r19 r0 1
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	L_read_and_network_2049
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
L_cont_18917 : 
	addi	r23 r0 4255
	addi	r22 r0 0
	addi	r12 r0 0
	sti	r10 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	L_read_net_item_2045
	addi	r2 r2 -3
	add	r21 r0 r4
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	ldi	r5 r21 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_18922
	addi	r4 r0 1
	sti	r7 r2 0
	add	r5 r0 r21
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r7 r2 0
	jump	L_cont_18920
L_else_18922 : 
	addi	r19 r0 1
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	L_read_or_network_2047
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	add	r1 r4 r22
	sti	r21 r1 0
	add	r4 r0 r4
L_cont_18920 : 
	sti	r4 r23 0
	addi	r4 r0 80
	call	min_caml_print_char
	addi	r4 r0 54
	call	min_caml_print_char
	addi	r4 r0 10
	call	min_caml_print_char
	addi	r4 r0 4130
	ldi	r8 r4 0
	addi	r4 r8 -10
	bgt	r0 r4 L_else_18925
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19047
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19049
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r7 r2 0
	jump	L_cont_18923
L_else_19049 : 
	addi	r5 r0 2
	jump	L_cont_18923
L_else_19047 : 
	addi	r5 r0 1
	jump	L_cont_18923
L_else_18925 : 
	addi	r5 r0 0
L_cont_18923 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_18928
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19043
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19045
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	jump	L_cont_18926
L_else_19045 : 
	addi	r4 r0 2
	jump	L_cont_18926
L_else_19043 : 
	addi	r4 r0 1
	jump	L_cont_18926
L_else_18928 : 
	addi	r4 r0 0
L_cont_18926 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_18931
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19039
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19041
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r7 r2 0
	jump	L_cont_18929
L_else_19041 : 
	addi	r5 r0 2
	jump	L_cont_18929
L_else_19039 : 
	addi	r5 r0 1
	jump	L_cont_18929
L_else_18931 : 
	addi	r5 r0 0
L_cont_18929 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_18934
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19035
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19037
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r7 r2 0
	jump	L_cont_18932
L_else_19037 : 
	addi	r5 r0 2
	jump	L_cont_18932
L_else_19035 : 
	addi	r5 r0 1
	jump	L_cont_18932
L_else_18934 : 
	addi	r5 r0 0
L_cont_18932 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r5 r4 -10
	bgt	r0 r5 L_else_18937
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_19031
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_19033
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	jump	L_cont_18935
L_else_19033 : 
	addi	r4 r0 2
	jump	L_cont_18935
L_else_19031 : 
	addi	r4 r0 1
	jump	L_cont_18935
L_else_18937 : 
	addi	r4 r0 0
L_cont_18935 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_18940
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19027
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19029
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r7 r2 0
	jump	L_cont_18938
L_else_19029 : 
	addi	r5 r0 2
	jump	L_cont_18938
L_else_19027 : 
	addi	r5 r0 1
	jump	L_cont_18938
L_else_18940 : 
	addi	r5 r0 0
L_cont_18938 : 
	addi	r4 r0 10
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 32
	call	min_caml_print_char
	addi	r4 r0 4130
	ldi	r8 r4 1
	addi	r4 r8 -10
	bgt	r0 r4 L_else_18943
	addi	r4 r8 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_19023
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_19025
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	jump	L_cont_18941
L_else_19025 : 
	addi	r4 r0 2
	jump	L_cont_18941
L_else_19023 : 
	addi	r4 r0 1
	jump	L_cont_18941
L_else_18943 : 
	addi	r4 r0 0
L_cont_18941 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_18946
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_19019
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_19021
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	jump	L_cont_18944
L_else_19021 : 
	addi	r4 r0 2
	jump	L_cont_18944
L_else_19019 : 
	addi	r4 r0 1
	jump	L_cont_18944
L_else_18946 : 
	addi	r4 r0 0
L_cont_18944 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_18949
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19015
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19017
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r7 r2 0
	jump	L_cont_18947
L_else_19017 : 
	addi	r5 r0 2
	jump	L_cont_18947
L_else_19015 : 
	addi	r5 r0 1
	jump	L_cont_18947
L_else_18949 : 
	addi	r5 r0 0
L_cont_18947 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_18952
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19011
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19013
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r7 r2 0
	jump	L_cont_18950
L_else_19013 : 
	addi	r5 r0 2
	jump	L_cont_18950
L_else_19011 : 
	addi	r5 r0 1
	jump	L_cont_18950
L_else_18952 : 
	addi	r5 r0 0
L_cont_18950 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r5 r4 -10
	bgt	r0 r5 L_else_18955
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_19007
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_19009
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	jump	L_cont_18953
L_else_19009 : 
	addi	r4 r0 2
	jump	L_cont_18953
L_else_19007 : 
	addi	r4 r0 1
	jump	L_cont_18953
L_else_18955 : 
	addi	r4 r0 0
L_cont_18953 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_18958
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19003
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_19005
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r7 r2 0
	jump	L_cont_18956
L_else_19005 : 
	addi	r5 r0 2
	jump	L_cont_18956
L_else_19003 : 
	addi	r5 r0 1
	jump	L_cont_18956
L_else_18958 : 
	addi	r5 r0 0
L_cont_18956 : 
	addi	r4 r0 10
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 32
	call	min_caml_print_char
	addi	r8 r0 255
	addi	r4 r0 225
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	addi	r5 r4 -10
	bgt	r0 r5 L_else_18961
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_18999
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_19001
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	jump	L_cont_18959
L_else_19001 : 
	addi	r4 r0 2
	jump	L_cont_18959
L_else_18999 : 
	addi	r4 r0 1
	jump	L_cont_18959
L_else_18961 : 
	addi	r4 r0 0
L_cont_18959 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 225
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	addi	r5 r4 -10
	bgt	r0 r5 L_else_18964
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_18995
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_18997
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	jump	L_cont_18962
L_else_18997 : 
	addi	r4 r0 2
	jump	L_cont_18962
L_else_18995 : 
	addi	r4 r0 1
	jump	L_cont_18962
L_else_18964 : 
	addi	r4 r0 0
L_cont_18962 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	sub	r5 r8 r4
	addi	r4 r5 -10
	bgt	r0 r4 L_else_18967
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_18991
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_18993
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	jump	L_cont_18965
L_else_18993 : 
	addi	r4 r0 2
	jump	L_cont_18965
L_else_18991 : 
	addi	r4 r0 1
	jump	L_cont_18965
L_else_18967 : 
	addi	r4 r0 0
L_cont_18965 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 225
	addi	r5 r0 3
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1898
	addi	r2 r2 -1
	ldi	r7 r2 0
	addi	r5 r0 10
	mul	r4 r4 r5
	sub	r4 r8 r4
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 10
	call	min_caml_print_char
	addi	r11 r0 4
	addi	r13 r0 4148
	addi	r8 r0 120
	addi	r4 r0 3
	fldi	f2 r0 29
	sti	r7 r2 0
	addi	r2 r2 1
	call	min_caml_create_float_array
	addi	r2 r2 -1
	add	r12 r0 r4
	ldi	r7 r2 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r7 r2 0
	add	r5 r0 r12
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r7 r2 0
	sti	r12 r3 0
	sti	r4 r3 1
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r7 r2 0
	add	r4 r0 r8
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r7 r2 0
	add	r1 r13 r11
	sti	r4 r1 0
	addi	r4 r0 4148
	add	r1 r4 r11
	ldi	r4 r1 0
	addi	r5 r0 118
	sti	r10 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	add	r10 r0 r4
	add	r9 r0 r5
	addi	r2 r2 3
	call	L_create_dirvec_elements_2359
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	addi	r11 r0 3
	sti	r10 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	L_create_dirvecs_2362
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	addi	r6 r0 9
	addi	r4 r0 0
	addi	r5 r0 0
	foi	f3 r6
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f19 f3 f2
	addi	r8 r0 4
	sti	r10 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	add	r10 r0 r4
	add	r9 r0 r5
	addi	r2 r2 3
	call	L_calc_dirvecs_2348
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	addi	r11 r0 8
	addi	r12 r0 2
	addi	r13 r0 4
	sti	r10 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	L_calc_dirvec_rows_2353
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	addi	r5 r0 4
	addi	r4 r0 4148
	add	r1 r4 r5
	ldi	r14 r1 0
	addi	r13 r0 119
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	L_init_dirvec_constants_2364
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	addi	r15 r0 3
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	L_init_vecset_constants_2367
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	addi	r4 r0 4977
	ldi	r5 r4 0
	addi	r4 r0 4111
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r11 r0 4977
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r13 r4 -1
	bgt	r0 r13 L_else_18970
	addi	r4 r0 5042
	add	r1 r4 r13
	ldi	r6 r1 0
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18987
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_setup_rect_table_2137
	addi	r2 r2 -1
	ldi	r7 r2 0
	add	r1 r12 r13
	sti	r4 r1 0
	jump	L_cont_18985
L_else_18987 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18989
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_setup_surface_table_2140
	addi	r2 r2 -1
	ldi	r7 r2 0
	add	r1 r12 r13
	sti	r4 r1 0
	jump	L_cont_18985
L_else_18989 : 
	sti	r7 r2 0
	addi	r2 r2 1
	call	L_setup_second_table_2143
	addi	r2 r2 -1
	ldi	r7 r2 0
	add	r1 r12 r13
	sti	r4 r1 0
L_cont_18985 : 
	addi	r8 r13 -1
	sti	r10 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	jump	L_cont_18968
L_else_18970 : 
L_cont_18968 : 
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r6 r4 -1
	bgt	r0 r6 L_else_18973
	addi	r4 r0 5042
	add	r1 r4 r6
	ldi	r8 r1 0
	ldi	r4 r8 2
	addi	r5 r0 2
	bne	r4 r5 L_else_18975
	ldi	r4 r8 7
	fldi	f3 r4 0
	fldi	f2 r0 20
	fbgt	f2 f3 L_else_18978
	addi	r4 r0 0
	jump	L_cont_18976
L_else_18978 : 
	addi	r4 r0 1
L_cont_18976 : 
	bne	r4 r0 L_else_18980
	jump	L_cont_18971
L_else_18980 : 
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_18982
	addi	r4 r0 4
	mul	r17 r6 r4
	addi	r4 r0 4147
	ldi	r16 r4 0
	fldi	f3 r0 20
	ldi	r4 r8 7
	fldi	f2 r4 0
	fsub	f12 f3 f2
	addi	r4 r0 4111
	fldi	f2 r4 0
	fsub	f10 f0 f2
	addi	r4 r0 4111
	fldi	f2 r4 1
	fsub	f11 f0 f2
	addi	r4 r0 4111
	fldi	f2 r4 2
	fsub	f9 f0 f2
	addi	r14 r17 1
	addi	r4 r0 4111
	fldi	f3 r4 0
	addi	r4 r0 3
	fldi	f2 r0 29
	sti	r7 r2 0
	addi	r2 r2 1
	call	min_caml_create_float_array
	addi	r2 r2 -1
	add	r8 r0 r4
	ldi	r7 r2 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r7 r2 0
	add	r5 r0 r8
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r7 r2 0
	sti	r8 r3 0
	sti	r4 r3 1
	add	r13 r0 r3
	addi	r3 r3 2
	fsti	f3 r8 0
	fsti	f11 r8 1
	fsti	f9 r8 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r8 r4 -1
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	add	r11 r0 r13
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	addi	r5 r0 4257
	sti	r14 r3 0
	sti	r13 r3 1
	fsti	f12 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r16
	sti	r4 r1 0
	addi	r15 r16 1
	addi	r14 r17 2
	addi	r4 r0 4111
	fldi	f3 r4 1
	addi	r4 r0 3
	fldi	f2 r0 29
	sti	r7 r2 0
	addi	r2 r2 1
	call	min_caml_create_float_array
	addi	r2 r2 -1
	add	r8 r0 r4
	ldi	r7 r2 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r7 r2 0
	add	r5 r0 r8
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r7 r2 0
	sti	r8 r3 0
	sti	r4 r3 1
	add	r13 r0 r3
	addi	r3 r3 2
	fsti	f10 r8 0
	fsti	f3 r8 1
	fsti	f9 r8 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r8 r4 -1
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	add	r11 r0 r13
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	addi	r5 r0 4257
	sti	r14 r3 0
	sti	r13 r3 1
	fsti	f12 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r15
	sti	r4 r1 0
	addi	r15 r16 2
	addi	r14 r17 3
	addi	r4 r0 4111
	fldi	f3 r4 2
	addi	r4 r0 3
	fldi	f2 r0 29
	sti	r7 r2 0
	addi	r2 r2 1
	call	min_caml_create_float_array
	addi	r2 r2 -1
	add	r8 r0 r4
	ldi	r7 r2 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r7 r2 0
	add	r5 r0 r8
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r7 r2 0
	sti	r8 r3 0
	sti	r4 r3 1
	add	r13 r0 r3
	addi	r3 r3 2
	fsti	f10 r8 0
	fsti	f11 r8 1
	fsti	f3 r8 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r8 r4 -1
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	add	r11 r0 r13
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	addi	r5 r0 4257
	sti	r14 r3 0
	sti	r13 r3 1
	fsti	f12 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r15
	sti	r4 r1 0
	addi	r5 r0 4147
	addi	r4 r16 3
	sti	r4 r5 0
	jump	L_cont_18971
L_else_18982 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_18984
	addi	r4 r0 4
	mul	r4 r6 r4
	addi	r15 r4 1
	addi	r4 r0 4147
	ldi	r14 r4 0
	fldi	f3 r0 20
	ldi	r4 r8 7
	fldi	f2 r4 0
	fsub	f9 f3 f2
	addi	r5 r0 4111
	ldi	r4 r8 4
	fldi	f2 r5 0
	fldi	f3 r4 0
	fmul	f4 f2 f3
	fldi	f3 r5 1
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r5 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f6 f4 f2
	fldi	f3 r0 28
	ldi	r4 r8 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fmul	f3 f2 f6
	addi	r4 r0 4111
	fldi	f2 r4 0
	fsub	f5 f3 f2
	fldi	f3 r0 28
	ldi	r4 r8 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fmul	f3 f2 f6
	addi	r4 r0 4111
	fldi	f2 r4 1
	fsub	f4 f3 f2
	fldi	f3 r0 28
	ldi	r4 r8 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	addi	r4 r0 4111
	fldi	f3 r4 2
	fsub	f3 f2 f3
	addi	r4 r0 3
	fldi	f2 r0 29
	sti	r7 r2 0
	addi	r2 r2 1
	call	min_caml_create_float_array
	addi	r2 r2 -1
	add	r8 r0 r4
	ldi	r7 r2 0
	addi	r4 r0 4144
	ldi	r4 r4 0
	sti	r7 r2 0
	add	r5 r0 r8
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r7 r2 0
	sti	r8 r3 0
	sti	r4 r3 1
	add	r13 r0 r3
	addi	r3 r3 2
	fsti	f5 r8 0
	fsti	f4 r8 1
	fsti	f3 r8 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r8 r4 -1
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	add	r11 r0 r13
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	addi	r5 r0 4257
	sti	r15 r3 0
	sti	r13 r3 1
	fsti	f9 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r14
	sti	r4 r1 0
	addi	r5 r0 4147
	addi	r4 r14 1
	sti	r4 r5 0
	jump	L_cont_18971
L_else_18984 : 
	jump	L_cont_18971
L_else_18975 : 
	jump	L_cont_18971
L_else_18973 : 
L_cont_18971 : 
	addi	r5 r0 0
	addi	r8 r0 0
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	add	r31 r0 r10
	addi	r2 r2 3
	call	L_pretrace_line_2310
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	addi	r12 r0 0
	addi	r6 r0 2
	add	r11 r0 r9
	add	r9 r0 r10
	add	r10 r0 r7
	call	L_scan_line_2320
	return
L_mend_19050 : 
	call	min_caml_start
