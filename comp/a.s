	nop
	nop
	addi	r6 r0 170
	ptc	r6
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r0 256
	addi	r3 r0 1024
	addi	r6 r0 1006
	addi	r7 r0 0
	call	min_caml_create_array
	addi	r6 r0 1907
	sti	r6 r0 1905
	addi	r6 r0 1910
	sti	r6 r0 1906
	jump	min_caml_end
min_caml_create_array : 
	add	r9 r0 r3
	add	r3 r6 r3
	sub	r6 r3 r6
	add	r8 r0 r7
	sub	r7 r3 r6
	call	min_caml_init_array
	add	r6 r0 r9
	return
min_caml_init_array : 
	bne	r0 r7 L_else_18577
	return
L_else_18577 : 
	sti	r8 r6 0
	addi	r7 r7 -1
	addi	r6 r6 1
	jump	min_caml_init_array
min_caml_create_float_array : 
	add	r9 r0 r3
	add	r3 r6 r3
	sub	r6 r3 r6
	sub	r7 r3 r6
	call	min_caml_init_float_array
	add	r6 r0 r9
	return
min_caml_init_float_array : 
	bne	r0 r7 L_else_18578
	return
L_else_18578 : 
	fsti	f2 r6 0
	addi	r7 r7 -1
	addi	r6 r6 1
	jump	min_caml_init_float_array
min_caml_read_int : 
	rdi	r6
	return
min_caml_read_float : 
	rdf	f2
	return
min_caml_print_char : 
	ptc	r6
	return
min_caml_print_float : 
	ptf	f2
	return
L_psin_1874 : 
	fmul	f3 f2 f2
	fmul	f9 f2 f3
	fmul	f7 f9 f3
	fmul	f8 f7 f3
	fmul	f5 f8 f3
	fmul	f6 f5 f3
	fmul	f3 f6 f3
	fldi	f4 r0 0
	fmul	f4 f4 f3
	fldi	f3 r0 1
	fmul	f3 f3 f6
	fsub	f4 f4 f3
	fldi	f3 r0 2
	fmul	f3 f3 f5
	fadd	f4 f4 f3
	fldi	f3 r0 3
	fmul	f3 f3 f8
	fsub	f4 f4 f3
	fldi	f3 r0 4
	fmul	f3 f3 f7
	fadd	f4 f4 f3
	fldi	f3 r0 5
	fmul	f3 f3 f9
	fsub	f3 f4 f3
	fadd	f2 f3 f2
	return
L_pcos_1876 : 
	fmul	f7 f2 f2
	fmul	f8 f7 f7
	fmul	f5 f8 f7
	fmul	f6 f5 f7
	fmul	f4 f6 f7
	fmul	f3 f4 f7
	fldi	f2 r0 6
	fmul	f3 f2 f3
	fldi	f2 r0 7
	fmul	f2 f2 f4
	fsub	f3 f3 f2
	fldi	f2 r0 8
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r0 9
	fmul	f2 f2 f5
	fsub	f3 f3 f2
	fldi	f2 r0 10
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r0 11
	fmul	f2 f2 f7
	fsub	f2 f3 f2
	fldi	f3 r0 12
	fadd	f2 f2 f3
	return
L_sin_1878 : 
	fldi	f4 r0 13
	fldi	f6 r0 14
	fbgt	f2 f6 L_else_16369
	fldi	f3 r0 15
	fbgt	f3 f2 L_else_16371
	fldi	f5 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f2 f0 L_else_16373
	fldi	f3 r0 19
	fbgt	f3 f2 L_else_16375
	jump	L_psin_1874
L_else_16375 : 
	fldi	f3 r0 20
	fbgt	f3 f2 L_else_16377
	fadd	f2 f4 f2
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_16377 : 
	fadd	f2 f6 f2
	call	L_psin_1874
	fsub	f2 f0 f2
	return
L_else_16373 : 
	fbgt	f2 f5 L_else_16379
	jump	L_psin_1874
L_else_16379 : 
	fbgt	f2 f3 L_else_16381
	fsub	f2 f2 f4
	jump	L_pcos_1876
L_else_16381 : 
	fsub	f2 f6 f2
	jump	L_psin_1874
L_else_16371 : 
	fadd	f2 f2 f4
	jump	L_sin_1878
L_else_16369 : 
	fsub	f2 f2 f4
	jump	L_sin_1878
L_cos_1880 : 
	fldi	f4 r0 13
	fldi	f6 r0 14
	fbgt	f2 f6 L_else_16384
	fldi	f3 r0 15
	fbgt	f3 f2 L_else_16386
	fldi	f5 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f2 f0 L_else_16388
	fldi	f3 r0 19
	fbgt	f3 f2 L_else_16390
	jump	L_pcos_1876
L_else_16390 : 
	fldi	f3 r0 20
	fbgt	f3 f2 L_else_16392
	fadd	f2 f2 f4
	jump	L_psin_1874
L_else_16392 : 
	fadd	f2 f6 f2
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_16388 : 
	fbgt	f2 f5 L_else_16394
	jump	L_pcos_1876
L_else_16394 : 
	fbgt	f2 f3 L_else_16396
	fsub	f2 f2 f4
	call	L_psin_1874
	fsub	f2 f0 f2
	return
L_else_16396 : 
	fsub	f2 f6 f2
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_16386 : 
	fadd	f2 f2 f4
	jump	L_cos_1880
L_else_16384 : 
	fsub	f2 f2 f4
	jump	L_cos_1880
L_atan_1882 : 
	fmul	f3 f2 f2
	fldi	f4 r0 12
	fadd	f14 f4 f3
	fmul	f12 f14 f14
	fmul	f13 f12 f14
	fmul	f10 f12 f12
	fmul	f11 f12 f13
	fmul	f8 f13 f13
	fmul	f9 f2 f3
	fmul	f6 f3 f9
	fmul	f7 f3 f6
	fmul	f5 f3 f7
	fmul	f4 f3 f5
	fldi	f3 r0 21
	fmul	f3 f3 f4
	fdiv	f4 f3 f8
	fldi	f3 r0 22
	fmul	f3 f3 f5
	fdiv	f3 f3 f11
	fadd	f4 f4 f3
	fldi	f3 r0 23
	fmul	f3 f3 f7
	fdiv	f3 f3 f10
	fadd	f4 f4 f3
	fldi	f3 r0 24
	fmul	f3 f3 f6
	fdiv	f3 f3 f13
	fadd	f4 f4 f3
	fldi	f3 r0 25
	fmul	f3 f3 f9
	fdiv	f3 f3 f12
	fadd	f3 f4 f3
	fdiv	f2 f2 f14
	fadd	f2 f3 f2
	return
L_spow10_1884 : 
	bne	r6 r0 L_else_16400
	add	r6 r0 r7
	return
L_else_16400 : 
	addi	r8 r6 -1
	addi	r6 r0 10
	mul	r7 r7 r6
	add	r6 r0 r8
	jump	L_spow10_1884
L_pow10_1887 : 
	addi	r7 r0 1
	jump	L_spow10_1884
L_sdivn_1889 : 
	sub	r9 r6 r7
	bgt	r0 r9 L_else_16404
	sub	r6 r6 r7
	addi	r8 r8 1
	jump	L_sdivn_1889
L_else_16404 : 
	add	r6 r0 r8
	return
L_divpow10_1893 : 
	call	L_pow10_1887
	addi	r8 r0 0
	add	r7 r0 r6
	add	r6 r0 r9
	jump	L_sdivn_1889
L_sprint_int_1896 : 
	bne	r11 r0 L_else_16408
	addi	r6 r10 48
	jump	min_caml_print_char
L_else_16408 : 
	bne	r12 r0 L_else_16410
	add	r9 r0 r10
	add	r6 r0 r11
	call	L_divpow10_1893
	add	r9 r0 r6
	addi	r6 r9 48
	call	min_caml_print_char
	add	r6 r0 r11
	call	L_pow10_1887
	mul	r6 r9 r6
	sub	r10 r10 r6
	addi	r11 r11 -1
	addi	r12 r0 0
	jump	L_sprint_int_1896
L_else_16410 : 
	add	r9 r0 r10
	add	r6 r0 r11
	call	L_divpow10_1893
	add	r9 r0 r6
	bne	r9 r0 L_else_16412
	addi	r11 r11 -1
	jump	L_sprint_int_1896
L_else_16412 : 
	addi	r6 r9 48
	call	min_caml_print_char
	add	r6 r0 r11
	call	L_pow10_1887
	mul	r6 r9 r6
	sub	r10 r10 r6
	addi	r11 r11 -1
	addi	r12 r0 0
	jump	L_sprint_int_1896
L_print_int_1900 : 
	addi	r11 r0 9
	addi	r12 r0 1
	jump	L_sprint_int_1896
L_read_screen_settings_2029 : 
	call	min_caml_read_float
	fsti	f2 r0 1024
	call	min_caml_read_float
	fsti	f2 r0 1025
	call	min_caml_read_float
	fsti	f2 r0 1026
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f11 f2 f3
	fadd	f2 f0 f11
	call	L_cos_1880
	fadd	f10 f0 f2
	fadd	f2 f0 f11
	call	L_sin_1878
	fadd	f11 f0 f2
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f13 f2 f3
	fadd	f2 f0 f13
	call	L_cos_1880
	fadd	f12 f0 f2
	fadd	f2 f0 f13
	call	L_sin_1878
	fmul	f4 f10 f2
	fldi	f3 r0 27
	fmul	f3 f4 f3
	fsti	f3 r0 1027
	fldi	f3 r0 28
	fmul	f3 f11 f3
	fsti	f3 r0 1028
	fmul	f4 f10 f12
	fldi	f3 r0 27
	fmul	f3 f4 f3
	fsti	f3 r0 1029
	fsti	f12 r0 1030
	fldi	f3 r0 29
	fsti	f3 r0 1031
	fsub	f3 f0 f2
	fsti	f3 r0 1032
	fsub	f3 f0 f11
	fmul	f2 f3 f2
	fsti	f2 r0 1033
	fsub	f2 f0 f10
	fsti	f2 r0 1034
	fsub	f2 f0 f11
	fmul	f2 f2 f12
	fsti	f2 r0 1035
	fldi	f2 r0 1024
	fldi	f3 r0 1027
	fsub	f2 f2 f3
	fsti	f2 r0 1036
	fldi	f3 r0 1025
	fldi	f2 r0 1028
	fsub	f2 f3 f2
	fsti	f2 r0 1037
	fldi	f2 r0 1026
	fldi	f3 r0 1029
	fsub	f2 f2 f3
	fsti	f2 r0 1038
	return
L_read_light_2031 : 
	call	min_caml_read_int
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f10 f2 f3
	fadd	f2 f0 f10
	call	L_sin_1878
	fsub	f2 f0 f2
	fsti	f2 r0 1040
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f11 f2 f3
	fadd	f2 f0 f10
	call	L_cos_1880
	fadd	f10 f0 f2
	fadd	f2 f0 f11
	call	L_sin_1878
	fmul	f2 f10 f2
	fsti	f2 r0 1039
	fadd	f2 f0 f11
	call	L_cos_1880
	fmul	f2 f10 f2
	fsti	f2 r0 1041
	call	min_caml_read_float
	fsti	f2 r0 1081
	return
L_rotate_quadratic_matrix_2033 : 
	fldi	f2 r7 0
	call	L_cos_1880
	fadd	f10 f0 f2
	fldi	f2 r7 0
	call	L_sin_1878
	fadd	f11 f0 f2
	fldi	f2 r7 1
	call	L_cos_1880
	fadd	f12 f0 f2
	fldi	f2 r7 1
	call	L_sin_1878
	fadd	f13 f0 f2
	fldi	f2 r7 2
	call	L_cos_1880
	fadd	f14 f0 f2
	fldi	f2 r7 2
	call	L_sin_1878
	fmul	f15 f12 f14
	fmul	f3 f11 f13
	fmul	f4 f3 f14
	fmul	f3 f10 f2
	fsub	f9 f4 f3
	fmul	f3 f10 f13
	fmul	f4 f3 f14
	fmul	f3 f11 f2
	fadd	f16 f4 f3
	fmul	f8 f12 f2
	fmul	f3 f11 f13
	fmul	f3 f3 f2
	fmul	f4 f10 f14
	fadd	f7 f3 f4
	fmul	f3 f10 f13
	fmul	f3 f3 f2
	fmul	f2 f11 f14
	fsub	f14 f3 f2
	fsub	f5 f0 f13
	fmul	f6 f11 f12
	fmul	f13 f10 f12
	fldi	f12 r6 0
	fldi	f11 r6 1
	fldi	f10 r6 2
	fmul	f2 f15 f15
	fmul	f3 f12 f2
	fmul	f2 f8 f8
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f5 f5
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r6 0
	fmul	f2 f9 f9
	fmul	f3 f12 f2
	fmul	f2 f7 f7
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f6 f6
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r6 1
	fmul	f2 f16 f16
	fmul	f3 f12 f2
	fmul	f2 f14 f14
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f13 f13
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r6 2
	fldi	f4 r0 30
	fmul	f2 f12 f9
	fmul	f3 f2 f16
	fmul	f2 f11 f7
	fmul	f2 f2 f14
	fadd	f3 f3 f2
	fmul	f2 f10 f6
	fmul	f2 f2 f13
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r7 0
	fldi	f4 r0 30
	fmul	f2 f12 f15
	fmul	f3 f2 f16
	fmul	f2 f11 f8
	fmul	f2 f2 f14
	fadd	f3 f3 f2
	fmul	f2 f10 f5
	fmul	f2 f2 f13
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r7 1
	fldi	f4 r0 30
	fmul	f2 f12 f15
	fmul	f3 f2 f9
	fmul	f2 f11 f8
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fmul	f2 f10 f5
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r7 2
	return
L_read_nth_object_2036 : 
	call	min_caml_read_int
	add	r10 r0 r6
	bne	r10 r5 L_else_16419
	addi	r6 r0 0
	return
L_else_16419 : 
	call	min_caml_read_int
	add	r11 r0 r6
	call	min_caml_read_int
	add	r12 r0 r6
	call	min_caml_read_int
	add	r13 r0 r6
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r14 r0 r6
	call	min_caml_read_float
	fsti	f2 r14 0
	call	min_caml_read_float
	fsti	f2 r14 1
	call	min_caml_read_float
	fsti	f2 r14 2
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r15 r0 r6
	call	min_caml_read_float
	fsti	f2 r15 0
	call	min_caml_read_float
	fsti	f2 r15 1
	call	min_caml_read_float
	fsti	f2 r15 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_16422
	addi	r16 r0 0
	jump	L_cont_16420
L_else_16422 : 
	addi	r16 r0 1
L_cont_16420 : 
	addi	r6 r0 2
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r17 r0 r6
	call	min_caml_read_float
	fsti	f2 r17 0
	call	min_caml_read_float
	fsti	f2 r17 1
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r18 r0 r6
	call	min_caml_read_float
	fsti	f2 r18 0
	call	min_caml_read_float
	fsti	f2 r18 1
	call	min_caml_read_float
	fsti	f2 r18 2
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r19 r0 r6
	bne	r13 r0 L_else_16425
	jump	L_cont_16423
L_else_16425 : 
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r19 0
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r19 1
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r19 2
L_cont_16423 : 
	addi	r6 r0 2
	bne	r11 r6 L_else_16428
	addi	r20 r0 1
	jump	L_cont_16426
L_else_16428 : 
	add	r20 r0 r16
L_cont_16426 : 
	addi	r6 r0 4
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r10 r3 0
	sti	r11 r3 1
	sti	r12 r3 2
	sti	r13 r3 3
	sti	r14 r3 4
	sti	r15 r3 5
	sti	r20 r3 6
	sti	r17 r3 7
	sti	r18 r3 8
	sti	r19 r3 9
	sti	r6 r3 10
	add	r7 r0 r3
	addi	r3 r3 11
	addi	r6 r0 1970
	add	r1 r6 r8
	sti	r7 r1 0
	addi	r6 r0 3
	bne	r11 r6 L_else_16431
	fldi	f3 r14 0
	fbne	f3 f0 L_else_16437
	fldi	f2 r0 29
	jump	L_cont_16435
L_else_16437 : 
	fbne	f3 f0 L_else_16456
	fldi	f2 r0 29
	jump	L_cont_16454
L_else_16456 : 
	fbgt	f3 f0 L_else_16458
	fldi	f2 r0 31
	jump	L_cont_16454
L_else_16458 : 
	fldi	f2 r0 12
L_cont_16454 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_16435 : 
	fsti	f2 r14 0
	fldi	f2 r14 1
	fbne	f2 f0 L_else_16440
	fldi	f2 r0 29
	jump	L_cont_16438
L_else_16440 : 
	fbne	f2 f0 L_else_16451
	fldi	f3 r0 29
	jump	L_cont_16449
L_else_16451 : 
	fbgt	f2 f0 L_else_16453
	fldi	f3 r0 31
	jump	L_cont_16449
L_else_16453 : 
	fldi	f3 r0 12
L_cont_16449 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
L_cont_16438 : 
	fsti	f2 r14 1
	fldi	f3 r14 2
	fbne	f3 f0 L_else_16443
	fldi	f2 r0 29
	jump	L_cont_16441
L_else_16443 : 
	fbne	f3 f0 L_else_16446
	fldi	f2 r0 29
	jump	L_cont_16444
L_else_16446 : 
	fbgt	f3 f0 L_else_16448
	fldi	f2 r0 31
	jump	L_cont_16444
L_else_16448 : 
	fldi	f2 r0 12
L_cont_16444 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_16441 : 
	fsti	f2 r14 2
	jump	L_cont_16429
L_else_16431 : 
	addi	r6 r0 2
	bne	r11 r6 L_else_16460
	sub	r6 r4 r16
	fldi	f2 r14 0
	fmul	f3 f2 f2
	fldi	f2 r14 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r14 2
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_16463
	fldi	f3 r0 12
	jump	L_cont_16461
L_else_16463 : 
	bne	r6 r0 L_else_16465
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_16461
L_else_16465 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_16461 : 
	fldi	f2 r14 0
	fmul	f2 f2 f3
	fsti	f2 r14 0
	fldi	f2 r14 1
	fmul	f2 f2 f3
	fsti	f2 r14 1
	fldi	f2 r14 2
	fmul	f2 f2 f3
	fsti	f2 r14 2
	jump	L_cont_16429
L_else_16460 : 
L_cont_16429 : 
	bne	r13 r0 L_else_16434
	jump	L_cont_16432
L_else_16434 : 
	add	r6 r0 r14
	add	r7 r0 r19
	call	L_rotate_quadratic_matrix_2033
L_cont_16432 : 
	addi	r6 r0 1
	return
L_read_object_2038 : 
	addi	r6 r0 60
	bgt	r6 r21 L_else_16468
	return
L_else_16468 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_16470
	sti	r21 r0 1072
	return
L_else_16470 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_16472
	return
L_else_16472 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_16474
	sti	r21 r0 1072
	return
L_else_16474 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_16476
	return
L_else_16476 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_16478
	sti	r21 r0 1072
	return
L_else_16478 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_16480
	return
L_else_16480 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_16482
	sti	r21 r0 1072
	return
L_else_16482 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_16484
	return
L_else_16484 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_16486
	sti	r21 r0 1072
	return
L_else_16486 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_16488
	return
L_else_16488 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_16490
	sti	r21 r0 1072
	return
L_else_16490 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_16492
	return
L_else_16492 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_16494
	sti	r21 r0 1072
	return
L_else_16494 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_16496
	return
L_else_16496 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_16498
	sti	r21 r0 1072
	return
L_else_16498 : 
	addi	r21 r21 1
	jump	L_read_object_2038
L_read_net_item_2042 : 
	call	min_caml_read_int
	add	r8 r0 r6
	bne	r8 r5 L_else_16501
	addi	r6 r7 1
	addi	r7 r0 -1
	jump	min_caml_create_array
L_else_16501 : 
	addi	r6 r7 1
	sti	r8 r2 0
	sti	r7 r2 1
	add	r7 r0 r6
	addi	r2 r2 2
	call	L_read_net_item_2042
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r7 r2 1
	add	r1 r6 r7
	sti	r8 r1 0
	return
L_read_or_network_2044 : 
	addi	r7 r0 0
	call	L_read_net_item_2042
	add	r7 r0 r6
	ldi	r6 r7 0
	bne	r6 r5 L_else_16504
	addi	r6 r10 1
	jump	min_caml_create_array
L_else_16504 : 
	addi	r6 r10 1
	sti	r7 r2 0
	sti	r10 r2 1
	add	r10 r0 r6
	addi	r2 r2 2
	call	L_read_or_network_2044
	addi	r2 r2 -2
	ldi	r7 r2 0
	ldi	r10 r2 1
	add	r1 r6 r10
	sti	r7 r1 0
	return
L_read_and_network_2046 : 
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_16507
	return
L_else_16507 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_16509
	return
L_else_16509 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_16511
	return
L_else_16511 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_16513
	return
L_else_16513 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_16515
	return
L_else_16515 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_16517
	return
L_else_16517 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_16519
	return
L_else_16519 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_16521
	return
L_else_16521 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	jump	L_read_and_network_2046
L_solver_rect_2059 : 
	fldi	f5 r7 0
	fbne	f5 f0 L_else_16525
	addi	r8 r0 0
	jump	L_cont_16523
L_else_16525 : 
	ldi	r10 r6 4
	ldi	r8 r6 6
	fldi	f5 r7 0
	fbgt	f0 f5 L_else_16572
	addi	r9 r0 0
	jump	L_cont_16570
L_else_16572 : 
	addi	r9 r0 1
L_cont_16570 : 
	xor	r8 r8 r9
	fldi	f5 r10 0
	bne	r8 r0 L_else_16575
	fsub	f5 f0 f5
	jump	L_cont_16573
L_else_16575 : 
L_cont_16573 : 
	fsub	f5 f5 f2
	fldi	f6 r7 0
	fdiv	f7 f5 f6
	fldi	f5 r7 1
	fmul	f5 f7 f5
	fadd	f5 f5 f3
	fbgt	f0 f5 L_else_16578
	jump	L_cont_16576
L_else_16578 : 
	fsub	f5 f0 f5
L_cont_16576 : 
	fldi	f6 r10 1
	fbgt	f6 f5 L_else_16580
	addi	r8 r0 0
	jump	L_cont_16523
L_else_16580 : 
	fldi	f5 r7 2
	fmul	f5 f7 f5
	fadd	f5 f5 f4
	fbgt	f0 f5 L_else_16583
	jump	L_cont_16581
L_else_16583 : 
	fsub	f5 f0 f5
L_cont_16581 : 
	fldi	f6 r10 2
	fbgt	f6 f5 L_else_16585
	addi	r8 r0 0
	jump	L_cont_16523
L_else_16585 : 
	fsti	f7 r0 1073
	addi	r8 r0 1
L_cont_16523 : 
	bne	r8 r0 L_else_16527
	fldi	f5 r7 1
	fbne	f5 f0 L_else_16530
	addi	r8 r0 0
	jump	L_cont_16528
L_else_16530 : 
	ldi	r10 r6 4
	ldi	r8 r6 6
	fldi	f5 r7 1
	fbgt	f0 f5 L_else_16556
	addi	r9 r0 0
	jump	L_cont_16554
L_else_16556 : 
	addi	r9 r0 1
L_cont_16554 : 
	xor	r8 r8 r9
	fldi	f5 r10 1
	bne	r8 r0 L_else_16559
	fsub	f5 f0 f5
	jump	L_cont_16557
L_else_16559 : 
L_cont_16557 : 
	fsub	f6 f5 f3
	fldi	f5 r7 1
	fdiv	f7 f6 f5
	fldi	f5 r7 2
	fmul	f5 f7 f5
	fadd	f5 f5 f4
	fbgt	f0 f5 L_else_16562
	jump	L_cont_16560
L_else_16562 : 
	fsub	f5 f0 f5
L_cont_16560 : 
	fldi	f6 r10 2
	fbgt	f6 f5 L_else_16564
	addi	r8 r0 0
	jump	L_cont_16528
L_else_16564 : 
	fldi	f5 r7 0
	fmul	f5 f7 f5
	fadd	f5 f5 f2
	fbgt	f0 f5 L_else_16567
	jump	L_cont_16565
L_else_16567 : 
	fsub	f5 f0 f5
L_cont_16565 : 
	fldi	f6 r10 0
	fbgt	f6 f5 L_else_16569
	addi	r8 r0 0
	jump	L_cont_16528
L_else_16569 : 
	fsti	f7 r0 1073
	addi	r8 r0 1
L_cont_16528 : 
	bne	r8 r0 L_else_16532
	fldi	f5 r7 2
	fbne	f5 f0 L_else_16535
	addi	r6 r0 0
	jump	L_cont_16533
L_else_16535 : 
	ldi	r8 r6 4
	ldi	r9 r6 6
	fldi	f5 r7 2
	fbgt	f0 f5 L_else_16540
	addi	r6 r0 0
	jump	L_cont_16538
L_else_16540 : 
	addi	r6 r0 1
L_cont_16538 : 
	xor	r6 r9 r6
	fldi	f5 r8 2
	bne	r6 r0 L_else_16543
	fsub	f5 f0 f5
	jump	L_cont_16541
L_else_16543 : 
L_cont_16541 : 
	fsub	f5 f5 f4
	fldi	f4 r7 2
	fdiv	f5 f5 f4
	fldi	f4 r7 0
	fmul	f4 f5 f4
	fadd	f2 f4 f2
	fbgt	f0 f2 L_else_16546
	jump	L_cont_16544
L_else_16546 : 
	fsub	f2 f0 f2
L_cont_16544 : 
	fldi	f4 r8 0
	fbgt	f4 f2 L_else_16548
	addi	r6 r0 0
	jump	L_cont_16533
L_else_16548 : 
	fldi	f2 r7 1
	fmul	f2 f5 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_16551
	jump	L_cont_16549
L_else_16551 : 
	fsub	f2 f0 f2
L_cont_16549 : 
	fldi	f3 r8 1
	fbgt	f3 f2 L_else_16553
	addi	r6 r0 0
	jump	L_cont_16533
L_else_16553 : 
	fsti	f5 r0 1073
	addi	r6 r0 1
L_cont_16533 : 
	bne	r6 r0 L_else_16537
	addi	r6 r0 0
	return
L_else_16537 : 
	addi	r6 r0 3
	return
L_else_16532 : 
	addi	r6 r0 2
	return
L_else_16527 : 
	addi	r6 r0 1
	return
