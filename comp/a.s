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
	jump	L_main_14835
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
	bne	r5 r0 L_else_14856
	return
L_else_14856 : 
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
	bne	r5 r0 L_else_14858
	return
L_else_14858 : 
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
L_psin_2488 : 
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 56
	fmul	f3 f9 f3
	fldi	f9 r0 55
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 54
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 53
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 52
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 51
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_pcos_2490 : 
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 50
	fmul	f7 f8 f7
	fldi	f8 r0 49
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 48
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 47
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 46
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 45
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 44
	fadd	f2 f2 f3
	return
L_sin_2492 : 
	fldi	f3 r0 43
	fldi	f4 r0 42
	fbgt	f2 f4 L_else_14860
	fldi	f5 r0 41
	fbgt	f5 f2 L_else_14861
	fldi	f3 r0 40
	fldi	f5 r0 39
	fldi	f6 r0 38
	fldi	f7 r0 37
	fbgt	f2 f7 L_else_14862
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_14863
	jump	L_psin_2488
L_else_14863 : 
	fldi	f3 r0 35
	fbgt	f3 f2 L_else_14864
	fadd	f2 f5 f2
	addi	r2 r2 1
	call	L_pcos_2490
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_14864 : 
	fadd	f2 f4 f2
	addi	r2 r2 1
	call	L_psin_2488
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_14862 : 
	fbgt	f2 f3 L_else_14865
	jump	L_psin_2488
L_else_14865 : 
	fbgt	f2 f6 L_else_14866
	fsub	f2 f2 f5
	jump	L_pcos_2490
L_else_14866 : 
	fsub	f2 f4 f2
	jump	L_psin_2488
L_else_14861 : 
	fadd	f2 f2 f3
	jump	L_sin_2492
L_else_14860 : 
	fsub	f2 f2 f3
	jump	L_sin_2492
L_cos_2494 : 
	fldi	f3 r0 43
	fldi	f4 r0 42
	fbgt	f2 f4 L_else_14867
	fldi	f5 r0 41
	fbgt	f5 f2 L_else_14868
	fldi	f3 r0 40
	fldi	f5 r0 39
	fldi	f6 r0 38
	fldi	f7 r0 37
	fbgt	f2 f7 L_else_14869
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_14870
	jump	L_pcos_2490
L_else_14870 : 
	fldi	f3 r0 35
	fbgt	f3 f2 L_else_14871
	fadd	f2 f2 f5
	jump	L_psin_2488
L_else_14871 : 
	fadd	f2 f4 f2
	addi	r2 r2 1
	call	L_pcos_2490
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_14869 : 
	fbgt	f2 f3 L_else_14872
	jump	L_pcos_2490
L_else_14872 : 
	fbgt	f2 f6 L_else_14873
	fsub	f2 f2 f5
	addi	r2 r2 1
	call	L_psin_2488
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_14873 : 
	fsub	f2 f4 f2
	addi	r2 r2 1
	call	L_pcos_2490
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_14868 : 
	fadd	f2 f2 f3
	jump	L_cos_2494
L_else_14867 : 
	fsub	f2 f2 f3
	jump	L_cos_2494
L_atan_2496 : 
	fmul	f3 f2 f2
	fldi	f4 r0 44
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
	fldi	f14 r0 34
	fmul	f3 f14 f3
	fdiv	f3 f3 f9
	fldi	f9 r0 33
	fmul	f9 f9 f13
	fdiv	f8 f9 f8
	fadd	f3 f3 f8
	fldi	f8 r0 32
	fmul	f8 f8 f12
	fdiv	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 31
	fmul	f7 f7 f11
	fdiv	f6 f7 f6
	fadd	f3 f3 f6
	fldi	f6 r0 30
	fmul	f6 f6 f10
	fdiv	f5 f6 f5
	fadd	f3 f3 f5
	fdiv	f2 f2 f4
	fadd	f2 f3 f2
	return
L_isqrt_2498 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_14874
	fadd	f2 f0 f3
	return
L_else_14874 : 
	fldi	f4 r0 29
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 28
	fdiv	f3 f3 f4
	addi	r5 r0 1
	sub	r4 r4 r5
	jump	L_isqrt_2498
L_sqrt_2502 : 
	fldi	f3 r0 44
	fbgt	f2 f3 L_else_14875
	fldi	f3 r0 44
	jump	L_cont_14876
L_else_14875 : 
	fldi	f3 r0 44
	fdiv	f3 f3 f2
L_cont_14876 : 
	addi	r4 r0 15
	fsti	f2 r2 0
	addi	r2 r2 3
	call	L_isqrt_2498
	subi	r2 r2 3
	fldi	f3 r2 0
	fmul	f2 f3 f2
	return
L_sdiv10_2504 : 
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_14877
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r5 r6
	jump	L_sdiv10_2504
L_else_14877 : 
	add	r4 r0 r5
	return
L_sgn_2511 : 
	fldi	f3 r0 37
	fbne	f2 f3 L_else_14878
	addi	r4 r0 1
	jump	L_cont_14879
L_else_14878 : 
	addi	r4 r0 0
L_cont_14879 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_14880
	fldi	f3 r0 37
	fbgt	f2 f3 L_else_14881
	addi	r4 r0 0
	jump	L_cont_14882
L_else_14881 : 
	addi	r4 r0 1
L_cont_14882 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_14883
	fldi	f2 r0 27
	return
L_else_14883 : 
	fldi	f2 r0 44
	return
L_else_14880 : 
	fldi	f2 r0 37
	return
L_add_mod5_2516 : 
	add	r4 r4 r5
	addi	r5 r0 5
	bgt	r5 r4 L_else_14884
	addi	r5 r0 5
	sub	r4 r4 r5
	return
L_else_14884 : 
	add	r4 r0 r4
	return
L_vecset_2519 : 
	addi	r5 r0 0
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	add	r5 r4 r5
	fsti	f3 r5 0
	addi	r5 r0 2
	add	r4 r4 r5
	fsti	f4 r4 0
	return
L_vecfill_2524 : 
	addi	r5 r0 0
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 2
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_veccpy_2529 : 
	addi	r6 r0 0
	addi	r7 r0 0
	add	r7 r5 r7
	fldi	f2 r7 0
	add	r6 r4 r6
	fsti	f2 r6 0
	addi	r6 r0 1
	addi	r7 r0 1
	add	r7 r5 r7
	fldi	f2 r7 0
	add	r6 r4 r6
	fsti	f2 r6 0
	addi	r6 r0 2
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f2 r5 0
	add	r4 r4 r6
	fsti	f2 r4 0
	return
L_vecunit_sgn_2537 : 
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f2 r6 0
	fmul	f2 f2 f2
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f3 r6 0
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	addi	r6 r0 2
	add	r6 r4 r6
	fldi	f3 r6 0
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	sti	r4 r2 0
	sti	r5 r2 1
	addi	r2 r2 3
	call	L_sqrt_2502
	subi	r2 r2 3
	fldi	f3 r0 37
	fbne	f2 f3 L_else_14888
	addi	r4 r0 1
	jump	L_cont_14889
L_else_14888 : 
	addi	r4 r0 0
L_cont_14889 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_14890
	addi	r4 r0 0
	ldi	r5 r2 1
	bne	r5 r4 L_else_14892
	fldi	f3 r0 44
	fdiv	f2 f3 f2
	jump	L_cont_14893
L_else_14892 : 
	fldi	f3 r0 27
	fdiv	f2 f3 f2
L_cont_14893 : 
	jump	L_cont_14891
L_else_14890 : 
	fldi	f2 r0 44
L_cont_14891 : 
	addi	r4 r0 0
	addi	r5 r0 0
	ldi	r6 r2 0
	add	r5 r6 r5
	fldi	f3 r5 0
	fmul	f3 f3 f2
	add	r4 r6 r4
	fsti	f3 r4 0
	addi	r4 r0 1
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f3 r5 0
	fmul	f3 f3 f2
	add	r4 r6 r4
	fsti	f3 r4 0
	addi	r4 r0 2
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f3 r5 0
	fmul	f2 f3 f2
	add	r4 r6 r4
	fsti	f2 r4 0
	return
L_veciprod_2540 : 
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f2 r6 0
	addi	r6 r0 0
	add	r6 r5 r6
	fldi	f3 r6 0
	fmul	f2 f2 f3
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f3 r6 0
	addi	r6 r0 1
	add	r6 r5 r6
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r6 r0 2
	add	r4 r4 r6
	fldi	f3 r4 0
	addi	r4 r0 2
	add	r4 r5 r4
	fldi	f4 r4 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	return
L_veciprod2_2543 : 
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f5 r5 0
	fmul	f2 f5 f2
	addi	r5 r0 1
	add	r5 r4 r5
	fldi	f5 r5 0
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f3 r4 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	return
L_vecaccum_2548 : 
	addi	r6 r0 0
	addi	r7 r0 0
	add	r7 r4 r7
	fldi	f3 r7 0
	addi	r7 r0 0
	add	r7 r5 r7
	fldi	f4 r7 0
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	add	r6 r4 r6
	fsti	f3 r6 0
	addi	r6 r0 1
	addi	r7 r0 1
	add	r7 r4 r7
	fldi	f3 r7 0
	addi	r7 r0 1
	add	r7 r5 r7
	fldi	f4 r7 0
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	add	r6 r4 r6
	fsti	f3 r6 0
	addi	r6 r0 2
	addi	r7 r0 2
	add	r7 r4 r7
	fldi	f3 r7 0
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f4 r5 0
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	add	r4 r4 r6
	fsti	f2 r4 0
	return
L_vecaccumv_2561 : 
	addi	r7 r0 0
	addi	r8 r0 0
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 0
	add	r8 r5 r8
	fldi	f3 r8 0
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f4 r8 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	add	r7 r4 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 1
	add	r8 r5 r8
	fldi	f3 r8 0
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f4 r8 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	add	r7 r4 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 2
	add	r5 r5 r8
	fldi	f3 r5 0
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f4 r5 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	add	r4 r4 r7
	fsti	f2 r4 0
	return
L_read_object_2647 : 
	addi	r5 r0 60
	bgt	r5 r4 L_else_14897
	return
L_else_14897 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_14899
	addi	r4 r0 0
	jump	L_cont_14900
L_else_14899 : 
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
	fldi	f2 r0 37
	sti	r4 r2 4
	add	r4 r0 r5
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	addi	r5 r0 0
	sti	r5 r2 5
	sti	r4 r2 6
	addi	r2 r2 8
	call	min_caml_read_float
	subi	r2 r2 8
	ldi	r4 r2 5
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 7
	addi	r2 r2 9
	call	min_caml_read_float
	subi	r2 r2 9
	ldi	r4 r2 7
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 8
	addi	r2 r2 10
	call	min_caml_read_float
	subi	r2 r2 10
	ldi	r4 r2 8
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 3
	fldi	f2 r0 37
	addi	r2 r2 10
	call	min_caml_create_float_array
	subi	r2 r2 10
	addi	r5 r0 0
	sti	r5 r2 9
	sti	r4 r2 10
	addi	r2 r2 12
	call	min_caml_read_float
	subi	r2 r2 12
	ldi	r4 r2 9
	ldi	r5 r2 10
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 11
	addi	r2 r2 13
	call	min_caml_read_float
	subi	r2 r2 13
	ldi	r4 r2 11
	ldi	r5 r2 10
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 12
	addi	r2 r2 14
	call	min_caml_read_float
	subi	r2 r2 14
	ldi	r4 r2 12
	ldi	r5 r2 10
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r2 r2 14
	call	min_caml_read_float
	subi	r2 r2 14
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_14901
	addi	r4 r0 0
	jump	L_cont_14902
L_else_14901 : 
	addi	r4 r0 1
L_cont_14902 : 
	addi	r5 r0 2
	fldi	f2 r0 37
	sti	r4 r2 13
	add	r4 r0 r5
	addi	r2 r2 15
	call	min_caml_create_float_array
	subi	r2 r2 15
	addi	r5 r0 0
	sti	r5 r2 14
	sti	r4 r2 15
	addi	r2 r2 17
	call	min_caml_read_float
	subi	r2 r2 17
	ldi	r4 r2 14
	ldi	r5 r2 15
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 16
	addi	r2 r2 18
	call	min_caml_read_float
	subi	r2 r2 18
	ldi	r4 r2 16
	ldi	r5 r2 15
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 3
	fldi	f2 r0 37
	addi	r2 r2 18
	call	min_caml_create_float_array
	subi	r2 r2 18
	addi	r5 r0 0
	sti	r5 r2 17
	sti	r4 r2 18
	addi	r2 r2 20
	call	min_caml_read_float
	subi	r2 r2 20
	ldi	r4 r2 17
	ldi	r5 r2 18
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 19
	addi	r2 r2 21
	call	min_caml_read_float
	subi	r2 r2 21
	ldi	r4 r2 19
	ldi	r5 r2 18
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 20
	addi	r2 r2 22
	call	min_caml_read_float
	subi	r2 r2 22
	ldi	r4 r2 20
	ldi	r5 r2 18
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 3
	fldi	f2 r0 37
	addi	r2 r2 22
	call	min_caml_create_float_array
	subi	r2 r2 22
	addi	r5 r0 0
	ldi	r6 r2 4
	sti	r4 r2 21
	bne	r6 r5 L_else_14903
	jump	L_cont_14904
L_else_14903 : 
	addi	r5 r0 0
	sti	r5 r2 22
	addi	r2 r2 24
	call	min_caml_read_float
	subi	r2 r2 24
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 22
	ldi	r5 r2 21
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 23
	addi	r2 r2 25
	call	min_caml_read_float
	subi	r2 r2 25
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 23
	ldi	r5 r2 21
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 24
	addi	r2 r2 26
	call	min_caml_read_float
	subi	r2 r2 26
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 24
	ldi	r5 r2 21
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_14904 : 
	addi	r4 r0 2
	ldi	r5 r2 2
	bne	r5 r4 L_else_14905
	addi	r4 r0 1
	jump	L_cont_14906
L_else_14905 : 
	ldi	r4 r2 13
	add	r4 r0 r4
L_cont_14906 : 
	addi	r6 r0 4
	fldi	f2 r0 37
	sti	r4 r2 25
	add	r4 r0 r6
	addi	r2 r2 27
	call	min_caml_create_float_array
	subi	r2 r2 27
	add	r5 r0 r3
	addi	r3 r3 11
	sti	r4 r5 10
	ldi	r4 r2 21
	sti	r4 r5 9
	ldi	r6 r2 18
	sti	r6 r5 8
	ldi	r6 r2 15
	sti	r6 r5 7
	ldi	r6 r2 25
	sti	r6 r5 6
	ldi	r6 r2 10
	sti	r6 r5 5
	ldi	r6 r2 6
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
	bne	r8 r5 L_else_14907
	addi	r5 r0 0
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 0
	fldi	f3 r0 37
	fbne	f2 f3 L_else_14909
	addi	r8 r0 1
	jump	L_cont_14910
L_else_14909 : 
	addi	r8 r0 0
L_cont_14910 : 
	addi	r9 r0 0
	sti	r5 r2 26
	bne	r8 r9 L_else_14911
	fsti	f2 r2 28
	addi	r2 r2 31
	call	L_sgn_2511
	subi	r2 r2 31
	fldi	f3 r2 28
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_14912
L_else_14911 : 
	fldi	f2 r0 37
L_cont_14912 : 
	ldi	r4 r2 26
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r4 r0 1
	fldi	f3 r0 37
	fbne	f2 f3 L_else_14914
	addi	r6 r0 1
	jump	L_cont_14915
L_else_14914 : 
	addi	r6 r0 0
L_cont_14915 : 
	addi	r7 r0 0
	sti	r4 r2 30
	bne	r6 r7 L_else_14916
	fsti	f2 r2 32
	addi	r2 r2 35
	call	L_sgn_2511
	subi	r2 r2 35
	fldi	f3 r2 32
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_14917
L_else_14916 : 
	fldi	f2 r0 37
L_cont_14917 : 
	ldi	r4 r2 30
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r4 r0 2
	fldi	f3 r0 37
	fbne	f2 f3 L_else_14919
	addi	r6 r0 1
	jump	L_cont_14920
L_else_14919 : 
	addi	r6 r0 0
L_cont_14920 : 
	addi	r7 r0 0
	sti	r4 r2 34
	bne	r6 r7 L_else_14921
	fsti	f2 r2 36
	addi	r2 r2 39
	call	L_sgn_2511
	subi	r2 r2 39
	fldi	f3 r2 36
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_14922
L_else_14921 : 
	fldi	f2 r0 37
L_cont_14922 : 
	ldi	r4 r2 34
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	jump	L_cont_14908
L_else_14907 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_14924
	addi	r5 r0 1
	ldi	r8 r2 13
	sub	r5 r5 r8
	add	r4 r0 r6
	addi	r2 r2 39
	call	L_vecunit_sgn_2537
	subi	r2 r2 39
	jump	L_cont_14925
L_else_14924 : 
L_cont_14925 : 
L_cont_14908 : 
	addi	r4 r0 0
	ldi	r5 r2 4
	bne	r5 r4 L_else_14926
	jump	L_cont_14927
L_else_14926 : 
	addi	r4 r0 0
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r2 r2 39
	call	L_cos_2494
	subi	r2 r2 39
	addi	r4 r0 0
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 38
	fadd	f2 f0 f3
	addi	r2 r2 41
	call	L_sin_2492
	subi	r2 r2 41
	addi	r4 r0 1
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 40
	fadd	f2 f0 f3
	addi	r2 r2 43
	call	L_cos_2494
	subi	r2 r2 43
	addi	r4 r0 1
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 42
	fadd	f2 f0 f3
	addi	r2 r2 45
	call	L_sin_2492
	subi	r2 r2 45
	addi	r4 r0 2
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 44
	fadd	f2 f0 f3
	addi	r2 r2 47
	call	L_cos_2494
	subi	r2 r2 47
	addi	r4 r0 2
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 46
	fadd	f2 f0 f3
	addi	r2 r2 49
	call	L_sin_2492
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
	addi	r4 r0 0
	ldi	r5 r2 6
	add	r4 r5 r4
	fldi	f7 r4 0
	addi	r4 r0 1
	add	r4 r5 r4
	fldi	f9 r4 0
	addi	r4 r0 2
	add	r4 r5 r4
	fldi	f13 r4 0
	addi	r4 r0 0
	fmul	f14 f5 f5
	fmul	f14 f7 f14
	fmul	f15 f11 f11
	fmul	f15 f9 f15
	fadd	f14 f14 f15
	fmul	f15 f3 f3
	fmul	f15 f13 f15
	fadd	f14 f14 f15
	add	r4 r5 r4
	fsti	f14 r4 0
	addi	r4 r0 1
	fmul	f14 f8 f8
	fmul	f14 f7 f14
	fmul	f15 f12 f12
	fmul	f15 f9 f15
	fadd	f14 f14 f15
	fmul	f15 f6 f6
	fmul	f15 f13 f15
	fadd	f14 f14 f15
	add	r4 r5 r4
	fsti	f14 r4 0
	addi	r4 r0 2
	fmul	f14 f10 f10
	fmul	f14 f7 f14
	fmul	f15 f2 f2
	fmul	f15 f9 f15
	fadd	f14 f14 f15
	fmul	f15 f4 f4
	fmul	f15 f13 f15
	fadd	f14 f14 f15
	add	r4 r5 r4
	fsti	f14 r4 0
	addi	r4 r0 0
	fldi	f14 r0 28
	fmul	f15 f7 f8
	fmul	f15 f15 f10
	fmul	f16 f9 f12
	fmul	f16 f16 f2
	fadd	f15 f15 f16
	fmul	f16 f13 f6
	fmul	f16 f16 f4
	fadd	f15 f15 f16
	fmul	f14 f14 f15
	ldi	r5 r2 21
	add	r4 r5 r4
	fsti	f14 r4 0
	addi	r4 r0 1
	fldi	f14 r0 28
	fmul	f15 f7 f5
	fmul	f10 f15 f10
	fmul	f15 f9 f11
	fmul	f2 f15 f2
	fadd	f2 f10 f2
	fmul	f10 f13 f3
	fmul	f4 f10 f4
	fadd	f2 f2 f4
	fmul	f2 f14 f2
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	fldi	f2 r0 28
	fmul	f4 f7 f5
	fmul	f4 f4 f8
	fmul	f5 f9 f11
	fmul	f5 f5 f12
	fadd	f4 f4 f5
	fmul	f3 f13 f3
	fmul	f3 f3 f6
	fadd	f3 f4 f3
	fmul	f2 f2 f3
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_14927 : 
	addi	r4 r0 1
