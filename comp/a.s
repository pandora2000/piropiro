	nop
	nop
	addi	r4 r0 170
	ptc	r4
	addi	r2 r0 1024
	addi	r3 r0 13107
	muli	r3 r3 10
	addi	r3 r3 2
	addi	r4 r0 33651
	sti	r4 r0 33649
	addi	r4 r0 33654
	sti	r4 r0 33650
	jump	L_mend_14957
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
	bne	r0 r5 L_else_14958
	return
L_else_14958 : 
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
	bne	r0 r5 L_else_14959
	return
L_else_14959 : 
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
L_psin_1882 : 
	fadd	f9 f0 f2
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f7 f8 f2
	fmul	f6 f7 f2
	fmul	f5 f6 f2
	fmul	f4 f5 f2
	fmul	f2 f4 f2
	fldi	f3 r0 0
	fmul	f3 f3 f2
	fldi	f2 r0 1
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 3
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 4
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 5
	fmul	f2 f2 f8
	fsub	f2 f3 f2
	fadd	f2 f2 f9
	return
L_pcos_1884 : 
	fmul	f8 f2 f2
	fmul	f7 f8 f8
	fmul	f6 f7 f8
	fmul	f5 f6 f8
	fmul	f4 f5 f8
	fmul	f3 f4 f8
	fldi	f2 r0 6
	fmul	f3 f2 f3
	fldi	f2 r0 7
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f6
	fsub	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f8
	fsub	f3 f3 f2
	fldi	f2 r0 12
	fadd	f2 f3 f2
	return
L_sin_1886 : 
	fadd	f6 f0 f2
	fldi	f3 r0 13
	fldi	f4 r0 14
	fbgt	f6 f4 L_else_13196
	fldi	f2 r0 15
	fbgt	f2 f6 L_else_13198
	fldi	f2 r0 16
	fldi	f3 r0 17
	fldi	f5 r0 18
	fbgt	f6 f0 L_else_13200
	fldi	f2 r0 19
	fbgt	f2 f6 L_else_13202
	fadd	f2 f0 f6
	jump	L_psin_1882
L_else_13202 : 
	fldi	f2 r0 20
	fbgt	f2 f6 L_else_13204
	fadd	f2 f3 f6
	call	L_pcos_1884
	fsub	f2 f0 f2
	return
L_else_13204 : 
	fadd	f2 f4 f6
	call	L_psin_1882
	fsub	f2 f0 f2
	return
L_else_13200 : 
	fbgt	f6 f2 L_else_13206
	fadd	f2 f0 f6
	jump	L_psin_1882
L_else_13206 : 
	fbgt	f6 f5 L_else_13208
	fsub	f2 f6 f3
	jump	L_pcos_1884
L_else_13208 : 
	fsub	f2 f4 f6
	jump	L_psin_1882
L_else_13198 : 
	fadd	f2 f6 f3
	jump	L_sin_1886
L_else_13196 : 
	fsub	f2 f6 f3
	jump	L_sin_1886
L_cos_1888 : 
	fadd	f6 f0 f2
	fldi	f3 r0 13
	fldi	f5 r0 14
	fbgt	f6 f5 L_else_13211
	fldi	f2 r0 15
	fbgt	f2 f6 L_else_13213
	fldi	f2 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f6 f0 L_else_13215
	fldi	f2 r0 19
	fbgt	f2 f6 L_else_13217
	fadd	f2 f0 f6
	jump	L_pcos_1884
L_else_13217 : 
	fldi	f2 r0 20
	fbgt	f2 f6 L_else_13219
	fadd	f2 f6 f4
	jump	L_psin_1882
L_else_13219 : 
	fadd	f2 f5 f6
	call	L_pcos_1884
	fsub	f2 f0 f2
	return
L_else_13215 : 
	fbgt	f6 f2 L_else_13221
	fadd	f2 f0 f6
	jump	L_pcos_1884
L_else_13221 : 
	fbgt	f6 f3 L_else_13223
	fsub	f2 f6 f4
	call	L_psin_1882
	fsub	f2 f0 f2
	return
L_else_13223 : 
	fsub	f2 f5 f6
	call	L_pcos_1884
	fsub	f2 f0 f2
	return
L_else_13213 : 
	fadd	f2 f6 f3
	jump	L_cos_1888
L_else_13211 : 
	fsub	f2 f6 f3
	jump	L_cos_1888
L_atan_1890 : 
	fadd	f14 f0 f2
	fmul	f3 f14 f14
	fldi	f2 r0 12
	fadd	f13 f2 f3
	fmul	f12 f13 f13
	fmul	f10 f12 f13
	fmul	f9 f12 f12
	fmul	f7 f12 f10
	fmul	f4 f10 f10
	fmul	f11 f14 f3
	fmul	f8 f3 f11
	fmul	f5 f3 f8
	fmul	f2 f3 f5
	fmul	f3 f3 f2
	fldi	f6 r0 21
	fmul	f3 f6 f3
	fdiv	f4 f3 f4
	fldi	f3 r0 22
	fmul	f2 f3 f2
	fdiv	f2 f2 f7
	fadd	f3 f4 f2
	fldi	f2 r0 23
	fmul	f2 f2 f5
	fdiv	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 24
	fmul	f2 f2 f8
	fdiv	f2 f2 f10
	fadd	f3 f3 f2
	fldi	f2 r0 25
	fmul	f2 f2 f11
	fdiv	f2 f2 f12
	fadd	f3 f3 f2
	fdiv	f2 f14 f13
	fadd	f2 f3 f2
	return
L_isqrt_1892 : 
	fadd	f6 f0 f4
	fadd	f5 f0 f2
	fadd	f4 f0 f3
	fldi	f2 r0 26
	fmul	f3 f2 f6
	fsub	f2 f6 f4
	fbgt	f0 f2 L_else_13228
	fadd	f2 f0 f2
	jump	L_cont_13226
L_else_13228 : 
	fsub	f2 f0 f2
L_cont_13226 : 
	fbgt	f3 f2 L_else_13230
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
	fbgt	f0 f2 L_else_13233
	fadd	f2 f0 f2
	jump	L_cont_13231
L_else_13233 : 
	fsub	f2 f0 f2
L_cont_13231 : 
	fbgt	f3 f2 L_else_13235
	fldi	f3 r0 27
	fmul	f2 f5 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f3 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	jump	L_isqrt_1892
L_else_13235 : 
	fadd	f2 f0 f4
	return
L_else_13230 : 
	fadd	f2 f0 f6
	return
L_sdiv10_1898 : 
	add	r7 r0 r5
	add	r5 r0 r4
	addi	r4 r5 -10
	bgt	r0 r4 L_else_13238
	addi	r6 r5 -10
	addi	r5 r7 1
	addi	r4 r6 -10
	bgt	r0 r4 L_else_13240
	addi	r4 r6 -10
	addi	r6 r5 1
	addi	r5 r4 -10
	bgt	r0 r5 L_else_13242
	addi	r7 r4 -10
	addi	r5 r6 1
	addi	r4 r7 -10
	bgt	r0 r4 L_else_13244
	addi	r4 r7 -10
	addi	r6 r5 1
	addi	r5 r4 -10
	bgt	r0 r5 L_else_13246
	addi	r7 r4 -10
	addi	r5 r6 1
	addi	r4 r7 -10
	bgt	r0 r4 L_else_13248
	addi	r4 r7 -10
	addi	r6 r5 1
	addi	r5 r4 -10
	bgt	r0 r5 L_else_13250
	addi	r7 r4 -10
	addi	r5 r6 1
	addi	r4 r7 -10
	bgt	r0 r4 L_else_13252
	addi	r6 r7 -10
	addi	r4 r5 1
	add	r5 r0 r4
	add	r4 r0 r6
	jump	L_sdiv10_1898
L_else_13252 : 
	add	r4 r0 r5
	return
L_else_13250 : 
	add	r4 r0 r6
	return
L_else_13248 : 
	add	r4 r0 r5
	return
L_else_13246 : 
	add	r4 r0 r6
	return
L_else_13244 : 
	add	r4 r0 r5
	return
L_else_13242 : 
	add	r4 r0 r6
	return
L_else_13240 : 
	add	r4 r0 r5
	return
L_else_13238 : 
	add	r4 r0 r7
	return
L_vecunit_sgn_1931 : 
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	fldi	f2 r5 0
	fmul	f3 f2 f2
	fldi	f2 r5 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r5 2
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f4 r0 28
	fldi	f2 r0 12
	fbgt	f3 f2 L_else_13256
	fldi	f2 r0 12
	jump	L_cont_13254
L_else_13256 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f3
L_cont_13254 : 
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	fsti	f3 r2 3
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 4
	call	L_isqrt_1892
	addi	r2 r2 -4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	fldi	f3 r2 3
	fmul	f2 f3 f2
	fbne	f2 f0 L_else_13259
	addi	r7 r0 1
	jump	L_cont_13257
L_else_13259 : 
	addi	r7 r0 0
L_cont_13257 : 
	bne	r7 r0 L_else_13262
	bne	r4 r0 L_else_13264
	fldi	f3 r0 12
	fdiv	f3 f3 f2
	jump	L_cont_13260
L_else_13264 : 
	fldi	f3 r0 29
	fdiv	f3 f3 f2
	jump	L_cont_13260
L_else_13262 : 
	fldi	f3 r0 12
L_cont_13260 : 
	fldi	f2 r5 0
	fmul	f2 f2 f3
	fsti	f2 r5 0
	fldi	f2 r5 1
	fmul	f2 f2 f3
	fsti	f2 r5 1
	fldi	f2 r5 2
	fmul	f2 f2 f3
	fsti	f2 r5 2
	add	r4 r0 r6
	return
L_read_object_2041 : 
	add	r17 r0 r4
	addi	r4 r0 60
	bgt	r4 r17 L_else_13267
	add	r4 r0 r16
	return
L_else_13267 : 
	sti	r17 r2 0
	sti	r16 r2 1
	addi	r2 r2 2
	call	min_caml_read_int
	addi	r2 r2 -2
	add	r10 r0 r4
	ldi	r17 r2 0
	ldi	r16 r2 1
	addi	r4 r0 -1
	bne	r10 r4 L_else_13270
	addi	r4 r0 0
	jump	L_cont_13268
L_else_13270 : 
	sti	r10 r2 0
	sti	r17 r2 1
	sti	r16 r2 2
	addi	r2 r2 3
	call	min_caml_read_int
	addi	r2 r2 -3
	add	r11 r0 r4
	ldi	r10 r2 0
	ldi	r17 r2 1
	ldi	r16 r2 2
	sti	r11 r2 0
	sti	r16 r2 1
	sti	r17 r2 2
	sti	r10 r2 3
	addi	r2 r2 4
	call	min_caml_read_int
	addi	r2 r2 -4
	add	r9 r0 r4
	ldi	r11 r2 0
	ldi	r16 r2 1
	ldi	r17 r2 2
	ldi	r10 r2 3
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r17 r2 2
	sti	r16 r2 3
	sti	r11 r2 4
	addi	r2 r2 5
	call	min_caml_read_int
	addi	r2 r2 -5
	add	r13 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r17 r2 2
	ldi	r16 r2 3
	ldi	r11 r2 4
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r16 r2 2
	sti	r17 r2 3
	sti	r9 r2 4
	sti	r10 r2 5
	addi	r2 r2 6
	call	min_caml_create_float_array
	addi	r2 r2 -6
	add	r14 r0 r4
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r16 r2 2
	ldi	r17 r2 3
	ldi	r9 r2 4
	ldi	r10 r2 5
	sti	r14 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r16 r2 3
	sti	r17 r2 4
	sti	r9 r2 5
	sti	r10 r2 6
	addi	r2 r2 7
	call	min_caml_read_float
	addi	r2 r2 -7
	ldi	r14 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r16 r2 3
	ldi	r17 r2 4
	ldi	r9 r2 5
	ldi	r10 r2 6
	fsti	f2 r14 0
	sti	r14 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r16 r2 3
	sti	r17 r2 4
	sti	r9 r2 5
	sti	r10 r2 6
	addi	r2 r2 7
	call	min_caml_read_float
	addi	r2 r2 -7
	ldi	r14 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r16 r2 3
	ldi	r17 r2 4
	ldi	r9 r2 5
	ldi	r10 r2 6
	fsti	f2 r14 1
	sti	r14 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r16 r2 3
	sti	r17 r2 4
	sti	r9 r2 5
	sti	r10 r2 6
	addi	r2 r2 7
	call	min_caml_read_float
	addi	r2 r2 -7
	ldi	r14 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r16 r2 3
	ldi	r17 r2 4
	ldi	r9 r2 5
	ldi	r10 r2 6
	fsti	f2 r14 2
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r14 r2 2
	sti	r17 r2 3
	sti	r16 r2 4
	sti	r11 r2 5
	sti	r13 r2 6
	addi	r2 r2 7
	call	min_caml_create_float_array
	addi	r2 r2 -7
	add	r8 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r14 r2 2
	ldi	r17 r2 3
	ldi	r16 r2 4
	ldi	r11 r2 5
	ldi	r13 r2 6
	sti	r8 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r14 r2 3
	sti	r17 r2 4
	sti	r16 r2 5
	sti	r11 r2 6
	sti	r13 r2 7
	addi	r2 r2 8
	call	min_caml_read_float
	addi	r2 r2 -8
	ldi	r8 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r14 r2 3
	ldi	r17 r2 4
	ldi	r16 r2 5
	ldi	r11 r2 6
	ldi	r13 r2 7
	fsti	f2 r8 0
	sti	r8 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r14 r2 3
	sti	r17 r2 4
	sti	r16 r2 5
	sti	r11 r2 6
	sti	r13 r2 7
	addi	r2 r2 8
	call	min_caml_read_float
	addi	r2 r2 -8
	ldi	r8 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r14 r2 3
	ldi	r17 r2 4
	ldi	r16 r2 5
	ldi	r11 r2 6
	ldi	r13 r2 7
	fsti	f2 r8 1
	sti	r8 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r14 r2 3
	sti	r17 r2 4
	sti	r16 r2 5
	sti	r11 r2 6
	sti	r13 r2 7
	addi	r2 r2 8
	call	min_caml_read_float
	addi	r2 r2 -8
	ldi	r8 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r14 r2 3
	ldi	r17 r2 4
	ldi	r16 r2 5
	ldi	r11 r2 6
	ldi	r13 r2 7
	fsti	f2 r8 2
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r14 r2 2
	sti	r8 r2 3
	sti	r17 r2 4
	sti	r16 r2 5
	sti	r11 r2 6
	sti	r13 r2 7
	addi	r2 r2 8
	call	min_caml_read_float
	addi	r2 r2 -8
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r14 r2 2
	ldi	r8 r2 3
	ldi	r17 r2 4
	ldi	r16 r2 5
	ldi	r11 r2 6
	ldi	r13 r2 7
	fbgt	f0 f2 L_else_13350
	addi	r12 r0 0
	jump	L_cont_13348
L_else_13350 : 
	addi	r12 r0 1
L_cont_13348 : 
	addi	r4 r0 2
	fldi	f2 r0 30
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r14 r2 2
	sti	r8 r2 3
	sti	r17 r2 4
	sti	r16 r2 5
	sti	r12 r2 6
	sti	r11 r2 7
	sti	r13 r2 8
	addi	r2 r2 9
	call	min_caml_create_float_array
	addi	r2 r2 -9
	add	r6 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r14 r2 2
	ldi	r8 r2 3
	ldi	r17 r2 4
	ldi	r16 r2 5
	ldi	r12 r2 6
	ldi	r11 r2 7
	ldi	r13 r2 8
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r14 r2 3
	sti	r8 r2 4
	sti	r17 r2 5
	sti	r16 r2 6
	sti	r12 r2 7
	sti	r11 r2 8
	sti	r13 r2 9
	addi	r2 r2 10
	call	min_caml_read_float
	addi	r2 r2 -10
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r14 r2 3
	ldi	r8 r2 4
	ldi	r17 r2 5
	ldi	r16 r2 6
	ldi	r12 r2 7
	ldi	r11 r2 8
	ldi	r13 r2 9
	fsti	f2 r6 0
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r14 r2 3
	sti	r8 r2 4
	sti	r17 r2 5
	sti	r16 r2 6
	sti	r12 r2 7
	sti	r11 r2 8
	sti	r13 r2 9
	addi	r2 r2 10
	call	min_caml_read_float
	addi	r2 r2 -10
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r14 r2 3
	ldi	r8 r2 4
	ldi	r17 r2 5
	ldi	r16 r2 6
	ldi	r12 r2 7
	ldi	r11 r2 8
	ldi	r13 r2 9
	fsti	f2 r6 1
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r12 r2 2
	sti	r16 r2 3
	sti	r17 r2 4
	sti	r6 r2 5
	sti	r8 r2 6
	sti	r14 r2 7
	sti	r9 r2 8
	sti	r10 r2 9
	addi	r2 r2 10
	call	min_caml_create_float_array
	addi	r2 r2 -10
	add	r5 r0 r4
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r12 r2 2
	ldi	r16 r2 3
	ldi	r17 r2 4
	ldi	r6 r2 5
	ldi	r8 r2 6
	ldi	r14 r2 7
	ldi	r9 r2 8
	ldi	r10 r2 9
	sti	r5 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r16 r2 4
	sti	r17 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r14 r2 8
	sti	r9 r2 9
	sti	r10 r2 10
	addi	r2 r2 11
	call	min_caml_read_float
	addi	r2 r2 -11
	ldi	r5 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r16 r2 4
	ldi	r17 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r14 r2 8
	ldi	r9 r2 9
	ldi	r10 r2 10
	fsti	f2 r5 0
	sti	r5 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r16 r2 4
	sti	r17 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r14 r2 8
	sti	r9 r2 9
	sti	r10 r2 10
	addi	r2 r2 11
	call	min_caml_read_float
	addi	r2 r2 -11
	ldi	r5 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r16 r2 4
	ldi	r17 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r14 r2 8
	ldi	r9 r2 9
	ldi	r10 r2 10
	fsti	f2 r5 1
	sti	r5 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r16 r2 4
	sti	r17 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r14 r2 8
	sti	r9 r2 9
	sti	r10 r2 10
	addi	r2 r2 11
	call	min_caml_read_float
	addi	r2 r2 -11
	ldi	r5 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r16 r2 4
	ldi	r17 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r14 r2 8
	ldi	r9 r2 9
	ldi	r10 r2 10
	fsti	f2 r5 2
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r14 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	sti	r5 r2 5
	sti	r17 r2 6
	sti	r16 r2 7
	sti	r12 r2 8
	sti	r11 r2 9
	sti	r13 r2 10
	addi	r2 r2 11
	call	min_caml_create_float_array
	addi	r2 r2 -11
	add	r15 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r14 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
	ldi	r5 r2 5
	ldi	r17 r2 6
	ldi	r16 r2 7
	ldi	r12 r2 8
	ldi	r11 r2 9
	ldi	r13 r2 10
	bne	r13 r0 L_else_13353
	jump	L_cont_13351
L_else_13353 : 
	sti	r15 r2 0
	sti	r11 r2 1
	sti	r12 r2 2
	sti	r16 r2 3
	sti	r17 r2 4
	sti	r5 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r14 r2 8
	sti	r13 r2 9
	sti	r9 r2 10
	sti	r10 r2 11
	addi	r2 r2 12
	call	min_caml_read_float
	addi	r2 r2 -12
	fadd	f3 f0 f2
	ldi	r15 r2 0
	ldi	r11 r2 1
	ldi	r12 r2 2
	ldi	r16 r2 3
	ldi	r17 r2 4
	ldi	r5 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r14 r2 8
	ldi	r13 r2 9
	ldi	r9 r2 10
	ldi	r10 r2 11
	fldi	f2 r0 31
	fmul	f2 f3 f2
	fsti	f2 r15 0
	sti	r15 r2 0
	sti	r11 r2 1
	sti	r12 r2 2
	sti	r16 r2 3
	sti	r17 r2 4
	sti	r5 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r14 r2 8
	sti	r13 r2 9
	sti	r9 r2 10
	sti	r10 r2 11
	addi	r2 r2 12
	call	min_caml_read_float
	addi	r2 r2 -12
	fadd	f3 f0 f2
	ldi	r15 r2 0
	ldi	r11 r2 1
	ldi	r12 r2 2
	ldi	r16 r2 3
	ldi	r17 r2 4
	ldi	r5 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r14 r2 8
	ldi	r13 r2 9
	ldi	r9 r2 10
	ldi	r10 r2 11
	fldi	f2 r0 31
	fmul	f2 f3 f2
	fsti	f2 r15 1
	sti	r15 r2 0
	sti	r11 r2 1
	sti	r12 r2 2
	sti	r16 r2 3
	sti	r17 r2 4
	sti	r5 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r14 r2 8
	sti	r13 r2 9
	sti	r9 r2 10
	sti	r10 r2 11
	addi	r2 r2 12
	call	min_caml_read_float
	addi	r2 r2 -12
	fadd	f3 f0 f2
	ldi	r15 r2 0
	ldi	r11 r2 1
	ldi	r12 r2 2
	ldi	r16 r2 3
	ldi	r17 r2 4
	ldi	r5 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r14 r2 8
	ldi	r13 r2 9
	ldi	r9 r2 10
	ldi	r10 r2 11
	fldi	f2 r0 31
	fmul	f2 f3 f2
	fsti	f2 r15 2
L_cont_13351 : 
	addi	r4 r0 2
	bne	r11 r4 L_else_13356
	addi	r7 r0 1
	jump	L_cont_13354
L_else_13356 : 
	add	r7 r0 r12
L_cont_13354 : 
	addi	r4 r0 4
	fldi	f2 r0 30
	sti	r12 r2 0
	sti	r16 r2 1
	sti	r17 r2 2
	sti	r15 r2 3
	sti	r5 r2 4
	sti	r6 r2 5
	sti	r7 r2 6
	sti	r8 r2 7
	sti	r14 r2 8
	sti	r13 r2 9
	sti	r9 r2 10
	sti	r11 r2 11
	sti	r10 r2 12
	addi	r2 r2 13
	call	min_caml_create_float_array
	addi	r2 r2 -13
	ldi	r12 r2 0
	ldi	r16 r2 1
	ldi	r17 r2 2
	ldi	r15 r2 3
	ldi	r5 r2 4
	ldi	r6 r2 5
	ldi	r7 r2 6
	ldi	r8 r2 7
	ldi	r14 r2 8
	ldi	r13 r2 9
	ldi	r9 r2 10
	ldi	r11 r2 11
	ldi	r10 r2 12
	sti	r10 r3 0
	sti	r11 r3 1
	sti	r9 r3 2
	sti	r13 r3 3
	sti	r14 r3 4
	sti	r8 r3 5
	sti	r7 r3 6
	sti	r6 r3 7
	sti	r5 r3 8
	sti	r15 r3 9
	sti	r4 r3 10
	add	r4 r0 r3
	addi	r3 r3 11
	addi	r5 r0 33714
	add	r1 r5 r17
	sti	r4 r1 0
	addi	r4 r0 3
	bne	r11 r4 L_else_13359
	fldi	f2 r14 0
	fbne	f2 f0 L_else_13365
	addi	r4 r0 1
	jump	L_cont_13363
L_else_13365 : 
	addi	r4 r0 0
L_cont_13363 : 
	bne	r4 r0 L_else_13368
	fbne	f2 f0 L_else_13405
	addi	r4 r0 1
	jump	L_cont_13403
L_else_13405 : 
	addi	r4 r0 0
L_cont_13403 : 
	bne	r4 r0 L_else_13408
	fbgt	f2 f0 L_else_13411
	addi	r4 r0 0
	jump	L_cont_13409
L_else_13411 : 
	addi	r4 r0 1
L_cont_13409 : 
	bne	r4 r0 L_else_13413
	fldi	f3 r0 29
	jump	L_cont_13406
L_else_13413 : 
	fldi	f3 r0 12
	jump	L_cont_13406
L_else_13408 : 
	fldi	f3 r0 30
L_cont_13406 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_13366
L_else_13368 : 
	fldi	f2 r0 30
L_cont_13366 : 
	fsti	f2 r14 0
	fldi	f2 r14 1
	fbne	f2 f0 L_else_13371
	addi	r4 r0 1
	jump	L_cont_13369
L_else_13371 : 
	addi	r4 r0 0
L_cont_13369 : 
	bne	r4 r0 L_else_13374
	fbne	f2 f0 L_else_13394
	addi	r4 r0 1
	jump	L_cont_13392
L_else_13394 : 
	addi	r4 r0 0
L_cont_13392 : 
	bne	r4 r0 L_else_13397
	fbgt	f2 f0 L_else_13400
	addi	r4 r0 0
	jump	L_cont_13398
L_else_13400 : 
	addi	r4 r0 1
L_cont_13398 : 
	bne	r4 r0 L_else_13402
	fldi	f3 r0 29
	jump	L_cont_13395
L_else_13402 : 
	fldi	f3 r0 12
	jump	L_cont_13395
L_else_13397 : 
	fldi	f3 r0 30
L_cont_13395 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_13372
L_else_13374 : 
	fldi	f2 r0 30
L_cont_13372 : 
	fsti	f2 r14 1
	fldi	f2 r14 2
	fbne	f2 f0 L_else_13377
	addi	r4 r0 1
	jump	L_cont_13375
L_else_13377 : 
	addi	r4 r0 0
L_cont_13375 : 
	bne	r4 r0 L_else_13380
	fbne	f2 f0 L_else_13383
	addi	r4 r0 1
	jump	L_cont_13381
L_else_13383 : 
	addi	r4 r0 0
L_cont_13381 : 
	bne	r4 r0 L_else_13386
	fbgt	f2 f0 L_else_13389
	addi	r4 r0 0
	jump	L_cont_13387
L_else_13389 : 
	addi	r4 r0 1
L_cont_13387 : 
	bne	r4 r0 L_else_13391
	fldi	f3 r0 29
	jump	L_cont_13384
L_else_13391 : 
	fldi	f3 r0 12
	jump	L_cont_13384
L_else_13386 : 
	fldi	f3 r0 30
L_cont_13384 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_13378
L_else_13380 : 
	fldi	f2 r0 30
L_cont_13378 : 
	fsti	f2 r14 2
	jump	L_cont_13357
L_else_13359 : 
	addi	r4 r0 2
	bne	r11 r4 L_else_13415
	addi	r4 r0 1
	sub	r4 r4 r12
	sti	r13 r2 0
	sti	r17 r2 1
	sti	r16 r2 2
	sti	r15 r2 3
	sti	r14 r2 4
	add	r5 r0 r4
	add	r4 r0 r14
	addi	r2 r2 5
	call	L_vecunit_sgn_1931
	addi	r2 r2 -5
	ldi	r13 r2 0
	ldi	r17 r2 1
	ldi	r16 r2 2
	ldi	r15 r2 3
	ldi	r14 r2 4
	jump	L_cont_13357
L_else_13415 : 
L_cont_13357 : 
	bne	r13 r0 L_else_13362
	jump	L_cont_13360
L_else_13362 : 
	fldi	f2 r15 0
	sti	r15 r2 0
	sti	r16 r2 1
	sti	r17 r2 2
	sti	r14 r2 3
	addi	r2 r2 4
	call	L_cos_1888
	addi	r2 r2 -4
	fadd	f8 f0 f2
	ldi	r15 r2 0
	ldi	r16 r2 1
	ldi	r17 r2 2
	ldi	r14 r2 3
	fldi	f2 r15 0
	sti	r15 r2 0
	sti	r16 r2 1
	sti	r17 r2 2
	sti	r14 r2 3
	fsti	f8 r2 4
	addi	r2 r2 5
	call	L_sin_1886
	addi	r2 r2 -5
	fadd	f9 f0 f2
	ldi	r15 r2 0
	ldi	r16 r2 1
	ldi	r17 r2 2
	ldi	r14 r2 3
	fldi	f8 r2 4
	fldi	f2 r15 1
	sti	r15 r2 0
	sti	r16 r2 1
	sti	r17 r2 2
	sti	r14 r2 3
	fsti	f9 r2 4
	fsti	f8 r2 5
	addi	r2 r2 6
	call	L_cos_1888
	addi	r2 r2 -6
	fadd	f7 f0 f2
	ldi	r15 r2 0
	ldi	r16 r2 1
	ldi	r17 r2 2
	ldi	r14 r2 3
	fldi	f9 r2 4
	fldi	f8 r2 5
	fldi	f2 r15 1
	sti	r15 r2 0
	sti	r16 r2 1
	sti	r17 r2 2
	sti	r14 r2 3
	fsti	f9 r2 4
	fsti	f8 r2 5
	fsti	f7 r2 6
	addi	r2 r2 7
	call	L_sin_1886
	addi	r2 r2 -7
	fadd	f6 f0 f2
	ldi	r15 r2 0
	ldi	r16 r2 1
	ldi	r17 r2 2
	ldi	r14 r2 3
	fldi	f9 r2 4
	fldi	f8 r2 5
	fldi	f7 r2 6
	fldi	f2 r15 2
	sti	r15 r2 0
	sti	r16 r2 1
	sti	r17 r2 2
	sti	r14 r2 3
	fsti	f9 r2 4
	fsti	f6 r2 5
	fsti	f8 r2 6
	fsti	f7 r2 7
	addi	r2 r2 8
	call	L_cos_1888
	addi	r2 r2 -8
	fadd	f4 f0 f2
	ldi	r15 r2 0
	ldi	r16 r2 1
	ldi	r17 r2 2
	ldi	r14 r2 3
	fldi	f9 r2 4
	fldi	f6 r2 5
	fldi	f8 r2 6
	fldi	f7 r2 7
	fldi	f2 r15 2
	sti	r16 r2 0
	sti	r17 r2 1
	sti	r15 r2 2
	sti	r14 r2 3
	fsti	f9 r2 4
	fsti	f6 r2 5
	fsti	f8 r2 6
	fsti	f4 r2 7
	fsti	f7 r2 8
	addi	r2 r2 9
	call	L_sin_1886
	addi	r2 r2 -9
	fadd	f5 f0 f2
	ldi	r16 r2 0
	ldi	r17 r2 1
	ldi	r15 r2 2
	ldi	r14 r2 3
	fldi	f9 r2 4
	fldi	f6 r2 5
	fldi	f8 r2 6
	fldi	f4 r2 7
	fldi	f7 r2 8
	fmul	f11 f7 f4
	fmul	f2 f9 f6
	fmul	f3 f2 f4
	fmul	f2 f8 f5
	fsub	f12 f3 f2
	fmul	f2 f8 f6
	fmul	f3 f2 f4
	fmul	f2 f9 f5
	fadd	f10 f3 f2
	fmul	f13 f7 f5
	fmul	f2 f9 f6
	fmul	f3 f2 f5
	fmul	f2 f8 f4
	fadd	f14 f3 f2
	fmul	f2 f8 f6
	fmul	f3 f2 f5
	fmul	f2 f9 f4
	fsub	f5 f3 f2
	fsub	f15 f0 f6
	fmul	f16 f9 f7
	fmul	f6 f8 f7
	fldi	f7 r14 0
	fldi	f8 r14 1
	fldi	f9 r14 2
	fmul	f2 f11 f11
	fmul	f3 f7 f2
	fmul	f2 f13 f13
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fmul	f2 f15 f15
	fmul	f2 f9 f2
	fadd	f2 f3 f2
	fsti	f2 r14 0
	fmul	f2 f12 f12
	fmul	f3 f7 f2
	fmul	f2 f14 f14
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fmul	f2 f16 f16
	fmul	f2 f9 f2
	fadd	f2 f3 f2
	fsti	f2 r14 1
	fmul	f2 f10 f10
	fmul	f3 f7 f2
	fmul	f2 f5 f5
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fmul	f2 f6 f6
	fmul	f2 f9 f2
	fadd	f2 f3 f2
	fsti	f2 r14 2
	fldi	f4 r0 28
	fmul	f2 f7 f12
	fmul	f3 f2 f10
	fmul	f2 f8 f14
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fmul	f2 f9 f16
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r15 0
	fldi	f4 r0 28
	fmul	f2 f7 f11
	fmul	f3 f2 f10
	fmul	f2 f8 f13
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fmul	f2 f9 f15
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r15 1
	fldi	f4 r0 28
	fmul	f2 f7 f11
	fmul	f3 f2 f12
	fmul	f2 f8 f13
	fmul	f2 f2 f14
	fadd	f3 f3 f2
	fmul	f2 f9 f15
	fmul	f2 f2 f16
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r15 2
L_cont_13360 : 
	addi	r4 r0 1
L_cont_13268 : 
	bne	r4 r0 L_else_13272
	addi	r4 r0 32816
	sti	r17 r4 0
	add	r4 r0 r16
	return
L_else_13272 : 
	addi	r13 r17 1
	addi	r4 r0 60
	bgt	r4 r13 L_else_13274
	add	r4 r0 r16
	return
L_else_13274 : 
	sti	r13 r2 0
	sti	r16 r2 1
	addi	r2 r2 2
	call	min_caml_read_int
	addi	r2 r2 -2
	add	r10 r0 r4
	ldi	r13 r2 0
	ldi	r16 r2 1
	addi	r4 r0 -1
	bne	r10 r4 L_else_13277
	addi	r4 r0 0
	jump	L_cont_13275
L_else_13277 : 
	sti	r10 r2 0
	sti	r13 r2 1
	sti	r16 r2 2
	addi	r2 r2 3
	call	min_caml_read_int
	addi	r2 r2 -3
	add	r12 r0 r4
	ldi	r10 r2 0
	ldi	r13 r2 1
	ldi	r16 r2 2
	sti	r12 r2 0
	sti	r16 r2 1
	sti	r13 r2 2
	sti	r10 r2 3
	addi	r2 r2 4
	call	min_caml_read_int
	addi	r2 r2 -4
	add	r9 r0 r4
	ldi	r12 r2 0
	ldi	r16 r2 1
	ldi	r13 r2 2
	ldi	r10 r2 3
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r13 r2 2
	sti	r16 r2 3
	sti	r12 r2 4
	addi	r2 r2 5
	call	min_caml_read_int
	addi	r2 r2 -5
	add	r15 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r13 r2 2
	ldi	r16 r2 3
	ldi	r12 r2 4
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r15 r2 0
	sti	r12 r2 1
	sti	r16 r2 2
	sti	r13 r2 3
	sti	r9 r2 4
	sti	r10 r2 5
	addi	r2 r2 6
	call	min_caml_create_float_array
	addi	r2 r2 -6
	add	r11 r0 r4
	ldi	r15 r2 0
	ldi	r12 r2 1
	ldi	r16 r2 2
	ldi	r13 r2 3
	ldi	r9 r2 4
	ldi	r10 r2 5
	sti	r11 r2 0
	sti	r15 r2 1
	sti	r12 r2 2
	sti	r16 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r10 r2 6
	addi	r2 r2 7
	call	min_caml_read_float
	addi	r2 r2 -7
	ldi	r11 r2 0
	ldi	r15 r2 1
	ldi	r12 r2 2
	ldi	r16 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r10 r2 6
	fsti	f2 r11 0
	sti	r11 r2 0
	sti	r15 r2 1
	sti	r12 r2 2
	sti	r16 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r10 r2 6
	addi	r2 r2 7
	call	min_caml_read_float
	addi	r2 r2 -7
	ldi	r11 r2 0
	ldi	r15 r2 1
	ldi	r12 r2 2
	ldi	r16 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r10 r2 6
	fsti	f2 r11 1
	sti	r11 r2 0
	sti	r15 r2 1
	sti	r12 r2 2
	sti	r16 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r10 r2 6
	addi	r2 r2 7
	call	min_caml_read_float
	addi	r2 r2 -7
	ldi	r11 r2 0
	ldi	r15 r2 1
	ldi	r12 r2 2
	ldi	r16 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r10 r2 6
	fsti	f2 r11 2
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r13 r2 3
	sti	r16 r2 4
	sti	r12 r2 5
	sti	r15 r2 6
	addi	r2 r2 7
	call	min_caml_create_float_array
	addi	r2 r2 -7
	add	r8 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r13 r2 3
	ldi	r16 r2 4
	ldi	r12 r2 5
	ldi	r15 r2 6
	sti	r8 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r13 r2 4
	sti	r16 r2 5
	sti	r12 r2 6
	sti	r15 r2 7
	addi	r2 r2 8
	call	min_caml_read_float
	addi	r2 r2 -8
	ldi	r8 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r13 r2 4
	ldi	r16 r2 5
	ldi	r12 r2 6
	ldi	r15 r2 7
	fsti	f2 r8 0
	sti	r8 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r13 r2 4
	sti	r16 r2 5
	sti	r12 r2 6
	sti	r15 r2 7
	addi	r2 r2 8
	call	min_caml_read_float
	addi	r2 r2 -8
	ldi	r8 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r13 r2 4
	ldi	r16 r2 5
	ldi	r12 r2 6
	ldi	r15 r2 7
	fsti	f2 r8 1
	sti	r8 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r13 r2 4
	sti	r16 r2 5
	sti	r12 r2 6
	sti	r15 r2 7
	addi	r2 r2 8
	call	min_caml_read_float
	addi	r2 r2 -8
	ldi	r8 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r13 r2 4
	ldi	r16 r2 5
	ldi	r12 r2 6
	ldi	r15 r2 7
	fsti	f2 r8 2
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	sti	r13 r2 4
	sti	r16 r2 5
	sti	r12 r2 6
	sti	r15 r2 7
	addi	r2 r2 8
	call	min_caml_read_float
	addi	r2 r2 -8
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	ldi	r13 r2 4
	ldi	r16 r2 5
	ldi	r12 r2 6
	ldi	r15 r2 7
	fbgt	f0 f2 L_else_13282
	addi	r14 r0 0
	jump	L_cont_13280
L_else_13282 : 
	addi	r14 r0 1