L_solver_second_2084 : 
	fldi	f9 r7 0
	fldi	f10 r7 1
	fldi	f8 r7 2
	fmul	f6 f9 f9
	ldi	r8 r6 4
	fldi	f5 r8 0
	fmul	f7 f6 f5
	fmul	f6 f10 f10
	ldi	r8 r6 4
	fldi	f5 r8 1
	fmul	f5 f6 f5
	fadd	f6 f7 f5
	fmul	f7 f8 f8
	ldi	r8 r6 4
	fldi	f5 r8 2
	fmul	f5 f7 f5
	fadd	f7 f6 f5
	ldi	r8 r6 3
	bne	r8 r0 L_else_16589
	jump	L_cont_16587
L_else_16589 : 
	fmul	f6 f10 f8
	ldi	r8 r6 9
	fldi	f5 r8 0
	fmul	f5 f6 f5
	fadd	f6 f7 f5
	fmul	f7 f8 f9
	ldi	r8 r6 9
	fldi	f5 r8 1
	fmul	f5 f7 f5
	fadd	f7 f6 f5
	fmul	f6 f9 f10
	ldi	r8 r6 9
	fldi	f5 r8 2
	fmul	f5 f6 f5
	fadd	f7 f7 f5
L_cont_16587 : 
	fbne	f7 f0 L_else_16591
	addi	r6 r0 0
	return
L_else_16591 : 
	fldi	f12 r7 0
	fldi	f11 r7 1
	fldi	f10 r7 2
	fmul	f6 f12 f2
	ldi	r7 r6 4
	fldi	f5 r7 0
	fmul	f8 f6 f5
	fmul	f6 f11 f3
	ldi	r7 r6 4
	fldi	f5 r7 1
	fmul	f5 f6 f5
	fadd	f6 f8 f5
	fmul	f8 f10 f4
	ldi	r7 r6 4
	fldi	f5 r7 2
	fmul	f5 f8 f5
	fadd	f5 f6 f5
	ldi	r7 r6 3
	bne	r7 r0 L_else_16594
	jump	L_cont_16592
L_else_16594 : 
	fmul	f8 f10 f3
	fmul	f6 f11 f4
	fadd	f8 f8 f6
	ldi	r7 r6 9
	fldi	f6 r7 0
	fmul	f9 f8 f6
	fmul	f8 f12 f4
	fmul	f6 f10 f2
	fadd	f8 f8 f6
	ldi	r7 r6 9
	fldi	f6 r7 1
	fmul	f6 f8 f6
	fadd	f9 f9 f6
	fmul	f8 f12 f3
	fmul	f6 f11 f2
	fadd	f8 f8 f6
	ldi	r7 r6 9
	fldi	f6 r7 2
	fmul	f6 f8 f6
	fadd	f8 f9 f6
	fldi	f6 r0 30
	fdiv	f6 f8 f6
	fadd	f5 f5 f6
L_cont_16592 : 
	fmul	f8 f2 f2
	ldi	r7 r6 4
	fldi	f6 r7 0
	fmul	f9 f8 f6
	fmul	f8 f3 f3
	ldi	r7 r6 4
	fldi	f6 r7 1
	fmul	f6 f8 f6
	fadd	f8 f9 f6
	fmul	f9 f4 f4
	ldi	r7 r6 4
	fldi	f6 r7 2
	fmul	f6 f9 f6
	fadd	f6 f8 f6
	ldi	r7 r6 3
	bne	r7 r0 L_else_16597
	fadd	f2 f0 f6
	jump	L_cont_16595
L_else_16597 : 
	fmul	f9 f3 f4
	ldi	r7 r6 9
	fldi	f8 r7 0
	fmul	f8 f9 f8
	fadd	f8 f6 f8
	fmul	f6 f4 f2
	ldi	r7 r6 9
	fldi	f4 r7 1
	fmul	f4 f6 f4
	fadd	f4 f8 f4
	fmul	f3 f2 f3
	ldi	r7 r6 9
	fldi	f2 r7 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_16595 : 
	ldi	r8 r6 1
	addi	r7 r0 3
	bne	r8 r7 L_else_16600
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_16598
L_else_16600 : 
L_cont_16598 : 
	fmul	f3 f5 f5
	fmul	f2 f7 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_16602
	addi	r6 r0 0
	return
L_else_16602 : 
	fsqrt	f2 f2
	ldi	r6 r6 6
	bne	r6 r0 L_else_16605
	fsub	f2 f0 f2
	jump	L_cont_16603
L_else_16605 : 
L_cont_16603 : 
	fsub	f2 f2 f5
	fdiv	f2 f2 f7
	fsti	f2 r0 1073
	addi	r6 r0 1
	return
L_solver_rect_fast_2094 : 
	fldi	f5 r8 0
	fsub	f6 f5 f2
	fldi	f5 r8 1
	fmul	f7 f6 f5
	fldi	f5 r7 1
	fmul	f5 f7 f5
	fadd	f5 f5 f3
	fbgt	f0 f5 L_else_16609
	jump	L_cont_16607
L_else_16609 : 
	fsub	f5 f0 f5
L_cont_16607 : 
	ldi	r9 r6 4
	fldi	f6 r9 1
	fbgt	f6 f5 L_else_16612
	addi	r9 r0 0
	jump	L_cont_16610
L_else_16612 : 
	fldi	f5 r7 2
	fmul	f5 f7 f5
	fadd	f5 f5 f4
	fbgt	f0 f5 L_else_16649
	jump	L_cont_16647
L_else_16649 : 
	fsub	f5 f0 f5
L_cont_16647 : 
	ldi	r9 r6 4
	fldi	f6 r9 2
	fbgt	f6 f5 L_else_16651
	addi	r9 r0 0
	jump	L_cont_16610
L_else_16651 : 
	fldi	f5 r8 1
	fbne	f5 f0 L_else_16654
	addi	r9 r0 1
	jump	L_cont_16652
L_else_16654 : 
	addi	r9 r0 0
L_cont_16652 : 
	sub	r9 r4 r9
L_cont_16610 : 
	bne	r9 r0 L_else_16614
	fldi	f5 r8 2
	fsub	f5 f5 f3
	fldi	f6 r8 3
	fmul	f7 f5 f6
	fldi	f5 r7 0
	fmul	f5 f7 f5
	fadd	f5 f5 f2
	fbgt	f0 f5 L_else_16617
	jump	L_cont_16615
L_else_16617 : 
	fsub	f5 f0 f5
L_cont_16615 : 
	ldi	r9 r6 4
	fldi	f6 r9 0
	fbgt	f6 f5 L_else_16620
	addi	r9 r0 0
	jump	L_cont_16618
L_else_16620 : 
	fldi	f5 r7 2
	fmul	f5 f7 f5
	fadd	f5 f5 f4
	fbgt	f0 f5 L_else_16641
	jump	L_cont_16639
L_else_16641 : 
	fsub	f5 f0 f5
L_cont_16639 : 
	ldi	r9 r6 4
	fldi	f6 r9 2
	fbgt	f6 f5 L_else_16643
	addi	r9 r0 0
	jump	L_cont_16618
L_else_16643 : 
	fldi	f5 r8 3
	fbne	f5 f0 L_else_16646
	addi	r9 r0 1
	jump	L_cont_16644
L_else_16646 : 
	addi	r9 r0 0
L_cont_16644 : 
	sub	r9 r4 r9
L_cont_16618 : 
	bne	r9 r0 L_else_16622
	fldi	f5 r8 4
	fsub	f5 f5 f4
	fldi	f4 r8 5
	fmul	f5 f5 f4
	fldi	f4 r7 0
	fmul	f4 f5 f4
	fadd	f2 f4 f2
	fbgt	f0 f2 L_else_16625
	jump	L_cont_16623
L_else_16625 : 
	fsub	f2 f0 f2
L_cont_16623 : 
	ldi	r9 r6 4
	fldi	f4 r9 0
	fbgt	f4 f2 L_else_16628
	addi	r6 r0 0
	jump	L_cont_16626
L_else_16628 : 
	fldi	f2 r7 1
	fmul	f2 f5 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_16633
	jump	L_cont_16631
L_else_16633 : 
	fsub	f2 f0 f2
L_cont_16631 : 
	ldi	r6 r6 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_16635
	addi	r6 r0 0
	jump	L_cont_16626
L_else_16635 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_16638
	addi	r6 r0 1
	jump	L_cont_16636
L_else_16638 : 
	addi	r6 r0 0
L_cont_16636 : 
	sub	r6 r4 r6
L_cont_16626 : 
	bne	r6 r0 L_else_16630
	addi	r6 r0 0
	return
L_else_16630 : 
	fsti	f5 r0 1073
	addi	r6 r0 3
	return
L_else_16622 : 
	fsti	f7 r0 1073
	addi	r6 r0 2
	return
L_else_16614 : 
	fsti	f7 r0 1073
	addi	r6 r0 1
	return
L_solver_second_fast_2107 : 
	fldi	f9 r7 0
	fbne	f9 f0 L_else_16657
	addi	r6 r0 0
	return
L_else_16657 : 
	fldi	f5 r7 1
	fmul	f6 f5 f2
	fldi	f5 r7 2
	fmul	f5 f5 f3
	fadd	f6 f6 f5
	fldi	f5 r7 3
	fmul	f5 f5 f4
	fadd	f8 f6 f5
	fmul	f6 f2 f2
	ldi	r8 r6 4
	fldi	f5 r8 0
	fmul	f7 f6 f5
	fmul	f6 f3 f3
	ldi	r8 r6 4
	fldi	f5 r8 1
	fmul	f5 f6 f5
	fadd	f6 f7 f5
	fmul	f7 f4 f4
	ldi	r8 r6 4
	fldi	f5 r8 2
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	ldi	r8 r6 3
	bne	r8 r0 L_else_16660
	fadd	f2 f0 f5
	jump	L_cont_16658
L_else_16660 : 
	fmul	f7 f3 f4
	ldi	r8 r6 9
	fldi	f6 r8 0
	fmul	f6 f7 f6
	fadd	f6 f5 f6
	fmul	f5 f4 f2
	ldi	r8 r6 9
	fldi	f4 r8 1
	fmul	f4 f5 f4
	fadd	f4 f6 f4
	fmul	f3 f2 f3
	ldi	r8 r6 9
	fldi	f2 r8 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_16658 : 
	ldi	r9 r6 1
	addi	r8 r0 3
	bne	r9 r8 L_else_16663
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_16661
L_else_16663 : 
L_cont_16661 : 
	fmul	f3 f8 f8
	fmul	f2 f9 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_16665
	addi	r6 r0 0
	return
L_else_16665 : 
	ldi	r6 r6 6
	bne	r6 r0 L_else_16668
	fsqrt	f2 f2
	fsub	f3 f8 f2
	fldi	f2 r7 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_16666
L_else_16668 : 
	fsqrt	f2 f2
	fadd	f3 f8 f2
	fldi	f2 r7 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_16666 : 
	addi	r6 r0 1
	return
L_solver_fast_2113 : 
	ldi	r9 r6 1970
	fldi	f3 r8 0
	ldi	r10 r9 5
	fldi	f2 r10 0
	fsub	f3 f3 f2
	fldi	f4 r8 1
	ldi	r10 r9 5
	fldi	f2 r10 1
	fsub	f5 f4 f2
	fldi	f4 r8 2
	ldi	r8 r9 5
	fldi	f2 r8 2
	fsub	f4 f4 f2
	ldi	r8 r7 1
	add	r1 r8 r6
	ldi	r8 r1 0
	ldi	r10 r9 1
	bne	r10 r4 L_else_16671
	ldi	r7 r7 0
	add	r6 r0 r9
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	jump	L_solver_rect_fast_2094
L_else_16671 : 
	addi	r6 r0 2
	bne	r10 r6 L_else_16673
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_16675
	addi	r6 r0 0
	return
L_else_16675 : 
	fldi	f2 r8 1
	fmul	f3 f2 f3
	fldi	f2 r8 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	return
L_else_16673 : 
	fldi	f9 r8 0
	fbne	f9 f0 L_else_16677
	addi	r6 r0 0
	return
L_else_16677 : 
	fldi	f2 r8 1
	fmul	f6 f2 f3
	fldi	f2 r8 2
	fmul	f2 f2 f5
	fadd	f6 f6 f2
	fldi	f2 r8 3
	fmul	f2 f2 f4
	fadd	f8 f6 f2
	fmul	f6 f3 f3
	ldi	r6 r9 4
	fldi	f2 r6 0
	fmul	f6 f6 f2
	fmul	f7 f5 f5
	ldi	r6 r9 4
	fldi	f2 r6 1
	fmul	f2 f7 f2
	fadd	f7 f6 f2
	fmul	f6 f4 f4
	ldi	r6 r9 4
	fldi	f2 r6 2
	fmul	f2 f6 f2
	fadd	f2 f7 f2
	ldi	r6 r9 3
	bne	r6 r0 L_else_16680
	jump	L_cont_16678
L_else_16680 : 
	fmul	f7 f5 f4
	ldi	r6 r9 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f4 f4 f3
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f6 f2
	fmul	f3 f3 f5
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_16678 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else_16683
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_16681
L_else_16683 : 
L_cont_16681 : 
	fmul	f3 f8 f8
	fmul	f2 f9 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_16685
	addi	r6 r0 0
	return
L_else_16685 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_16688
	fsqrt	f2 f2
	fsub	f2 f8 f2
	fldi	f3 r8 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_16686
L_else_16688 : 
	fsqrt	f2 f2
	fadd	f2 f8 f2
	fldi	f3 r8 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_16686 : 
	addi	r6 r0 1
	return
L_solver_fast2_2131 : 
	ldi	r9 r6 1970
	ldi	r10 r9 10
	fldi	f2 r10 0
	fldi	f3 r10 1
	fldi	f4 r10 2
	ldi	r8 r7 1
	add	r1 r8 r6
	ldi	r8 r1 0
	ldi	r6 r9 1
	bne	r6 r4 L_else_16691
	ldi	r7 r7 0
	add	r6 r0 r9
	jump	L_solver_rect_fast_2094
L_else_16691 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_16693
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_16695
	addi	r6 r0 0
	return
L_else_16695 : 
	fldi	f3 r8 0
	fldi	f2 r10 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	return
L_else_16693 : 
	fldi	f6 r8 0
	fbne	f6 f0 L_else_16697
	addi	r6 r0 0
	return
L_else_16697 : 
	fldi	f5 r8 1
	fmul	f5 f5 f2
	fldi	f2 r8 2
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r8 3
	fmul	f2 f2 f4
	fadd	f4 f3 f2
	fldi	f2 r10 3
	fmul	f3 f4 f4
	fmul	f2 f6 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_16699
	addi	r6 r0 0
	return
L_else_16699 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_16702
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_16700
L_else_16702 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_16700 : 
	addi	r6 r0 1
	return
L_setup_rect_table_2134 : 
	addi	r6 r0 6
	fldi	f2 r0 29
	call	min_caml_create_float_array
	fldi	f2 r8 0
	fbne	f2 f0 L_else_16706
	fldi	f2 r0 29
	fsti	f2 r6 1
	jump	L_cont_16704
L_else_16706 : 
	ldi	r9 r10 6
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_16727
	addi	r7 r0 0
	jump	L_cont_16725
L_else_16727 : 
	addi	r7 r0 1
L_cont_16725 : 
	xor	r9 r9 r7
	ldi	r7 r10 4
	fldi	f2 r7 0
	bne	r9 r0 L_else_16730
	fsub	f2 f0 f2
	jump	L_cont_16728
L_else_16730 : 
L_cont_16728 : 
	fsti	f2 r6 0
	fldi	f3 r0 12
	fldi	f2 r8 0
	fdiv	f2 f3 f2
	fsti	f2 r6 1
L_cont_16704 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_16709
	fldi	f2 r0 29
	fsti	f2 r6 3
	jump	L_cont_16707
L_else_16709 : 
	ldi	r7 r10 6
	fldi	f2 r8 1
	fbgt	f0 f2 L_else_16721
	addi	r9 r0 0
	jump	L_cont_16719
L_else_16721 : 
	addi	r9 r0 1
L_cont_16719 : 
	xor	r7 r7 r9
	ldi	r9 r10 4
	fldi	f2 r9 1
	bne	r7 r0 L_else_16724
	fsub	f2 f0 f2
	jump	L_cont_16722
L_else_16724 : 
L_cont_16722 : 
	fsti	f2 r6 2
	fldi	f2 r0 12
	fldi	f3 r8 1
	fdiv	f2 f2 f3
	fsti	f2 r6 3
L_cont_16707 : 
	fldi	f2 r8 2
	fbne	f2 f0 L_else_16712
	fldi	f2 r0 29
	fsti	f2 r6 5
	jump	L_cont_16710
L_else_16712 : 
	ldi	r9 r10 6
	fldi	f2 r8 2
	fbgt	f0 f2 L_else_16715
	addi	r7 r0 0
	jump	L_cont_16713
L_else_16715 : 
	addi	r7 r0 1
L_cont_16713 : 
	xor	r9 r9 r7
	ldi	r7 r10 4
	fldi	f2 r7 2
	bne	r9 r0 L_else_16718
	fsub	f2 f0 f2
	jump	L_cont_16716
L_else_16718 : 
L_cont_16716 : 
	fsti	f2 r6 4
	fldi	f2 r0 12
	fldi	f3 r8 2
	fdiv	f2 f2 f3
	fsti	f2 r6 5
L_cont_16710 : 
	return
L_setup_surface_table_2137 : 
	addi	r6 r0 4
	fldi	f2 r0 29
	call	min_caml_create_float_array
	fldi	f3 r8 0
	ldi	r7 r10 4
	fldi	f2 r7 0
	fmul	f4 f3 f2
	fldi	f3 r8 1
	ldi	r7 r10 4
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fldi	f4 r8 2
	ldi	r7 r10 4
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f3 f0 L_else_16734
	fldi	f2 r0 29
	fsti	f2 r6 0
	jump	L_cont_16732
L_else_16734 : 
	fldi	f2 r0 31
	fdiv	f2 f2 f3
	fsti	f2 r6 0
	ldi	r7 r10 4
	fldi	f2 r7 0
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r6 1
	ldi	r7 r10 4
	fldi	f2 r7 1
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r6 2
	ldi	r7 r10 4
	fldi	f2 r7 2
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r6 3
L_cont_16732 : 
	return
L_setup_second_table_2140 : 
	addi	r6 r0 5
	fldi	f2 r0 29
	call	min_caml_create_float_array
	fldi	f7 r8 0
	fldi	f6 r8 1
	fldi	f5 r8 2
	fmul	f3 f7 f7
	ldi	r7 r10 4
	fldi	f2 r7 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r7 r10 4
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f5
	ldi	r7 r10 4
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r7 r10 3
	bne	r7 r0 L_else_16738
	jump	L_cont_16736
L_else_16738 : 
	fmul	f4 f6 f5
	ldi	r7 r10 9
	fldi	f3 r7 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f5 f7
	ldi	r7 r10 9
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f6
	ldi	r7 r10 9
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_16736 : 
	fldi	f4 r8 0
	ldi	r7 r10 4
	fldi	f3 r7 0
	fmul	f3 f4 f3
	fsub	f8 f0 f3
	fldi	f4 r8 1
	ldi	r7 r10 4
	fldi	f3 r7 1
	fmul	f3 f4 f3
	fsub	f7 f0 f3
	fldi	f4 r8 2
	ldi	r7 r10 4
	fldi	f3 r7 2
	fmul	f3 f4 f3
	fsub	f6 f0 f3
	fsti	f2 r6 0
	ldi	r7 r10 3
	bne	r7 r0 L_else_16741
	fsti	f8 r6 1
	fsti	f7 r6 2
	fsti	f6 r6 3
	jump	L_cont_16739
L_else_16741 : 
	fldi	f4 r8 2
	ldi	r7 r10 9
	fldi	f3 r7 1
	fmul	f5 f4 f3
	fldi	f4 r8 1
	ldi	r7 r10 9
	fldi	f3 r7 2
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 30
	fdiv	f3 f3 f4
	fsub	f3 f8 f3
	fsti	f3 r6 1
	fldi	f4 r8 2
	ldi	r7 r10 9
	fldi	f3 r7 0
	fmul	f4 f4 f3
	fldi	f5 r8 0
	ldi	r7 r10 9
	fldi	f3 r7 2
	fmul	f3 f5 f3
	fadd	f4 f4 f3
	fldi	f3 r0 30
	fdiv	f3 f4 f3
	fsub	f3 f7 f3
	fsti	f3 r6 2
	fldi	f4 r8 1
	ldi	r7 r10 9
	fldi	f3 r7 0
	fmul	f5 f4 f3
	fldi	f4 r8 0
	ldi	r7 r10 9
	fldi	f3 r7 1
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 30
	fdiv	f3 f3 f4
	fsub	f3 f6 f3
	fsti	f3 r6 3
L_cont_16739 : 
	fbne	f2 f0 L_else_16744
	jump	L_cont_16742
L_else_16744 : 
	fldi	f3 r0 12
	fdiv	f2 f3 f2
	fsti	f2 r6 4
L_cont_16742 : 
	return
L_iter_setup_dirvec_constants_2143 : 
	bgt	r0 r12 L_else_16747
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r6 r10 1
	bne	r6 r4 L_else_16750
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_16748
L_else_16750 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_16773
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_16748
L_else_16773 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_16748 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_16752
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_16755
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_16753
L_else_16755 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_16771
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_16753
L_else_16771 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_16753 : 
	addi	r13 r13 -1
	bgt	r0 r13 L_else_16757
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r6 r10 1
	bne	r6 r4 L_else_16760
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_16758
L_else_16760 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_16769
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_16758
L_else_16769 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_16758 : 
	addi	r13 r13 -1
	bgt	r0 r13 L_else_16762
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_16765
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_16763
L_else_16765 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_16767
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_16763
L_else_16767 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_16763 : 
	addi	r12 r13 -1
	jump	L_iter_setup_dirvec_constants_2143
L_else_16762 : 
	return
L_else_16757 : 
	return
L_else_16752 : 
	return
L_else_16747 : 
	return
L_setup_startp_constants_2148 : 
	bgt	r0 r7 L_else_16776
	ldi	r11 r7 1970
	ldi	r10 r11 10
	ldi	r9 r11 1
	fldi	f3 r6 0
	ldi	r8 r11 5
	fldi	f2 r8 0
	fsub	f2 f3 f2
	fsti	f2 r10 0
	fldi	f3 r6 1
	ldi	r8 r11 5
	fldi	f2 r8 1
	fsub	f2 f3 f2
	fsti	f2 r10 1
	fldi	f3 r6 2
	ldi	r8 r11 5
	fldi	f2 r8 2
	fsub	f2 f3 f2
	fsti	f2 r10 2
	addi	r8 r0 2
	bne	r9 r8 L_else_16779
	ldi	r8 r11 4
	fldi	f3 r10 0
	fldi	f5 r10 1
	fldi	f4 r10 2
	fldi	f2 r8 0
	fmul	f3 f2 f3
	fldi	f2 r8 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r8 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r10 3
	jump	L_cont_16777
L_else_16779 : 
	addi	r8 r0 2
	bgt	r9 r8 L_else_16781
	jump	L_cont_16777
L_else_16781 : 
	fldi	f7 r10 0
	fldi	f5 r10 1
	fldi	f6 r10 2
	fmul	f3 f7 f7
	ldi	r8 r11 4
	fldi	f2 r8 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r8 r11 4
	fldi	f2 r8 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f6 f6
	ldi	r8 r11 4
	fldi	f2 r8 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r8 r11 3
	bne	r8 r0 L_else_16784
	jump	L_cont_16782
L_else_16784 : 
	fmul	f4 f5 f6
	ldi	r8 r11 9
	fldi	f3 r8 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f6 f7
	ldi	r8 r11 9
	fldi	f2 r8 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f2 f7 f5
	ldi	r8 r11 9
	fldi	f3 r8 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
L_cont_16782 : 
	addi	r8 r0 3
	bne	r9 r8 L_else_16787
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_16785
L_else_16787 : 
L_cont_16785 : 
	fsti	f2 r10 3
L_cont_16777 : 
	addi	r7 r7 -1
	jump	L_setup_startp_constants_2148
L_else_16776 : 
	return
L_is_second_outside_2163 : 
	fmul	f6 f2 f2
	ldi	r7 r6 4
	fldi	f5 r7 0
	fmul	f7 f6 f5
	fmul	f6 f3 f3
	ldi	r7 r6 4
	fldi	f5 r7 1
	fmul	f5 f6 f5
	fadd	f6 f7 f5
	fmul	f7 f4 f4
	ldi	r7 r6 4
	fldi	f5 r7 2
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	ldi	r7 r6 3
	bne	r7 r0 L_else_16791
	fadd	f2 f0 f5
	jump	L_cont_16789
L_else_16791 : 
	fmul	f7 f3 f4
	ldi	r7 r6 9
	fldi	f6 r7 0
	fmul	f6 f7 f6
	fadd	f6 f5 f6
	fmul	f5 f4 f2
	ldi	r7 r6 9
	fldi	f4 r7 1
	fmul	f4 f5 f4
	fadd	f4 f6 f4
	fmul	f3 f2 f3
	ldi	r7 r6 9
	fldi	f2 r7 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_16789 : 
	ldi	r8 r6 1
	addi	r7 r0 3
	bne	r8 r7 L_else_16794
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_16792
L_else_16794 : 
L_cont_16792 : 
	ldi	r7 r6 6
	fbgt	f0 f2 L_else_16797
	addi	r6 r0 0
	jump	L_cont_16795
L_else_16797 : 
	addi	r6 r0 1
L_cont_16795 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	return
L_is_outside_2168 : 
	ldi	r7 r6 5
	fldi	f5 r7 0
	fsub	f5 f2 f5
	ldi	r7 r6 5
	fldi	f2 r7 1
	fsub	f6 f3 f2
	ldi	r7 r6 5
	fldi	f2 r7 2
	fsub	f3 f4 f2
	ldi	r8 r6 1
	bne	r8 r4 L_else_16800
	fbgt	f0 f5 L_else_16803
	fadd	f2 f0 f5
	jump	L_cont_16801
L_else_16803 : 
	fsub	f2 f0 f5
L_cont_16801 : 
	ldi	r7 r6 4
	fldi	f4 r7 0
	fbgt	f4 f2 L_else_16806
	addi	r7 r0 0
	jump	L_cont_16804