L_cont_14900 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_14928
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 0
	sti	r5 r4 0
	return
L_else_14928 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	jump	L_read_object_2647
L_read_net_item_2651 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_14930
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_14930 : 
	addi	r5 r0 1
	ldi	r6 r2 0
	add	r5 r6 r5
	sti	r4 r2 1
	add	r4 r0 r5
	addi	r2 r2 3
	call	L_read_net_item_2651
	subi	r2 r2 3
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 1
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_or_network_2653 : 
	addi	r5 r0 0
	sti	r4 r2 0
	add	r4 r0 r5
	addi	r2 r2 2
	call	L_read_net_item_2651
	subi	r2 r2 2
	add	r5 r0 r4
	addi	r4 r0 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_14931
	addi	r4 r0 1
	ldi	r6 r2 0
	add	r4 r6 r4
	jump	min_caml_create_array
L_else_14931 : 
	addi	r4 r0 1
	ldi	r6 r2 0
	add	r4 r6 r4
	sti	r5 r2 1
	addi	r2 r2 3
	call	L_read_or_network_2653
	subi	r2 r2 3
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 1
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_and_network_2655 : 
	addi	r5 r0 0
	sti	r4 r2 0
	add	r4 r0 r5
	addi	r2 r2 2
	call	L_read_net_item_2651
	subi	r2 r2 2
	addi	r5 r0 0
	add	r5 r4 r5
	ldi	r5 r5 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_14932
	return
L_else_14932 : 
	addi	r5 r0 4155
	ldi	r6 r2 0
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r0 1
	add	r4 r6 r4
	jump	L_read_and_network_2655
L_quadratic_2680 : 
	fmul	f5 f2 f2
	ldi	r5 r4 4
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f6 r5 0
	fmul	f5 f5 f6
	fmul	f6 f3 f3
	ldi	r5 r4 4
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f7 r5 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fmul	f6 f4 f4
	ldi	r5 r4 4
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f7 r5 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	ldi	r5 r4 3
	addi	r6 r0 0
	bne	r5 r6 L_else_14934
	fadd	f2 f0 f5
	return
L_else_14934 : 
	fmul	f6 f3 f4
	ldi	r5 r4 9
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f7 r5 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fmul	f4 f4 f2
	ldi	r5 r4 9
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f6 r5 0
	fmul	f4 f4 f6
	fadd	f4 f5 f4
	fmul	f2 f2 f3
	ldi	r4 r4 9
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f3 r4 0
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	return
L_solver_2699 : 
	addi	r7 r0 5042
	add	r4 r7 r4
	ldi	r4 r4 0
	addi	r7 r0 0
	add	r7 r6 r7
	fldi	f2 r7 0
	ldi	r7 r4 5
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f3 r7 0
	fsub	f2 f2 f3
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f3 r7 0
	ldi	r7 r4 5
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f4 r7 0
	fsub	f3 f3 f4
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f4 r6 0
	ldi	r6 r4 5
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f5 r6 0
	fsub	f4 f4 f5
	ldi	r6 r4 1
	addi	r7 r0 1
	bne	r6 r7 L_else_14935
	addi	r6 r0 0
	addi	r7 r0 1
	addi	r8 r0 2
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 37
	fbne	f5 f6 L_else_14936
	addi	r9 r0 1
	jump	L_cont_14937
L_else_14936 : 
	addi	r9 r0 0
L_cont_14937 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_14938
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fldi	f6 r0 37
	fbgt	f6 f5 L_else_14940
	addi	r11 r0 0
	jump	L_cont_14941
L_else_14940 : 
	addi	r11 r0 1
L_cont_14941 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	addi	r11 r0 0
	bne	r10 r11 L_else_14942
	fsub	f5 f0 f5
	jump	L_cont_14943
L_else_14942 : 
	fadd	f5 f0 f5
L_cont_14943 : 
	fsub	f5 f5 f2
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fldi	f7 r0 37
	fbgt	f7 f6 L_else_14944
	fadd	f6 f0 f6
	jump	L_cont_14945
L_else_14944 : 
	fsub	f6 f0 f6
L_cont_14945 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_14946
	addi	r6 r0 0
	jump	L_cont_14947
L_else_14946 : 
	addi	r6 r0 1
L_cont_14947 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_14948
	addi	r6 r0 0
	jump	L_cont_14949
L_else_14948 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 37
	fbgt	f7 f6 L_else_14950
	fadd	f6 f0 f6
	jump	L_cont_14951
L_else_14950 : 
	fsub	f6 f0 f6
L_cont_14951 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_14952
	addi	r6 r0 0
	jump	L_cont_14953
L_else_14952 : 
	addi	r6 r0 1
L_cont_14953 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_14954
	addi	r6 r0 0
	jump	L_cont_14955
L_else_14954 : 
	addi	r6 r0 4145
	addi	r7 r0 0
	add	r6 r6 r7
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_14955 : 
L_cont_14949 : 
	jump	L_cont_14939
L_else_14938 : 
	addi	r6 r0 0
L_cont_14939 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_14956
	addi	r6 r0 1
	addi	r7 r0 2
	addi	r8 r0 0
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 37
	fbne	f5 f6 L_else_14957
	addi	r9 r0 1
	jump	L_cont_14958
L_else_14957 : 
	addi	r9 r0 0
L_cont_14958 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_14959
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fldi	f6 r0 37
	fbgt	f6 f5 L_else_14961
	addi	r11 r0 0
	jump	L_cont_14962
L_else_14961 : 
	addi	r11 r0 1
L_cont_14962 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	addi	r11 r0 0
	bne	r10 r11 L_else_14963
	fsub	f5 f0 f5
	jump	L_cont_14964
L_else_14963 : 
	fadd	f5 f0 f5
L_cont_14964 : 
	fsub	f5 f5 f3
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 37
	fbgt	f7 f6 L_else_14965
	fadd	f6 f0 f6
	jump	L_cont_14966
L_else_14965 : 
	fsub	f6 f0 f6
L_cont_14966 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_14967
	addi	r6 r0 0
	jump	L_cont_14968
L_else_14967 : 
	addi	r6 r0 1
L_cont_14968 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_14969
	addi	r6 r0 0
	jump	L_cont_14970
L_else_14969 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fldi	f7 r0 37
	fbgt	f7 f6 L_else_14971
	fadd	f6 f0 f6
	jump	L_cont_14972
L_else_14971 : 
	fsub	f6 f0 f6
L_cont_14972 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_14973
	addi	r6 r0 0
	jump	L_cont_14974
L_else_14973 : 
	addi	r6 r0 1
L_cont_14974 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_14975
	addi	r6 r0 0
	jump	L_cont_14976
L_else_14975 : 
	addi	r6 r0 4145
	addi	r7 r0 0
	add	r6 r6 r7
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_14976 : 
L_cont_14970 : 
	jump	L_cont_14960
L_else_14959 : 
	addi	r6 r0 0
L_cont_14960 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_14977
	addi	r6 r0 2
	addi	r7 r0 0
	addi	r8 r0 1
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 37
	fbne	f5 f6 L_else_14978
	addi	r9 r0 1
	jump	L_cont_14979
L_else_14978 : 
	addi	r9 r0 0
L_cont_14979 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_14980
	ldi	r9 r4 4
	ldi	r4 r4 6
	add	r10 r5 r6
	fldi	f5 r10 0
	fldi	f6 r0 37
	fbgt	f6 f5 L_else_14982
	addi	r10 r0 0
	jump	L_cont_14983
L_else_14982 : 
	addi	r10 r0 1
L_cont_14983 : 
	xor	r4 r4 r10
	add	r10 r9 r6
	fldi	f5 r10 0
	addi	r10 r0 0
	bne	r4 r10 L_else_14984
	fsub	f5 f0 f5
	jump	L_cont_14985
L_else_14984 : 
	fadd	f5 f0 f5
L_cont_14985 : 
	fsub	f4 f5 f4
	add	r4 r5 r6
	fldi	f5 r4 0
	fdiv	f4 f4 f5
	add	r4 r5 r7
	fldi	f5 r4 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fldi	f5 r0 37
	fbgt	f5 f2 L_else_14986
	fadd	f2 f0 f2
	jump	L_cont_14987
L_else_14986 : 
	fsub	f2 f0 f2
L_cont_14987 : 
	add	r4 r9 r7
	fldi	f5 r4 0
	fbgt	f5 f2 L_else_14988
	addi	r4 r0 0
	jump	L_cont_14989
L_else_14988 : 
	addi	r4 r0 1
L_cont_14989 : 
	addi	r6 r0 0
	bne	r4 r6 L_else_14990
	addi	r4 r0 0
	jump	L_cont_14991
L_else_14990 : 
	add	r4 r5 r8
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_14992
	fadd	f2 f0 f2
	jump	L_cont_14993
L_else_14992 : 
	fsub	f2 f0 f2
L_cont_14993 : 
	add	r4 r9 r8
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_14994
	addi	r4 r0 0
	jump	L_cont_14995
L_else_14994 : 
	addi	r4 r0 1
L_cont_14995 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_14996
	addi	r4 r0 0
	jump	L_cont_14997
L_else_14996 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 1
L_cont_14997 : 
L_cont_14991 : 
	jump	L_cont_14981
L_else_14980 : 
	addi	r4 r0 0
L_cont_14981 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_14998
	addi	r4 r0 0
	return
L_else_14998 : 
	addi	r4 r0 3
	return
L_else_14977 : 
	addi	r4 r0 2
	return
L_else_14956 : 
	addi	r4 r0 1
	return
L_else_14935 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_14999
	ldi	r4 r4 4
	fsti	f4 r2 0
	fsti	f3 r2 2
	fsti	f2 r2 4
	sti	r4 r2 6
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 8
	call	L_veciprod_2540
	subi	r2 r2 8
	fldi	f3 r0 37
	fbgt	f2 f3 L_else_15000
	addi	r4 r0 0
	jump	L_cont_15001
L_else_15000 : 
	addi	r4 r0 1
L_cont_15001 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15002
	addi	r4 r0 0
	return
L_else_15002 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	fldi	f3 r2 4
	fldi	f4 r2 2
	fldi	f5 r2 0
	ldi	r6 r2 6
	sti	r5 r2 7
	sti	r4 r2 8
	fsti	f2 r2 10
	add	r4 r0 r6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 13
	call	L_veciprod2_2543
	subi	r2 r2 13
	fsub	f2 f0 f2
	fldi	f3 r2 10
	fdiv	f2 f2 f3
	ldi	r4 r2 7
	ldi	r5 r2 8
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_14999 : 
	addi	r6 r0 0
	add	r6 r5 r6
	fldi	f5 r6 0
	addi	r6 r0 1
	add	r6 r5 r6
	fldi	f6 r6 0
	addi	r6 r0 2
	add	r6 r5 r6
	fldi	f7 r6 0
	fsti	f4 r2 0
	fsti	f3 r2 2
	sti	r4 r2 12
	fsti	f2 r2 4
	sti	r5 r2 13
	fadd	f4 f0 f7
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 15
	call	L_quadratic_2680
	subi	r2 r2 15
	fldi	f3 r0 37
	fbne	f2 f3 L_else_15004
	addi	r4 r0 1
	jump	L_cont_15005
L_else_15004 : 
	addi	r4 r0 0
L_cont_15005 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15006
	addi	r4 r0 0
	ldi	r5 r2 13
	add	r4 r5 r4
	fldi	f3 r4 0
	addi	r4 r0 1
	add	r4 r5 r4
	fldi	f4 r4 0
	addi	r4 r0 2
	add	r4 r5 r4
	fldi	f5 r4 0
	fldi	f6 r2 4
	fmul	f7 f3 f6
	ldi	r4 r2 12
	ldi	r5 r4 4
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f8 r5 0
	fmul	f7 f7 f8
	fldi	f8 r2 2
	fmul	f9 f4 f8
	ldi	r5 r4 4
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f10 r5 0
	fmul	f9 f9 f10
	fadd	f7 f7 f9
	fldi	f9 r2 0
	fmul	f10 f5 f9
	ldi	r5 r4 4
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f11 r5 0
	fmul	f10 f10 f11
	fadd	f7 f7 f10
	ldi	r5 r4 3
	addi	r6 r0 0
	bne	r5 r6 L_else_15007
	fadd	f3 f0 f7
	jump	L_cont_15008
L_else_15007 : 
	fmul	f10 f5 f8
	fmul	f11 f4 f9
	fadd	f10 f10 f11
	ldi	r5 r4 9
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f11 r5 0
	fmul	f10 f10 f11
	fmul	f11 f3 f9
	fmul	f5 f5 f6
	fadd	f5 f11 f5
	ldi	r5 r4 9
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f11 r5 0
	fmul	f5 f5 f11
	fadd	f5 f10 f5
	fmul	f3 f3 f8
	fmul	f4 f4 f6
	fadd	f3 f3 f4
	ldi	r5 r4 9
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f4 r5 0
	fmul	f3 f3 f4
	fadd	f3 f5 f3
	fldi	f4 r0 28
	fdiv	f3 f3 f4
	fadd	f3 f7 f3
L_cont_15008 : 
	fsti	f2 r2 14
	fsti	f3 r2 16
	fadd	f4 f0 f9
	fadd	f3 f0 f8
	fadd	f2 f0 f6
	addi	r2 r2 19
	call	L_quadratic_2680
	subi	r2 r2 19
	ldi	r4 r2 12
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_15009
	fldi	f3 r0 44
	fsub	f2 f2 f3
	jump	L_cont_15010
L_else_15009 : 
	fadd	f2 f0 f2
L_cont_15010 : 
	fldi	f3 r2 16
	fmul	f4 f3 f3
	fldi	f5 r2 14
	fmul	f2 f5 f2
	fsub	f2 f4 f2
	fldi	f4 r0 37
	fbgt	f2 f4 L_else_15011
	addi	r5 r0 0
	jump	L_cont_15012
L_else_15011 : 
	addi	r5 r0 1
L_cont_15012 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_15013
	addi	r4 r0 0
	return
L_else_15013 : 
	addi	r2 r2 19
	call	L_sqrt_2502
	subi	r2 r2 19
	ldi	r4 r2 12
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_15014
	fsub	f2 f0 f2
	jump	L_cont_15015
L_else_15014 : 
	fadd	f2 f0 f2
L_cont_15015 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	fldi	f3 r2 16
	fsub	f2 f2 f3
	fldi	f3 r2 14
	fdiv	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_15006 : 
	addi	r4 r0 0
	return
L_solver_rect_fast_2703 : 
	addi	r7 r0 0
	add	r7 r6 r7
	fldi	f5 r7 0
	fsub	f5 f5 f2
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f6 r7 0
	fmul	f5 f5 f6
	addi	r7 r0 1
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fldi	f7 r0 37
	fbgt	f7 f6 L_else_15016
	fadd	f6 f0 f6
	jump	L_cont_15017
L_else_15016 : 
	fsub	f6 f0 f6
L_cont_15017 : 
	ldi	r7 r4 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_15018
	addi	r7 r0 0
	jump	L_cont_15019
L_else_15018 : 
	addi	r7 r0 1
L_cont_15019 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15020
	addi	r7 r0 0
	jump	L_cont_15021
L_else_15020 : 
	addi	r7 r0 2
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 37
	fbgt	f7 f6 L_else_15022
	fadd	f6 f0 f6
	jump	L_cont_15023
L_else_15022 : 
	fsub	f6 f0 f6
L_cont_15023 : 
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_15024
	addi	r7 r0 0
	jump	L_cont_15025
L_else_15024 : 
	addi	r7 r0 1
L_cont_15025 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15026
	addi	r7 r0 0
	jump	L_cont_15027
L_else_15026 : 
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f6 r8 0
	fldi	f7 r0 37
	fbne	f6 f7 L_else_15028
	addi	r8 r0 1
	jump	L_cont_15029
L_else_15028 : 
	addi	r8 r0 0
L_cont_15029 : 
	sub	r7 r7 r8
L_cont_15027 : 
L_cont_15021 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15030
	addi	r7 r0 2
	add	r7 r6 r7
	fldi	f5 r7 0
	fsub	f5 f5 f3
	addi	r7 r0 3
	add	r7 r6 r7
	fldi	f6 r7 0
	fmul	f5 f5 f6
	addi	r7 r0 0
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fldi	f7 r0 37
	fbgt	f7 f6 L_else_15031
	fadd	f6 f0 f6
	jump	L_cont_15032
L_else_15031 : 
	fsub	f6 f0 f6
L_cont_15032 : 
	ldi	r7 r4 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_15033
	addi	r7 r0 0
	jump	L_cont_15034
L_else_15033 : 
	addi	r7 r0 1
L_cont_15034 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15035
	addi	r7 r0 0
	jump	L_cont_15036
L_else_15035 : 
	addi	r7 r0 2
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 37
	fbgt	f7 f6 L_else_15037
	fadd	f6 f0 f6
	jump	L_cont_15038
L_else_15037 : 
	fsub	f6 f0 f6
L_cont_15038 : 
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_15039
	addi	r7 r0 0
	jump	L_cont_15040
L_else_15039 : 
	addi	r7 r0 1
L_cont_15040 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15041
	addi	r7 r0 0
	jump	L_cont_15042
L_else_15041 : 
	addi	r7 r0 1
	addi	r8 r0 3
	add	r8 r6 r8
	fldi	f6 r8 0
	fldi	f7 r0 37
	fbne	f6 f7 L_else_15043
	addi	r8 r0 1
	jump	L_cont_15044
L_else_15043 : 
	addi	r8 r0 0
L_cont_15044 : 
	sub	r7 r7 r8
L_cont_15042 : 
L_cont_15036 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15045
	addi	r7 r0 4
	add	r7 r6 r7
	fldi	f5 r7 0
	fsub	f4 f5 f4
	addi	r7 r0 5
	add	r7 r6 r7
	fldi	f5 r7 0
	fmul	f4 f4 f5
	addi	r7 r0 0
	add	r7 r5 r7
	fldi	f5 r7 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fldi	f5 r0 37
	fbgt	f5 f2 L_else_15046
	fadd	f2 f0 f2
	jump	L_cont_15047
L_else_15046 : 
	fsub	f2 f0 f2
L_cont_15047 : 
	ldi	r7 r4 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_15048
	addi	r7 r0 0
	jump	L_cont_15049
L_else_15048 : 
	addi	r7 r0 1
L_cont_15049 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15050
	addi	r4 r0 0
	jump	L_cont_15051
L_else_15050 : 
	addi	r7 r0 1
	add	r5 r5 r7
	fldi	f2 r5 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15052
	fadd	f2 f0 f2
	jump	L_cont_15053
L_else_15052 : 
	fsub	f2 f0 f2
L_cont_15053 : 
	ldi	r4 r4 4
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_15054
	addi	r4 r0 0
	jump	L_cont_15055
L_else_15054 : 
	addi	r4 r0 1
L_cont_15055 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15056
	addi	r4 r0 0
	jump	L_cont_15057
L_else_15056 : 
	addi	r4 r0 1
	addi	r5 r0 5
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 37
	fbne	f2 f3 L_else_15058
	addi	r5 r0 1
	jump	L_cont_15059
L_else_15058 : 
	addi	r5 r0 0
L_cont_15059 : 
	sub	r4 r4 r5