L_cont_13280 : 
	addi	r4 r0 2
	fldi	f2 r0 30
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	sti	r13 r2 4
	sti	r16 r2 5
	sti	r14 r2 6
	sti	r12 r2 7
	sti	r15 r2 8
	addi	r2 r2 9
	call	min_caml_create_float_array
	addi	r2 r2 -9
	add	r6 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	ldi	r13 r2 4
	ldi	r16 r2 5
	ldi	r14 r2 6
	ldi	r12 r2 7
	ldi	r15 r2 8
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	sti	r13 r2 5
	sti	r16 r2 6
	sti	r14 r2 7
	sti	r12 r2 8
	sti	r15 r2 9
	addi	r2 r2 10
	call	min_caml_read_float
	addi	r2 r2 -10
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	ldi	r13 r2 5
	ldi	r16 r2 6
	ldi	r14 r2 7
	ldi	r12 r2 8
	ldi	r15 r2 9
	fsti	f2 r6 0
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	sti	r13 r2 5
	sti	r16 r2 6
	sti	r14 r2 7
	sti	r12 r2 8
	sti	r15 r2 9
	addi	r2 r2 10
	call	min_caml_read_float
	addi	r2 r2 -10
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	ldi	r13 r2 5
	ldi	r16 r2 6
	ldi	r14 r2 7
	ldi	r12 r2 8
	ldi	r15 r2 9
	fsti	f2 r6 1
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r15 r2 0
	sti	r12 r2 1
	sti	r14 r2 2
	sti	r16 r2 3
	sti	r13 r2 4
	sti	r6 r2 5
	sti	r8 r2 6
	sti	r11 r2 7
	sti	r9 r2 8
	sti	r10 r2 9
	addi	r2 r2 10
	call	min_caml_create_float_array
	addi	r2 r2 -10
	add	r5 r0 r4
	ldi	r15 r2 0
	ldi	r12 r2 1
	ldi	r14 r2 2
	ldi	r16 r2 3
	ldi	r13 r2 4
	ldi	r6 r2 5
	ldi	r8 r2 6
	ldi	r11 r2 7
	ldi	r9 r2 8
	ldi	r10 r2 9
	sti	r5 r2 0
	sti	r15 r2 1
	sti	r12 r2 2
	sti	r14 r2 3
	sti	r16 r2 4
	sti	r13 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r11 r2 8
	sti	r9 r2 9
	sti	r10 r2 10
	addi	r2 r2 11
	call	min_caml_read_float
	addi	r2 r2 -11
	ldi	r5 r2 0
	ldi	r15 r2 1
	ldi	r12 r2 2
	ldi	r14 r2 3
	ldi	r16 r2 4
	ldi	r13 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r11 r2 8
	ldi	r9 r2 9
	ldi	r10 r2 10
	fsti	f2 r5 0
	sti	r5 r2 0
	sti	r15 r2 1
	sti	r12 r2 2
	sti	r14 r2 3
	sti	r16 r2 4
	sti	r13 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r11 r2 8
	sti	r9 r2 9
	sti	r10 r2 10
	addi	r2 r2 11
	call	min_caml_read_float
	addi	r2 r2 -11
	ldi	r5 r2 0
	ldi	r15 r2 1
	ldi	r12 r2 2
	ldi	r14 r2 3
	ldi	r16 r2 4
	ldi	r13 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r11 r2 8
	ldi	r9 r2 9
	ldi	r10 r2 10
	fsti	f2 r5 1
	sti	r5 r2 0
	sti	r15 r2 1
	sti	r12 r2 2
	sti	r14 r2 3
	sti	r16 r2 4
	sti	r13 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r11 r2 8
	sti	r9 r2 9
	sti	r10 r2 10
	addi	r2 r2 11
	call	min_caml_read_float
	addi	r2 r2 -11
	ldi	r5 r2 0
	ldi	r15 r2 1
	ldi	r12 r2 2
	ldi	r14 r2 3
	ldi	r16 r2 4
	ldi	r13 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r11 r2 8
	ldi	r9 r2 9
	ldi	r10 r2 10
	fsti	f2 r5 2
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	sti	r5 r2 5
	sti	r13 r2 6
	sti	r16 r2 7
	sti	r14 r2 8
	sti	r12 r2 9
	sti	r15 r2 10
	addi	r2 r2 11
	call	min_caml_create_float_array
	addi	r2 r2 -11
	add	r17 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
	ldi	r5 r2 5
	ldi	r13 r2 6
	ldi	r16 r2 7
	ldi	r14 r2 8
	ldi	r12 r2 9
	ldi	r15 r2 10
	bne	r15 r0 L_else_13285
	jump	L_cont_13283
L_else_13285 : 
	sti	r17 r2 0
	sti	r12 r2 1
	sti	r14 r2 2
	sti	r16 r2 3
	sti	r13 r2 4
	sti	r5 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r11 r2 8
	sti	r15 r2 9
	sti	r9 r2 10
	sti	r10 r2 11
	addi	r2 r2 12
	call	min_caml_read_float
	addi	r2 r2 -12
	fadd	f3 f0 f2
	ldi	r17 r2 0
	ldi	r12 r2 1
	ldi	r14 r2 2
	ldi	r16 r2 3
	ldi	r13 r2 4
	ldi	r5 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r11 r2 8
	ldi	r15 r2 9
	ldi	r9 r2 10
	ldi	r10 r2 11
	fldi	f2 r0 31
	fmul	f2 f3 f2
	fsti	f2 r17 0
	sti	r17 r2 0
	sti	r12 r2 1
	sti	r14 r2 2
	sti	r16 r2 3
	sti	r13 r2 4
	sti	r5 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r11 r2 8
	sti	r15 r2 9
	sti	r9 r2 10
	sti	r10 r2 11
	addi	r2 r2 12
	call	min_caml_read_float
	addi	r2 r2 -12
	fadd	f3 f0 f2
	ldi	r17 r2 0
	ldi	r12 r2 1
	ldi	r14 r2 2
	ldi	r16 r2 3
	ldi	r13 r2 4
	ldi	r5 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r11 r2 8
	ldi	r15 r2 9
	ldi	r9 r2 10
	ldi	r10 r2 11
	fldi	f2 r0 31
	fmul	f2 f3 f2
	fsti	f2 r17 1
	sti	r17 r2 0
	sti	r12 r2 1
	sti	r14 r2 2
	sti	r16 r2 3
	sti	r13 r2 4
	sti	r5 r2 5
	sti	r6 r2 6
	sti	r8 r2 7
	sti	r11 r2 8
	sti	r15 r2 9
	sti	r9 r2 10
	sti	r10 r2 11
	addi	r2 r2 12
	call	min_caml_read_float
	addi	r2 r2 -12
	fadd	f3 f0 f2
	ldi	r17 r2 0
	ldi	r12 r2 1
	ldi	r14 r2 2
	ldi	r16 r2 3
	ldi	r13 r2 4
	ldi	r5 r2 5
	ldi	r6 r2 6
	ldi	r8 r2 7
	ldi	r11 r2 8
	ldi	r15 r2 9
	ldi	r9 r2 10
	ldi	r10 r2 11
	fldi	f2 r0 31
	fmul	f2 f3 f2
	fsti	f2 r17 2
L_cont_13283 : 
	addi	r4 r0 2
	bne	r12 r4 L_else_13288
	addi	r7 r0 1
	jump	L_cont_13286
L_else_13288 : 
	add	r7 r0 r14
L_cont_13286 : 
	addi	r4 r0 4
	fldi	f2 r0 30
	sti	r14 r2 0
	sti	r16 r2 1
	sti	r13 r2 2
	sti	r17 r2 3
	sti	r5 r2 4
	sti	r6 r2 5
	sti	r7 r2 6
	sti	r8 r2 7
	sti	r11 r2 8
	sti	r15 r2 9
	sti	r9 r2 10
	sti	r12 r2 11
	sti	r10 r2 12
	addi	r2 r2 13
	call	min_caml_create_float_array
	addi	r2 r2 -13
	ldi	r14 r2 0
	ldi	r16 r2 1
	ldi	r13 r2 2
	ldi	r17 r2 3
	ldi	r5 r2 4
	ldi	r6 r2 5
	ldi	r7 r2 6
	ldi	r8 r2 7
	ldi	r11 r2 8
	ldi	r15 r2 9
	ldi	r9 r2 10
	ldi	r12 r2 11
	ldi	r10 r2 12
	sti	r10 r3 0
	sti	r12 r3 1
	sti	r9 r3 2
	sti	r15 r3 3
	sti	r11 r3 4
	sti	r8 r3 5
	sti	r7 r3 6
	sti	r6 r3 7
	sti	r5 r3 8
	sti	r17 r3 9
	sti	r4 r3 10
	add	r4 r0 r3
	addi	r3 r3 11
	addi	r5 r0 33714
	add	r1 r5 r13
	sti	r4 r1 0
	addi	r4 r0 3
	bne	r12 r4 L_else_13291
	fldi	f2 r11 0
	fbne	f2 f0 L_else_13297
	addi	r4 r0 1
	jump	L_cont_13295
L_else_13297 : 
	addi	r4 r0 0
L_cont_13295 : 
	bne	r4 r0 L_else_13300
	fbne	f2 f0 L_else_13337
	addi	r4 r0 1
	jump	L_cont_13335
L_else_13337 : 
	addi	r4 r0 0
L_cont_13335 : 
	bne	r4 r0 L_else_13340
	fbgt	f2 f0 L_else_13343
	addi	r4 r0 0
	jump	L_cont_13341
L_else_13343 : 
	addi	r4 r0 1
L_cont_13341 : 
	bne	r4 r0 L_else_13345
	fldi	f3 r0 29
	jump	L_cont_13338
L_else_13345 : 
	fldi	f3 r0 12
	jump	L_cont_13338
L_else_13340 : 
	fldi	f3 r0 30
L_cont_13338 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_13298
L_else_13300 : 
	fldi	f2 r0 30
L_cont_13298 : 
	fsti	f2 r11 0
	fldi	f2 r11 1
	fbne	f2 f0 L_else_13303
	addi	r4 r0 1
	jump	L_cont_13301
L_else_13303 : 
	addi	r4 r0 0
L_cont_13301 : 
	bne	r4 r0 L_else_13306
	fbne	f2 f0 L_else_13326
	addi	r4 r0 1
	jump	L_cont_13324
L_else_13326 : 
	addi	r4 r0 0
L_cont_13324 : 
	bne	r4 r0 L_else_13329
	fbgt	f2 f0 L_else_13332
	addi	r4 r0 0
	jump	L_cont_13330
L_else_13332 : 
	addi	r4 r0 1
L_cont_13330 : 
	bne	r4 r0 L_else_13334
	fldi	f3 r0 29
	jump	L_cont_13327
L_else_13334 : 
	fldi	f3 r0 12
	jump	L_cont_13327
L_else_13329 : 
	fldi	f3 r0 30
L_cont_13327 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_13304
L_else_13306 : 
	fldi	f2 r0 30
L_cont_13304 : 
	fsti	f2 r11 1
	fldi	f2 r11 2
	fbne	f2 f0 L_else_13309
	addi	r4 r0 1
	jump	L_cont_13307
L_else_13309 : 
	addi	r4 r0 0
L_cont_13307 : 
	bne	r4 r0 L_else_13312
	fbne	f2 f0 L_else_13315
	addi	r4 r0 1
	jump	L_cont_13313
L_else_13315 : 
	addi	r4 r0 0
L_cont_13313 : 
	bne	r4 r0 L_else_13318
	fbgt	f2 f0 L_else_13321
	addi	r4 r0 0
	jump	L_cont_13319
L_else_13321 : 
	addi	r4 r0 1
L_cont_13319 : 
	bne	r4 r0 L_else_13323
	fldi	f3 r0 29
	jump	L_cont_13316
L_else_13323 : 
	fldi	f3 r0 12
	jump	L_cont_13316
L_else_13318 : 
	fldi	f3 r0 30
L_cont_13316 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_13310
L_else_13312 : 
	fldi	f2 r0 30
L_cont_13310 : 
	fsti	f2 r11 2
	jump	L_cont_13289
L_else_13291 : 
	addi	r4 r0 2
	bne	r12 r4 L_else_13347
	addi	r4 r0 1
	sub	r4 r4 r14
	sti	r15 r2 0
	sti	r13 r2 1
	sti	r16 r2 2
	sti	r17 r2 3
	sti	r11 r2 4
	add	r5 r0 r4
	add	r4 r0 r11
	addi	r2 r2 5
	call	L_vecunit_sgn_1931
	addi	r2 r2 -5
	ldi	r15 r2 0
	ldi	r13 r2 1
	ldi	r16 r2 2
	ldi	r17 r2 3
	ldi	r11 r2 4
	jump	L_cont_13289
L_else_13347 : 
L_cont_13289 : 
	bne	r15 r0 L_else_13294
	jump	L_cont_13292
L_else_13294 : 
	fldi	f2 r17 0
	sti	r17 r2 0
	sti	r16 r2 1
	sti	r13 r2 2
	sti	r11 r2 3
	addi	r2 r2 4
	call	L_cos_1888
	addi	r2 r2 -4
	fadd	f8 f0 f2
	ldi	r17 r2 0
	ldi	r16 r2 1
	ldi	r13 r2 2
	ldi	r11 r2 3
	fldi	f2 r17 0
	sti	r17 r2 0
	sti	r16 r2 1
	sti	r13 r2 2
	sti	r11 r2 3
	fsti	f8 r2 4
	addi	r2 r2 5
	call	L_sin_1886
	addi	r2 r2 -5
	fadd	f9 f0 f2
	ldi	r17 r2 0
	ldi	r16 r2 1
	ldi	r13 r2 2
	ldi	r11 r2 3
	fldi	f8 r2 4
	fldi	f2 r17 1
	sti	r17 r2 0
	sti	r16 r2 1
	sti	r13 r2 2
	sti	r11 r2 3
	fsti	f9 r2 4
	fsti	f8 r2 5
	addi	r2 r2 6
	call	L_cos_1888
	addi	r2 r2 -6
	fadd	f7 f0 f2
	ldi	r17 r2 0
	ldi	r16 r2 1
	ldi	r13 r2 2
	ldi	r11 r2 3
	fldi	f9 r2 4
	fldi	f8 r2 5
	fldi	f2 r17 1
	sti	r17 r2 0
	sti	r16 r2 1
	sti	r13 r2 2
	sti	r11 r2 3
	fsti	f9 r2 4
	fsti	f8 r2 5
	fsti	f7 r2 6
	addi	r2 r2 7
	call	L_sin_1886
	addi	r2 r2 -7
	fadd	f5 f0 f2
	ldi	r17 r2 0
	ldi	r16 r2 1
	ldi	r13 r2 2
	ldi	r11 r2 3
	fldi	f9 r2 4
	fldi	f8 r2 5
	fldi	f7 r2 6
	fldi	f2 r17 2
	sti	r17 r2 0
	sti	r16 r2 1
	sti	r13 r2 2
	sti	r11 r2 3
	fsti	f9 r2 4
	fsti	f5 r2 5
	fsti	f8 r2 6
	fsti	f7 r2 7
	addi	r2 r2 8
	call	L_cos_1888
	addi	r2 r2 -8
	fadd	f4 f0 f2
	ldi	r17 r2 0
	ldi	r16 r2 1
	ldi	r13 r2 2
	ldi	r11 r2 3
	fldi	f9 r2 4
	fldi	f5 r2 5
	fldi	f8 r2 6
	fldi	f7 r2 7
	fldi	f2 r17 2
	sti	r16 r2 0
	sti	r13 r2 1
	sti	r17 r2 2
	sti	r11 r2 3
	fsti	f9 r2 4
	fsti	f5 r2 5
	fsti	f8 r2 6
	fsti	f4 r2 7
	fsti	f7 r2 8
	addi	r2 r2 9
	call	L_sin_1886
	addi	r2 r2 -9
	fadd	f6 f0 f2
	ldi	r16 r2 0
	ldi	r13 r2 1
	ldi	r17 r2 2
	ldi	r11 r2 3
	fldi	f9 r2 4
	fldi	f5 r2 5
	fldi	f8 r2 6
	fldi	f4 r2 7
	fldi	f7 r2 8
	fmul	f11 f7 f4
	fmul	f2 f9 f5
	fmul	f3 f2 f4
	fmul	f2 f8 f6
	fsub	f12 f3 f2
	fmul	f2 f8 f5
	fmul	f3 f2 f4
	fmul	f2 f9 f6
	fadd	f10 f3 f2
	fmul	f13 f7 f6
	fmul	f2 f9 f5
	fmul	f3 f2 f6
	fmul	f2 f8 f4
	fadd	f14 f3 f2
	fmul	f2 f8 f5
	fmul	f3 f2 f6
	fmul	f2 f9 f4
	fsub	f6 f3 f2
	fsub	f15 f0 f5
	fmul	f9 f9 f7
	fmul	f5 f8 f7
	fldi	f7 r11 0
	fldi	f8 r11 1
	fldi	f16 r11 2
	fmul	f2 f11 f11
	fmul	f3 f7 f2
	fmul	f2 f13 f13
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fmul	f2 f15 f15
	fmul	f2 f16 f2
	fadd	f2 f3 f2
	fsti	f2 r11 0
	fmul	f2 f12 f12
	fmul	f3 f7 f2
	fmul	f2 f14 f14
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fmul	f2 f9 f9
	fmul	f2 f16 f2
	fadd	f2 f3 f2
	fsti	f2 r11 1
	fmul	f2 f10 f10
	fmul	f3 f7 f2
	fmul	f2 f6 f6
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fmul	f2 f5 f5
	fmul	f2 f16 f2
	fadd	f2 f3 f2
	fsti	f2 r11 2
	fldi	f4 r0 28
	fmul	f2 f7 f12
	fmul	f3 f2 f10
	fmul	f2 f8 f14
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fmul	f2 f16 f9
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r17 0
	fldi	f4 r0 28
	fmul	f2 f7 f11
	fmul	f3 f2 f10
	fmul	f2 f8 f13
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fmul	f2 f16 f15
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r17 1
	fldi	f4 r0 28
	fmul	f2 f7 f11
	fmul	f3 f2 f12
	fmul	f2 f8 f13
	fmul	f2 f2 f14
	fadd	f3 f3 f2
	fmul	f2 f16 f15
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r17 2
L_cont_13292 : 
	addi	r4 r0 1
L_cont_13275 : 
	bne	r4 r0 L_else_13279
	addi	r4 r0 32816
	sti	r13 r4 0
	add	r4 r0 r16
	return
L_else_13279 : 
	addi	r4 r13 1
	jump	L_read_object_2041
L_read_net_item_2045 : 
	add	r12 r0 r4
	sti	r12 r2 0
	addi	r2 r2 1
	call	min_caml_read_int
	addi	r2 r2 -1
	add	r11 r0 r4
	ldi	r12 r2 0
	addi	r4 r0 -1
	bne	r11 r4 L_else_13418
	addi	r4 r12 1
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_13418 : 
	addi	r10 r12 1
	sti	r12 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	min_caml_read_int
	addi	r2 r2 -3
	add	r9 r0 r4
	ldi	r12 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r4 r0 -1
	bne	r9 r4 L_else_13421
	addi	r4 r10 1
	addi	r5 r0 -1
	sti	r11 r2 0
	sti	r12 r2 1
	addi	r2 r2 2
	call	min_caml_create_array
	addi	r2 r2 -2
	ldi	r11 r2 0
	ldi	r12 r2 1
	jump	L_cont_13419
L_else_13421 : 
	addi	r7 r10 1
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	addi	r2 r2 5
	call	min_caml_read_int
	addi	r2 r2 -5
	add	r6 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	addi	r4 r0 -1
	bne	r6 r4 L_else_13424
	addi	r5 r7 1
	addi	r4 r0 -1
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	min_caml_create_array
	addi	r2 r2 -4
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	jump	L_cont_13422
L_else_13424 : 
	addi	r5 r7 1
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r12 r2 4
	sti	r11 r2 5
	sti	r5 r2 6
	addi	r2 r2 7
	call	min_caml_read_int
	addi	r2 r2 -7
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r12 r2 4
	ldi	r11 r2 5
	ldi	r5 r2 6
	addi	r8 r0 -1
	bne	r4 r8 L_else_13427
	addi	r5 r5 1
	addi	r4 r0 -1
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	sti	r7 r2 5
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 6
	call	min_caml_create_array
	addi	r2 r2 -6
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	ldi	r7 r2 5
	jump	L_cont_13425
L_else_13427 : 
	addi	r8 r5 1
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	sti	r7 r2 5
	sti	r4 r2 6
	sti	r5 r2 7
	add	r4 r0 r8
	addi	r2 r2 8
	call	L_read_net_item_2045
	addi	r2 r2 -8
	add	r8 r0 r4
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	ldi	r7 r2 5
	ldi	r4 r2 6
	ldi	r5 r2 7
	add	r1 r8 r5
	sti	r4 r1 0
	add	r4 r0 r8
L_cont_13425 : 
	add	r1 r4 r7
	sti	r6 r1 0
	add	r4 r0 r4
L_cont_13422 : 
	add	r1 r4 r10
	sti	r9 r1 0
	add	r4 r0 r4
L_cont_13419 : 
	add	r1 r4 r12
	sti	r11 r1 0
	add	r4 r0 r4
	return
L_read_or_network_2047 : 
	add	r11 r0 r4
	addi	r10 r0 0
	sti	r11 r2 0
	sti	r10 r2 1
	addi	r2 r2 2
	call	min_caml_read_int
	addi	r2 r2 -2
	add	r9 r0 r4
	ldi	r11 r2 0
	ldi	r10 r2 1
	addi	r4 r0 -1
	bne	r9 r4 L_else_13431
	addi	r5 r0 1
	addi	r4 r0 -1
	sti	r11 r2 0
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	add	r10 r0 r4
	ldi	r11 r2 0
	jump	L_cont_13429
L_else_13431 : 
	addi	r8 r0 1
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	addi	r2 r2 4
	call	min_caml_read_int
	addi	r2 r2 -4
	add	r7 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	addi	r4 r0 -1
	bne	r7 r4 L_else_13445
	addi	r5 r0 2
	addi	r4 r0 -1
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	jump	L_cont_13443
L_else_13445 : 
	addi	r6 r0 2
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r11 r2 4
	sti	r6 r2 5
	addi	r2 r2 6
	call	min_caml_read_int
	addi	r2 r2 -6
	add	r5 r0 r4
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r11 r2 4
	ldi	r6 r2 5
	addi	r4 r0 -1
	bne	r5 r4 L_else_13448
	addi	r5 r0 3
	addi	r4 r0 -1
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r7 r2 3
	sti	r8 r2 4
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	min_caml_create_array
	addi	r2 r2 -5
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r7 r2 3
	ldi	r8 r2 4
	jump	L_cont_13446
L_else_13448 : 
	addi	r4 r0 3
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r7 r2 3
	sti	r8 r2 4
	sti	r5 r2 5
	sti	r6 r2 6
	addi	r2 r2 7
	call	L_read_net_item_2045
	addi	r2 r2 -7
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r7 r2 3
	ldi	r8 r2 4
	ldi	r5 r2 5
	ldi	r6 r2 6
	add	r1 r4 r6
	sti	r5 r1 0
	add	r4 r0 r4
L_cont_13446 : 
	add	r1 r4 r8
	sti	r7 r1 0
	add	r4 r0 r4
L_cont_13443 : 
	add	r1 r4 r10
	sti	r9 r1 0
	add	r10 r0 r4
L_cont_13429 : 
	ldi	r5 r10 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13433
	addi	r4 r11 1
	add	r5 r0 r10
	jump	min_caml_create_array
L_else_13433 : 
	addi	r9 r11 1
	addi	r7 r0 0
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	addi	r2 r2 4
	call	min_caml_read_int
	addi	r2 r2 -4
	add	r6 r0 r4
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	addi	r4 r0 -1
	bne	r6 r4 L_else_13436
	addi	r5 r0 1
	addi	r4 r0 -1
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	add	r6 r0 r4
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	jump	L_cont_13434
L_else_13436 : 
	addi	r5 r0 1
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	sti	r5 r2 5
	addi	r2 r2 6
	call	min_caml_read_int
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
	ldi	r5 r2 5
	addi	r8 r0 -1
	bne	r4 r8 L_else_13442
	addi	r5 r0 2
	addi	r4 r0 -1
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	sti	r7 r2 4
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	min_caml_create_array
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	ldi	r7 r2 4
	jump	L_cont_13440
L_else_13442 : 
	addi	r8 r0 2
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	sti	r7 r2 4
	sti	r4 r2 5
	sti	r5 r2 6
	add	r4 r0 r8
	addi	r2 r2 7
	call	L_read_net_item_2045
	addi	r2 r2 -7
	add	r8 r0 r4
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	ldi	r7 r2 4
	ldi	r4 r2 5
	ldi	r5 r2 6
	add	r1 r8 r5
	sti	r4 r1 0
	add	r4 r0 r8
L_cont_13440 : 
	add	r1 r4 r7
	sti	r6 r1 0
	add	r6 r0 r4
L_cont_13434 : 
	ldi	r5 r6 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13439
	addi	r4 r9 1
	sti	r10 r2 0
	sti	r11 r2 1
	add	r5 r0 r6
	addi	r2 r2 2
	call	min_caml_create_array
	addi	r2 r2 -2
	ldi	r10 r2 0
	ldi	r11 r2 1
	jump	L_cont_13437
L_else_13439 : 
	addi	r4 r9 1
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r6 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	L_read_or_network_2047
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r6 r2 2
	ldi	r9 r2 3
	add	r1 r4 r9
	sti	r6 r1 0
	add	r4 r0 r4
L_cont_13437 : 
	add	r1 r4 r11
	sti	r10 r1 0
	add	r4 r0 r4
	return
L_read_and_network_2049 : 
	add	r11 r0 r4
	addi	r8 r0 0
	sti	r12 r2 0
	sti	r11 r2 1
	sti	r8 r2 2
	addi	r2 r2 3
	call	min_caml_read_int
	addi	r2 r2 -3
	add	r6 r0 r4
	ldi	r12 r2 0
	ldi	r11 r2 1
	ldi	r8 r2 2
	addi	r4 r0 -1
	bne	r6 r4 L_else_13452
	addi	r4 r0 1
	addi	r5 r0 -1
	sti	r11 r2 0
	sti	r12 r2 1
	addi	r2 r2 2
	call	min_caml_create_array
	addi	r2 r2 -2
	add	r6 r0 r4
	ldi	r11 r2 0
	ldi	r12 r2 1
	jump	L_cont_13450
L_else_13452 : 
	addi	r4 r0 1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r4 r2 4
	addi	r2 r2 5
	call	min_caml_read_int
	addi	r2 r2 -5
	add	r5 r0 r4
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r4 r2 4
	addi	r7 r0 -1
	bne	r5 r7 L_else_13465
	addi	r4 r0 2
	addi	r5 r0 -1
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r6 r2 2
	sti	r8 r2 3
	addi	r2 r2 4
	call	min_caml_create_array
	addi	r2 r2 -4
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r6 r2 2
	ldi	r8 r2 3
	jump	L_cont_13463
L_else_13465 : 
	addi	r7 r0 2
	sti	r4 r2 0
	sti	r5 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	sti	r12 r2 4
	sti	r11 r2 5
	sti	r7 r2 6
	addi	r2 r2 7
	call	min_caml_read_int
	addi	r2 r2 -7
	add	r9 r0 r4
	ldi	r4 r2 0
	ldi	r5 r2 1
	ldi	r8 r2 2
	ldi	r6 r2 3
	ldi	r12 r2 4
	ldi	r11 r2 5
	ldi	r7 r2 6
	addi	r10 r0 -1
	bne	r9 r10 L_else_13468
	addi	r7 r0 3
	addi	r9 r0 -1
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r6 r2 2
	sti	r8 r2 3
	sti	r5 r2 4
	sti	r4 r2 5
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 6
	call	min_caml_create_array
	addi	r2 r2 -6
	add	r7 r0 r4
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r6 r2 2
	ldi	r8 r2 3
	ldi	r5 r2 4
	ldi	r4 r2 5
	jump	L_cont_13466
L_else_13468 : 
	addi	r10 r0 3
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r6 r2 2
	sti	r8 r2 3
	sti	r5 r2 4
	sti	r4 r2 5
	sti	r9 r2 6
	sti	r7 r2 7
	add	r4 r0 r10
	addi	r2 r2 8
	call	L_read_net_item_2045
	addi	r2 r2 -8
	add	r10 r0 r4
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r6 r2 2
	ldi	r8 r2 3
	ldi	r5 r2 4
	ldi	r4 r2 5
	ldi	r9 r2 6
	ldi	r7 r2 7
	add	r1 r10 r7
	sti	r9 r1 0
	add	r7 r0 r10
L_cont_13466 : 
	add	r1 r7 r4
	sti	r5 r1 0
	add	r4 r0 r7
L_cont_13463 : 
	add	r1 r4 r8
	sti	r6 r1 0
	add	r6 r0 r4
L_cont_13450 : 
	ldi	r5 r6 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13454
	add	r4 r0 r12
	return
L_else_13454 : 
	addi	r4 r0 32827
	add	r1 r4 r11
	sti	r6 r1 0
	addi	r9 r11 1
	addi	r7 r0 0
	sti	r12 r2 0
	sti	r9 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	min_caml_read_int
	addi	r2 r2 -3
	add	r6 r0 r4
	ldi	r12 r2 0
	ldi	r9 r2 1
	ldi	r7 r2 2
	addi	r4 r0 -1
	bne	r6 r4 L_else_13457
	addi	r5 r0 1
	addi	r4 r0 -1
	sti	r9 r2 0
	sti	r12 r2 1
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	min_caml_create_array
	addi	r2 r2 -2
	add	r6 r0 r4
	ldi	r9 r2 0
	ldi	r12 r2 1
	jump	L_cont_13455
L_else_13457 : 
	addi	r5 r0 1
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r12 r2 2
	sti	r9 r2 3
	sti	r5 r2 4
	addi	r2 r2 5
	call	min_caml_read_int
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r12 r2 2
	ldi	r9 r2 3
	ldi	r5 r2 4
	addi	r8 r0 -1
	bne	r4 r8 L_else_13462
	addi	r5 r0 2
	addi	r4 r0 -1
	sti	r9 r2 0
	sti	r12 r2 1
	sti	r6 r2 2
	sti	r7 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	min_caml_create_array
	addi	r2 r2 -4
	ldi	r9 r2 0
	ldi	r12 r2 1
	ldi	r6 r2 2
	ldi	r7 r2 3
	jump	L_cont_13460
L_else_13462 : 
	addi	r8 r0 2
	sti	r9 r2 0
	sti	r12 r2 1
	sti	r6 r2 2
	sti	r7 r2 3
	sti	r4 r2 4
	sti	r5 r2 5
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_read_net_item_2045
	addi	r2 r2 -6
	add	r8 r0 r4
	ldi	r9 r2 0
	ldi	r12 r2 1
	ldi	r6 r2 2
	ldi	r7 r2 3
	ldi	r4 r2 4
	ldi	r5 r2 5
	add	r1 r8 r5
	sti	r4 r1 0
	add	r4 r0 r8
L_cont_13460 : 
	add	r1 r4 r7
	sti	r6 r1 0
	add	r6 r0 r4
L_cont_13455 : 
	ldi	r5 r6 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13459
	add	r4 r0 r12
	return
L_else_13459 : 
	addi	r4 r0 32827
	add	r1 r4 r9
	sti	r6 r1 0
	addi	r4 r9 1
	jump	L_read_and_network_2049
L_solver_rect_surface_2053 : 
	add	r10 r0 r8
	add	r9 r0 r7
	add	r7 r0 r6
	add	r6 r0 r5
	add	r5 r0 r4
	fadd	f5 f0 f4
	fadd	f4 f0 f3
	fadd	f3 f0 f2
	add	r1 r6 r7
	fldi	f2 r1 0
	fbne	f2 f0 L_else_13472
	addi	r4 r0 1
	jump	L_cont_13470
L_else_13472 : 
	addi	r4 r0 0
L_cont_13470 : 
	bne	r4 r0 L_else_13474
	ldi	r8 r5 4
	ldi	r5 r5 6
	add	r1 r6 r7
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_13477
	addi	r4 r0 0
	jump	L_cont_13475
L_else_13477 : 
	addi	r4 r0 1
L_cont_13475 : 
	xor	r4 r5 r4
	add	r1 r8 r7
	fldi	f2 r1 0
	bne	r4 r0 L_else_13480
	fsub	f2 f0 f2
	jump	L_cont_13478
L_else_13480 : 
	fadd	f2 f0 f2
L_cont_13478 : 
	fsub	f3 f2 f3
	add	r1 r6 r7
	fldi	f2 r1 0
	fdiv	f6 f3 f2
	add	r1 r6 r9
	fldi	f2 r1 0
	fmul	f2 f6 f2
	fadd	f2 f2 f4
	fbgt	f0 f2 L_else_13483
	fadd	f2 f0 f2
	jump	L_cont_13481
L_else_13483 : 
	fsub	f2 f0 f2
L_cont_13481 : 
	add	r1 r8 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_13486
	addi	r4 r0 0
	jump	L_cont_13484
L_else_13486 : 
	addi	r4 r0 1
L_cont_13484 : 
	bne	r4 r0 L_else_13488
	addi	r4 r0 0
	return
L_else_13488 : 
	add	r1 r6 r10
	fldi	f2 r1 0
	fmul	f2 f6 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_13491
	fadd	f2 f0 f2
	jump	L_cont_13489
L_else_13491 : 
	fsub	f2 f0 f2
L_cont_13489 : 
	add	r1 r8 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_13494
	addi	r4 r0 0
	jump	L_cont_13492
L_else_13494 : 
	addi	r4 r0 1
L_cont_13492 : 
	bne	r4 r0 L_else_13496
	addi	r4 r0 0
	return
L_else_13496 : 
	addi	r4 r0 32817
	fsti	f6 r4 0
	addi	r4 r0 1
	return
L_else_13474 : 
	addi	r4 r0 0
	return
L_solver_surface_2068 : 
	fadd	f7 f0 f4
	fadd	f6 f0 f3
	fadd	f5 f0 f2
	ldi	r4 r4 4
	fldi	f3 r5 0
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f2 r5 1
	fldi	f3 r4 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f3 r5 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fbgt	f4 f0 L_else_13500
	addi	r5 r0 0
	jump	L_cont_13498
L_else_13500 : 
	addi	r5 r0 1
L_cont_13498 : 
	bne	r5 r0 L_else_13502
	addi	r4 r0 0
	return
L_else_13502 : 
	addi	r5 r0 32817
	fldi	f2 r4 0
	fmul	f3 f2 f5
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r5 0
	addi	r4 r0 1
	return
L_quadratic_2074 : 
	add	r5 r0 r4
	fadd	f7 f0 f4
	fadd	f6 f0 f3
	fadd	f5 f0 f2
	fmul	f3 f5 f5
	ldi	r4 r5 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fmul	f4 f6 f6
	ldi	r4 r5 4
	fldi	f3 r4 1
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f7 f7
	ldi	r4 r5 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	ldi	r4 r5 3
	bne	r4 r0 L_else_13505
	fadd	f2 f0 f4
	return
L_else_13505 : 
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
	fmul	f3 f5 f6
	ldi	r4 r5 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	return
L_solver_second_2087 : 
	add	r6 r0 r4
	fadd	f12 f0 f4
	fadd	f11 f0 f3
	fadd	f10 f0 f2
	fldi	f4 r5 0
	fldi	f3 r5 1
	fldi	f2 r5 2
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f12 r2 2
	fsti	f11 r2 3
	fsti	f10 r2 4
	add	r4 r0 r6
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 5
	call	L_quadratic_2074
	addi	r2 r2 -5
	fadd	f9 f0 f2
	ldi	r6 r2 0
	ldi	r5 r2 1
	fldi	f12 r2 2
	fldi	f11 r2 3
	fldi	f10 r2 4
	fbne	f9 f0 L_else_13509
	addi	r4 r0 1
	jump	L_cont_13507
L_else_13509 : 
	addi	r4 r0 0
L_cont_13507 : 
	bne	r4 r0 L_else_13511
	fldi	f6 r5 0
	fldi	f7 r5 1
	fldi	f5 r5 2
	fmul	f2 f6 f10
	ldi	r4 r6 4
	fldi	f3 r4 0
	fmul	f4 f2 f3
	fmul	f3 f7 f11
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f12
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f8 f3 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_13514
	fadd	f5 f0 f8
	jump	L_cont_13512
L_else_13514 : 
	fmul	f3 f5 f11
	fmul	f2 f7 f12
	fadd	f3 f3 f2
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f6 f12
	fmul	f2 f5 f10
	fadd	f3 f3 f2
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fmul	f3 f6 f11
	fmul	f2 f7 f10
	fadd	f3 f3 f2
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f5 f8 f2
L_cont_13512 : 
	sti	r6 r2 0
	fsti	f5 r2 1
	fsti	f9 r2 2
	add	r4 r0 r6
	fadd	f4 f0 f12
	fadd	f3 f0 f11
	fadd	f2 f0 f10
	addi	r2 r2 3
	call	L_quadratic_2074
	addi	r2 r2 -3
	fadd	f3 f0 f2
	ldi	r6 r2 0
	fldi	f5 r2 1
	fldi	f9 r2 2
	ldi	r5 r6 1
	addi	r4 r0 3
	bne	r5 r4 L_else_13517
	fldi	f2 r0 12
	fsub	f2 f3 f2
	jump	L_cont_13515
L_else_13517 : 
	fadd	f2 f0 f3
L_cont_13515 : 
	fmul	f3 f5 f5
	fmul	f2 f9 f2
	fsub	f3 f3 f2
	fbgt	f3 f0 L_else_13520
	addi	r4 r0 0
	jump	L_cont_13518
L_else_13520 : 
	addi	r4 r0 1
L_cont_13518 : 
	bne	r4 r0 L_else_13522
	addi	r4 r0 0
	return
L_else_13522 : 
	fldi	f4 r0 28
	fldi	f2 r0 12
	fbgt	f3 f2 L_else_13525
	fldi	f2 r0 12
	jump	L_cont_13523