L_else_16806 : 
	fbgt	f0 f6 L_else_16811
	fadd	f2 f0 f6
	jump	L_cont_16809
L_else_16811 : 
	fsub	f2 f0 f6
L_cont_16809 : 
	ldi	r7 r6 4
	fldi	f4 r7 1
	fbgt	f4 f2 L_else_16813
	addi	r7 r0 0
	jump	L_cont_16804
L_else_16813 : 
	fbgt	f0 f3 L_else_16816
	fadd	f2 f0 f3
	jump	L_cont_16814
L_else_16816 : 
	fsub	f2 f0 f3
L_cont_16814 : 
	ldi	r7 r6 4
	fldi	f3 r7 2
	fbgt	f3 f2 L_else_16818
	addi	r7 r0 0
	jump	L_cont_16804
L_else_16818 : 
	addi	r7 r0 1
L_cont_16804 : 
	bne	r7 r0 L_else_16808
	ldi	r6 r6 6
	sub	r6 r4 r6
	return
L_else_16808 : 
	ldi	r6 r6 6
	return
L_else_16800 : 
	addi	r7 r0 2
	bne	r8 r7 L_else_16820
	ldi	r7 r6 4
	fldi	f2 r7 0
	fmul	f4 f2 f5
	fldi	f2 r7 1
	fmul	f2 f2 f6
	fadd	f4 f4 f2
	fldi	f2 r7 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	ldi	r7 r6 6
	fbgt	f0 f2 L_else_16823
	addi	r6 r0 0
	jump	L_cont_16821
L_else_16823 : 
	addi	r6 r0 1
L_cont_16821 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	return
L_else_16820 : 
	fmul	f4 f5 f5
	ldi	r7 r6 4
	fldi	f2 r7 0
	fmul	f7 f4 f2
	fmul	f4 f6 f6
	ldi	r7 r6 4
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f4 f7 f2
	fmul	f7 f3 f3
	ldi	r7 r6 4
	fldi	f2 r7 2
	fmul	f2 f7 f2
	fadd	f2 f4 f2
	ldi	r7 r6 3
	bne	r7 r0 L_else_16826
	jump	L_cont_16824
L_else_16826 : 
	fmul	f7 f6 f3
	ldi	r7 r6 9
	fldi	f4 r7 0
	fmul	f4 f7 f4
	fadd	f4 f2 f4
	fmul	f3 f3 f5
	ldi	r7 r6 9
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fmul	f4 f5 f6
	ldi	r7 r6 9
	fldi	f3 r7 2
	fmul	f3 f4 f3
	fadd	f2 f2 f3
L_cont_16824 : 
	ldi	r8 r6 1
	addi	r7 r0 3
	bne	r8 r7 L_else_16829
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_16827
L_else_16829 : 
L_cont_16827 : 
	ldi	r7 r6 6
	fbgt	f0 f2 L_else_16832
	addi	r6 r0 0
	jump	L_cont_16830
L_else_16832 : 
	addi	r6 r0 1
L_cont_16830 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	return
L_check_all_inside_2173 : 
	add	r1 r9 r6
	ldi	r7 r1 0
	bne	r7 r5 L_else_16835
	addi	r6 r0 1
	return
L_else_16835 : 
	ldi	r10 r7 1970
	ldi	r7 r10 5
	fldi	f2 r7 0
	fsub	f5 f8 f2
	ldi	r7 r10 5
	fldi	f2 r7 1
	fsub	f4 f9 f2
	ldi	r7 r10 5
	fldi	f2 r7 2
	fsub	f3 f10 f2
	ldi	r8 r10 1
	bne	r8 r4 L_else_16838
	fbgt	f0 f5 L_else_16881
	fadd	f2 f0 f5
	jump	L_cont_16879
L_else_16881 : 
	fsub	f2 f0 f5
L_cont_16879 : 
	ldi	r7 r10 4
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_16884
	addi	r7 r0 0
	jump	L_cont_16882
L_else_16884 : 
	fbgt	f0 f4 L_else_16889
	fadd	f2 f0 f4
	jump	L_cont_16887
L_else_16889 : 
	fsub	f2 f0 f4
L_cont_16887 : 
	ldi	r7 r10 4
	fldi	f4 r7 1
	fbgt	f4 f2 L_else_16891
	addi	r7 r0 0
	jump	L_cont_16882
L_else_16891 : 
	fbgt	f0 f3 L_else_16894
	fadd	f2 f0 f3
	jump	L_cont_16892
L_else_16894 : 
	fsub	f2 f0 f3
L_cont_16892 : 
	ldi	r7 r10 4
	fldi	f3 r7 2
	fbgt	f3 f2 L_else_16896
	addi	r7 r0 0
	jump	L_cont_16882
L_else_16896 : 
	addi	r7 r0 1
L_cont_16882 : 
	bne	r7 r0 L_else_16886
	ldi	r7 r10 6
	sub	r7 r4 r7
	jump	L_cont_16836
L_else_16886 : 
	ldi	r7 r10 6
	jump	L_cont_16836
L_else_16838 : 
	addi	r7 r0 2
	bne	r8 r7 L_else_16898
	ldi	r7 r10 4
	fldi	f2 r7 0
	fmul	f5 f2 f5
	fldi	f2 r7 1
	fmul	f2 f2 f4
	fadd	f4 f5 f2
	fldi	f2 r7 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	ldi	r8 r10 6
	fbgt	f0 f2 L_else_16901
	addi	r7 r0 0
	jump	L_cont_16899
L_else_16901 : 
	addi	r7 r0 1
L_cont_16899 : 
	xor	r7 r8 r7
	sub	r7 r4 r7
	jump	L_cont_16836
L_else_16898 : 
	fmul	f6 f5 f5
	ldi	r7 r10 4
	fldi	f2 r7 0
	fmul	f7 f6 f2
	fmul	f6 f4 f4
	ldi	r7 r10 4
	fldi	f2 r7 1
	fmul	f2 f6 f2
	fadd	f6 f7 f2
	fmul	f7 f3 f3
	ldi	r7 r10 4
	fldi	f2 r7 2
	fmul	f2 f7 f2
	fadd	f2 f6 f2
	ldi	r7 r10 3
	bne	r7 r0 L_else_16904
	jump	L_cont_16902
L_else_16904 : 
	fmul	f7 f4 f3
	ldi	r7 r10 9
	fldi	f6 r7 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f3 f3 f5
	ldi	r7 r10 9
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f3 f6 f2
	fmul	f4 f5 f4
	ldi	r7 r10 9
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_16902 : 
	ldi	r8 r10 1
	addi	r7 r0 3
	bne	r8 r7 L_else_16907
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_16905
L_else_16907 : 
L_cont_16905 : 
	ldi	r8 r10 6
	fbgt	f0 f2 L_else_16910
	addi	r7 r0 0
	jump	L_cont_16908
L_else_16910 : 
	addi	r7 r0 1
L_cont_16908 : 
	xor	r7 r8 r7
	sub	r7 r4 r7
L_cont_16836 : 
	bne	r7 r0 L_else_16840
	addi	r10 r6 1
	add	r1 r9 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_16842
	addi	r6 r0 1
	return
L_else_16842 : 
	ldi	r6 r6 1970
	fadd	f2 f0 f8
	fadd	f3 f0 f9
	fadd	f4 f0 f10
	call	L_is_outside_2168
	bne	r6 r0 L_else_16844
	addi	r10 r10 1
	add	r1 r9 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_16846
	addi	r6 r0 1
	return
L_else_16846 : 
	ldi	r6 r6 1970
	ldi	r7 r6 5
	fldi	f2 r7 0
	fsub	f2 f8 f2
	ldi	r7 r6 5
	fldi	f3 r7 1
	fsub	f3 f9 f3
	ldi	r7 r6 5
	fldi	f4 r7 2
	fsub	f4 f10 f4
	ldi	r7 r6 1
	bne	r7 r4 L_else_16849
	fbgt	f0 f2 L_else_16858
	jump	L_cont_16856
L_else_16858 : 
	fsub	f2 f0 f2
L_cont_16856 : 
	ldi	r7 r6 4
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_16861
	addi	r7 r0 0
	jump	L_cont_16859
L_else_16861 : 
	fbgt	f0 f3 L_else_16866
	jump	L_cont_16864
L_else_16866 : 
	fsub	f3 f0 f3
L_cont_16864 : 
	ldi	r7 r6 4
	fldi	f2 r7 1
	fbgt	f2 f3 L_else_16868
	addi	r7 r0 0
	jump	L_cont_16859
L_else_16868 : 
	fbgt	f0 f4 L_else_16871
	jump	L_cont_16869
L_else_16871 : 
	fsub	f4 f0 f4
L_cont_16869 : 
	ldi	r7 r6 4
	fldi	f2 r7 2
	fbgt	f2 f4 L_else_16873
	addi	r7 r0 0
	jump	L_cont_16859
L_else_16873 : 
	addi	r7 r0 1
L_cont_16859 : 
	bne	r7 r0 L_else_16863
	ldi	r6 r6 6
	sub	r6 r4 r6
	jump	L_cont_16847
L_else_16863 : 
	ldi	r6 r6 6
	jump	L_cont_16847
L_else_16849 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_16875
	ldi	r7 r6 4
	fldi	f5 r7 0
	fmul	f5 f5 f2
	fldi	f2 r7 1
	fmul	f2 f2 f3
	fadd	f2 f5 f2
	fldi	f3 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	ldi	r6 r6 6
	fbgt	f0 f2 L_else_16878
	addi	r7 r0 0
	jump	L_cont_16876
L_else_16878 : 
	addi	r7 r0 1
L_cont_16876 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
	jump	L_cont_16847
L_else_16875 : 
	call	L_is_second_outside_2163
L_cont_16847 : 
	bne	r6 r0 L_else_16851
	addi	r10 r10 1
	add	r1 r9 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_16853
	addi	r6 r0 1
	return
L_else_16853 : 
	ldi	r6 r6 1970
	fadd	f2 f0 f8
	fadd	f3 f0 f9
	fadd	f4 f0 f10
	call	L_is_outside_2168
	bne	r6 r0 L_else_16855
	addi	r6 r10 1
	jump	L_check_all_inside_2173
L_else_16855 : 
	addi	r6 r0 0
	return
L_else_16851 : 
	addi	r6 r0 0
	return
L_else_16844 : 
	addi	r6 r0 0
	return
L_else_16840 : 
	addi	r6 r0 0
	return
L_shadow_check_and_group_2179 : 
	ldi	r6 r11 0
	bne	r6 r5 L_else_16913
	addi	r6 r0 0
	return
L_else_16913 : 
	ldi	r10 r11 0
	addi	r13 r0 1905
	ldi	r6 r10 1970
	fldi	f3 r0 1042
	ldi	r7 r6 5
	fldi	f2 r7 0
	fsub	f2 f3 f2
	fldi	f4 r0 1043
	ldi	r7 r6 5
	fldi	f3 r7 1
	fsub	f3 f4 f3
	fldi	f5 r0 1044
	ldi	r7 r6 5
	fldi	f4 r7 2
	fsub	f4 f5 f4
	ldi	r7 r13 1
	add	r1 r7 r10
	ldi	r8 r1 0
	ldi	r9 r6 1
	bne	r9 r4 L_else_16916
	ldi	r7 r13 0
	call	L_solver_rect_fast_2094
	jump	L_cont_16914
L_else_16916 : 
	addi	r7 r0 2
	bne	r9 r7 L_else_16967
	fldi	f5 r8 0
	fbgt	f0 f5 L_else_16969
	addi	r6 r0 0
	jump	L_cont_16914
L_else_16969 : 
	fldi	f5 r8 1
	fmul	f5 f5 f2
	fldi	f2 r8 2
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r8 3
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_16914
L_else_16967 : 
	add	r7 r0 r8
	call	L_solver_second_fast_2107
L_cont_16914 : 
	fldi	f3 r0 1073
	bne	r6 r0 L_else_16918
	ldi	r6 r10 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_16920
	addi	r6 r0 0
	return
L_else_16920 : 
	addi	r11 r11 1
	jump	L_shadow_check_and_group_2179
L_else_16918 : 
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_16922
	ldi	r6 r10 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_16924
	addi	r6 r0 0
	return
L_else_16924 : 
	addi	r11 r11 1
	jump	L_shadow_check_and_group_2179
L_else_16922 : 
	fldi	f2 r0 33
	fadd	f4 f3 f2
	fldi	f2 r0 1039
	fmul	f3 f2 f4
	fldi	f2 r0 1042
	fadd	f8 f3 f2
	fldi	f2 r0 1040
	fmul	f3 f2 f4
	fldi	f2 r0 1043
	fadd	f9 f3 f2
	fldi	f2 r0 1041
	fmul	f3 f2 f4
	fldi	f2 r0 1044
	fadd	f10 f3 f2
	ldi	r6 r12 0
	bne	r6 r5 L_else_16927
	addi	r6 r0 1
	jump	L_cont_16925
L_else_16927 : 
	ldi	r6 r6 1970
	fadd	f2 f0 f8
	fadd	f3 f0 f9
	fadd	f4 f0 f10
	call	L_is_outside_2168
	bne	r6 r0 L_else_16931
	ldi	r6 r12 1
	bne	r6 r5 L_else_16933
	addi	r6 r0 1
	jump	L_cont_16925
L_else_16933 : 
	ldi	r6 r6 1970
	ldi	r7 r6 5
	fldi	f2 r7 0
	fsub	f2 f8 f2
	ldi	r7 r6 5
	fldi	f3 r7 1
	fsub	f3 f9 f3
	ldi	r7 r6 5
	fldi	f4 r7 2
	fsub	f4 f10 f4
	ldi	r8 r6 1
	bne	r8 r4 L_else_16936
	fbgt	f0 f2 L_else_16945
	jump	L_cont_16943
L_else_16945 : 
	fsub	f2 f0 f2
L_cont_16943 : 
	ldi	r7 r6 4
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_16948
	addi	r7 r0 0
	jump	L_cont_16946
L_else_16948 : 
	fbgt	f0 f3 L_else_16953
	jump	L_cont_16951
L_else_16953 : 
	fsub	f3 f0 f3
L_cont_16951 : 
	ldi	r7 r6 4
	fldi	f2 r7 1
	fbgt	f2 f3 L_else_16955
	addi	r7 r0 0
	jump	L_cont_16946
L_else_16955 : 
	fbgt	f0 f4 L_else_16958
	jump	L_cont_16956
L_else_16958 : 
	fsub	f4 f0 f4
L_cont_16956 : 
	ldi	r7 r6 4
	fldi	f2 r7 2
	fbgt	f2 f4 L_else_16960
	addi	r7 r0 0
	jump	L_cont_16946
L_else_16960 : 
	addi	r7 r0 1
L_cont_16946 : 
	bne	r7 r0 L_else_16950
	ldi	r6 r6 6
	sub	r6 r4 r6
	jump	L_cont_16934
L_else_16950 : 
	ldi	r6 r6 6
	jump	L_cont_16934
L_else_16936 : 
	addi	r7 r0 2
	bne	r8 r7 L_else_16962
	ldi	r7 r6 4
	fldi	f5 r7 0
	fmul	f5 f5 f2
	fldi	f2 r7 1
	fmul	f2 f2 f3
	fadd	f2 f5 f2
	fldi	f3 r7 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	ldi	r7 r6 6
	fbgt	f0 f2 L_else_16965
	addi	r6 r0 0
	jump	L_cont_16963
L_else_16965 : 
	addi	r6 r0 1
L_cont_16963 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_16934
L_else_16962 : 
	call	L_is_second_outside_2163
L_cont_16934 : 
	bne	r6 r0 L_else_16938
	ldi	r6 r12 2
	bne	r6 r5 L_else_16940
	addi	r6 r0 1
	jump	L_cont_16925
L_else_16940 : 
	ldi	r6 r6 1970
	fadd	f2 f0 f8
	fadd	f3 f0 f9
	fadd	f4 f0 f10
	call	L_is_outside_2168
	bne	r6 r0 L_else_16942
	addi	r6 r0 3
	add	r9 r0 r12
	call	L_check_all_inside_2173
	jump	L_cont_16925
L_else_16942 : 
	addi	r6 r0 0
	jump	L_cont_16925
L_else_16938 : 
	addi	r6 r0 0
	jump	L_cont_16925
L_else_16931 : 
	addi	r6 r0 0
L_cont_16925 : 
	bne	r6 r0 L_else_16929
	addi	r11 r11 1
	jump	L_shadow_check_and_group_2179
L_else_16929 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_group_2182 : 
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_16972
	addi	r6 r0 0
	return
L_else_16972 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_16974
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_16976
	addi	r6 r0 0
	return
L_else_16976 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_16978
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_16980
	addi	r6 r0 0
	return
L_else_16980 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_16982
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_16984
	addi	r6 r0 0
	return
L_else_16984 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_16986
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_16988
	addi	r6 r0 0
	return
L_else_16988 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_16990
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_16992
	addi	r6 r0 0
	return
L_else_16992 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_16994
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_16996
	addi	r6 r0 0
	return
L_else_16996 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_16998
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_17000
	addi	r6 r0 0
	return
L_else_17000 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17002
	addi	r14 r14 1
	jump	L_shadow_check_one_or_group_2182
L_else_17002 : 
	addi	r6 r0 1
	return
L_else_16998 : 
	addi	r6 r0 1
	return
L_else_16994 : 
	addi	r6 r0 1
	return
L_else_16990 : 
	addi	r6 r0 1
	return
L_else_16986 : 
	addi	r6 r0 1
	return
L_else_16982 : 
	addi	r6 r0 1
	return
L_else_16978 : 
	addi	r6 r0 1
	return
L_else_16974 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_matrix_2185 : 
	add	r1 r17 r16
	ldi	r18 r1 0
	ldi	r8 r18 0
	bne	r8 r5 L_else_17005
	addi	r6 r0 0
	return
L_else_17005 : 
	addi	r6 r0 99
	bne	r8 r6 L_else_17008
	addi	r6 r0 1
	jump	L_cont_17006
L_else_17008 : 
	addi	r10 r0 1905
	ldi	r6 r8 1970
	fldi	f3 r0 1042
	ldi	r7 r6 5
	fldi	f2 r7 0
	fsub	f2 f3 f2
	fldi	f4 r0 1043
	ldi	r7 r6 5
	fldi	f3 r7 1
	fsub	f3 f4 f3
	fldi	f5 r0 1044
	ldi	r7 r6 5
	fldi	f4 r7 2
	fsub	f4 f5 f4
	ldi	r7 r10 1
	add	r1 r7 r8
	ldi	r8 r1 0
	ldi	r9 r6 1
	bne	r9 r4 L_else_17174
	ldi	r7 r10 0
	call	L_solver_rect_fast_2094
	jump	L_cont_17172
L_else_17174 : 
	addi	r7 r0 2
	bne	r9 r7 L_else_17211
	fldi	f5 r8 0
	fbgt	f0 f5 L_else_17213
	addi	r6 r0 0
	jump	L_cont_17172
L_else_17213 : 
	fldi	f5 r8 1
	fmul	f5 f5 f2
	fldi	f2 r8 2
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r8 3
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_17172
L_else_17211 : 
	add	r7 r0 r8
	call	L_solver_second_fast_2107
L_cont_17172 : 
	bne	r6 r0 L_else_17176
	addi	r6 r0 0
	jump	L_cont_17006
L_else_17176 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else_17178
	addi	r6 r0 0
	jump	L_cont_17006
L_else_17178 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_17181
	addi	r6 r0 0
	jump	L_cont_17179
L_else_17181 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17185
	ldi	r6 r18 2
	bne	r6 r5 L_else_17187
	addi	r6 r0 0
	jump	L_cont_17179
L_else_17187 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17189
	ldi	r6 r18 3
	bne	r6 r5 L_else_17191
	addi	r6 r0 0
	jump	L_cont_17179
L_else_17191 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17193
	ldi	r6 r18 4
	bne	r6 r5 L_else_17195
	addi	r6 r0 0
	jump	L_cont_17179
L_else_17195 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17197
	ldi	r6 r18 5
	bne	r6 r5 L_else_17199
	addi	r6 r0 0
	jump	L_cont_17179
L_else_17199 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17201
	ldi	r6 r18 6
	bne	r6 r5 L_else_17203
	addi	r6 r0 0
	jump	L_cont_17179
L_else_17203 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17205
	ldi	r6 r18 7
	bne	r6 r5 L_else_17207
	addi	r6 r0 0
	jump	L_cont_17179
L_else_17207 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17209
	addi	r14 r0 8
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17179
L_else_17209 : 
	addi	r6 r0 1
	jump	L_cont_17179
L_else_17205 : 
	addi	r6 r0 1
	jump	L_cont_17179
L_else_17201 : 
	addi	r6 r0 1
	jump	L_cont_17179
L_else_17197 : 
	addi	r6 r0 1
	jump	L_cont_17179
L_else_17193 : 
	addi	r6 r0 1
	jump	L_cont_17179
L_else_17189 : 
	addi	r6 r0 1
	jump	L_cont_17179
L_else_17185 : 
	addi	r6 r0 1
L_cont_17179 : 
	bne	r6 r0 L_else_17183
	addi	r6 r0 0
	jump	L_cont_17006
L_else_17183 : 
	addi	r6 r0 1
L_cont_17006 : 
	bne	r6 r0 L_else_17010
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r18 r1 0
	ldi	r6 r18 0
	bne	r6 r5 L_else_17012
	addi	r6 r0 0
	return
L_else_17012 : 
	addi	r7 r0 99
	bne	r6 r7 L_else_17015
	addi	r6 r0 1
	jump	L_cont_17013
L_else_17015 : 
	addi	r7 r0 1905
	addi	r8 r0 1042
	call	L_solver_fast_2113
	bne	r6 r0 L_else_17046
	addi	r6 r0 0
	jump	L_cont_17013
L_else_17046 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_17048
	addi	r6 r0 0
	jump	L_cont_17013
L_else_17048 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_17051
	addi	r6 r0 0
	jump	L_cont_17049
L_else_17051 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17055
	ldi	r6 r18 2
	bne	r6 r5 L_else_17057
	addi	r6 r0 0
	jump	L_cont_17049
L_else_17057 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17059
	ldi	r6 r18 3
	bne	r6 r5 L_else_17061
	addi	r6 r0 0
	jump	L_cont_17049
L_else_17061 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17063
	ldi	r6 r18 4
	bne	r6 r5 L_else_17065
	addi	r6 r0 0
	jump	L_cont_17049
L_else_17065 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17067
	ldi	r6 r18 5
	bne	r6 r5 L_else_17069
	addi	r6 r0 0
	jump	L_cont_17049
L_else_17069 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17071
	ldi	r6 r18 6
	bne	r6 r5 L_else_17073
	addi	r6 r0 0
	jump	L_cont_17049
L_else_17073 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17075
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17049
L_else_17075 : 
	addi	r6 r0 1
	jump	L_cont_17049
L_else_17071 : 
	addi	r6 r0 1
	jump	L_cont_17049
L_else_17067 : 
	addi	r6 r0 1
	jump	L_cont_17049
L_else_17063 : 
	addi	r6 r0 1
	jump	L_cont_17049
L_else_17059 : 
	addi	r6 r0 1
	jump	L_cont_17049
L_else_17055 : 
	addi	r6 r0 1
L_cont_17049 : 
	bne	r6 r0 L_else_17053
	addi	r6 r0 0
	jump	L_cont_17013
L_else_17053 : 
	addi	r6 r0 1
L_cont_17013 : 
	bne	r6 r0 L_else_17017
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix_2185
L_else_17017 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_17020
	addi	r6 r0 0
	jump	L_cont_17018
L_else_17020 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17024
	ldi	r6 r18 2
	bne	r6 r5 L_else_17026
	addi	r6 r0 0
	jump	L_cont_17018
L_else_17026 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17028
	ldi	r6 r18 3
	bne	r6 r5 L_else_17030
	addi	r6 r0 0
	jump	L_cont_17018
L_else_17030 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17032
	ldi	r6 r18 4
	bne	r6 r5 L_else_17034
	addi	r6 r0 0
	jump	L_cont_17018
L_else_17034 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17036
	ldi	r6 r18 5
	bne	r6 r5 L_else_17038
	addi	r6 r0 0
	jump	L_cont_17018
L_else_17038 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17040
	ldi	r6 r18 6
	bne	r6 r5 L_else_17042
	addi	r6 r0 0
	jump	L_cont_17018
L_else_17042 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17044
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17018
L_else_17044 : 
	addi	r6 r0 1
	jump	L_cont_17018
L_else_17040 : 
	addi	r6 r0 1
	jump	L_cont_17018
L_else_17036 : 
	addi	r6 r0 1
	jump	L_cont_17018
L_else_17032 : 
	addi	r6 r0 1
	jump	L_cont_17018
L_else_17028 : 
	addi	r6 r0 1
	jump	L_cont_17018
L_else_17024 : 
	addi	r6 r0 1
L_cont_17018 : 
	bne	r6 r0 L_else_17022
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix_2185
L_else_17022 : 
	addi	r6 r0 1
	return
L_else_17010 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_17078
	addi	r6 r0 0
	jump	L_cont_17076
L_else_17078 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17147
	ldi	r6 r18 2
	bne	r6 r5 L_else_17149
	addi	r6 r0 0
	jump	L_cont_17076
L_else_17149 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17151
	ldi	r6 r18 3
	bne	r6 r5 L_else_17153
	addi	r6 r0 0
	jump	L_cont_17076
L_else_17153 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17155
	ldi	r6 r18 4
	bne	r6 r5 L_else_17157
	addi	r6 r0 0
	jump	L_cont_17076
L_else_17157 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17159
	ldi	r6 r18 5
	bne	r6 r5 L_else_17161
	addi	r6 r0 0
	jump	L_cont_17076
L_else_17161 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17163
	ldi	r6 r18 6
	bne	r6 r5 L_else_17165
	addi	r6 r0 0
	jump	L_cont_17076
L_else_17165 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17167
	ldi	r6 r18 7
	bne	r6 r5 L_else_17169
	addi	r6 r0 0
	jump	L_cont_17076
L_else_17169 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17171
	addi	r14 r0 8
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17076
L_else_17171 : 
	addi	r6 r0 1
	jump	L_cont_17076
L_else_17167 : 
	addi	r6 r0 1
	jump	L_cont_17076
L_else_17163 : 
	addi	r6 r0 1
	jump	L_cont_17076
L_else_17159 : 
	addi	r6 r0 1
	jump	L_cont_17076
L_else_17155 : 
	addi	r6 r0 1
	jump	L_cont_17076