L_cont_15057 : 
L_cont_15051 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15060
	addi	r4 r0 0
	return
L_else_15060 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 3
	return
L_else_15045 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f5 r4 0
	addi	r4 r0 2
	return
L_else_15030 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f5 r4 0
	addi	r4 r0 1
	return
L_solver_fast_2722 : 
	addi	r7 r0 5042
	add	r7 r7 r4
	ldi	r7 r7 0
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f2 r8 0
	ldi	r8 r7 5
	addi	r9 r0 0
	add	r8 r8 r9
	fldi	f3 r8 0
	fsub	f2 f2 f3
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f3 r8 0
	ldi	r8 r7 5
	addi	r9 r0 1
	add	r8 r8 r9
	fldi	f4 r8 0
	fsub	f3 f3 f4
	addi	r8 r0 2
	add	r6 r6 r8
	fldi	f4 r6 0
	ldi	r6 r7 5
	addi	r8 r0 2
	add	r6 r6 r8
	fldi	f5 r6 0
	fsub	f4 f4 f5
	ldi	r6 r5 1
	add	r4 r6 r4
	ldi	r6 r4 0
	ldi	r4 r7 1
	addi	r8 r0 1
	bne	r4 r8 L_else_15061
	ldi	r5 r5 0
	add	r4 r0 r7
	jump	L_solver_rect_fast_2703
L_else_15061 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_15062
	addi	r4 r0 0
	add	r4 r6 r4
	fldi	f5 r4 0
	fldi	f6 r0 37
	fbgt	f6 f5 L_else_15063
	addi	r4 r0 0
	jump	L_cont_15064
L_else_15063 : 
	addi	r4 r0 1
L_cont_15064 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15065
	addi	r4 r0 0
	return
L_else_15065 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f5 r7 0
	fmul	f2 f5 f2
	addi	r7 r0 2
	add	r7 r6 r7
	fldi	f5 r7 0
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	addi	r7 r0 3
	add	r6 r6 r7
	fldi	f3 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_15062 : 
	addi	r4 r0 0
	add	r4 r6 r4
	fldi	f5 r4 0
	fldi	f6 r0 37
	fbne	f5 f6 L_else_15066
	addi	r4 r0 1
	jump	L_cont_15067
L_else_15066 : 
	addi	r4 r0 0
L_cont_15067 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15068
	addi	r4 r0 1
	add	r4 r6 r4
	fldi	f6 r4 0
	fmul	f6 f6 f2
	addi	r4 r0 2
	add	r4 r6 r4
	fldi	f7 r4 0
	fmul	f7 f7 f3
	fadd	f6 f6 f7
	addi	r4 r0 3
	add	r4 r6 r4
	fldi	f7 r4 0
	fmul	f7 f7 f4
	fadd	f6 f6 f7
	sti	r6 r2 0
	fsti	f5 r2 2
	fsti	f6 r2 4
	sti	r7 r2 6
	add	r4 r0 r7
	addi	r2 r2 8
	call	L_quadratic_2680
	subi	r2 r2 8
	ldi	r4 r2 6
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_15070
	fldi	f3 r0 44
	fsub	f2 f2 f3
	jump	L_cont_15071
L_else_15070 : 
	fadd	f2 f0 f2
L_cont_15071 : 
	fldi	f3 r2 4
	fmul	f4 f3 f3
	fldi	f5 r2 2
	fmul	f2 f5 f2
	fsub	f2 f4 f2
	fldi	f4 r0 37
	fbgt	f2 f4 L_else_15072
	addi	r5 r0 0
	jump	L_cont_15073
L_else_15072 : 
	addi	r5 r0 1
L_cont_15073 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_15074
	addi	r4 r0 0
	return
L_else_15074 : 
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_15075
	addi	r4 r0 4145
	addi	r5 r0 0
	sti	r5 r2 7
	sti	r4 r2 8
	addi	r2 r2 10
	call	L_sqrt_2502
	subi	r2 r2 10
	fldi	f3 r2 4
	fsub	f2 f3 f2
	addi	r4 r0 4
	ldi	r5 r2 0
	add	r4 r5 r4
	fldi	f3 r4 0
	fmul	f2 f2 f3
	ldi	r4 r2 7
	ldi	r5 r2 8
	add	r4 r5 r4
	fsti	f2 r4 0
	jump	L_cont_15076
L_else_15075 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	sti	r5 r2 9
	sti	r4 r2 10
	addi	r2 r2 12
	call	L_sqrt_2502
	subi	r2 r2 12
	fldi	f3 r2 4
	fadd	f2 f3 f2
	addi	r4 r0 4
	ldi	r5 r2 0
	add	r4 r5 r4
	fldi	f3 r4 0
	fmul	f2 f2 f3
	ldi	r4 r2 9
	ldi	r5 r2 10
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_15076 : 
	addi	r4 r0 1
	return
L_else_15068 : 
	addi	r4 r0 0
	return
L_solver_fast2_2740 : 
	addi	r6 r0 5042
	add	r6 r6 r4
	ldi	r6 r6 0
	ldi	r7 r6 10
	addi	r8 r0 0
	add	r8 r7 r8
	fldi	f2 r8 0
	addi	r8 r0 1
	add	r8 r7 r8
	fldi	f3 r8 0
	addi	r8 r0 2
	add	r8 r7 r8
	fldi	f4 r8 0
	ldi	r8 r5 1
	add	r4 r8 r4
	ldi	r4 r4 0
	ldi	r8 r6 1
	addi	r9 r0 1
	bne	r8 r9 L_else_15077
	ldi	r5 r5 0
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r1
	jump	L_solver_rect_fast_2703
L_else_15077 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_15078
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f2 r5 0
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15079
	addi	r5 r0 0
	jump	L_cont_15080
L_else_15079 : 
	addi	r5 r0 1
L_cont_15080 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_15081
	addi	r4 r0 0
	return
L_else_15081 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	addi	r8 r0 0
	add	r4 r4 r8
	fldi	f2 r4 0
	addi	r4 r0 3
	add	r4 r7 r4
	fldi	f3 r4 0
	fmul	f2 f2 f3
	add	r4 r5 r6
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_15078 : 
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f5 r5 0
	fldi	f6 r0 37
	fbne	f5 f6 L_else_15082
	addi	r5 r0 1
	jump	L_cont_15083
L_else_15082 : 
	addi	r5 r0 0
L_cont_15083 : 
	addi	r8 r0 0
	bne	r5 r8 L_else_15084
	addi	r5 r0 1
	add	r5 r4 r5
	fldi	f6 r5 0
	fmul	f2 f6 f2
	addi	r5 r0 2
	add	r5 r4 r5
	fldi	f6 r5 0
	fmul	f3 f6 f3
	fadd	f2 f2 f3
	addi	r5 r0 3
	add	r5 r4 r5
	fldi	f3 r5 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r5 r0 3
	add	r5 r7 r5
	fldi	f3 r5 0
	fmul	f4 f2 f2
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 37
	fbgt	f3 f4 L_else_15085
	addi	r5 r0 0
	jump	L_cont_15086
L_else_15085 : 
	addi	r5 r0 1
L_cont_15086 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_15087
	addi	r4 r0 0
	return
L_else_15087 : 
	ldi	r5 r6 6
	addi	r6 r0 0
	bne	r5 r6 L_else_15088
	addi	r5 r0 4145
	addi	r6 r0 0
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	fsti	f2 r2 4
	fadd	f2 f0 f3
	addi	r2 r2 7
	call	L_sqrt_2502
	subi	r2 r2 7
	fldi	f3 r2 4
	fsub	f2 f3 f2
	addi	r4 r0 4
	ldi	r5 r2 2
	add	r4 r5 r4
	fldi	f3 r4 0
	fmul	f2 f2 f3
	ldi	r4 r2 0
	ldi	r5 r2 1
	add	r4 r5 r4
	fsti	f2 r4 0
	jump	L_cont_15089
L_else_15088 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	sti	r6 r2 6
	sti	r5 r2 7
	sti	r4 r2 2
	fsti	f2 r2 4
	fadd	f2 f0 f3
	addi	r2 r2 9
	call	L_sqrt_2502
	subi	r2 r2 9
	fldi	f3 r2 4
	fadd	f2 f3 f2
	addi	r4 r0 4
	ldi	r5 r2 2
	add	r4 r5 r4
	fldi	f3 r4 0
	fmul	f2 f2 f3
	ldi	r4 r2 6
	ldi	r5 r2 7
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_15089 : 
	addi	r4 r0 1
	return
L_else_15084 : 
	addi	r4 r0 0
	return
L_iter_setup_dirvec_constants_2752 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_15091
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r4 1
	ldi	r8 r4 0
	ldi	r9 r6 1
	addi	r10 r0 1
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r9 r10 L_else_15092
	addi	r9 r0 6
	fldi	f2 r0 37
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r8 r2 4
	add	r4 r0 r9
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	addi	r5 r0 0
	ldi	r6 r2 4
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 37
	fbne	f2 f3 L_else_15094
	addi	r5 r0 1
	jump	L_cont_15095
L_else_15094 : 
	addi	r5 r0 0
L_cont_15095 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_15096
	addi	r5 r0 0
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 0
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15098
	addi	r9 r0 0
	jump	L_cont_15099
L_else_15098 : 
	addi	r9 r0 1
L_cont_15099 : 
	xor	r8 r8 r9
	ldi	r9 r7 4
	addi	r10 r0 0
	add	r9 r9 r10
	fldi	f2 r9 0
	addi	r9 r0 0
	bne	r8 r9 L_else_15100
	fsub	f2 f0 f2
	jump	L_cont_15101
L_else_15100 : 
	fadd	f2 f0 f2
L_cont_15101 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	fldi	f2 r0 44
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_15097
L_else_15096 : 
	addi	r5 r0 1
	fldi	f2 r0 37
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_15097 : 
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 37
	fbne	f2 f3 L_else_15102
	addi	r5 r0 1
	jump	L_cont_15103
L_else_15102 : 
	addi	r5 r0 0
L_cont_15103 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_15104
	addi	r5 r0 2
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 1
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15106
	addi	r9 r0 0
	jump	L_cont_15107
L_else_15106 : 
	addi	r9 r0 1
L_cont_15107 : 
	xor	r8 r8 r9
	ldi	r9 r7 4
	addi	r10 r0 1
	add	r9 r9 r10
	fldi	f2 r9 0
	addi	r9 r0 0
	bne	r8 r9 L_else_15108
	fsub	f2 f0 f2
	jump	L_cont_15109
L_else_15108 : 
	fadd	f2 f0 f2
L_cont_15109 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 3
	fldi	f2 r0 44
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_15105
L_else_15104 : 
	addi	r5 r0 3
	fldi	f2 r0 37
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_15105 : 
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 37
	fbne	f2 f3 L_else_15110
	addi	r5 r0 1
	jump	L_cont_15111
L_else_15110 : 
	addi	r5 r0 0
L_cont_15111 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_15112
	addi	r5 r0 4
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 2
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15114
	addi	r9 r0 0
	jump	L_cont_15115
L_else_15114 : 
	addi	r9 r0 1
L_cont_15115 : 
	xor	r8 r8 r9
	ldi	r7 r7 4
	addi	r9 r0 2
	add	r7 r7 r9
	fldi	f2 r7 0
	addi	r7 r0 0
	bne	r8 r7 L_else_15116
	fsub	f2 f0 f2
	jump	L_cont_15117
L_else_15116 : 
	fadd	f2 f0 f2
L_cont_15117 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 5
	fldi	f2 r0 44
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_15113
L_else_15112 : 
	addi	r5 r0 5
	fldi	f2 r0 37
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_15113 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_15093
L_else_15092 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_15118
	addi	r9 r0 4
	fldi	f2 r0 37
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r8 r2 4
	add	r4 r0 r9
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	addi	r5 r0 0
	ldi	r6 r2 4
	add	r5 r6 r5
	fldi	f2 r5 0
	ldi	r5 r2 3
	ldi	r7 r5 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f3 r7 0
	fmul	f2 f2 f3
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f3 r7 0
	ldi	r7 r5 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	ldi	r6 r5 4
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 37
	fbgt	f2 f3 L_else_15120
	addi	r6 r0 0
	jump	L_cont_15121
L_else_15120 : 
	addi	r6 r0 1
L_cont_15121 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_15122
	addi	r5 r0 0
	fldi	f2 r0 37
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_15123
L_else_15122 : 
	addi	r6 r0 0
	fldi	f3 r0 27
	fdiv	f3 f3 f2
	add	r6 r4 r6
	fsti	f3 r6 0
	addi	r6 r0 1
	ldi	r7 r5 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f3 r7 0
	fdiv	f3 f3 f2
	fsub	f3 f0 f3
	add	r6 r4 r6
	fsti	f3 r6 0
	addi	r6 r0 2
	ldi	r7 r5 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f3 r7 0
	fdiv	f3 f3 f2
	fsub	f3 f0 f3
	add	r6 r4 r6
	fsti	f3 r6 0
	addi	r6 r0 3
	ldi	r5 r5 4
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f3 r5 0
	fdiv	f2 f3 f2
	fsub	f2 f0 f2
	add	r5 r4 r6
	fsti	f2 r5 0
L_cont_15123 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_15119
L_else_15118 : 
	addi	r9 r0 5
	fldi	f2 r0 37
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r8 r2 4
	add	r4 r0 r9
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	addi	r5 r0 0
	ldi	r6 r2 4
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f3 r5 0
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f4 r5 0
	ldi	r5 r2 3
	sti	r4 r2 5
	add	r4 r0 r5
	addi	r2 r2 7
	call	L_quadratic_2680
	subi	r2 r2 7
	addi	r4 r0 0
	ldi	r5 r2 4
	add	r4 r5 r4
	fldi	f3 r4 0
	ldi	r4 r2 3
	ldi	r6 r4 4
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fsub	f3 f0 f3
	addi	r6 r0 1
	add	r6 r5 r6
	fldi	f4 r6 0
	ldi	r6 r4 4
	addi	r7 r0 1
	add	r6 r6 r7
	fldi	f5 r6 0
	fmul	f4 f4 f5
	fsub	f4 f0 f4
	addi	r6 r0 2
	add	r6 r5 r6
	fldi	f5 r6 0
	ldi	r6 r4 4
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f6 r6 0
	fmul	f5 f5 f6
	fsub	f5 f0 f5
	addi	r6 r0 0
	ldi	r7 r2 5
	add	r6 r7 r6
	fsti	f2 r6 0
	ldi	r6 r4 3
	addi	r8 r0 0
	bne	r6 r8 L_else_15124
	addi	r4 r0 1
	add	r4 r7 r4
	fsti	f3 r4 0
	addi	r4 r0 2
	add	r4 r7 r4
	fsti	f4 r4 0
	addi	r4 r0 3
	add	r4 r7 r4
	fsti	f5 r4 0
	jump	L_cont_15125
L_else_15124 : 
	addi	r6 r0 1
	addi	r8 r0 2
	add	r8 r5 r8
	fldi	f6 r8 0
	ldi	r8 r4 9
	addi	r9 r0 1
	add	r8 r8 r9
	fldi	f7 r8 0
	fmul	f6 f6 f7
	addi	r8 r0 1
	add	r8 r5 r8
	fldi	f7 r8 0
	ldi	r8 r4 9
	addi	r9 r0 2
	add	r8 r8 r9
	fldi	f8 r8 0
	fmul	f7 f7 f8
	fadd	f6 f6 f7
	fldi	f7 r0 28
	fdiv	f6 f6 f7
	fsub	f3 f3 f6
	add	r6 r7 r6
	fsti	f3 r6 0
	addi	r6 r0 2
	addi	r8 r0 2
	add	r8 r5 r8
	fldi	f3 r8 0
	ldi	r8 r4 9
	addi	r9 r0 0
	add	r8 r8 r9
	fldi	f6 r8 0
	fmul	f3 f3 f6
	addi	r8 r0 0
	add	r8 r5 r8
	fldi	f6 r8 0
	ldi	r8 r4 9
	addi	r9 r0 2
	add	r8 r8 r9
	fldi	f7 r8 0
	fmul	f6 f6 f7
	fadd	f3 f3 f6
	fldi	f6 r0 28
	fdiv	f3 f3 f6
	fsub	f3 f4 f3
	add	r6 r7 r6
	fsti	f3 r6 0
	addi	r6 r0 3
	addi	r8 r0 1
	add	r8 r5 r8
	fldi	f3 r8 0
	ldi	r8 r4 9
	addi	r9 r0 0
	add	r8 r8 r9
	fldi	f4 r8 0
	fmul	f3 f3 f4
	addi	r8 r0 0
	add	r5 r5 r8
	fldi	f4 r5 0
	ldi	r4 r4 9
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f6 r4 0
	fmul	f4 f4 f6
	fadd	f3 f3 f4
	fldi	f4 r0 28
	fdiv	f3 f3 f4
	fsub	f3 f5 f3
	add	r4 r7 r6
	fsti	f3 r4 0
L_cont_15125 : 
	fldi	f3 r0 37
	fbne	f2 f3 L_else_15126
	addi	r4 r0 1
	jump	L_cont_15127
L_else_15126 : 
	addi	r4 r0 0
L_cont_15127 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15128
	addi	r4 r0 4
	fldi	f3 r0 44
	fdiv	f2 f3 f2
	add	r4 r7 r4
	fsti	f2 r4 0
	jump	L_cont_15129
L_else_15128 : 
L_cont_15129 : 
	ldi	r4 r2 1
	ldi	r5 r2 2
	add	r5 r5 r4
	sti	r7 r5 0
L_cont_15119 : 
L_cont_15093 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_iter_setup_dirvec_constants_2752
L_else_15091 : 
	return
L_setup_dirvec_constants_2755 : 
	addi	r5 r0 4144
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 1
	sub	r5 r5 r6
	jump	L_iter_setup_dirvec_constants_2752
L_setup_startp_constants_2757 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_15131
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r6 10
	ldi	r8 r6 1
	addi	r9 r0 0
	addi	r10 r0 0
	add	r10 r4 r10
	fldi	f2 r10 0
	ldi	r10 r6 5
	addi	r11 r0 0
	add	r10 r10 r11
	fldi	f3 r10 0
	fsub	f2 f2 f3
	add	r9 r7 r9
	fsti	f2 r9 0
	addi	r9 r0 1
	addi	r10 r0 1
	add	r10 r4 r10
	fldi	f2 r10 0
	ldi	r10 r6 5
	addi	r11 r0 1
	add	r10 r10 r11
	fldi	f3 r10 0
	fsub	f2 f2 f3
	add	r9 r7 r9
	fsti	f2 r9 0
	addi	r9 r0 2
	addi	r10 r0 2
	add	r10 r4 r10
	fldi	f2 r10 0
	ldi	r10 r6 5
	addi	r11 r0 2
	add	r10 r10 r11
	fldi	f3 r10 0
	fsub	f2 f2 f3
	add	r9 r7 r9
	fsti	f2 r9 0
	addi	r9 r0 2
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r8 r9 L_else_15132
	addi	r8 r0 3
	ldi	r6 r6 4
	addi	r9 r0 0
	add	r9 r7 r9
	fldi	f2 r9 0
	addi	r9 r0 1
	add	r9 r7 r9
	fldi	f3 r9 0
	addi	r9 r0 2
	add	r9 r7 r9
	fldi	f4 r9 0
	sti	r8 r2 2
	sti	r7 r2 3
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_veciprod2_2543
	subi	r2 r2 5
	ldi	r4 r2 2
	ldi	r5 r2 3
	add	r4 r5 r4
	fsti	f2 r4 0
	jump	L_cont_15133
L_else_15132 : 
	addi	r9 r0 2
	bgt	r8 r9 L_else_15134
	jump	L_cont_15135