L_else_13525 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f3
L_cont_13523 : 
	sti	r6 r2 0
	fsti	f5 r2 1
	fsti	f9 r2 2
	fsti	f3 r2 3
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 4
	call	L_isqrt_1892
	addi	r2 r2 -4
	ldi	r6 r2 0
	fldi	f5 r2 1
	fldi	f9 r2 2
	fldi	f3 r2 3
	fmul	f2 f3 f2
	ldi	r4 r6 6
	bne	r4 r0 L_else_13528
	fsub	f2 f0 f2
	jump	L_cont_13526
L_else_13528 : 
	fadd	f2 f0 f2
L_cont_13526 : 
	addi	r4 r0 32817
	fsub	f2 f2 f5
	fdiv	f2 f2 f9
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_13511 : 
	addi	r4 r0 0
	return
L_solver_rect_fast_2097 : 
	add	r7 r0 r5
	add	r8 r0 r4
	fadd	f6 f0 f4
	fadd	f5 f0 f3
	fadd	f7 f0 f2
	fldi	f2 r6 0
	fsub	f2 f2 f7
	fldi	f3 r6 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_13532
	fadd	f2 f0 f2
	jump	L_cont_13530
L_else_13532 : 
	fsub	f2 f0 f2
L_cont_13530 : 
	ldi	r4 r8 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_13535
	addi	r4 r0 0
	jump	L_cont_13533
L_else_13535 : 
	addi	r4 r0 1
L_cont_13533 : 
	bne	r4 r0 L_else_13538
	addi	r4 r0 0
	jump	L_cont_13536
L_else_13538 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_13587
	fadd	f2 f0 f2
	jump	L_cont_13585
L_else_13587 : 
	fsub	f2 f0 f2
L_cont_13585 : 
	ldi	r4 r8 4
	fldi	f3 r4 2
	fbgt	f3 f2 L_else_13590
	addi	r4 r0 0
	jump	L_cont_13588
L_else_13590 : 
	addi	r4 r0 1
L_cont_13588 : 
	bne	r4 r0 L_else_13592
	addi	r4 r0 0
	jump	L_cont_13536
L_else_13592 : 
	addi	r4 r0 1
	fldi	f2 r6 1
	fbne	f2 f0 L_else_13595
	addi	r5 r0 1
	jump	L_cont_13593
L_else_13595 : 
	addi	r5 r0 0
L_cont_13593 : 
	sub	r4 r4 r5
L_cont_13536 : 
	bne	r4 r0 L_else_13540
	fldi	f2 r6 2
	fsub	f3 f2 f5
	fldi	f2 r6 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_13543
	fadd	f2 f0 f2
	jump	L_cont_13541
L_else_13543 : 
	fsub	f2 f0 f2
L_cont_13541 : 
	ldi	r4 r8 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_13546
	addi	r4 r0 0
	jump	L_cont_13544
L_else_13546 : 
	addi	r4 r0 1
L_cont_13544 : 
	bne	r4 r0 L_else_13549
	addi	r4 r0 0
	jump	L_cont_13547
L_else_13549 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_13576
	fadd	f2 f0 f2
	jump	L_cont_13574
L_else_13576 : 
	fsub	f2 f0 f2
L_cont_13574 : 
	ldi	r4 r8 4
	fldi	f3 r4 2
	fbgt	f3 f2 L_else_13579
	addi	r4 r0 0
	jump	L_cont_13577
L_else_13579 : 
	addi	r4 r0 1
L_cont_13577 : 
	bne	r4 r0 L_else_13581
	addi	r4 r0 0
	jump	L_cont_13547
L_else_13581 : 
	addi	r5 r0 1
	fldi	f2 r6 3
	fbne	f2 f0 L_else_13584
	addi	r4 r0 1
	jump	L_cont_13582
L_else_13584 : 
	addi	r4 r0 0
L_cont_13582 : 
	sub	r4 r5 r4
L_cont_13547 : 
	bne	r4 r0 L_else_13551
	fldi	f2 r6 4
	fsub	f3 f2 f6
	fldi	f2 r6 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_13554
	fadd	f2 f0 f2
	jump	L_cont_13552
L_else_13554 : 
	fsub	f2 f0 f2
L_cont_13552 : 
	ldi	r4 r8 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_13557
	addi	r4 r0 0
	jump	L_cont_13555
L_else_13557 : 
	addi	r4 r0 1
L_cont_13555 : 
	bne	r4 r0 L_else_13560
	addi	r4 r0 0
	jump	L_cont_13558
L_else_13560 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_13565
	fadd	f2 f0 f2
	jump	L_cont_13563
L_else_13565 : 
	fsub	f2 f0 f2
L_cont_13563 : 
	ldi	r4 r8 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_13568
	addi	r4 r0 0
	jump	L_cont_13566
L_else_13568 : 
	addi	r4 r0 1
L_cont_13566 : 
	bne	r4 r0 L_else_13570
	addi	r4 r0 0
	jump	L_cont_13558
L_else_13570 : 
	addi	r5 r0 1
	fldi	f2 r6 5
	fbne	f2 f0 L_else_13573
	addi	r4 r0 1
	jump	L_cont_13571
L_else_13573 : 
	addi	r4 r0 0
L_cont_13571 : 
	sub	r4 r5 r4
L_cont_13558 : 
	bne	r4 r0 L_else_13562
	addi	r4 r0 0
	return
L_else_13562 : 
	addi	r4 r0 32817
	fsti	f4 r4 0
	addi	r4 r0 3
	return
L_else_13551 : 
	addi	r4 r0 32817
	fsti	f4 r4 0
	addi	r4 r0 2
	return
L_else_13540 : 
	addi	r4 r0 32817
	fsti	f4 r4 0
	addi	r4 r0 1
	return
L_solver_second_fast_2110 : 
	add	r6 r0 r5
	add	r7 r0 r4
	fadd	f6 f0 f4
	fadd	f7 f0 f3
	fadd	f8 f0 f2
	fldi	f4 r6 0
	fbne	f4 f0 L_else_13599
	addi	r4 r0 1
	jump	L_cont_13597
L_else_13599 : 
	addi	r4 r0 0
L_cont_13597 : 
	bne	r4 r0 L_else_13601
	fldi	f2 r6 1
	fmul	f2 f2 f8
	fldi	f3 r6 2
	fmul	f3 f3 f7
	fadd	f3 f2 f3
	fldi	f2 r6 3
	fmul	f2 f2 f6
	fadd	f5 f3 f2
	sti	r7 r2 0
	sti	r6 r2 1
	fsti	f5 r2 2
	fsti	f4 r2 3
	add	r4 r0 r7
	fadd	f4 f0 f6
	fadd	f3 f0 f7
	fadd	f2 f0 f8
	addi	r2 r2 4
	call	L_quadratic_2074
	addi	r2 r2 -4
	fadd	f3 f0 f2
	ldi	r7 r2 0
	ldi	r6 r2 1
	fldi	f5 r2 2
	fldi	f4 r2 3
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_13604
	fldi	f2 r0 12
	fsub	f2 f3 f2
	jump	L_cont_13602
L_else_13604 : 
	fadd	f2 f0 f3
L_cont_13602 : 
	fmul	f3 f5 f5
	fmul	f2 f4 f2
	fsub	f4 f3 f2
	fbgt	f4 f0 L_else_13607
	addi	r4 r0 0
	jump	L_cont_13605
L_else_13607 : 
	addi	r4 r0 1
L_cont_13605 : 
	bne	r4 r0 L_else_13609
	addi	r4 r0 0
	return
L_else_13609 : 
	ldi	r4 r7 6
	bne	r4 r0 L_else_13612
	addi	r4 r0 32817
	fldi	f3 r0 28
	fldi	f2 r0 12
	fbgt	f4 f2 L_else_13615
	fldi	f2 r0 12
	jump	L_cont_13613
L_else_13615 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f4
L_cont_13613 : 
	sti	r6 r2 0
	sti	r4 r2 1
	fsti	f5 r2 2
	fsti	f4 r2 3
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 4
	call	L_isqrt_1892
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r4 r2 1
	fldi	f5 r2 2
	fldi	f4 r2 3
	fmul	f2 f4 f2
	fsub	f3 f5 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r4 0
	jump	L_cont_13610
L_else_13612 : 
	addi	r4 r0 32817
	fldi	f3 r0 28
	fldi	f2 r0 12
	fbgt	f4 f2 L_else_13618
	fldi	f2 r0 12
	jump	L_cont_13616
L_else_13618 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f4
L_cont_13616 : 
	sti	r6 r2 0
	sti	r4 r2 1
	fsti	f5 r2 2
	fsti	f4 r2 3
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 4
	call	L_isqrt_1892
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r4 r2 1
	fldi	f5 r2 2
	fldi	f4 r2 3
	fmul	f2 f4 f2
	fadd	f3 f5 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r4 0
L_cont_13610 : 
	addi	r4 r0 1
	return
L_else_13601 : 
	addi	r4 r0 0
	return
L_solver_second_fast2_2127 : 
	add	r7 r0 r4
	fadd	f5 f0 f4
	fadd	f6 f0 f3
	fadd	f3 f0 f2
	fldi	f4 r5 0
	fbne	f4 f0 L_else_13622
	addi	r4 r0 1
	jump	L_cont_13620
L_else_13622 : 
	addi	r4 r0 0
L_cont_13620 : 
	bne	r4 r0 L_else_13624
	fldi	f2 r5 1
	fmul	f3 f2 f3
	fldi	f2 r5 2
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fldi	f3 r5 3
	fmul	f3 f3 f5
	fadd	f5 f2 f3
	fldi	f2 r6 3
	fmul	f3 f5 f5
	fmul	f2 f4 f2
	fsub	f4 f3 f2
	fbgt	f4 f0 L_else_13627
	addi	r4 r0 0
	jump	L_cont_13625
L_else_13627 : 
	addi	r4 r0 1
L_cont_13625 : 
	bne	r4 r0 L_else_13629
	addi	r4 r0 0
	return
L_else_13629 : 
	ldi	r4 r7 6
	bne	r4 r0 L_else_13632
	addi	r4 r0 32817
	fldi	f3 r0 28
	fldi	f2 r0 12
	fbgt	f4 f2 L_else_13635
	fldi	f2 r0 12
	jump	L_cont_13633
L_else_13635 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f4
L_cont_13633 : 
	sti	r5 r2 0
	sti	r4 r2 1
	fsti	f5 r2 2
	fsti	f4 r2 3
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 4
	call	L_isqrt_1892
	addi	r2 r2 -4
	ldi	r5 r2 0
	ldi	r4 r2 1
	fldi	f5 r2 2
	fldi	f4 r2 3
	fmul	f2 f4 f2
	fsub	f3 f5 f2
	fldi	f2 r5 4
	fmul	f2 f3 f2
	fsti	f2 r4 0
	jump	L_cont_13630
L_else_13632 : 
	addi	r4 r0 32817
	fldi	f3 r0 28
	fldi	f2 r0 12
	fbgt	f4 f2 L_else_13638
	fldi	f2 r0 12
	jump	L_cont_13636
L_else_13638 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f4
L_cont_13636 : 
	sti	r5 r2 0
	sti	r4 r2 1
	fsti	f5 r2 2
	fsti	f4 r2 3
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 4
	call	L_isqrt_1892
	addi	r2 r2 -4
	ldi	r5 r2 0
	ldi	r4 r2 1
	fldi	f5 r2 2
	fldi	f4 r2 3
	fmul	f2 f4 f2
	fadd	f3 f5 f2
	fldi	f2 r5 4
	fmul	f2 f3 f2
	fsti	f2 r4 0
L_cont_13630 : 
	addi	r4 r0 1
	return
L_else_13624 : 
	addi	r4 r0 0
	return
L_setup_rect_table_2137 : 
	add	r6 r0 r5
	add	r7 r0 r4
	addi	r4 r0 6
	fldi	f2 r0 30
	sti	r6 r2 0
	sti	r7 r2 1
	addi	r2 r2 2
	call	min_caml_create_float_array
	addi	r2 r2 -2
	add	r8 r0 r4
	ldi	r6 r2 0
	ldi	r7 r2 1
	fldi	f2 r7 0
	fbne	f2 f0 L_else_13642
	addi	r4 r0 1
	jump	L_cont_13640
L_else_13642 : 
	addi	r4 r0 0
L_cont_13640 : 
	bne	r4 r0 L_else_13645
	ldi	r5 r6 6
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_13672
	addi	r4 r0 0
	jump	L_cont_13670
L_else_13672 : 
	addi	r4 r0 1
L_cont_13670 : 
	xor	r5 r5 r4
	ldi	r4 r6 4
	fldi	f2 r4 0
	bne	r5 r0 L_else_13675
	fsub	f2 f0 f2
	jump	L_cont_13673
L_else_13675 : 
	fadd	f2 f0 f2
L_cont_13673 : 
	fsti	f2 r8 0
	fldi	f3 r0 12
	fldi	f2 r7 0
	fdiv	f2 f3 f2
	fsti	f2 r8 1
	jump	L_cont_13643
L_else_13645 : 
	fldi	f2 r0 30
	fsti	f2 r8 1
L_cont_13643 : 
	fldi	f2 r7 1
	fbne	f2 f0 L_else_13648
	addi	r4 r0 1
	jump	L_cont_13646
L_else_13648 : 
	addi	r4 r0 0
L_cont_13646 : 
	bne	r4 r0 L_else_13651
	ldi	r5 r6 6
	fldi	f2 r7 1
	fbgt	f0 f2 L_else_13666
	addi	r4 r0 0
	jump	L_cont_13664
L_else_13666 : 
	addi	r4 r0 1
L_cont_13664 : 
	xor	r4 r5 r4
	ldi	r5 r6 4
	fldi	f2 r5 1
	bne	r4 r0 L_else_13669
	fsub	f2 f0 f2
	jump	L_cont_13667
L_else_13669 : 
	fadd	f2 f0 f2
L_cont_13667 : 
	fsti	f2 r8 2
	fldi	f3 r0 12
	fldi	f2 r7 1
	fdiv	f2 f3 f2
	fsti	f2 r8 3
	jump	L_cont_13649
L_else_13651 : 
	fldi	f2 r0 30
	fsti	f2 r8 3
L_cont_13649 : 
	fldi	f2 r7 2
	fbne	f2 f0 L_else_13654
	addi	r4 r0 1
	jump	L_cont_13652
L_else_13654 : 
	addi	r4 r0 0
L_cont_13652 : 
	bne	r4 r0 L_else_13657
	ldi	r5 r6 6
	fldi	f2 r7 2
	fbgt	f0 f2 L_else_13660
	addi	r4 r0 0
	jump	L_cont_13658
L_else_13660 : 
	addi	r4 r0 1
L_cont_13658 : 
	xor	r5 r5 r4
	ldi	r4 r6 4
	fldi	f2 r4 2
	bne	r5 r0 L_else_13663
	fsub	f2 f0 f2
	jump	L_cont_13661
L_else_13663 : 
	fadd	f2 f0 f2
L_cont_13661 : 
	fsti	f2 r8 4
	fldi	f3 r0 12
	fldi	f2 r7 2
	fdiv	f2 f3 f2
	fsti	f2 r8 5
	jump	L_cont_13655
L_else_13657 : 
	fldi	f2 r0 30
	fsti	f2 r8 5
L_cont_13655 : 
	add	r4 r0 r8
	return
L_setup_surface_table_2140 : 
	add	r6 r0 r4
	addi	r4 r0 4
	fldi	f2 r0 30
	sti	r5 r2 0
	sti	r6 r2 1
	addi	r2 r2 2
	call	min_caml_create_float_array
	addi	r2 r2 -2
	add	r7 r0 r4
	ldi	r5 r2 0
	ldi	r6 r2 1
	fldi	f3 r6 0
	ldi	r4 r5 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r6 1
	ldi	r4 r5 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fldi	f4 r6 2
	ldi	r4 r5 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f3 f0 L_else_13679
	addi	r4 r0 0
	jump	L_cont_13677
L_else_13679 : 
	addi	r4 r0 1
L_cont_13677 : 
	bne	r4 r0 L_else_13682
	fldi	f2 r0 30
	fsti	f2 r7 0
	jump	L_cont_13680
L_else_13682 : 
	fldi	f2 r0 29
	fdiv	f2 f2 f3
	fsti	f2 r7 0
	ldi	r4 r5 4
	fldi	f2 r4 0
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r7 1
	ldi	r4 r5 4
	fldi	f2 r4 1
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r7 2
	ldi	r4 r5 4
	fldi	f2 r4 2
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r7 3
L_cont_13680 : 
	add	r4 r0 r7
	return
L_setup_second_table_2143 : 
	add	r6 r0 r4
	addi	r4 r0 5
	fldi	f2 r0 30
	sti	r5 r2 0
	sti	r6 r2 1
	addi	r2 r2 2
	call	min_caml_create_float_array
	addi	r2 r2 -2
	add	r7 r0 r4
	ldi	r5 r2 0
	ldi	r6 r2 1
	fldi	f4 r6 0
	fldi	f2 r6 1
	fldi	f3 r6 2
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r5 r2 2
	add	r4 r0 r5
	fadd	f1 f0 f4
	fadd	f4 f0 f3
	fadd	f3 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 3
	call	L_quadratic_2074
	addi	r2 r2 -3
	fadd	f8 f0 f2
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r5 r2 2
	fldi	f3 r6 0
	ldi	r4 r5 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fsub	f5 f0 f2
	fldi	f3 r6 1
	ldi	r4 r5 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fsub	f6 f0 f2
	fldi	f3 r6 2
	ldi	r4 r5 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fsub	f7 f0 f2
	fsti	f8 r7 0
	ldi	r4 r5 3
	bne	r4 r0 L_else_13686
	fsti	f5 r7 1
	fsti	f6 r7 2
	fsti	f7 r7 3
	jump	L_cont_13684
L_else_13686 : 
	fldi	f3 r6 2
	ldi	r4 r5 9
	fldi	f2 r4 1
	fmul	f3 f3 f2
	fldi	f4 r6 1
	ldi	r4 r5 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fsub	f2 f5 f2
	fsti	f2 r7 1
	fldi	f3 r6 2
	ldi	r4 r5 9
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r6 0
	ldi	r4 r5 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fsub	f2 f6 f2
	fsti	f2 r7 2
	fldi	f3 r6 1
	ldi	r4 r5 9
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r6 0
	ldi	r4 r5 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fsub	f2 f7 f2
	fsti	f2 r7 3
L_cont_13684 : 
	fbne	f8 f0 L_else_13689
	addi	r4 r0 1
	jump	L_cont_13687
L_else_13689 : 
	addi	r4 r0 0
L_cont_13687 : 
	bne	r4 r0 L_else_13692
	fldi	f2 r0 12
	fdiv	f2 f2 f8
	fsti	f2 r7 4
	jump	L_cont_13690
L_else_13692 : 
L_cont_13690 : 
	add	r4 r0 r7
	return
L_iter_setup_dirvec_constants_2146 : 
	add	r10 r0 r5
	add	r12 r0 r4
	bgt	r0 r10 L_else_13695
	addi	r4 r0 33714
	add	r1 r4 r10
	ldi	r7 r1 0
	ldi	r9 r12 1
	ldi	r8 r12 0
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_13698
	addi	r4 r0 6
	fldi	f2 r0 30
	sti	r9 r2 0
	sti	r10 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	sti	r8 r2 5
	addi	r2 r2 6
	call	min_caml_create_float_array
	addi	r2 r2 -6
	add	r6 r0 r4
	ldi	r9 r2 0
	ldi	r10 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	ldi	r8 r2 5
	fldi	f2 r8 0
	fbne	f2 f0 L_else_13708
	addi	r4 r0 1
	jump	L_cont_13706
L_else_13708 : 
	addi	r4 r0 0
L_cont_13706 : 
	bne	r4 r0 L_else_13711
	ldi	r5 r7 6
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_13738
	addi	r4 r0 0
	jump	L_cont_13736
L_else_13738 : 
	addi	r4 r0 1
L_cont_13736 : 
	xor	r4 r5 r4
	ldi	r5 r7 4
	fldi	f2 r5 0
	bne	r4 r0 L_else_13741
	fsub	f2 f0 f2
	jump	L_cont_13739
L_else_13741 : 
	fadd	f2 f0 f2
L_cont_13739 : 
	fsti	f2 r6 0
	fldi	f3 r0 12
	fldi	f2 r8 0
	fdiv	f2 f3 f2
	fsti	f2 r6 1
	jump	L_cont_13709
L_else_13711 : 
	fldi	f2 r0 30
	fsti	f2 r6 1
L_cont_13709 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_13714
	addi	r4 r0 1
	jump	L_cont_13712
L_else_13714 : 
	addi	r4 r0 0
L_cont_13712 : 
	bne	r4 r0 L_else_13717
	ldi	r5 r7 6
	fldi	f2 r8 1
	fbgt	f0 f2 L_else_13732
	addi	r4 r0 0
	jump	L_cont_13730
L_else_13732 : 
	addi	r4 r0 1
L_cont_13730 : 
	xor	r4 r5 r4
	ldi	r5 r7 4
	fldi	f2 r5 1
	bne	r4 r0 L_else_13735
	fsub	f2 f0 f2
	jump	L_cont_13733
L_else_13735 : 
	fadd	f2 f0 f2
L_cont_13733 : 
	fsti	f2 r6 2
	fldi	f3 r0 12
	fldi	f2 r8 1
	fdiv	f2 f3 f2
	fsti	f2 r6 3
	jump	L_cont_13715
L_else_13717 : 
	fldi	f2 r0 30
	fsti	f2 r6 3
L_cont_13715 : 
	fldi	f2 r8 2
	fbne	f2 f0 L_else_13720
	addi	r4 r0 1
	jump	L_cont_13718
L_else_13720 : 
	addi	r4 r0 0
L_cont_13718 : 
	bne	r4 r0 L_else_13723
	ldi	r5 r7 6
	fldi	f2 r8 2
	fbgt	f0 f2 L_else_13726
	addi	r4 r0 0
	jump	L_cont_13724
L_else_13726 : 
	addi	r4 r0 1
L_cont_13724 : 
	xor	r5 r5 r4
	ldi	r4 r7 4
	fldi	f2 r4 2
	bne	r5 r0 L_else_13729
	fsub	f2 f0 f2
	jump	L_cont_13727
L_else_13729 : 
	fadd	f2 f0 f2
L_cont_13727 : 
	fsti	f2 r6 4
	fldi	f3 r0 12
	fldi	f2 r8 2
	fdiv	f2 f3 f2
	fsti	f2 r6 5
	jump	L_cont_13721
L_else_13723 : 
	fldi	f2 r0 30
	fsti	f2 r6 5
L_cont_13721 : 
	add	r1 r9 r10
	sti	r6 r1 0
	jump	L_cont_13696
L_else_13698 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_13743
	addi	r4 r0 4
	fldi	f2 r0 30
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r12 r2 3
	sti	r11 r2 4
	sti	r8 r2 5
	addi	r2 r2 6
	call	min_caml_create_float_array
	addi	r2 r2 -6
	add	r5 r0 r4
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r12 r2 3
	ldi	r11 r2 4
	ldi	r8 r2 5
	fldi	f3 r8 0
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r8 1
	ldi	r4 r7 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fldi	f3 r8 2
	ldi	r4 r7 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f3 f0 L_else_13746
	addi	r4 r0 0
	jump	L_cont_13744
L_else_13746 : 
	addi	r4 r0 1
L_cont_13744 : 
	bne	r4 r0 L_else_13749
	fldi	f2 r0 30
	fsti	f2 r5 0
	jump	L_cont_13747
L_else_13749 : 
	fldi	f2 r0 29
	fdiv	f2 f2 f3
	fsti	f2 r5 0
	ldi	r4 r7 4
	fldi	f2 r4 0
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 1
	ldi	r4 r7 4
	fldi	f2 r4 1
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 2
	ldi	r4 r7 4
	fldi	f2 r4 2
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r5 3
L_cont_13747 : 
	add	r1 r9 r10
	sti	r5 r1 0
	jump	L_cont_13696
L_else_13743 : 
	addi	r4 r0 5
	fldi	f2 r0 30
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r12 r2 3
	sti	r11 r2 4
	sti	r8 r2 5
	addi	r2 r2 6
	call	min_caml_create_float_array
	addi	r2 r2 -6
	add	r5 r0 r4
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r12 r2 3
	ldi	r11 r2 4
	ldi	r8 r2 5
	fldi	f4 r8 0
	fldi	f3 r8 1
	fldi	f2 r8 2
	sti	r8 r2 0
	sti	r11 r2 1
	sti	r12 r2 2
	sti	r10 r2 3
	sti	r9 r2 4
	sti	r5 r2 5
	sti	r7 r2 6
	add	r4 r0 r7
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 7
	call	L_quadratic_2074
	addi	r2 r2 -7
	fadd	f8 f0 f2
	ldi	r8 r2 0
	ldi	r11 r2 1
	ldi	r12 r2 2
	ldi	r10 r2 3
	ldi	r9 r2 4
	ldi	r5 r2 5
	ldi	r7 r2 6
	fldi	f3 r8 0
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fsub	f5 f0 f2
	fldi	f3 r8 1
	ldi	r4 r7 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fsub	f6 f0 f2
	fldi	f3 r8 2
	ldi	r4 r7 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fsub	f7 f0 f2
	fsti	f8 r5 0
	ldi	r4 r7 3
	bne	r4 r0 L_else_13752
	fsti	f5 r5 1
	fsti	f6 r5 2
	fsti	f7 r5 3
	jump	L_cont_13750
L_else_13752 : 
	fldi	f3 r8 2
	ldi	r4 r7 9
	fldi	f2 r4 1
	fmul	f3 f3 f2
	fldi	f4 r8 1
	ldi	r4 r7 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fsub	f2 f5 f2
	fsti	f2 r5 1
	fldi	f3 r8 2
	ldi	r4 r7 9
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r8 0
	ldi	r4 r7 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fsub	f2 f6 f2
	fsti	f2 r5 2
	fldi	f3 r8 1
	ldi	r4 r7 9
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r8 0
	ldi	r4 r7 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fsub	f2 f7 f2
	fsti	f2 r5 3
L_cont_13750 : 
	fbne	f8 f0 L_else_13755
	addi	r4 r0 1
	jump	L_cont_13753
L_else_13755 : 
	addi	r4 r0 0
L_cont_13753 : 
	bne	r4 r0 L_else_13758
	fldi	f2 r0 12
	fdiv	f2 f2 f8
	fsti	f2 r5 4
	jump	L_cont_13756
L_else_13758 : 
L_cont_13756 : 
	add	r1 r9 r10
	sti	r5 r1 0
L_cont_13696 : 
	addi	r9 r10 -1
	bgt	r0 r9 L_else_13700
	addi	r4 r0 33714
	add	r1 r4 r9
	ldi	r5 r1 0
	ldi	r7 r12 1
	ldi	r6 r12 0
	ldi	r8 r5 1
	addi	r4 r0 1
	bne	r8 r4 L_else_13703
	sti	r12 r2 0
	sti	r9 r2 1
	sti	r7 r2 2
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_setup_rect_table_2137
	addi	r2 r2 -3
	ldi	r12 r2 0
	ldi	r9 r2 1
	ldi	r7 r2 2
	add	r1 r7 r9
	sti	r4 r1 0
	jump	L_cont_13701
L_else_13703 : 
	addi	r4 r0 2
	bne	r8 r4 L_else_13705
	sti	r12 r2 0
	sti	r9 r2 1
	sti	r7 r2 2
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_setup_surface_table_2140
	addi	r2 r2 -3
	ldi	r12 r2 0
	ldi	r9 r2 1
	ldi	r7 r2 2
	add	r1 r7 r9
	sti	r4 r1 0
	jump	L_cont_13701
L_else_13705 : 
	sti	r12 r2 0
	sti	r9 r2 1
	sti	r7 r2 2
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_setup_second_table_2143
	addi	r2 r2 -3
	ldi	r12 r2 0
	ldi	r9 r2 1
	ldi	r7 r2 2
	add	r1 r7 r9
	sti	r4 r1 0
L_cont_13701 : 
	addi	r4 r9 -1
	add	r5 r0 r4
	add	r4 r0 r12
	jump	L_iter_setup_dirvec_constants_2146
L_else_13700 : 
	add	r4 r0 r11
	return
L_else_13695 : 
	add	r4 r0 r11
	return
L_setup_startp_constants_2151 : 
	add	r6 r0 r5
	add	r8 r0 r4
	bgt	r0 r6 L_else_13761
	addi	r4 r0 33714
	add	r1 r4 r6
	ldi	r7 r1 0
	ldi	r5 r7 10
	ldi	r9 r7 1
	fldi	f3 r8 0
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r8 1
	ldi	r4 r7 5
	fldi	f2 r4 1
	fsub	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r8 2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f2 f3 f2
	fsti	f2 r5 2
	addi	r4 r0 2
	bne	r9 r4 L_else_13764
	ldi	r4 r7 4
	fldi	f2 r5 0
	fldi	f4 r5 1
	fldi	f5 r5 2
	fldi	f3 r4 0
	fmul	f3 f3 f2
	fldi	f2 r4 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	fsti	f2 r5 3
	jump	L_cont_13762
L_else_13764 : 
	addi	r4 r0 2
	bgt	r9 r4 L_else_13766
	jump	L_cont_13762
L_else_13766 : 
	fldi	f4 r5 0
	fldi	f3 r5 1
	fldi	f2 r5 2
	sti	r5 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	sti	r9 r2 3
	add	r4 r0 r7
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 4
	call	L_quadratic_2074
	addi	r2 r2 -4
	fadd	f3 f0 f2
	ldi	r5 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r9 r2 3
	addi	r4 r0 3
	bne	r9 r4 L_else_13769
	fldi	f2 r0 12
	fsub	f2 f3 f2
	jump	L_cont_13767
L_else_13769 : 
	fadd	f2 f0 f3
L_cont_13767 : 
	fsti	f2 r5 3
L_cont_13762 : 
	addi	r4 r6 -1
	add	r5 r0 r4
	add	r4 r0 r8
	jump	L_setup_startp_constants_2151
L_else_13761 : 
	return
L_is_outside_2171 : 
	add	r7 r0 r4
	fadd	f5 f0 f3
	fadd	f3 f0 f2
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f3 f3 f2
	ldi	r4 r7 5
	fldi	f2 r4 1
	fsub	f5 f5 f2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f4 f4 f2
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_13772
	fbgt	f0 f3 L_else_13775
	fadd	f2 f0 f3
	jump	L_cont_13773
L_else_13775 : 
	fsub	f2 f0 f3
L_cont_13773 : 
	ldi	r4 r7 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_13778
	addi	r4 r0 0
	jump	L_cont_13776
L_else_13778 : 
	addi	r4 r0 1
L_cont_13776 : 
	bne	r4 r0 L_else_13781
	addi	r4 r0 0
	jump	L_cont_13779
L_else_13781 : 
	fbgt	f0 f5 L_else_13786
	fadd	f2 f0 f5
	jump	L_cont_13784
L_else_13786 : 
	fsub	f2 f0 f5
L_cont_13784 : 
	ldi	r4 r7 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_13789
	addi	r4 r0 0
	jump	L_cont_13787
L_else_13789 : 
	addi	r4 r0 1
L_cont_13787 : 
	bne	r4 r0 L_else_13791
	addi	r4 r0 0
	jump	L_cont_13779
L_else_13791 : 
	fbgt	f0 f4 L_else_13794
	fadd	f2 f0 f4
	jump	L_cont_13792
L_else_13794 : 
	fsub	f2 f0 f4
L_cont_13792 : 
	ldi	r4 r7 4
	fldi	f3 r4 2
	fbgt	f3 f2 L_else_13796
	addi	r4 r0 0
	jump	L_cont_13779
L_else_13796 : 
	addi	r4 r0 1
L_cont_13779 : 
	bne	r4 r0 L_else_13783
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	return
L_else_13783 : 
	ldi	r4 r7 6
	add	r4 r0 r4
	return
L_else_13772 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_13798
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f2 f3
	fldi	f2 r4 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_13801
	addi	r4 r0 0
	jump	L_cont_13799
L_else_13801 : 
	addi	r4 r0 1
L_cont_13799 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	return
L_else_13798 : 
	sti	r7 r2 0
	add	r4 r0 r7
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	addi	r2 r2 1
	call	L_quadratic_2074
	addi	r2 r2 -1
	fadd	f3 f0 f2
	ldi	r7 r2 0
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_13804
	fldi	f2 r0 12
	fsub	f2 f3 f2
	jump	L_cont_13802
L_else_13804 : 
	fadd	f2 f0 f3
L_cont_13802 : 
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_13807
	addi	r4 r0 0
	jump	L_cont_13805
L_else_13807 : 
	addi	r4 r0 1
L_cont_13805 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	return
L_check_all_inside_2176 : 
	add	r8 r0 r5
	add	r9 r0 r4
	fadd	f7 f0 f4
	fadd	f8 f0 f3
	fadd	f6 f0 f2
	add	r1 r8 r9
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13810
	addi	r4 r0 1
	return
L_else_13810 : 
	addi	r4 r0 33714
	add	r1 r4 r5
	ldi	r7 r1 0
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f3 f6 f2
	ldi	r4 r7 5
	fldi	f2 r4 1
	fsub	f5 f8 f2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f4 f7 f2
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_13813
	fbgt	f0 f3 L_else_13822
	fadd	f2 f0 f3
	jump	L_cont_13820
L_else_13822 : 
	fsub	f2 f0 f3
L_cont_13820 : 
	ldi	r4 r7 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_13825
	addi	r4 r0 0
	jump	L_cont_13823
L_else_13825 : 
	addi	r4 r0 1
L_cont_13823 : 
	bne	r4 r0 L_else_13828
	addi	r4 r0 0
	jump	L_cont_13826
L_else_13828 : 
	fbgt	f0 f5 L_else_13833
	fadd	f2 f0 f5
	jump	L_cont_13831
L_else_13833 : 
	fsub	f2 f0 f5
L_cont_13831 : 
	ldi	r4 r7 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_13836
	addi	r4 r0 0
	jump	L_cont_13834
L_else_13836 : 
	addi	r4 r0 1
L_cont_13834 : 
	bne	r4 r0 L_else_13838
	addi	r4 r0 0
	jump	L_cont_13826
L_else_13838 : 
	fbgt	f0 f4 L_else_13841
	fadd	f2 f0 f4
	jump	L_cont_13839
L_else_13841 : 
	fsub	f2 f0 f4
L_cont_13839 : 
	ldi	r4 r7 4
	fldi	f3 r4 2
	fbgt	f3 f2 L_else_13843
	addi	r4 r0 0
	jump	L_cont_13826
L_else_13843 : 
	addi	r4 r0 1
L_cont_13826 : 
	bne	r4 r0 L_else_13830
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	jump	L_cont_13811
L_else_13830 : 
	ldi	r4 r7 6
	add	r4 r0 r4
	jump	L_cont_13811
L_else_13813 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_13845
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f2 f3
	fldi	f2 r4 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_13848
	addi	r4 r0 0
	jump	L_cont_13846
L_else_13848 : 
	addi	r4 r0 1
L_cont_13846 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	jump	L_cont_13811
L_else_13845 : 
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	fsti	f6 r2 3
	fsti	f8 r2 4
	fsti	f7 r2 5
	add	r4 r0 r7
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	addi	r2 r2 6
	call	L_quadratic_2074
	addi	r2 r2 -6
	fadd	f3 f0 f2
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	fldi	f6 r2 3
	fldi	f8 r2 4
	fldi	f7 r2 5
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_13851
	fldi	f2 r0 12
	fsub	f2 f3 f2
	jump	L_cont_13849
L_else_13851 : 
	fadd	f2 f0 f3
L_cont_13849 : 
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_13854
	addi	r4 r0 0
	jump	L_cont_13852
L_else_13854 : 
	addi	r4 r0 1
L_cont_13852 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
L_cont_13811 : 
	bne	r4 r0 L_else_13815
	addi	r5 r9 1
	add	r1 r8 r5
	ldi	r6 r1 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_13817
	addi	r4 r0 1
	return
L_else_13817 : 
	addi	r4 r0 33714
	add	r1 r4 r6
	ldi	r4 r1 0
	sti	r5 r2 0
	sti	r8 r2 1
	fsti	f6 r2 2
	fsti	f8 r2 3
	fsti	f7 r2 4
	fadd	f4 f0 f7
	fadd	f3 f0 f8
	fadd	f2 f0 f6
	addi	r2 r2 5
	call	L_is_outside_2171
	addi	r2 r2 -5
	ldi	r5 r2 0
	ldi	r8 r2 1
	fldi	f6 r2 2
	fldi	f8 r2 3
	fldi	f7 r2 4
	bne	r4 r0 L_else_13819
	addi	r4 r5 1
	add	r5 r0 r8
	fadd	f4 f0 f7
	fadd	f3 f0 f8
	fadd	f2 f0 f6
	jump	L_check_all_inside_2176
L_else_13819 : 
	addi	r4 r0 0
	return
L_else_13815 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2182 : 
	add	r10 r0 r5
	add	r11 r0 r4
	add	r1 r10 r11
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_13857
	addi	r4 r0 0
	return
L_else_13857 : 
	add	r1 r10 r11
	ldi	r9 r1 0
	addi	r7 r0 33649
	addi	r5 r0 32786
	addi	r4 r0 33714
	add	r1 r4 r9
	ldi	r6 r1 0
	fldi	f2 r5 0
	ldi	r4 r6 5
	fldi	f3 r4 0
	fsub	f2 f2 f3
	fldi	f3 r5 1
	ldi	r4 r6 5
	fldi	f4 r4 1
	fsub	f4 f3 f4
	fldi	f3 r5 2
	ldi	r4 r6 5
	fldi	f5 r4 2
	fsub	f5 f3 f5
	ldi	r4 r7 1
	add	r1 r4 r9
	ldi	r8 r1 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_13860
	ldi	r4 r7 0
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r8
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 3
	call	L_solver_rect_fast_2097
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	jump	L_cont_13858
L_else_13860 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_13878
	fldi	f3 r8 0
	fbgt	f0 f3 L_else_13881
	addi	r4 r0 0
	jump	L_cont_13879