L_else_17151 : 
	addi	r6 r0 1
	jump	L_cont_17076
L_else_17147 : 
	addi	r6 r0 1
L_cont_17076 : 
	bne	r6 r0 L_else_17080
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r18 r1 0
	ldi	r6 r18 0
	bne	r6 r5 L_else_17082
	addi	r6 r0 0
	return
L_else_17082 : 
	addi	r7 r0 99
	bne	r6 r7 L_else_17085
	addi	r6 r0 1
	jump	L_cont_17083
L_else_17085 : 
	addi	r7 r0 1905
	addi	r8 r0 1042
	call	L_solver_fast_2113
	bne	r6 r0 L_else_17116
	addi	r6 r0 0
	jump	L_cont_17083
L_else_17116 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_17118
	addi	r6 r0 0
	jump	L_cont_17083
L_else_17118 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_17121
	addi	r6 r0 0
	jump	L_cont_17119
L_else_17121 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17125
	ldi	r6 r18 2
	bne	r6 r5 L_else_17127
	addi	r6 r0 0
	jump	L_cont_17119
L_else_17127 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17129
	ldi	r6 r18 3
	bne	r6 r5 L_else_17131
	addi	r6 r0 0
	jump	L_cont_17119
L_else_17131 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17133
	ldi	r6 r18 4
	bne	r6 r5 L_else_17135
	addi	r6 r0 0
	jump	L_cont_17119
L_else_17135 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17137
	ldi	r6 r18 5
	bne	r6 r5 L_else_17139
	addi	r6 r0 0
	jump	L_cont_17119
L_else_17139 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17141
	ldi	r6 r18 6
	bne	r6 r5 L_else_17143
	addi	r6 r0 0
	jump	L_cont_17119
L_else_17143 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17145
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17119
L_else_17145 : 
	addi	r6 r0 1
	jump	L_cont_17119
L_else_17141 : 
	addi	r6 r0 1
	jump	L_cont_17119
L_else_17137 : 
	addi	r6 r0 1
	jump	L_cont_17119
L_else_17133 : 
	addi	r6 r0 1
	jump	L_cont_17119
L_else_17129 : 
	addi	r6 r0 1
	jump	L_cont_17119
L_else_17125 : 
	addi	r6 r0 1
L_cont_17119 : 
	bne	r6 r0 L_else_17123
	addi	r6 r0 0
	jump	L_cont_17083
L_else_17123 : 
	addi	r6 r0 1
L_cont_17083 : 
	bne	r6 r0 L_else_17087
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix_2185
L_else_17087 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_17090
	addi	r6 r0 0
	jump	L_cont_17088
L_else_17090 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17094
	ldi	r6 r18 2
	bne	r6 r5 L_else_17096
	addi	r6 r0 0
	jump	L_cont_17088
L_else_17096 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17098
	ldi	r6 r18 3
	bne	r6 r5 L_else_17100
	addi	r6 r0 0
	jump	L_cont_17088
L_else_17100 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17102
	ldi	r6 r18 4
	bne	r6 r5 L_else_17104
	addi	r6 r0 0
	jump	L_cont_17088
L_else_17104 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17106
	ldi	r6 r18 5
	bne	r6 r5 L_else_17108
	addi	r6 r0 0
	jump	L_cont_17088
L_else_17108 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17110
	ldi	r6 r18 6
	bne	r6 r5 L_else_17112
	addi	r6 r0 0
	jump	L_cont_17088
L_else_17112 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17114
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17088
L_else_17114 : 
	addi	r6 r0 1
	jump	L_cont_17088
L_else_17110 : 
	addi	r6 r0 1
	jump	L_cont_17088
L_else_17106 : 
	addi	r6 r0 1
	jump	L_cont_17088
L_else_17102 : 
	addi	r6 r0 1
	jump	L_cont_17088
L_else_17098 : 
	addi	r6 r0 1
	jump	L_cont_17088
L_else_17094 : 
	addi	r6 r0 1
L_cont_17088 : 
	bne	r6 r0 L_else_17092
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix_2185
L_else_17092 : 
	addi	r6 r0 1
	return
L_else_17080 : 
	addi	r6 r0 1
	return
L_solve_each_element_2188 : 
	ldi	r14 r11 0
	bne	r14 r5 L_else_17216
	return
L_else_17216 : 
	ldi	r6 r14 1970
	fldi	f3 r0 1063
	ldi	r7 r6 5
	fldi	f2 r7 0
	fsub	f2 f3 f2
	fldi	f4 r0 1064
	ldi	r7 r6 5
	fldi	f3 r7 1
	fsub	f3 f4 f3
	fldi	f5 r0 1065
	ldi	r7 r6 5
	fldi	f4 r7 2
	fsub	f4 f5 f4
	ldi	r8 r6 1
	bne	r8 r4 L_else_17219
	add	r7 r0 r13
	call	L_solver_rect_2059
	add	r15 r0 r6
	jump	L_cont_17217
L_else_17219 : 
	addi	r7 r0 2
	bne	r8 r7 L_else_17271
	ldi	r6 r6 4
	fldi	f5 r13 0
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fldi	f7 r13 1
	fldi	f5 r6 1
	fmul	f5 f7 f5
	fadd	f6 f6 f5
	fldi	f7 r13 2
	fldi	f5 r6 2
	fmul	f5 f7 f5
	fadd	f6 f6 f5
	fbgt	f6 f0 L_else_17273
	addi	r15 r0 0
	jump	L_cont_17217
L_else_17273 : 
	fldi	f5 r6 0
	fmul	f5 f5 f2
	fldi	f2 r6 1
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f6
	fsti	f2 r0 1073
	addi	r15 r0 1
	jump	L_cont_17217
L_else_17271 : 
	add	r7 r0 r13
	call	L_solver_second_2084
	add	r15 r0 r6
L_cont_17217 : 
	bne	r15 r0 L_else_17221
	ldi	r6 r14 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_17223
	return
L_else_17223 : 
	addi	r11 r11 1
	jump	L_solve_each_element_2188
L_else_17221 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_17226
	jump	L_cont_17224
L_else_17226 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_17228
	jump	L_cont_17224
L_else_17228 : 
	fldi	f2 r0 33
	fadd	f13 f3 f2
	fldi	f2 r13 0
	fmul	f2 f2 f13
	fldi	f3 r0 1063
	fadd	f11 f2 f3
	fldi	f2 r13 1
	fmul	f2 f2 f13
	fldi	f3 r0 1064
	fadd	f12 f2 f3
	fldi	f2 r13 2
	fmul	f2 f2 f13
	fldi	f3 r0 1065
	fadd	f14 f2 f3
	ldi	r6 r12 0
	bne	r6 r5 L_else_17231
	addi	r6 r0 1
	jump	L_cont_17229
L_else_17231 : 
	ldi	r6 r6 1970
	fadd	f2 f0 f11
	fadd	f3 f0 f12
	fadd	f4 f0 f14
	call	L_is_outside_2168
	bne	r6 r0 L_else_17235
	ldi	r6 r12 1
	bne	r6 r5 L_else_17237
	addi	r6 r0 1
	jump	L_cont_17229
L_else_17237 : 
	ldi	r6 r6 1970
	ldi	r7 r6 5
	fldi	f2 r7 0
	fsub	f2 f11 f2
	ldi	r7 r6 5
	fldi	f3 r7 1
	fsub	f3 f12 f3
	ldi	r7 r6 5
	fldi	f4 r7 2
	fsub	f4 f14 f4
	ldi	r8 r6 1
	bne	r8 r4 L_else_17240
	fbgt	f0 f2 L_else_17249
	jump	L_cont_17247
L_else_17249 : 
	fsub	f2 f0 f2
L_cont_17247 : 
	ldi	r7 r6 4
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_17252
	addi	r7 r0 0
	jump	L_cont_17250
L_else_17252 : 
	fbgt	f0 f3 L_else_17257
	jump	L_cont_17255
L_else_17257 : 
	fsub	f3 f0 f3
L_cont_17255 : 
	ldi	r7 r6 4
	fldi	f2 r7 1
	fbgt	f2 f3 L_else_17259
	addi	r7 r0 0
	jump	L_cont_17250
L_else_17259 : 
	fbgt	f0 f4 L_else_17262
	jump	L_cont_17260
L_else_17262 : 
	fsub	f4 f0 f4
L_cont_17260 : 
	ldi	r7 r6 4
	fldi	f2 r7 2
	fbgt	f2 f4 L_else_17264
	addi	r7 r0 0
	jump	L_cont_17250
L_else_17264 : 
	addi	r7 r0 1
L_cont_17250 : 
	bne	r7 r0 L_else_17254
	ldi	r6 r6 6
	sub	r6 r4 r6
	jump	L_cont_17238
L_else_17254 : 
	ldi	r6 r6 6
	jump	L_cont_17238
L_else_17240 : 
	addi	r7 r0 2
	bne	r8 r7 L_else_17266
	ldi	r7 r6 4
	fldi	f5 r7 0
	fmul	f5 f5 f2
	fldi	f2 r7 1
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r7 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	ldi	r7 r6 6
	fbgt	f0 f2 L_else_17269
	addi	r6 r0 0
	jump	L_cont_17267
L_else_17269 : 
	addi	r6 r0 1
L_cont_17267 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_17238
L_else_17266 : 
	call	L_is_second_outside_2163
L_cont_17238 : 
	bne	r6 r0 L_else_17242
	ldi	r6 r12 2
	bne	r6 r5 L_else_17244
	addi	r6 r0 1
	jump	L_cont_17229
L_else_17244 : 
	ldi	r6 r6 1970
	fadd	f2 f0 f11
	fadd	f3 f0 f12
	fadd	f4 f0 f14
	call	L_is_outside_2168
	bne	r6 r0 L_else_17246
	addi	r6 r0 3
	add	r9 r0 r12
	fadd	f8 f0 f11
	fadd	f9 f0 f12
	fadd	f10 f0 f14
	call	L_check_all_inside_2173
	jump	L_cont_17229
L_else_17246 : 
	addi	r6 r0 0
	jump	L_cont_17229
L_else_17242 : 
	addi	r6 r0 0
	jump	L_cont_17229
L_else_17235 : 
	addi	r6 r0 0
L_cont_17229 : 
	bne	r6 r0 L_else_17233
	jump	L_cont_17224
L_else_17233 : 
	fsti	f13 r0 1082
	fsti	f11 r0 1042
	fsti	f12 r0 1043
	fsti	f14 r0 1044
	sti	r14 r0 1045
	sti	r15 r0 1074
L_cont_17224 : 
	addi	r11 r11 1
	jump	L_solve_each_element_2188
L_solve_one_or_network_2192 : 
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17276
	return
L_else_17276 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17278
	return
L_else_17278 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17280
	return
L_else_17280 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17282
	return
L_else_17282 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17284
	return
L_else_17284 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17286
	return
L_else_17286 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17288
	return
L_else_17288 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17290
	return
L_else_17290 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	jump	L_solve_one_or_network_2192
L_trace_or_matrix_2196 : 
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_17293
	return
L_else_17293 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_17296
	ldi	r6 r17 1
	bne	r6 r5 L_else_17420
	jump	L_cont_17294
L_else_17420 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 2
	bne	r6 r5 L_else_17422
	jump	L_cont_17294
L_else_17422 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 3
	bne	r6 r5 L_else_17424
	jump	L_cont_17294
L_else_17424 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 4
	bne	r6 r5 L_else_17426
	jump	L_cont_17294
L_else_17426 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 5
	bne	r6 r5 L_else_17428
	jump	L_cont_17294
L_else_17428 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 6
	bne	r6 r5 L_else_17430
	jump	L_cont_17294
L_else_17430 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 7
	bne	r6 r5 L_else_17432
	jump	L_cont_17294
L_else_17432 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
	jump	L_cont_17294
L_else_17296 : 
	ldi	r6 r7 1970
	fldi	f3 r0 1063
	ldi	r7 r6 5
	fldi	f2 r7 0
	fsub	f2 f3 f2
	fldi	f4 r0 1064
	ldi	r7 r6 5
	fldi	f3 r7 1
	fsub	f3 f4 f3
	fldi	f5 r0 1065
	ldi	r7 r6 5
	fldi	f4 r7 2
	fsub	f4 f5 f4
	ldi	r8 r6 1
	bne	r8 r4 L_else_17435
	add	r7 r0 r21
	call	L_solver_rect_2059
	jump	L_cont_17433
L_else_17435 : 
	addi	r7 r0 2
	bne	r8 r7 L_else_17455
	ldi	r6 r6 4
	fldi	f5 r21 0
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fldi	f7 r21 1
	fldi	f5 r6 1
	fmul	f5 f7 f5
	fadd	f6 f6 f5
	fldi	f7 r21 2
	fldi	f5 r6 2
	fmul	f5 f7 f5
	fadd	f6 f6 f5
	fbgt	f6 f0 L_else_17457
	addi	r6 r0 0
	jump	L_cont_17433
L_else_17457 : 
	fldi	f5 r6 0
	fmul	f5 f5 f2
	fldi	f2 r6 1
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f6
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_17433
L_else_17455 : 
	add	r7 r0 r21
	call	L_solver_second_2084
L_cont_17433 : 
	bne	r6 r0 L_else_17437
	jump	L_cont_17294
L_else_17437 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_17439
	jump	L_cont_17294
L_else_17439 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_17441
	jump	L_cont_17294
L_else_17441 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 2
	bne	r6 r5 L_else_17443
	jump	L_cont_17294
L_else_17443 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 3
	bne	r6 r5 L_else_17445
	jump	L_cont_17294
L_else_17445 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 4
	bne	r6 r5 L_else_17447
	jump	L_cont_17294
L_else_17447 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 5
	bne	r6 r5 L_else_17449
	jump	L_cont_17294
L_else_17449 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 6
	bne	r6 r5 L_else_17451
	jump	L_cont_17294
L_else_17451 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 7
	bne	r6 r5 L_else_17453
	jump	L_cont_17294
L_else_17453 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
L_cont_17294 : 
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_17298
	return
L_else_17298 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_17301
	ldi	r6 r17 1
	bne	r6 r5 L_else_17303
	jump	L_cont_17299
L_else_17303 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 2
	bne	r6 r5 L_else_17305
	jump	L_cont_17299
L_else_17305 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 3
	bne	r6 r5 L_else_17307
	jump	L_cont_17299
L_else_17307 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 4
	bne	r6 r5 L_else_17309
	jump	L_cont_17299
L_else_17309 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 5
	bne	r6 r5 L_else_17311
	jump	L_cont_17299
L_else_17311 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 6
	bne	r6 r5 L_else_17313
	jump	L_cont_17299
L_else_17313 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
	jump	L_cont_17299
L_else_17301 : 
	ldi	r8 r7 1970
	fldi	f3 r0 1063
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f8 f3 f2
	fldi	f3 r0 1064
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f7 f3 f2
	fldi	f3 r0 1065
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_17316
	fldi	f3 r21 0
	fbne	f3 f0 L_else_17335
	addi	r6 r0 0
	jump	L_cont_17333
L_else_17335 : 
	ldi	r7 r8 4
	ldi	r9 r8 6
	fbgt	f0 f3 L_else_17382
	addi	r6 r0 0
	jump	L_cont_17380
L_else_17382 : 
	addi	r6 r0 1
L_cont_17380 : 
	xor	r6 r9 r6
	fldi	f2 r7 0
	bne	r6 r0 L_else_17385
	fsub	f2 f0 f2
	jump	L_cont_17383
L_else_17385 : 
L_cont_17383 : 
	fsub	f2 f2 f8
	fdiv	f4 f2 f3
	fldi	f2 r21 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_17388
	jump	L_cont_17386
L_else_17388 : 
	fsub	f2 f0 f2
L_cont_17386 : 
	fldi	f3 r7 1
	fbgt	f3 f2 L_else_17390
	addi	r6 r0 0
	jump	L_cont_17333
L_else_17390 : 
	fldi	f2 r21 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_17393
	jump	L_cont_17391
L_else_17393 : 
	fsub	f2 f0 f2
L_cont_17391 : 
	fldi	f3 r7 2
	fbgt	f3 f2 L_else_17395
	addi	r6 r0 0
	jump	L_cont_17333
L_else_17395 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_17333 : 
	bne	r6 r0 L_else_17337
	fldi	f3 r21 1
	fbne	f3 f0 L_else_17340
	addi	r6 r0 0
	jump	L_cont_17338
L_else_17340 : 
	ldi	r7 r8 4
	ldi	r9 r8 6
	fbgt	f0 f3 L_else_17366
	addi	r6 r0 0
	jump	L_cont_17364
L_else_17366 : 
	addi	r6 r0 1
L_cont_17364 : 
	xor	r6 r9 r6
	fldi	f2 r7 1
	bne	r6 r0 L_else_17369
	fsub	f2 f0 f2
	jump	L_cont_17367
L_else_17369 : 
L_cont_17367 : 
	fsub	f2 f2 f7
	fdiv	f4 f2 f3
	fldi	f2 r21 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_17372
	jump	L_cont_17370
L_else_17372 : 
	fsub	f2 f0 f2
L_cont_17370 : 
	fldi	f3 r7 2
	fbgt	f3 f2 L_else_17374
	addi	r6 r0 0
	jump	L_cont_17338
L_else_17374 : 
	fldi	f2 r21 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_17377
	jump	L_cont_17375
L_else_17377 : 
	fsub	f2 f0 f2
L_cont_17375 : 
	fldi	f3 r7 0
	fbgt	f3 f2 L_else_17379
	addi	r6 r0 0
	jump	L_cont_17338
L_else_17379 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_17338 : 
	bne	r6 r0 L_else_17342
	fldi	f3 r21 2
	fbne	f3 f0 L_else_17345
	addi	r6 r0 0
	jump	L_cont_17343
L_else_17345 : 
	ldi	r9 r8 4
	ldi	r7 r8 6
	fbgt	f0 f3 L_else_17350
	addi	r6 r0 0
	jump	L_cont_17348
L_else_17350 : 
	addi	r6 r0 1
L_cont_17348 : 
	xor	r6 r7 r6
	fldi	f2 r9 2
	bne	r6 r0 L_else_17353
	fsub	f2 f0 f2
	jump	L_cont_17351
L_else_17353 : 
L_cont_17351 : 
	fsub	f2 f2 f9
	fdiv	f4 f2 f3
	fldi	f2 r21 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_17356
	jump	L_cont_17354
L_else_17356 : 
	fsub	f2 f0 f2
L_cont_17354 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else_17358
	addi	r6 r0 0
	jump	L_cont_17343
L_else_17358 : 
	fldi	f2 r21 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_17361
	jump	L_cont_17359
L_else_17361 : 
	fsub	f2 f0 f2
L_cont_17359 : 
	fldi	f3 r9 1
	fbgt	f3 f2 L_else_17363
	addi	r6 r0 0
	jump	L_cont_17343
L_else_17363 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_17343 : 
	bne	r6 r0 L_else_17347
	addi	r6 r0 0
	jump	L_cont_17314
L_else_17347 : 
	addi	r6 r0 3
	jump	L_cont_17314
L_else_17342 : 
	addi	r6 r0 2
	jump	L_cont_17314
L_else_17337 : 
	addi	r6 r0 1
	jump	L_cont_17314
L_else_17316 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_17397
	ldi	r6 r8 4
	fldi	f2 r21 0
	fldi	f3 r6 0
	fmul	f3 f2 f3
	fldi	f4 r21 1
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r21 2
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fbgt	f4 f0 L_else_17399
	addi	r6 r0 0
	jump	L_cont_17314
L_else_17399 : 
	fldi	f2 r6 0
	fmul	f3 f2 f8
	fldi	f2 r6 1
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_17314
L_else_17397 : 
	fldi	f6 r21 0
	fldi	f10 r21 1
	fldi	f5 r21 2
	fmul	f3 f6 f6
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f3 f2
	fmul	f4 f10 f10
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_17402
	fadd	f4 f0 f2
	jump	L_cont_17400
L_else_17402 : 
	fmul	f4 f10 f5
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f5 f6
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f10
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
L_cont_17400 : 
	fbne	f4 f0 L_else_17404
	addi	r6 r0 0
	jump	L_cont_17314
L_else_17404 : 
	fldi	f12 r21 0
	fldi	f6 r21 1
	fldi	f11 r21 2
	fmul	f3 f12 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f5 f3 f2
	fmul	f3 f6 f7
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f5 f2
	fmul	f5 f11 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_17407
	fadd	f3 f0 f2
	jump	L_cont_17405
L_else_17407 : 
	fmul	f5 f11 f7
	fmul	f3 f6 f9
	fadd	f5 f5 f3
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f5 f5 f3
	fmul	f10 f12 f9
	fmul	f3 f11 f8
	fadd	f10 f10 f3
	ldi	r6 r8 9
	fldi	f3 r6 1
	fmul	f3 f10 f3
	fadd	f10 f5 f3
	fmul	f3 f12 f7
	fmul	f5 f6 f8
	fadd	f5 f3 f5
	ldi	r6 r8 9
	fldi	f3 r6 2
	fmul	f3 f5 f3
	fadd	f3 f10 f3
	fldi	f5 r0 30
	fdiv	f3 f3 f5
	fadd	f3 f2 f3
L_cont_17405 : 
	fmul	f5 f8 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f5 f5 f2
	fmul	f6 f7 f7
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f6 f5 f2
	fmul	f5 f9 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f5 f2
	fadd	f2 f6 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_17410
	jump	L_cont_17408
L_else_17410 : 
	fmul	f6 f7 f9
	ldi	r6 r8 9
	fldi	f5 r6 0
	fmul	f5 f6 f5
	fadd	f5 f2 f5
	fmul	f6 f9 f8
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f6 f5 f2
	fmul	f2 f8 f7
	ldi	r6 r8 9
	fldi	f5 r6 2
	fmul	f2 f2 f5
	fadd	f2 f6 f2
L_cont_17408 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_17413
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont_17411
L_else_17413 : 
L_cont_17411 : 
	fmul	f5 f3 f3
	fmul	f2 f4 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_17415
	addi	r6 r0 0
	jump	L_cont_17314
L_else_17415 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else_17418
	fsub	f2 f0 f2
	jump	L_cont_17416
L_else_17418 : 
L_cont_17416 : 
	fsub	f2 f2 f3
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r6 r0 1
L_cont_17314 : 
	bne	r6 r0 L_else_17318
	jump	L_cont_17299
L_else_17318 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_17320
	jump	L_cont_17299
L_else_17320 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_17322
	jump	L_cont_17299
L_else_17322 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 2
	bne	r6 r5 L_else_17324
	jump	L_cont_17299
L_else_17324 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 3
	bne	r6 r5 L_else_17326
	jump	L_cont_17299
L_else_17326 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 4
	bne	r6 r5 L_else_17328
	jump	L_cont_17299
L_else_17328 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 5
	bne	r6 r5 L_else_17330
	jump	L_cont_17299
L_else_17330 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 6
	bne	r6 r5 L_else_17332
	jump	L_cont_17299
L_else_17332 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
L_cont_17299 : 
	addi	r19 r19 1
	jump	L_trace_or_matrix_2196
L_solve_each_element_fast_2202 : 
	ldi	r10 r13 0
	ldi	r14 r11 0
	bne	r14 r5 L_else_17460
	return
L_else_17460 : 
	ldi	r6 r14 1970
	ldi	r15 r6 10
	fldi	f2 r15 0
	fldi	f3 r15 1
	fldi	f4 r15 2
	ldi	r7 r13 1
	add	r1 r7 r14
	ldi	r8 r1 0
	ldi	r9 r6 1
	bne	r9 r4 L_else_17463
	ldi	r7 r13 0
	call	L_solver_rect_fast_2094
	add	r15 r0 r6
	jump	L_cont_17461
L_else_17463 : 
	addi	r7 r0 2
	bne	r9 r7 L_else_17515
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_17517
	addi	r15 r0 0
	jump	L_cont_17461
L_else_17517 : 
	fldi	f2 r8 0
	fldi	f3 r15 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r15 r0 1
	jump	L_cont_17461
L_else_17515 : 
	fldi	f6 r8 0
	fbne	f6 f0 L_else_17519
	addi	r15 r0 0
	jump	L_cont_17461
L_else_17519 : 
	fldi	f5 r8 1
	fmul	f5 f5 f2
	fldi	f2 r8 2
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r8 3
	fmul	f2 f2 f4
	fadd	f4 f3 f2
	fldi	f2 r15 3
	fmul	f3 f4 f4
	fmul	f2 f6 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_17521
	addi	r15 r0 0
	jump	L_cont_17461
L_else_17521 : 
	ldi	r6 r6 6
	bne	r6 r0 L_else_17524
	fsqrt	f2 f2
	fsub	f2 f4 f2
	fldi	f3 r8 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_17522
L_else_17524 : 
	fsqrt	f2 f2
	fadd	f2 f4 f2
	fldi	f3 r8 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_17522 : 
	addi	r15 r0 1
L_cont_17461 : 
	bne	r15 r0 L_else_17465
	ldi	r6 r14 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_17467
	return
L_else_17467 : 
	addi	r11 r11 1
	jump	L_solve_each_element_fast_2202
L_else_17465 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_17470
	jump	L_cont_17468
L_else_17470 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_17472
	jump	L_cont_17468
L_else_17472 : 
	fldi	f2 r0 33
	fadd	f14 f3 f2
	fldi	f2 r10 0
	fmul	f3 f2 f14
	fldi	f2 r0 1066
	fadd	f13 f3 f2
	fldi	f2 r10 1
	fmul	f3 f2 f14
	fldi	f2 r0 1067
	fadd	f11 f3 f2
	fldi	f2 r10 2
	fmul	f3 f2 f14
	fldi	f2 r0 1068
	fadd	f12 f3 f2
	ldi	r6 r12 0
	bne	r6 r5 L_else_17475
	addi	r6 r0 1
	jump	L_cont_17473
L_else_17475 : 
	ldi	r6 r6 1970
	fadd	f2 f0 f13
	fadd	f3 f0 f11
	fadd	f4 f0 f12
	call	L_is_outside_2168
	bne	r6 r0 L_else_17479
	ldi	r6 r12 1
	bne	r6 r5 L_else_17481
	addi	r6 r0 1
	jump	L_cont_17473