L_else_15134 : 
	addi	r9 r0 0
	add	r9 r7 r9
	fldi	f2 r9 0
	addi	r9 r0 1
	add	r9 r7 r9
	fldi	f3 r9 0
	addi	r9 r0 2
	add	r9 r7 r9
	fldi	f4 r9 0
	sti	r7 r2 3
	sti	r8 r2 4
	add	r4 r0 r6
	addi	r2 r2 6
	call	L_quadratic_2680
	subi	r2 r2 6
	addi	r4 r0 3
	addi	r5 r0 3
	ldi	r6 r2 4
	bne	r6 r5 L_else_15136
	fldi	f3 r0 44
	fsub	f2 f2 f3
	jump	L_cont_15137
L_else_15136 : 
	fadd	f2 f0 f2
L_cont_15137 : 
	ldi	r5 r2 3
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_15135 : 
L_cont_15133 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_setup_startp_constants_2757
L_else_15131 : 
	return
L_setup_startp_2760 : 
	addi	r5 r0 4138
	sti	r4 r2 0
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	L_veccpy_2529
	subi	r2 r2 2
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r5 r4 r5
	ldi	r4 r2 0
	jump	L_setup_startp_constants_2757
L_check_all_inside_2782 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_15139
	addi	r4 r0 1
	return
L_else_15139 : 
	addi	r7 r0 5042
	add	r6 r7 r6
	ldi	r6 r6 0
	ldi	r7 r6 5
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f5 r7 0
	fsub	f5 f2 f5
	ldi	r7 r6 5
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f6 r7 0
	fsub	f6 f3 f6
	ldi	r7 r6 5
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f7 r7 0
	fsub	f7 f4 f7
	ldi	r7 r6 1
	addi	r8 r0 1
	fsti	f4 r2 0
	fsti	f3 r2 2
	fsti	f2 r2 4
	sti	r5 r2 6
	sti	r4 r2 7
	bne	r7 r8 L_else_15140
	fldi	f8 r0 37
	fbgt	f8 f5 L_else_15142
	fadd	f5 f0 f5
	jump	L_cont_15143
L_else_15142 : 
	fsub	f5 f0 f5
L_cont_15143 : 
	ldi	r7 r6 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f8 r7 0
	fbgt	f8 f5 L_else_15144
	addi	r7 r0 0
	jump	L_cont_15145
L_else_15144 : 
	addi	r7 r0 1
L_cont_15145 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15146
	addi	r7 r0 0
	jump	L_cont_15147
L_else_15146 : 
	fldi	f5 r0 37
	fbgt	f5 f6 L_else_15148
	fadd	f5 f0 f6
	jump	L_cont_15149
L_else_15148 : 
	fsub	f5 f0 f6
L_cont_15149 : 
	ldi	r7 r6 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f6 r7 0
	fbgt	f6 f5 L_else_15150
	addi	r7 r0 0
	jump	L_cont_15151
L_else_15150 : 
	addi	r7 r0 1
L_cont_15151 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15152
	addi	r7 r0 0
	jump	L_cont_15153
L_else_15152 : 
	fldi	f5 r0 37
	fbgt	f5 f7 L_else_15154
	fadd	f5 f0 f7
	jump	L_cont_15155
L_else_15154 : 
	fsub	f5 f0 f7
L_cont_15155 : 
	ldi	r7 r6 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f6 r7 0
	fbgt	f6 f5 L_else_15156
	addi	r7 r0 0
	jump	L_cont_15157
L_else_15156 : 
	addi	r7 r0 1
L_cont_15157 : 
L_cont_15153 : 
L_cont_15147 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15158
	addi	r7 r0 1
	ldi	r6 r6 6
	sub	r4 r7 r6
	jump	L_cont_15159
L_else_15158 : 
	ldi	r6 r6 6
	add	r4 r0 r6
L_cont_15159 : 
	jump	L_cont_15141
L_else_15140 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_15160
	ldi	r7 r6 4
	sti	r6 r2 8
	add	r4 r0 r7
	fadd	f4 f0 f7
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 10
	call	L_veciprod2_2543
	subi	r2 r2 10
	addi	r4 r0 1
	ldi	r5 r2 8
	ldi	r5 r5 6
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15162
	addi	r6 r0 0
	jump	L_cont_15163
L_else_15162 : 
	addi	r6 r0 1
L_cont_15163 : 
	xor	r5 r5 r6
	sub	r4 r4 r5
	jump	L_cont_15161
L_else_15160 : 
	sti	r6 r2 8
	add	r4 r0 r6
	fadd	f4 f0 f7
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 10
	call	L_quadratic_2680
	subi	r2 r2 10
	ldi	r4 r2 8
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_15164
	fldi	f3 r0 44
	fsub	f2 f2 f3
	jump	L_cont_15165
L_else_15164 : 
	fadd	f2 f0 f2
L_cont_15165 : 
	addi	r5 r0 1
	ldi	r4 r4 6
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15166
	addi	r6 r0 0
	jump	L_cont_15167
L_else_15166 : 
	addi	r6 r0 1
L_cont_15167 : 
	xor	r4 r4 r6
	sub	r4 r5 r4
L_cont_15161 : 
L_cont_15141 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15168
	addi	r4 r0 1
	ldi	r5 r2 7
	add	r4 r5 r4
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r5 r2 6
	jump	L_check_all_inside_2782
L_else_15168 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2788 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_15169
	addi	r4 r0 0
	return
L_else_15169 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4977
	addi	r8 r0 4114
	sti	r5 r2 0
	sti	r4 r2 1
	sti	r6 r2 2
	add	r5 r0 r7
	add	r4 r0 r6
	add	r6 r0 r8
	addi	r2 r2 4
	call	L_solver_fast_2722
	subi	r2 r2 4
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	addi	r5 r0 0
	bne	r4 r5 L_else_15170
	addi	r4 r0 0
	jump	L_cont_15171
L_else_15170 : 
	fldi	f3 r0 25
	fbgt	f3 f2 L_else_15172
	addi	r4 r0 0
	jump	L_cont_15173
L_else_15172 : 
	addi	r4 r0 1
L_cont_15173 : 
L_cont_15171 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15174
	addi	r4 r0 5042
	ldi	r5 r2 2
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_15175
	addi	r4 r0 0
	return
L_else_15175 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2788
L_else_15174 : 
	fldi	f3 r0 24
	fadd	f2 f2 f3
	addi	r4 r0 4111
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f3 r4 0
	fmul	f3 f3 f2
	addi	r4 r0 4114
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f4 r4 0
	fadd	f3 f3 f4
	addi	r4 r0 4111
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f4 r4 0
	fmul	f4 f4 f2
	addi	r4 r0 4114
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f5 r4 0
	fadd	f4 f4 f5
	addi	r4 r0 4111
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f5 r4 0
	fmul	f2 f5 f2
	addi	r4 r0 4114
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f5 r4 0
	fadd	f2 f2 f5
	addi	r4 r0 0
	ldi	r5 r2 0
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 4
	call	L_check_all_inside_2782
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_15176
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2788
L_else_15176 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2791 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_15177
	addi	r4 r0 0
	return
L_else_15177 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r5 r2 0
	sti	r4 r2 1
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 3
	call	L_shadow_check_and_group_2788
	subi	r2 r2 3
	addi	r5 r0 0
	bne	r4 r5 L_else_15178
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_one_or_group_2791
L_else_15178 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2794 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_15179
	addi	r4 r0 0
	return
L_else_15179 : 
	addi	r8 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r7 r8 L_else_15180
	addi	r4 r0 1
	jump	L_cont_15181
L_else_15180 : 
	addi	r8 r0 4977
	addi	r9 r0 4114
	add	r6 r0 r9
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 4
	call	L_solver_fast_2722
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_15182
	addi	r4 r0 0
	jump	L_cont_15183
L_else_15182 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f3 f2 L_else_15184
	addi	r4 r0 0
	jump	L_cont_15185
L_else_15184 : 
	addi	r4 r0 1
L_cont_15185 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15186
	addi	r4 r0 0
	jump	L_cont_15187
L_else_15186 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2791
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_15188
	addi	r4 r0 0
	jump	L_cont_15189
L_else_15188 : 
	addi	r4 r0 1
L_cont_15189 : 
L_cont_15187 : 
L_cont_15183 : 
L_cont_15181 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15190
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2794
L_else_15190 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2791
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_15191
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2794
L_else_15191 : 
	addi	r4 r0 1
	return
L_solve_each_element_2797 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_15192
	return
L_else_15192 : 
	addi	r8 r0 4135
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 5
	call	L_solver_2699
	subi	r2 r2 5
	addi	r5 r0 0
	bne	r4 r5 L_else_15194
	addi	r4 r0 5042
	ldi	r5 r2 3
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_15195
	return
L_else_15195 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2797
L_else_15194 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 37
	fbgt	f2 f3 L_else_15197
	addi	r5 r0 0
	jump	L_cont_15198
L_else_15197 : 
	addi	r5 r0 1
L_cont_15198 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_15199
	jump	L_cont_15200
L_else_15199 : 
	addi	r5 r0 4154
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_15201
	addi	r5 r0 0
	jump	L_cont_15202
L_else_15201 : 
	addi	r5 r0 1
L_cont_15202 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_15203
	jump	L_cont_15204
L_else_15203 : 
	fldi	f3 r0 24
	fadd	f2 f2 f3
	addi	r5 r0 0
	ldi	r6 r2 0
	add	r5 r6 r5
	fldi	f3 r5 0
	fmul	f3 f3 f2
	addi	r5 r0 4135
	addi	r7 r0 0
	add	r5 r5 r7
	fldi	f4 r5 0
	fadd	f3 f3 f4
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f4 r5 0
	fmul	f4 f4 f2
	addi	r5 r0 4135
	addi	r7 r0 1
	add	r5 r5 r7
	fldi	f5 r5 0
	fadd	f4 f4 f5
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f5 r5 0
	fmul	f5 f5 f2
	addi	r5 r0 4135
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f6 r5 0
	fadd	f5 f5 f6
	addi	r5 r0 0
	ldi	r7 r2 1
	sti	r4 r2 4
	fsti	f5 r2 6
	fsti	f4 r2 8
	fsti	f3 r2 10
	fsti	f2 r2 12
	add	r4 r0 r5
	add	r5 r0 r7
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 15
	call	L_check_all_inside_2782
	subi	r2 r2 15
	addi	r5 r0 0
	bne	r4 r5 L_else_15206
	jump	L_cont_15207
L_else_15206 : 
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r2 12
	fsti	f2 r4 0
	addi	r4 r0 4114
	fldi	f2 r2 10
	fldi	f3 r2 8
	fldi	f4 r2 6
	addi	r2 r2 15
	call	L_vecset_2519
	subi	r2 r2 15
	addi	r4 r0 4117
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 3
	sti	r5 r4 0
	addi	r4 r0 4146
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 4
	sti	r5 r4 0
L_cont_15207 : 
L_cont_15204 : 
L_cont_15200 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2797
L_solve_one_or_network_2801 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_15208
	return
L_else_15208 : 
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
	call	L_solve_each_element_2797
	subi	r2 r2 4
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_one_or_network_2801
L_trace_or_matrix_2805 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 0
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_15210
	return
L_else_15210 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_15212
	addi	r8 r0 1
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 4
	call	L_solve_one_or_network_2801
	subi	r2 r2 4
	jump	L_cont_15213
L_else_15212 : 
	addi	r9 r0 4135
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r8
	add	r6 r0 r9
	addi	r2 r2 5
	call	L_solver_2699
	subi	r2 r2 5
	addi	r5 r0 0
	bne	r4 r5 L_else_15214
	jump	L_cont_15215
L_else_15214 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_15216
	addi	r4 r0 0
	jump	L_cont_15217
L_else_15216 : 
	addi	r4 r0 1
L_cont_15217 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15218
	jump	L_cont_15219
L_else_15218 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_2801
	subi	r2 r2 5
L_cont_15219 : 
L_cont_15215 : 
L_cont_15213 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_2805
L_solve_each_element_fast_2811 : 
	ldi	r7 r6 0
	add	r8 r5 r4
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_15220
	return
L_else_15220 : 
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	sti	r4 r2 3
	sti	r8 r2 4
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_solver_fast2_2740
	subi	r2 r2 6
	addi	r5 r0 0
	bne	r4 r5 L_else_15222
	addi	r4 r0 5042
	ldi	r5 r2 4
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_15223
	return
L_else_15223 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r5 r2 2
	ldi	r6 r2 1
	jump	L_solve_each_element_fast_2811
L_else_15222 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 37
	fbgt	f2 f3 L_else_15225
	addi	r5 r0 0
	jump	L_cont_15226
L_else_15225 : 
	addi	r5 r0 1
L_cont_15226 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_15227
	jump	L_cont_15228
L_else_15227 : 
	addi	r5 r0 4154
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_15229
	addi	r5 r0 0
	jump	L_cont_15230
L_else_15229 : 
	addi	r5 r0 1
L_cont_15230 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_15231
	jump	L_cont_15232
L_else_15231 : 
	fldi	f3 r0 24
	fadd	f2 f2 f3
	addi	r5 r0 0
	ldi	r6 r2 0
	add	r5 r6 r5
	fldi	f3 r5 0
	fmul	f3 f3 f2
	addi	r5 r0 4138
	addi	r7 r0 0
	add	r5 r5 r7
	fldi	f4 r5 0
	fadd	f3 f3 f4
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f4 r5 0
	fmul	f4 f4 f2
	addi	r5 r0 4138
	addi	r7 r0 1
	add	r5 r5 r7
	fldi	f5 r5 0
	fadd	f4 f4 f5
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f5 r5 0
	fmul	f5 f5 f2
	addi	r5 r0 4138
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f6 r5 0
	fadd	f5 f5 f6
	addi	r5 r0 0
	ldi	r6 r2 2
	sti	r4 r2 5
	fsti	f5 r2 6
	fsti	f4 r2 8
	fsti	f3 r2 10
	fsti	f2 r2 12
	add	r4 r0 r5
	add	r5 r0 r6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 15
	call	L_check_all_inside_2782
	subi	r2 r2 15
	addi	r5 r0 0
	bne	r4 r5 L_else_15233
	jump	L_cont_15234
L_else_15233 : 
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r2 12
	fsti	f2 r4 0
	addi	r4 r0 4114
	fldi	f2 r2 10
	fldi	f3 r2 8
	fldi	f4 r2 6
	addi	r2 r2 15
	call	L_vecset_2519
	subi	r2 r2 15
	addi	r4 r0 4117
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 4
	sti	r5 r4 0
	addi	r4 r0 4146
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 5
	sti	r5 r4 0
L_cont_15234 : 
L_cont_15232 : 
L_cont_15228 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r5 r2 2
	ldi	r6 r2 1
	jump	L_solve_each_element_fast_2811
L_solve_one_or_network_fast_2815 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_15235
	return
L_else_15235 : 
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
	call	L_solve_each_element_fast_2811
	subi	r2 r2 4
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_one_or_network_fast_2815
L_trace_or_matrix_fast_2819 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 0
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_15237
	return
L_else_15237 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_15239
	addi	r8 r0 1
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 4
	call	L_solve_one_or_network_fast_2815
	subi	r2 r2 4
	jump	L_cont_15240
L_else_15239 : 
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_fast2_2740
	subi	r2 r2 5
	addi	r5 r0 0
	bne	r4 r5 L_else_15241
	jump	L_cont_15242
L_else_15241 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_15243
	addi	r4 r0 0
	jump	L_cont_15244
L_else_15243 : 
	addi	r4 r0 1
L_cont_15244 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15245
	jump	L_cont_15246
L_else_15245 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_fast_2815
	subi	r2 r2 5
L_cont_15246 : 
L_cont_15242 : 
L_cont_15240 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_fast_2819
L_judge_intersection_fast_2823 : 
	addi	r5 r0 4154
	addi	r6 r0 0
	fldi	f2 r0 22
	add	r5 r5 r6
	fsti	f2 r5 0
	addi	r5 r0 0
	addi	r6 r0 4255
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	addi	r2 r2 1
	call	L_trace_or_matrix_fast_2819
	subi	r2 r2 1
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_15247
	addi	r4 r0 0
	jump	L_cont_15248
L_else_15247 : 
	addi	r4 r0 1
L_cont_15248 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15249
	addi	r4 r0 0
	return
L_else_15249 : 
	fldi	f3 r0 21
	fbgt	f3 f2 L_else_15250
	addi	r4 r0 0
	return
L_else_15250 : 
	addi	r4 r0 1
	return
L_get_nvector_2831 : 
	ldi	r6 r4 1
	addi	r7 r0 1
	bne	r6 r7 L_else_15251
	addi	r4 r0 4146
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 4118
	fldi	f2 r0 37
	addi	r7 r0 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	add	r6 r6 r7
	fsti	f2 r6 0
	addi	r6 r0 4118
	addi	r7 r0 1
	sub	r7 r4 r7
	addi	r8 r0 1
	sub	r4 r4 r8
	add	r4 r5 r4
	fldi	f2 r4 0
	sti	r7 r2 0
	sti	r6 r2 1
	addi	r2 r2 3
	call	L_sgn_2511
	subi	r2 r2 3
	fsub	f2 f0 f2
	ldi	r4 r2 0
	ldi	r5 r2 1
	add	r4 r5 r4
	fsti	f2 r4 0
	return
L_else_15251 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_15253
	addi	r5 r0 4118
	addi	r6 r0 0
	ldi	r7 r4 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f2 r7 0
	fsub	f2 f0 f2
	add	r5 r5 r6
	fsti	f2 r5 0
	addi	r5 r0 4118
	addi	r6 r0 1
	ldi	r7 r4 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f2 r7 0
	fsub	f2 f0 f2
	add	r5 r5 r6
	fsti	f2 r5 0
	addi	r5 r0 4118
	addi	r6 r0 2
	ldi	r4 r4 4
	addi	r7 r0 2
	add	r4 r4 r7
	fldi	f2 r4 0
	fsub	f2 f0 f2
	add	r4 r5 r6
	fsti	f2 r4 0
	return
L_else_15253 : 
	addi	r5 r0 4114
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	ldi	r5 r4 5
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fsub	f2 f2 f3
	addi	r5 r0 4114
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f3 r5 0
	ldi	r5 r4 5
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f4 r5 0
	fsub	f3 f3 f4
	addi	r5 r0 4114
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f4 r5 0
	ldi	r5 r4 5
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f5 r5 0
	fsub	f4 f4 f5
	ldi	r5 r4 4
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f5 r5 0
	fmul	f5 f2 f5
	ldi	r5 r4 4
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f6 r5 0
	fmul	f6 f3 f6
	ldi	r5 r4 4
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f7 r5 0
	fmul	f7 f4 f7
	ldi	r5 r4 3
	addi	r6 r0 0
	bne	r5 r6 L_else_15255
	addi	r5 r0 4118
	addi	r6 r0 0
	add	r5 r5 r6
	fsti	f5 r5 0
	addi	r5 r0 4118
	addi	r6 r0 1
	add	r5 r5 r6
	fsti	f6 r5 0
	addi	r5 r0 4118
	addi	r6 r0 2
	add	r5 r5 r6
	fsti	f7 r5 0
	jump	L_cont_15256
L_else_15255 : 
	addi	r5 r0 4118
	addi	r6 r0 0
	ldi	r7 r4 9
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f8 r7 0
	fmul	f8 f3 f8
	ldi	r7 r4 9
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f9 r7 0
	fmul	f9 f4 f9
	fadd	f8 f8 f9
	fldi	f9 r0 28
	fdiv	f8 f8 f9
	fadd	f5 f5 f8
	add	r5 r5 r6
	fsti	f5 r5 0
	addi	r5 r0 4118
	addi	r6 r0 1
	ldi	r7 r4 9
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f5 r7 0
	fmul	f5 f2 f5
	ldi	r7 r4 9
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f8 r7 0
	fmul	f4 f4 f8
	fadd	f4 f5 f4
	fldi	f5 r0 28
	fdiv	f4 f4 f5
	fadd	f4 f6 f4
	add	r5 r5 r6
	fsti	f4 r5 0
	addi	r5 r0 4118
	addi	r6 r0 2
	ldi	r7 r4 9
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f4 r7 0
	fmul	f2 f2 f4
	ldi	r7 r4 9
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 28
	fdiv	f2 f2 f3
	fadd	f2 f7 f2
	add	r5 r5 r6
	fsti	f2 r5 0