L_else_13881 : 
	addi	r4 r0 1
L_cont_13879 : 
	bne	r4 r0 L_else_13883
	addi	r4 r0 0
	jump	L_cont_13858
L_else_13883 : 
	addi	r4 r0 32817
	fldi	f3 r8 1
	fmul	f3 f3 f2
	fldi	f2 r8 2
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	fsti	f2 r4 0
	addi	r4 r0 1
	jump	L_cont_13858
L_else_13878 : 
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	add	r5 r0 r8
	add	r4 r0 r6
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 3
	call	L_solver_second_fast_2110
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
L_cont_13858 : 
	addi	r5 r0 32817
	fldi	f3 r5 0
	bne	r4 r0 L_else_13863
	addi	r4 r0 0
	jump	L_cont_13861
L_else_13863 : 
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_13876
	addi	r4 r0 0
	jump	L_cont_13861
L_else_13876 : 
	addi	r4 r0 1
L_cont_13861 : 
	bne	r4 r0 L_else_13865
	addi	r4 r0 33714
	add	r1 r4 r9
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_13867
	addi	r4 r0 0
	return
L_else_13867 : 
	addi	r4 r11 1
	add	r5 r0 r10
	jump	L_shadow_check_and_group_2182
L_else_13865 : 
	fldi	f2 r0 33
	fadd	f4 f3 f2
	addi	r4 r0 32783
	fldi	f2 r4 0
	fmul	f3 f2 f4
	addi	r4 r0 32786
	fldi	f2 r4 0
	fadd	f6 f3 f2
	addi	r4 r0 32783
	fldi	f2 r4 1
	fmul	f3 f2 f4
	addi	r4 r0 32786
	fldi	f2 r4 1
	fadd	f5 f3 f2
	addi	r4 r0 32783
	fldi	f2 r4 2
	fmul	f3 f2 f4
	addi	r4 r0 32786
	fldi	f2 r4 2
	fadd	f2 f3 f2
	addi	r4 r0 0
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13870
	addi	r4 r0 1
	jump	L_cont_13868
L_else_13870 : 
	addi	r4 r0 33714
	add	r1 r4 r5
	ldi	r4 r1 0
	sti	r11 r2 0
	sti	r10 r2 1
	fsti	f6 r2 2
	fsti	f5 r2 3
	fsti	f2 r2 4
	fadd	f4 f0 f2
	fadd	f3 f0 f5
	fadd	f2 f0 f6
	addi	r2 r2 5
	call	L_is_outside_2171
	addi	r2 r2 -5
	ldi	r11 r2 0
	ldi	r10 r2 1
	fldi	f6 r2 2
	fldi	f5 r2 3
	fldi	f2 r2 4
	bne	r4 r0 L_else_13874
	addi	r4 r0 1
	sti	r11 r2 0
	sti	r10 r2 1
	add	r5 r0 r10
	fadd	f4 f0 f2
	fadd	f3 f0 f5
	fadd	f2 f0 f6
	addi	r2 r2 2
	call	L_check_all_inside_2176
	addi	r2 r2 -2
	ldi	r11 r2 0
	ldi	r10 r2 1
	jump	L_cont_13868
L_else_13874 : 
	addi	r4 r0 0
L_cont_13868 : 
	bne	r4 r0 L_else_13872
	addi	r4 r11 1
	add	r5 r0 r10
	jump	L_shadow_check_and_group_2182
L_else_13872 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2185 : 
	add	r7 r0 r5
	add	r6 r0 r4
	add	r1 r7 r6
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13886
	addi	r4 r0 0
	return
L_else_13886 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r5 r1 0
	addi	r4 r0 0
	sti	r6 r2 0
	sti	r7 r2 1
	addi	r2 r2 2
	call	L_shadow_check_and_group_2182
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
	bne	r4 r0 L_else_13888
	addi	r6 r6 1
	add	r1 r7 r6
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13890
	addi	r4 r0 0
	return
L_else_13890 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r6 r2 0
	sti	r7 r2 1
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	L_shadow_check_and_group_2182
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
	bne	r4 r0 L_else_13892
	addi	r6 r6 1
	add	r1 r7 r6
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13894
	addi	r4 r0 0
	return
L_else_13894 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r6 r2 0
	sti	r7 r2 1
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	L_shadow_check_and_group_2182
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
	bne	r4 r0 L_else_13896
	addi	r6 r6 1
	add	r1 r7 r6
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13898
	addi	r4 r0 0
	return
L_else_13898 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r6 r2 0
	sti	r7 r2 1
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	L_shadow_check_and_group_2182
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
	bne	r4 r0 L_else_13900
	addi	r4 r6 1
	add	r5 r0 r7
	jump	L_shadow_check_one_or_group_2185
L_else_13900 : 
	addi	r4 r0 1
	return
L_else_13896 : 
	addi	r4 r0 1
	return
L_else_13892 : 
	addi	r4 r0 1
	return
L_else_13888 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2188 : 
	add	r9 r0 r5
	add	r11 r0 r4
	add	r1 r9 r11
	ldi	r10 r1 0
	ldi	r7 r10 0
	addi	r4 r0 -1
	bne	r7 r4 L_else_13903
	addi	r4 r0 0
	return
L_else_13903 : 
	addi	r4 r0 99
	bne	r7 r4 L_else_13906
	addi	r4 r0 1
	jump	L_cont_13904
L_else_13906 : 
	addi	r8 r0 33649
	addi	r5 r0 32786
	addi	r4 r0 33714
	add	r1 r4 r7
	ldi	r4 r1 0
	fldi	f2 r5 0
	ldi	r6 r4 5
	fldi	f3 r6 0
	fsub	f4 f2 f3
	fldi	f3 r5 1
	ldi	r6 r4 5
	fldi	f2 r6 1
	fsub	f6 f3 f2
	fldi	f3 r5 2
	ldi	r5 r4 5
	fldi	f2 r5 2
	fsub	f5 f3 f2
	ldi	r5 r8 1
	add	r1 r5 r7
	ldi	r7 r1 0
	ldi	r6 r4 1
	addi	r5 r0 1
	bne	r6 r5 L_else_13926
	ldi	r5 r8 0
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	add	r6 r0 r7
	fadd	f3 f0 f6
	fadd	f2 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 3
	call	L_solver_rect_fast_2097
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	jump	L_cont_13924
L_else_13926 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_13950
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_13953
	addi	r4 r0 0
	jump	L_cont_13951
L_else_13953 : 
	addi	r4 r0 1
L_cont_13951 : 
	bne	r4 r0 L_else_13955
	addi	r4 r0 0
	jump	L_cont_13924
L_else_13955 : 
	addi	r4 r0 32817
	fldi	f2 r7 1
	fmul	f3 f2 f4
	fldi	f2 r7 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	fsti	f2 r4 0
	addi	r4 r0 1
	jump	L_cont_13924
L_else_13950 : 
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	add	r5 r0 r7
	fadd	f3 f0 f6
	fadd	f2 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 3
	call	L_solver_second_fast_2110
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
L_cont_13924 : 
	bne	r4 r0 L_else_13928
	addi	r4 r0 0
	jump	L_cont_13904
L_else_13928 : 
	addi	r4 r0 32817
	fldi	f2 r4 0
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_13931
	addi	r4 r0 0
	jump	L_cont_13929
L_else_13931 : 
	addi	r4 r0 1
L_cont_13929 : 
	bne	r4 r0 L_else_13933
	addi	r4 r0 0
	jump	L_cont_13904
L_else_13933 : 
	addi	r4 r0 1
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13936
	addi	r4 r0 0
	jump	L_cont_13934
L_else_13936 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_shadow_check_and_group_2182
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	bne	r4 r0 L_else_13940
	addi	r4 r0 2
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13942
	addi	r4 r0 0
	jump	L_cont_13934
L_else_13942 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_shadow_check_and_group_2182
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	bne	r4 r0 L_else_13944
	addi	r4 r0 3
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13946
	addi	r4 r0 0
	jump	L_cont_13934
L_else_13946 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_shadow_check_and_group_2182
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	bne	r4 r0 L_else_13948
	addi	r4 r0 4
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	add	r5 r0 r10
	addi	r2 r2 3
	call	L_shadow_check_one_or_group_2185
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	jump	L_cont_13934
L_else_13948 : 
	addi	r4 r0 1
	jump	L_cont_13934
L_else_13944 : 
	addi	r4 r0 1
	jump	L_cont_13934
L_else_13940 : 
	addi	r4 r0 1
L_cont_13934 : 
	bne	r4 r0 L_else_13938
	addi	r4 r0 0
	jump	L_cont_13904
L_else_13938 : 
	addi	r4 r0 1
L_cont_13904 : 
	bne	r4 r0 L_else_13908
	addi	r4 r11 1
	add	r5 r0 r9
	jump	L_shadow_check_one_or_matrix_2188
L_else_13908 : 
	addi	r4 r0 1
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13911
	addi	r4 r0 0
	jump	L_cont_13909
L_else_13911 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_shadow_check_and_group_2182
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	bne	r4 r0 L_else_13915
	addi	r4 r0 2
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13917
	addi	r4 r0 0
	jump	L_cont_13909
L_else_13917 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_shadow_check_and_group_2182
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	bne	r4 r0 L_else_13919
	addi	r4 r0 3
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13921
	addi	r4 r0 0
	jump	L_cont_13909
L_else_13921 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_shadow_check_and_group_2182
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	bne	r4 r0 L_else_13923
	addi	r4 r0 4
	sti	r11 r2 0
	sti	r9 r2 1
	add	r5 r0 r10
	addi	r2 r2 2
	call	L_shadow_check_one_or_group_2185
	addi	r2 r2 -2
	ldi	r11 r2 0
	ldi	r9 r2 1
	jump	L_cont_13909
L_else_13923 : 
	addi	r4 r0 1
	jump	L_cont_13909
L_else_13919 : 
	addi	r4 r0 1
	jump	L_cont_13909
L_else_13915 : 
	addi	r4 r0 1
L_cont_13909 : 
	bne	r4 r0 L_else_13913
	addi	r4 r11 1
	add	r5 r0 r9
	jump	L_shadow_check_one_or_matrix_2188
L_else_13913 : 
	addi	r4 r0 1
	return
L_solve_each_element_2191 : 
	add	r12 r0 r6
	add	r9 r0 r5
	add	r10 r0 r4
	add	r1 r9 r10
	ldi	r8 r1 0
	addi	r4 r0 -1
	bne	r8 r4 L_else_13958
	add	r4 r0 r11
	return
L_else_13958 : 
	addi	r4 r0 32807
	addi	r5 r0 33714
	add	r1 r5 r8
	ldi	r7 r1 0
	fldi	f2 r4 0
	ldi	r5 r7 5
	fldi	f3 r5 0
	fsub	f5 f2 f3
	fldi	f2 r4 1
	ldi	r5 r7 5
	fldi	f3 r5 1
	fsub	f4 f2 f3
	fldi	f3 r4 2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f2 f3 f2
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_13961
	addi	r6 r0 0
	addi	r5 r0 1
	addi	r4 r0 2
	sti	r9 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	sti	r12 r2 4
	sti	r7 r2 5
	fsti	f4 r2 6
	fsti	f2 r2 7
	fsti	f5 r2 8
	add	r8 r0 r4
	add	r4 r0 r7
	add	r7 r0 r5
	add	r5 r0 r12
	fadd	f3 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	addi	r2 r2 9
	call	L_solver_rect_surface_2053
	addi	r2 r2 -9
	ldi	r9 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	ldi	r12 r2 4
	ldi	r7 r2 5
	fldi	f4 r2 6
	fldi	f2 r2 7
	fldi	f5 r2 8
	bne	r4 r0 L_else_13985
	addi	r6 r0 1
	addi	r5 r0 2
	addi	r4 r0 0
	sti	r8 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r12 r2 4
	sti	r7 r2 5
	fsti	f2 r2 6
	fsti	f5 r2 7
	fsti	f4 r2 8
	add	r8 r0 r4
	add	r4 r0 r7
	add	r7 r0 r5
	add	r5 r0 r12
	fadd	f3 f0 f2
	fadd	f2 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 9
	call	L_solver_rect_surface_2053
	addi	r2 r2 -9
	ldi	r8 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r12 r2 4
	ldi	r7 r2 5
	fldi	f2 r2 6
	fldi	f5 r2 7
	fldi	f4 r2 8
	bne	r4 r0 L_else_13987
	addi	r6 r0 2
	addi	r5 r0 0
	addi	r4 r0 1
	sti	r9 r2 0
	sti	r12 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	add	r8 r0 r4
	add	r4 r0 r7
	add	r7 r0 r5
	add	r5 r0 r12
	fadd	f3 f0 f5
	addi	r2 r2 5
	call	L_solver_rect_surface_2053
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r12 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	bne	r4 r0 L_else_13989
	addi	r5 r0 0
	jump	L_cont_13959
L_else_13989 : 
	addi	r5 r0 3
	jump	L_cont_13959
L_else_13987 : 
	addi	r5 r0 2
	jump	L_cont_13959
L_else_13985 : 
	addi	r5 r0 1
	jump	L_cont_13959
L_else_13961 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_13991
	sti	r9 r2 0
	sti	r12 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	add	r5 r0 r12
	add	r4 r0 r7
	fadd	f3 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	addi	r2 r2 5
	call	L_solver_surface_2068
	addi	r2 r2 -5
	add	r5 r0 r4
	ldi	r9 r2 0
	ldi	r12 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	jump	L_cont_13959
L_else_13991 : 
	sti	r9 r2 0
	sti	r12 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	add	r5 r0 r12
	add	r4 r0 r7
	fadd	f3 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	addi	r2 r2 5
	call	L_solver_second_2087
	addi	r2 r2 -5
	add	r5 r0 r4
	ldi	r9 r2 0
	ldi	r12 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
L_cont_13959 : 
	bne	r5 r0 L_else_13963
	addi	r4 r0 33714
	add	r1 r4 r8
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_13965
	add	r4 r0 r11
	return
L_else_13965 : 
	addi	r4 r10 1
	add	r6 r0 r12
	add	r5 r0 r9
	jump	L_solve_each_element_2191
L_else_13963 : 
	addi	r4 r0 32817
	fldi	f3 r4 0
	fbgt	f3 f0 L_else_13968
	addi	r4 r0 0
	jump	L_cont_13966
L_else_13968 : 
	addi	r4 r0 1
L_cont_13966 : 
	bne	r4 r0 L_else_13971
	jump	L_cont_13969
L_else_13971 : 
	addi	r4 r0 32826
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_13974
	addi	r4 r0 0
	jump	L_cont_13972
L_else_13974 : 
	addi	r4 r0 1
L_cont_13972 : 
	bne	r4 r0 L_else_13976
	jump	L_cont_13969
L_else_13976 : 
	fldi	f2 r0 33
	fadd	f4 f3 f2
	fldi	f2 r12 0
	fmul	f3 f2 f4
	addi	r4 r0 32807
	fldi	f2 r4 0
	fadd	f5 f3 f2
	fldi	f2 r12 1
	fmul	f3 f2 f4
	addi	r4 r0 32807
	fldi	f2 r4 1
	fadd	f6 f3 f2
	fldi	f2 r12 2
	fmul	f3 f2 f4
	addi	r4 r0 32807
	fldi	f2 r4 2
	fadd	f2 f3 f2
	addi	r4 r0 0
	add	r1 r9 r4
	ldi	r6 r1 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_13979
	addi	r4 r0 1
	jump	L_cont_13977
L_else_13979 : 
	addi	r4 r0 33714
	add	r1 r4 r6
	ldi	r4 r1 0
	sti	r12 r2 0
	sti	r10 r2 1
	sti	r5 r2 2
	sti	r8 r2 3
	sti	r9 r2 4
	fsti	f5 r2 5
	fsti	f6 r2 6
	fsti	f2 r2 7
	fsti	f4 r2 8
	fadd	f4 f0 f2
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 9
	call	L_is_outside_2171
	addi	r2 r2 -9
	ldi	r12 r2 0
	ldi	r10 r2 1
	ldi	r5 r2 2
	ldi	r8 r2 3
	ldi	r9 r2 4
	fldi	f5 r2 5
	fldi	f6 r2 6
	fldi	f2 r2 7
	fldi	f4 r2 8
	bne	r4 r0 L_else_13983
	addi	r4 r0 1
	sti	r8 r2 0
	sti	r5 r2 1
	sti	r10 r2 2
	sti	r12 r2 3
	sti	r9 r2 4
	fsti	f6 r2 5
	fsti	f2 r2 6
	fsti	f5 r2 7
	fsti	f4 r2 8
	add	r5 r0 r9
	fadd	f4 f0 f2
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 9
	call	L_check_all_inside_2176
	addi	r2 r2 -9
	ldi	r8 r2 0
	ldi	r5 r2 1
	ldi	r10 r2 2
	ldi	r12 r2 3
	ldi	r9 r2 4
	fldi	f6 r2 5
	fldi	f2 r2 6
	fldi	f5 r2 7
	fldi	f4 r2 8
	jump	L_cont_13977
L_else_13983 : 
	addi	r4 r0 0
L_cont_13977 : 
	bne	r4 r0 L_else_13981
	jump	L_cont_13969
L_else_13981 : 
	addi	r4 r0 32826
	fsti	f4 r4 0
	addi	r4 r0 32786
	fsti	f5 r4 0
	fsti	f6 r4 1
	fsti	f2 r4 2
	addi	r4 r0 32789
	sti	r8 r4 0
	addi	r4 r0 32818
	sti	r5 r4 0
L_cont_13969 : 
	addi	r4 r10 1
	add	r6 r0 r12
	add	r5 r0 r9
	jump	L_solve_each_element_2191
L_solve_one_or_network_2195 : 
	add	r9 r0 r6
	add	r7 r0 r4
	add	r6 r0 r5
	add	r1 r6 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13994
	add	r4 r0 r8
	return
L_else_13994 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r5 r1 0
	addi	r4 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	add	r6 r0 r9
	addi	r2 r2 4
	call	L_solve_each_element_2191
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r6 r2 3
	addi	r7 r7 1
	add	r1 r6 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_13996
	add	r4 r0 r8
	return
L_else_13996 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r5 r1 0
	addi	r4 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	add	r6 r0 r9
	addi	r2 r2 4
	call	L_solve_each_element_2191
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r6 r2 3
	addi	r7 r7 1
	add	r1 r6 r7
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_13998
	add	r4 r0 r8
	return
L_else_13998 : 
	addi	r5 r0 32827
	add	r1 r5 r4
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	add	r6 r0 r9
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_2191
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r6 r2 3
	addi	r7 r7 1
	add	r1 r6 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14000
	add	r4 r0 r8
	return
L_else_14000 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r6 r2 2
	add	r6 r0 r9
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_solve_each_element_2191
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r6 r2 2
	addi	r4 r7 1
	add	r5 r0 r6
	add	r6 r0 r9
	jump	L_solve_one_or_network_2195
L_trace_or_matrix_2199 : 
	add	r11 r0 r6
	add	r9 r0 r5
	add	r10 r0 r4
	add	r1 r9 r10
	ldi	r7 r1 0
	ldi	r5 r7 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14003
	add	r4 r0 r6
	return
L_else_14003 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_14006
	addi	r4 r0 1
	add	r1 r7 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14008
	jump	L_cont_14004
L_else_14008 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	add	r6 r0 r11
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_2191
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	addi	r4 r0 2
	add	r1 r7 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14010
	jump	L_cont_14004
L_else_14010 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	add	r6 r0 r11
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_2191
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	addi	r4 r0 3
	add	r1 r7 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14012
	jump	L_cont_14004
L_else_14012 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r7 r2 3
	add	r6 r0 r11
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_2191
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r7 r2 3
	addi	r4 r0 4
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	add	r6 r0 r11
	add	r5 r0 r7
	addi	r2 r2 3
	call	L_solve_one_or_network_2195
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	jump	L_cont_14004
L_else_14006 : 
	addi	r6 r0 32807
	addi	r4 r0 33714
	add	r1 r4 r5
	ldi	r8 r1 0
	fldi	f2 r6 0
	ldi	r4 r8 5
	fldi	f3 r4 0
	fsub	f5 f2 f3
	fldi	f3 r6 1
	ldi	r4 r8 5
	fldi	f2 r4 1
	fsub	f4 f3 f2
	fldi	f3 r6 2
	ldi	r4 r8 5
	fldi	f2 r4 2
	fsub	f2 f3 f2
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_14015
	addi	r6 r0 0
	addi	r5 r0 1
	addi	r4 r0 2
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	fsti	f4 r2 5
	fsti	f2 r2 6
	fsti	f5 r2 7
	add	r7 r0 r5
	add	r5 r0 r11
	add	r1 r0 r8
	add	r8 r0 r4
	add	r4 r0 r1
	fadd	f3 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	addi	r2 r2 8
	call	L_solver_rect_surface_2053
	addi	r2 r2 -8
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	fldi	f4 r2 5
	fldi	f2 r2 6
	fldi	f5 r2 7
	bne	r4 r0 L_else_14030
	addi	r6 r0 1
	addi	r5 r0 2
	addi	r4 r0 0
	sti	r9 r2 0
	sti	r10 r2 1
	sti	r7 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	fsti	f2 r2 5
	fsti	f5 r2 6
	fsti	f4 r2 7
	add	r7 r0 r5
	add	r5 r0 r11
	add	r1 r0 r8
	add	r8 r0 r4
	add	r4 r0 r1
	fadd	f3 f0 f2
	fadd	f2 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 8
	call	L_solver_rect_surface_2053
	addi	r2 r2 -8
	ldi	r9 r2 0
	ldi	r10 r2 1
	ldi	r7 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	fldi	f2 r2 5
	fldi	f5 r2 6
	fldi	f4 r2 7
	bne	r4 r0 L_else_14032
	addi	r6 r0 2
	addi	r5 r0 0
	addi	r4 r0 1
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	add	r7 r0 r5
	add	r5 r0 r11
	add	r1 r0 r8
	add	r8 r0 r4
	add	r4 r0 r1
	fadd	f3 f0 f5
	addi	r2 r2 4
	call	L_solver_rect_surface_2053
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	bne	r4 r0 L_else_14034
	addi	r4 r0 0
	jump	L_cont_14013
L_else_14034 : 
	addi	r4 r0 3
	jump	L_cont_14013
L_else_14032 : 
	addi	r4 r0 2
	jump	L_cont_14013
L_else_14030 : 
	addi	r4 r0 1
	jump	L_cont_14013
L_else_14015 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_14036
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	add	r5 r0 r11
	add	r4 r0 r8
	fadd	f3 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	addi	r2 r2 4
	call	L_solver_surface_2068
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	jump	L_cont_14013
L_else_14036 : 
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	add	r5 r0 r11
	add	r4 r0 r8
	fadd	f3 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	addi	r2 r2 4
	call	L_solver_second_2087
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
L_cont_14013 : 
	bne	r4 r0 L_else_14017
	jump	L_cont_14004
L_else_14017 : 
	addi	r4 r0 32817
	fldi	f2 r4 0
	addi	r4 r0 32826
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_14020
	addi	r4 r0 0
	jump	L_cont_14018
L_else_14020 : 
	addi	r4 r0 1
L_cont_14018 : 
	bne	r4 r0 L_else_14022
	jump	L_cont_14004
L_else_14022 : 
	addi	r4 r0 1
	add	r1 r7 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14024
	jump	L_cont_14004
L_else_14024 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	add	r6 r0 r11
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_2191
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	addi	r4 r0 2
	add	r1 r7 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14026
	jump	L_cont_14004
L_else_14026 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	add	r6 r0 r11
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_2191
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	addi	r4 r0 3
	add	r1 r7 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14028
	jump	L_cont_14004
L_else_14028 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r7 r2 3
	add	r6 r0 r11
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_2191
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r7 r2 3
	addi	r4 r0 4
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	add	r6 r0 r11
	add	r5 r0 r7
	addi	r2 r2 3
	call	L_solve_one_or_network_2195
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
L_cont_14004 : 
	addi	r4 r10 1
	add	r6 r0 r11
	add	r5 r0 r9
	jump	L_trace_or_matrix_2199
L_solve_each_element_fast_2205 : 
	add	r11 r0 r6
	add	r14 r0 r5
	add	r13 r0 r4
	ldi	r8 r11 0
	add	r1 r14 r13
	ldi	r10 r1 0
	addi	r4 r0 -1
	bne	r10 r4 L_else_14039
	add	r4 r0 r12
	return
L_else_14039 : 
	addi	r4 r0 33714
	add	r1 r4 r10
	ldi	r7 r1 0
	ldi	r6 r7 10
	fldi	f2 r6 0
	fldi	f3 r6 1
	fldi	f4 r6 2
	ldi	r4 r11 1
	add	r1 r4 r10
	ldi	r9 r1 0
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_14042
	ldi	r4 r11 0
	sti	r8 r2 0
	sti	r14 r2 1
	sti	r11 r2 2
	sti	r13 r2 3
	sti	r12 r2 4
	sti	r10 r2 5
	add	r6 r0 r9
	add	r5 r0 r4
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_solver_rect_fast_2097
	addi	r2 r2 -6
	add	r5 r0 r4
	ldi	r8 r2 0
	ldi	r14 r2 1
	ldi	r11 r2 2
	ldi	r13 r2 3
	ldi	r12 r2 4
	ldi	r10 r2 5
	jump	L_cont_14040
L_else_14042 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_14066
	fldi	f2 r9 0
	fbgt	f0 f2 L_else_14069
	addi	r4 r0 0
	jump	L_cont_14067
L_else_14069 : 
	addi	r4 r0 1
L_cont_14067 : 
	bne	r4 r0 L_else_14071
	addi	r5 r0 0
	jump	L_cont_14040
L_else_14071 : 
	addi	r4 r0 32817
	fldi	f3 r9 0
	fldi	f2 r6 3
	fmul	f2 f3 f2
	fsti	f2 r4 0
	addi	r5 r0 1
	jump	L_cont_14040
L_else_14066 : 
	sti	r8 r2 0
	sti	r14 r2 1
	sti	r11 r2 2
	sti	r13 r2 3
	sti	r12 r2 4
	sti	r10 r2 5
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_solver_second_fast2_2127
	addi	r2 r2 -6
	add	r5 r0 r4
	ldi	r8 r2 0
	ldi	r14 r2 1
	ldi	r11 r2 2
	ldi	r13 r2 3
	ldi	r12 r2 4
	ldi	r10 r2 5
L_cont_14040 : 
	bne	r5 r0 L_else_14044
	addi	r4 r0 33714
	add	r1 r4 r10
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_14046
	add	r4 r0 r12
	return
L_else_14046 : 
	addi	r4 r13 1
	add	r6 r0 r11
	add	r5 r0 r14
	jump	L_solve_each_element_fast_2205
L_else_14044 : 
	addi	r4 r0 32817
	fldi	f3 r4 0
	fbgt	f3 f0 L_else_14049
	addi	r4 r0 0
	jump	L_cont_14047
L_else_14049 : 
	addi	r4 r0 1
L_cont_14047 : 
	bne	r4 r0 L_else_14052
	jump	L_cont_14050
L_else_14052 : 
	addi	r4 r0 32826
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_14055
	addi	r4 r0 0
	jump	L_cont_14053
L_else_14055 : 
	addi	r4 r0 1
L_cont_14053 : 
	bne	r4 r0 L_else_14057
	jump	L_cont_14050
L_else_14057 : 
	fldi	f2 r0 33
	fadd	f4 f3 f2
	fldi	f2 r8 0
	fmul	f3 f2 f4
	addi	r4 r0 32810
	fldi	f2 r4 0
	fadd	f5 f3 f2
	fldi	f2 r8 1
	fmul	f3 f2 f4
	addi	r4 r0 32810
	fldi	f2 r4 1
	fadd	f6 f3 f2
	fldi	f2 r8 2
	fmul	f3 f2 f4
	addi	r4 r0 32810
	fldi	f2 r4 2
	fadd	f2 f3 f2
	addi	r4 r0 0
	add	r1 r14 r4
	ldi	r6 r1 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_14060
	addi	r4 r0 1
	jump	L_cont_14058
L_else_14060 : 
	addi	r4 r0 33714
	add	r1 r4 r6
	ldi	r4 r1 0
	sti	r11 r2 0
	sti	r13 r2 1
	sti	r5 r2 2
	sti	r10 r2 3
	sti	r14 r2 4
	fsti	f5 r2 5
	fsti	f6 r2 6
	fsti	f2 r2 7
	fsti	f4 r2 8
	fadd	f4 f0 f2
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 9
	call	L_is_outside_2171
	addi	r2 r2 -9
	ldi	r11 r2 0
	ldi	r13 r2 1
	ldi	r5 r2 2
	ldi	r10 r2 3
	ldi	r14 r2 4
	fldi	f5 r2 5
	fldi	f6 r2 6
	fldi	f2 r2 7
	fldi	f4 r2 8
	bne	r4 r0 L_else_14064
	addi	r4 r0 1
	sti	r10 r2 0
	sti	r5 r2 1
	sti	r13 r2 2
	sti	r11 r2 3
	sti	r14 r2 4
	fsti	f6 r2 5
	fsti	f2 r2 6
	fsti	f5 r2 7
	fsti	f4 r2 8
	add	r5 r0 r14
	fadd	f4 f0 f2
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 9
	call	L_check_all_inside_2176
	addi	r2 r2 -9
	ldi	r10 r2 0
	ldi	r5 r2 1
	ldi	r13 r2 2
	ldi	r11 r2 3
	ldi	r14 r2 4
	fldi	f6 r2 5
	fldi	f2 r2 6
	fldi	f5 r2 7
	fldi	f4 r2 8
	jump	L_cont_14058
L_else_14064 : 
	addi	r4 r0 0
L_cont_14058 : 
	bne	r4 r0 L_else_14062
	jump	L_cont_14050
L_else_14062 : 
	addi	r4 r0 32826
	fsti	f4 r4 0
	addi	r4 r0 32786
	fsti	f5 r4 0
	fsti	f6 r4 1
	fsti	f2 r4 2
	addi	r4 r0 32789
	sti	r10 r4 0
	addi	r4 r0 32818
	sti	r5 r4 0
L_cont_14050 : 
	addi	r4 r13 1
	add	r6 r0 r11
	add	r5 r0 r14
	jump	L_solve_each_element_fast_2205
L_solve_one_or_network_fast_2209 : 
	add	r9 r0 r6
	add	r7 r0 r4
	add	r6 r0 r5
	add	r1 r6 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14074
	add	r4 r0 r8
	return
L_else_14074 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r5 r1 0
	addi	r4 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	add	r6 r0 r9
	addi	r2 r2 4
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r6 r2 3
	addi	r7 r7 1
	add	r1 r6 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14076
	add	r4 r0 r8
	return
L_else_14076 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r5 r1 0
	addi	r4 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	add	r6 r0 r9
	addi	r2 r2 4
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r6 r2 3
	addi	r7 r7 1
	add	r1 r6 r7
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_14078
	add	r4 r0 r8
	return
L_else_14078 : 
	addi	r5 r0 32827
	add	r1 r5 r4
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	add	r6 r0 r9
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r6 r2 3
	addi	r7 r7 1
	add	r1 r6 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14080
	add	r4 r0 r8
	return
L_else_14080 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r6 r2 2
	add	r6 r0 r9
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r6 r2 2
	addi	r4 r7 1
	add	r5 r0 r6
	add	r6 r0 r9
	jump	L_solve_one_or_network_fast_2209
L_trace_or_matrix_fast_2213 : 
	add	r10 r0 r6
	add	r9 r0 r5
	add	r13 r0 r4
	add	r1 r9 r13
	ldi	r12 r1 0
	ldi	r5 r12 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14083
	add	r4 r0 r11
	return
L_else_14083 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_14086
	addi	r4 r0 1
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14149
	jump	L_cont_14084
L_else_14149 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r5 r1 0
	addi	r4 r0 0
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r12 r2 4
	add	r6 r0 r10
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -5
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r12 r2 4
	addi	r4 r0 2
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14151
	jump	L_cont_14084
L_else_14151 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r12 r2 4
	add	r6 r0 r10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -5
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r12 r2 4
	addi	r4 r0 3
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14153
	jump	L_cont_14084
L_else_14153 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r12 r2 4
	add	r6 r0 r10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -5
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r12 r2 4
	addi	r4 r0 4
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	add	r6 r0 r10
	add	r5 r0 r12
	addi	r2 r2 4
	call	L_solve_one_or_network_fast_2209
	addi	r2 r2 -4
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	jump	L_cont_14084
L_else_14086 : 
	addi	r4 r0 33714
	add	r1 r4 r5
	ldi	r7 r1 0
	ldi	r6 r7 10
	fldi	f4 r6 0
	fldi	f3 r6 1
	fldi	f2 r6 2
	ldi	r4 r10 1
	add	r1 r4 r5
	ldi	r8 r1 0
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_14156
	ldi	r4 r10 0
	sti	r12 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r9 r2 4
	add	r6 r0 r8
	add	r5 r0 r4
	add	r4 r0 r7
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 5
	call	L_solver_rect_fast_2097
	addi	r2 r2 -5
	ldi	r12 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r9 r2 4
	jump	L_cont_14154
L_else_14156 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_14171
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_14174
	addi	r4 r0 0
	jump	L_cont_14172
L_else_14174 : 
	addi	r4 r0 1
L_cont_14172 : 
	bne	r4 r0 L_else_14176
	addi	r4 r0 0
	jump	L_cont_14154
L_else_14176 : 
	addi	r4 r0 32817
	fldi	f2 r8 0
	fldi	f3 r6 3
	fmul	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 1
	jump	L_cont_14154
L_else_14171 : 
	sti	r12 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r9 r2 4
	add	r5 r0 r8
	add	r4 r0 r7
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 5
	call	L_solver_second_fast2_2127
	addi	r2 r2 -5
	ldi	r12 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r9 r2 4
L_cont_14154 : 
	bne	r4 r0 L_else_14158
	jump	L_cont_14084
L_else_14158 : 
	addi	r4 r0 32817
	fldi	f3 r4 0
	addi	r4 r0 32826
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_14161
	addi	r4 r0 0
	jump	L_cont_14159
L_else_14161 : 
	addi	r4 r0 1
L_cont_14159 : 
	bne	r4 r0 L_else_14163
	jump	L_cont_14084
L_else_14163 : 
	addi	r4 r0 1
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14165
	jump	L_cont_14084
L_else_14165 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r12 r2 4
	add	r6 r0 r10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -5
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r12 r2 4
	addi	r4 r0 2
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14167
	jump	L_cont_14084
L_else_14167 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r12 r2 4
	add	r6 r0 r10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -5
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r12 r2 4
	addi	r4 r0 3
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14169
	jump	L_cont_14084
L_else_14169 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r12 r2 4
	add	r6 r0 r10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -5
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r12 r2 4
	addi	r4 r0 4
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	add	r6 r0 r10
	add	r5 r0 r12
	addi	r2 r2 4
	call	L_solve_one_or_network_fast_2209
	addi	r2 r2 -4
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
L_cont_14084 : 
	addi	r13 r13 1
	add	r1 r9 r13
	ldi	r12 r1 0
	ldi	r7 r12 0
	addi	r4 r0 -1
	bne	r7 r4 L_else_14088
	add	r4 r0 r11
	return
L_else_14088 : 
	addi	r4 r0 99
	bne	r7 r4 L_else_14091
	addi	r4 r0 1
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14093
	jump	L_cont_14089
L_else_14093 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r13 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r12 r2 3
	add	r6 r0 r10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -4
	ldi	r13 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r12 r2 3
	addi	r4 r0 2
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14095
	jump	L_cont_14089
L_else_14095 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r13 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r12 r2 3
	add	r6 r0 r10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -4
	ldi	r13 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r12 r2 3
	addi	r4 r0 3
	sti	r13 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	add	r6 r0 r10
	add	r5 r0 r12
	addi	r2 r2 3
	call	L_solve_one_or_network_fast_2209
	addi	r2 r2 -3
	ldi	r13 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	jump	L_cont_14089
L_else_14091 : 
	addi	r4 r0 33714
	add	r1 r4 r7
	ldi	r6 r1 0
	ldi	r5 r6 10
	fldi	f2 r5 0
	fldi	f4 r5 1
	fldi	f5 r5 2
	ldi	r4 r10 1
	add	r1 r4 r7
	ldi	r7 r1 0
	ldi	r8 r6 1
	addi	r4 r0 1
	bne	r8 r4 L_else_14098
	ldi	r4 r10 0
	sti	r12 r2 0
	sti	r13 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 4
	call	L_solver_rect_fast_2097
	addi	r2 r2 -4
	ldi	r12 r2 0
	ldi	r13 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	jump	L_cont_14096
L_else_14098 : 
	addi	r4 r0 2
	bne	r8 r4 L_else_14111
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_14114
	addi	r4 r0 0
	jump	L_cont_14112
L_else_14114 : 
	addi	r4 r0 1
L_cont_14112 : 
	bne	r4 r0 L_else_14116
	addi	r4 r0 0
	jump	L_cont_14096
L_else_14116 : 
	addi	r4 r0 32817
	fldi	f3 r7 0
	fldi	f2 r5 3
	fmul	f2 f3 f2
	fsti	f2 r4 0
	addi	r4 r0 1
	jump	L_cont_14096
L_else_14111 : 
	fldi	f6 r7 0
	fbne	f6 f0 L_else_14119
	addi	r4 r0 1
	jump	L_cont_14117
L_else_14119 : 
	addi	r4 r0 0
L_cont_14117 : 
	bne	r4 r0 L_else_14121
	fldi	f3 r7 1
	fmul	f3 f3 f2
	fldi	f2 r7 2
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f5
	fadd	f7 f3 f2
	fldi	f2 r5 3
	fmul	f3 f7 f7
	fmul	f2 f6 f2
	fsub	f6 f3 f2
	fbgt	f6 f0 L_else_14124
	addi	r4 r0 0
	jump	L_cont_14122