L_else_17481 : 
	ldi	r6 r6 1970
	ldi	r7 r6 5
	fldi	f2 r7 0
	fsub	f2 f13 f2
	ldi	r7 r6 5
	fldi	f3 r7 1
	fsub	f3 f11 f3
	ldi	r7 r6 5
	fldi	f4 r7 2
	fsub	f4 f12 f4
	ldi	r8 r6 1
	bne	r8 r4 L_else_17484
	fbgt	f0 f2 L_else_17493
	jump	L_cont_17491
L_else_17493 : 
	fsub	f2 f0 f2
L_cont_17491 : 
	ldi	r7 r6 4
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_17496
	addi	r7 r0 0
	jump	L_cont_17494
L_else_17496 : 
	fbgt	f0 f3 L_else_17501
	jump	L_cont_17499
L_else_17501 : 
	fsub	f3 f0 f3
L_cont_17499 : 
	ldi	r7 r6 4
	fldi	f2 r7 1
	fbgt	f2 f3 L_else_17503
	addi	r7 r0 0
	jump	L_cont_17494
L_else_17503 : 
	fbgt	f0 f4 L_else_17506
	jump	L_cont_17504
L_else_17506 : 
	fsub	f4 f0 f4
L_cont_17504 : 
	ldi	r7 r6 4
	fldi	f2 r7 2
	fbgt	f2 f4 L_else_17508
	addi	r7 r0 0
	jump	L_cont_17494
L_else_17508 : 
	addi	r7 r0 1
L_cont_17494 : 
	bne	r7 r0 L_else_17498
	ldi	r6 r6 6
	sub	r6 r4 r6
	jump	L_cont_17482
L_else_17498 : 
	ldi	r6 r6 6
	jump	L_cont_17482
L_else_17484 : 
	addi	r7 r0 2
	bne	r8 r7 L_else_17510
	ldi	r7 r6 4
	fldi	f5 r7 0
	fmul	f2 f5 f2
	fldi	f5 r7 1
	fmul	f3 f5 f3
	fadd	f3 f2 f3
	fldi	f2 r7 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	ldi	r7 r6 6
	fbgt	f0 f2 L_else_17513
	addi	r6 r0 0
	jump	L_cont_17511
L_else_17513 : 
	addi	r6 r0 1
L_cont_17511 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_17482
L_else_17510 : 
	call	L_is_second_outside_2163
L_cont_17482 : 
	bne	r6 r0 L_else_17486
	ldi	r6 r12 2
	bne	r6 r5 L_else_17488
	addi	r6 r0 1
	jump	L_cont_17473
L_else_17488 : 
	ldi	r6 r6 1970
	fadd	f2 f0 f13
	fadd	f3 f0 f11
	fadd	f4 f0 f12
	call	L_is_outside_2168
	bne	r6 r0 L_else_17490
	addi	r6 r0 3
	add	r9 r0 r12
	fadd	f8 f0 f13
	fadd	f9 f0 f11
	fadd	f10 f0 f12
	call	L_check_all_inside_2173
	jump	L_cont_17473
L_else_17490 : 
	addi	r6 r0 0
	jump	L_cont_17473
L_else_17486 : 
	addi	r6 r0 0
	jump	L_cont_17473
L_else_17479 : 
	addi	r6 r0 0
L_cont_17473 : 
	bne	r6 r0 L_else_17477
	jump	L_cont_17468
L_else_17477 : 
	fsti	f14 r0 1082
	fsti	f13 r0 1042
	fsti	f11 r0 1043
	fsti	f12 r0 1044
	sti	r14 r0 1045
	sti	r15 r0 1074
L_cont_17468 : 
	addi	r11 r11 1
	jump	L_solve_each_element_fast_2202
L_solve_one_or_network_fast_2206 : 
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17527
	return
L_else_17527 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17529
	return
L_else_17529 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17531
	return
L_else_17531 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17533
	return
L_else_17533 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17535
	return
L_else_17535 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17537
	return
L_else_17537 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17539
	return
L_else_17539 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_17541
	return
L_else_17541 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	jump	L_solve_one_or_network_fast_2206
L_trace_or_matrix_fast_2210 : 
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r8 r17 0
	bne	r8 r5 L_else_17544
	return
L_else_17544 : 
	addi	r6 r0 99
	bne	r8 r6 L_else_17547
	ldi	r6 r17 1
	bne	r6 r5 L_else_17582
	jump	L_cont_17545
L_else_17582 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_17584
	jump	L_cont_17545
L_else_17584 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_17586
	jump	L_cont_17545
L_else_17586 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_17588
	jump	L_cont_17545
L_else_17588 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 5
	bne	r6 r5 L_else_17590
	jump	L_cont_17545
L_else_17590 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 6
	bne	r6 r5 L_else_17592
	jump	L_cont_17545
L_else_17592 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 7
	bne	r6 r5 L_else_17594
	jump	L_cont_17545
L_else_17594 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_17545
L_else_17547 : 
	ldi	r6 r8 1970
	ldi	r10 r6 10
	fldi	f2 r10 0
	fldi	f3 r10 1
	fldi	f4 r10 2
	ldi	r7 r21 1
	add	r1 r7 r8
	ldi	r8 r1 0
	ldi	r9 r6 1
	bne	r9 r4 L_else_17597
	ldi	r7 r21 0
	call	L_solver_rect_fast_2094
	jump	L_cont_17595
L_else_17597 : 
	addi	r7 r0 2
	bne	r9 r7 L_else_17617
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_17619
	addi	r6 r0 0
	jump	L_cont_17595
L_else_17619 : 
	fldi	f2 r8 0
	fldi	f3 r10 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_17595
L_else_17617 : 
	fldi	f6 r8 0
	fbne	f6 f0 L_else_17621
	addi	r6 r0 0
	jump	L_cont_17595
L_else_17621 : 
	fldi	f5 r8 1
	fmul	f5 f5 f2
	fldi	f2 r8 2
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r8 3
	fmul	f2 f2 f4
	fadd	f4 f3 f2
	fldi	f2 r10 3
	fmul	f3 f4 f4
	fmul	f2 f6 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_17623
	addi	r6 r0 0
	jump	L_cont_17595
L_else_17623 : 
	ldi	r6 r6 6
	bne	r6 r0 L_else_17626
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_17624
L_else_17626 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_17624 : 
	addi	r6 r0 1
L_cont_17595 : 
	bne	r6 r0 L_else_17599
	jump	L_cont_17545
L_else_17599 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_17601
	jump	L_cont_17545
L_else_17601 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_17603
	jump	L_cont_17545
L_else_17603 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_17605
	jump	L_cont_17545
L_else_17605 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_17607
	jump	L_cont_17545
L_else_17607 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_17609
	jump	L_cont_17545
L_else_17609 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 5
	bne	r6 r5 L_else_17611
	jump	L_cont_17545
L_else_17611 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 6
	bne	r6 r5 L_else_17613
	jump	L_cont_17545
L_else_17613 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 7
	bne	r6 r5 L_else_17615
	jump	L_cont_17545
L_else_17615 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_fast_2206
L_cont_17545 : 
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r6 r17 0
	bne	r6 r5 L_else_17549
	return
L_else_17549 : 
	addi	r7 r0 99
	bne	r6 r7 L_else_17552
	ldi	r6 r17 1
	bne	r6 r5 L_else_17554
	jump	L_cont_17550
L_else_17554 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_17556
	jump	L_cont_17550
L_else_17556 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_17558
	jump	L_cont_17550
L_else_17558 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_17560
	jump	L_cont_17550
L_else_17560 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 5
	bne	r6 r5 L_else_17562
	jump	L_cont_17550
L_else_17562 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 6
	bne	r6 r5 L_else_17564
	jump	L_cont_17550
L_else_17564 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_17550
L_else_17552 : 
	add	r7 r0 r21
	call	L_solver_fast2_2131
	bne	r6 r0 L_else_17566
	jump	L_cont_17550
L_else_17566 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_17568
	jump	L_cont_17550
L_else_17568 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_17570
	jump	L_cont_17550
L_else_17570 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_17572
	jump	L_cont_17550
L_else_17572 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_17574
	jump	L_cont_17550
L_else_17574 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_17576
	jump	L_cont_17550
L_else_17576 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 5
	bne	r6 r5 L_else_17578
	jump	L_cont_17550
L_else_17578 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 6
	bne	r6 r5 L_else_17580
	jump	L_cont_17550
L_else_17580 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_fast_2206
L_cont_17550 : 
	addi	r19 r19 1
	jump	L_trace_or_matrix_fast_2210
L_get_nvector_second_2220 : 
	fldi	f3 r0 1042
	ldi	r7 r6 5
	fldi	f2 r7 0
	fsub	f9 f3 f2
	fldi	f3 r0 1043
	ldi	r7 r6 5
	fldi	f2 r7 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r7 r6 5
	fldi	f2 r7 2
	fsub	f7 f3 f2
	ldi	r7 r6 4
	fldi	f2 r7 0
	fmul	f5 f9 f2
	ldi	r7 r6 4
	fldi	f2 r7 1
	fmul	f6 f8 f2
	ldi	r7 r6 4
	fldi	f2 r7 2
	fmul	f4 f7 f2
	ldi	r7 r6 3
	bne	r7 r0 L_else_17630
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_17628
L_else_17630 : 
	ldi	r7 r6 9
	fldi	f2 r7 2
	fmul	f3 f8 f2
	ldi	r7 r6 9
	fldi	f2 r7 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f5 f2
	fsti	f2 r0 1046
	ldi	r7 r6 9
	fldi	f2 r7 2
	fmul	f3 f9 f2
	ldi	r7 r6 9
	fldi	f2 r7 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r7 r6 9
	fldi	f2 r7 1
	fmul	f3 f9 f2
	ldi	r7 r6 9
	fldi	f2 r7 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_17628 : 
	ldi	r6 r6 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_17633
	fldi	f3 r0 12
	jump	L_cont_17631
L_else_17633 : 
	bne	r6 r0 L_else_17635
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_17631
L_else_17635 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_17631 : 
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
L_get_nvector_2222 : 
	ldi	r8 r6 1
	bne	r8 r4 L_else_17638
	ldi	r8 r0 1074
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r9 r0 1046
	addi	r6 r8 -1
	addi	r8 r8 -1
	add	r1 r7 r8
	fldi	f2 r1 0
	fbne	f2 f0 L_else_17641
	fldi	f2 r0 29
	jump	L_cont_17639
L_else_17641 : 
	fbgt	f2 f0 L_else_17643
	fldi	f2 r0 31
	jump	L_cont_17639
L_else_17643 : 
	fldi	f2 r0 12
L_cont_17639 : 
	fsub	f2 f0 f2
	add	r1 r9 r6
	fsti	f2 r1 0
	return
L_else_17638 : 
	addi	r7 r0 2
	bne	r8 r7 L_else_17645
	ldi	r7 r6 4
	fldi	f2 r7 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	ldi	r7 r6 4
	fldi	f2 r7 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	ldi	r6 r6 4
	fldi	f2 r6 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	return
L_else_17645 : 
	fldi	f3 r0 1042
	ldi	r7 r6 5
	fldi	f2 r7 0
	fsub	f9 f3 f2
	fldi	f3 r0 1043
	ldi	r7 r6 5
	fldi	f2 r7 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r7 r6 5
	fldi	f2 r7 2
	fsub	f7 f3 f2
	ldi	r7 r6 4
	fldi	f2 r7 0
	fmul	f6 f9 f2
	ldi	r7 r6 4
	fldi	f2 r7 1
	fmul	f5 f8 f2
	ldi	r7 r6 4
	fldi	f2 r7 2
	fmul	f4 f7 f2
	ldi	r7 r6 3
	bne	r7 r0 L_else_17648
	fsti	f6 r0 1046
	fsti	f5 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_17646
L_else_17648 : 
	ldi	r7 r6 9
	fldi	f2 r7 2
	fmul	f3 f8 f2
	ldi	r7 r6 9
	fldi	f2 r7 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r0 1046
	ldi	r7 r6 9
	fldi	f2 r7 2
	fmul	f3 f9 f2
	ldi	r7 r6 9
	fldi	f2 r7 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f5 f2
	fsti	f2 r0 1047
	ldi	r7 r6 9
	fldi	f2 r7 1
	fmul	f3 f9 f2
	ldi	r7 r6 9
	fldi	f2 r7 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_17646 : 
	ldi	r6 r6 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_17651
	fldi	f3 r0 12
	jump	L_cont_17649
L_else_17651 : 
	bne	r6 r0 L_else_17653
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_17649
L_else_17653 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_17649 : 
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
L_utexture_2225 : 
	ldi	r9 r6 0
	ldi	r8 r6 8
	fldi	f2 r8 0
	fsti	f2 r0 1049
	ldi	r8 r6 8
	fldi	f2 r8 1
	fsti	f2 r0 1050
	ldi	r8 r6 8
	fldi	f2 r8 2
	fsti	f2 r0 1051
	bne	r9 r4 L_else_17656
	fldi	f3 r7 0
	ldi	r8 r6 5
	fldi	f2 r8 0
	fsub	f4 f3 f2
	fldi	f2 r0 35
	fmul	f2 f4 f2
	flr	f2 f2
	fldi	f3 r0 36
	fmul	f2 f2 f3
	fsub	f6 f4 f2
	fldi	f5 r0 37
	fldi	f3 r7 2
	ldi	r6 r6 5
	fldi	f2 r6 2
	fsub	f4 f3 f2
	fldi	f2 r0 35
	fmul	f2 f4 f2
	flr	f3 f2
	fldi	f2 r0 36
	fmul	f2 f3 f2
	fsub	f3 f4 f2
	fldi	f2 r0 37
	fbgt	f5 f6 L_else_17659
	fbgt	f2 f3 L_else_17661
	fldi	f2 r0 38
	jump	L_cont_17657
L_else_17661 : 
	fldi	f2 r0 29
	jump	L_cont_17657
L_else_17659 : 
	fbgt	f2 f3 L_else_17663
	fldi	f2 r0 29
	jump	L_cont_17657
L_else_17663 : 
	fldi	f2 r0 38
L_cont_17657 : 
	fsti	f2 r0 1050
	return
L_else_17656 : 
	addi	r8 r0 2
	bne	r9 r8 L_else_17665
	fldi	f2 r7 1
	fldi	f3 r0 39
	fmul	f2 f2 f3
	call	L_sin_1878
	fmul	f4 f2 f2
	fldi	f2 r0 38
	fmul	f2 f2 f4
	fsti	f2 r0 1049
	fldi	f3 r0 38
	fldi	f2 r0 12
	fsub	f2 f2 f4
	fmul	f2 f3 f2
	fsti	f2 r0 1050
	return
L_else_17665 : 
	addi	r8 r0 3
	bne	r9 r8 L_else_17667
	fldi	f3 r7 0
	ldi	r8 r6 5
	fldi	f2 r8 0
	fsub	f4 f3 f2
	fldi	f3 r7 2
	ldi	r6 r6 5
	fldi	f2 r6 2
	fsub	f3 f3 f2
	fmul	f2 f4 f4
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	fsqrt	f3 f2
	fldi	f2 r0 37
	fdiv	f3 f3 f2
	flr	f2 f3
	fsub	f3 f3 f2
	fldi	f2 r0 40
	fmul	f2 f3 f2
	call	L_cos_1880
	fmul	f3 f2 f2
	fldi	f2 r0 38
	fmul	f2 f3 f2
	fsti	f2 r0 1050
	fldi	f2 r0 12
	fsub	f3 f2 f3
	fldi	f2 r0 38
	fmul	f2 f3 f2
	fsti	f2 r0 1051
	return
L_else_17667 : 
	addi	r8 r0 4
	bne	r9 r8 L_else_17669
	fldi	f3 r7 0
	ldi	r8 r6 5
	fldi	f2 r8 0
	fsub	f3 f3 f2
	ldi	r8 r6 4
	fldi	f2 r8 0
	fsqrt	f2 f2
	fmul	f3 f3 f2
	fldi	f4 r7 2
	ldi	r8 r6 5
	fldi	f2 r8 2
	fsub	f4 f4 f2
	ldi	r8 r6 4
	fldi	f2 r8 2
	fsqrt	f2 f2
	fmul	f5 f4 f2
	fmul	f4 f3 f3
	fmul	f2 f5 f5
	fadd	f15 f4 f2
	fbgt	f0 f3 L_else_17672
	fadd	f2 f0 f3
	jump	L_cont_17670
L_else_17672 : 
	fsub	f2 f0 f3
L_cont_17670 : 
	fldi	f4 r0 41
	fbgt	f4 f2 L_else_17675
	fdiv	f2 f5 f3
	fbgt	f0 f2 L_else_17690
	jump	L_cont_17688
L_else_17690 : 
	fsub	f2 f0 f2
L_cont_17688 : 
	call	L_atan_1882
	fldi	f3 r0 42
	fmul	f3 f2 f3
	fldi	f2 r0 40
	fdiv	f3 f3 f2
	jump	L_cont_17673
L_else_17675 : 
	fldi	f3 r0 43
L_cont_17673 : 
	flr	f2 f3
	fsub	f16 f3 f2
	fldi	f3 r7 1
	ldi	r7 r6 5
	fldi	f2 r7 1
	fsub	f3 f3 f2
	ldi	r6 r6 4
	fldi	f2 r6 1
	fsqrt	f2 f2
	fmul	f4 f3 f2
	fbgt	f0 f15 L_else_17678
	fadd	f2 f0 f15
	jump	L_cont_17676
L_else_17678 : 
	fsub	f2 f0 f15
L_cont_17676 : 
	fldi	f3 r0 41
	fbgt	f3 f2 L_else_17681
	fdiv	f2 f4 f15
	fbgt	f0 f2 L_else_17687
	jump	L_cont_17685
L_else_17687 : 
	fsub	f2 f0 f2
L_cont_17685 : 
	call	L_atan_1882
	fldi	f3 r0 42
	fmul	f2 f2 f3
	fldi	f3 r0 40
	fdiv	f2 f2 f3
	jump	L_cont_17679
L_else_17681 : 
	fldi	f2 r0 43
L_cont_17679 : 
	flr	f3 f2
	fsub	f3 f2 f3
	fldi	f4 r0 44
	fldi	f2 r0 11
	fsub	f2 f2 f16
	fmul	f2 f2 f2
	fsub	f4 f4 f2
	fldi	f2 r0 11
	fsub	f2 f2 f3
	fmul	f2 f2 f2
	fsub	f2 f4 f2
	fbgt	f0 f2 L_else_17684
	jump	L_cont_17682
L_else_17684 : 
	fldi	f2 r0 29
L_cont_17682 : 
	fldi	f3 r0 38
	fmul	f2 f3 f2
	fldi	f3 r0 45
	fdiv	f2 f2 f3
	fsti	f2 r0 1051
	return
L_else_17669 : 
	return
L_trace_reflections_2232 : 
	bgt	r0 r22 L_else_17693
	ldi	r25 r22 1185
	ldi	r24 r25 1
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r19 r0 0
	ldi	r20 r0 1183
	add	r21 r0 r24
	call	L_trace_or_matrix_fast_2210
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_17696
	addi	r6 r0 0
	jump	L_cont_17694
L_else_17696 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_17776
	addi	r6 r0 0
	jump	L_cont_17694
L_else_17776 : 
	addi	r6 r0 1
L_cont_17694 : 
	bne	r6 r0 L_else_17699
	jump	L_cont_17697
L_else_17699 : 
	ldi	r7 r0 1045
	addi	r6 r0 4
	mul	r7 r7 r6
	ldi	r6 r0 1074
	add	r7 r7 r6
	ldi	r6 r25 0
	bne	r7 r6 L_else_17701
	ldi	r17 r0 1183
	ldi	r16 r17 0
	ldi	r6 r16 0
	bne	r6 r5 L_else_17704
	addi	r6 r0 0
	jump	L_cont_17702
L_else_17704 : 
	addi	r7 r0 99
	bne	r6 r7 L_else_17714
	addi	r6 r0 1
	jump	L_cont_17712
L_else_17714 : 
	addi	r7 r0 1905
	addi	r8 r0 1042
	call	L_solver_fast_2113
	bne	r6 r0 L_else_17745
	addi	r6 r0 0
	jump	L_cont_17712
L_else_17745 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else_17747
	addi	r6 r0 0
	jump	L_cont_17712
L_else_17747 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_17750
	addi	r6 r0 0
	jump	L_cont_17748
L_else_17750 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17754
	ldi	r6 r16 2
	bne	r6 r5 L_else_17756
	addi	r6 r0 0
	jump	L_cont_17748
L_else_17756 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17758
	ldi	r6 r16 3
	bne	r6 r5 L_else_17760
	addi	r6 r0 0
	jump	L_cont_17748
L_else_17760 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17762
	ldi	r6 r16 4
	bne	r6 r5 L_else_17764
	addi	r6 r0 0
	jump	L_cont_17748
L_else_17764 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17766
	ldi	r6 r16 5
	bne	r6 r5 L_else_17768
	addi	r6 r0 0
	jump	L_cont_17748
L_else_17768 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17770
	ldi	r6 r16 6
	bne	r6 r5 L_else_17772
	addi	r6 r0 0
	jump	L_cont_17748
L_else_17772 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17774
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17748
L_else_17774 : 
	addi	r6 r0 1
	jump	L_cont_17748
L_else_17770 : 
	addi	r6 r0 1
	jump	L_cont_17748
L_else_17766 : 
	addi	r6 r0 1
	jump	L_cont_17748
L_else_17762 : 
	addi	r6 r0 1
	jump	L_cont_17748
L_else_17758 : 
	addi	r6 r0 1
	jump	L_cont_17748
L_else_17754 : 
	addi	r6 r0 1
L_cont_17748 : 
	bne	r6 r0 L_else_17752
	addi	r6 r0 0
	jump	L_cont_17712
L_else_17752 : 
	addi	r6 r0 1
L_cont_17712 : 
	bne	r6 r0 L_else_17716
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_17702
L_else_17716 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_17719
	addi	r6 r0 0
	jump	L_cont_17717
L_else_17719 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17723
	ldi	r6 r16 2
	bne	r6 r5 L_else_17725
	addi	r6 r0 0
	jump	L_cont_17717
L_else_17725 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17727
	ldi	r6 r16 3
	bne	r6 r5 L_else_17729
	addi	r6 r0 0
	jump	L_cont_17717
L_else_17729 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17731
	ldi	r6 r16 4
	bne	r6 r5 L_else_17733
	addi	r6 r0 0
	jump	L_cont_17717
L_else_17733 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17735
	ldi	r6 r16 5
	bne	r6 r5 L_else_17737
	addi	r6 r0 0
	jump	L_cont_17717
L_else_17737 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17739
	ldi	r6 r16 6
	bne	r6 r5 L_else_17741
	addi	r6 r0 0
	jump	L_cont_17717
L_else_17741 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17743
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17717
L_else_17743 : 
	addi	r6 r0 1
	jump	L_cont_17717
L_else_17739 : 
	addi	r6 r0 1
	jump	L_cont_17717
L_else_17735 : 
	addi	r6 r0 1
	jump	L_cont_17717
L_else_17731 : 
	addi	r6 r0 1
	jump	L_cont_17717
L_else_17727 : 
	addi	r6 r0 1
	jump	L_cont_17717
L_else_17723 : 
	addi	r6 r0 1
L_cont_17717 : 
	bne	r6 r0 L_else_17721
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_17702
L_else_17721 : 
	addi	r6 r0 1
L_cont_17702 : 
	bne	r6 r0 L_else_17706
	ldi	r6 r24 0
	fldi	f2 r0 1046
	fldi	f3 r6 0
	fmul	f3 f2 f3
	fldi	f4 r0 1047
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r0 1048
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f6 r25 2
	fmul	f2 f6 f15
	fmul	f5 f2 f3
	ldi	r6 r24 0
	fldi	f3 r23 0
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fldi	f2 r23 1
	fldi	f3 r6 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r23 2
	fldi	f3 r6 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fmul	f4 f6 f2
	fbgt	f5 f0 L_else_17709
	jump	L_cont_17707
L_else_17709 : 
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
L_cont_17707 : 
	fbgt	f4 f0 L_else_17711
	jump	L_cont_17697
L_else_17711 : 
	fmul	f2 f4 f4
	fmul	f2 f2 f2
	fmul	f3 f2 f16
	fldi	f2 r0 1055
	fadd	f2 f2 f3
	fsti	f2 r0 1055
	fldi	f2 r0 1056
	fadd	f2 f2 f3
	fsti	f2 r0 1056
	fldi	f2 r0 1057
	fadd	f2 f2 f3
	fsti	f2 r0 1057
	jump	L_cont_17697
L_else_17706 : 
	jump	L_cont_17697
L_else_17701 : 
L_cont_17697 : 
	addi	r22 r22 -1
	jump	L_trace_reflections_2232
L_else_17693 : 
	return
L_trace_ray_2237 : 
	addi	r6 r0 4
	bgt	r26 r6 L_else_17779
	ldi	r29 r28 2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r19 r0 0
	ldi	r20 r0 1183
	add	r21 r0 r27
	call	L_trace_or_matrix_2196
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_17782
	addi	r6 r0 0
	jump	L_cont_17780
L_else_17782 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_17884
	addi	r6 r0 0
	jump	L_cont_17780
L_else_17884 : 
	addi	r6 r0 1
L_cont_17780 : 
	bne	r6 r0 L_else_17784
	addi	r6 r0 -1
	add	r1 r29 r26
	sti	r6 r1 0
	bne	r26 r0 L_else_17786
	return
L_else_17786 : 
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
	fsub	f3 f0 f2
	fbgt	f3 f0 L_else_17788
	return
L_else_17788 : 
	fmul	f2 f3 f3
	fmul	f2 f2 f3
	fmul	f3 f2 f17
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
L_else_17784 : 
	ldi	r10 r0 1045
	ldi	r31 r10 1970
	ldi	r30 r31 2
	ldi	r6 r31 7
	fldi	f2 r6 0
	fmul	f19 f2 f17
	ldi	r7 r31 1
	bne	r7 r4 L_else_17791
	ldi	r6 r0 1074
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r7 r0 1046
	addi	r8 r6 -1
	addi	r6 r6 -1
	add	r1 r27 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else_17878
	fldi	f2 r0 29
	jump	L_cont_17876
L_else_17878 : 
	fbgt	f2 f0 L_else_17880
	fldi	f2 r0 31
	jump	L_cont_17876
L_else_17880 : 
	fldi	f2 r0 12
L_cont_17876 : 
	fsub	f2 f0 f2
	add	r1 r7 r8
	fsti	f2 r1 0
	jump	L_cont_17789