L_cont_15256 : 
	addi	r5 r0 4118
	ldi	r4 r4 6
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	jump	L_vecunit_sgn_2537
L_utexture_2834 : 
	ldi	r6 r4 0
	addi	r7 r0 4121
	addi	r8 r0 0
	ldi	r9 r4 8
	addi	r10 r0 0
	add	r9 r9 r10
	fldi	f2 r9 0
	add	r7 r7 r8
	fsti	f2 r7 0
	addi	r7 r0 4121
	addi	r8 r0 1
	ldi	r9 r4 8
	addi	r10 r0 1
	add	r9 r9 r10
	fldi	f2 r9 0
	add	r7 r7 r8
	fsti	f2 r7 0
	addi	r7 r0 4121
	addi	r8 r0 2
	ldi	r9 r4 8
	addi	r10 r0 2
	add	r9 r9 r10
	fldi	f2 r9 0
	add	r7 r7 r8
	fsti	f2 r7 0
	addi	r7 r0 1
	bne	r6 r7 L_else_15257
	addi	r6 r0 0
	add	r6 r5 r6
	fldi	f2 r6 0
	ldi	r6 r4 5
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f3 r6 0
	fsub	f2 f2 f3
	fldi	f3 r0 11
	fmul	f3 f2 f3
	flr	f3 f3
	fldi	f4 r0 10
	fmul	f3 f3 f4
	fsub	f2 f2 f3
	fldi	f3 r0 13
	fbgt	f3 f2 L_else_15258
	addi	r6 r0 0
	jump	L_cont_15259
L_else_15258 : 
	addi	r6 r0 1
L_cont_15259 : 
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f2 r5 0
	ldi	r4 r4 5
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f3 r4 0
	fsub	f2 f2 f3
	fldi	f3 r0 11
	fmul	f3 f2 f3
	flr	f3 f3
	fldi	f4 r0 10
	fmul	f3 f3 f4
	fsub	f2 f2 f3
	fldi	f3 r0 13
	fbgt	f3 f2 L_else_15260
	addi	r4 r0 0
	jump	L_cont_15261
L_else_15260 : 
	addi	r4 r0 1
L_cont_15261 : 
	addi	r5 r0 4121
	addi	r7 r0 1
	addi	r8 r0 0
	bne	r6 r8 L_else_15262
	addi	r6 r0 0
	bne	r4 r6 L_else_15264
	fldi	f2 r0 15
	jump	L_cont_15265
L_else_15264 : 
	fldi	f2 r0 37
L_cont_15265 : 
	jump	L_cont_15263
L_else_15262 : 
	addi	r6 r0 0
	bne	r4 r6 L_else_15266
	fldi	f2 r0 37
	jump	L_cont_15267
L_else_15266 : 
	fldi	f2 r0 15
L_cont_15267 : 
L_cont_15263 : 
	add	r4 r5 r7
	fsti	f2 r4 0
	return
L_else_15257 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_15269
	addi	r4 r0 1
	add	r4 r5 r4
	fldi	f2 r4 0
	fldi	f3 r0 12
	fmul	f2 f2 f3
	addi	r2 r2 1
	call	L_sin_2492
	subi	r2 r2 1
	fmul	f2 f2 f2
	addi	r4 r0 4121
	addi	r5 r0 0
	fldi	f3 r0 15
	fmul	f3 f3 f2
	add	r4 r4 r5
	fsti	f3 r4 0
	addi	r4 r0 4121
	addi	r5 r0 1
	fldi	f3 r0 15
	fldi	f4 r0 44
	fsub	f2 f4 f2
	fmul	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_15269 : 
	addi	r7 r0 3
	bne	r6 r7 L_else_15271
	addi	r6 r0 0
	add	r6 r5 r6
	fldi	f2 r6 0
	ldi	r6 r4 5
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f3 r6 0
	fsub	f2 f2 f3
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f3 r5 0
	ldi	r4 r4 5
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f4 r4 0
	fsub	f3 f3 f4
	fmul	f2 f2 f2
	fmul	f3 f3 f3
	fadd	f2 f2 f3
	addi	r2 r2 1
	call	L_sqrt_2502
	subi	r2 r2 1
	fldi	f3 r0 13
	fdiv	f2 f2 f3
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 17
	fmul	f2 f2 f3
	addi	r2 r2 1
	call	L_cos_2494
	subi	r2 r2 1
	fmul	f2 f2 f2
	addi	r4 r0 4121
	addi	r5 r0 1
	fldi	f3 r0 15
	fmul	f3 f2 f3
	add	r4 r4 r5
	fsti	f3 r4 0
	addi	r4 r0 4121
	addi	r5 r0 2
	fldi	f3 r0 44
	fsub	f2 f3 f2
	fldi	f3 r0 15
	fmul	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_15271 : 
	addi	r7 r0 4
	bne	r6 r7 L_else_15273
	addi	r6 r0 0
	add	r6 r5 r6
	fldi	f2 r6 0
	ldi	r6 r4 5
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f3 r6 0
	fsub	f2 f2 f3
	ldi	r6 r4 4
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f3 r6 0
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f2 r2 2
	fadd	f2 f0 f3
	addi	r2 r2 5
	call	L_sqrt_2502
	subi	r2 r2 5
	fldi	f3 r2 2
	fmul	f2 f3 f2
	addi	r4 r0 2
	ldi	r5 r2 1
	add	r4 r5 r4
	fldi	f3 r4 0
	ldi	r4 r2 0
	ldi	r6 r4 5
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f4 r6 0
	fsub	f3 f3 f4
	ldi	r6 r4 4
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f4 r6 0
	fsti	f2 r2 4
	fsti	f3 r2 6
	fadd	f2 f0 f4
	addi	r2 r2 9
	call	L_sqrt_2502
	subi	r2 r2 9
	fldi	f3 r2 6
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fmul	f4 f3 f3
	fmul	f5 f2 f2
	fadd	f4 f4 f5
	fldi	f5 r0 37
	fbgt	f5 f3 L_else_15274
	fadd	f5 f0 f3
	jump	L_cont_15275
L_else_15274 : 
	fsub	f5 f0 f3
L_cont_15275 : 
	fldi	f6 r0 20
	fbgt	f6 f5 L_else_15276
	addi	r4 r0 0
	jump	L_cont_15277
L_else_15276 : 
	addi	r4 r0 1
L_cont_15277 : 
	addi	r5 r0 0
	fsti	f4 r2 8
	bne	r4 r5 L_else_15278
	fdiv	f2 f2 f3
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15280
	fadd	f2 f0 f2
	jump	L_cont_15281
L_else_15280 : 
	fsub	f2 f0 f2
L_cont_15281 : 
	addi	r2 r2 11
	call	L_atan_2496
	subi	r2 r2 11
	fldi	f3 r0 18
	fmul	f2 f2 f3
	fldi	f3 r0 17
	fdiv	f2 f2 f3
	jump	L_cont_15279
L_else_15278 : 
	fldi	f2 r0 19
L_cont_15279 : 
	flr	f3 f2
	fsub	f2 f2 f3
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	fldi	f3 r4 0
	ldi	r4 r2 0
	ldi	r5 r4 5
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f4 r5 0
	fsub	f3 f3 f4
	ldi	r4 r4 4
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f4 r4 0
	fsti	f2 r2 10
	fsti	f3 r2 12
	fadd	f2 f0 f4
	addi	r2 r2 15
	call	L_sqrt_2502
	subi	r2 r2 15
	fldi	f3 r2 12
	fmul	f2 f3 f2
	fldi	f3 r0 37
	fldi	f4 r2 8
	fbgt	f3 f4 L_else_15282
	fadd	f3 f0 f4
	jump	L_cont_15283
L_else_15282 : 
	fsub	f3 f0 f4
L_cont_15283 : 
	fldi	f5 r0 20
	fbgt	f5 f3 L_else_15284
	addi	r4 r0 0
	jump	L_cont_15285
L_else_15284 : 
	addi	r4 r0 1
L_cont_15285 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15286
	fdiv	f2 f2 f4
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15288
	fadd	f2 f0 f2
	jump	L_cont_15289
L_else_15288 : 
	fsub	f2 f0 f2
L_cont_15289 : 
	addi	r2 r2 15
	call	L_atan_2496
	subi	r2 r2 15
	fldi	f3 r0 18
	fmul	f2 f2 f3
	fldi	f3 r0 17
	fdiv	f2 f2 f3
	jump	L_cont_15287
L_else_15286 : 
	fldi	f2 r0 19
L_cont_15287 : 
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 16
	fldi	f4 r0 45
	fldi	f5 r2 10
	fsub	f4 f4 f5
	fmul	f4 f4 f4
	fsub	f3 f3 f4
	fldi	f4 r0 45
	fsub	f2 f4 f2
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15290
	addi	r4 r0 0
	jump	L_cont_15291
L_else_15290 : 
	addi	r4 r0 1
L_cont_15291 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15292
	fadd	f2 f0 f2
	jump	L_cont_15293
L_else_15292 : 
	fldi	f2 r0 37
L_cont_15293 : 
	addi	r4 r0 4121
	addi	r5 r0 2
	fldi	f3 r0 15
	fmul	f2 f3 f2
	fldi	f3 r0 14
	fdiv	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_15273 : 
	return
L_add_light_2837 : 
	fldi	f5 r0 37
	fbgt	f2 f5 L_else_15296
	addi	r4 r0 0
	jump	L_cont_15297
L_else_15296 : 
	addi	r4 r0 1
L_cont_15297 : 
	addi	r5 r0 0
	fsti	f4 r2 0
	fsti	f3 r2 2
	bne	r4 r5 L_else_15298
	jump	L_cont_15299
L_else_15298 : 
	addi	r4 r0 4127
	addi	r5 r0 4121
	addi	r2 r2 5
	call	L_vecaccum_2548
	subi	r2 r2 5
L_cont_15299 : 
	fldi	f2 r0 37
	fldi	f3 r2 2
	fbgt	f3 f2 L_else_15300
	addi	r4 r0 0
	jump	L_cont_15301
L_else_15300 : 
	addi	r4 r0 1
L_cont_15301 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15302
	return
L_else_15302 : 
	fmul	f2 f3 f3
	fmul	f2 f2 f2
	fldi	f3 r2 0
	fmul	f2 f2 f3
	addi	r4 r0 4127
	addi	r5 r0 0
	addi	r6 r0 4127
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f3 r6 0
	fadd	f3 f3 f2
	add	r4 r4 r5
	fsti	f3 r4 0
	addi	r4 r0 4127
	addi	r5 r0 1
	addi	r6 r0 4127
	addi	r7 r0 1
	add	r6 r6 r7
	fldi	f3 r6 0
	fadd	f3 f3 f2
	add	r4 r4 r5
	fsti	f3 r4 0
	addi	r4 r0 4127
	addi	r5 r0 2
	addi	r6 r0 4127
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	fadd	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_trace_reflections_2841 : 
	addi	r6 r0 0
	bgt	r6 r4 L_else_15305
	addi	r6 r0 4257
	add	r6 r6 r4
	ldi	r6 r6 0
	ldi	r7 r6 1
	sti	r4 r2 0
	fsti	f3 r2 2
	sti	r5 r2 4
	fsti	f2 r2 6
	sti	r7 r2 8
	sti	r6 r2 9
	add	r4 r0 r7
	addi	r2 r2 11
	call	L_judge_intersection_fast_2823
	subi	r2 r2 11
	addi	r5 r0 0
	bne	r4 r5 L_else_15308
	jump	L_cont_15309
L_else_15308 : 
	addi	r4 r0 4117
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 4
	mul	r4 r4 r5
	addi	r5 r0 4146
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r5 r2 9
	ldi	r6 r5 0
	bne	r4 r6 L_else_15310
	addi	r4 r0 0
	addi	r6 r0 4255
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_shadow_check_one_or_matrix_2794
	subi	r2 r2 11
	addi	r5 r0 0
	bne	r4 r5 L_else_15312
	addi	r4 r0 4118
	ldi	r5 r2 8
	ldi	r6 r5 0
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_veciprod_2540
	subi	r2 r2 11
	ldi	r4 r2 9
	fldi	f3 r4 2
	fldi	f4 r2 6
	fmul	f5 f3 f4
	fmul	f2 f5 f2
	ldi	r4 r2 8
	ldi	r5 r4 0
	ldi	r4 r2 4
	fsti	f2 r2 10
	fsti	f3 r2 12
	addi	r2 r2 15
	call	L_veciprod_2540
	subi	r2 r2 15
	fldi	f3 r2 12
	fmul	f3 f3 f2
	fldi	f2 r2 10
	fldi	f4 r2 2
	addi	r2 r2 15
	call	L_add_light_2837
	subi	r2 r2 15
	jump	L_cont_15313
L_else_15312 : 
L_cont_15313 : 
	jump	L_cont_15311
L_else_15310 : 
L_cont_15311 : 
L_cont_15309 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	sub	r4 r5 r4
	fldi	f2 r2 6
	fldi	f3 r2 2
	ldi	r5 r2 4
	jump	L_trace_reflections_2841
L_else_15305 : 
	return
L_trace_ray_2846 : 
	addi	r7 r0 4
	bgt	r4 r7 L_else_15315
	ldi	r7 r6 2
	addi	r8 r0 4154
	addi	r9 r0 0
	fldi	f4 r0 22
	add	r8 r8 r9
	fsti	f4 r8 0
	addi	r8 r0 0
	addi	r9 r0 4255
	addi	r10 r0 0
	add	r9 r9 r10
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
	call	L_trace_or_matrix_2805
	subi	r2 r2 10
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_15317
	addi	r4 r0 0
	jump	L_cont_15318
L_else_15317 : 
	addi	r4 r0 1
L_cont_15318 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15319
	addi	r4 r0 0
	jump	L_cont_15320
L_else_15319 : 
	fldi	f3 r0 21
	fbgt	f3 f2 L_else_15321
	addi	r4 r0 0
	jump	L_cont_15322
L_else_15321 : 
	addi	r4 r0 1
L_cont_15322 : 
L_cont_15320 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15323
	addi	r4 r0 -1
	ldi	r5 r2 7
	ldi	r6 r2 8
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 0
	bne	r5 r4 L_else_15324
	return
L_else_15324 : 
	addi	r5 r0 4111
	ldi	r4 r2 6
	addi	r2 r2 10
	call	L_veciprod_2540
	subi	r2 r2 10
	fsub	f2 f0 f2
	fldi	f3 r0 37
	fbgt	f2 f3 L_else_15326
	addi	r4 r0 0
	jump	L_cont_15327
L_else_15326 : 
	addi	r4 r0 1
L_cont_15327 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15328
	return
L_else_15328 : 
	fmul	f3 f2 f2
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fmul	f2 f2 f3
	addi	r4 r0 4153
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f3 r4 0
	fmul	f2 f2 f3
	addi	r4 r0 4127
	addi	r5 r0 0
	addi	r6 r0 4127
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f3 r6 0
	fadd	f3 f3 f2
	add	r4 r4 r5
	fsti	f3 r4 0
	addi	r4 r0 4127
	addi	r5 r0 1
	addi	r6 r0 4127
	addi	r7 r0 1
	add	r6 r6 r7
	fldi	f3 r6 0
	fadd	f3 f3 f2
	add	r4 r4 r5
	fsti	f3 r4 0
	addi	r4 r0 4127
	addi	r5 r0 2
	addi	r6 r0 4127
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	fadd	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_15323 : 
	addi	r4 r0 4117
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r5 2
	ldi	r7 r5 7
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f2 r7 0
	fldi	f3 r2 4
	fmul	f2 f2 f3
	ldi	r7 r2 6
	sti	r6 r2 9
	fsti	f2 r2 10
	sti	r4 r2 12
	sti	r5 r2 13
	add	r4 r0 r5
	add	r5 r0 r7
	addi	r2 r2 15
	call	L_get_nvector_2831
	subi	r2 r2 15
	addi	r4 r0 4135
	addi	r5 r0 4114
	addi	r2 r2 15
	call	L_veccpy_2529
	subi	r2 r2 15
	addi	r5 r0 4114
	ldi	r4 r2 13
	addi	r2 r2 15
	call	L_utexture_2834
	subi	r2 r2 15
	addi	r4 r0 4
	ldi	r5 r2 12
	mul	r4 r5 r4
	addi	r5 r0 4146
	addi	r6 r0 0
	add	r5 r5 r6
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
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 15
	call	L_veccpy_2529
	subi	r2 r2 15
	ldi	r4 r2 2
	ldi	r5 r4 3
	ldi	r6 r2 13
	ldi	r7 r6 7
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f2 r7 0
	fldi	f3 r0 45
	fbgt	f3 f2 L_else_15331
	addi	r7 r0 0
	jump	L_cont_15332
L_else_15331 : 
	addi	r7 r0 1
L_cont_15332 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_15333
	addi	r7 r0 1
	ldi	r8 r2 7
	add	r5 r5 r8
	sti	r7 r5 0
	ldi	r5 r4 4
	add	r7 r5 r8
	ldi	r7 r7 0
	addi	r9 r0 4121
	sti	r5 r2 14
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 16
	call	L_veccpy_2529
	subi	r2 r2 16
	ldi	r4 r2 7
	ldi	r5 r2 14
	add	r5 r5 r4
	ldi	r5 r5 0
	fldi	f2 r0 9
	fldi	f3 r2 10
	fmul	f2 f2 f3
	addi	r6 r0 0
	addi	r7 r0 0
	add	r7 r5 r7
	fldi	f4 r7 0
	fmul	f4 f4 f2
	add	r6 r5 r6
	fsti	f4 r6 0
	addi	r6 r0 1
	addi	r7 r0 1
	add	r7 r5 r7
	fldi	f4 r7 0
	fmul	f4 f4 f2
	add	r6 r5 r6
	fsti	f4 r6 0
	addi	r6 r0 2
	addi	r7 r0 2
	add	r7 r5 r7
	fldi	f4 r7 0
	fmul	f2 f4 f2
	add	r5 r5 r6
	fsti	f2 r5 0
	ldi	r5 r2 2
	ldi	r6 r5 7
	add	r6 r6 r4
	ldi	r6 r6 0
	addi	r7 r0 4118
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 16
	call	L_veccpy_2529
	subi	r2 r2 16
	jump	L_cont_15334
L_else_15333 : 
	addi	r7 r0 0
	ldi	r8 r2 7
	add	r5 r5 r8
	sti	r7 r5 0
L_cont_15334 : 
	fldi	f2 r0 8
	addi	r5 r0 4118
	ldi	r4 r2 6
	fsti	f2 r2 16
	addi	r2 r2 19
	call	L_veciprod_2540
	subi	r2 r2 19
	fldi	f3 r2 16
	fmul	f2 f3 f2
	addi	r5 r0 4118
	ldi	r4 r2 6
	addi	r2 r2 19
	call	L_vecaccum_2548
	subi	r2 r2 19
	ldi	r4 r2 13
	ldi	r5 r4 7
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r2 4
	fmul	f2 f3 f2
	addi	r5 r0 0
	addi	r6 r0 4255
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	fsti	f2 r2 18
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 21
	call	L_shadow_check_one_or_matrix_2794
	subi	r2 r2 21
	addi	r5 r0 0
	bne	r4 r5 L_else_15336
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 21
	call	L_veciprod_2540
	subi	r2 r2 21
	fsub	f2 f0 f2
	fldi	f3 r2 10
	fmul	f2 f2 f3
	addi	r5 r0 4111
	ldi	r4 r2 6
	fsti	f2 r2 20
	addi	r2 r2 23
	call	L_veciprod_2540
	subi	r2 r2 23
	fsub	f3 f0 f2
	fldi	f2 r2 20
	fldi	f4 r2 18
	addi	r2 r2 23
	call	L_add_light_2837
	subi	r2 r2 23
	jump	L_cont_15337