L_else_14124 : 
	addi	r4 r0 1
L_cont_14122 : 
	bne	r4 r0 L_else_14126
	addi	r4 r0 0
	jump	L_cont_14096
L_else_14126 : 
	ldi	r4 r6 6
	bne	r4 r0 L_else_14129
	addi	r4 r0 32817
	fldi	f5 r0 28
	fldi	f2 r0 12
	fbgt	f6 f2 L_else_14132
	fldi	f4 r0 12
	jump	L_cont_14130
L_else_14132 : 
	fldi	f2 r0 12
	fdiv	f4 f2 f6
L_cont_14130 : 
	fldi	f2 r0 26
	fmul	f3 f2 f4
	fsub	f2 f4 f5
	fbgt	f0 f2 L_else_14135
	fadd	f2 f0 f2
	jump	L_cont_14133
L_else_14135 : 
	fsub	f2 f0 f2
L_cont_14133 : 
	fbgt	f3 f2 L_else_14138
	fldi	f3 r0 27
	fmul	f2 f6 f4
	fmul	f2 f2 f4
	fsub	f2 f3 f2
	fmul	f3 f4 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	sti	r7 r2 0
	sti	r4 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r13 r2 4
	sti	r12 r2 5
	fsti	f7 r2 6
	fsti	f6 r2 7
	fadd	f3 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f6
	addi	r2 r2 8
	call	L_isqrt_1892
	addi	r2 r2 -8
	ldi	r7 r2 0
	ldi	r4 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r13 r2 4
	ldi	r12 r2 5
	fldi	f7 r2 6
	fldi	f6 r2 7
	jump	L_cont_14136
L_else_14138 : 
	fadd	f2 f0 f4
L_cont_14136 : 
	fmul	f2 f6 f2
	fsub	f3 f7 f2
	fldi	f2 r7 4
	fmul	f2 f3 f2
	fsti	f2 r4 0
	jump	L_cont_14127
L_else_14129 : 
	addi	r4 r0 32817
	fldi	f4 r0 28
	fldi	f2 r0 12
	fbgt	f6 f2 L_else_14141
	fldi	f5 r0 12
	jump	L_cont_14139
L_else_14141 : 
	fldi	f2 r0 12
	fdiv	f5 f2 f6
L_cont_14139 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_14144
	fadd	f2 f0 f2
	jump	L_cont_14142
L_else_14144 : 
	fsub	f2 f0 f2
L_cont_14142 : 
	fbgt	f3 f2 L_else_14147
	fldi	f3 r0 27
	fmul	f2 f6 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f3 f5 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	sti	r7 r2 0
	sti	r4 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r13 r2 4
	sti	r12 r2 5
	fsti	f7 r2 6
	fsti	f6 r2 7
	fadd	f4 f0 f2
	fadd	f3 f0 f5
	fadd	f2 f0 f6
	addi	r2 r2 8
	call	L_isqrt_1892
	addi	r2 r2 -8
	ldi	r7 r2 0
	ldi	r4 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r13 r2 4
	ldi	r12 r2 5
	fldi	f7 r2 6
	fldi	f6 r2 7
	jump	L_cont_14145
L_else_14147 : 
	fadd	f2 f0 f5
L_cont_14145 : 
	fmul	f2 f6 f2
	fadd	f3 f7 f2
	fldi	f2 r7 4
	fmul	f2 f3 f2
	fsti	f2 r4 0
L_cont_14127 : 
	addi	r4 r0 1
	jump	L_cont_14096
L_else_14121 : 
	addi	r4 r0 0
L_cont_14096 : 
	bne	r4 r0 L_else_14100
	jump	L_cont_14089
L_else_14100 : 
	addi	r4 r0 32817
	fldi	f2 r4 0
	addi	r4 r0 32826
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_14103
	addi	r4 r0 0
	jump	L_cont_14101
L_else_14103 : 
	addi	r4 r0 1
L_cont_14101 : 
	bne	r4 r0 L_else_14105
	jump	L_cont_14089
L_else_14105 : 
	addi	r4 r0 1
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14107
	jump	L_cont_14089
L_else_14107 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r13 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r12 r2 3
	add	r6 r0 r10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -4
	ldi	r13 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r12 r2 3
	addi	r4 r0 2
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14109
	jump	L_cont_14089
L_else_14109 : 
	addi	r4 r0 32827
	add	r1 r4 r5
	ldi	r4 r1 0
	addi	r5 r0 0
	sti	r13 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r12 r2 3
	add	r6 r0 r10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_solve_each_element_fast_2205
	addi	r2 r2 -4
	ldi	r13 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r12 r2 3
	addi	r4 r0 3
	sti	r13 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	add	r6 r0 r10
	add	r5 r0 r12
	addi	r2 r2 3
	call	L_solve_one_or_network_fast_2209
	addi	r2 r2 -3
	ldi	r13 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
L_cont_14089 : 
	addi	r4 r13 1
	add	r6 r0 r10
	add	r5 r0 r9
	jump	L_trace_or_matrix_fast_2213
L_get_nvector_second_2223 : 
	add	r6 r0 r4
	addi	r4 r0 32786
	fldi	f2 r4 0
	ldi	r4 r6 5
	fldi	f3 r4 0
	fsub	f6 f2 f3
	addi	r4 r0 32786
	fldi	f3 r4 1
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f8 f3 f2
	addi	r4 r0 32786
	fldi	f2 r4 2
	ldi	r4 r6 5
	fldi	f3 r4 2
	fsub	f5 f2 f3
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f4 f6 f2
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f7 f8 f2
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f9 f5 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_14180
	addi	r4 r0 32790
	fsti	f4 r4 0
	addi	r4 r0 32790
	fsti	f7 r4 1
	addi	r4 r0 32790
	fsti	f9 r4 2
	jump	L_cont_14178
L_else_14180 : 
	addi	r5 r0 32790
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f3 f8 f2
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f5 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r5 0
	addi	r5 r0 32790
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f3 f6 f2
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f5 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f2 f7 f2
	fsti	f2 r5 1
	addi	r5 r0 32790
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f3 f6 f2
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	fadd	f2 f9 f2
	fsti	f2 r5 2
L_cont_14178 : 
	addi	r5 r0 32790
	ldi	r4 r6 6
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	jump	L_vecunit_sgn_1931
L_utexture_2228 : 
	add	r9 r0 r5
	add	r7 r0 r4
	ldi	r6 r7 0
	addi	r4 r0 32793
	ldi	r5 r7 8
	fldi	f2 r5 0
	fsti	f2 r4 0
	addi	r5 r0 32793
	ldi	r4 r7 8
	fldi	f2 r4 1
	fsti	f2 r5 1
	addi	r5 r0 32793
	ldi	r4 r7 8
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r4 r0 1
	bne	r6 r4 L_else_14183
	fldi	f3 r9 0
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f4 f3 f2
	fldi	f2 r0 35
	fmul	f2 f4 f2
	flr	f2 f2
	fldi	f3 r0 36
	fmul	f2 f2 f3
	fsub	f2 f4 f2
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_14186
	addi	r5 r0 0
	jump	L_cont_14184
L_else_14186 : 
	addi	r5 r0 1
L_cont_14184 : 
	fldi	f2 r9 2
	ldi	r4 r7 5
	fldi	f3 r4 2
	fsub	f3 f2 f3
	fldi	f2 r0 35
	fmul	f2 f3 f2
	flr	f4 f2
	fldi	f2 r0 36
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_14189
	addi	r4 r0 0
	jump	L_cont_14187
L_else_14189 : 
	addi	r4 r0 1
L_cont_14187 : 
	addi	r6 r0 32793
	bne	r5 r0 L_else_14192
	bne	r4 r0 L_else_14194
	fldi	f2 r0 38
	jump	L_cont_14190
L_else_14194 : 
	fldi	f2 r0 30
	jump	L_cont_14190
L_else_14192 : 
	bne	r4 r0 L_else_14196
	fldi	f2 r0 30
	jump	L_cont_14190
L_else_14196 : 
	fldi	f2 r0 38
L_cont_14190 : 
	fsti	f2 r6 1
	add	r4 r0 r8
	return
L_else_14183 : 
	addi	r4 r0 2
	bne	r6 r4 L_else_14198
	fldi	f3 r9 1
	fldi	f2 r0 39
	fmul	f2 f3 f2
	sti	r8 r2 0
	addi	r2 r2 1
	call	L_sin_1886
	addi	r2 r2 -1
	ldi	r8 r2 0
	fmul	f3 f2 f2
	addi	r4 r0 32793
	fldi	f2 r0 38
	fmul	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 32793
	fldi	f4 r0 38
	fldi	f2 r0 12
	fsub	f2 f2 f3
	fmul	f2 f4 f2
	fsti	f2 r4 1
	add	r4 r0 r8
	return
L_else_14198 : 
	addi	r4 r0 3
	bne	r6 r4 L_else_14200
	fldi	f3 r9 0
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f2 f3 f2
	fldi	f4 r9 2
	ldi	r4 r7 5
	fldi	f3 r4 2
	fsub	f4 f4 f3
	fmul	f3 f2 f2
	fmul	f2 f4 f4
	fadd	f3 f3 f2
	fldi	f4 r0 28
	fldi	f2 r0 12
	fbgt	f3 f2 L_else_14203
	fldi	f2 r0 12
	jump	L_cont_14201
L_else_14203 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f3
L_cont_14201 : 
	sti	r8 r2 0
	fsti	f3 r2 1
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 2
	call	L_isqrt_1892
	addi	r2 r2 -2
	ldi	r8 r2 0
	fldi	f3 r2 1
	fmul	f3 f3 f2
	fldi	f2 r0 37
	fdiv	f3 f3 f2
	flr	f2 f3
	fsub	f3 f3 f2
	fldi	f2 r0 40
	fmul	f2 f3 f2
	sti	r8 r2 0
	addi	r2 r2 1
	call	L_cos_1888
	addi	r2 r2 -1
	ldi	r8 r2 0
	fmul	f3 f2 f2
	addi	r4 r0 32793
	fldi	f2 r0 38
	fmul	f2 f3 f2
	fsti	f2 r4 1
	addi	r4 r0 32793
	fldi	f2 r0 12
	fsub	f3 f2 f3
	fldi	f2 r0 38
	fmul	f2 f3 f2
	fsti	f2 r4 2
	add	r4 r0 r8
	return
L_else_14200 : 
	addi	r4 r0 4
	bne	r6 r4 L_else_14205
	fldi	f3 r9 0
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f4 f3 f2
	ldi	r4 r7 4
	fldi	f5 r4 0
	fldi	f3 r0 28
	fldi	f2 r0 12
	fbgt	f5 f2 L_else_14208
	fldi	f2 r0 12
	jump	L_cont_14206
L_else_14208 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f5
L_cont_14206 : 
	sti	r9 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	fsti	f4 r2 3
	fsti	f5 r2 4
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	addi	r2 r2 5
	call	L_isqrt_1892
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	fldi	f4 r2 3
	fldi	f5 r2 4
	fmul	f2 f5 f2
	fmul	f6 f4 f2
	fldi	f3 r9 2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f4 f3 f2
	ldi	r4 r7 4
	fldi	f5 r4 2
	fldi	f3 r0 28
	fldi	f2 r0 12
	fbgt	f5 f2 L_else_14211
	fldi	f2 r0 12
	jump	L_cont_14209
L_else_14211 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f5
L_cont_14209 : 
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	fsti	f4 r2 3
	fsti	f6 r2 4
	fsti	f5 r2 5
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	addi	r2 r2 6
	call	L_isqrt_1892
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	fldi	f4 r2 3
	fldi	f6 r2 4
	fldi	f5 r2 5
	fmul	f2 f5 f2
	fmul	f4 f4 f2
	fmul	f3 f6 f6
	fmul	f2 f4 f4
	fadd	f7 f3 f2
	fbgt	f0 f6 L_else_14214
	fadd	f2 f0 f6
	jump	L_cont_14212
L_else_14214 : 
	fsub	f2 f0 f6
L_cont_14212 : 
	fldi	f3 r0 41
	fbgt	f3 f2 L_else_14217
	addi	r4 r0 0
	jump	L_cont_14215
L_else_14217 : 
	addi	r4 r0 1
L_cont_14215 : 
	bne	r4 r0 L_else_14220
	fdiv	f2 f4 f6
	fbgt	f0 f2 L_else_14244
	fadd	f2 f0 f2
	jump	L_cont_14242
L_else_14244 : 
	fsub	f2 f0 f2
L_cont_14242 : 
	sti	r9 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	fsti	f7 r2 3
	addi	r2 r2 4
	call	L_atan_1890
	addi	r2 r2 -4
	fadd	f3 f0 f2
	ldi	r9 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	fldi	f7 r2 3
	fldi	f2 r0 42
	fmul	f3 f3 f2
	fldi	f2 r0 40
	fdiv	f3 f3 f2
	jump	L_cont_14218
L_else_14220 : 
	fldi	f3 r0 43
L_cont_14218 : 
	flr	f2 f3
	fsub	f6 f3 f2
	fldi	f3 r9 1
	ldi	r4 r7 5
	fldi	f2 r4 1
	fsub	f4 f3 f2
	ldi	r4 r7 4
	fldi	f5 r4 1
	fldi	f3 r0 28
	fldi	f2 r0 12
	fbgt	f5 f2 L_else_14223
	fldi	f2 r0 12
	jump	L_cont_14221
L_else_14223 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f5
L_cont_14221 : 
	sti	r8 r2 0
	fsti	f4 r2 1
	fsti	f6 r2 2
	fsti	f7 r2 3
	fsti	f5 r2 4
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	addi	r2 r2 5
	call	L_isqrt_1892
	addi	r2 r2 -5
	ldi	r8 r2 0
	fldi	f4 r2 1
	fldi	f6 r2 2
	fldi	f7 r2 3
	fldi	f5 r2 4
	fmul	f2 f5 f2
	fmul	f4 f4 f2
	fbgt	f0 f7 L_else_14226
	fadd	f2 f0 f7
	jump	L_cont_14224
L_else_14226 : 
	fsub	f2 f0 f7
L_cont_14224 : 
	fldi	f3 r0 41
	fbgt	f3 f2 L_else_14229
	addi	r4 r0 0
	jump	L_cont_14227
L_else_14229 : 
	addi	r4 r0 1
L_cont_14227 : 
	bne	r4 r0 L_else_14232
	fdiv	f2 f4 f7
	fbgt	f0 f2 L_else_14241
	fadd	f2 f0 f2
	jump	L_cont_14239
L_else_14241 : 
	fsub	f2 f0 f2
L_cont_14239 : 
	sti	r8 r2 0
	fsti	f6 r2 1
	addi	r2 r2 2
	call	L_atan_1890
	addi	r2 r2 -2
	fadd	f3 f0 f2
	ldi	r8 r2 0
	fldi	f6 r2 1
	fldi	f2 r0 42
	fmul	f3 f3 f2
	fldi	f2 r0 40
	fdiv	f3 f3 f2
	jump	L_cont_14230
L_else_14232 : 
	fldi	f3 r0 43
L_cont_14230 : 
	flr	f2 f3
	fsub	f4 f3 f2
	fldi	f3 r0 44
	fldi	f2 r0 11
	fsub	f2 f2 f6
	fmul	f2 f2 f2
	fsub	f3 f3 f2
	fldi	f2 r0 11
	fsub	f2 f2 f4
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fbgt	f0 f2 L_else_14235
	addi	r4 r0 0
	jump	L_cont_14233
L_else_14235 : 
	addi	r4 r0 1
L_cont_14233 : 
	bne	r4 r0 L_else_14238
	fadd	f2 f0 f2
	jump	L_cont_14236
L_else_14238 : 
	fldi	f2 r0 30
L_cont_14236 : 
	addi	r4 r0 32793
	fldi	f3 r0 38
	fmul	f3 f3 f2
	fldi	f2 r0 45
	fdiv	f2 f3 f2
	fsti	f2 r4 2
	add	r4 r0 r8
	return
L_else_14205 : 
	add	r4 r0 r8
	return
L_add_light_2231 : 
	fadd	f5 f0 f4
	fadd	f6 f0 f3
	fadd	f4 f0 f2
	fbgt	f4 f0 L_else_14248
	addi	r4 r0 0
	jump	L_cont_14246
L_else_14248 : 
	addi	r4 r0 1
L_cont_14246 : 
	bne	r4 r0 L_else_14251
	jump	L_cont_14249
L_else_14251 : 
	addi	r5 r0 32799
	addi	r4 r0 32793
	fldi	f2 r5 0
	fldi	f3 r4 0
	fmul	f3 f4 f3
	fadd	f2 f2 f3
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
L_cont_14249 : 
	fbgt	f6 f0 L_else_14254
	addi	r4 r0 0
	jump	L_cont_14252
L_else_14254 : 
	addi	r4 r0 1
L_cont_14252 : 
	bne	r4 r0 L_else_14256
	add	r4 r0 r6
	return
L_else_14256 : 
	fmul	f2 f6 f6
	fmul	f2 f2 f2
	fmul	f3 f2 f5
	addi	r5 r0 32799
	addi	r4 r0 32799
	fldi	f2 r4 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	addi	r5 r0 32799
	addi	r4 r0 32799
	fldi	f2 r4 1
	fadd	f2 f2 f3
	fsti	f2 r5 1
	addi	r5 r0 32799
	addi	r4 r0 32799
	fldi	f2 r4 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	add	r4 r0 r6
	return
L_trace_reflections_2235 : 
	add	r8 r0 r5
	add	r7 r0 r4
	fadd	f7 f0 f3
	fadd	f6 f0 f2
	bgt	r0 r7 L_else_14259
	addi	r4 r0 32929
	add	r1 r4 r7
	ldi	r6 r1 0
	ldi	r9 r6 1
	addi	r4 r0 32826
	fldi	f2 r0 46
	fsti	f2 r4 0
	addi	r5 r0 0
	addi	r4 r0 32927
	ldi	r4 r4 0
	sti	r6 r2 0
	sti	r9 r2 1
	sti	r7 r2 2
	sti	r8 r2 3
	fsti	f7 r2 4
	fsti	f6 r2 5
	add	r6 r0 r9
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 6
	call	L_trace_or_matrix_fast_2213
	addi	r2 r2 -6
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
	fldi	f7 r2 4
	fldi	f6 r2 5
	addi	r4 r0 32826
	fldi	f3 r4 0
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_14262
	addi	r4 r0 0
	jump	L_cont_14260
L_else_14262 : 
	addi	r4 r0 1
L_cont_14260 : 
	bne	r4 r0 L_else_14265
	addi	r4 r0 0
	jump	L_cont_14263
L_else_14265 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_14274
	addi	r4 r0 0
	jump	L_cont_14263
L_else_14274 : 
	addi	r4 r0 1
L_cont_14263 : 
	bne	r4 r0 L_else_14268
	jump	L_cont_14266
L_else_14268 : 
	addi	r4 r0 32789
	ldi	r5 r4 0
	addi	r4 r0 4
	mul	r5 r5 r4
	addi	r4 r0 32818
	ldi	r4 r4 0
	add	r5 r5 r4
	ldi	r4 r6 0
	bne	r5 r4 L_else_14270
	addi	r5 r0 0
	addi	r4 r0 32927
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	sti	r9 r2 3
	fsti	f7 r2 4
	fsti	f6 r2 5
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 6
	call	L_shadow_check_one_or_matrix_2188
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r9 r2 3
	fldi	f7 r2 4
	fldi	f6 r2 5
	bne	r4 r0 L_else_14272
	addi	r4 r0 32790
	ldi	r5 r9 0
	fldi	f3 r4 0
	fldi	f2 r5 0
	fmul	f4 f3 f2
	fldi	f3 r4 1
	fldi	f2 r5 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r4 2
	fldi	f2 r5 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fldi	f8 r6 2
	fmul	f3 f8 f6
	fmul	f5 f3 f2
	ldi	r4 r9 0
	fldi	f3 r8 0
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r8 1
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r8 2
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fmul	f2 f8 f2
	sti	r7 r2 0
	sti	r8 r2 1
	fsti	f7 r2 2
	fsti	f6 r2 3
	fadd	f4 f0 f7
	fadd	f3 f0 f2
	fadd	f2 f0 f5
	addi	r2 r2 4
	call	L_add_light_2231
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r8 r2 1
	fldi	f7 r2 2
	fldi	f6 r2 3
	jump	L_cont_14266
L_else_14272 : 
	jump	L_cont_14266
L_else_14270 : 
L_cont_14266 : 
	addi	r4 r7 -1
	add	r5 r0 r8
	fadd	f3 f0 f7
	fadd	f2 f0 f6
	jump	L_trace_reflections_2235
L_else_14259 : 
	return
L_trace_ray_2240 : 
	add	r13 r0 r6
	add	r11 r0 r5
	add	r12 r0 r4
	fadd	f7 f0 f3
	fadd	f5 f0 f2
	addi	r4 r0 4
	bgt	r12 r4 L_else_14277
	ldi	r10 r13 2
	addi	r4 r0 32826
	fldi	f2 r0 46
	fsti	f2 r4 0
	addi	r4 r0 0
	addi	r5 r0 32927
	ldi	r5 r5 0
	sti	r13 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r10 r2 4
	fsti	f7 r2 5
	fsti	f5 r2 6
	add	r6 r0 r11
	addi	r2 r2 7
	call	L_trace_or_matrix_2199
	addi	r2 r2 -7
	ldi	r13 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r10 r2 4
	fldi	f7 r2 5
	fldi	f5 r2 6
	addi	r4 r0 32826
	fldi	f2 r4 0
	fldi	f3 r0 34
	fbgt	f2 f3 L_else_14280
	addi	r4 r0 0
	jump	L_cont_14278
L_else_14280 : 
	addi	r4 r0 1
L_cont_14278 : 
	bne	r4 r0 L_else_14283
	addi	r4 r0 0
	jump	L_cont_14281
L_else_14283 : 
	fldi	f3 r0 47
	fbgt	f3 f2 L_else_14329
	addi	r4 r0 0
	jump	L_cont_14281
L_else_14329 : 
	addi	r4 r0 1
L_cont_14281 : 
	bne	r4 r0 L_else_14285
	addi	r4 r0 -1
	add	r1 r10 r12
	sti	r4 r1 0
	bne	r12 r0 L_else_14287
	add	r4 r0 r9
	return
L_else_14287 : 
	addi	r4 r0 32783
	fldi	f3 r11 0
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r11 1
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r11 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_14290
	addi	r4 r0 0
	jump	L_cont_14288
L_else_14290 : 
	addi	r4 r0 1
L_cont_14288 : 
	bne	r4 r0 L_else_14292
	add	r4 r0 r9
	return
L_else_14292 : 
	fmul	f3 f2 f2
	fmul	f2 f3 f2
	fmul	f3 f2 f5
	addi	r4 r0 32825
	fldi	f2 r4 0
	fmul	f3 f3 f2
	addi	r5 r0 32799
	addi	r4 r0 32799
	fldi	f2 r4 0
	fadd	f2 f2 f3
	fsti	f2 r5 0
	addi	r5 r0 32799
	addi	r4 r0 32799
	fldi	f2 r4 1
	fadd	f2 f2 f3
	fsti	f2 r5 1
	addi	r5 r0 32799
	addi	r4 r0 32799
	fldi	f2 r4 2
	fadd	f2 f2 f3
	fsti	f2 r5 2
	add	r4 r0 r9
	return
L_else_14285 : 
	addi	r4 r0 32789
	ldi	r8 r4 0
	addi	r4 r0 33714
	add	r1 r4 r8
	ldi	r15 r1 0
	ldi	r14 r15 2
	ldi	r4 r15 7
	fldi	f2 r4 0
	fmul	f8 f2 f5
	ldi	r5 r15 1
	addi	r4 r0 1
	bne	r5 r4 L_else_14295
	addi	r4 r0 32818
	ldi	r7 r4 0
	addi	r4 r0 32790
	fldi	f2 r0 30
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	addi	r6 r0 32790
	addi	r5 r7 -1
	addi	r4 r7 -1
	add	r1 r11 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_14317
	addi	r4 r0 1
	jump	L_cont_14315
L_else_14317 : 
	addi	r4 r0 0
L_cont_14315 : 
	bne	r4 r0 L_else_14320
	fbgt	f2 f0 L_else_14323
	addi	r4 r0 0
	jump	L_cont_14321
L_else_14323 : 
	addi	r4 r0 1
L_cont_14321 : 
	bne	r4 r0 L_else_14325
	fldi	f2 r0 29
	jump	L_cont_14318
L_else_14325 : 
	fldi	f2 r0 12
	jump	L_cont_14318
L_else_14320 : 
	fldi	f2 r0 30
L_cont_14318 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	jump	L_cont_14293
L_else_14295 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_14327
	addi	r5 r0 32790
	ldi	r4 r15 4
	fldi	f2 r4 0
	fsub	f2 f0 f2
	fsti	f2 r5 0
	addi	r5 r0 32790
	ldi	r4 r15 4
	fldi	f2 r4 1
	fsub	f2 f0 f2
	fsti	f2 r5 1
	addi	r5 r0 32790
	ldi	r4 r15 4
	fldi	f2 r4 2
	fsub	f2 f0 f2
	fsti	f2 r5 2
	jump	L_cont_14293
L_else_14327 : 
	sti	r13 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r14 r2 3
	sti	r12 r2 4
	sti	r10 r2 5
	sti	r8 r2 6
	sti	r15 r2 7
	fsti	f5 r2 8
	fsti	f7 r2 9
	fsti	f8 r2 10
	add	r4 r0 r15
	addi	r2 r2 11
	call	L_get_nvector_second_2223
	addi	r2 r2 -11
	ldi	r13 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r14 r2 3
	ldi	r12 r2 4
	ldi	r10 r2 5
	ldi	r8 r2 6
	ldi	r15 r2 7
	fldi	f5 r2 8
	fldi	f7 r2 9
	fldi	f8 r2 10
L_cont_14293 : 
	addi	r5 r0 32807
	addi	r4 r0 32786
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r4 r0 32786
	sti	r13 r2 0
	sti	r15 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	sti	r14 r2 4
	sti	r12 r2 5
	sti	r10 r2 6
	sti	r8 r2 7
	fsti	f5 r2 8
	fsti	f7 r2 9
	fsti	f8 r2 10
	add	r5 r0 r4
	add	r4 r0 r15
	addi	r2 r2 11
	call	L_utexture_2228
	addi	r2 r2 -11
	ldi	r13 r2 0
	ldi	r15 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	ldi	r14 r2 4
	ldi	r12 r2 5
	ldi	r10 r2 6
	ldi	r8 r2 7
	fldi	f5 r2 8
	fldi	f7 r2 9
	fldi	f8 r2 10
	addi	r4 r0 4
	mul	r5 r8 r4
	addi	r4 r0 32818
	ldi	r4 r4 0
	add	r4 r5 r4
	add	r1 r10 r12
	sti	r4 r1 0
	ldi	r4 r13 1
	add	r1 r4 r12
	ldi	r4 r1 0
	addi	r5 r0 32786
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	ldi	r5 r13 3
	ldi	r4 r15 7
	fldi	f2 r4 0
	fldi	f3 r0 11
	fbgt	f3 f2 L_else_14298
	addi	r4 r0 0
	jump	L_cont_14296
L_else_14298 : 
	addi	r4 r0 1
L_cont_14296 : 
	bne	r4 r0 L_else_14301
	addi	r4 r0 1
	add	r1 r5 r12
	sti	r4 r1 0
	ldi	r6 r13 4
	add	r1 r6 r12
	ldi	r4 r1 0
	addi	r5 r0 32793
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	add	r1 r6 r12
	ldi	r4 r1 0
	fldi	f2 r0 48
	fmul	f3 f2 f8
	fldi	f2 r4 0
	fmul	f2 f2 f3
	fsti	f2 r4 0
	fldi	f2 r4 1
	fmul	f2 f2 f3
	fsti	f2 r4 1
	fldi	f2 r4 2
	fmul	f2 f2 f3
	fsti	f2 r4 2
	ldi	r4 r13 7
	add	r1 r4 r12
	ldi	r4 r1 0
	addi	r5 r0 32790
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	jump	L_cont_14299
L_else_14301 : 
	addi	r4 r0 0
	add	r1 r5 r12
	sti	r4 r1 0
L_cont_14299 : 
	fldi	f6 r0 49
	addi	r4 r0 32790
	fldi	f3 r11 0
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fldi	f4 r11 1
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r11 2
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fmul	f4 f6 f2
	addi	r4 r0 32790
	fldi	f3 r11 0
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r11 0
	fldi	f3 r11 1
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r11 1
	fldi	f3 r11 2
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r11 2
	ldi	r4 r15 7
	fldi	f2 r4 1
	fmul	f6 f5 f2
	addi	r5 r0 0
	addi	r4 r0 32927
	ldi	r4 r4 0
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r13 r2 3
	sti	r15 r2 4
	sti	r14 r2 5
	sti	r12 r2 6
	fsti	f7 r2 7
	fsti	f5 r2 8
	fsti	f6 r2 9
	fsti	f8 r2 10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 11
	call	L_shadow_check_one_or_matrix_2188
	addi	r2 r2 -11
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r13 r2 3
	ldi	r15 r2 4
	ldi	r14 r2 5
	ldi	r12 r2 6
	fldi	f7 r2 7
	fldi	f5 r2 8
	fldi	f6 r2 9
	fldi	f8 r2 10
	bne	r4 r0 L_else_14304
	addi	r4 r0 32790
	addi	r5 r0 32783
	fldi	f3 r4 0
	fldi	f2 r5 0
	fmul	f4 f3 f2
	fldi	f3 r4 1
	fldi	f2 r5 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r4 2
	fldi	f2 r5 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsub	f2 f0 f2
	fmul	f9 f2 f8
	addi	r4 r0 32783
	fldi	f3 r11 0
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r11 1
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r11 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsub	f2 f0 f2
	sti	r12 r2 0
	sti	r14 r2 1
	sti	r15 r2 2
	sti	r13 r2 3
	sti	r10 r2 4
	sti	r9 r2 5
	sti	r11 r2 6
	fsti	f7 r2 7
	fsti	f5 r2 8
	fsti	f6 r2 9
	fsti	f8 r2 10
	fadd	f4 f0 f6
	fadd	f3 f0 f2
	fadd	f2 f0 f9
	addi	r2 r2 11
	call	L_add_light_2231
	addi	r2 r2 -11
	ldi	r12 r2 0
	ldi	r14 r2 1
	ldi	r15 r2 2
	ldi	r13 r2 3
	ldi	r10 r2 4
	ldi	r9 r2 5
	ldi	r11 r2 6
	fldi	f7 r2 7
	fldi	f5 r2 8
	fldi	f6 r2 9
	fldi	f8 r2 10
	jump	L_cont_14302
L_else_14304 : 
L_cont_14302 : 
	addi	r5 r0 32786
	addi	r4 r0 32810
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r12 r2 0
	sti	r14 r2 1
	sti	r15 r2 2
	sti	r13 r2 3
	sti	r10 r2 4
	sti	r9 r2 5
	sti	r11 r2 6
	fsti	f7 r2 7
	fsti	f5 r2 8
	fsti	f6 r2 9
	fsti	f8 r2 10
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 11
	call	L_setup_startp_constants_2151
	addi	r2 r2 -11
	ldi	r12 r2 0
	ldi	r14 r2 1
	ldi	r15 r2 2
	ldi	r13 r2 3
	ldi	r10 r2 4
	ldi	r9 r2 5
	ldi	r11 r2 6
	fldi	f7 r2 7
	fldi	f5 r2 8
	fldi	f6 r2 9
	fldi	f8 r2 10
	addi	r4 r0 32819
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r12 r2 0
	sti	r14 r2 1
	sti	r15 r2 2
	sti	r11 r2 3
	sti	r13 r2 4
	sti	r10 r2 5
	sti	r9 r2 6
	fsti	f7 r2 7
	fsti	f5 r2 8
	add	r5 r0 r11
	fadd	f3 f0 f6
	fadd	f2 f0 f8
	addi	r2 r2 9
	call	L_trace_reflections_2235
	addi	r2 r2 -9
	ldi	r12 r2 0
	ldi	r14 r2 1
	ldi	r15 r2 2
	ldi	r11 r2 3
	ldi	r13 r2 4
	ldi	r10 r2 5
	ldi	r9 r2 6
	fldi	f7 r2 7
	fldi	f5 r2 8
	fldi	f2 r0 50
	fbgt	f5 f2 L_else_14307
	addi	r4 r0 0
	jump	L_cont_14305
L_else_14307 : 
	addi	r4 r0 1
L_cont_14305 : 
	bne	r4 r0 L_else_14309
	add	r4 r0 r9
	return
L_else_14309 : 
	addi	r4 r0 4
	bgt	r4 r12 L_else_14312
	jump	L_cont_14310
L_else_14312 : 
	addi	r5 r12 1
	addi	r4 r0 -1
	add	r1 r10 r5
	sti	r4 r1 0
L_cont_14310 : 
	addi	r4 r0 2
	bne	r14 r4 L_else_14314
	fldi	f3 r0 12
	ldi	r4 r15 7
	fldi	f2 r4 0
	fsub	f2 f3 f2
	fmul	f3 f5 f2
	addi	r5 r12 1
	addi	r4 r0 32826
	fldi	f2 r4 0
	fadd	f2 f7 f2
	add	r6 r0 r13
	add	r4 r0 r5
	add	r5 r0 r11
	fadd	f1 f0 f3
	fadd	f3 f0 f2
	fadd	f2 f0 f1
	jump	L_trace_ray_2240
L_else_14314 : 
	add	r4 r0 r9
	return
L_else_14277 : 
	add	r4 r0 r9
	return
L_trace_diffuse_ray_2246 : 
	add	r6 r0 r4
	fadd	f5 f0 f2
	addi	r4 r0 32826
	fldi	f2 r0 46
	fsti	f2 r4 0
	addi	r5 r0 0
	addi	r4 r0 32927
	ldi	r4 r4 0
	sti	r6 r2 0
	sti	r10 r2 1
	fsti	f5 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_trace_or_matrix_fast_2213
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r10 r2 1
	fldi	f5 r2 2
	addi	r4 r0 32826
	fldi	f3 r4 0
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_14333
	addi	r4 r0 0
	jump	L_cont_14331
L_else_14333 : 
	addi	r4 r0 1
L_cont_14331 : 
	bne	r4 r0 L_else_14336
	addi	r4 r0 0
	jump	L_cont_14334
L_else_14336 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_14364
	addi	r4 r0 0
	jump	L_cont_14334
L_else_14364 : 
	addi	r4 r0 1
L_cont_14334 : 
	bne	r4 r0 L_else_14338
	add	r4 r0 r10
	return
L_else_14338 : 
	addi	r4 r0 33714
	addi	r5 r0 32789
	ldi	r5 r5 0
	add	r1 r4 r5
	ldi	r9 r1 0
	ldi	r5 r6 0
	ldi	r6 r9 1
	addi	r4 r0 1
	bne	r6 r4 L_else_14341
	addi	r4 r0 32818
	ldi	r6 r4 0
	addi	r4 r0 32790
	fldi	f2 r0 30
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	addi	r8 r0 32790
	addi	r7 r6 -1
	addi	r4 r6 -1
	add	r1 r5 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_14352
	addi	r4 r0 1
	jump	L_cont_14350
L_else_14352 : 
	addi	r4 r0 0
L_cont_14350 : 
	bne	r4 r0 L_else_14355
	fbgt	f2 f0 L_else_14358
	addi	r4 r0 0
	jump	L_cont_14356
L_else_14358 : 
	addi	r4 r0 1
L_cont_14356 : 
	bne	r4 r0 L_else_14360
	fldi	f2 r0 29
	jump	L_cont_14353
L_else_14360 : 
	fldi	f2 r0 12
	jump	L_cont_14353
L_else_14355 : 
	fldi	f2 r0 30
L_cont_14353 : 
	fsub	f2 f0 f2
	add	r1 r8 r7
	fsti	f2 r1 0
	jump	L_cont_14339
L_else_14341 : 
	addi	r4 r0 2
	bne	r6 r4 L_else_14362
	addi	r5 r0 32790
	ldi	r4 r9 4
	fldi	f2 r4 0
	fsub	f2 f0 f2
	fsti	f2 r5 0
	addi	r5 r0 32790
	ldi	r4 r9 4
	fldi	f2 r4 1
	fsub	f2 f0 f2
	fsti	f2 r5 1
	addi	r5 r0 32790
	ldi	r4 r9 4
	fldi	f2 r4 2
	fsub	f2 f0 f2
	fsti	f2 r5 2
	jump	L_cont_14339
L_else_14362 : 
	sti	r10 r2 0
	sti	r9 r2 1
	fsti	f5 r2 2
	add	r4 r0 r9
	addi	r2 r2 3
	call	L_get_nvector_second_2223
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r9 r2 1
	fldi	f5 r2 2
L_cont_14339 : 
	addi	r4 r0 32786
	sti	r10 r2 0
	sti	r9 r2 1
	fsti	f5 r2 2
	add	r5 r0 r4
	add	r4 r0 r9
	addi	r2 r2 3
	call	L_utexture_2228
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r9 r2 1
	fldi	f5 r2 2
	addi	r5 r0 0
	addi	r4 r0 32927
	ldi	r4 r4 0
	sti	r9 r2 0
	sti	r10 r2 1
	fsti	f5 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_shadow_check_one_or_matrix_2188
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r10 r2 1
	fldi	f5 r2 2
	bne	r4 r0 L_else_14343
	addi	r5 r0 32790
	addi	r4 r0 32783
	fldi	f3 r5 0
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r5 1
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r5 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_14346
	addi	r4 r0 0
	jump	L_cont_14344
L_else_14346 : 
	addi	r4 r0 1
L_cont_14344 : 
	bne	r4 r0 L_else_14349
	fldi	f2 r0 30
	jump	L_cont_14347