L_else_17791 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_17882
	ldi	r6 r31 4
	fldi	f2 r6 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	ldi	r6 r31 4
	fldi	f2 r6 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	ldi	r6 r31 4
	fldi	f2 r6 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	jump	L_cont_17789
L_else_17882 : 
	add	r6 r0 r31
	call	L_get_nvector_second_2220
L_cont_17789 : 
	fldi	f2 r0 1042
	fsti	f2 r0 1063
	fldi	f2 r0 1043
	fsti	f2 r0 1064
	fldi	f2 r0 1044
	fsti	f2 r0 1065
	addi	r7 r0 1042
	add	r6 r0 r31
	call	L_utexture_2225
	addi	r6 r0 4
	mul	r7 r10 r6
	ldi	r6 r0 1074
	add	r6 r7 r6
	add	r1 r29 r26
	sti	r6 r1 0
	ldi	r6 r28 1
	add	r1 r6 r26
	ldi	r6 r1 0
	fldi	f2 r0 1042
	fsti	f2 r6 0
	fldi	f2 r0 1043
	fsti	f2 r6 1
	fldi	f2 r0 1044
	fsti	f2 r6 2
	ldi	r7 r28 3
	ldi	r6 r31 7
	fldi	f3 r6 0
	fldi	f2 r0 11
	fbgt	f2 f3 L_else_17794
	addi	r6 r0 1
	add	r1 r7 r26
	sti	r6 r1 0
	ldi	r6 r28 4
	add	r1 r6 r26
	ldi	r6 r1 0
	fldi	f2 r0 1049
	fsti	f2 r6 0
	fldi	f2 r0 1050
	fsti	f2 r6 1
	fldi	f2 r0 1051
	fsti	f2 r6 2
	fldi	f2 r0 48
	fmul	f3 f2 f19
	fldi	f2 r6 0
	fmul	f2 f2 f3
	fsti	f2 r6 0
	fldi	f2 r6 1
	fmul	f2 f2 f3
	fsti	f2 r6 1
	fldi	f2 r6 2
	fmul	f2 f2 f3
	fsti	f2 r6 2
	ldi	r6 r28 7
	add	r1 r6 r26
	ldi	r6 r1 0
	fldi	f2 r0 1046
	fsti	f2 r6 0
	fldi	f2 r0 1047
	fsti	f2 r6 1
	fldi	f2 r0 1048
	fsti	f2 r6 2
	jump	L_cont_17792
L_else_17794 : 
	addi	r6 r0 0
	add	r1 r7 r26
	sti	r6 r1 0
L_cont_17792 : 
	fldi	f5 r0 49
	fldi	f2 r27 0
	fldi	f3 r0 1046
	fmul	f3 f2 f3
	fldi	f4 r27 1
	fldi	f2 r0 1047
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r27 2
	fldi	f2 r0 1048
	fmul	f2 f4 f2
	fadd	f2 f3 f2
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
	ldi	r6 r31 7
	fldi	f2 r6 1
	fmul	f16 f17 f2
	ldi	r17 r0 1183
	ldi	r16 r17 0
	ldi	r6 r16 0
	bne	r6 r5 L_else_17797
	addi	r6 r0 0
	jump	L_cont_17795
L_else_17797 : 
	addi	r7 r0 99
	bne	r6 r7 L_else_17815
	addi	r6 r0 1
	jump	L_cont_17813
L_else_17815 : 
	addi	r7 r0 1905
	addi	r8 r0 1042
	call	L_solver_fast_2113
	bne	r6 r0 L_else_17846
	addi	r6 r0 0
	jump	L_cont_17813
L_else_17846 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else_17848
	addi	r6 r0 0
	jump	L_cont_17813
L_else_17848 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_17851
	addi	r6 r0 0
	jump	L_cont_17849
L_else_17851 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17855
	ldi	r6 r16 2
	bne	r6 r5 L_else_17857
	addi	r6 r0 0
	jump	L_cont_17849
L_else_17857 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17859
	ldi	r6 r16 3
	bne	r6 r5 L_else_17861
	addi	r6 r0 0
	jump	L_cont_17849
L_else_17861 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17863
	ldi	r6 r16 4
	bne	r6 r5 L_else_17865
	addi	r6 r0 0
	jump	L_cont_17849
L_else_17865 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17867
	ldi	r6 r16 5
	bne	r6 r5 L_else_17869
	addi	r6 r0 0
	jump	L_cont_17849
L_else_17869 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17871
	ldi	r6 r16 6
	bne	r6 r5 L_else_17873
	addi	r6 r0 0
	jump	L_cont_17849
L_else_17873 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17875
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17849
L_else_17875 : 
	addi	r6 r0 1
	jump	L_cont_17849
L_else_17871 : 
	addi	r6 r0 1
	jump	L_cont_17849
L_else_17867 : 
	addi	r6 r0 1
	jump	L_cont_17849
L_else_17863 : 
	addi	r6 r0 1
	jump	L_cont_17849
L_else_17859 : 
	addi	r6 r0 1
	jump	L_cont_17849
L_else_17855 : 
	addi	r6 r0 1
L_cont_17849 : 
	bne	r6 r0 L_else_17853
	addi	r6 r0 0
	jump	L_cont_17813
L_else_17853 : 
	addi	r6 r0 1
L_cont_17813 : 
	bne	r6 r0 L_else_17817
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_17795
L_else_17817 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_17820
	addi	r6 r0 0
	jump	L_cont_17818
L_else_17820 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17824
	ldi	r6 r16 2
	bne	r6 r5 L_else_17826
	addi	r6 r0 0
	jump	L_cont_17818
L_else_17826 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17828
	ldi	r6 r16 3
	bne	r6 r5 L_else_17830
	addi	r6 r0 0
	jump	L_cont_17818
L_else_17830 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17832
	ldi	r6 r16 4
	bne	r6 r5 L_else_17834
	addi	r6 r0 0
	jump	L_cont_17818
L_else_17834 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17836
	ldi	r6 r16 5
	bne	r6 r5 L_else_17838
	addi	r6 r0 0
	jump	L_cont_17818
L_else_17838 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17840
	ldi	r6 r16 6
	bne	r6 r5 L_else_17842
	addi	r6 r0 0
	jump	L_cont_17818
L_else_17842 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17844
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17818
L_else_17844 : 
	addi	r6 r0 1
	jump	L_cont_17818
L_else_17840 : 
	addi	r6 r0 1
	jump	L_cont_17818
L_else_17836 : 
	addi	r6 r0 1
	jump	L_cont_17818
L_else_17832 : 
	addi	r6 r0 1
	jump	L_cont_17818
L_else_17828 : 
	addi	r6 r0 1
	jump	L_cont_17818
L_else_17824 : 
	addi	r6 r0 1
L_cont_17818 : 
	bne	r6 r0 L_else_17822
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_17795
L_else_17822 : 
	addi	r6 r0 1
L_cont_17795 : 
	bne	r6 r0 L_else_17800
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
	fbgt	f5 f0 L_else_17810
	jump	L_cont_17808
L_else_17810 : 
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
L_cont_17808 : 
	fbgt	f4 f0 L_else_17812
	jump	L_cont_17798
L_else_17812 : 
	fmul	f2 f4 f4
	fmul	f2 f2 f2
	fmul	f3 f2 f16
	fldi	f2 r0 1055
	fadd	f2 f2 f3
	fsti	f2 r0 1055
	fldi	f2 r0 1056
	fadd	f2 f2 f3
	fsti	f2 r0 1056
	fldi	f2 r0 1057
	fadd	f2 f2 f3
	fsti	f2 r0 1057
	jump	L_cont_17798
L_else_17800 : 
L_cont_17798 : 
	addi	r6 r0 1042
	fldi	f2 r0 1042
	fsti	f2 r0 1066
	fldi	f2 r0 1043
	fsti	f2 r0 1067
	fldi	f2 r0 1044
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r7 r7 -1
	call	L_setup_startp_constants_2148
	ldi	r6 r0 1075
	addi	r22 r6 -1
	add	r23 r0 r27
	fadd	f15 f0 f19
	call	L_trace_reflections_2232
	fldi	f2 r0 50
	fbgt	f17 f2 L_else_17802
	return
L_else_17802 : 
	addi	r6 r0 4
	bgt	r6 r26 L_else_17805
	jump	L_cont_17803
L_else_17805 : 
	addi	r7 r26 1
	addi	r6 r0 -1
	add	r1 r29 r7
	sti	r6 r1 0
L_cont_17803 : 
	addi	r6 r0 2
	bne	r30 r6 L_else_17807
	fldi	f3 r0 12
	ldi	r6 r31 7
	fldi	f2 r6 0
	fsub	f2 f3 f2
	fmul	f17 f17 f2
	addi	r26 r26 1
	fldi	f2 r0 1082
	fadd	f18 f18 f2
	jump	L_trace_ray_2237
L_else_17807 : 
	return
L_else_17779 : 
	return
L_trace_diffuse_ray_2243 : 
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r19 r0 0
	ldi	r20 r0 1183
	add	r21 r0 r22
	call	L_trace_or_matrix_fast_2210
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_17888
	addi	r6 r0 0
	jump	L_cont_17886
L_else_17888 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_17973
	addi	r6 r0 0
	jump	L_cont_17886
L_else_17973 : 
	addi	r6 r0 1
L_cont_17886 : 
	bne	r6 r0 L_else_17890
	return
L_else_17890 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r9 r22 0
	ldi	r7 r19 1
	bne	r7 r4 L_else_17893
	ldi	r6 r0 1074
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r8 r0 1046
	addi	r7 r6 -1
	addi	r6 r6 -1
	add	r1 r9 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else_17967
	fldi	f2 r0 29
	jump	L_cont_17965
L_else_17967 : 
	fbgt	f2 f0 L_else_17969
	fldi	f2 r0 31
	jump	L_cont_17965
L_else_17969 : 
	fldi	f2 r0 12
L_cont_17965 : 
	fsub	f2 f0 f2
	add	r1 r8 r7
	fsti	f2 r1 0
	jump	L_cont_17891
L_else_17893 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_17971
	ldi	r6 r19 4
	fldi	f2 r6 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	ldi	r6 r19 4
	fldi	f2 r6 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	ldi	r6 r19 4
	fldi	f2 r6 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	jump	L_cont_17891
L_else_17971 : 
	add	r6 r0 r19
	call	L_get_nvector_second_2220
L_cont_17891 : 
	addi	r7 r0 1042
	add	r6 r0 r19
	call	L_utexture_2225
	ldi	r17 r0 1183
	ldi	r16 r17 0
	ldi	r6 r16 0
	bne	r6 r5 L_else_17896
	addi	r6 r0 0
	jump	L_cont_17894
L_else_17896 : 
	addi	r7 r0 99
	bne	r6 r7 L_else_17904
	addi	r6 r0 1
	jump	L_cont_17902
L_else_17904 : 
	addi	r7 r0 1905
	addi	r8 r0 1042
	call	L_solver_fast_2113
	bne	r6 r0 L_else_17935
	addi	r6 r0 0
	jump	L_cont_17902
L_else_17935 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else_17937
	addi	r6 r0 0
	jump	L_cont_17902
L_else_17937 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_17940
	addi	r6 r0 0
	jump	L_cont_17938
L_else_17940 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17944
	ldi	r6 r16 2
	bne	r6 r5 L_else_17946
	addi	r6 r0 0
	jump	L_cont_17938
L_else_17946 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17948
	ldi	r6 r16 3
	bne	r6 r5 L_else_17950
	addi	r6 r0 0
	jump	L_cont_17938
L_else_17950 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17952
	ldi	r6 r16 4
	bne	r6 r5 L_else_17954
	addi	r6 r0 0
	jump	L_cont_17938
L_else_17954 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17956
	ldi	r6 r16 5
	bne	r6 r5 L_else_17958
	addi	r6 r0 0
	jump	L_cont_17938
L_else_17958 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17960
	ldi	r6 r16 6
	bne	r6 r5 L_else_17962
	addi	r6 r0 0
	jump	L_cont_17938
L_else_17962 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17964
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17938
L_else_17964 : 
	addi	r6 r0 1
	jump	L_cont_17938
L_else_17960 : 
	addi	r6 r0 1
	jump	L_cont_17938
L_else_17956 : 
	addi	r6 r0 1
	jump	L_cont_17938
L_else_17952 : 
	addi	r6 r0 1
	jump	L_cont_17938
L_else_17948 : 
	addi	r6 r0 1
	jump	L_cont_17938
L_else_17944 : 
	addi	r6 r0 1
L_cont_17938 : 
	bne	r6 r0 L_else_17942
	addi	r6 r0 0
	jump	L_cont_17902
L_else_17942 : 
	addi	r6 r0 1
L_cont_17902 : 
	bne	r6 r0 L_else_17906
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_17894
L_else_17906 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_17909
	addi	r6 r0 0
	jump	L_cont_17907
L_else_17909 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17913
	ldi	r6 r16 2
	bne	r6 r5 L_else_17915
	addi	r6 r0 0
	jump	L_cont_17907
L_else_17915 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17917
	ldi	r6 r16 3
	bne	r6 r5 L_else_17919
	addi	r6 r0 0
	jump	L_cont_17907
L_else_17919 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17921
	ldi	r6 r16 4
	bne	r6 r5 L_else_17923
	addi	r6 r0 0
	jump	L_cont_17907
L_else_17923 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17925
	ldi	r6 r16 5
	bne	r6 r5 L_else_17927
	addi	r6 r0 0
	jump	L_cont_17907
L_else_17927 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17929
	ldi	r6 r16 6
	bne	r6 r5 L_else_17931
	addi	r6 r0 0
	jump	L_cont_17907
L_else_17931 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17933
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17907
L_else_17933 : 
	addi	r6 r0 1
	jump	L_cont_17907
L_else_17929 : 
	addi	r6 r0 1
	jump	L_cont_17907
L_else_17925 : 
	addi	r6 r0 1
	jump	L_cont_17907
L_else_17921 : 
	addi	r6 r0 1
	jump	L_cont_17907
L_else_17917 : 
	addi	r6 r0 1
	jump	L_cont_17907
L_else_17913 : 
	addi	r6 r0 1
L_cont_17907 : 
	bne	r6 r0 L_else_17911
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_17894
L_else_17911 : 
	addi	r6 r0 1
L_cont_17894 : 
	bne	r6 r0 L_else_17898
	fldi	f3 r0 1046
	fldi	f2 r0 1039
	fmul	f4 f3 f2
	fldi	f3 r0 1047
	fldi	f2 r0 1040
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r0 1048
	fldi	f2 r0 1041
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsub	f2 f0 f2
	fbgt	f2 f0 L_else_17901
	fldi	f2 r0 29
	jump	L_cont_17899
L_else_17901 : 
L_cont_17899 : 
	fmul	f3 f17 f2
	ldi	r6 r19 7
	fldi	f2 r6 0
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
L_else_17898 : 
	return
L_iter_trace_diffuse_rays_2246 : 
	bgt	r0 r22 L_else_17976
	add	r1 r23 r22
	ldi	r26 r1 0
	ldi	r6 r26 0
	fldi	f3 r6 0
	fldi	f2 r24 0
	fmul	f4 f3 f2
	fldi	f3 r6 1
	fldi	f2 r24 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r6 2
	fldi	f2 r24 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_17979
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	ldi	r20 r0 1183
	ldi	r17 r20 0
	ldi	r6 r17 0
	bne	r6 r5 L_else_17987
	jump	L_cont_17985
L_else_17987 : 
	addi	r7 r0 99
	bne	r6 r7 L_else_18002
	ldi	r6 r17 1
	bne	r6 r5 L_else_18004
	jump	L_cont_18000
L_else_18004 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_18006
	jump	L_cont_18000
L_else_18006 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_18008
	jump	L_cont_18000
L_else_18008 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_18010
	jump	L_cont_18000
L_else_18010 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_18000
L_else_18002 : 
	add	r7 r0 r26
	call	L_solver_fast2_2131
	bne	r6 r0 L_else_18012
	jump	L_cont_18000
L_else_18012 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_18014
	jump	L_cont_18000
L_else_18014 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_18016
	jump	L_cont_18000
L_else_18016 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_18018
	jump	L_cont_18000
L_else_18018 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_18020
	jump	L_cont_18000
L_else_18020 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_18022
	jump	L_cont_18000
L_else_18022 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast_2206
L_cont_18000 : 
	addi	r19 r0 1
	add	r21 r0 r26
	call	L_trace_or_matrix_fast_2210
L_cont_17985 : 
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_17990
	addi	r6 r0 0
	jump	L_cont_17988
L_else_17990 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_17999
	addi	r6 r0 0
	jump	L_cont_17988
L_else_17999 : 
	addi	r6 r0 1
L_cont_17988 : 
	bne	r6 r0 L_else_17992
	jump	L_cont_17977
L_else_17992 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r7 r26 0
	add	r6 r0 r19
	call	L_get_nvector_2222
	addi	r7 r0 1042
	add	r6 r0 r19
	call	L_utexture_2225
	addi	r16 r0 0
	ldi	r17 r0 1183
	call	L_shadow_check_one_or_matrix_2185
	bne	r6 r0 L_else_17994
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
	fbgt	f2 f0 L_else_17997
	fldi	f2 r0 29
	jump	L_cont_17995
L_else_17997 : 
L_cont_17995 : 
	fmul	f3 f17 f2
	ldi	r6 r19 7
	fldi	f2 r6 0
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
	jump	L_cont_17977
L_else_17994 : 
	jump	L_cont_17977
L_else_17979 : 
	addi	r6 r22 1
	add	r1 r23 r6
	ldi	r26 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	ldi	r20 r0 1183
	ldi	r17 r20 0
	ldi	r6 r17 0
	bne	r6 r5 L_else_18025
	jump	L_cont_18023
L_else_18025 : 
	addi	r7 r0 99
	bne	r6 r7 L_else_18040
	ldi	r6 r17 1
	bne	r6 r5 L_else_18042
	jump	L_cont_18038
L_else_18042 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_18044
	jump	L_cont_18038
L_else_18044 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_18046
	jump	L_cont_18038
L_else_18046 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_18048
	jump	L_cont_18038
L_else_18048 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_18038
L_else_18040 : 
	add	r7 r0 r26
	call	L_solver_fast2_2131
	bne	r6 r0 L_else_18050
	jump	L_cont_18038
L_else_18050 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_18052
	jump	L_cont_18038
L_else_18052 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_18054
	jump	L_cont_18038
L_else_18054 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_18056
	jump	L_cont_18038
L_else_18056 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_18058
	jump	L_cont_18038
L_else_18058 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_18060
	jump	L_cont_18038
L_else_18060 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast_2206
L_cont_18038 : 
	addi	r19 r0 1
	add	r21 r0 r26
	call	L_trace_or_matrix_fast_2210
L_cont_18023 : 
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_18028
	addi	r6 r0 0
	jump	L_cont_18026
L_else_18028 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_18037
	addi	r6 r0 0
	jump	L_cont_18026
L_else_18037 : 
	addi	r6 r0 1
L_cont_18026 : 
	bne	r6 r0 L_else_18030
	jump	L_cont_17977
L_else_18030 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r7 r26 0
	add	r6 r0 r19
	call	L_get_nvector_2222
	addi	r7 r0 1042
	add	r6 r0 r19
	call	L_utexture_2225
	addi	r16 r0 0
	ldi	r17 r0 1183
	call	L_shadow_check_one_or_matrix_2185
	bne	r6 r0 L_else_18032
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
	fbgt	f2 f0 L_else_18035
	fldi	f2 r0 29
	jump	L_cont_18033
L_else_18035 : 
L_cont_18033 : 
	fmul	f3 f17 f2
	ldi	r6 r19 7
	fldi	f2 r6 0
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
	jump	L_cont_17977
L_else_18032 : 
L_cont_17977 : 
	addi	r26 r22 -2
	bgt	r0 r26 L_else_17981
	add	r1 r23 r26
	ldi	r22 r1 0
	ldi	r6 r22 0
	fldi	f3 r6 0
	fldi	f2 r24 0
	fmul	f4 f3 f2
	fldi	f2 r6 1
	fldi	f3 r24 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r6 2
	fldi	f3 r24 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_17984
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_17982
L_else_17984 : 
	addi	r6 r26 1
	add	r1 r23 r6
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_17982 : 
	addi	r22 r26 -2
	jump	L_iter_trace_diffuse_rays_2246
L_else_17981 : 
	return
L_else_17976 : 
	return
L_calc_diffuse_using_1point_2259 : 
	ldi	r7 r6 5
	ldi	r9 r6 7
	ldi	r8 r6 1
	ldi	r28 r6 4
	add	r1 r7 r27
	ldi	r7 r1 0
	fldi	f2 r7 0
	fsti	f2 r0 1052
	fldi	f2 r7 1
	fsti	f2 r0 1053
	fldi	f2 r7 2
	fsti	f2 r0 1054
	ldi	r6 r6 6
	ldi	r31 r6 0
	add	r1 r9 r27
	ldi	r29 r1 0
	add	r1 r8 r27
	ldi	r30 r1 0
	bne	r31 r0 L_else_18064
	jump	L_cont_18062
L_else_18064 : 
	ldi	r23 r0 1076
	fldi	f2 r30 0
	fsti	f2 r0 1066
	fldi	f2 r30 1
	fsti	f2 r0 1067
	fldi	f2 r30 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r7 r6 -1
	add	r6 r0 r30
	call	L_setup_startp_constants_2148
	ldi	r6 r23 118
	ldi	r6 r6 0
	fldi	f2 r6 0
	fldi	f3 r29 0
	fmul	f3 f2 f3
	fldi	f4 r6 1
	fldi	f2 r29 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r6 2
	fldi	f2 r29 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fbgt	f0 f2 L_else_18091
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18089
L_else_18091 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
L_cont_18089 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays_2246
L_cont_18062 : 
	bne	r31 r4 L_else_18067
	jump	L_cont_18065
L_else_18067 : 
	ldi	r23 r0 1077
	fldi	f2 r30 0
	fsti	f2 r0 1066
	fldi	f2 r30 1
	fsti	f2 r0 1067
	fldi	f2 r30 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r7 r6 -1
	add	r6 r0 r30
	call	L_setup_startp_constants_2148
	ldi	r6 r23 118
	ldi	r6 r6 0
	fldi	f2 r6 0
	fldi	f3 r29 0
	fmul	f3 f2 f3
	fldi	f4 r6 1
	fldi	f2 r29 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r6 2
	fldi	f2 r29 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fbgt	f0 f2 L_else_18088
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18086
L_else_18088 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
L_cont_18086 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays_2246
L_cont_18065 : 
	addi	r6 r0 2
	bne	r31 r6 L_else_18070
	jump	L_cont_18068
L_else_18070 : 
	ldi	r23 r0 1078
	fldi	f2 r30 0
	fsti	f2 r0 1066
	fldi	f2 r30 1
	fsti	f2 r0 1067
	fldi	f2 r30 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r7 r6 -1
	add	r6 r0 r30
	call	L_setup_startp_constants_2148
	ldi	r6 r23 118
	ldi	r6 r6 0
	fldi	f2 r6 0
	fldi	f3 r29 0
	fmul	f3 f2 f3
	fldi	f4 r6 1
	fldi	f2 r29 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r6 2
	fldi	f2 r29 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fbgt	f0 f2 L_else_18085
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18083
L_else_18085 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
L_cont_18083 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays_2246
L_cont_18068 : 
	addi	r6 r0 3
	bne	r31 r6 L_else_18073
	jump	L_cont_18071
L_else_18073 : 
	ldi	r23 r0 1079
	fldi	f2 r30 0
	fsti	f2 r0 1066
	fldi	f2 r30 1
	fsti	f2 r0 1067
	fldi	f2 r30 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r7 r6 -1
	add	r6 r0 r30
	call	L_setup_startp_constants_2148
	ldi	r6 r23 118
	ldi	r6 r6 0
	fldi	f2 r6 0
	fldi	f3 r29 0
	fmul	f3 f2 f3
	fldi	f4 r6 1
	fldi	f2 r29 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r6 2
	fldi	f2 r29 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fbgt	f0 f2 L_else_18082
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18080
L_else_18082 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
L_cont_18080 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays_2246
L_cont_18071 : 
	addi	r6 r0 4
	bne	r31 r6 L_else_18076
	jump	L_cont_18074
L_else_18076 : 
	ldi	r23 r0 1080
	fldi	f2 r30 0
	fsti	f2 r0 1066
	fldi	f2 r30 1
	fsti	f2 r0 1067
	fldi	f2 r30 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r7 r6 -1
	add	r6 r0 r30
	call	L_setup_startp_constants_2148
	ldi	r6 r23 118
	ldi	r6 r6 0
	fldi	f2 r6 0
	fldi	f3 r29 0
	fmul	f3 f2 f3
	fldi	f4 r6 1
	fldi	f2 r29 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r6 2
	fldi	f2 r29 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_18079
	ldi	r22 r23 118
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18077
L_else_18079 : 
	ldi	r22 r23 119
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_18077 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays_2246
L_cont_18074 : 
	add	r1 r28 r27
	ldi	r6 r1 0
	fldi	f4 r0 1055
	fldi	f3 r6 0
	fldi	f2 r0 1052
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f3 r6 1
	fldi	f2 r0 1053
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f4 r0 1057
	fldi	f3 r6 2
	fldi	f2 r0 1054
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1057
	return
L_calc_diffuse_using_5points_2262 : 
	add	r1 r7 r6
	ldi	r7 r1 0
	ldi	r14 r7 5
	addi	r7 r6 -1
	add	r1 r8 r7
	ldi	r7 r1 0
	ldi	r12 r7 5
	add	r1 r8 r6
	ldi	r13 r1 0
	ldi	r11 r13 5
	addi	r7 r6 1
	add	r1 r8 r7
	ldi	r7 r1 0
	ldi	r8 r7 5
	add	r1 r9 r6
	ldi	r6 r1 0
	ldi	r7 r6 5
	add	r1 r14 r10
	ldi	r6 r1 0
	fldi	f2 r6 0
	fsti	f2 r0 1052
	fldi	f2 r6 1
	fsti	f2 r0 1053
	fldi	f2 r6 2
	fsti	f2 r0 1054
	add	r1 r12 r10
	ldi	r6 r1 0
	fldi	f3 r0 1052
	fldi	f2 r6 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r6 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r6 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r11 r10
	ldi	r6 r1 0
	fldi	f3 r0 1052
	fldi	f2 r6 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r6 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r6 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r8 r10
	ldi	r6 r1 0
	fldi	f3 r0 1052
	fldi	f2 r6 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r6 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r6 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r7 r10
	ldi	r6 r1 0
	fldi	f3 r0 1052
	fldi	f2 r6 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r6 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r6 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	ldi	r6 r13 4
	add	r1 r6 r10
	ldi	r6 r1 0
	fldi	f3 r0 1055
	fldi	f4 r6 0
	fldi	f2 r0 1052
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f2 r6 1
	fldi	f3 r0 1053
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f4 r6 2
	fldi	f2 r0 1054
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
	return