L_else_15336 : 
L_cont_15337 : 
	addi	r4 r0 4114
	addi	r2 r2 23
	call	L_setup_startp_2760
	subi	r2 r2 23
	addi	r4 r0 4147
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r4 r4 r5
	fldi	f2 r2 10
	fldi	f3 r2 18
	ldi	r5 r2 6
	addi	r2 r2 23
	call	L_trace_reflections_2841
	subi	r2 r2 23
	fldi	f2 r0 7
	fldi	f3 r2 4
	fbgt	f3 f2 L_else_15338
	addi	r4 r0 0
	jump	L_cont_15339
L_else_15338 : 
	addi	r4 r0 1
L_cont_15339 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15340
	return
L_else_15340 : 
	addi	r4 r0 4
	ldi	r5 r2 7
	bgt	r4 r5 L_else_15342
	jump	L_cont_15343
L_else_15342 : 
	addi	r4 r0 1
	add	r4 r5 r4
	addi	r6 r0 -1
	ldi	r7 r2 8
	add	r4 r7 r4
	sti	r6 r4 0
L_cont_15343 : 
	addi	r4 r0 2
	ldi	r6 r2 9
	bne	r6 r4 L_else_15344
	fldi	f2 r0 44
	ldi	r4 r2 13
	ldi	r4 r4 7
	addi	r6 r0 0
	add	r4 r4 r6
	fldi	f4 r4 0
	fsub	f2 f2 f4
	fmul	f2 f3 f2
	addi	r4 r0 1
	add	r4 r5 r4
	addi	r5 r0 4154
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fldi	f4 r2 0
	fadd	f3 f4 f3
	ldi	r5 r2 6
	ldi	r6 r2 2
	jump	L_trace_ray_2846
L_else_15344 : 
	return
L_else_15315 : 
	return
L_iter_trace_diffuse_rays_2855 : 
	addi	r8 r0 0
	bgt	r8 r7 L_else_15347
	add	r8 r4 r7
	ldi	r8 r8 0
	ldi	r8 r8 0
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r7 r2 2
	sti	r4 r2 3
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_veciprod_2540
	subi	r2 r2 5
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_15348
	addi	r4 r0 0
	jump	L_cont_15349
L_else_15348 : 
	addi	r4 r0 1
L_cont_15349 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15350
	ldi	r4 r2 2
	ldi	r5 r2 3
	add	r6 r5 r4
	ldi	r6 r6 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	fsti	f2 r2 4
	sti	r6 r2 6
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_judge_intersection_fast_2823
	subi	r2 r2 8
	addi	r5 r0 0
	bne	r4 r5 L_else_15352
	jump	L_cont_15353
L_else_15352 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 6
	ldi	r5 r5 0
	sti	r4 r2 7
	addi	r2 r2 9
	call	L_get_nvector_2831
	subi	r2 r2 9
	addi	r5 r0 4114
	ldi	r4 r2 7
	addi	r2 r2 9
	call	L_utexture_2834
	subi	r2 r2 9
	addi	r4 r0 0
	addi	r5 r0 4255
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r2 r2 9
	call	L_shadow_check_one_or_matrix_2794
	subi	r2 r2 9
	addi	r5 r0 0
	bne	r4 r5 L_else_15354
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 9
	call	L_veciprod_2540
	subi	r2 r2 9
	fsub	f2 f0 f2
	fldi	f3 r0 37
	fbgt	f2 f3 L_else_15356
	addi	r4 r0 0
	jump	L_cont_15357
L_else_15356 : 
	addi	r4 r0 1
L_cont_15357 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15358
	fldi	f2 r0 37
	jump	L_cont_15359
L_else_15358 : 
	fadd	f2 f0 f2
L_cont_15359 : 
	addi	r4 r0 4124
	fldi	f3 r2 4
	fmul	f2 f3 f2
	ldi	r5 r2 7
	ldi	r5 r5 7
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fmul	f2 f2 f3
	addi	r5 r0 4121
	addi	r2 r2 9
	call	L_vecaccum_2548
	subi	r2 r2 9
	jump	L_cont_15355
L_else_15354 : 
L_cont_15355 : 
L_cont_15353 : 
	jump	L_cont_15351
L_else_15350 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r6 r2 3
	add	r4 r6 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	fsti	f2 r2 8
	sti	r4 r2 10
	addi	r2 r2 12
	call	L_judge_intersection_fast_2823
	subi	r2 r2 12
	addi	r5 r0 0
	bne	r4 r5 L_else_15360
	jump	L_cont_15361
L_else_15360 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 10
	ldi	r5 r5 0
	sti	r4 r2 11
	addi	r2 r2 13
	call	L_get_nvector_2831
	subi	r2 r2 13
	addi	r5 r0 4114
	ldi	r4 r2 11
	addi	r2 r2 13
	call	L_utexture_2834
	subi	r2 r2 13
	addi	r4 r0 0
	addi	r5 r0 4255
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r2 r2 13
	call	L_shadow_check_one_or_matrix_2794
	subi	r2 r2 13
	addi	r5 r0 0
	bne	r4 r5 L_else_15362
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 13
	call	L_veciprod_2540
	subi	r2 r2 13
	fsub	f2 f0 f2
	fldi	f3 r0 37
	fbgt	f2 f3 L_else_15364
	addi	r4 r0 0
	jump	L_cont_15365
L_else_15364 : 
	addi	r4 r0 1
L_cont_15365 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15366
	fldi	f2 r0 37
	jump	L_cont_15367
L_else_15366 : 
	fadd	f2 f0 f2
L_cont_15367 : 
	addi	r4 r0 4124
	fldi	f3 r2 8
	fmul	f2 f3 f2
	ldi	r5 r2 11
	ldi	r5 r5 7
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fmul	f2 f2 f3
	addi	r5 r0 4121
	addi	r2 r2 13
	call	L_vecaccum_2548
	subi	r2 r2 13
	jump	L_cont_15363
L_else_15362 : 
L_cont_15363 : 
L_cont_15361 : 
L_cont_15351 : 
	addi	r4 r0 2
	ldi	r5 r2 2
	sub	r7 r5 r4
	ldi	r4 r2 3
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_iter_trace_diffuse_rays_2855
L_else_15347 : 
	return
L_do_without_neighbors_2877 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_15369
	ldi	r6 r4 2
	addi	r7 r0 0
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r7 r6 L_else_15370
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r6 r7 L_else_15371
	jump	L_cont_15372
L_else_15371 : 
	ldi	r6 r4 5
	ldi	r7 r4 7
	ldi	r8 r4 1
	ldi	r9 r4 4
	addi	r10 r0 4124
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r9 r2 2
	sti	r8 r2 3
	sti	r7 r2 4
	add	r5 r0 r6
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_veccpy_2529
	subi	r2 r2 6
	ldi	r4 r2 0
	ldi	r5 r4 6
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	ldi	r6 r2 1
	ldi	r7 r2 4
	add	r7 r7 r6
	ldi	r7 r7 0
	ldi	r8 r2 3
	add	r8 r8 r6
	ldi	r8 r8 0
	addi	r9 r0 0
	sti	r7 r2 5
	sti	r8 r2 6
	sti	r5 r2 7
	bne	r5 r9 L_else_15373
	jump	L_cont_15374
L_else_15373 : 
	addi	r9 r0 4148
	addi	r10 r0 0
	add	r9 r9 r10
	ldi	r9 r9 0
	sti	r9 r2 8
	add	r4 r0 r8
	addi	r2 r2 10
	call	L_setup_startp_2760
	subi	r2 r2 10
	addi	r7 r0 118
	ldi	r4 r2 8
	ldi	r5 r2 5
	ldi	r6 r2 6
	addi	r2 r2 10
	call	L_iter_trace_diffuse_rays_2855
	subi	r2 r2 10
L_cont_15374 : 
	addi	r4 r0 1
	ldi	r5 r2 7
	bne	r5 r4 L_else_15375
	jump	L_cont_15376
L_else_15375 : 
	addi	r4 r0 4148
	addi	r6 r0 1
	add	r4 r4 r6
	ldi	r4 r4 0
	ldi	r6 r2 6
	sti	r4 r2 9
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_setup_startp_2760
	subi	r2 r2 11
	addi	r7 r0 118
	ldi	r4 r2 9
	ldi	r5 r2 5
	ldi	r6 r2 6
	addi	r2 r2 11
	call	L_iter_trace_diffuse_rays_2855
	subi	r2 r2 11
L_cont_15376 : 
	addi	r4 r0 2
	ldi	r5 r2 7
	bne	r5 r4 L_else_15377
	jump	L_cont_15378
L_else_15377 : 
	addi	r4 r0 4148
	addi	r6 r0 2
	add	r4 r4 r6
	ldi	r4 r4 0
	ldi	r6 r2 6
	sti	r4 r2 10
	add	r4 r0 r6
	addi	r2 r2 12
	call	L_setup_startp_2760
	subi	r2 r2 12
	addi	r7 r0 118
	ldi	r4 r2 10
	ldi	r5 r2 5
	ldi	r6 r2 6
	addi	r2 r2 12
	call	L_iter_trace_diffuse_rays_2855
	subi	r2 r2 12
L_cont_15378 : 
	addi	r4 r0 3
	ldi	r5 r2 7
	bne	r5 r4 L_else_15379
	jump	L_cont_15380
L_else_15379 : 
	addi	r4 r0 4148
	addi	r6 r0 3
	add	r4 r4 r6
	ldi	r4 r4 0
	ldi	r6 r2 6
	sti	r4 r2 11
	add	r4 r0 r6
	addi	r2 r2 13
	call	L_setup_startp_2760
	subi	r2 r2 13
	addi	r7 r0 118
	ldi	r4 r2 11
	ldi	r5 r2 5
	ldi	r6 r2 6
	addi	r2 r2 13
	call	L_iter_trace_diffuse_rays_2855
	subi	r2 r2 13
L_cont_15380 : 
	addi	r4 r0 4
	ldi	r5 r2 7
	bne	r5 r4 L_else_15381
	jump	L_cont_15382
L_else_15381 : 
	addi	r4 r0 4148
	addi	r5 r0 4
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 6
	sti	r4 r2 12
	add	r4 r0 r5
	addi	r2 r2 14
	call	L_setup_startp_2760
	subi	r2 r2 14
	addi	r7 r0 118
	ldi	r4 r2 12
	ldi	r5 r2 5
	ldi	r6 r2 6
	addi	r2 r2 14
	call	L_iter_trace_diffuse_rays_2855
	subi	r2 r2 14
L_cont_15382 : 
	addi	r4 r0 4127
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 4124
	add	r5 r0 r6
	add	r6 r0 r7
	addi	r2 r2 14
	call	L_vecaccumv_2561
	subi	r2 r2 14
L_cont_15372 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r5 r5 r4
	ldi	r4 r2 0
	jump	L_do_without_neighbors_2877
L_else_15370 : 
	return
L_else_15369 : 
	return
L_try_exploit_neighbors_2893 : 
	add	r10 r7 r4
	ldi	r10 r10 0
	addi	r11 r0 4
	bgt	r9 r11 L_else_15385
	addi	r11 r0 0
	ldi	r12 r10 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bgt	r11 r12 L_else_15386
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
	bne	r12 r11 L_else_15387
	add	r12 r8 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_15389
	addi	r12 r0 1
	sub	r12 r4 r12
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_15391
	addi	r12 r0 1
	add	r12 r4 r12
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_15393
	addi	r11 r0 1
	jump	L_cont_15394
L_else_15393 : 
	addi	r11 r0 0
L_cont_15394 : 
	jump	L_cont_15392
L_else_15391 : 
	addi	r11 r0 0
L_cont_15392 : 
	jump	L_cont_15390
L_else_15389 : 
	addi	r11 r0 0
L_cont_15390 : 
	jump	L_cont_15388
L_else_15387 : 
	addi	r11 r0 0
L_cont_15388 : 
	addi	r12 r0 0
	bne	r11 r12 L_else_15395
	add	r4 r7 r4
	ldi	r4 r4 0
	add	r5 r0 r9
	jump	L_do_without_neighbors_2877
L_else_15395 : 
	ldi	r10 r10 3
	add	r10 r10 r9
	ldi	r10 r10 0
	addi	r11 r0 0
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r5 r2 3
	sti	r4 r2 4
	sti	r9 r2 5
	bne	r10 r11 L_else_15396
	jump	L_cont_15397
L_else_15396 : 
	add	r10 r6 r4
	ldi	r10 r10 0
	ldi	r10 r10 5
	addi	r11 r0 1
	sub	r11 r4 r11
	add	r11 r7 r11
	ldi	r11 r11 0
	ldi	r11 r11 5
	add	r12 r7 r4
	ldi	r12 r12 0
	ldi	r12 r12 5
	addi	r13 r0 1
	add	r13 r4 r13
	add	r13 r7 r13
	ldi	r13 r13 0
	ldi	r13 r13 5
	add	r14 r8 r4
	ldi	r14 r14 0
	ldi	r14 r14 5
	addi	r15 r0 4124
	add	r10 r10 r9
	ldi	r10 r10 0
	sti	r14 r2 6
	sti	r13 r2 7
	sti	r12 r2 8
	sti	r11 r2 9
	add	r5 r0 r10
	add	r4 r0 r15
	addi	r2 r2 11
	call	L_veccpy_2529
	subi	r2 r2 11
	addi	r4 r0 4124
	ldi	r5 r2 5
	ldi	r6 r2 9
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	addi	r8 r0 0
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f3 r8 0
	fadd	f2 f2 f3
	add	r7 r4 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f3 r8 0
	fadd	f2 f2 f3
	add	r7 r4 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 2
	add	r6 r6 r8
	fldi	f3 r6 0
	fadd	f2 f2 f3
	add	r4 r4 r7
	fsti	f2 r4 0
	addi	r4 r0 4124
	ldi	r6 r2 8
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	addi	r8 r0 0
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f3 r8 0
	fadd	f2 f2 f3
	add	r7 r4 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f3 r8 0
	fadd	f2 f2 f3
	add	r7 r4 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 2
	add	r6 r6 r8
	fldi	f3 r6 0
	fadd	f2 f2 f3
	add	r4 r4 r7
	fsti	f2 r4 0
	addi	r4 r0 4124
	ldi	r6 r2 7
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	addi	r8 r0 0
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f3 r8 0
	fadd	f2 f2 f3
	add	r7 r4 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f3 r8 0
	fadd	f2 f2 f3
	add	r7 r4 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 2
	add	r6 r6 r8
	fldi	f3 r6 0
	fadd	f2 f2 f3
	add	r4 r4 r7
	fsti	f2 r4 0
	addi	r4 r0 4124
	ldi	r6 r2 6
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	addi	r8 r0 0
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f3 r8 0
	fadd	f2 f2 f3
	add	r7 r4 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f3 r8 0
	fadd	f2 f2 f3
	add	r7 r4 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r4 r8
	fldi	f2 r8 0
	addi	r8 r0 2
	add	r6 r6 r8
	fldi	f3 r6 0
	fadd	f2 f2 f3
	add	r4 r4 r7
	fsti	f2 r4 0
	ldi	r4 r2 4
	ldi	r6 r2 1
	add	r7 r6 r4
	ldi	r7 r7 0
	ldi	r7 r7 4
	addi	r8 r0 4127
	add	r7 r7 r5
	ldi	r7 r7 0
	addi	r9 r0 4124
	add	r6 r0 r9
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 11
	call	L_vecaccumv_2561
	subi	r2 r2 11
L_cont_15397 : 
	addi	r4 r0 1
	ldi	r5 r2 5
	add	r9 r5 r4
	ldi	r4 r2 4
	ldi	r5 r2 3
	ldi	r6 r2 2
	ldi	r7 r2 1
	ldi	r8 r2 0
	jump	L_try_exploit_neighbors_2893
L_else_15386 : 
	return
L_else_15385 : 
	return
L_pretrace_diffuse_rays_2906 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_15400
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	bgt	r7 r6 L_else_15401
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r6 r7 L_else_15402
	jump	L_cont_15403
L_else_15402 : 
	ldi	r6 r4 6
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 4124
	fldi	f2 r0 37
	sti	r6 r2 2
	add	r4 r0 r7
	addi	r2 r2 4
	call	L_vecfill_2524
	subi	r2 r2 4
	ldi	r4 r2 0
	ldi	r5 r4 7
	ldi	r6 r4 1
	addi	r7 r0 4148
	ldi	r8 r2 2
	add	r7 r7 r8
	ldi	r7 r7 0
	ldi	r8 r2 1
	add	r5 r5 r8
	ldi	r5 r5 0
	add	r6 r6 r8
	ldi	r6 r6 0
	sti	r6 r2 3
	sti	r5 r2 4
	sti	r7 r2 5
	add	r4 r0 r6
	addi	r2 r2 7
	call	L_setup_startp_2760
	subi	r2 r2 7
	addi	r7 r0 118
	ldi	r4 r2 5
	ldi	r5 r2 4
	ldi	r6 r2 3
	addi	r2 r2 7
	call	L_iter_trace_diffuse_rays_2855
	subi	r2 r2 7
	ldi	r4 r2 0
	ldi	r5 r4 5
	ldi	r6 r2 1
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r7 r0 4124
	add	r4 r0 r5
	add	r5 r0 r7
	addi	r2 r2 7
	call	L_veccpy_2529
	subi	r2 r2 7
L_cont_15403 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r5 r5 r4
	ldi	r4 r2 0
	jump	L_pretrace_diffuse_rays_2906
L_else_15401 : 
	return
L_else_15400 : 
	return
L_pretrace_pixels_2909 : 
	addi	r7 r0 0
	bgt	r7 r5 L_else_15406
	addi	r7 r0 4134
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f5 r7 0
	addi	r7 r0 4132
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	sub	r7 r5 r7
	foi	f6 r7
	fmul	f5 f5 f6
	addi	r7 r0 4141
	addi	r8 r0 0
	addi	r9 r0 4102
	addi	r10 r0 0
	add	r9 r9 r10
	fldi	f6 r9 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	add	r7 r7 r8
	fsti	f6 r7 0
	addi	r7 r0 4141
	addi	r8 r0 1
	addi	r9 r0 4102
	addi	r10 r0 1
	add	r9 r9 r10
	fldi	f6 r9 0
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	add	r7 r7 r8
	fsti	f6 r7 0
	addi	r7 r0 4141
	addi	r8 r0 2
	addi	r9 r0 4102
	addi	r10 r0 2
	add	r9 r9 r10
	fldi	f6 r9 0
	fmul	f5 f5 f6
	fadd	f5 f5 f4
	add	r7 r7 r8
	fsti	f5 r7 0
	addi	r7 r0 4141
	addi	r8 r0 0
	fsti	f4 r2 0
	fsti	f3 r2 2
	fsti	f2 r2 4
	sti	r6 r2 6
	sti	r5 r2 7
	sti	r4 r2 8
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 10
	call	L_vecunit_sgn_2537
	subi	r2 r2 10
	addi	r4 r0 4127
	fldi	f2 r0 37
	addi	r2 r2 10
	call	L_vecfill_2524
	subi	r2 r2 10
	addi	r4 r0 4135
	addi	r5 r0 4108
	addi	r2 r2 10
	call	L_veccpy_2529
	subi	r2 r2 10
	addi	r4 r0 0
	fldi	f2 r0 44
	addi	r5 r0 4141
	ldi	r6 r2 7
	ldi	r7 r2 8
	add	r8 r7 r6
	ldi	r8 r8 0
	fldi	f3 r0 37
	add	r6 r0 r8
	addi	r2 r2 10
	call	L_trace_ray_2846
	subi	r2 r2 10
	ldi	r4 r2 7
	ldi	r5 r2 8
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r7 r0 4127
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 10
	call	L_veccpy_2529
	subi	r2 r2 10
	ldi	r4 r2 7
	ldi	r5 r2 8
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 6
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r7 r2 6
	sti	r7 r6 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r8 r0 0
	add	r5 r0 r8
	add	r4 r0 r6
	addi	r2 r2 10
	call	L_pretrace_diffuse_rays_2906
	subi	r2 r2 10
	addi	r4 r0 1
	ldi	r5 r2 7
	sub	r4 r5 r4
	addi	r5 r0 1
	ldi	r6 r2 6
	sti	r4 r2 9
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_add_mod5_2516
	subi	r2 r2 11
	add	r6 r0 r4
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r4 r2 8
	ldi	r5 r2 9
	jump	L_pretrace_pixels_2909