L_else_14349 : 
	fadd	f2 f0 f2
L_cont_14347 : 
	addi	r5 r0 32796
	fmul	f3 f5 f2
	ldi	r4 r9 7
	fldi	f2 r4 0
	fmul	f4 f3 f2
	addi	r4 r0 32793
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
	add	r4 r0 r10
	return
L_else_14343 : 
	add	r4 r0 r10
	return
L_iter_trace_diffuse_rays_2249 : 
	add	r9 r0 r4
	add	r1 r0 r5
	add	r5 r0 r7
	add	r7 r0 r6
	add	r6 r0 r1
	bgt	r0 r5 L_else_14367
	add	r1 r9 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fldi	f3 r4 1
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r4 2
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_14370
	addi	r4 r0 0
	jump	L_cont_14368
L_else_14370 : 
	addi	r4 r0 1
L_cont_14368 : 
	bne	r4 r0 L_else_14373
	add	r1 r9 r5
	ldi	r4 r1 0
	fldi	f2 r0 51
	fdiv	f2 f3 f2
	sti	r5 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_trace_diffuse_ray_2246
	addi	r2 r2 -5
	ldi	r5 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	ldi	r6 r2 4
	jump	L_cont_14371
L_else_14373 : 
	addi	r4 r5 1
	add	r1 r9 r4
	ldi	r4 r1 0
	fldi	f2 r0 52
	fdiv	f2 f3 f2
	sti	r5 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_trace_diffuse_ray_2246
	addi	r2 r2 -5
	ldi	r5 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	ldi	r6 r2 4
L_cont_14371 : 
	addi	r5 r5 -2
	bgt	r0 r5 L_else_14375
	add	r1 r9 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fldi	f3 r4 1
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r4 2
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_14378
	addi	r4 r0 0
	jump	L_cont_14376
L_else_14378 : 
	addi	r4 r0 1
L_cont_14376 : 
	bne	r4 r0 L_else_14381
	add	r1 r9 r5
	ldi	r4 r1 0
	fldi	f2 r0 51
	fdiv	f2 f3 f2
	sti	r5 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	L_trace_diffuse_ray_2246
	addi	r2 r2 -4
	ldi	r5 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	ldi	r9 r2 3
	jump	L_cont_14379
L_else_14381 : 
	addi	r4 r5 1
	add	r1 r9 r4
	ldi	r4 r1 0
	fldi	f2 r0 52
	fdiv	f2 f3 f2
	sti	r5 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	L_trace_diffuse_ray_2246
	addi	r2 r2 -4
	ldi	r5 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	ldi	r9 r2 3
L_cont_14379 : 
	addi	r4 r5 -2
	add	r5 r0 r6
	add	r6 r0 r7
	add	r7 r0 r4
	add	r4 r0 r9
	jump	L_iter_trace_diffuse_rays_2249
L_else_14375 : 
	add	r4 r0 r8
	return
L_else_14367 : 
	add	r4 r0 r8
	return
L_trace_diffuse_rays_2254 : 
	add	r8 r0 r6
	add	r7 r0 r5
	add	r6 r0 r4
	addi	r4 r0 32810
	fldi	f2 r8 0
	fsti	f2 r4 0
	fldi	f2 r8 1
	fsti	f2 r4 1
	fldi	f2 r8 2
	fsti	f2 r4 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r5 r0 r4
	add	r4 r0 r8
	addi	r2 r2 3
	call	L_setup_startp_constants_2151
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r5 r0 118
	add	r1 r6 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r7 0
	fmul	f4 f3 f2
	fldi	f3 r4 1
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r4 2
	fldi	f2 r7 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_14385
	addi	r4 r0 0
	jump	L_cont_14383
L_else_14385 : 
	addi	r4 r0 1
L_cont_14383 : 
	bne	r4 r0 L_else_14388
	add	r1 r6 r5
	ldi	r4 r1 0
	fldi	f2 r0 51
	fdiv	f2 f3 f2
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_trace_diffuse_ray_2246
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	jump	L_cont_14386
L_else_14388 : 
	addi	r4 r0 119
	add	r1 r6 r4
	ldi	r4 r1 0
	fldi	f2 r0 52
	fdiv	f2 f3 f2
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_trace_diffuse_ray_2246
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
L_cont_14386 : 
	addi	r4 r0 116
	add	r5 r0 r7
	add	r7 r0 r4
	add	r4 r0 r6
	add	r6 r0 r8
	jump	L_iter_trace_diffuse_rays_2249
L_calc_diffuse_using_1point_2262 : 
	add	r11 r0 r5
	add	r9 r0 r4
	ldi	r4 r9 5
	ldi	r5 r9 7
	ldi	r7 r9 1
	ldi	r8 r9 4
	addi	r6 r0 32796
	add	r1 r4 r11
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r6 0
	fldi	f2 r4 1
	fsti	f2 r6 1
	fldi	f2 r4 2
	fsti	f2 r6 2
	ldi	r4 r9 6
	ldi	r9 r4 0
	add	r1 r5 r11
	ldi	r6 r1 0
	add	r1 r7 r11
	ldi	r5 r1 0
	bne	r9 r0 L_else_14392
	jump	L_cont_14390
L_else_14392 : 
	addi	r4 r0 32820
	ldi	r4 r4 0
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	sti	r9 r2 5
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 6
	call	L_trace_diffuse_rays_2254
	addi	r2 r2 -6
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	ldi	r9 r2 5
L_cont_14390 : 
	addi	r4 r0 1
	bne	r9 r4 L_else_14395
	jump	L_cont_14393
L_else_14395 : 
	addi	r4 r0 32820
	ldi	r4 r4 1
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	sti	r9 r2 5
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 6
	call	L_trace_diffuse_rays_2254
	addi	r2 r2 -6
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	ldi	r9 r2 5
L_cont_14393 : 
	addi	r4 r0 2
	bne	r9 r4 L_else_14398
	jump	L_cont_14396
L_else_14398 : 
	addi	r4 r0 32820
	ldi	r4 r4 2
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	sti	r9 r2 5
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 6
	call	L_trace_diffuse_rays_2254
	addi	r2 r2 -6
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	ldi	r9 r2 5
L_cont_14396 : 
	addi	r4 r0 3
	bne	r9 r4 L_else_14401
	jump	L_cont_14399
L_else_14401 : 
	addi	r4 r0 32820
	ldi	r4 r4 3
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	sti	r9 r2 5
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 6
	call	L_trace_diffuse_rays_2254
	addi	r2 r2 -6
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	ldi	r9 r2 5
L_cont_14399 : 
	addi	r4 r0 4
	bne	r9 r4 L_else_14404
	jump	L_cont_14402
L_else_14404 : 
	addi	r4 r0 32820
	ldi	r4 r4 4
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r8 r2 2
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 3
	call	L_trace_diffuse_rays_2254
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r8 r2 2
L_cont_14402 : 
	addi	r6 r0 32799
	add	r1 r8 r11
	ldi	r5 r1 0
	addi	r4 r0 32796
	fldi	f3 r6 0
	fldi	f4 r5 0
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r6 0
	fldi	f4 r6 1
	fldi	f3 r5 1
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r6 1
	fldi	f4 r6 2
	fldi	f3 r5 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r6 2
	add	r4 r0 r10
	return
L_calc_diffuse_using_5points_2265 : 
	add	r12 r0 r8
	add	r13 r0 r6
	add	r10 r0 r4
	add	r8 r0 r7
	add	r4 r0 r5
	add	r1 r4 r10
	ldi	r4 r1 0
	ldi	r9 r4 5
	addi	r4 r10 -1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r7 r4 5
	add	r1 r13 r10
	ldi	r4 r1 0
	ldi	r4 r4 5
	addi	r5 r10 1
	add	r1 r13 r5
	ldi	r5 r1 0
	ldi	r6 r5 5
	add	r1 r8 r10
	ldi	r5 r1 0
	ldi	r8 r5 5
	addi	r5 r0 32796
	add	r1 r9 r12
	ldi	r9 r1 0
	fldi	f2 r9 0
	fsti	f2 r5 0
	fldi	f2 r9 1
	fsti	f2 r5 1
	fldi	f2 r9 2
	fsti	f2 r5 2
	addi	r5 r0 32796
	add	r1 r7 r12
	ldi	r7 r1 0
	fldi	f3 r5 0
	fldi	f2 r7 0
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r7 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r5 2
	fldi	f2 r7 2
	fadd	f2 f3 f2
	fsti	f2 r5 2
	addi	r5 r0 32796
	add	r1 r4 r12
	ldi	r4 r1 0
	fldi	f3 r5 0
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r5 2
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r5 2
	addi	r5 r0 32796
	add	r1 r6 r12
	ldi	r4 r1 0
	fldi	f3 r5 0
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r5 2
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r5 2
	addi	r5 r0 32796
	add	r1 r8 r12
	ldi	r4 r1 0
	fldi	f3 r5 0
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r5 2
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r5 2
	add	r1 r13 r10
	ldi	r4 r1 0
	ldi	r4 r4 4
	addi	r6 r0 32799
	add	r1 r4 r12
	ldi	r5 r1 0
	addi	r4 r0 32796
	fldi	f3 r6 0
	fldi	f4 r5 0
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r6 0
	fldi	f4 r6 1
	fldi	f3 r5 1
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r6 1
	fldi	f4 r6 2
	fldi	f3 r5 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r6 2
	add	r4 r0 r11
	return
L_do_without_neighbors_2271 : 
	add	r13 r0 r5
	add	r11 r0 r4
	addi	r4 r0 4
	bgt	r13 r4 L_else_14408
	ldi	r4 r11 2
	add	r1 r4 r13
	ldi	r4 r1 0
	bgt	r0 r4 L_else_14410
	ldi	r4 r11 3
	add	r1 r4 r13
	ldi	r4 r1 0
	bne	r4 r0 L_else_14413
	jump	L_cont_14411
L_else_14413 : 
	ldi	r4 r11 5
	ldi	r5 r11 7
	ldi	r7 r11 1
	ldi	r9 r11 4
	addi	r6 r0 32796
	add	r1 r4 r13
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r6 0
	fldi	f2 r4 1
	fsti	f2 r6 1
	fldi	f2 r4 2
	fsti	f2 r6 2
	ldi	r4 r11 6
	ldi	r10 r4 0
	add	r1 r5 r13
	ldi	r8 r1 0
	add	r1 r7 r13
	ldi	r6 r1 0
	bne	r10 r0 L_else_14423
	jump	L_cont_14421
L_else_14423 : 
	addi	r4 r0 32820
	ldi	r5 r4 0
	addi	r4 r0 32810
	fldi	f2 r6 0
	fsti	f2 r4 0
	fldi	f2 r6 1
	fsti	f2 r4 1
	fldi	f2 r6 2
	fsti	f2 r4 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r13 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	sti	r6 r2 5
	sti	r8 r2 6
	sti	r5 r2 7
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_setup_startp_constants_2151
	addi	r2 r2 -8
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r13 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	ldi	r6 r2 5
	ldi	r8 r2 6
	ldi	r5 r2 7
	addi	r4 r0 118
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r10 r2 6
	add	r7 r0 r4
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 7
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -7
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r10 r2 6
L_cont_14421 : 
	addi	r4 r0 1
	bne	r10 r4 L_else_14426
	jump	L_cont_14424
L_else_14426 : 
	addi	r4 r0 32820
	ldi	r5 r4 1
	addi	r4 r0 32810
	fldi	f2 r6 0
	fsti	f2 r4 0
	fldi	f2 r6 1
	fsti	f2 r4 1
	fldi	f2 r6 2
	fsti	f2 r4 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r13 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	sti	r6 r2 5
	sti	r8 r2 6
	sti	r5 r2 7
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_setup_startp_constants_2151
	addi	r2 r2 -8
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r13 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	ldi	r6 r2 5
	ldi	r8 r2 6
	ldi	r5 r2 7
	addi	r4 r0 118
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r10 r2 6
	add	r7 r0 r4
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 7
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -7
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r10 r2 6
L_cont_14424 : 
	addi	r4 r0 2
	bne	r10 r4 L_else_14429
	jump	L_cont_14427
L_else_14429 : 
	addi	r4 r0 32820
	ldi	r5 r4 2
	addi	r4 r0 32810
	fldi	f2 r6 0
	fsti	f2 r4 0
	fldi	f2 r6 1
	fsti	f2 r4 1
	fldi	f2 r6 2
	fsti	f2 r4 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r13 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	sti	r6 r2 5
	sti	r8 r2 6
	sti	r5 r2 7
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_setup_startp_constants_2151
	addi	r2 r2 -8
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r13 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	ldi	r6 r2 5
	ldi	r8 r2 6
	ldi	r5 r2 7
	addi	r4 r0 118
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r10 r2 6
	add	r7 r0 r4
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 7
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -7
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r10 r2 6
L_cont_14427 : 
	addi	r4 r0 3
	bne	r10 r4 L_else_14432
	jump	L_cont_14430
L_else_14432 : 
	addi	r4 r0 32820
	ldi	r5 r4 3
	addi	r4 r0 32810
	fldi	f2 r6 0
	fsti	f2 r4 0
	fldi	f2 r6 1
	fsti	f2 r4 1
	fldi	f2 r6 2
	fsti	f2 r4 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r13 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	sti	r6 r2 5
	sti	r8 r2 6
	sti	r5 r2 7
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_setup_startp_constants_2151
	addi	r2 r2 -8
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r13 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	ldi	r6 r2 5
	ldi	r8 r2 6
	ldi	r5 r2 7
	addi	r4 r0 118
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r10 r2 6
	add	r7 r0 r4
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 7
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -7
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r10 r2 6
L_cont_14430 : 
	addi	r4 r0 4
	bne	r10 r4 L_else_14435
	jump	L_cont_14433
L_else_14435 : 
	addi	r4 r0 32820
	ldi	r5 r4 4
	addi	r4 r0 32810
	fldi	f2 r6 0
	fsti	f2 r4 0
	fldi	f2 r6 1
	fsti	f2 r4 1
	fldi	f2 r6 2
	fsti	f2 r4 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r13 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	sti	r8 r2 5
	sti	r5 r2 6
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 7
	call	L_setup_startp_constants_2151
	addi	r2 r2 -7
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r13 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
	ldi	r8 r2 5
	ldi	r5 r2 6
	addi	r4 r0 118
	sti	r11 r2 0
	sti	r12 r2 1
	sti	r13 r2 2
	sti	r9 r2 3
	add	r7 r0 r4
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 4
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -4
	ldi	r11 r2 0
	ldi	r12 r2 1
	ldi	r13 r2 2
	ldi	r9 r2 3
L_cont_14433 : 
	addi	r6 r0 32799
	add	r1 r9 r13
	ldi	r5 r1 0
	addi	r4 r0 32796
	fldi	f3 r6 0
	fldi	f4 r5 0
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r6 0
	fldi	f4 r6 1
	fldi	f3 r5 1
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r6 1
	fldi	f4 r6 2
	fldi	f3 r5 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r6 2
L_cont_14411 : 
	addi	r5 r13 1
	addi	r4 r0 4
	bgt	r5 r4 L_else_14415
	ldi	r4 r11 2
	add	r1 r4 r5
	ldi	r4 r1 0
	bgt	r0 r4 L_else_14417
	ldi	r4 r11 3
	add	r1 r4 r5
	ldi	r4 r1 0
	bne	r4 r0 L_else_14420
	jump	L_cont_14418
L_else_14420 : 
	sti	r5 r2 0
	sti	r11 r2 1
	add	r4 r0 r11
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2262
	addi	r2 r2 -2
	ldi	r5 r2 0
	ldi	r11 r2 1
L_cont_14418 : 
	addi	r4 r5 1
	add	r5 r0 r4
	add	r4 r0 r11
	jump	L_do_without_neighbors_2271
L_else_14417 : 
	add	r4 r0 r12
	return
L_else_14415 : 
	add	r4 r0 r12
	return
L_else_14410 : 
	add	r4 r0 r12
	return
L_else_14408 : 
	add	r4 r0 r12
	return
L_try_exploit_neighbors_2287 : 
	add	r12 r0 r9
	add	r15 r0 r8
	add	r10 r0 r7
	add	r16 r0 r6
	add	r14 r0 r5
	add	r11 r0 r4
	add	r1 r10 r11
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r12 r4 L_else_14438
	ldi	r4 r6 2
	add	r1 r4 r12
	ldi	r4 r1 0
	bgt	r0 r4 L_else_14440
	add	r1 r10 r11
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r12
	ldi	r5 r1 0
	add	r1 r16 r11
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r12
	ldi	r4 r1 0
	bne	r4 r5 L_else_14443
	add	r1 r15 r11
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r12
	ldi	r4 r1 0
	bne	r4 r5 L_else_14475
	addi	r4 r11 -1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r12
	ldi	r4 r1 0
	bne	r4 r5 L_else_14477
	addi	r4 r11 1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r12
	ldi	r4 r1 0
	bne	r4 r5 L_else_14479
	addi	r4 r0 1
	jump	L_cont_14441
L_else_14479 : 
	addi	r4 r0 0
	jump	L_cont_14441
L_else_14477 : 
	addi	r4 r0 0
	jump	L_cont_14441
L_else_14475 : 
	addi	r4 r0 0
	jump	L_cont_14441
L_else_14443 : 
	addi	r4 r0 0
L_cont_14441 : 
	bne	r4 r0 L_else_14445
	add	r1 r10 r11
	ldi	r5 r1 0
	addi	r4 r0 4
	bgt	r12 r4 L_else_14447
	ldi	r4 r5 2
	add	r1 r4 r12
	ldi	r4 r1 0
	bgt	r0 r4 L_else_14449
	ldi	r4 r5 3
	add	r1 r4 r12
	ldi	r4 r1 0
	bne	r4 r0 L_else_14452
	jump	L_cont_14450
L_else_14452 : 
	sti	r12 r2 0
	sti	r5 r2 1
	add	r4 r0 r5
	add	r5 r0 r12
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2262
	addi	r2 r2 -2
	ldi	r12 r2 0
	ldi	r5 r2 1
L_cont_14450 : 
	addi	r4 r12 1
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	jump	L_do_without_neighbors_2271
L_else_14449 : 
	add	r4 r0 r13
	return
L_else_14447 : 
	add	r4 r0 r13
	return
L_else_14445 : 
	ldi	r4 r6 3
	add	r1 r4 r12
	ldi	r4 r1 0
	bne	r4 r0 L_else_14455
	jump	L_cont_14453
L_else_14455 : 
	add	r1 r16 r11
	ldi	r4 r1 0
	ldi	r5 r4 5
	addi	r4 r11 -1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r6 r4 5
	add	r1 r10 r11
	ldi	r4 r1 0
	ldi	r7 r4 5
	addi	r4 r11 1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r8 r4 5
	add	r1 r15 r11
	ldi	r4 r1 0
	ldi	r9 r4 5
	addi	r4 r0 32796
	add	r1 r5 r12
	ldi	r5 r1 0
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	addi	r5 r0 32796
	add	r1 r6 r12
	ldi	r4 r1 0
	fldi	f3 r5 0
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r5 2
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r5 2
	addi	r5 r0 32796
	add	r1 r7 r12
	ldi	r4 r1 0
	fldi	f3 r5 0
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r5 2
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r5 2
	addi	r5 r0 32796
	add	r1 r8 r12
	ldi	r4 r1 0
	fldi	f3 r5 0
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r5 2
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r5 2
	addi	r5 r0 32796
	add	r1 r9 r12
	ldi	r4 r1 0
	fldi	f3 r5 0
	fldi	f2 r4 0
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f3 r5 1
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r5 1
	fldi	f3 r5 2
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r5 2
	add	r1 r10 r11
	ldi	r4 r1 0
	ldi	r4 r4 4
	addi	r5 r0 32799
	add	r1 r4 r12
	ldi	r4 r1 0
	addi	r6 r0 32796
	fldi	f3 r5 0
	fldi	f4 r4 0
	fldi	f2 r6 0
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r5 0
	fldi	f4 r5 1
	fldi	f3 r4 1
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r5 1
	fldi	f4 r5 2
	fldi	f3 r4 2
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r5 2
L_cont_14453 : 
	addi	r7 r12 1
	add	r1 r10 r11
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r7 r4 L_else_14457
	ldi	r4 r6 2
	add	r1 r4 r7
	ldi	r4 r1 0
	bgt	r0 r4 L_else_14459
	add	r1 r10 r11
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r7
	ldi	r5 r1 0
	add	r1 r16 r11
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r7
	ldi	r4 r1 0
	bne	r4 r5 L_else_14462
	add	r1 r15 r11
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r7
	ldi	r4 r1 0
	bne	r4 r5 L_else_14469
	addi	r4 r11 -1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r7
	ldi	r4 r1 0
	bne	r4 r5 L_else_14471
	addi	r4 r11 1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r7
	ldi	r4 r1 0
	bne	r4 r5 L_else_14473
	addi	r4 r0 1
	jump	L_cont_14460
L_else_14473 : 
	addi	r4 r0 0
	jump	L_cont_14460
L_else_14471 : 
	addi	r4 r0 0
	jump	L_cont_14460
L_else_14469 : 
	addi	r4 r0 0
	jump	L_cont_14460
L_else_14462 : 
	addi	r4 r0 0
L_cont_14460 : 
	bne	r4 r0 L_else_14464
	add	r1 r10 r11
	ldi	r4 r1 0
	add	r5 r0 r7
	jump	L_do_without_neighbors_2271
L_else_14464 : 
	ldi	r4 r6 3
	add	r1 r4 r7
	ldi	r4 r1 0
	bne	r4 r0 L_else_14467
	jump	L_cont_14465
L_else_14467 : 
	sti	r7 r2 0
	sti	r15 r2 1
	sti	r10 r2 2
	sti	r16 r2 3
	sti	r14 r2 4
	sti	r11 r2 5
	add	r8 r0 r7
	add	r6 r0 r10
	add	r5 r0 r16
	add	r4 r0 r11
	add	r7 r0 r15
	addi	r2 r2 6
	call	L_calc_diffuse_using_5points_2265
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r15 r2 1
	ldi	r10 r2 2
	ldi	r16 r2 3
	ldi	r14 r2 4
	ldi	r11 r2 5
L_cont_14465 : 
	addi	r4 r7 1
	add	r9 r0 r4
	add	r8 r0 r15
	add	r7 r0 r10
	add	r6 r0 r16
	add	r5 r0 r14
	add	r4 r0 r11
	jump	L_try_exploit_neighbors_2287
L_else_14459 : 
	add	r4 r0 r13
	return
L_else_14457 : 
	add	r4 r0 r13
	return
L_else_14440 : 
	add	r4 r0 r13
	return
L_else_14438 : 
	add	r4 r0 r13
	return
L_pretrace_diffuse_rays_2300 : 
	add	r10 r0 r5
	add	r8 r0 r4
	addi	r4 r0 4
	bgt	r10 r4 L_else_14482
	ldi	r4 r8 2
	add	r1 r4 r10
	ldi	r4 r1 0
	bgt	r0 r4 L_else_14484
	ldi	r4 r8 3
	add	r1 r4 r10
	ldi	r4 r1 0
	bne	r4 r0 L_else_14487
	jump	L_cont_14485
L_else_14487 : 
	ldi	r4 r8 6
	ldi	r5 r4 0
	addi	r4 r0 32796
	fldi	f2 r0 30
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	ldi	r4 r8 7
	ldi	r7 r8 1
	addi	r6 r0 32820
	add	r1 r6 r5
	ldi	r9 r1 0
	add	r1 r4 r10
	ldi	r6 r1 0
	add	r1 r7 r10
	ldi	r5 r1 0
	addi	r4 r0 32810
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r8 r2 0
	sti	r10 r2 1
	sti	r5 r2 2
	sti	r6 r2 3
	sti	r9 r2 4
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	L_setup_startp_constants_2151
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r10 r2 1
	ldi	r5 r2 2
	ldi	r6 r2 3
	ldi	r9 r2 4
	addi	r4 r0 118
	sti	r8 r2 0
	sti	r10 r2 1
	add	r7 r0 r4
	add	r4 r0 r9
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 2
	call	L_iter_trace_diffuse_rays_2249
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r10 r2 1
	ldi	r4 r8 5
	add	r1 r4 r10
	ldi	r4 r1 0
	addi	r5 r0 32796
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
L_cont_14485 : 
	addi	r4 r10 1
	add	r5 r0 r4
	add	r4 r0 r8
	jump	L_pretrace_diffuse_rays_2300
L_else_14484 : 
	add	r4 r0 r5
	return
L_else_14482 : 
	add	r4 r0 r5
	return
L_pretrace_pixels_2303 : 
	add	r8 r0 r6
	add	r7 r0 r5
	add	r9 r0 r4
	fadd	f6 f0 f4
	fadd	f5 f0 f3
	fadd	f4 f0 f2
	bgt	r0 r7 L_else_14490
	addi	r4 r0 32806
	fldi	f2 r4 0
	addi	r4 r0 32804
	ldi	r4 r4 0
	sub	r4 r7 r4
	foi	f3 r4
	fmul	f3 f2 f3
	addi	r5 r0 32813
	addi	r4 r0 32774
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f2 f2 f4
	fsti	f2 r5 0
	addi	r5 r0 32813
	addi	r4 r0 32774
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f2 f2 f5
	fsti	f2 r5 1
	addi	r5 r0 32813
	addi	r4 r0 32774
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f2 f6
	fsti	f2 r5 2
	addi	r5 r0 32813
	addi	r4 r0 0
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	fsti	f6 r2 3
	fsti	f5 r2 4
	fsti	f4 r2 5
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 6
	call	L_vecunit_sgn_1931
	addi	r2 r2 -6
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	fldi	f6 r2 3
	fldi	f5 r2 4
	fldi	f4 r2 5
	addi	r4 r0 32799
	fldi	f2 r0 30
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	addi	r5 r0 32807
	addi	r4 r0 32780
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r6 r0 0
	fldi	f3 r0 12
	addi	r5 r0 32813
	add	r1 r9 r7
	ldi	r4 r1 0
	fldi	f2 r0 30
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	fsti	f4 r2 3
	fsti	f5 r2 4
	fsti	f6 r2 5
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r1
	fadd	f1 f0 f3
	fadd	f3 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 6
	call	L_trace_ray_2240
	addi	r2 r2 -6
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	fldi	f4 r2 3
	fldi	f5 r2 4
	fldi	f6 r2 5
	add	r1 r9 r7
	ldi	r4 r1 0
	ldi	r4 r4 0
	addi	r5 r0 32799
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	add	r1 r9 r7
	ldi	r4 r1 0
	ldi	r4 r4 6
	sti	r8 r4 0
	add	r1 r9 r7
	ldi	r5 r1 0
	addi	r4 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	fsti	f6 r2 3
	fsti	f5 r2 4
	fsti	f4 r2 5
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 6
	call	L_pretrace_diffuse_rays_2300
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	fldi	f6 r2 3
	fldi	f5 r2 4
	fldi	f4 r2 5
	addi	r5 r7 -1
	addi	r6 r8 1
	addi	r4 r0 5
	bgt	r4 r6 L_else_14493
	addi	r4 r6 -5
	jump	L_cont_14491
L_else_14493 : 
	add	r4 r0 r6
L_cont_14491 : 
	add	r6 r0 r4
	add	r4 r0 r9
	fadd	f3 f0 f5
	fadd	f2 f0 f4
	fadd	f4 f0 f6
	jump	L_pretrace_pixels_2303
L_else_14490 : 
	return
L_pretrace_line_2310 : 
	add	r7 r0 r6
	add	r6 r0 r4
	addi	r4 r0 32806
	fldi	f2 r4 0
	addi	r4 r0 32804
	ldi	r4 r4 1
	sub	r4 r5 r4
	foi	f3 r4
	fmul	f6 f2 f3
	addi	r4 r0 32777
	fldi	f2 r4 0
	fmul	f2 f6 f2
	addi	r4 r0 32771
	fldi	f3 r4 0
	fadd	f5 f2 f3
	addi	r4 r0 32777
	fldi	f2 r4 1
	fmul	f3 f6 f2
	addi	r4 r0 32771
	fldi	f2 r4 1
	fadd	f4 f3 f2
	addi	r4 r0 32777
	fldi	f2 r4 2
	fmul	f3 f6 f2
	addi	r4 r0 32771
	fldi	f2 r4 2
	fadd	f2 f3 f2
	addi	r4 r0 32802
	ldi	r4 r4 0
	addi	r4 r4 -1
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	fadd	f3 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f5
	jump	L_pretrace_pixels_2303
L_scan_pixel_2314 : 
	add	r9 r0 r8
	add	r11 r0 r7
	add	r10 r0 r5
	add	r12 r0 r4
	add	r8 r0 r6
	addi	r4 r0 32802
	ldi	r4 r4 0
	bgt	r4 r12 L_else_14497
	add	r4 r0 r13
	return
L_else_14497 : 
	addi	r4 r0 32799
	add	r1 r11 r12
	ldi	r5 r1 0
	ldi	r5 r5 0
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	addi	r4 r0 32802
	ldi	r5 r4 1
	addi	r4 r10 1
	bgt	r5 r4 L_else_14500
	addi	r4 r0 0
	jump	L_cont_14498
L_else_14500 : 
	bgt	r10 r0 L_else_14540
	addi	r4 r0 0
	jump	L_cont_14498
L_else_14540 : 
	addi	r4 r0 32802
	ldi	r5 r4 0
	addi	r4 r12 1
	bgt	r5 r4 L_else_14542
	addi	r4 r0 0
	jump	L_cont_14498
L_else_14542 : 
	bgt	r12 r0 L_else_14544
	addi	r4 r0 0
	jump	L_cont_14498
L_else_14544 : 
	addi	r4 r0 1
L_cont_14498 : 
	bne	r4 r0 L_else_14503
	add	r1 r11 r12
	ldi	r6 r1 0
	addi	r5 r0 0
	ldi	r4 r6 2
	add	r1 r4 r5
	ldi	r4 r1 0
	bgt	r0 r4 L_else_14519
	ldi	r4 r6 3
	add	r1 r4 r5
	ldi	r4 r1 0
	bne	r4 r0 L_else_14522
	jump	L_cont_14520
L_else_14522 : 
	sti	r13 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r11 r2 4
	sti	r12 r2 5
	sti	r6 r2 6
	add	r4 r0 r6
	addi	r2 r2 7
	call	L_calc_diffuse_using_1point_2262
	addi	r2 r2 -7
	ldi	r13 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r11 r2 4
	ldi	r12 r2 5
	ldi	r6 r2 6
L_cont_14520 : 
	addi	r4 r0 1
	sti	r13 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r11 r2 4
	sti	r12 r2 5
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 6
	call	L_do_without_neighbors_2271
	addi	r2 r2 -6
	ldi	r13 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r11 r2 4
	ldi	r12 r2 5
	jump	L_cont_14501
L_else_14519 : 
	jump	L_cont_14501
L_else_14503 : 
	addi	r7 r0 0
	add	r1 r11 r12
	ldi	r6 r1 0
	ldi	r4 r6 2
	add	r1 r4 r7
	ldi	r4 r1 0
	bgt	r0 r4 L_else_14524
	add	r1 r11 r12
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r7
	ldi	r5 r1 0
	add	r1 r8 r12
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r7
	ldi	r4 r1 0
	bne	r4 r5 L_else_14527
	add	r1 r9 r12
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r7
	ldi	r4 r1 0
	bne	r4 r5 L_else_14534
	addi	r4 r12 -1
	add	r1 r11 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r7
	ldi	r4 r1 0
	bne	r4 r5 L_else_14536
	addi	r4 r12 1
	add	r1 r11 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r7
	ldi	r4 r1 0
	bne	r4 r5 L_else_14538
	addi	r4 r0 1
	jump	L_cont_14525
L_else_14538 : 
	addi	r4 r0 0
	jump	L_cont_14525
L_else_14536 : 
	addi	r4 r0 0
	jump	L_cont_14525
L_else_14534 : 
	addi	r4 r0 0
	jump	L_cont_14525
L_else_14527 : 
	addi	r4 r0 0
L_cont_14525 : 
	bne	r4 r0 L_else_14529
	add	r1 r11 r12
	ldi	r4 r1 0
	sti	r13 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r11 r2 4
	sti	r12 r2 5
	add	r5 r0 r7
	addi	r2 r2 6
	call	L_do_without_neighbors_2271
	addi	r2 r2 -6
	ldi	r13 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r11 r2 4
	ldi	r12 r2 5
	jump	L_cont_14501
L_else_14529 : 
	ldi	r4 r6 3
	add	r1 r4 r7
	ldi	r4 r1 0
	bne	r4 r0 L_else_14532
	jump	L_cont_14530
L_else_14532 : 
	sti	r13 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	sti	r10 r2 4
	sti	r12 r2 5
	add	r6 r0 r11
	add	r5 r0 r8
	add	r4 r0 r12
	add	r8 r0 r7
	add	r7 r0 r9
	addi	r2 r2 6
	call	L_calc_diffuse_using_5points_2265
	addi	r2 r2 -6
	ldi	r13 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	ldi	r10 r2 4
	ldi	r12 r2 5
L_cont_14530 : 
	addi	r4 r0 1
	sti	r13 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r11 r2 4
	sti	r12 r2 5
	add	r7 r0 r11
	add	r6 r0 r8
	add	r5 r0 r10
	add	r8 r0 r9
	add	r9 r0 r4
	add	r4 r0 r12
	addi	r2 r2 6
	call	L_try_exploit_neighbors_2287
	addi	r2 r2 -6
	ldi	r13 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r11 r2 4
	ldi	r12 r2 5
	jump	L_cont_14501
L_else_14524 : 
L_cont_14501 : 
	addi	r4 r0 32799
	fldi	f2 r4 0
	sti	r12 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r8 r2 3
	sti	r9 r2 4
	sti	r13 r2 5
	addi	r2 r2 6
	call	min_caml_print_float
	addi	r2 r2 -6
	ldi	r12 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	ldi	r9 r2 4
	ldi	r13 r2 5
	addi	r4 r0 32799
	fldi	f2 r4 1
	sti	r13 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r11 r2 4
	sti	r12 r2 5
	addi	r2 r2 6
	call	min_caml_print_float
	addi	r2 r2 -6
	ldi	r13 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r11 r2 4
	ldi	r12 r2 5
	addi	r4 r0 32799
	fldi	f2 r4 2
	sti	r12 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r8 r2 4
	sti	r13 r2 5
	addi	r2 r2 6
	call	min_caml_print_float
	addi	r2 r2 -6
	ldi	r12 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r8 r2 4
	ldi	r13 r2 5
	addi	r6 r12 1
	addi	r4 r0 32802
	ldi	r4 r4 0
	bgt	r4 r6 L_else_14505
	add	r4 r0 r13
	return
L_else_14505 : 
	addi	r5 r0 32799
	add	r1 r11 r6
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r4 r0 32802
	ldi	r5 r4 1
	addi	r4 r10 1
	bgt	r5 r4 L_else_14508
	addi	r4 r0 0
	jump	L_cont_14506
L_else_14508 : 
	bgt	r10 r0 L_else_14513
	addi	r4 r0 0
	jump	L_cont_14506
L_else_14513 : 
	addi	r4 r0 32802
	ldi	r5 r4 0
	addi	r4 r6 1
	bgt	r5 r4 L_else_14515
	addi	r4 r0 0
	jump	L_cont_14506
L_else_14515 : 
	bgt	r6 r0 L_else_14517
	addi	r4 r0 0
	jump	L_cont_14506
L_else_14517 : 
	addi	r4 r0 1
L_cont_14506 : 
	bne	r4 r0 L_else_14511
	add	r1 r11 r6
	ldi	r5 r1 0
	addi	r4 r0 0
	sti	r10 r2 0
	sti	r8 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	L_do_without_neighbors_2271
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r8 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
	jump	L_cont_14509
L_else_14511 : 
	addi	r4 r0 0
	sti	r10 r2 0
	sti	r8 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	add	r7 r0 r11
	add	r5 r0 r10
	add	r1 r0 r9
	add	r9 r0 r4
	add	r4 r0 r6
	add	r6 r0 r8
	add	r8 r0 r1
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2287
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r8 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
L_cont_14509 : 
	addi	r4 r0 32799
	fldi	f2 r4 0
	sti	r6 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	sti	r10 r2 4
	addi	r2 r2 5
	call	min_caml_print_float
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	ldi	r10 r2 4
	addi	r4 r0 32799
	fldi	f2 r4 1
	sti	r10 r2 0
	sti	r8 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	min_caml_print_float
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r8 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
	addi	r4 r0 32799
	fldi	f2 r4 2
	sti	r6 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	sti	r10 r2 4
	addi	r2 r2 5
	call	min_caml_print_float
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	ldi	r10 r2 4
	addi	r4 r6 1
	add	r7 r0 r11
	add	r6 r0 r8
	add	r5 r0 r10
	add	r8 r0 r9
	jump	L_scan_pixel_2314
L_scan_line_2320 : 
	add	r12 r0 r8
	add	r10 r0 r7
	add	r9 r0 r6
	add	r11 r0 r5
	add	r7 r0 r4
	addi	r4 r0 32802
	ldi	r4 r4 1
	bgt	r4 r7 L_else_14547
	add	r4 r0 r8
	return
L_else_14547 : 
	addi	r4 r0 32802
	ldi	r4 r4 1
	addi	r4 r4 -1
	bgt	r4 r7 L_else_14550
	jump	L_cont_14548
L_else_14550 : 
	addi	r4 r7 1
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	sti	r12 r2 5
	add	r6 r0 r12
	add	r5 r0 r4
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_pretrace_line_2310
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	ldi	r12 r2 5
L_cont_14548 : 
	addi	r6 r0 0
	addi	r4 r0 32802
	ldi	r4 r4 0
	bgt	r4 r0 L_else_14553
	jump	L_cont_14551