L_do_without_neighbors_2268 : 
	addi	r7 r0 4
	bgt	r27 r7 L_else_18095
	ldi	r7 r6 2
	add	r1 r7 r27
	ldi	r7 r1 0
	bgt	r0 r7 L_else_18097
	ldi	r7 r6 3
	add	r1 r7 r27
	ldi	r7 r1 0
	bne	r7 r0 L_else_18100
	jump	L_cont_18098
L_else_18100 : 
	ldi	r7 r6 5
	ldi	r9 r6 7
	ldi	r8 r6 1
	ldi	r28 r6 4
	add	r1 r7 r27
	ldi	r7 r1 0
	fldi	f2 r7 0
	fsti	f2 r0 1052
	fldi	f2 r7 1
	fsti	f2 r0 1053
	fldi	f2 r7 2
	fsti	f2 r0 1054
	ldi	r7 r6 6
	ldi	r31 r7 0
	add	r1 r9 r27
	ldi	r30 r1 0
	add	r1 r8 r27
	ldi	r29 r1 0
	bne	r31 r0 L_else_18110
	jump	L_cont_18108
L_else_18110 : 
	ldi	r23 r0 1076
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r7 r7 -1
	sti	r6 r2 0
	add	r6 r0 r29
	addi	r2 r2 1
	call	L_setup_startp_constants_2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r24 r0 r30
	add	r25 r0 r29
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont_18108 : 
	bne	r31 r4 L_else_18113
	jump	L_cont_18111
L_else_18113 : 
	ldi	r23 r0 1077
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r7 r7 -1
	sti	r6 r2 0
	add	r6 r0 r29
	addi	r2 r2 1
	call	L_setup_startp_constants_2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r24 r0 r30
	add	r25 r0 r29
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont_18111 : 
	addi	r7 r0 2
	bne	r31 r7 L_else_18116
	jump	L_cont_18114
L_else_18116 : 
	ldi	r23 r0 1078
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r7 r7 -1
	sti	r6 r2 0
	add	r6 r0 r29
	addi	r2 r2 1
	call	L_setup_startp_constants_2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r24 r0 r30
	add	r25 r0 r29
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont_18114 : 
	addi	r7 r0 3
	bne	r31 r7 L_else_18119
	jump	L_cont_18117
L_else_18119 : 
	ldi	r23 r0 1079
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r7 r7 -1
	sti	r6 r2 0
	add	r6 r0 r29
	addi	r2 r2 1
	call	L_setup_startp_constants_2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r24 r0 r30
	add	r25 r0 r29
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont_18117 : 
	addi	r7 r0 4
	bne	r31 r7 L_else_18122
	jump	L_cont_18120
L_else_18122 : 
	ldi	r23 r0 1080
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r7 r7 -1
	sti	r6 r2 0
	add	r6 r0 r29
	addi	r2 r2 1
	call	L_setup_startp_constants_2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r24 r0 r30
	add	r25 r0 r29
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont_18120 : 
	add	r1 r28 r27
	ldi	r7 r1 0
	fldi	f4 r0 1055
	fldi	f3 r7 0
	fldi	f2 r0 1052
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f3 r7 1
	fldi	f2 r0 1053
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f4 r0 1057
	fldi	f3 r7 2
	fldi	f2 r0 1054
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1057
L_cont_18098 : 
	addi	r7 r27 1
	addi	r8 r0 4
	bgt	r7 r8 L_else_18102
	ldi	r8 r6 2
	add	r1 r8 r7
	ldi	r8 r1 0
	bgt	r0 r8 L_else_18104
	ldi	r8 r6 3
	add	r1 r8 r7
	ldi	r8 r1 0
	bne	r8 r0 L_else_18107
	jump	L_cont_18105
L_else_18107 : 
	sti	r6 r2 0
	sti	r7 r2 1
	add	r27 r0 r7
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
L_cont_18105 : 
	addi	r27 r7 1
	jump	L_do_without_neighbors_2268
L_else_18104 : 
	return
L_else_18102 : 
	return
L_else_18097 : 
	return
L_else_18095 : 
	return
L_try_exploit_neighbors_2284 : 
	add	r1 r18 r15
	ldi	r7 r1 0
	addi	r8 r0 4
	bgt	r6 r8 L_else_18125
	ldi	r8 r7 2
	add	r1 r8 r6
	ldi	r8 r1 0
	bgt	r0 r8 L_else_18127
	ldi	r8 r7 2
	add	r1 r8 r6
	ldi	r9 r1 0
	add	r1 r17 r15
	ldi	r14 r1 0
	ldi	r8 r14 2
	add	r1 r8 r6
	ldi	r8 r1 0
	bne	r8 r9 L_else_18130
	add	r1 r19 r15
	ldi	r8 r1 0
	ldi	r8 r8 2
	add	r1 r8 r6
	ldi	r8 r1 0
	bne	r8 r9 L_else_18162
	addi	r8 r15 -1
	add	r1 r18 r8
	ldi	r8 r1 0
	ldi	r8 r8 2
	add	r1 r8 r6
	ldi	r8 r1 0
	bne	r8 r9 L_else_18164
	addi	r8 r15 1
	add	r1 r18 r8
	ldi	r8 r1 0
	ldi	r8 r8 2
	add	r1 r8 r6
	ldi	r8 r1 0
	bne	r8 r9 L_else_18166
	addi	r8 r0 1
	jump	L_cont_18128
L_else_18166 : 
	addi	r8 r0 0
	jump	L_cont_18128
L_else_18164 : 
	addi	r8 r0 0
	jump	L_cont_18128
L_else_18162 : 
	addi	r8 r0 0
	jump	L_cont_18128
L_else_18130 : 
	addi	r8 r0 0
L_cont_18128 : 
	bne	r8 r0 L_else_18132
	addi	r8 r0 4
	bgt	r6 r8 L_else_18134
	ldi	r8 r7 2
	add	r1 r8 r6
	ldi	r8 r1 0
	bgt	r0 r8 L_else_18136
	ldi	r8 r7 3
	add	r1 r8 r6
	ldi	r8 r1 0
	bne	r8 r0 L_else_18139
	jump	L_cont_18137
L_else_18139 : 
	sti	r7 r2 0
	sti	r6 r2 1
	add	r27 r0 r6
	add	r6 r0 r7
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -2
	ldi	r7 r2 0
	ldi	r6 r2 1
L_cont_18137 : 
	addi	r27 r6 1
	add	r6 r0 r7
	jump	L_do_without_neighbors_2268
L_else_18136 : 
	return
L_else_18134 : 
	return
L_else_18132 : 
	ldi	r8 r7 3
	add	r1 r8 r6
	ldi	r8 r1 0
	bne	r8 r0 L_else_18142
	jump	L_cont_18140
L_else_18142 : 
	ldi	r13 r14 5
	addi	r8 r15 -1
	add	r1 r18 r8
	ldi	r8 r1 0
	ldi	r11 r8 5
	ldi	r12 r7 5
	addi	r8 r15 1
	add	r1 r18 r8
	ldi	r8 r1 0
	ldi	r10 r8 5
	add	r1 r19 r15
	ldi	r8 r1 0
	ldi	r9 r8 5
	add	r1 r13 r6
	ldi	r8 r1 0
	fldi	f2 r8 0
	fsti	f2 r0 1052
	fldi	f2 r8 1
	fsti	f2 r0 1053
	fldi	f2 r8 2
	fsti	f2 r0 1054
	add	r1 r11 r6
	ldi	r8 r1 0
	fldi	f3 r0 1052
	fldi	f2 r8 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r8 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r8 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r12 r6
	ldi	r8 r1 0
	fldi	f3 r0 1052
	fldi	f2 r8 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r8 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r8 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r10 r6
	ldi	r8 r1 0
	fldi	f3 r0 1052
	fldi	f2 r8 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r8 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r8 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r9 r6
	ldi	r8 r1 0
	fldi	f3 r0 1052
	fldi	f2 r8 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r8 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r8 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	ldi	r8 r7 4
	add	r1 r8 r6
	ldi	r8 r1 0
	fldi	f3 r0 1055
	fldi	f4 r8 0
	fldi	f2 r0 1052
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f2 r8 1
	fldi	f3 r0 1053
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f4 r8 2
	fldi	f2 r0 1054
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
L_cont_18140 : 
	addi	r27 r6 1
	addi	r6 r0 4
	bgt	r27 r6 L_else_18144
	ldi	r6 r7 2
	add	r1 r6 r27
	ldi	r6 r1 0
	bgt	r0 r6 L_else_18146
	ldi	r6 r7 2
	add	r1 r6 r27
	ldi	r8 r1 0
	ldi	r6 r14 2
	add	r1 r6 r27
	ldi	r6 r1 0
	bne	r6 r8 L_else_18149
	add	r1 r19 r15
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r27
	ldi	r6 r1 0
	bne	r6 r8 L_else_18156
	addi	r6 r15 -1
	add	r1 r18 r6
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r27
	ldi	r6 r1 0
	bne	r6 r8 L_else_18158
	addi	r6 r15 1
	add	r1 r18 r6
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r27
	ldi	r6 r1 0
	bne	r6 r8 L_else_18160
	addi	r6 r0 1
	jump	L_cont_18147
L_else_18160 : 
	addi	r6 r0 0
	jump	L_cont_18147
L_else_18158 : 
	addi	r6 r0 0
	jump	L_cont_18147
L_else_18156 : 
	addi	r6 r0 0
	jump	L_cont_18147
L_else_18149 : 
	addi	r6 r0 0
L_cont_18147 : 
	bne	r6 r0 L_else_18151
	add	r6 r0 r7
	jump	L_do_without_neighbors_2268
L_else_18151 : 
	ldi	r6 r7 3
	add	r1 r6 r27
	ldi	r6 r1 0
	bne	r6 r0 L_else_18154
	jump	L_cont_18152
L_else_18154 : 
	add	r6 r0 r15
	add	r7 r0 r17
	add	r8 r0 r18
	add	r9 r0 r19
	add	r10 r0 r27
	call	L_calc_diffuse_using_5points_2262
L_cont_18152 : 
	addi	r6 r27 1
	jump	L_try_exploit_neighbors_2284
L_else_18146 : 
	return
L_else_18144 : 
	return
L_else_18127 : 
	return
L_else_18125 : 
	return
L_write_ppm_header_2291 : 
	addi	r6 r0 80
	call	min_caml_print_char
	addi	r6 r0 54
	call	min_caml_print_char
	addi	r6 r0 10
	call	min_caml_print_char
	ldi	r10 r0 1058
	call	L_print_int_1900
	addi	r6 r0 32
	call	min_caml_print_char
	ldi	r10 r0 1059
	call	L_print_int_1900
	addi	r6 r0 32
	call	min_caml_print_char
	addi	r10 r0 255
	call	L_print_int_1900
	addi	r6 r0 10
	jump	min_caml_print_char
L_write_rgb_element_2293 : 
	jump	min_caml_print_float
L_pretrace_diffuse_rays_2297 : 
	addi	r6 r0 4
	bgt	r28 r6 L_else_18171
	ldi	r6 r27 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else_18173
	ldi	r6 r27 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else_18176
	jump	L_cont_18174
L_else_18176 : 
	ldi	r6 r27 6
	ldi	r8 r6 0
	fldi	f2 r0 29
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r6 r27 7
	ldi	r7 r27 1
	ldi	r23 r8 1076
	add	r1 r6 r28
	ldi	r24 r1 0
	add	r1 r7 r28
	ldi	r25 r1 0
	fldi	f2 r25 0
	fsti	f2 r0 1066
	fldi	f2 r25 1
	fsti	f2 r0 1067
	fldi	f2 r25 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r7 r6 -1
	add	r6 r0 r25
	call	L_setup_startp_constants_2148
	addi	r22 r0 118
	call	L_iter_trace_diffuse_rays_2246
	ldi	r6 r27 5
	add	r1 r6 r28
	ldi	r6 r1 0
	fldi	f2 r0 1052
	fsti	f2 r6 0
	fldi	f2 r0 1053
	fsti	f2 r6 1
	fldi	f2 r0 1054
	fsti	f2 r6 2
L_cont_18174 : 
	addi	r28 r28 1
	addi	r6 r0 4
	bgt	r28 r6 L_else_18178
	ldi	r6 r27 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else_18180
	ldi	r6 r27 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else_18183
	jump	L_cont_18181
L_else_18183 : 
	ldi	r6 r27 6
	ldi	r8 r6 0
	fldi	f2 r0 29
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r6 r27 7
	ldi	r7 r27 1
	ldi	r23 r8 1076
	add	r1 r6 r28
	ldi	r24 r1 0
	add	r1 r7 r28
	ldi	r25 r1 0
	fldi	f2 r25 0
	fsti	f2 r0 1066
	fldi	f2 r25 1
	fsti	f2 r0 1067
	fldi	f2 r25 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r7 r6 -1
	add	r6 r0 r25
	call	L_setup_startp_constants_2148
	ldi	r6 r23 118
	ldi	r6 r6 0
	fldi	f3 r6 0
	fldi	f2 r24 0
	fmul	f4 f3 f2
	fldi	f2 r6 1
	fldi	f3 r24 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r6 2
	fldi	f3 r24 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_18186
	ldi	r22 r23 118
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18184
L_else_18186 : 
	ldi	r22 r23 119
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_18184 : 
	addi	r22 r0 116
	call	L_iter_trace_diffuse_rays_2246
	ldi	r6 r27 5
	add	r1 r6 r28
	ldi	r6 r1 0
	fldi	f2 r0 1052
	fsti	f2 r6 0
	fldi	f2 r0 1053
	fsti	f2 r6 1
	fldi	f2 r0 1054
	fsti	f2 r6 2
L_cont_18181 : 
	addi	r28 r28 1
	jump	L_pretrace_diffuse_rays_2297
L_else_18180 : 
	return
L_else_18178 : 
	return
L_else_18173 : 
	return
L_else_18171 : 
	return
L_pretrace_pixels_2300 : 
	bgt	r0 r7 L_else_18189
	fldi	f3 r0 1062
	ldi	r9 r0 1060
	sub	r9 r7 r9
	foi	f2 r9
	fmul	f3 f3 f2
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
	fadd	f2 f3 f2
	fsqrt	f2 f2
	fbne	f2 f0 L_else_18192
	fldi	f3 r0 12
	jump	L_cont_18190
L_else_18192 : 
	fldi	f3 r0 12
	fdiv	f3 f3 f2
L_cont_18190 : 
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
	addi	r26 r0 0
	fldi	f17 r0 12
	addi	r27 r0 1069
	add	r1 r6 r7
	ldi	r9 r1 0
	fldi	f18 r0 29
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	add	r28 r0 r9
	addi	r2 r2 4
	call	L_trace_ray_2237
	addi	r2 r2 -4
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r9 0
	fldi	f2 r0 1055
	fsti	f2 r10 0
	fldi	f2 r0 1056
	fsti	f2 r10 1
	fldi	f2 r0 1057
	fsti	f2 r10 2
	ldi	r10 r9 6
	sti	r8 r10 0
	ldi	r10 r9 2
	ldi	r10 r10 0
	bgt	r0 r10 L_else_18195
	ldi	r10 r9 3
	ldi	r10 r10 0
	bne	r10 r0 L_else_18201
	jump	L_cont_18199
L_else_18201 : 
	ldi	r10 r9 6
	ldi	r12 r10 0
	fldi	f2 r0 29
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r11 r9 7
	ldi	r10 r9 1
	ldi	r23 r12 1076
	ldi	r24 r11 0
	ldi	r25 r10 0
	fldi	f2 r25 0
	fsti	f2 r0 1066
	fldi	f2 r25 1
	fsti	f2 r0 1067
	fldi	f2 r25 2
	fsti	f2 r0 1068
	ldi	r10 r0 1072
	addi	r10 r10 -1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r9 r2 3
	add	r6 r0 r25
	add	r7 r0 r10
	addi	r2 r2 4
	call	L_setup_startp_constants_2148
	addi	r2 r2 -4
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r9 r2 3
	ldi	r10 r23 118
	ldi	r10 r10 0
	fldi	f2 r10 0
	fldi	f3 r24 0
	fmul	f3 f2 f3
	fldi	f4 r10 1
	fldi	f2 r24 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r10 2
	fldi	f2 r24 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_18204
	ldi	r22 r23 118
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	L_trace_diffuse_ray_2243
	addi	r2 r2 -4
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r9 r2 3
	jump	L_cont_18202
L_else_18204 : 
	ldi	r22 r23 119
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	L_trace_diffuse_ray_2243
	addi	r2 r2 -4
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r9 r2 3
L_cont_18202 : 
	addi	r22 r0 116
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r9 r2 3
	addi	r2 r2 4
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -4
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r9 r2 3
	ldi	r10 r9 5
	ldi	r10 r10 0
	fldi	f2 r0 1052
	fsti	f2 r10 0
	fldi	f2 r0 1053
	fsti	f2 r10 1
	fldi	f2 r0 1054
	fsti	f2 r10 2
L_cont_18199 : 
	addi	r28 r0 1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r27 r0 r9
	addi	r2 r2 3
	call	L_pretrace_diffuse_rays_2297
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	jump	L_cont_18193
L_else_18195 : 
L_cont_18193 : 
	addi	r9 r7 -1
	addi	r7 r8 1
	addi	r8 r0 5
	bgt	r8 r7 L_else_18198
	addi	r7 r7 -5
	jump	L_cont_18196
L_else_18198 : 
L_cont_18196 : 
	add	r8 r0 r7
	add	r7 r0 r9
	jump	L_pretrace_pixels_2300
L_else_18189 : 
	return
L_scan_pixel_2311 : 
	ldi	r11 r0 1058
	bgt	r11 r6 L_else_18207
	return
L_else_18207 : 
	add	r1 r9 r6
	ldi	r11 r1 0
	ldi	r12 r11 0
	fldi	f2 r12 0
	fsti	f2 r0 1055
	fldi	f2 r12 1
	fsti	f2 r0 1056
	fldi	f2 r12 2
	fsti	f2 r0 1057
	ldi	r13 r0 1059
	addi	r12 r7 1
	bgt	r13 r12 L_else_18210
	addi	r12 r0 0
	jump	L_cont_18208
L_else_18210 : 
	bgt	r7 r0 L_else_18250
	addi	r12 r0 0
	jump	L_cont_18208
L_else_18250 : 
	ldi	r13 r0 1058
	addi	r12 r6 1
	bgt	r13 r12 L_else_18252
	addi	r12 r0 0
	jump	L_cont_18208
L_else_18252 : 
	bgt	r6 r0 L_else_18254
	addi	r12 r0 0
	jump	L_cont_18208
L_else_18254 : 
	addi	r12 r0 1
L_cont_18208 : 
	bne	r12 r0 L_else_18213
	addi	r27 r0 0
	ldi	r12 r11 2
	ldi	r12 r12 0
	bgt	r0 r12 L_else_18229
	ldi	r12 r11 3
	ldi	r12 r12 0
	bne	r12 r0 L_else_18232
	jump	L_cont_18230
L_else_18232 : 
	sti	r11 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	sti	r8 r2 3
	sti	r9 r2 4
	sti	r6 r2 5
	add	r6 r0 r11
	addi	r2 r2 6
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -6
	ldi	r11 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	ldi	r9 r2 4
	ldi	r6 r2 5
L_cont_18230 : 
	addi	r27 r0 1
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
	jump	L_cont_18211
L_else_18229 : 
	jump	L_cont_18211
L_else_18213 : 
	addi	r27 r0 0
	ldi	r12 r11 2
	ldi	r12 r12 0
	bgt	r0 r12 L_else_18234
	ldi	r12 r11 2
	ldi	r13 r12 0
	add	r1 r8 r6
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r13 L_else_18237
	add	r1 r10 r6
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r13 L_else_18244
	addi	r12 r6 -1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r13 L_else_18246
	addi	r12 r6 1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r13 L_else_18248
	addi	r12 r0 1
	jump	L_cont_18235
L_else_18248 : 
	addi	r12 r0 0
	jump	L_cont_18235
L_else_18246 : 
	addi	r12 r0 0
	jump	L_cont_18235
L_else_18244 : 
	addi	r12 r0 0
	jump	L_cont_18235
L_else_18237 : 
	addi	r12 r0 0
L_cont_18235 : 
	bne	r12 r0 L_else_18239
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
	jump	L_cont_18211
L_else_18239 : 
	ldi	r11 r11 3
	ldi	r11 r11 0
	bne	r11 r0 L_else_18242
	jump	L_cont_18240
L_else_18242 : 
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r7 r0 r8
	add	r8 r0 r9
	add	r9 r0 r10
	add	r10 r0 r27
	addi	r2 r2 5
	call	L_calc_diffuse_using_5points_2262
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
L_cont_18240 : 
	addi	r11 r0 1
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	add	r15 r0 r6
	add	r16 r0 r7
	add	r17 r0 r8
	add	r18 r0 r9
	add	r19 r0 r10
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
	jump	L_cont_18211
L_else_18234 : 
L_cont_18211 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element_2293
	fldi	f2 r0 1056
	call	L_write_rgb_element_2293
	fldi	f2 r0 1057
	call	L_write_rgb_element_2293
	addi	r6 r6 1
	ldi	r11 r0 1058
	bgt	r11 r6 L_else_18215
	return
L_else_18215 : 
	add	r1 r9 r6
	ldi	r11 r1 0
	ldi	r12 r11 0
	fldi	f2 r12 0
	fsti	f2 r0 1055
	fldi	f2 r12 1
	fsti	f2 r0 1056
	fldi	f2 r12 2
	fsti	f2 r0 1057
	ldi	r12 r0 1059
	addi	r13 r7 1
	bgt	r12 r13 L_else_18218
	addi	r12 r0 0
	jump	L_cont_18216
L_else_18218 : 
	bgt	r7 r0 L_else_18223
	addi	r12 r0 0
	jump	L_cont_18216
L_else_18223 : 
	ldi	r12 r0 1058
	addi	r13 r6 1
	bgt	r12 r13 L_else_18225
	addi	r12 r0 0
	jump	L_cont_18216
L_else_18225 : 
	bgt	r6 r0 L_else_18227
	addi	r12 r0 0
	jump	L_cont_18216
L_else_18227 : 
	addi	r12 r0 1
L_cont_18216 : 
	bne	r12 r0 L_else_18221
	addi	r27 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont_18219
L_else_18221 : 
	addi	r11 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r15 r0 r6
	add	r16 r0 r7
	add	r17 r0 r8
	add	r18 r0 r9
	add	r19 r0 r10
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
L_cont_18219 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element_2293
	fldi	f2 r0 1056
	call	L_write_rgb_element_2293
	fldi	f2 r0 1057
	call	L_write_rgb_element_2293
	addi	r6 r6 1
	jump	L_scan_pixel_2311
L_scan_line_2317 : 
	ldi	r11 r0 1059
	bgt	r11 r6 L_else_18257
	return
L_else_18257 : 
	ldi	r11 r0 1059
	addi	r11 r11 -1
	bgt	r11 r6 L_else_18260
	jump	L_cont_18258
L_else_18260 : 
	addi	r12 r6 1
	fldi	f2 r0 1062
	ldi	r11 r0 1061
	sub	r11 r12 r11
	foi	f3 r11
	fmul	f4 f2 f3
	fldi	f2 r0 1033
	fmul	f2 f4 f2
	fldi	f3 r0 1027
	fadd	f20 f2 f3
	fldi	f2 r0 1034
	fmul	f3 f4 f2
	fldi	f2 r0 1028
	fadd	f21 f3 f2
	fldi	f2 r0 1035
	fmul	f3 f4 f2
	fldi	f2 r0 1029
	fadd	f22 f3 f2
	ldi	r11 r0 1058
	addi	r11 r11 -1
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	sti	r10 r2 4
	add	r6 r0 r9
	add	r7 r0 r11
	add	r8 r0 r10
	addi	r2 r2 5
	call	L_pretrace_pixels_2300
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	ldi	r10 r2 4
L_cont_18258 : 
	addi	r15 r0 0
	ldi	r11 r0 1058
	bgt	r11 r0 L_else_18263
	jump	L_cont_18261
L_else_18263 : 
	ldi	r11 r8 0
	ldi	r11 r11 0
	fldi	f2 r11 0
	fsti	f2 r0 1055
	fldi	f2 r11 1
	fsti	f2 r0 1056
	fldi	f2 r11 2
	fsti	f2 r0 1057
	ldi	r12 r0 1059
	addi	r11 r6 1
	bgt	r12 r11 L_else_18277
	addi	r11 r0 0
	jump	L_cont_18275
L_else_18277 : 
	bgt	r6 r0 L_else_18282
	addi	r11 r0 0
	jump	L_cont_18275
L_else_18282 : 
	ldi	r12 r0 1058
	addi	r11 r0 1
	bgt	r12 r11 L_else_18284
	addi	r11 r0 0
	jump	L_cont_18275
L_else_18284 : 
	addi	r11 r0 0
L_cont_18275 : 
	bne	r11 r0 L_else_18280
	ldi	r11 r8 0
	addi	r27 r0 0
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	jump	L_cont_18278
L_else_18280 : 
	addi	r11 r0 0
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r16 r0 r6
	add	r17 r0 r7
	add	r18 r0 r8
	add	r19 r0 r9
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
L_cont_18278 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element_2293
	fldi	f2 r0 1056
	call	L_write_rgb_element_2293
	fldi	f2 r0 1057
	call	L_write_rgb_element_2293
	addi	r11 r0 1
	sti	r10 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	add	r10 r0 r9
	add	r9 r0 r8
	add	r8 r0 r7
	add	r7 r0 r6
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_scan_pixel_2311
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
L_cont_18261 : 
	addi	r11 r6 1
	addi	r6 r10 2
	addi	r10 r0 5
	bgt	r10 r6 L_else_18266
	addi	r6 r6 -5
	jump	L_cont_18264
L_else_18266 : 
L_cont_18264 : 
	ldi	r10 r0 1059
	bgt	r10 r11 L_else_18268
	return