L_else_15406 : 
	return
L_pretrace_line_2916 : 
	addi	r7 r0 4134
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f2 r7 0
	addi	r7 r0 4132
	addi	r8 r0 1
	add	r7 r7 r8
	ldi	r7 r7 0
	sub	r5 r5 r7
	foi	f3 r5
	fmul	f2 f2 f3
	addi	r5 r0 4105
	addi	r7 r0 0
	add	r5 r5 r7
	fldi	f3 r5 0
	fmul	f3 f2 f3
	addi	r5 r0 4099
	addi	r7 r0 0
	add	r5 r5 r7
	fldi	f4 r5 0
	fadd	f3 f3 f4
	addi	r5 r0 4105
	addi	r7 r0 1
	add	r5 r5 r7
	fldi	f4 r5 0
	fmul	f4 f2 f4
	addi	r5 r0 4099
	addi	r7 r0 1
	add	r5 r5 r7
	fldi	f5 r5 0
	fadd	f4 f4 f5
	addi	r5 r0 4105
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f5 r5 0
	fmul	f2 f2 f5
	addi	r5 r0 4099
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f5 r5 0
	fadd	f2 f2 f5
	addi	r5 r0 4130
	addi	r7 r0 0
	add	r5 r5 r7
	ldi	r5 r5 0
	addi	r7 r0 1
	sub	r5 r5 r7
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	jump	L_pretrace_pixels_2909
L_scan_pixel_2920 : 
	addi	r9 r0 4130
	addi	r10 r0 0
	add	r9 r9 r10
	ldi	r9 r9 0
	bgt	r9 r4 L_else_15408
	return
L_else_15408 : 
	addi	r9 r0 4127
	add	r10 r7 r4
	ldi	r10 r10 0
	ldi	r10 r10 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r4 r2 3
	sti	r5 r2 4
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_veccpy_2529
	subi	r2 r2 6
	addi	r4 r0 4130
	addi	r5 r0 1
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	ldi	r6 r2 4
	add	r5 r6 r5
	bgt	r4 r5 L_else_15410
	addi	r4 r0 0
	jump	L_cont_15411
L_else_15410 : 
	addi	r4 r0 0
	bgt	r6 r4 L_else_15412
	addi	r4 r0 0
	jump	L_cont_15413
L_else_15412 : 
	addi	r4 r0 4130
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	ldi	r7 r2 3
	add	r5 r7 r5
	bgt	r4 r5 L_else_15414
	addi	r4 r0 0
	jump	L_cont_15415
L_else_15414 : 
	addi	r4 r0 0
	bgt	r7 r4 L_else_15416
	addi	r4 r0 0
	jump	L_cont_15417
L_else_15416 : 
	addi	r4 r0 1
L_cont_15417 : 
L_cont_15415 : 
L_cont_15413 : 
L_cont_15411 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_15418
	ldi	r4 r2 3
	ldi	r5 r2 2
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 0
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_do_without_neighbors_2877
	subi	r2 r2 6
	jump	L_cont_15419
L_else_15418 : 
	addi	r9 r0 0
	ldi	r4 r2 3
	ldi	r5 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 0
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 6
	call	L_try_exploit_neighbors_2893
	subi	r2 r2 6
L_cont_15419 : 
	addi	r4 r0 4127
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r2 r2 6
	call	min_caml_print_float
	subi	r2 r2 6
	addi	r4 r0 4127
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r2 r2 6
	call	min_caml_print_float
	subi	r2 r2 6
	addi	r4 r0 4127
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r2 r2 6
	call	min_caml_print_float
	subi	r2 r2 6
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r5 r2 4
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 0
	jump	L_scan_pixel_2920
L_scan_line_2926 : 
	addi	r9 r0 4130
	addi	r10 r0 1
	add	r9 r9 r10
	ldi	r9 r9 0
	bgt	r9 r4 L_else_15420
	return
L_else_15420 : 
	addi	r9 r0 4130
	addi	r10 r0 1
	add	r9 r9 r10
	ldi	r9 r9 0
	addi	r10 r0 1
	sub	r9 r9 r10
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r5 r2 3
	sti	r4 r2 4
	bgt	r9 r4 L_else_15422
	jump	L_cont_15423
L_else_15422 : 
	addi	r9 r0 1
	add	r9 r4 r9
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_pretrace_line_2916
	subi	r2 r2 6
L_cont_15423 : 
	addi	r4 r0 0
	ldi	r5 r2 4
	ldi	r6 r2 3
	ldi	r7 r2 2
	ldi	r8 r2 1
	addi	r2 r2 6
	call	L_scan_pixel_2920
	subi	r2 r2 6
	addi	r4 r0 1
	ldi	r5 r2 4
	add	r4 r5 r4
	addi	r5 r0 2
	ldi	r6 r2 0
	sti	r4 r2 5
	add	r4 r0 r6
	addi	r2 r2 7
	call	L_add_mod5_2516
	subi	r2 r2 7
	add	r8 r0 r4
	ldi	r4 r2 5
	ldi	r5 r2 2
	ldi	r6 r2 1
	ldi	r7 r2 3
	jump	L_scan_line_2926
L_create_pixel_2934 : 
	addi	r4 r0 3
	fldi	f2 r0 37
	addi	r2 r2 1
	call	min_caml_create_float_array
	subi	r2 r2 1
	addi	r5 r0 3
	fldi	f2 r0 37
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
	addi	r5 r0 1
	addi	r6 r0 3
	fldi	f2 r0 37
	sti	r5 r2 1
	sti	r4 r2 2
	add	r4 r0 r6
	addi	r2 r2 4
	call	min_caml_create_float_array
	subi	r2 r2 4
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 2
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	min_caml_create_float_array
	subi	r2 r2 5
	ldi	r5 r2 3
	ldi	r6 r2 2
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 3
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 4
	add	r4 r0 r5
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	ldi	r6 r2 2
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 4
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 5
	add	r4 r0 r5
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	ldi	r6 r2 2
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 5
	addi	r5 r0 0
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	addi	r5 r0 3
	fldi	f2 r0 37
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
	addi	r5 r0 1
	addi	r6 r0 3
	fldi	f2 r0 37
	sti	r5 r2 8
	sti	r4 r2 9
	add	r4 r0 r6
	addi	r2 r2 11
	call	min_caml_create_float_array
	subi	r2 r2 11
	ldi	r5 r2 8
	ldi	r6 r2 9
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 2
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 10
	add	r4 r0 r5
	addi	r2 r2 12
	call	min_caml_create_float_array
	subi	r2 r2 12
	ldi	r5 r2 10
	ldi	r6 r2 9
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 3
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 11
	add	r4 r0 r5
	addi	r2 r2 13
	call	min_caml_create_float_array
	subi	r2 r2 13
	ldi	r5 r2 11
	ldi	r6 r2 9
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 4
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 12
	add	r4 r0 r5
	addi	r2 r2 14
	call	min_caml_create_float_array
	subi	r2 r2 14
	ldi	r5 r2 12
	ldi	r6 r2 9
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 3
	fldi	f2 r0 37
	addi	r2 r2 14
	call	min_caml_create_float_array
	subi	r2 r2 14
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 14
	call	min_caml_create_array
	subi	r2 r2 14
	addi	r5 r0 1
	addi	r6 r0 3
	fldi	f2 r0 37
	sti	r5 r2 13
	sti	r4 r2 14
	add	r4 r0 r6
	addi	r2 r2 16
	call	min_caml_create_float_array
	subi	r2 r2 16
	ldi	r5 r2 13
	ldi	r6 r2 14
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 2
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 15
	add	r4 r0 r5
	addi	r2 r2 17
	call	min_caml_create_float_array
	subi	r2 r2 17
	ldi	r5 r2 15
	ldi	r6 r2 14
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 3
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 16
	add	r4 r0 r5
	addi	r2 r2 18
	call	min_caml_create_float_array
	subi	r2 r2 18
	ldi	r5 r2 16
	ldi	r6 r2 14
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 4
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 17
	add	r4 r0 r5
	addi	r2 r2 19
	call	min_caml_create_float_array
	subi	r2 r2 19
	ldi	r5 r2 17
	ldi	r6 r2 14
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 1
	addi	r5 r0 0
	addi	r2 r2 19
	call	min_caml_create_array
	subi	r2 r2 19
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 18
	add	r4 r0 r5
	addi	r2 r2 20
	call	min_caml_create_float_array
	subi	r2 r2 20
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 20
	call	min_caml_create_array
	subi	r2 r2 20
	addi	r5 r0 1
	addi	r6 r0 3
	fldi	f2 r0 37
	sti	r5 r2 19
	sti	r4 r2 20
	add	r4 r0 r6
	addi	r2 r2 22
	call	min_caml_create_float_array
	subi	r2 r2 22
	ldi	r5 r2 19
	ldi	r6 r2 20
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 2
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 21
	add	r4 r0 r5
	addi	r2 r2 23
	call	min_caml_create_float_array
	subi	r2 r2 23
	ldi	r5 r2 21
	ldi	r6 r2 20
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 3
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 22
	add	r4 r0 r5
	addi	r2 r2 24
	call	min_caml_create_float_array
	subi	r2 r2 24
	ldi	r5 r2 22
	ldi	r6 r2 20
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 4
	addi	r5 r0 3
	fldi	f2 r0 37
	sti	r4 r2 23
	add	r4 r0 r5
	addi	r2 r2 25
	call	min_caml_create_float_array
	subi	r2 r2 25
	ldi	r5 r2 23
	ldi	r6 r2 20
	add	r5 r6 r5
	sti	r4 r5 0
	add	r4 r0 r3
	addi	r3 r3 8
	sti	r6 r4 7
	ldi	r5 r2 18
	sti	r5 r4 6
	ldi	r5 r2 14
	sti	r5 r4 5
	ldi	r5 r2 9
	sti	r5 r4 4
	ldi	r5 r2 7
	sti	r5 r4 3
	ldi	r5 r2 6
	sti	r5 r4 2
	ldi	r5 r2 2
	sti	r5 r4 1
	ldi	r5 r2 0
	sti	r5 r4 0
	add	r4 r0 r4
	return
L_init_line_elements_2936 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_15424
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 3
	call	L_create_pixel_2934
	subi	r2 r2 3
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	jump	L_init_line_elements_2936
L_else_15424 : 
	add	r4 r0 r4
	return
L_calc_dirvec_2946 : 
	addi	r7 r0 5
	bgt	r7 r4 L_else_15425
	fmul	f4 f2 f2
	fmul	f5 f3 f3
	fadd	f4 f4 f5
	fldi	f5 r0 44
	fadd	f4 f4 f5
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f3 r2 2
	fsti	f2 r2 4
	fadd	f2 f0 f4
	addi	r2 r2 7
	call	L_sqrt_2502
	subi	r2 r2 7
	fldi	f3 r2 4
	fdiv	f3 f3 f2
	fldi	f4 r2 2
	fdiv	f4 f4 f2
	fldi	f5 r0 44
	fdiv	f2 f5 f2
	addi	r4 r0 4148
	ldi	r5 r2 1
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 0
	add	r6 r4 r5
	ldi	r6 r6 0
	ldi	r6 r6 0
	fsti	f2 r2 6
	fsti	f3 r2 8
	fsti	f4 r2 10
	sti	r4 r2 12
	add	r4 r0 r6
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 14
	call	L_vecset_2519
	subi	r2 r2 14
	addi	r4 r0 40
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r6 r2 12
	add	r4 r6 r4
	ldi	r4 r4 0
	ldi	r4 r4 0
	fldi	f2 r2 10
	fsub	f4 f0 f2
	fldi	f3 r2 8
	fldi	f5 r2 6
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	addi	r2 r2 14
	call	L_vecset_2519
	subi	r2 r2 14
	addi	r4 r0 80
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r6 r2 12
	add	r4 r6 r4
	ldi	r4 r4 0
	ldi	r4 r4 0
	fldi	f2 r2 8
	fsub	f3 f0 f2
	fldi	f4 r2 10
	fsub	f5 f0 f4
	fldi	f6 r2 6
	fadd	f4 f0 f5
	fadd	f2 f0 f6
	addi	r2 r2 14
	call	L_vecset_2519
	subi	r2 r2 14
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r6 r2 12
	add	r4 r6 r4
	ldi	r4 r4 0
	ldi	r4 r4 0
	fldi	f2 r2 8
	fsub	f3 f0 f2
	fldi	f4 r2 10
	fsub	f5 f0 f4
	fldi	f6 r2 6
	fsub	f7 f0 f6
	fadd	f4 f0 f7
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	addi	r2 r2 14
	call	L_vecset_2519
	subi	r2 r2 14
	addi	r4 r0 41
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r6 r2 12
	add	r4 r6 r4
	ldi	r4 r4 0
	ldi	r4 r4 0
	fldi	f2 r2 8
	fsub	f3 f0 f2
	fldi	f4 r2 6
	fsub	f5 f0 f4
	fldi	f6 r2 10
	fadd	f4 f0 f6
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	addi	r2 r2 14
	call	L_vecset_2519
	subi	r2 r2 14
	addi	r4 r0 81
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r5 r2 12
	add	r4 r5 r4
	ldi	r4 r4 0
	ldi	r4 r4 0
	fldi	f2 r2 6
	fsub	f2 f0 f2
	fldi	f3 r2 8
	fldi	f4 r2 10
	jump	L_vecset_2519
L_else_15425 : 
	fmul	f2 f3 f3
	fldi	f3 r0 7
	fadd	f2 f2 f3
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f5 r2 14
	sti	r4 r2 16
	fsti	f4 r2 18
	addi	r2 r2 21
	call	L_sqrt_2502
	subi	r2 r2 21
	fldi	f3 r0 44
	fdiv	f3 f3 f2
	fsti	f2 r2 20
	fadd	f2 f0 f3
	addi	r2 r2 23
	call	L_atan_2496
	subi	r2 r2 23
	fldi	f3 r2 18
	fmul	f2 f2 f3
	fsti	f2 r2 22
	addi	r2 r2 25
	call	L_sin_2492
	subi	r2 r2 25
	fldi	f3 r2 22
	fsti	f2 r2 24
	fadd	f2 f0 f3
	addi	r2 r2 27
	call	L_cos_2494
	subi	r2 r2 27
	fldi	f3 r2 24
	fdiv	f2 f3 f2
	fldi	f3 r2 20
	fmul	f2 f2 f3
	addi	r4 r0 1
	ldi	r5 r2 16
	add	r4 r5 r4
	fmul	f3 f2 f2
	fldi	f4 r0 7
	fadd	f3 f3 f4
	fsti	f2 r2 26
	sti	r4 r2 28
	fadd	f2 f0 f3
	addi	r2 r2 30
	call	L_sqrt_2502
	subi	r2 r2 30
	fldi	f3 r0 44
	fdiv	f3 f3 f2
	fsti	f2 r2 30
	fadd	f2 f0 f3
	addi	r2 r2 33
	call	L_atan_2496
	subi	r2 r2 33
	fldi	f3 r2 14
	fmul	f2 f2 f3
	fsti	f2 r2 32
	addi	r2 r2 35
	call	L_sin_2492
	subi	r2 r2 35
	fldi	f3 r2 32
	fsti	f2 r2 34
	fadd	f2 f0 f3
	addi	r2 r2 37
	call	L_cos_2494
	subi	r2 r2 37
	fldi	f3 r2 34
	fdiv	f2 f3 f2
	fldi	f3 r2 30
	fmul	f3 f2 f3
	fldi	f2 r2 26
	fldi	f4 r2 18
	fldi	f5 r2 14
	ldi	r4 r2 28
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_calc_dirvec_2946
L_calc_dirvecs_2954 : 
	addi	r7 r0 0
	bgt	r7 r4 L_else_15429
	foi	f3 r4
	fldi	f4 r0 4
	fmul	f3 f3 f4
	fldi	f4 r0 3
	fsub	f4 f3 f4
	addi	r7 r0 0
	fldi	f3 r0 37
	fldi	f5 r0 37
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
	call	L_calc_dirvec_2946
	subi	r2 r2 6
	ldi	r4 r2 4
	foi	f2 r4
	fldi	f3 r0 4
	fmul	f2 f2 f3
	fldi	f3 r0 7
	fadd	f4 f2 f3
	addi	r5 r0 0
	fldi	f2 r0 37
	fldi	f3 r0 37
	addi	r6 r0 2
	ldi	r7 r2 3
	add	r6 r7 r6
	fldi	f5 r2 0
	ldi	r8 r2 2
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 6
	call	L_calc_dirvec_2946
	subi	r2 r2 6
	addi	r4 r0 1
	ldi	r5 r2 4
	sub	r4 r5 r4
	addi	r5 r0 1
	ldi	r6 r2 2
	sti	r4 r2 5
	add	r4 r0 r6
	addi	r2 r2 7
	call	L_add_mod5_2516
	subi	r2 r2 7
	add	r5 r0 r4
	fldi	f2 r2 0
	ldi	r4 r2 5
	ldi	r6 r2 3
	jump	L_calc_dirvecs_2954
L_else_15429 : 
	return
L_calc_dirvec_rows_2959 : 
	addi	r7 r0 0
	bgt	r7 r4 L_else_15431
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
	call	L_calc_dirvecs_2954
	subi	r2 r2 4
	addi	r4 r0 1
	ldi	r5 r2 2
	sub	r4 r5 r4
	addi	r5 r0 2
	ldi	r6 r2 1
	sti	r4 r2 3
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_add_mod5_2516
	subi	r2 r2 5
	add	r5 r0 r4
	addi	r4 r0 4
	ldi	r6 r2 0
	add	r6 r6 r4
	ldi	r4 r2 3
	jump	L_calc_dirvec_rows_2959
L_else_15431 : 
	return
L_create_dirvec_2963 : 
	addi	r4 r0 3
	fldi	f2 r0 37
	addi	r2 r2 1
	call	min_caml_create_float_array
	subi	r2 r2 1
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 0
	addi	r2 r2 2
	call	min_caml_create_array
	subi	r2 r2 2
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 0
	sti	r4 r5 0
	add	r4 r0 r5
	return
L_create_dirvec_elements_2965 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_15433
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 3
	call	L_create_dirvec_2963
	subi	r2 r2 3
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	jump	L_create_dirvec_elements_2965
L_else_15433 : 
	return
L_create_dirvecs_2968 : 
	addi	r5 r0 0
	bgt	r5 r4 L_else_15435
	addi	r5 r0 4148
	addi	r6 r0 120
	sti	r4 r2 0
	sti	r5 r2 1
	sti	r6 r2 2
	addi	r2 r2 4
	call	L_create_dirvec_2963
	subi	r2 r2 4
	add	r5 r0 r4
	ldi	r4 r2 2
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 4148
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r6 r0 118
	add	r5 r0 r6
	addi	r2 r2 4
	call	L_create_dirvec_elements_2965
	subi	r2 r2 4
	addi	r4 r0 1
	ldi	r5 r2 0
	sub	r4 r5 r4
	jump	L_create_dirvecs_2968
L_else_15435 : 
	return
L_init_dirvec_constants_2970 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_15437
	add	r6 r4 r5
	ldi	r6 r6 0
	sti	r4 r2 0
	sti	r5 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_setup_dirvec_constants_2755
	subi	r2 r2 3
	addi	r4 r0 1
	ldi	r5 r2 1
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_init_dirvec_constants_2970
L_else_15437 : 
	return