L_else_14553 : 
	addi	r5 r0 32799
	add	r1 r9 r6
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r4 r0 32802
	ldi	r5 r4 1
	addi	r4 r7 1
	bgt	r5 r4 L_else_14567
	addi	r4 r0 0
	jump	L_cont_14565
L_else_14567 : 
	bgt	r7 r0 L_else_14572
	addi	r4 r0 0
	jump	L_cont_14565
L_else_14572 : 
	addi	r4 r0 32802
	ldi	r5 r4 0
	addi	r4 r0 1
	bgt	r5 r4 L_else_14574
	addi	r4 r0 0
	jump	L_cont_14565
L_else_14574 : 
	addi	r4 r0 0
L_cont_14565 : 
	bne	r4 r0 L_else_14570
	add	r1 r9 r6
	ldi	r5 r1 0
	addi	r4 r0 0
	sti	r7 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r12 r2 4
	sti	r8 r2 5
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 6
	call	L_do_without_neighbors_2271
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r12 r2 4
	ldi	r8 r2 5
	jump	L_cont_14568
L_else_14570 : 
	addi	r4 r0 0
	sti	r7 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r12 r2 4
	sti	r8 r2 5
	add	r8 r0 r10
	add	r5 r0 r7
	add	r7 r0 r9
	add	r9 r0 r4
	add	r4 r0 r6
	add	r6 r0 r11
	addi	r2 r2 6
	call	L_try_exploit_neighbors_2287
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r12 r2 4
	ldi	r8 r2 5
L_cont_14568 : 
	addi	r4 r0 32799
	fldi	f2 r4 0
	sti	r8 r2 0
	sti	r12 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r11 r2 4
	sti	r7 r2 5
	addi	r2 r2 6
	call	min_caml_print_float
	addi	r2 r2 -6
	ldi	r8 r2 0
	ldi	r12 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r11 r2 4
	ldi	r7 r2 5
	addi	r4 r0 32799
	fldi	f2 r4 1
	sti	r7 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r12 r2 4
	sti	r8 r2 5
	addi	r2 r2 6
	call	min_caml_print_float
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r12 r2 4
	ldi	r8 r2 5
	addi	r4 r0 32799
	fldi	f2 r4 2
	sti	r8 r2 0
	sti	r12 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r11 r2 4
	sti	r7 r2 5
	addi	r2 r2 6
	call	min_caml_print_float
	addi	r2 r2 -6
	ldi	r8 r2 0
	ldi	r12 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r11 r2 4
	ldi	r7 r2 5
	addi	r4 r0 1
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r8 r2 4
	sti	r12 r2 5
	add	r8 r0 r10
	add	r6 r0 r11
	add	r5 r0 r7
	add	r7 r0 r9
	addi	r2 r2 6
	call	L_scan_pixel_2314
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r8 r2 4
	ldi	r12 r2 5
L_cont_14551 : 
	addi	r6 r7 1
	addi	r4 r12 2
	addi	r5 r0 5
	bgt	r5 r4 L_else_14556
	addi	r5 r4 -5
	jump	L_cont_14554
L_else_14556 : 
	add	r5 r0 r4
L_cont_14554 : 
	addi	r4 r0 32802
	ldi	r4 r4 1
	bgt	r4 r6 L_else_14558
	add	r4 r0 r8
	return
L_else_14558 : 
	addi	r4 r0 32802
	ldi	r4 r4 1
	addi	r4 r4 -1
	bgt	r4 r6 L_else_14561
	jump	L_cont_14559
L_else_14561 : 
	addi	r4 r6 1
	sti	r5 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	add	r6 r0 r5
	add	r5 r0 r4
	add	r4 r0 r11
	addi	r2 r2 5
	call	L_pretrace_line_2310
	addi	r2 r2 -5
	ldi	r5 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
L_cont_14559 : 
	addi	r4 r0 0
	sti	r6 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r5 r2 4
	add	r8 r0 r11
	add	r7 r0 r10
	add	r5 r0 r6
	add	r6 r0 r9
	addi	r2 r2 5
	call	L_scan_pixel_2314
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r5 r2 4
	addi	r6 r6 1
	addi	r5 r5 2
	addi	r4 r0 5
	bgt	r4 r5 L_else_14564
	addi	r4 r5 -5
	jump	L_cont_14562
L_else_14564 : 
	add	r4 r0 r5
L_cont_14562 : 
	add	r8 r0 r4
	add	r7 r0 r9
	add	r5 r0 r10
	add	r4 r0 r6
	add	r6 r0 r11
	jump	L_scan_line_2320
L_create_float5x3array_2326 : 
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	call	min_caml_create_array
	add	r5 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r5 r2 0
	addi	r2 r2 1
	call	min_caml_create_float_array
	addi	r2 r2 -1
	ldi	r5 r2 0
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r5 r2 0
	addi	r2 r2 1
	call	min_caml_create_float_array
	addi	r2 r2 -1
	ldi	r5 r2 0
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r5 r2 0
	addi	r2 r2 1
	call	min_caml_create_float_array
	addi	r2 r2 -1
	ldi	r5 r2 0
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r5 r2 0
	addi	r2 r2 1
	call	min_caml_create_float_array
	addi	r2 r2 -1
	ldi	r5 r2 0
	sti	r4 r5 4
	add	r4 r0 r5
	return
L_create_pixel_2328 : 
	addi	r4 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r11 r0 r4
	sti	r11 r2 0
	addi	r2 r2 1
	call	L_create_float5x3array_2326
	addi	r2 r2 -1
	add	r10 r0 r4
	ldi	r11 r2 0
	addi	r4 r0 5
	addi	r5 r0 0
	sti	r11 r2 0
	sti	r10 r2 1
	addi	r2 r2 2
	call	min_caml_create_array
	addi	r2 r2 -2
	add	r9 r0 r4
	ldi	r11 r2 0
	ldi	r10 r2 1
	addi	r5 r0 5
	addi	r4 r0 0
	sti	r9 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	add	r8 r0 r4
	ldi	r9 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r8 r2 3
	addi	r2 r2 4
	call	L_create_float5x3array_2326
	addi	r2 r2 -4
	add	r7 r0 r4
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r8 r2 3
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r11 r2 4
	addi	r2 r2 5
	call	L_create_float5x3array_2326
	addi	r2 r2 -5
	add	r6 r0 r4
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r11 r2 4
	addi	r4 r0 1
	addi	r5 r0 0
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r8 r2 3
	sti	r7 r2 4
	sti	r6 r2 5
	addi	r2 r2 6
	call	min_caml_create_array
	addi	r2 r2 -6
	add	r5 r0 r4
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r8 r2 3
	ldi	r7 r2 4
	ldi	r6 r2 5
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r8 r2 3
	sti	r9 r2 4
	sti	r10 r2 5
	sti	r11 r2 6
	addi	r2 r2 7
	call	L_create_float5x3array_2326
	addi	r2 r2 -7
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
	ldi	r9 r2 4
	ldi	r10 r2 5
	ldi	r11 r2 6
	sti	r11 r3 0
	sti	r10 r3 1
	sti	r9 r3 2
	sti	r8 r3 3
	sti	r7 r3 4
	sti	r6 r3 5
	sti	r5 r3 6
	sti	r4 r3 7
	add	r4 r0 r3
	addi	r3 r3 8
	return
L_init_line_elements_2330 : 
	add	r6 r0 r4
	bgt	r0 r5 L_else_14579
	sti	r5 r2 0
	sti	r6 r2 1
	addi	r2 r2 2
	call	L_create_pixel_2328
	addi	r2 r2 -2
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r1 r6 r5
	sti	r4 r1 0
	addi	r4 r5 -1
	bgt	r0 r4 L_else_14581
	sti	r4 r2 0
	sti	r6 r2 1
	addi	r2 r2 2
	call	L_create_pixel_2328
	addi	r2 r2 -2
	add	r5 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	add	r1 r6 r4
	sti	r5 r1 0
	addi	r4 r4 -1
	bgt	r0 r4 L_else_14583
	sti	r4 r2 0
	sti	r6 r2 1
	addi	r2 r2 2
	call	L_create_pixel_2328
	addi	r2 r2 -2
	add	r5 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	add	r1 r6 r4
	sti	r5 r1 0
	addi	r4 r4 -1
	bgt	r0 r4 L_else_14585
	sti	r4 r2 0
	sti	r6 r2 1
	addi	r2 r2 2
	call	L_create_pixel_2328
	addi	r2 r2 -2
	add	r5 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	add	r1 r6 r4
	sti	r5 r1 0
	addi	r4 r4 -1
	add	r5 r0 r4
	add	r4 r0 r6
	jump	L_init_line_elements_2330
L_else_14585 : 
	add	r4 r0 r6
	return
L_else_14583 : 
	add	r4 r0 r6
	return
L_else_14581 : 
	add	r4 r0 r6
	return
L_else_14579 : 
	add	r4 r0 r6
	return
L_calc_dirvec_2340 : 
	add	r7 r0 r6
	add	r8 r0 r4
	fadd	f9 f0 f5
	fadd	f8 f0 f4
	fadd	f6 f0 f3
	fadd	f5 f0 f2
	addi	r4 r0 5
	bgt	r4 r8 L_else_14588
	fmul	f2 f5 f5
	fmul	f3 f6 f6
	fadd	f2 f2 f3
	fldi	f3 r0 12
	fadd	f3 f2 f3
	fldi	f4 r0 28
	fldi	f2 r0 12
	fbgt	f3 f2 L_else_14591
	fldi	f2 r0 12
	jump	L_cont_14589
L_else_14591 : 
	fldi	f2 r0 12
	fdiv	f2 f2 f3
L_cont_14589 : 
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	fsti	f5 r2 3
	fsti	f6 r2 4
	fsti	f3 r2 5
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 6
	call	L_isqrt_1892
	addi	r2 r2 -6
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	fldi	f5 r2 3
	fldi	f6 r2 4
	fldi	f3 r2 5
	fmul	f2 f3 f2
	fdiv	f7 f5 f2
	fdiv	f6 f6 f2
	fldi	f3 r0 12
	fdiv	f5 f3 f2
	addi	r4 r0 32820
	add	r1 r4 r5
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
	fsub	f2 f0 f7
	fsub	f3 f0 f6
	fsub	f4 f0 f5
	fsti	f2 r4 0
	fsti	f3 r4 1
	fsti	f4 r4 2
	addi	r4 r7 41
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f3 f0 f7
	fsub	f2 f0 f5
	fsti	f3 r4 0
	fsti	f2 r4 1
	fsti	f6 r4 2
	addi	r4 r7 81
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f5
	fsti	f2 r4 0
	fsti	f7 r4 1
	fsti	f6 r4 2
	add	r4 r0 r6
	return
L_else_14588 : 
	fmul	f3 f6 f6
	fldi	f2 r0 50
	fadd	f6 f3 f2
	fldi	f3 r0 28
	fldi	f2 r0 12
	fbgt	f6 f2 L_else_14594
	fldi	f5 r0 12
	jump	L_cont_14592
L_else_14594 : 
	fldi	f2 r0 12
	fdiv	f5 f2 f6
L_cont_14592 : 
	fldi	f2 r0 26
	fmul	f4 f2 f5
	fsub	f2 f5 f3
	fbgt	f0 f2 L_else_14597
	fadd	f2 f0 f2
	jump	L_cont_14595
L_else_14597 : 
	fsub	f2 f0 f2
L_cont_14595 : 
	fbgt	f4 f2 L_else_14600
	fldi	f3 r0 27
	fmul	f2 f6 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f3 f5 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	sti	r5 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	fsti	f9 r2 3
	fsti	f8 r2 4
	fsti	f6 r2 5
	fadd	f4 f0 f2
	fadd	f3 f0 f5
	fadd	f2 f0 f6
	addi	r2 r2 6
	call	L_isqrt_1892
	addi	r2 r2 -6
	ldi	r5 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	fldi	f9 r2 3
	fldi	f8 r2 4
	fldi	f6 r2 5
	jump	L_cont_14598
L_else_14600 : 
	fadd	f2 f0 f5
L_cont_14598 : 
	fmul	f4 f6 f2
	fldi	f2 r0 12
	fdiv	f2 f2 f4
	sti	r5 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	fsti	f9 r2 3
	fsti	f4 r2 4
	fsti	f8 r2 5
	addi	r2 r2 6
	call	L_atan_1890
	addi	r2 r2 -6
	ldi	r5 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	fldi	f9 r2 3
	fldi	f4 r2 4
	fldi	f8 r2 5
	fmul	f2 f2 f8
	sti	r5 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	fsti	f9 r2 3
	fsti	f8 r2 4
	fsti	f4 r2 5
	fsti	f2 r2 6
	addi	r2 r2 7
	call	L_sin_1886
	addi	r2 r2 -7
	fadd	f3 f0 f2
	ldi	r5 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	fldi	f9 r2 3
	fldi	f8 r2 4
	fldi	f4 r2 5
	fldi	f2 r2 6
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r5 r2 2
	fsti	f4 r2 3
	fsti	f8 r2 4
	fsti	f9 r2 5
	fsti	f3 r2 6
	addi	r2 r2 7
	call	L_cos_1888
	addi	r2 r2 -7
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r5 r2 2
	fldi	f4 r2 3
	fldi	f8 r2 4
	fldi	f9 r2 5
	fldi	f3 r2 6
	fdiv	f2 f3 f2
	fmul	f7 f2 f4
	addi	r4 r8 1
	fmul	f3 f7 f7
	fldi	f2 r0 50
	fadd	f6 f3 f2
	fldi	f4 r0 28
	fldi	f2 r0 12
	fbgt	f6 f2 L_else_14603
	fldi	f5 r0 12
	jump	L_cont_14601
L_else_14603 : 
	fldi	f2 r0 12
	fdiv	f5 f2 f6
L_cont_14601 : 
	fldi	f2 r0 26
	fmul	f3 f2 f5
	fsub	f2 f5 f4
	fbgt	f0 f2 L_else_14606
	fadd	f2 f0 f2
	jump	L_cont_14604
L_else_14606 : 
	fsub	f2 f0 f2
L_cont_14604 : 
	fbgt	f3 f2 L_else_14609
	fldi	f3 r0 27
	fmul	f2 f6 f5
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fmul	f3 f5 f2
	fldi	f2 r0 28
	fdiv	f2 f3 f2
	sti	r7 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	fsti	f7 r2 3
	fsti	f8 r2 4
	fsti	f9 r2 5
	fsti	f6 r2 6
	fadd	f4 f0 f2
	fadd	f3 f0 f5
	fadd	f2 f0 f6
	addi	r2 r2 7
	call	L_isqrt_1892
	addi	r2 r2 -7
	ldi	r7 r2 0
	ldi	r5 r2 1
	ldi	r4 r2 2
	fldi	f7 r2 3
	fldi	f8 r2 4
	fldi	f9 r2 5
	fldi	f6 r2 6
	jump	L_cont_14607
L_else_14609 : 
	fadd	f2 f0 f5
L_cont_14607 : 
	fmul	f4 f6 f2
	fldi	f2 r0 12
	fdiv	f2 f2 f4
	sti	r7 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	fsti	f7 r2 3
	fsti	f8 r2 4
	fsti	f4 r2 5
	fsti	f9 r2 6
	addi	r2 r2 7
	call	L_atan_1890
	addi	r2 r2 -7
	ldi	r7 r2 0
	ldi	r5 r2 1
	ldi	r4 r2 2
	fldi	f7 r2 3
	fldi	f8 r2 4
	fldi	f4 r2 5
	fldi	f9 r2 6
	fmul	f2 f2 f9
	sti	r7 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	fsti	f7 r2 3
	fsti	f8 r2 4
	fsti	f9 r2 5
	fsti	f4 r2 6
	fsti	f2 r2 7
	addi	r2 r2 8
	call	L_sin_1886
	addi	r2 r2 -8
	fadd	f3 f0 f2
	ldi	r7 r2 0
	ldi	r5 r2 1
	ldi	r4 r2 2
	fldi	f7 r2 3
	fldi	f8 r2 4
	fldi	f9 r2 5
	fldi	f4 r2 6
	fldi	f2 r2 7
	sti	r4 r2 0
	sti	r5 r2 1
	sti	r7 r2 2
	fsti	f4 r2 3
	fsti	f9 r2 4
	fsti	f8 r2 5
	fsti	f7 r2 6
	fsti	f3 r2 7
	addi	r2 r2 8
	call	L_cos_1888
	addi	r2 r2 -8
	ldi	r4 r2 0
	ldi	r5 r2 1
	ldi	r7 r2 2
	fldi	f4 r2 3
	fldi	f9 r2 4
	fldi	f8 r2 5
	fldi	f7 r2 6
	fldi	f3 r2 7
	fdiv	f2 f3 f2
	fmul	f2 f2 f4
	add	r6 r0 r7
	fadd	f5 f0 f9
	fadd	f4 f0 f8
	fadd	f3 f0 f2
	fadd	f2 f0 f7
	jump	L_calc_dirvec_2340
L_calc_dirvecs_2348 : 
	add	r8 r0 r5
	fadd	f5 f0 f2
	bgt	r0 r4 L_else_14612
	foi	f2 r4
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f2 f2 f3
	addi	r5 r0 0
	fldi	f4 r0 30
	fldi	f3 r0 30
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	fsti	f5 r2 3
	add	r4 r0 r5
	add	r5 r0 r8
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 4
	call	L_calc_dirvec_2340
	addi	r2 r2 -4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	fldi	f5 r2 3
	foi	f3 r4
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 50
	fadd	f2 f3 f2
	addi	r5 r0 0
	fldi	f4 r0 30
	fldi	f3 r0 30
	addi	r7 r6 2
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	fsti	f5 r2 3
	add	r6 r0 r7
	add	r4 r0 r5
	add	r5 r0 r8
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f1
	addi	r2 r2 4
	call	L_calc_dirvec_2340
	addi	r2 r2 -4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	fldi	f5 r2 3
	addi	r5 r4 -1
	addi	r7 r8 1
	addi	r4 r0 5
	bgt	r4 r7 L_else_14615
	addi	r4 r7 -5
	jump	L_cont_14613
L_else_14615 : 
	add	r4 r0 r7
L_cont_14613 : 
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	fadd	f2 f0 f5
	jump	L_calc_dirvecs_2348
L_else_14612 : 
	add	r4 r0 r5
	return
L_calc_dirvec_rows_2353 : 
	add	r9 r0 r6
	add	r6 r0 r5
	add	r5 r0 r4
	bgt	r0 r5 L_else_14618
	foi	f2 r5
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f2 f2 f3
	addi	r4 r0 4
	sti	r5 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	sti	r6 r2 3
	add	r5 r0 r6
	add	r6 r0 r9
	addi	r2 r2 4
	call	L_calc_dirvecs_2348
	addi	r2 r2 -4
	ldi	r5 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	ldi	r6 r2 3
	addi	r4 r5 -1
	addi	r5 r6 2
	addi	r6 r0 5
	bgt	r6 r5 L_else_14621
	addi	r8 r5 -5
	jump	L_cont_14619
L_else_14621 : 
	add	r8 r0 r5
L_cont_14619 : 
	addi	r9 r9 4
	bgt	r0 r4 L_else_14623
	foi	f3 r4
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f2 f3 f2
	addi	r5 r0 4
	sti	r4 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	add	r6 r0 r9
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 3
	call	L_calc_dirvecs_2348
	addi	r2 r2 -3
	ldi	r4 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	addi	r6 r4 -1
	addi	r4 r8 2
	addi	r5 r0 5
	bgt	r5 r4 L_else_14626
	addi	r5 r4 -5
	jump	L_cont_14624
L_else_14626 : 
	add	r5 r0 r4
L_cont_14624 : 
	addi	r4 r9 4
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r1
	jump	L_calc_dirvec_rows_2353
L_else_14623 : 
	add	r4 r0 r7
	return
L_else_14618 : 
	add	r4 r0 r7
	return
L_create_dirvec_elements_2359 : 
	add	r6 r0 r5
	add	r7 r0 r4
	bgt	r0 r6 L_else_14629
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	min_caml_create_float_array
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	addi	r5 r0 32816
	ldi	r5 r5 0
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	sti	r4 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	min_caml_create_array
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	ldi	r4 r2 3
	sti	r4 r3 0
	sti	r5 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r7 r6
	sti	r4 r1 0
	addi	r6 r6 -1
	bgt	r0 r6 L_else_14631
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	min_caml_create_float_array
	addi	r2 r2 -3
	add	r5 r0 r4
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	sti	r5 r2 3
	addi	r2 r2 4
	call	min_caml_create_array
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	ldi	r5 r2 3
	sti	r5 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r7 r6
	sti	r4 r1 0
	addi	r6 r6 -1
	bgt	r0 r6 L_else_14633
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	min_caml_create_float_array
	addi	r2 r2 -3
	add	r5 r0 r4
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	sti	r5 r2 3
	addi	r2 r2 4
	call	min_caml_create_array
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	ldi	r5 r2 3
	sti	r5 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r7 r6
	sti	r4 r1 0
	addi	r6 r6 -1
	bgt	r0 r6 L_else_14635
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r6 r2 0
	sti	r7 r2 1
	addi	r2 r2 2
	call	min_caml_create_float_array
	addi	r2 r2 -2
	add	r5 r0 r4
	ldi	r6 r2 0
	ldi	r7 r2 1
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	sti	r5 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r7 r6
	sti	r4 r1 0
	addi	r4 r6 -1
	add	r5 r0 r4
	add	r4 r0 r7
	jump	L_create_dirvec_elements_2359
L_else_14635 : 
	add	r4 r0 r8
	return
L_else_14633 : 
	add	r4 r0 r8
	return
L_else_14631 : 
	add	r4 r0 r8
	return
L_else_14629 : 
	add	r4 r0 r8
	return
L_create_dirvecs_2362 : 
	add	r8 r0 r4
	bgt	r0 r8 L_else_14638
	addi	r6 r0 32820
	addi	r7 r0 120
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	addi	r2 r2 4
	call	min_caml_create_float_array
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	addi	r5 r0 32816
	ldi	r5 r5 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	sti	r4 r2 4
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	min_caml_create_array
	addi	r2 r2 -5
	add	r5 r0 r4
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r6 r2 3
	ldi	r4 r2 4
	sti	r4 r3 0
	sti	r5 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	sti	r9 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r5 r0 r4
	add	r4 r0 r7
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	add	r1 r6 r8
	sti	r4 r1 0
	addi	r4 r0 32820
	add	r1 r4 r8
	ldi	r7 r1 0
	addi	r6 r0 118
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r8 r2 0
	sti	r9 r2 1
	sti	r6 r2 2
	sti	r7 r2 3
	addi	r2 r2 4
	call	min_caml_create_float_array
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r8 r2 0
	ldi	r9 r2 1
	ldi	r6 r2 2
	ldi	r7 r2 3
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r9 r2 2
	sti	r8 r2 3
	sti	r5 r2 4
	addi	r2 r2 5
	call	min_caml_create_array
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r9 r2 2
	ldi	r8 r2 3
	ldi	r5 r2 4
	sti	r5 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r7 r6
	sti	r4 r1 0
	addi	r5 r0 117
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r9 r2 0
	sti	r8 r2 1
	sti	r5 r2 2
	sti	r7 r2 3
	addi	r2 r2 4
	call	min_caml_create_float_array
	addi	r2 r2 -4
	add	r6 r0 r4
	ldi	r9 r2 0
	ldi	r8 r2 1
	ldi	r5 r2 2
	ldi	r7 r2 3
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r5 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	add	r5 r0 r6
	addi	r2 r2 5
	call	min_caml_create_array
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r5 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
	sti	r6 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r7 r5
	sti	r4 r1 0
	addi	r6 r0 116
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r8 r2 0
	sti	r9 r2 1
	sti	r6 r2 2
	sti	r7 r2 3
	addi	r2 r2 4
	call	min_caml_create_float_array
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r8 r2 0
	ldi	r9 r2 1
	ldi	r6 r2 2
	ldi	r7 r2 3
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r9 r2 2
	sti	r8 r2 3
	sti	r5 r2 4
	addi	r2 r2 5
	call	min_caml_create_array
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r9 r2 2
	ldi	r8 r2 3
	ldi	r5 r2 4
	sti	r5 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r7 r6
	sti	r4 r1 0
	addi	r4 r0 115
	sti	r8 r2 0
	sti	r9 r2 1
	add	r5 r0 r4
	add	r4 r0 r7
	addi	r2 r2 2
	call	L_create_dirvec_elements_2359
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r9 r2 1
	addi	r8 r8 -1
	bgt	r0 r8 L_else_14640
	addi	r6 r0 32820
	addi	r7 r0 120
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	min_caml_create_float_array
	addi	r2 r2 -3
	add	r5 r0 r4
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	sti	r5 r2 3
	addi	r2 r2 4
	call	min_caml_create_array
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r5 r2 3
	sti	r5 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	sti	r8 r2 0
	sti	r6 r2 1
	add	r5 r0 r4
	add	r4 r0 r7
	addi	r2 r2 2
	call	min_caml_create_array
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r6 r2 1
	add	r1 r6 r8
	sti	r4 r1 0
	addi	r4 r0 32820
	add	r1 r4 r8
	ldi	r7 r1 0
	addi	r6 r0 118
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	min_caml_create_float_array
	addi	r2 r2 -3
	add	r5 r0 r4
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	sti	r5 r2 3
	addi	r2 r2 4
	call	min_caml_create_array
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	ldi	r5 r2 3
	sti	r5 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r7 r6
	sti	r4 r1 0
	addi	r5 r0 117
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r8 r2 0
	sti	r5 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	min_caml_create_float_array
	addi	r2 r2 -3
	add	r6 r0 r4
	ldi	r8 r2 0
	ldi	r5 r2 1
	ldi	r7 r2 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r5 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	add	r5 r0 r6
	addi	r2 r2 4
	call	min_caml_create_array
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r5 r2 1
	ldi	r8 r2 2
	ldi	r6 r2 3
	sti	r6 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r7 r5
	sti	r4 r1 0
	addi	r4 r0 116
	sti	r8 r2 0
	add	r5 r0 r4
	add	r4 r0 r7
	addi	r2 r2 1
	call	L_create_dirvec_elements_2359
	addi	r2 r2 -1
	ldi	r8 r2 0
	addi	r4 r8 -1
	jump	L_create_dirvecs_2362
L_else_14640 : 
	add	r4 r0 r9
	return
L_else_14638 : 
	add	r4 r0 r9
	return
L_init_dirvec_constants_2364 : 
	add	r6 r0 r5
	add	r13 r0 r4
	bgt	r0 r6 L_else_14643
	add	r1 r13 r6
	ldi	r5 r1 0
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r6 r2 0
	sti	r13 r2 1
	sti	r12 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r13 r2 1
	ldi	r12 r2 2
	addi	r7 r6 -1
	bgt	r0 r7 L_else_14645
	add	r1 r13 r7
	ldi	r11 r1 0
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r6 r4 -1
	bgt	r0 r6 L_else_14648
	addi	r4 r0 33714
	add	r1 r4 r6
	ldi	r8 r1 0
	ldi	r10 r11 1
	ldi	r9 r11 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_14663
	sti	r7 r2 0
	sti	r13 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r6 r2 4
	sti	r10 r2 5
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_setup_rect_table_2137
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r13 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r6 r2 4
	ldi	r10 r2 5
	add	r1 r10 r6
	sti	r4 r1 0
	jump	L_cont_14661
L_else_14663 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_14665
	sti	r7 r2 0
	sti	r13 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r6 r2 4
	sti	r10 r2 5
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_setup_surface_table_2140
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r13 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r6 r2 4
	ldi	r10 r2 5
	add	r1 r10 r6
	sti	r4 r1 0
	jump	L_cont_14661
L_else_14665 : 
	sti	r7 r2 0
	sti	r13 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r6 r2 4
	sti	r10 r2 5
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_setup_second_table_2143
	addi	r2 r2 -6
	ldi	r7 r2 0
	ldi	r13 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r6 r2 4
	ldi	r10 r2 5
	add	r1 r10 r6
	sti	r4 r1 0
L_cont_14661 : 
	addi	r4 r6 -1
	sti	r7 r2 0
	sti	r13 r2 1
	sti	r12 r2 2
	add	r5 r0 r4
	add	r4 r0 r11
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r13 r2 1
	ldi	r12 r2 2
	jump	L_cont_14646
L_else_14648 : 
L_cont_14646 : 
	addi	r5 r7 -1
	bgt	r0 r5 L_else_14650
	add	r1 r13 r5
	ldi	r6 r1 0
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r5 r2 0
	sti	r12 r2 1
	sti	r13 r2 2
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r5 r2 0
	ldi	r12 r2 1
	ldi	r13 r2 2
	addi	r11 r5 -1
	bgt	r0 r11 L_else_14652
	add	r1 r13 r11
	ldi	r8 r1 0
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r10 r4 -1
	bgt	r0 r10 L_else_14655
	addi	r4 r0 33714
	add	r1 r4 r10
	ldi	r5 r1 0
	ldi	r7 r8 1
	ldi	r6 r8 0
	ldi	r9 r5 1
	addi	r4 r0 1
	bne	r9 r4 L_else_14658
	sti	r11 r2 0
	sti	r13 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r7 r2 4
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_setup_rect_table_2137
	addi	r2 r2 -5
	ldi	r11 r2 0
	ldi	r13 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r7 r2 4
	add	r1 r7 r10
	sti	r4 r1 0
	jump	L_cont_14656
L_else_14658 : 
	addi	r4 r0 2
	bne	r9 r4 L_else_14660
	sti	r11 r2 0
	sti	r13 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r7 r2 4
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_setup_surface_table_2140
	addi	r2 r2 -5
	ldi	r11 r2 0
	ldi	r13 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r7 r2 4
	add	r1 r7 r10
	sti	r4 r1 0
	jump	L_cont_14656
L_else_14660 : 
	sti	r11 r2 0
	sti	r13 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r7 r2 4
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_setup_second_table_2143
	addi	r2 r2 -5
	ldi	r11 r2 0
	ldi	r13 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r7 r2 4
	add	r1 r7 r10
	sti	r4 r1 0
L_cont_14656 : 
	addi	r4 r10 -1
	sti	r11 r2 0
	sti	r13 r2 1
	add	r5 r0 r4
	add	r4 r0 r8
	addi	r2 r2 2
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -2
	ldi	r11 r2 0
	ldi	r13 r2 1
	jump	L_cont_14653
L_else_14655 : 
L_cont_14653 : 
	addi	r4 r11 -1
	add	r5 r0 r4
	add	r4 r0 r13
	jump	L_init_dirvec_constants_2364
L_else_14652 : 
	add	r4 r0 r12
	return
L_else_14650 : 
	add	r4 r0 r12
	return
L_else_14645 : 
	add	r4 r0 r12
	return
L_else_14643 : 
	add	r4 r0 r12
	return
L_init_vecset_constants_2367 : 
	add	r12 r0 r4
	bgt	r0 r12 L_else_14668
	addi	r4 r0 32820
	add	r1 r4 r12
	ldi	r11 r1 0
	addi	r4 r0 119
	add	r1 r11 r4
	ldi	r10 r1 0
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	bgt	r0 r4 L_else_14671
	addi	r5 r0 33714
	add	r1 r5 r4
	ldi	r7 r1 0
	ldi	r9 r10 1
	ldi	r8 r10 0
	ldi	r5 r7 1
	addi	r6 r0 1
	bne	r5 r6 L_else_14692
	sti	r13 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r4 r2 4
	sti	r9 r2 5
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_setup_rect_table_2137
	addi	r2 r2 -6
	add	r5 r0 r4
	ldi	r13 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r4 r2 4
	ldi	r9 r2 5
	add	r1 r9 r4
	sti	r5 r1 0
	jump	L_cont_14690
L_else_14692 : 
	addi	r6 r0 2
	bne	r5 r6 L_else_14694
	sti	r13 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r4 r2 4
	sti	r9 r2 5
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_setup_surface_table_2140
	addi	r2 r2 -6
	add	r5 r0 r4
	ldi	r13 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r4 r2 4
	ldi	r9 r2 5
	add	r1 r9 r4
	sti	r5 r1 0
	jump	L_cont_14690
L_else_14694 : 
	sti	r13 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r4 r2 4
	sti	r9 r2 5
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_setup_second_table_2143
	addi	r2 r2 -6
	add	r5 r0 r4
	ldi	r13 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r4 r2 4
	ldi	r9 r2 5
	add	r1 r9 r4
	sti	r5 r1 0
L_cont_14690 : 
	addi	r4 r4 -1
	sti	r13 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	add	r5 r0 r4
	add	r4 r0 r10
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r13 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	jump	L_cont_14669
L_else_14671 : 
L_cont_14669 : 
	addi	r4 r0 118
	add	r1 r11 r4
	ldi	r5 r1 0
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r13 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r13 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	addi	r4 r0 117
	add	r1 r11 r4
	ldi	r8 r1 0
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r10 r4 -1
	bgt	r0 r10 L_else_14674
	addi	r4 r0 33714
	add	r1 r4 r10
	ldi	r5 r1 0
	ldi	r7 r8 1
	ldi	r6 r8 0
	ldi	r9 r5 1
	addi	r4 r0 1
	bne	r9 r4 L_else_14687
	sti	r12 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	sti	r10 r2 4
	sti	r7 r2 5
	add	r4 r0 r6
	addi	r2 r2 6
	call	L_setup_rect_table_2137
	addi	r2 r2 -6
	ldi	r12 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	ldi	r10 r2 4
	ldi	r7 r2 5
	add	r1 r7 r10
	sti	r4 r1 0
	jump	L_cont_14685
L_else_14687 : 
	addi	r4 r0 2
	bne	r9 r4 L_else_14689
	sti	r12 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	sti	r10 r2 4
	sti	r7 r2 5
	add	r4 r0 r6
	addi	r2 r2 6
	call	L_setup_surface_table_2140
	addi	r2 r2 -6
	ldi	r12 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	ldi	r10 r2 4
	ldi	r7 r2 5
	add	r1 r7 r10
	sti	r4 r1 0
	jump	L_cont_14685
L_else_14689 : 
	sti	r12 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	sti	r8 r2 3
	sti	r10 r2 4
	sti	r7 r2 5
	add	r4 r0 r6
	addi	r2 r2 6
	call	L_setup_second_table_2143
	addi	r2 r2 -6
	ldi	r12 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	ldi	r8 r2 3
	ldi	r10 r2 4
	ldi	r7 r2 5
	add	r1 r7 r10
	sti	r4 r1 0
L_cont_14685 : 
	addi	r4 r10 -1
	sti	r12 r2 0
	sti	r13 r2 1
	sti	r11 r2 2
	add	r5 r0 r4
	add	r4 r0 r8
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r12 r2 0
	ldi	r13 r2 1
	ldi	r11 r2 2
	jump	L_cont_14672
L_else_14674 : 
L_cont_14672 : 
	addi	r4 r0 116
	sti	r12 r2 0
	sti	r13 r2 1
	add	r5 r0 r4
	add	r4 r0 r11
	addi	r2 r2 2
	call	L_init_dirvec_constants_2364
	addi	r2 r2 -2
	ldi	r12 r2 0
	ldi	r13 r2 1
	addi	r12 r12 -1
	bgt	r0 r12 L_else_14676
	addi	r4 r0 32820
	add	r1 r4 r12
	ldi	r9 r1 0
	addi	r4 r0 119
	add	r1 r9 r4
	ldi	r5 r1 0
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r12 r2 0
	sti	r9 r2 1
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -2
	ldi	r12 r2 0
	ldi	r9 r2 1
	addi	r4 r0 118
	add	r1 r9 r4
	ldi	r8 r1 0
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r11 r4 -1
	bgt	r0 r11 L_else_14679
	addi	r4 r0 33714
	add	r1 r4 r11
	ldi	r5 r1 0
	ldi	r7 r8 1
	ldi	r6 r8 0
	ldi	r10 r5 1
	addi	r4 r0 1
	bne	r10 r4 L_else_14682
	sti	r12 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_setup_rect_table_2137
	addi	r2 r2 -5
	ldi	r12 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	add	r1 r7 r11
	sti	r4 r1 0
	jump	L_cont_14680
L_else_14682 : 
	addi	r4 r0 2
	bne	r10 r4 L_else_14684
	sti	r12 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_setup_surface_table_2140
	addi	r2 r2 -5
	ldi	r12 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	add	r1 r7 r11
	sti	r4 r1 0
	jump	L_cont_14680
L_else_14684 : 
	sti	r12 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_setup_second_table_2143
	addi	r2 r2 -5
	ldi	r12 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	add	r1 r7 r11
	sti	r4 r1 0
L_cont_14680 : 
	addi	r4 r11 -1
	sti	r12 r2 0
	sti	r9 r2 1
	add	r5 r0 r4
	add	r4 r0 r8
	addi	r2 r2 2
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -2
	ldi	r12 r2 0
	ldi	r9 r2 1
	jump	L_cont_14677
L_else_14679 : 
L_cont_14677 : 
	addi	r4 r0 117
	sti	r12 r2 0
	add	r5 r0 r4
	add	r4 r0 r9
	addi	r2 r2 1
	call	L_init_dirvec_constants_2364
	addi	r2 r2 -1
	ldi	r12 r2 0
	addi	r4 r12 -1
	jump	L_init_vecset_constants_2367
L_else_14676 : 
	add	r4 r0 r13
	return
L_else_14668 : 
	add	r4 r0 r13
	return
min_caml_start : 
	addi	r6 r0 128
	addi	r5 r0 128
	addi	r4 r0 32802
	sti	r6 r4 0
	addi	r4 r0 32802
	sti	r5 r4 1
	addi	r4 r0 32804
	addi	r5 r0 64
	sti	r5 r4 0
	addi	r4 r0 32804
	addi	r5 r0 64
	sti	r5 r4 1
	addi	r4 r0 32806
	fldi	f3 r0 55
	foi	f2 r6
	fdiv	f2 f3 f2
	fsti	f2 r4 0
	addi	r4 r0 32802
	ldi	r4 r4 0
	sti	r4 r2 0
	addi	r2 r2 1
	call	L_create_pixel_2328
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r4 r2 0
	call	min_caml_create_array
	add	r5 r0 r4
	addi	r4 r0 32802
	ldi	r4 r4 0
	addi	r6 r4 -2
	bgt	r0 r6 L_else_14697
	sti	r6 r2 0
	sti	r5 r2 1
	addi	r2 r2 2
	call	L_create_pixel_2328
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r5 r2 1
	add	r1 r5 r6
	sti	r4 r1 0
	addi	r4 r6 -1
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	call	L_init_line_elements_2330
	add	r9 r0 r4
	jump	L_cont_14695