L_else_18268 : 
	ldi	r10 r0 1059
	addi	r10 r10 -1
	bgt	r10 r11 L_else_18271
	jump	L_cont_18269
L_else_18271 : 
	addi	r12 r11 1
	fldi	f3 r0 1062
	ldi	r10 r0 1061
	sub	r10 r12 r10
	foi	f2 r10
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
	ldi	r10 r0 1058
	addi	r10 r10 -1
	sti	r11 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	sti	r6 r2 4
	add	r8 r0 r6
	add	r6 r0 r7
	add	r7 r0 r10
	addi	r2 r2 5
	call	L_pretrace_pixels_2300
	addi	r2 r2 -5
	ldi	r11 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	ldi	r6 r2 4
L_cont_18269 : 
	addi	r10 r0 0
	sti	r6 r2 0
	sti	r9 r2 1
	sti	r7 r2 2
	sti	r8 r2 3
	sti	r11 r2 4
	add	r6 r0 r10
	add	r10 r0 r7
	add	r7 r0 r11
	addi	r2 r2 5
	call	L_scan_pixel_2311
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
	ldi	r11 r2 4
	addi	r10 r11 1
	addi	r6 r6 2
	addi	r11 r0 5
	bgt	r11 r6 L_else_18274
	addi	r6 r6 -5
	jump	L_cont_18272
L_else_18274 : 
L_cont_18272 : 
	add	r1 r0 r6
	add	r6 r0 r10
	add	r10 r0 r1
	add	r1 r0 r7
	add	r7 r0 r9
	add	r9 r0 r8
	add	r8 r0 r1
	jump	L_scan_line_2317
L_create_float5x3array_2323 : 
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	addi	r7 r0 5
	add	r1 r0 r6
	add	r6 r0 r7
	add	r7 r0 r1
	call	min_caml_create_array
	add	r8 r0 r6
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r6 r8 1
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r6 r8 2
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r6 r8 3
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	sti	r6 r8 4
	add	r6 r0 r8
	return
L_create_pixel_2325 : 
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r10 r0 r6
	call	L_create_float5x3array_2323
	add	r11 r0 r6
	addi	r6 r0 5
	addi	r7 r0 0
	call	min_caml_create_array
	add	r12 r0 r6
	addi	r6 r0 5
	addi	r7 r0 0
	call	min_caml_create_array
	add	r13 r0 r6
	call	L_create_float5x3array_2323
	add	r14 r0 r6
	call	L_create_float5x3array_2323
	add	r15 r0 r6
	addi	r6 r0 1
	addi	r7 r0 0
	call	min_caml_create_array
	add	r16 r0 r6
	call	L_create_float5x3array_2323
	sti	r10 r3 0
	sti	r11 r3 1
	sti	r12 r3 2
	sti	r13 r3 3
	sti	r14 r3 4
	sti	r15 r3 5
	sti	r16 r3 6
	sti	r6 r3 7
	add	r6 r0 r3
	addi	r3 r3 8
	return
L_init_line_elements_2327 : 
	bgt	r0 r18 L_else_18289
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18291
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18293
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18295
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18297
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18299
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18301
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18303
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	jump	L_init_line_elements_2327
L_else_18303 : 
	add	r6 r0 r17
	return
L_else_18301 : 
	add	r6 r0 r17
	return
L_else_18299 : 
	add	r6 r0 r17
	return
L_else_18297 : 
	add	r6 r0 r17
	return
L_else_18295 : 
	add	r6 r0 r17
	return
L_else_18293 : 
	add	r6 r0 r17
	return
L_else_18291 : 
	add	r6 r0 r17
	return
L_else_18289 : 
	add	r6 r0 r17
	return
L_create_pixelline_2330 : 
	ldi	r17 r0 1058
	call	L_create_pixel_2325
	add	r7 r0 r6
	add	r6 r0 r17
	call	min_caml_create_array
	add	r17 r0 r6
	ldi	r6 r0 1058
	addi	r18 r6 -2
	bgt	r0 r18 L_else_18306
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18308
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18310
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18312
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18314
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18316
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18318
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	jump	L_init_line_elements_2327
L_else_18318 : 
	add	r6 r0 r17
	return
L_else_18316 : 
	add	r6 r0 r17
	return
L_else_18314 : 
	add	r6 r0 r17
	return
L_else_18312 : 
	add	r6 r0 r17
	return
L_else_18310 : 
	add	r6 r0 r17
	return
L_else_18308 : 
	add	r6 r0 r17
	return
L_else_18306 : 
	add	r6 r0 r17
	return
L_tan_2332 : 
	fadd	f2 f0 f10
	call	L_sin_1878
	fadd	f11 f0 f2
	fadd	f2 f0 f10
	call	L_cos_1880
	fdiv	f2 f11 f2
	return
L_adjust_position_2334 : 
	fmul	f2 f2 f2
	fldi	f3 r0 50
	fadd	f2 f2 f3
	fsqrt	f16 f2
	fldi	f2 r0 12
	fdiv	f2 f2 f16
	call	L_atan_1882
	fmul	f10 f2 f15
	call	L_tan_2332
	fmul	f2 f2 f16
	return
L_calc_dirvec_2337 : 
	addi	r9 r0 5
	bgt	r9 r6 L_else_18323
	fmul	f4 f2 f2
	fmul	f5 f3 f3
	fadd	f4 f4 f5
	fldi	f5 r0 12
	fadd	f4 f4 f5
	fsqrt	f4 f4
	fdiv	f6 f2 f4
	fdiv	f7 f3 f4
	fldi	f2 r0 12
	fdiv	f5 f2 f4
	ldi	r7 r7 1076
	add	r1 r7 r8
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsti	f6 r6 0
	fsti	f7 r6 1
	fsti	f5 r6 2
	addi	r6 r8 40
	add	r1 r7 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsub	f2 f0 f7
	fsti	f6 r6 0
	fsti	f5 r6 1
	fsti	f2 r6 2
	addi	r6 r8 80
	add	r1 r7 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsub	f3 f0 f6
	fsub	f2 f0 f7
	fsti	f5 r6 0
	fsti	f3 r6 1
	fsti	f2 r6 2
	addi	r6 r8 1
	add	r1 r7 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsub	f3 f0 f6
	fsub	f4 f0 f7
	fsub	f2 f0 f5
	fsti	f3 r6 0
	fsti	f4 r6 1
	fsti	f2 r6 2
	addi	r6 r8 41
	add	r1 r7 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsub	f3 f0 f6
	fsub	f2 f0 f5
	fsti	f3 r6 0
	fsti	f2 r6 1
	fsti	f7 r6 2
	addi	r6 r8 81
	add	r1 r7 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsub	f2 f0 f5
	fsti	f2 r6 0
	fsti	f6 r6 1
	fsti	f7 r6 2
	return
L_else_18323 : 
	fadd	f2 f0 f3
	fadd	f15 f0 f17
	call	L_adjust_position_2334
	fadd	f19 f0 f2
	addi	r6 r6 1
	fadd	f2 f0 f19
	fadd	f15 f0 f18
	call	L_adjust_position_2334
	fadd	f3 f0 f2
	fadd	f2 f0 f19
	jump	L_calc_dirvec_2337
L_calc_dirvecs_2345 : 
	bgt	r0 r10 L_else_18326
	foi	f3 r10
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f17 f3 f2
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	add	r7 r0 r11
	add	r8 r0 r12
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	foi	f2 r10
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 50
	fadd	f17 f2 f3
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	addi	r8 r12 2
	add	r7 r0 r11
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	addi	r13 r10 -1
	addi	r10 r11 1
	addi	r6 r0 5
	bgt	r6 r10 L_else_18329
	addi	r10 r10 -5
	jump	L_cont_18327
L_else_18329 : 
L_cont_18327 : 
	bgt	r0 r13 L_else_18331
	foi	f2 r13
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f17 f2 f3
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	add	r7 r0 r10
	add	r8 r0 r12
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	foi	f2 r13
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 50
	fadd	f17 f2 f3
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	addi	r8 r12 2
	add	r7 r0 r10
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	addi	r7 r13 -1
	addi	r6 r10 1
	addi	r8 r0 5
	bgt	r8 r6 L_else_18334
	addi	r6 r6 -5
	jump	L_cont_18332
L_else_18334 : 
L_cont_18332 : 
	add	r10 r0 r7
	add	r11 r0 r6
	jump	L_calc_dirvecs_2345
L_else_18331 : 
	return
L_else_18326 : 
	return
L_calc_dirvec_rows_2350 : 
	bgt	r0 r14 L_else_18337
	foi	f3 r14
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f20 f3 f2
	addi	r10 r0 4
	foi	f3 r10
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f17 f3 f2
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	add	r7 r0 r15
	add	r8 r0 r16
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	foi	f2 r10
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 50
	fadd	f17 f2 f3
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	addi	r8 r16 2
	add	r7 r0 r15
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	addi	r10 r0 3
	addi	r11 r15 1
	addi	r6 r0 5
	bgt	r6 r11 L_else_18340
	addi	r11 r11 -5
	jump	L_cont_18338
L_else_18340 : 
L_cont_18338 : 
	add	r12 r0 r16
	call	L_calc_dirvecs_2345
	addi	r17 r14 -1
	addi	r14 r15 2
	addi	r6 r0 5
	bgt	r6 r14 L_else_18343
	addi	r14 r14 -5
	jump	L_cont_18341
L_else_18343 : 
L_cont_18341 : 
	addi	r15 r16 4
	bgt	r0 r17 L_else_18345
	foi	f3 r17
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f20 f3 f2
	addi	r10 r0 4
	add	r11 r0 r14
	add	r12 r0 r15
	call	L_calc_dirvecs_2345
	addi	r8 r17 -1
	addi	r6 r14 2
	addi	r7 r0 5
	bgt	r7 r6 L_else_18348
	addi	r6 r6 -5
	jump	L_cont_18346
L_else_18348 : 
L_cont_18346 : 
	addi	r16 r15 4
	add	r14 r0 r8
	add	r15 r0 r6
	jump	L_calc_dirvec_rows_2350
L_else_18345 : 
	return
L_else_18337 : 
	return
L_create_dirvec_2354 : 
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r10 r0 r6
	ldi	r6 r0 1072
	add	r7 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r6 r3 1
	add	r6 r0 r3
	addi	r3 r3 2
	return
L_create_dirvec_elements_2356 : 
	bgt	r0 r12 L_else_18352
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18354
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18356
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18358
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18360
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18362
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18364
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18366
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	jump	L_create_dirvec_elements_2356
L_else_18366 : 
	return
L_else_18364 : 
	return
L_else_18362 : 
	return
L_else_18360 : 
	return
L_else_18358 : 
	return
L_else_18356 : 
	return
L_else_18354 : 
	return
L_else_18352 : 
	return
L_create_dirvecs_2359 : 
	bgt	r0 r13 L_else_18369
	addi	r11 r0 1076
	addi	r12 r0 120
	call	L_create_dirvec_2354
	add	r7 r0 r6
	add	r6 r0 r12
	call	min_caml_create_array
	add	r1 r11 r13
	sti	r6 r1 0
	ldi	r11 r13 1076
	addi	r12 r0 118
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 117
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 116
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 115
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 114
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 113
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 112
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 111
	call	L_create_dirvec_elements_2356
	addi	r13 r13 -1
	jump	L_create_dirvecs_2359
L_else_18369 : 
	return
L_init_dirvec_constants_2361 : 
	bgt	r0 r15 L_else_18372
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_18375
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18429
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18427
L_else_18429 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18438
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18427
L_else_18438 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_18427 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_18431
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18434
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18432
L_else_18434 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18436
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18432
L_else_18436 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18432 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18373
L_else_18431 : 
	jump	L_cont_18373
L_else_18375 : 
L_cont_18373 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else_18377
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_18380
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18410
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18408
L_else_18410 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18426
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18408
L_else_18426 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_18408 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_18412
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18415
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18413
L_else_18415 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18424
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18413
L_else_18424 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18413 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_18417
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18420
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18418
L_else_18420 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18422
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18418
L_else_18422 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_18418 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18378
L_else_18417 : 
	jump	L_cont_18378
L_else_18412 : 
	jump	L_cont_18378
L_else_18380 : 
L_cont_18378 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else_18382
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_18385
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18398
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18396
L_else_18398 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18407
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18396
L_else_18407 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_18396 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_18400
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18403
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18401
L_else_18403 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18405
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18401
L_else_18405 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18401 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18383
L_else_18400 : 
	jump	L_cont_18383
L_else_18385 : 
L_cont_18383 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else_18387
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_18390
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18393
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18391
L_else_18393 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18395
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18391
L_else_18395 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18391 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18388
L_else_18390 : 
L_cont_18388 : 
	addi	r15 r15 -1
	jump	L_init_dirvec_constants_2361
L_else_18387 : 
	return
L_else_18382 : 
	return
L_else_18377 : 
	return
L_else_18372 : 
	return
L_init_vecset_constants_2364 : 
	bgt	r0 r16 L_else_18441
	ldi	r14 r16 1076
	ldi	r11 r14 119
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_18444
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18507
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18505
L_else_18507 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18523
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18505
L_else_18523 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18505 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_18509
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18512
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18510
L_else_18512 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18521
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18510
L_else_18521 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_18510 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_18514
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18517
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18515
L_else_18517 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18519
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18515
L_else_18519 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18515 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18442
L_else_18514 : 
	jump	L_cont_18442
L_else_18509 : 
	jump	L_cont_18442
L_else_18444 : 
L_cont_18442 : 
	ldi	r11 r14 118
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_18447
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18495
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18493
L_else_18495 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18504
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18493
L_else_18504 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18493 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_18497
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18500
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18498
L_else_18500 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18502
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18498
L_else_18502 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_18498 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18445
L_else_18497 : 
	jump	L_cont_18445
L_else_18447 : 
L_cont_18445 : 
	ldi	r11 r14 117
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_18450
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18490
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18488
L_else_18490 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18492
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18488
L_else_18492 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_18488 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18448
L_else_18450 : 
L_cont_18448 : 
	addi	r15 r0 116
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_18452
	ldi	r14 r16 1076
	ldi	r11 r14 119
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_18455
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18478
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18476
L_else_18478 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18487
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18476
L_else_18487 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_18476 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_18480
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18483
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18481
L_else_18483 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18485
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18481
L_else_18485 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18481 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18453
L_else_18480 : 
	jump	L_cont_18453
L_else_18455 : 
L_cont_18453 : 
	ldi	r11 r14 118
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_18458
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_18473
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18471
L_else_18473 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18475
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18471
L_else_18475 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18471 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18456
L_else_18458 : 
L_cont_18456 : 
	addi	r15 r0 117
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_18460
	ldi	r14 r16 1076
	ldi	r11 r14 119
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_18463
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r6 r10 1
	bne	r6 r4 L_else_18468
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18466
L_else_18468 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_18470
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18466
L_else_18470 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18466 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18461
L_else_18463 : 
L_cont_18461 : 
	addi	r15 r0 118
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_18465
	ldi	r14 r16 1076
	addi	r15 r0 119
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	jump	L_init_vecset_constants_2364
L_else_18465 : 
	return
L_else_18460 : 
	return
L_else_18452 : 
	return
L_else_18441 : 
	return
min_caml_start : 
	addi	r7 r0 128
	addi	r6 r0 128
	sti	r7 r0 1058
	sti	r6 r0 1059
	addi	r6 r0 64
	sti	r6 r0 1060
	addi	r6 r0 64
	sti	r6 r0 1061
	fldi	f3 r0 55
	foi	f2 r7
	fdiv	f2 f3 f2
	fsti	f2 r0 1062
	call	L_create_pixelline_2330
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_create_pixelline_2330
	addi	r2 r2 -1
	add	r7 r0 r6
	ldi	r6 r2 0
	sti	r6 r2 0
	sti	r7 r2 1
	addi	r2 r2 2
	call	L_create_pixelline_2330
	addi	r2 r2 -2
	add	r8 r0 r6
	ldi	r6 r2 0
	ldi	r7 r2 1
	call	L_read_screen_settings_2029
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_read_light_2031
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r21 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r8 r0 r21
	addi	r2 r2 3
	call	L_read_nth_object_2036
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	bne	r9 r0 L_else_18526
	sti	r21 r0 1072
	jump	L_cont_18524
L_else_18526 : 
	addi	r21 r0 1
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r8 r0 r21
	addi	r2 r2 3
	call	L_read_nth_object_2036
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	bne	r9 r0 L_else_18572
	sti	r21 r0 1072
	jump	L_cont_18524
L_else_18572 : 
	addi	r21 r0 2
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r8 r0 r21
	addi	r2 r2 3
	call	L_read_nth_object_2036
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	bne	r9 r0 L_else_18574
	sti	r21 r0 1072
	jump	L_cont_18524
L_else_18574 : 
	addi	r21 r0 3
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r8 r0 r21
	addi	r2 r2 3
	call	L_read_nth_object_2036
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	bne	r9 r0 L_else_18576
	sti	r21 r0 1072
	jump	L_cont_18524
L_else_18576 : 
	addi	r21 r0 4
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_read_object_2038
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
L_cont_18524 : 
	addi	r10 r0 0
	addi	r9 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r11 r9 0
	bne	r11 r5 L_else_18529
	jump	L_cont_18527
L_else_18529 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r9 r1 0
	addi	r10 r0 1
	addi	r9 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r11 r9 0
	bne	r11 r5 L_else_18564
	jump	L_cont_18527
L_else_18564 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r9 r1 0
	addi	r10 r0 2
	addi	r9 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r11 r9 0
	bne	r11 r5 L_else_18566
	jump	L_cont_18527
L_else_18566 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r9 r1 0
	addi	r10 r0 3
	addi	r9 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r11 r9 0
	bne	r11 r5 L_else_18568
	jump	L_cont_18527
L_else_18568 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r9 r1 0
	addi	r10 r0 4
	addi	r9 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r11 r9 0
	bne	r11 r5 L_else_18570
	jump	L_cont_18527
L_else_18570 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r9 r1 0
	addi	r10 r0 5
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_read_and_network_2046
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
L_cont_18527 : 
	addi	r10 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_read_or_network_2044
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	sti	r9 r0 1183
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_write_ppm_header_2291
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r13 r0 4
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_create_dirvecs_2359
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r9 r0 9
	addi	r11 r0 0
	addi	r12 r0 0
	foi	f3 r9
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f20 f3 f2
	addi	r10 r0 4
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_calc_dirvecs_2345
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r14 r0 8
	addi	r15 r0 2
	addi	r16 r0 4
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_calc_dirvec_rows_2350
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r9 r0 4
	ldi	r14 r9 1076
	addi	r15 r0 119
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_init_dirvec_constants_2361
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r16 r0 3
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_init_vecset_constants_2364
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r9 r0 1905
	ldi	r9 r9 0
	fldi	f2 r0 1039
	fsti	f2 r9 0
	fldi	f2 r0 1040
	fsti	f2 r9 1
	fldi	f2 r0 1041
	fsti	f2 r9 2
	addi	r11 r0 1905
	ldi	r9 r0 1072
	addi	r12 r9 -1
	bgt	r0 r12 L_else_18532
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r9 r11 0
	ldi	r15 r10 1
	bne	r15 r4 L_else_18546
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_rect_table_2134
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	add	r1 r13 r12
	sti	r9 r1 0
	jump	L_cont_18544
L_else_18546 : 
	addi	r14 r0 2
	bne	r15 r14 L_else_18562
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_surface_table_2137
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	add	r1 r13 r12
	sti	r9 r1 0
	jump	L_cont_18544
L_else_18562 : 
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_second_table_2140
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	add	r1 r13 r12
	sti	r9 r1 0
L_cont_18544 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_18548
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r9 r11 0
	ldi	r15 r10 1
	bne	r15 r4 L_else_18551
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_rect_table_2134
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	add	r1 r12 r13
	sti	r9 r1 0
	jump	L_cont_18549
L_else_18551 : 
	addi	r14 r0 2
	bne	r15 r14 L_else_18560
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_surface_table_2137
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	add	r1 r12 r13
	sti	r9 r1 0
	jump	L_cont_18549
L_else_18560 : 
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_second_table_2140
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	add	r1 r12 r13
	sti	r9 r1 0
L_cont_18549 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_18553
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r9 r11 0
	ldi	r15 r10 1
	bne	r15 r4 L_else_18556
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_rect_table_2134
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	add	r1 r13 r12
	sti	r9 r1 0
	jump	L_cont_18554
L_else_18556 : 
	addi	r14 r0 2
	bne	r15 r14 L_else_18558
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_surface_table_2137
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	add	r1 r13 r12
	sti	r9 r1 0
	jump	L_cont_18554
L_else_18558 : 
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_second_table_2140
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	add	r1 r13 r12
	sti	r9 r1 0
L_cont_18554 : 
	addi	r12 r12 -1
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2143
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	jump	L_cont_18530
L_else_18553 : 
	jump	L_cont_18530
L_else_18548 : 
	jump	L_cont_18530
L_else_18532 : 
L_cont_18530 : 
	ldi	r9 r0 1072
	addi	r12 r9 -1
	bgt	r0 r12 L_else_18535
	ldi	r11 r12 1970
	ldi	r9 r11 2
	addi	r10 r0 2
	bne	r9 r10 L_else_18537
	ldi	r9 r11 7
	fldi	f3 r9 0
	fldi	f2 r0 12
	fbgt	f2 f3 L_else_18539
	jump	L_cont_18533
L_else_18539 : 
	ldi	r10 r11 1
	bne	r10 r4 L_else_18541
	addi	r9 r0 4
	mul	r15 r12 r9
	ldi	r14 r0 1075
	fldi	f3 r0 12
	ldi	r9 r11 7
	fldi	f2 r9 0
	fsub	f9 f3 f2
	fldi	f2 r0 1039
	fsub	f10 f0 f2
	fldi	f2 r0 1040
	fsub	f11 f0 f2
	fldi	f2 r0 1041
	fsub	f12 f0 f2
	addi	r16 r15 1
	fldi	f3 r0 1039
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_create_dirvec_2354
	addi	r2 r2 -3
	add	r17 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r9 r17 0
	fsti	f3 r9 0
	fsti	f11 r9 1
	fsti	f12 r9 2
	ldi	r9 r0 1072
	addi	r12 r9 -1
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r11 r0 r17
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2143
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r10 r0 1185
	sti	r16 r3 0
	sti	r17 r3 1
	fsti	f9 r3 2
	add	r9 r0 r3
	addi	r3 r3 3
	add	r1 r10 r14
	sti	r9 r1 0
	addi	r17 r14 1
	addi	r16 r15 2
	fldi	f3 r0 1040
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_create_dirvec_2354
	addi	r2 r2 -3
	add	r18 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r9 r18 0
	fsti	f10 r9 0
	fsti	f3 r9 1
	fsti	f12 r9 2
	ldi	r9 r0 1072
	addi	r12 r9 -1
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r11 r0 r18
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2143
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r10 r0 1185
	sti	r16 r3 0
	sti	r18 r3 1
	fsti	f9 r3 2
	add	r9 r0 r3
	addi	r3 r3 3
	add	r1 r10 r17
	sti	r9 r1 0
	addi	r16 r14 2
	addi	r15 r15 3
	fldi	f3 r0 1041
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_create_dirvec_2354
	addi	r2 r2 -3
	add	r17 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r9 r17 0
	fsti	f10 r9 0
	fsti	f11 r9 1
	fsti	f3 r9 2
	ldi	r9 r0 1072
	addi	r12 r9 -1
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r11 r0 r17
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2143
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r10 r0 1185
	sti	r15 r3 0
	sti	r17 r3 1
	fsti	f9 r3 2
	add	r9 r0 r3
	addi	r3 r3 3
	add	r1 r10 r16
	sti	r9 r1 0
	addi	r9 r14 3
	sti	r9 r0 1075
	jump	L_cont_18533
L_else_18541 : 
	addi	r9 r0 2
	bne	r10 r9 L_else_18543
	addi	r9 r0 4
	mul	r9 r12 r9
	addi	r14 r9 1
	ldi	r15 r0 1075
	fldi	f3 r0 12
	ldi	r9 r11 7
	fldi	f2 r9 0
	fsub	f9 f3 f2
	ldi	r9 r11 4
	fldi	f3 r0 1039
	fldi	f2 r9 0
	fmul	f4 f3 f2
	fldi	f2 r0 1040
	fldi	f3 r9 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r0 1041
	fldi	f3 r9 2
	fmul	f2 f2 f3
	fadd	f6 f4 f2
	fldi	f3 r0 30
	ldi	r9 r11 4
	fldi	f2 r9 0
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	fldi	f3 r0 1039
	fsub	f5 f2 f3
	fldi	f3 r0 30
	ldi	r9 r11 4
	fldi	f2 r9 1
	fmul	f2 f3 f2
	fmul	f3 f2 f6
	fldi	f2 r0 1040
	fsub	f3 f3 f2
	fldi	f4 r0 30
	ldi	r9 r11 4
	fldi	f2 r9 2
	fmul	f2 f4 f2
	fmul	f2 f2 f6
	fldi	f4 r0 1041
	fsub	f4 f2 f4
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_create_dirvec_2354
	addi	r2 r2 -3
	add	r16 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r9 r16 0
	fsti	f5 r9 0
	fsti	f3 r9 1
	fsti	f4 r9 2
	ldi	r9 r0 1072
	addi	r12 r9 -1
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r11 r0 r16
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2143
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r10 r0 1185
	sti	r14 r3 0
	sti	r16 r3 1
	fsti	f9 r3 2
	add	r9 r0 r3
	addi	r3 r3 3
	add	r1 r10 r15
	sti	r9 r1 0
	addi	r9 r15 1
	sti	r9 r0 1075
	jump	L_cont_18533
L_else_18543 : 
	jump	L_cont_18533
L_else_18537 : 
	jump	L_cont_18533
L_else_18535 : 
L_cont_18533 : 
	addi	r11 r0 0
	addi	r10 r0 0
	fldi	f3 r0 1062
	ldi	r9 r0 1061
	sub	r9 r11 r9
	foi	f2 r9
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
	ldi	r9 r0 1058
	addi	r9 r9 -1
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	add	r6 r0 r7
	add	r8 r0 r10
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_pretrace_pixels_2300
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	addi	r9 r0 0
	addi	r10 r0 2
	add	r1 r0 r6
	add	r6 r0 r9
	add	r9 r0 r8
	add	r8 r0 r7
	add	r7 r0 r1
	call	L_scan_line_2317
	return
min_caml_end : 
	call	min_caml_start