L_init_vecset_constants_2973 : 
	addi	r5 r0 0
	bgt	r5 r4 L_else_15439
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	sti	r4 r2 0
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 2
	call	L_init_dirvec_constants_2970
	subi	r2 r2 2
	addi	r4 r0 1
	ldi	r5 r2 0
	sub	r4 r5 r4
	jump	L_init_vecset_constants_2973
L_else_15439 : 
	return
L_main_14835 : 
	addi	r4 r0 128
	addi	r5 r0 128
	addi	r6 r0 4130
	addi	r7 r0 0
	add	r6 r6 r7
	sti	r4 r6 0
	addi	r6 r0 4130
	addi	r7 r0 1
	add	r6 r6 r7
	sti	r5 r6 0
	addi	r5 r0 4132
	addi	r6 r0 0
	addi	r7 r0 64
	add	r5 r5 r6
	sti	r7 r5 0
	addi	r5 r0 4132
	addi	r6 r0 1
	addi	r7 r0 64
	add	r5 r5 r6
	sti	r7 r5 0
	addi	r5 r0 4134
	addi	r6 r0 0
	fldi	f2 r0 2
	foi	f3 r4
	fdiv	f2 f2 f3
	add	r4 r5 r6
	fsti	f2 r4 0
	addi	r4 r0 4130
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	sti	r4 r2 0
	addi	r2 r2 2
	call	L_create_pixel_2934
	subi	r2 r2 2
	add	r5 r0 r4
	ldi	r4 r2 0
	addi	r2 r2 2
	call	min_caml_create_array
	subi	r2 r2 2
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 2
	sub	r5 r5 r6
	addi	r2 r2 2
	call	L_init_line_elements_2936
	subi	r2 r2 2
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	sti	r4 r2 1
	sti	r5 r2 2
	addi	r2 r2 4
	call	L_create_pixel_2934
	subi	r2 r2 4
	add	r5 r0 r4
	ldi	r4 r2 2
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 2
	sub	r5 r5 r6
	addi	r2 r2 4
	call	L_init_line_elements_2936
	subi	r2 r2 4
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	sti	r4 r2 3
	sti	r5 r2 4
	addi	r2 r2 6
	call	L_create_pixel_2934
	subi	r2 r2 6
	add	r5 r0 r4
	ldi	r4 r2 4
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 2
	sub	r5 r5 r6
	addi	r2 r2 6
	call	L_init_line_elements_2936
	subi	r2 r2 6
	addi	r5 r0 4096
	addi	r6 r0 0
	sti	r4 r2 5
	sti	r6 r2 6
	sti	r5 r2 7
	addi	r2 r2 9
	call	min_caml_read_float
	subi	r2 r2 9
	ldi	r4 r2 6
	ldi	r5 r2 7
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 4096
	addi	r5 r0 1
	sti	r5 r2 8
	sti	r4 r2 9
	addi	r2 r2 11
	call	min_caml_read_float
	subi	r2 r2 11
	ldi	r4 r2 8
	ldi	r5 r2 9
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 4096
	addi	r5 r0 2
	sti	r5 r2 10
	sti	r4 r2 11
	addi	r2 r2 13
	call	min_caml_read_float
	subi	r2 r2 13
	ldi	r4 r2 10
	ldi	r5 r2 11
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r2 r2 13
	call	min_caml_read_float
	subi	r2 r2 13
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 12
	addi	r2 r2 15
	call	L_cos_2494
	subi	r2 r2 15
	fldi	f3 r2 12
	fsti	f2 r2 14
	fadd	f2 f0 f3
	addi	r2 r2 17
	call	L_sin_2492
	subi	r2 r2 17
	fsti	f2 r2 16
	addi	r2 r2 19
	call	min_caml_read_float
	subi	r2 r2 19
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 18
	addi	r2 r2 21
	call	L_cos_2494
	subi	r2 r2 21
	fldi	f3 r2 18
	fsti	f2 r2 20
	fadd	f2 f0 f3
	addi	r2 r2 23
	call	L_sin_2492
	subi	r2 r2 23
	addi	r4 r0 4099
	addi	r5 r0 0
	fldi	f3 r2 14
	fmul	f4 f3 f2
	fldi	f5 r0 1
	fmul	f4 f4 f5
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 4099
	addi	r5 r0 1
	fldi	f4 r0 0
	fldi	f5 r2 16
	fmul	f4 f5 f4
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 4099
	addi	r5 r0 2
	fldi	f4 r2 20
	fmul	f6 f3 f4
	fldi	f7 r0 1
	fmul	f6 f6 f7
	add	r4 r4 r5
	fsti	f6 r4 0
	addi	r4 r0 4102
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 4102
	addi	r5 r0 1
	fldi	f6 r0 37
	add	r4 r4 r5
	fsti	f6 r4 0
	addi	r4 r0 4102
	addi	r5 r0 2
	fsub	f6 f0 f2
	add	r4 r4 r5
	fsti	f6 r4 0
	addi	r4 r0 4105
	addi	r5 r0 0
	fsub	f6 f0 f5
	fmul	f2 f6 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 4105
	addi	r5 r0 1
	fsub	f2 f0 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 4105
	addi	r5 r0 2
	fsub	f2 f0 f5
	fmul	f2 f2 f4
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 4108
	addi	r5 r0 0
	addi	r6 r0 4096
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f2 r6 0
	addi	r6 r0 4099
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f3 r6 0
	fsub	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 4108
	addi	r5 r0 1
	addi	r6 r0 4096
	addi	r7 r0 1
	add	r6 r6 r7
	fldi	f2 r6 0
	addi	r6 r0 4099
	addi	r7 r0 1
	add	r6 r6 r7
	fldi	f3 r6 0
	fsub	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 4108
	addi	r5 r0 2
	addi	r6 r0 4096
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f2 r6 0
	addi	r6 r0 4099
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	fsub	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r2 r2 23
	call	min_caml_read_int
	subi	r2 r2 23
	addi	r2 r2 23
	call	min_caml_read_float
	subi	r2 r2 23
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 22
	addi	r2 r2 25
	call	L_sin_2492
	subi	r2 r2 25
	addi	r4 r0 4111
	addi	r5 r0 1
	fsub	f2 f0 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r2 r2 25
	call	min_caml_read_float
	subi	r2 r2 25
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fldi	f3 r2 22
	fsti	f2 r2 24
	fadd	f2 f0 f3
	addi	r2 r2 27
	call	L_cos_2494
	subi	r2 r2 27
	fldi	f3 r2 24
	fsti	f2 r2 26
	fadd	f2 f0 f3
	addi	r2 r2 29
	call	L_sin_2492
	subi	r2 r2 29
	addi	r4 r0 4111
	addi	r5 r0 0
	fldi	f3 r2 26
	fmul	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	fldi	f2 r2 24
	addi	r2 r2 29
	call	L_cos_2494
	subi	r2 r2 29
	addi	r4 r0 4111
	addi	r5 r0 2
	fldi	f3 r2 26
	fmul	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 4153
	addi	r5 r0 0
	sti	r5 r2 28
	sti	r4 r2 29
	addi	r2 r2 31
	call	min_caml_read_float
	subi	r2 r2 31
	ldi	r4 r2 28
	ldi	r5 r2 29
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 0
	addi	r2 r2 31
	call	L_read_object_2647
	subi	r2 r2 31
	addi	r4 r0 0
	addi	r2 r2 31
	call	L_read_and_network_2655
	subi	r2 r2 31
	addi	r4 r0 4255
	addi	r5 r0 0
	addi	r6 r0 0
	sti	r5 r2 30
	sti	r4 r2 31
	add	r4 r0 r6
	addi	r2 r2 33
	call	L_read_or_network_2653
	subi	r2 r2 33
	ldi	r5 r2 30
	ldi	r6 r2 31
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 80
	addi	r2 r2 33
	call	min_caml_print_char
	subi	r2 r2 33
	addi	r4 r0 54
	addi	r2 r2 33
	call	min_caml_print_char
	subi	r2 r2 33
	addi	r4 r0 10
	addi	r2 r2 33
	call	min_caml_print_char
	subi	r2 r2 33
	addi	r4 r0 4130
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 0
	sti	r4 r2 32
	addi	r2 r2 34
	call	L_sdiv10_2504
	subi	r2 r2 34
	addi	r5 r0 0
	addi	r2 r2 34
	call	L_sdiv10_2504
	subi	r2 r2 34
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 34
	call	min_caml_print_char
	subi	r2 r2 34
	addi	r5 r0 0
	ldi	r4 r2 32
	addi	r2 r2 34
	call	L_sdiv10_2504
	subi	r2 r2 34
	addi	r5 r0 0
	addi	r2 r2 34
	call	L_sdiv10_2504
	subi	r2 r2 34
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 32
	sub	r4 r5 r4
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 34
	call	L_sdiv10_2504
	subi	r2 r2 34
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 34
	call	min_caml_print_char
	subi	r2 r2 34
	addi	r5 r0 0
	ldi	r4 r2 32
	addi	r2 r2 34
	call	L_sdiv10_2504
	subi	r2 r2 34
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 32
	sub	r4 r5 r4
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 34
	call	min_caml_print_char
	subi	r2 r2 34
	addi	r4 r0 32
	addi	r2 r2 34
	call	min_caml_print_char
	subi	r2 r2 34
	addi	r4 r0 4130
	addi	r5 r0 1
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 0
	sti	r4 r2 33
	addi	r2 r2 35
	call	L_sdiv10_2504
	subi	r2 r2 35
	addi	r5 r0 0
	addi	r2 r2 35
	call	L_sdiv10_2504
	subi	r2 r2 35
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 35
	call	min_caml_print_char
	subi	r2 r2 35
	addi	r5 r0 0
	ldi	r4 r2 33
	addi	r2 r2 35
	call	L_sdiv10_2504
	subi	r2 r2 35
	addi	r5 r0 0
	addi	r2 r2 35
	call	L_sdiv10_2504
	subi	r2 r2 35
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 33
	sub	r4 r5 r4
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 35
	call	L_sdiv10_2504
	subi	r2 r2 35
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 35
	call	min_caml_print_char
	subi	r2 r2 35
	addi	r5 r0 0
	ldi	r4 r2 33
	addi	r2 r2 35
	call	L_sdiv10_2504
	subi	r2 r2 35
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 33
	sub	r4 r5 r4
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 35
	call	min_caml_print_char
	subi	r2 r2 35
	addi	r4 r0 32
	addi	r2 r2 35
	call	min_caml_print_char
	subi	r2 r2 35
	addi	r4 r0 255
	addi	r5 r0 0
	sti	r4 r2 34
	addi	r2 r2 36
	call	L_sdiv10_2504
	subi	r2 r2 36
	addi	r5 r0 0
	addi	r2 r2 36
	call	L_sdiv10_2504
	subi	r2 r2 36
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 36
	call	min_caml_print_char
	subi	r2 r2 36
	addi	r5 r0 0
	ldi	r4 r2 34
	addi	r2 r2 36
	call	L_sdiv10_2504
	subi	r2 r2 36
	addi	r5 r0 0
	addi	r2 r2 36
	call	L_sdiv10_2504
	subi	r2 r2 36
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 34
	sub	r4 r5 r4
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 36
	call	L_sdiv10_2504
	subi	r2 r2 36
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 36
	call	min_caml_print_char
	subi	r2 r2 36
	addi	r5 r0 0
	ldi	r4 r2 34
	addi	r2 r2 36
	call	L_sdiv10_2504
	subi	r2 r2 36
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 34
	sub	r4 r5 r4
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 36
	call	min_caml_print_char
	subi	r2 r2 36
	addi	r4 r0 10
	addi	r2 r2 36
	call	min_caml_print_char
	subi	r2 r2 36
	addi	r4 r0 4
	addi	r2 r2 36
	call	L_create_dirvecs_2968
	subi	r2 r2 36
	addi	r4 r0 9
	addi	r5 r0 0
	addi	r6 r0 0
	addi	r2 r2 36
	call	L_calc_dirvec_rows_2959
	subi	r2 r2 36
	addi	r4 r0 4
	addi	r2 r2 36
	call	L_init_vecset_constants_2973
	subi	r2 r2 36
	addi	r4 r0 4977
	ldi	r4 r4 0
	addi	r5 r0 4111
	addi	r2 r2 36
	call	L_veccpy_2529
	subi	r2 r2 36
	addi	r4 r0 4977
	addi	r2 r2 36
	call	L_setup_dirvec_constants_2755
	subi	r2 r2 36
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r4 r4 r5
	addi	r5 r0 0
	bgt	r5 r4 L_else_14836
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r5 2
	addi	r7 r0 2
	bne	r6 r7 L_else_14838
	ldi	r6 r5 7
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f2 r6 0
	fldi	f3 r0 44
	fbgt	f3 f2 L_else_14840
	addi	r6 r0 0
	jump	L_cont_14841
L_else_14840 : 
	addi	r6 r0 1
L_cont_14841 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_14842
	jump	L_cont_14843
L_else_14842 : 
	ldi	r6 r5 1
	addi	r7 r0 1
	bne	r6 r7 L_else_14844
	addi	r6 r0 4
	mul	r4 r4 r6
	addi	r6 r0 4147
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	fldi	f2 r0 44
	ldi	r5 r5 7
	addi	r7 r0 0
	add	r5 r5 r7
	fldi	f3 r5 0
	fsub	f2 f2 f3
	addi	r5 r0 4111
	addi	r7 r0 0
	add	r5 r5 r7
	fldi	f3 r5 0
	fsub	f3 f0 f3
	addi	r5 r0 4111
	addi	r7 r0 1
	add	r5 r5 r7
	fldi	f4 r5 0
	fsub	f4 f0 f4
	addi	r5 r0 4111
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f5 r5 0
	fsub	f5 f0 f5
	addi	r5 r0 1
	add	r5 r4 r5
	addi	r7 r0 4111
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f6 r7 0
	fsti	f3 r2 36
	sti	r4 r2 38
	sti	r6 r2 39
	sti	r5 r2 40
	fsti	f2 r2 42
	fsti	f5 r2 44
	fsti	f4 r2 46
	fsti	f6 r2 48
	addi	r2 r2 51
	call	L_create_dirvec_2963
	subi	r2 r2 51
	ldi	r5 r4 0
	fldi	f2 r2 48
	fldi	f3 r2 46
	fldi	f4 r2 44
	sti	r4 r2 50
	add	r4 r0 r5
	addi	r2 r2 52
	call	L_vecset_2519
	subi	r2 r2 52
	ldi	r4 r2 50
	addi	r2 r2 52
	call	L_setup_dirvec_constants_2755
	subi	r2 r2 52
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 42
	fsti	f2 r5 2
	ldi	r6 r2 50
	sti	r6 r5 1
	ldi	r6 r2 40
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 39
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 1
	add	r4 r6 r4
	addi	r5 r0 2
	ldi	r7 r2 38
	add	r5 r7 r5
	addi	r8 r0 4111
	addi	r9 r0 1
	add	r8 r8 r9
	fldi	f3 r8 0
	sti	r4 r2 51
	sti	r5 r2 52
	fsti	f3 r2 54
	addi	r2 r2 57
	call	L_create_dirvec_2963
	subi	r2 r2 57
	ldi	r5 r4 0
	fldi	f2 r2 36
	fldi	f3 r2 54
	fldi	f4 r2 44
	sti	r4 r2 56
	add	r4 r0 r5
	addi	r2 r2 58
	call	L_vecset_2519
	subi	r2 r2 58
	ldi	r4 r2 56
	addi	r2 r2 58
	call	L_setup_dirvec_constants_2755
	subi	r2 r2 58
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 42
	fsti	f2 r5 2
	ldi	r6 r2 56
	sti	r6 r5 1
	ldi	r6 r2 52
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 51
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 2
	ldi	r5 r2 39
	add	r4 r5 r4
	addi	r6 r0 3
	ldi	r7 r2 38
	add	r6 r7 r6
	addi	r7 r0 4111
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f3 r7 0
	sti	r4 r2 57
	sti	r6 r2 58
	fsti	f3 r2 60
	addi	r2 r2 63
	call	L_create_dirvec_2963
	subi	r2 r2 63
	ldi	r5 r4 0
	fldi	f2 r2 36
	fldi	f3 r2 46
	fldi	f4 r2 60
	sti	r4 r2 62
	add	r4 r0 r5
	addi	r2 r2 64
	call	L_vecset_2519
	subi	r2 r2 64
	ldi	r4 r2 62
	addi	r2 r2 64
	call	L_setup_dirvec_constants_2755
	subi	r2 r2 64
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 42
	fsti	f2 r5 2
	ldi	r6 r2 62
	sti	r6 r5 1
	ldi	r6 r2 58
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 57
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 4147
	addi	r5 r0 0
	addi	r6 r0 3
	ldi	r7 r2 39
	add	r6 r7 r6
	add	r4 r4 r5
	sti	r6 r4 0
	jump	L_cont_14845
L_else_14844 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_14850
	addi	r6 r0 4
	mul	r4 r4 r6
	addi	r6 r0 1
	add	r4 r4 r6
	addi	r6 r0 4147
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	fldi	f2 r0 44
	ldi	r7 r5 7
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f3 r7 0
	fsub	f2 f2 f3
	addi	r7 r0 4111
	ldi	r8 r5 4
	sti	r6 r2 63
	sti	r4 r2 64
	fsti	f2 r2 66
	sti	r5 r2 68
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 70
	call	L_veciprod_2540
	subi	r2 r2 70
	fldi	f3 r0 28
	ldi	r4 r2 68
	ldi	r5 r4 4
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f4 r5 0
	fmul	f3 f3 f4
	fmul	f3 f3 f2
	addi	r5 r0 4111
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f4 r5 0
	fsub	f3 f3 f4
	fldi	f4 r0 28
	ldi	r5 r4 4
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f5 r5 0
	fmul	f4 f4 f5
	fmul	f4 f4 f2
	addi	r5 r0 4111
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f5 r5 0
	fsub	f4 f4 f5
	fldi	f5 r0 28
	ldi	r4 r4 4
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f6 r4 0
	fmul	f5 f5 f6
	fmul	f2 f5 f2
	addi	r4 r0 4111
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f5 r4 0
	fsub	f2 f2 f5
	fsti	f2 r2 70
	fsti	f4 r2 72
	fsti	f3 r2 74
	addi	r2 r2 77
	call	L_create_dirvec_2963
	subi	r2 r2 77
	ldi	r5 r4 0
	fldi	f2 r2 74
	fldi	f3 r2 72
	fldi	f4 r2 70
	sti	r4 r2 76
	add	r4 r0 r5
	addi	r2 r2 78
	call	L_vecset_2519
	subi	r2 r2 78
	ldi	r4 r2 76
	addi	r2 r2 78
	call	L_setup_dirvec_constants_2755
	subi	r2 r2 78
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 66
	fsti	f2 r5 2
	ldi	r6 r2 76
	sti	r6 r5 1
	ldi	r6 r2 64
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 63
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 4147
	addi	r5 r0 0
	addi	r7 r0 1
	add	r6 r6 r7
	add	r4 r4 r5
	sti	r6 r4 0
	jump	L_cont_14851
L_else_14850 : 
L_cont_14851 : 
L_cont_14845 : 
L_cont_14843 : 
	jump	L_cont_14839
L_else_14838 : 
L_cont_14839 : 
	jump	L_cont_14837
L_else_14836 : 
L_cont_14837 : 
	addi	r5 r0 0
	addi	r6 r0 0
	ldi	r4 r2 3
	addi	r2 r2 78
	call	L_pretrace_line_2916
	subi	r2 r2 78
	addi	r4 r0 0
	addi	r8 r0 2
	ldi	r5 r2 1
	ldi	r6 r2 3
	ldi	r7 r2 5
	addi	r2 r2 78
	call	L_scan_line_2926
	subi	r2 r2 78
	addi	r4 r0 0