L_else_14697 : 
	add	r9 r0 r5
L_cont_14695 : 
	addi	r4 r0 32802
	ldi	r5 r4 0
	sti	r9 r2 0
	sti	r5 r2 1
	addi	r2 r2 2
	call	L_create_pixel_2328
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r5 r2 1
	sti	r9 r2 0
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r9 r2 0
	addi	r4 r0 32802
	ldi	r4 r4 0
	addi	r6 r4 -2
	bgt	r0 r6 L_else_14700
	sti	r9 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	addi	r2 r2 3
	call	L_create_pixel_2328
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	add	r1 r5 r6
	sti	r4 r1 0
	addi	r4 r6 -1
	sti	r9 r2 0
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 1
	call	L_init_line_elements_2330
	addi	r2 r2 -1
	add	r10 r0 r4
	ldi	r9 r2 0
	jump	L_cont_14698
L_else_14700 : 
	add	r10 r0 r5
L_cont_14698 : 
	addi	r4 r0 32802
	ldi	r5 r4 0
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r5 r2 2
	addi	r2 r2 3
	call	L_create_pixel_2328
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r5 r2 2
	sti	r9 r2 0
	sti	r10 r2 1
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	min_caml_create_array
	addi	r2 r2 -2
	add	r5 r0 r4
	ldi	r9 r2 0
	ldi	r10 r2 1
	addi	r4 r0 32802
	ldi	r4 r4 0
	addi	r6 r4 -2
	bgt	r0 r6 L_else_14703
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r6 r2 2
	sti	r5 r2 3
	addi	r2 r2 4
	call	L_create_pixel_2328
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r6 r2 2
	ldi	r5 r2 3
	add	r1 r5 r6
	sti	r4 r1 0
	addi	r4 r6 -1
	sti	r10 r2 0
	sti	r9 r2 1
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	L_init_line_elements_2330
	addi	r2 r2 -2
	add	r11 r0 r4
	ldi	r10 r2 0
	ldi	r9 r2 1
	jump	L_cont_14701
L_else_14703 : 
	add	r11 r0 r5
L_cont_14701 : 
	addi	r4 r0 32768
	sti	r4 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	min_caml_read_float
	addi	r2 r2 -4
	ldi	r4 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	fsti	f2 r4 0
	addi	r4 r0 32768
	sti	r4 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	min_caml_read_float
	addi	r2 r2 -4
	ldi	r4 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	fsti	f2 r4 1
	addi	r4 r0 32768
	sti	r4 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	min_caml_read_float
	addi	r2 r2 -4
	ldi	r4 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	fsti	f2 r4 2
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	min_caml_read_float
	addi	r2 r2 -3
	fadd	f3 f0 f2
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	fldi	f2 r0 31
	fmul	f2 f3 f2
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	fsti	f2 r2 3
	addi	r2 r2 4
	call	L_cos_1888
	addi	r2 r2 -4
	fadd	f4 f0 f2
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	fldi	f2 r2 3
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	fsti	f4 r2 3
	addi	r2 r2 4
	call	L_sin_1886
	addi	r2 r2 -4
	fadd	f7 f0 f2
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	fldi	f4 r2 3
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	fsti	f4 r2 3
	fsti	f7 r2 4
	addi	r2 r2 5
	call	min_caml_read_float
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	fldi	f4 r2 3
	fldi	f7 r2 4
	fldi	f3 r0 31
	fmul	f2 f2 f3
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	fsti	f7 r2 3
	fsti	f4 r2 4
	fsti	f2 r2 5
	addi	r2 r2 6
	call	L_cos_1888
	addi	r2 r2 -6
	fadd	f5 f0 f2
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	fldi	f7 r2 3
	fldi	f4 r2 4
	fldi	f2 r2 5
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	fsti	f4 r2 3
	fsti	f7 r2 4
	fsti	f5 r2 5
	addi	r2 r2 6
	call	L_sin_1886
	addi	r2 r2 -6
	fadd	f6 f0 f2
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	fldi	f4 r2 3
	fldi	f7 r2 4
	fldi	f5 r2 5
	addi	r4 r0 32771
	fmul	f3 f4 f6
	fldi	f2 r0 56
	fmul	f2 f3 f2
	fsti	f2 r4 0
	addi	r4 r0 32771
	fldi	f2 r0 57
	fmul	f2 f7 f2
	fsti	f2 r4 1
	addi	r4 r0 32771
	fmul	f3 f4 f5
	fldi	f2 r0 56
	fmul	f2 f3 f2
	fsti	f2 r4 2
	addi	r4 r0 32774
	fsti	f5 r4 0
	addi	r4 r0 32774
	fldi	f2 r0 30
	fsti	f2 r4 1
	addi	r4 r0 32774
	fsub	f2 f0 f6
	fsti	f2 r4 2
	addi	r4 r0 32777
	fsub	f2 f0 f7
	fmul	f2 f2 f6
	fsti	f2 r4 0
	addi	r4 r0 32777
	fsub	f2 f0 f4
	fsti	f2 r4 1
	addi	r4 r0 32777
	fsub	f2 f0 f7
	fmul	f2 f2 f5
	fsti	f2 r4 2
	addi	r5 r0 32780
	addi	r4 r0 32768
	fldi	f3 r4 0
	addi	r4 r0 32771
	fldi	f2 r4 0
	fsub	f2 f3 f2
	fsti	f2 r5 0
	addi	r5 r0 32780
	addi	r4 r0 32768
	fldi	f3 r4 1
	addi	r4 r0 32771
	fldi	f2 r4 1
	fsub	f2 f3 f2
	fsti	f2 r5 1
	addi	r5 r0 32780
	addi	r4 r0 32768
	fldi	f3 r4 2
	addi	r4 r0 32771
	fldi	f2 r4 2
	fsub	f2 f3 f2
	fsti	f2 r5 2
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	min_caml_read_int
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	min_caml_read_float
	addi	r2 r2 -3
	fadd	f3 f0 f2
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	fldi	f2 r0 31
	fmul	f3 f3 f2
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	fsti	f3 r2 3
	fadd	f2 f0 f3
	addi	r2 r2 4
	call	L_sin_1886
	addi	r2 r2 -4
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	fldi	f3 r2 3
	addi	r4 r0 32783
	fsub	f2 f0 f2
	fsti	f2 r4 1
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	fsti	f3 r2 3
	addi	r2 r2 4
	call	min_caml_read_float
	addi	r2 r2 -4
	fadd	f4 f0 f2
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	fldi	f3 r2 3
	fldi	f2 r0 31
	fmul	f4 f4 f2
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	fsti	f4 r2 3
	fadd	f2 f0 f3
	addi	r2 r2 4
	call	L_cos_1888
	addi	r2 r2 -4
	fadd	f3 f0 f2
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	fldi	f4 r2 3
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	fsti	f3 r2 3
	fsti	f4 r2 4
	fadd	f2 f0 f4
	addi	r2 r2 5
	call	L_sin_1886
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	fldi	f3 r2 3
	fldi	f4 r2 4
	addi	r4 r0 32783
	fmul	f2 f3 f2
	fsti	f2 r4 0
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	fsti	f3 r2 3
	fadd	f2 f0 f4
	addi	r2 r2 4
	call	L_cos_1888
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	fldi	f3 r2 3
	addi	r4 r0 32783
	fmul	f2 f3 f2
	fsti	f2 r4 2
	addi	r4 r0 32825
	sti	r4 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	addi	r2 r2 4
	call	min_caml_read_float
	addi	r2 r2 -4
	ldi	r4 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	fsti	f2 r4 0
	addi	r4 r0 0
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_read_object_2041
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	addi	r7 r0 0
	addi	r4 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	addi	r2 r2 4
	call	L_read_net_item_2045
	addi	r2 r2 -4
	add	r6 r0 r4
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r5 r6 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14706
	jump	L_cont_14704
L_else_14706 : 
	addi	r4 r0 32827
	add	r1 r4 r7
	sti	r6 r1 0
	addi	r4 r0 1
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	L_read_and_network_2049
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
L_cont_14704 : 
	addi	r8 r0 32927
	addi	r7 r0 0
	addi	r4 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	addi	r2 r2 5
	call	L_read_net_item_2045
	addi	r2 r2 -5
	add	r6 r0 r4
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
	ldi	r5 r6 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_14709
	addi	r4 r0 1
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r8 r2 3
	add	r5 r0 r6
	addi	r2 r2 4
	call	min_caml_create_array
	addi	r2 r2 -4
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	jump	L_cont_14707
L_else_14709 : 
	addi	r4 r0 1
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	sti	r7 r2 5
	addi	r2 r2 6
	call	L_read_or_network_2047
	addi	r2 r2 -6
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
	ldi	r7 r2 5
	add	r1 r4 r7
	sti	r6 r1 0
	add	r4 r0 r4
L_cont_14707 : 
	sti	r4 r8 0
	addi	r4 r0 80
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	min_caml_print_char
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	addi	r4 r0 54
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	min_caml_print_char
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	addi	r4 r0 10
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	min_caml_print_char
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r4 r0 32802
	ldi	r6 r4 0
	addi	r4 r6 -10
	bgt	r0 r4 L_else_14712
	addi	r5 r6 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14946
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14948
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14950
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14952
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14954
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14956
	addi	r5 r5 -10
	addi	r4 r0 7
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	jump	L_cont_14710
L_else_14956 : 
	addi	r4 r0 6
	jump	L_cont_14710
L_else_14954 : 
	addi	r4 r0 5
	jump	L_cont_14710
L_else_14952 : 
	addi	r4 r0 4
	jump	L_cont_14710
L_else_14950 : 
	addi	r4 r0 3
	jump	L_cont_14710
L_else_14948 : 
	addi	r4 r0 2
	jump	L_cont_14710
L_else_14946 : 
	addi	r4 r0 1
	jump	L_cont_14710
L_else_14712 : 
	addi	r4 r0 0
L_cont_14710 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14715
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14934
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14936
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14938
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14940
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14942
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14944
	addi	r5 r4 -10
	addi	r4 r0 7
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	jump	L_cont_14713
L_else_14944 : 
	addi	r4 r0 6
	jump	L_cont_14713
L_else_14942 : 
	addi	r4 r0 5
	jump	L_cont_14713
L_else_14940 : 
	addi	r4 r0 4
	jump	L_cont_14713
L_else_14938 : 
	addi	r4 r0 3
	jump	L_cont_14713
L_else_14936 : 
	addi	r4 r0 2
	jump	L_cont_14713
L_else_14934 : 
	addi	r4 r0 1
	jump	L_cont_14713
L_else_14715 : 
	addi	r4 r0 0
L_cont_14713 : 
	addi	r4 r4 48
	sti	r6 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	addi	r2 r2 4
	call	min_caml_print_char
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	addi	r4 r6 -10
	bgt	r0 r4 L_else_14718
	addi	r4 r6 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14922
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14924
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14926
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14928
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14930
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14932
	addi	r5 r4 -10
	addi	r4 r0 7
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	jump	L_cont_14716
L_else_14932 : 
	addi	r5 r0 6
	jump	L_cont_14716
L_else_14930 : 
	addi	r5 r0 5
	jump	L_cont_14716
L_else_14928 : 
	addi	r5 r0 4
	jump	L_cont_14716
L_else_14926 : 
	addi	r5 r0 3
	jump	L_cont_14716
L_else_14924 : 
	addi	r5 r0 2
	jump	L_cont_14716
L_else_14922 : 
	addi	r5 r0 1
	jump	L_cont_14716
L_else_14718 : 
	addi	r5 r0 0
L_cont_14716 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14721
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14910
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14912
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14914
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14916
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14918
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14920
	addi	r5 r4 -10
	addi	r4 r0 7
	sti	r11 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r11 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	jump	L_cont_14719
L_else_14920 : 
	addi	r5 r0 6
	jump	L_cont_14719
L_else_14918 : 
	addi	r5 r0 5
	jump	L_cont_14719
L_else_14916 : 
	addi	r5 r0 4
	jump	L_cont_14719
L_else_14914 : 
	addi	r5 r0 3
	jump	L_cont_14719
L_else_14912 : 
	addi	r5 r0 2
	jump	L_cont_14719
L_else_14910 : 
	addi	r5 r0 1
	jump	L_cont_14719
L_else_14721 : 
	addi	r5 r0 0
L_cont_14719 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r5 r6 r4
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14724
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14898
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14900
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14902
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14904
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14906
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14908
	addi	r5 r5 -10
	addi	r4 r0 7
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r6 r2 3
	jump	L_cont_14722
L_else_14908 : 
	addi	r4 r0 6
	jump	L_cont_14722
L_else_14906 : 
	addi	r4 r0 5
	jump	L_cont_14722
L_else_14904 : 
	addi	r4 r0 4
	jump	L_cont_14722
L_else_14902 : 
	addi	r4 r0 3
	jump	L_cont_14722
L_else_14900 : 
	addi	r4 r0 2
	jump	L_cont_14722
L_else_14898 : 
	addi	r4 r0 1
	jump	L_cont_14722
L_else_14724 : 
	addi	r4 r0 0
L_cont_14722 : 
	addi	r4 r4 48
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	addi	r2 r2 4
	call	min_caml_print_char
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	addi	r4 r6 -10
	bgt	r0 r4 L_else_14727
	addi	r5 r6 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14886
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14888
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14890
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14892
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14894
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14896
	addi	r5 r5 -10
	addi	r4 r0 7
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	jump	L_cont_14725
L_else_14896 : 
	addi	r5 r0 6
	jump	L_cont_14725
L_else_14894 : 
	addi	r5 r0 5
	jump	L_cont_14725
L_else_14892 : 
	addi	r5 r0 4
	jump	L_cont_14725
L_else_14890 : 
	addi	r5 r0 3
	jump	L_cont_14725
L_else_14888 : 
	addi	r5 r0 2
	jump	L_cont_14725
L_else_14886 : 
	addi	r5 r0 1
	jump	L_cont_14725
L_else_14727 : 
	addi	r5 r0 0
L_cont_14725 : 
	addi	r4 r0 10
	mul	r4 r5 r4
	sub	r4 r6 r4
	addi	r4 r4 48
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	min_caml_print_char
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	addi	r4 r0 32
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	min_caml_print_char
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r4 r0 32802
	ldi	r6 r4 1
	addi	r4 r6 -10
	bgt	r0 r4 L_else_14730
	addi	r4 r6 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14874
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14876
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14878
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14880
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14882
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14884
	addi	r5 r4 -10
	addi	r4 r0 7
	sti	r6 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	jump	L_cont_14728
L_else_14884 : 
	addi	r4 r0 6
	jump	L_cont_14728
L_else_14882 : 
	addi	r4 r0 5
	jump	L_cont_14728
L_else_14880 : 
	addi	r4 r0 4
	jump	L_cont_14728
L_else_14878 : 
	addi	r4 r0 3
	jump	L_cont_14728
L_else_14876 : 
	addi	r4 r0 2
	jump	L_cont_14728
L_else_14874 : 
	addi	r4 r0 1
	jump	L_cont_14728
L_else_14730 : 
	addi	r4 r0 0
L_cont_14728 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14733
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14862
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14864
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14866
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14868
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14870
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14872
	addi	r5 r5 -10
	addi	r4 r0 7
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	jump	L_cont_14731
L_else_14872 : 
	addi	r4 r0 6
	jump	L_cont_14731
L_else_14870 : 
	addi	r4 r0 5
	jump	L_cont_14731
L_else_14868 : 
	addi	r4 r0 4
	jump	L_cont_14731
L_else_14866 : 
	addi	r4 r0 3
	jump	L_cont_14731
L_else_14864 : 
	addi	r4 r0 2
	jump	L_cont_14731
L_else_14862 : 
	addi	r4 r0 1
	jump	L_cont_14731
L_else_14733 : 
	addi	r4 r0 0
L_cont_14731 : 
	addi	r4 r4 48
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	min_caml_print_char
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	addi	r4 r6 -10
	bgt	r0 r4 L_else_14736
	addi	r4 r6 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14850
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14852
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14854
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14856
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14858
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14860
	addi	r5 r4 -10
	addi	r4 r0 7
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	jump	L_cont_14734
L_else_14860 : 
	addi	r4 r0 6
	jump	L_cont_14734
L_else_14858 : 
	addi	r4 r0 5
	jump	L_cont_14734
L_else_14856 : 
	addi	r4 r0 4
	jump	L_cont_14734
L_else_14854 : 
	addi	r4 r0 3
	jump	L_cont_14734
L_else_14852 : 
	addi	r4 r0 2
	jump	L_cont_14734
L_else_14850 : 
	addi	r4 r0 1
	jump	L_cont_14734
L_else_14736 : 
	addi	r4 r0 0
L_cont_14734 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14739
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14838
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14840
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14842
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14844
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14846
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14848
	addi	r5 r4 -10
	addi	r4 r0 7
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	jump	L_cont_14737
L_else_14848 : 
	addi	r5 r0 6
	jump	L_cont_14737
L_else_14846 : 
	addi	r5 r0 5
	jump	L_cont_14737
L_else_14844 : 
	addi	r5 r0 4
	jump	L_cont_14737
L_else_14842 : 
	addi	r5 r0 3
	jump	L_cont_14737
L_else_14840 : 
	addi	r5 r0 2
	jump	L_cont_14737
L_else_14838 : 
	addi	r5 r0 1
	jump	L_cont_14737
L_else_14739 : 
	addi	r5 r0 0
L_cont_14737 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r4 r6 r4
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14742
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14826
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14828
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14830
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14832
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14834
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14836
	addi	r5 r4 -10
	addi	r4 r0 7
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	jump	L_cont_14740
L_else_14836 : 
	addi	r4 r0 6
	jump	L_cont_14740
L_else_14834 : 
	addi	r4 r0 5
	jump	L_cont_14740
L_else_14832 : 
	addi	r4 r0 4
	jump	L_cont_14740
L_else_14830 : 
	addi	r4 r0 3
	jump	L_cont_14740
L_else_14828 : 
	addi	r4 r0 2
	jump	L_cont_14740
L_else_14826 : 
	addi	r4 r0 1
	jump	L_cont_14740
L_else_14742 : 
	addi	r4 r0 0
L_cont_14740 : 
	addi	r4 r4 48
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	min_caml_print_char
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	addi	r4 r6 -10
	bgt	r0 r4 L_else_14745
	addi	r5 r6 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14814
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14816
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14818
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14820
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14822
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14824
	addi	r5 r5 -10
	addi	r4 r0 7
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r6 r2 3
	jump	L_cont_14743
L_else_14824 : 
	addi	r5 r0 6
	jump	L_cont_14743
L_else_14822 : 
	addi	r5 r0 5
	jump	L_cont_14743
L_else_14820 : 
	addi	r5 r0 4
	jump	L_cont_14743
L_else_14818 : 
	addi	r5 r0 3
	jump	L_cont_14743
L_else_14816 : 
	addi	r5 r0 2
	jump	L_cont_14743
L_else_14814 : 
	addi	r5 r0 1
	jump	L_cont_14743
L_else_14745 : 
	addi	r5 r0 0
L_cont_14743 : 
	addi	r4 r0 10
	mul	r4 r5 r4
	sub	r4 r6 r4
	addi	r4 r4 48
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	min_caml_print_char
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	addi	r4 r0 32
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	min_caml_print_char
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	addi	r6 r0 255
	addi	r5 r0 185
	addi	r4 r0 7
	sti	r6 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14748
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14802
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14804
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14806
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14808
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14810
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14812
	addi	r5 r5 -10
	addi	r4 r0 7
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r6 r2 3
	jump	L_cont_14746
L_else_14812 : 
	addi	r4 r0 6
	jump	L_cont_14746
L_else_14810 : 
	addi	r4 r0 5
	jump	L_cont_14746
L_else_14808 : 
	addi	r4 r0 4
	jump	L_cont_14746
L_else_14806 : 
	addi	r4 r0 3
	jump	L_cont_14746
L_else_14804 : 
	addi	r4 r0 2
	jump	L_cont_14746
L_else_14802 : 
	addi	r4 r0 1
	jump	L_cont_14746
L_else_14748 : 
	addi	r4 r0 0
L_cont_14746 : 
	addi	r4 r4 48
	sti	r6 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	addi	r2 r2 4
	call	min_caml_print_char
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	addi	r5 r0 185
	addi	r4 r0 7
	sti	r6 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14751
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14790
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14792
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14794
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14796
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14798
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_14800
	addi	r5 r4 -10
	addi	r4 r0 7
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	ldi	r6 r2 3
	jump	L_cont_14749
L_else_14800 : 
	addi	r5 r0 6
	jump	L_cont_14749
L_else_14798 : 
	addi	r5 r0 5
	jump	L_cont_14749
L_else_14796 : 
	addi	r5 r0 4
	jump	L_cont_14749
L_else_14794 : 
	addi	r5 r0 3
	jump	L_cont_14749
L_else_14792 : 
	addi	r5 r0 2
	jump	L_cont_14749
L_else_14790 : 
	addi	r5 r0 1
	jump	L_cont_14749
L_else_14751 : 
	addi	r5 r0 0
L_cont_14749 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r5 r6 r4
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14754
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14778
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14780
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14782
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14784
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14786
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_14788
	addi	r5 r5 -10
	addi	r4 r0 7
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	jump	L_cont_14752
L_else_14788 : 
	addi	r4 r0 6
	jump	L_cont_14752
L_else_14786 : 
	addi	r4 r0 5
	jump	L_cont_14752
L_else_14784 : 
	addi	r4 r0 4
	jump	L_cont_14752
L_else_14782 : 
	addi	r4 r0 3
	jump	L_cont_14752
L_else_14780 : 
	addi	r4 r0 2
	jump	L_cont_14752
L_else_14778 : 
	addi	r4 r0 1
	jump	L_cont_14752
L_else_14754 : 
	addi	r4 r0 0
L_cont_14752 : 
	addi	r4 r4 48
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	addi	r2 r2 4
	call	min_caml_print_char
	addi	r2 r2 -4
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	addi	r5 r0 185
	addi	r4 r0 7
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r6 r2 3
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 4
	call	L_sdiv10_1898
	addi	r2 r2 -4
	add	r5 r0 r4
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r6 r2 3
	addi	r4 r0 10
	mul	r4 r5 r4
	sub	r4 r6 r4
	addi	r4 r4 48
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	min_caml_print_char
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r4 r0 10
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	min_caml_print_char
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r8 r0 4
	addi	r7 r0 32820
	addi	r5 r0 120
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	sti	r5 r2 5
	addi	r2 r2 6
	call	min_caml_create_float_array
	addi	r2 r2 -6
	add	r6 r0 r4
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
	ldi	r5 r2 5
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r5 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r8 r2 4
	sti	r7 r2 5
	sti	r6 r2 6
	add	r5 r0 r6
	addi	r2 r2 7
	call	min_caml_create_array
	addi	r2 r2 -7
	ldi	r5 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r8 r2 4
	ldi	r7 r2 5
	ldi	r6 r2 6
	sti	r6 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r8 r2 3
	sti	r7 r2 4
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 5
	call	min_caml_create_array
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	ldi	r7 r2 4
	add	r1 r7 r8
	sti	r4 r1 0
	addi	r4 r0 32820
	add	r1 r4 r8
	ldi	r5 r1 0
	addi	r4 r0 118
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_create_dirvec_elements_2359
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r4 r0 3
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	addi	r2 r2 3
	call	L_create_dirvecs_2362
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r4 r0 9
	addi	r6 r0 0
	addi	r5 r0 0
	foi	f3 r4
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f2 f3 f2
	addi	r4 r0 4
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 3
	call	L_calc_dirvecs_2348
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r6 r0 8
	addi	r5 r0 2
	addi	r4 r0 4
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_calc_dirvec_rows_2353
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r4 r0 4
	addi	r5 r0 32820
	add	r1 r5 r4
	ldi	r5 r1 0
	addi	r4 r0 119
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 3
	call	L_init_dirvec_constants_2364
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	addi	r4 r0 3
	sti	r10 r2 0
	sti	r11 r2 1
	sti	r9 r2 2
	addi	r2 r2 3
	call	L_init_vecset_constants_2367
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r11 r2 1
	ldi	r9 r2 2
	addi	r4 r0 33649
	ldi	r5 r4 0
	addi	r4 r0 32783
	fldi	f2 r4 0
	fsti	f2 r5 0
	fldi	f2 r4 1
	fsti	f2 r5 1
	fldi	f2 r4 2
	fsti	f2 r5 2
	addi	r13 r0 33649
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r6 r4 -1
	bgt	r0 r6 L_else_14757
	addi	r4 r0 33714
	add	r1 r4 r6
	ldi	r7 r1 0
	ldi	r12 r13 1
	ldi	r8 r13 0
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_14774
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r13 r2 3
	sti	r6 r2 4
	sti	r12 r2 5
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_setup_rect_table_2137
	addi	r2 r2 -6
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r13 r2 3
	ldi	r6 r2 4
	ldi	r12 r2 5
	add	r1 r12 r6
	sti	r4 r1 0
	jump	L_cont_14772
L_else_14774 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_14776
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r13 r2 3
	sti	r6 r2 4
	sti	r12 r2 5
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_setup_surface_table_2140
	addi	r2 r2 -6
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r13 r2 3
	ldi	r6 r2 4
	ldi	r12 r2 5
	add	r1 r12 r6
	sti	r4 r1 0
	jump	L_cont_14772
L_else_14776 : 
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r13 r2 3
	sti	r6 r2 4
	sti	r12 r2 5
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_setup_second_table_2143
	addi	r2 r2 -6
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r13 r2 3
	ldi	r6 r2 4
	ldi	r12 r2 5
	add	r1 r12 r6
	sti	r4 r1 0
L_cont_14772 : 
	addi	r4 r6 -1
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	add	r5 r0 r4
	add	r4 r0 r13
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	jump	L_cont_14755
L_else_14757 : 
L_cont_14755 : 
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r6 r4 -1
	bgt	r0 r6 L_else_14760
	addi	r4 r0 33714
	add	r1 r4 r6
	ldi	r7 r1 0
	ldi	r5 r7 2
	addi	r4 r0 2
	bne	r5 r4 L_else_14762
	ldi	r4 r7 7
	fldi	f2 r4 0
	fldi	f3 r0 12
	fbgt	f3 f2 L_else_14765
	addi	r4 r0 0
	jump	L_cont_14763
L_else_14765 : 
	addi	r4 r0 1
L_cont_14763 : 
	bne	r4 r0 L_else_14767
	jump	L_cont_14758
L_else_14767 : 
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_14769
	addi	r4 r0 4
	mul	r8 r6 r4
	addi	r4 r0 32819
	ldi	r13 r4 0
	fldi	f3 r0 12
	ldi	r4 r7 7
	fldi	f2 r4 0
	fsub	f7 f3 f2
	addi	r4 r0 32783
	fldi	f2 r4 0
	fsub	f6 f0 f2
	addi	r4 r0 32783
	fldi	f2 r4 1
	fsub	f4 f0 f2
	addi	r4 r0 32783
	fldi	f2 r4 2
	fsub	f3 f0 f2
	addi	r7 r8 1
	addi	r4 r0 32783
	fldi	f5 r4 0
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r13 r2 0
	sti	r8 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	sti	r7 r2 5
	fsti	f5 r2 6
	fsti	f3 r2 7
	fsti	f7 r2 8
	fsti	f6 r2 9
	fsti	f4 r2 10
	addi	r2 r2 11
	call	min_caml_create_float_array
	addi	r2 r2 -11
	add	r5 r0 r4
	ldi	r13 r2 0
	ldi	r8 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
	ldi	r7 r2 5
	fldi	f5 r2 6
	fldi	f3 r2 7
	fldi	f7 r2 8
	fldi	f6 r2 9
	fldi	f4 r2 10
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r8 r2 4
	sti	r13 r2 5
	sti	r5 r2 6
	fsti	f4 r2 7
	fsti	f6 r2 8
	fsti	f7 r2 9
	fsti	f3 r2 10
	fsti	f5 r2 11
	addi	r2 r2 12
	call	min_caml_create_array
	addi	r2 r2 -12
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r8 r2 4
	ldi	r13 r2 5
	ldi	r5 r2 6
	fldi	f4 r2 7
	fldi	f6 r2 8
	fldi	f7 r2 9
	fldi	f3 r2 10
	fldi	f5 r2 11
	sti	r5 r3 0
	sti	r4 r3 1
	add	r6 r0 r3
	addi	r3 r3 2
	fsti	f5 r5 0
	fsti	f4 r5 1
	fsti	f3 r5 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r13 r2 0
	sti	r8 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	sti	r6 r2 5
	sti	r7 r2 6
	fsti	f6 r2 7
	fsti	f3 r2 8
	fsti	f4 r2 9
	fsti	f7 r2 10
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -11
	ldi	r13 r2 0
	ldi	r8 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
	ldi	r6 r2 5
	ldi	r7 r2 6
	fldi	f6 r2 7
	fldi	f3 r2 8
	fldi	f4 r2 9
	fldi	f7 r2 10
	addi	r5 r0 32929
	sti	r7 r3 0
	sti	r6 r3 1
	fsti	f7 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r13
	sti	r4 r1 0
	addi	r5 r13 1
	addi	r12 r8 2
	addi	r4 r0 32783
	fldi	f5 r4 1
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r5 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r10 r2 4
	sti	r13 r2 5
	sti	r12 r2 6
	fsti	f6 r2 7
	fsti	f3 r2 8
	fsti	f7 r2 9
	fsti	f4 r2 10
	fsti	f5 r2 11
	addi	r2 r2 12
	call	min_caml_create_float_array
	addi	r2 r2 -12
	add	r6 r0 r4
	ldi	r5 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r10 r2 4
	ldi	r13 r2 5
	ldi	r12 r2 6
	fldi	f6 r2 7
	fldi	f3 r2 8
	fldi	f7 r2 9
	fldi	f4 r2 10
	fldi	f5 r2 11
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r12 r2 0
	sti	r13 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	sti	r8 r2 5
	sti	r5 r2 6
	sti	r6 r2 7
	fsti	f5 r2 8
	fsti	f4 r2 9
	fsti	f7 r2 10
	fsti	f3 r2 11
	fsti	f6 r2 12
	add	r5 r0 r6
	addi	r2 r2 13
	call	min_caml_create_array
	addi	r2 r2 -13
	ldi	r12 r2 0
	ldi	r13 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
	ldi	r8 r2 5
	ldi	r5 r2 6
	ldi	r6 r2 7
	fldi	f5 r2 8
	fldi	f4 r2 9
	fldi	f7 r2 10
	fldi	f3 r2 11
	fldi	f6 r2 12
	sti	r6 r3 0
	sti	r4 r3 1
	add	r7 r0 r3
	addi	r3 r3 2
	fsti	f6 r6 0
	fsti	f5 r6 1
	fsti	f3 r6 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r5 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r10 r2 4
	sti	r13 r2 5
	sti	r7 r2 6
	sti	r12 r2 7
	fsti	f6 r2 8
	fsti	f4 r2 9
	fsti	f7 r2 10
	add	r5 r0 r4
	add	r4 r0 r7
	addi	r2 r2 11
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -11
	ldi	r5 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r10 r2 4
	ldi	r13 r2 5
	ldi	r7 r2 6
	ldi	r12 r2 7
	fldi	f6 r2 8
	fldi	f4 r2 9
	fldi	f7 r2 10
	addi	r6 r0 32929
	sti	r12 r3 0
	sti	r7 r3 1
	fsti	f7 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r6 r5
	sti	r4 r1 0
	addi	r12 r13 2
	addi	r7 r8 3
	addi	r4 r0 32783
	fldi	f3 r4 2
	addi	r4 r0 3
	fldi	f2 r0 30
	sti	r12 r2 0
	sti	r13 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	sti	r7 r2 5
	fsti	f6 r2 6
	fsti	f3 r2 7
	fsti	f7 r2 8
	fsti	f4 r2 9
	addi	r2 r2 10
	call	min_caml_create_float_array
	addi	r2 r2 -10
	add	r5 r0 r4
	ldi	r12 r2 0
	ldi	r13 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
	ldi	r7 r2 5
	fldi	f6 r2 6
	fldi	f3 r2 7
	fldi	f7 r2 8
	fldi	f4 r2 9
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r13 r2 4
	sti	r12 r2 5
	sti	r5 r2 6
	fsti	f4 r2 7
	fsti	f7 r2 8
	fsti	f3 r2 9
	fsti	f6 r2 10
	addi	r2 r2 11
	call	min_caml_create_array
	addi	r2 r2 -11
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r13 r2 4
	ldi	r12 r2 5
	ldi	r5 r2 6
	fldi	f4 r2 7
	fldi	f7 r2 8
	fldi	f3 r2 9
	fldi	f6 r2 10
	sti	r5 r3 0
	sti	r4 r3 1
	add	r6 r0 r3
	addi	r3 r3 2
	fsti	f6 r5 0
	fsti	f4 r5 1
	fsti	f3 r5 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r12 r2 0
	sti	r13 r2 1
	sti	r10 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	sti	r6 r2 5
	sti	r7 r2 6
	fsti	f7 r2 7
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -8
	ldi	r12 r2 0
	ldi	r13 r2 1
	ldi	r10 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
	ldi	r6 r2 5
	ldi	r7 r2 6
	fldi	f7 r2 7
	addi	r5 r0 32929
	sti	r7 r3 0
	sti	r6 r3 1
	fsti	f7 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r12
	sti	r4 r1 0
	addi	r5 r0 32819
	addi	r4 r13 3
	sti	r4 r5 0
	jump	L_cont_14758
L_else_14769 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_14771
	addi	r4 r0 4
	mul	r4 r6 r4
	addi	r8 r4 1
	addi	r4 r0 32819
	ldi	r12 r4 0
	fldi	f3 r0 12
	ldi	r4 r7 7
	fldi	f2 r4 0
	fsub	f6 f3 f2
	addi	r4 r0 32783
	ldi	r5 r7 4
	fldi	f3 r4 0
	fldi	f2 r5 0
	fmul	f3 f3 f2
	fldi	f4 r4 1
	fldi	f2 r5 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r4 2
	fldi	f2 r5 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fldi	f3 r0 28
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fmul	f3 f2 f4
	addi	r4 r0 32783
	fldi	f2 r4 0
	fsub	f5 f3 f2
	fldi	f3 r0 28
	ldi	r4 r7 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fmul	f3 f2 f4
	addi	r4 r0 32783
	fldi	f2 r4 1
	fsub	f7 f3 f2
	fldi	f3 r0 28
	ldi	r4 r7 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fmul	f3 f2 f4
	addi	r4 r0 32783
	fldi	f2 r4 2
	fsub	f2 f3 f2
	addi	r4 r0 3
	fldi	f3 r0 30
	sti	r12 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	sti	r8 r2 4
	fsti	f5 r2 5
	fsti	f2 r2 6
	fsti	f6 r2 7
	fsti	f7 r2 8
	fadd	f2 f0 f3
	addi	r2 r2 9
	call	min_caml_create_float_array
	addi	r2 r2 -9
	add	r5 r0 r4
	ldi	r12 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	ldi	r8 r2 4
	fldi	f5 r2 5
	fldi	f2 r2 6
	fldi	f6 r2 7
	fldi	f7 r2 8
	addi	r4 r0 32816
	ldi	r4 r4 0
	sti	r8 r2 0
	sti	r9 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r12 r2 4
	sti	r5 r2 5
	fsti	f7 r2 6
	fsti	f6 r2 7
	fsti	f2 r2 8
	fsti	f5 r2 9
	addi	r2 r2 10
	call	min_caml_create_array
	addi	r2 r2 -10
	ldi	r8 r2 0
	ldi	r9 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r12 r2 4
	ldi	r5 r2 5
	fldi	f7 r2 6
	fldi	f6 r2 7
	fldi	f2 r2 8
	fldi	f5 r2 9
	sti	r5 r3 0
	sti	r4 r3 1
	add	r6 r0 r3
	addi	r3 r3 2
	fsti	f5 r5 0
	fsti	f7 r5 1
	fsti	f2 r5 2
	addi	r4 r0 32816
	ldi	r4 r4 0
	addi	r4 r4 -1
	sti	r12 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	sti	r8 r2 5
	fsti	f6 r2 6
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 7
	call	L_iter_setup_dirvec_constants_2146
	addi	r2 r2 -7
	ldi	r12 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
	ldi	r8 r2 5
	fldi	f6 r2 6
	addi	r5 r0 32929
	sti	r8 r3 0
	sti	r6 r3 1
	fsti	f6 r3 2
	add	r4 r0 r3
	addi	r3 r3 3
	add	r1 r5 r12
	sti	r4 r1 0
	addi	r5 r0 32819
	addi	r4 r12 1
	sti	r4 r5 0
	jump	L_cont_14758
L_else_14771 : 
	jump	L_cont_14758
L_else_14762 : 
	jump	L_cont_14758
L_else_14760 : 
L_cont_14758 : 
	addi	r5 r0 0
	addi	r4 r0 0
	sti	r9 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	add	r6 r0 r4
	add	r4 r0 r10
	addi	r2 r2 3
	call	L_pretrace_line_2310
	addi	r2 r2 -3
	ldi	r9 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	addi	r5 r0 0
	addi	r4 r0 2
	add	r8 r0 r4
	add	r7 r0 r11
	add	r6 r0 r10
	add	r4 r0 r5
	add	r5 r0 r9
	call	L_scan_line_2320
	addi	r4 r0 0
	return
L_mend_14957 : 
	call	min_caml_start
