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
	bne	r0 r7 L_else_27682
	return
L_else_27682 : 
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
	bne	r0 r7 L_else_27683
	return
L_else_27683 : 
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
	fmul	f2 f9 f9
	fmul	f8 f9 f2
	fmul	f7 f8 f2
	fmul	f6 f7 f2
	fmul	f5 f6 f2
	fmul	f4 f5 f2
	fmul	f3 f4 f2
	fldi	f2 r0 0
	fmul	f3 f2 f3
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
L_pcos_1876 : 
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
L_sin_1878 : 
	fldi	f3 r0 13
	fldi	f5 r0 14
	fbgt	f9 f5 L_else_24451
	fldi	f2 r0 15
	fbgt	f2 f9 L_else_24453
	fldi	f4 r0 16
	fldi	f3 r0 17
	fldi	f2 r0 18
	fbgt	f9 f0 L_else_24455
	fldi	f2 r0 19
	fbgt	f2 f9 L_else_24457
	jump	L_psin_1874
L_else_24457 : 
	fldi	f2 r0 20
	fbgt	f2 f9 L_else_24459
	fadd	f2 f3 f9
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_24459 : 
	fadd	f9 f5 f9
	call	L_psin_1874
	fsub	f2 f0 f2
	return
L_else_24455 : 
	fbgt	f9 f4 L_else_24461
	jump	L_psin_1874
L_else_24461 : 
	fbgt	f9 f2 L_else_24463
	fsub	f2 f9 f3
	jump	L_pcos_1876
L_else_24463 : 
	fsub	f9 f5 f9
	jump	L_psin_1874
L_else_24453 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1878
L_else_24451 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1878
L_cos_1880 : 
	fldi	f4 r0 13
	fldi	f6 r0 14
	fbgt	f2 f6 L_else_24466
	fldi	f3 r0 15
	fbgt	f3 f2 L_else_24468
	fldi	f5 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f2 f0 L_else_24470
	fldi	f3 r0 19
	fbgt	f3 f2 L_else_24472
	jump	L_pcos_1876
L_else_24472 : 
	fldi	f3 r0 20
	fbgt	f3 f2 L_else_24474
	fadd	f9 f2 f4
	jump	L_psin_1874
L_else_24474 : 
	fadd	f2 f6 f2
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_24470 : 
	fbgt	f2 f5 L_else_24476
	jump	L_pcos_1876
L_else_24476 : 
	fbgt	f2 f3 L_else_24478
	fsub	f9 f2 f4
	call	L_psin_1874
	fsub	f2 f0 f2
	return
L_else_24478 : 
	fsub	f2 f6 f2
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_24468 : 
	fadd	f2 f2 f4
	jump	L_cos_1880
L_else_24466 : 
	fsub	f2 f2 f4
	jump	L_cos_1880
L_atan_1882 : 
	fmul	f2 f13 f13
	fldi	f3 r0 12
	fadd	f11 f3 f2
	fmul	f14 f11 f11
	fmul	f9 f14 f11
	fmul	f12 f14 f14
	fmul	f7 f14 f9
	fmul	f10 f9 f9
	fmul	f5 f13 f2
	fmul	f8 f2 f5
	fmul	f4 f2 f8
	fmul	f6 f2 f4
	fmul	f2 f2 f6
	fldi	f3 r0 21
	fmul	f2 f3 f2
	fdiv	f3 f2 f10
	fldi	f2 r0 22
	fmul	f2 f2 f6
	fdiv	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r0 23
	fmul	f2 f2 f4
	fdiv	f2 f2 f12
	fadd	f3 f3 f2
	fldi	f2 r0 24
	fmul	f2 f2 f8
	fdiv	f2 f2 f9
	fadd	f3 f3 f2
	fldi	f2 r0 25
	fmul	f2 f2 f5
	fdiv	f2 f2 f14
	fadd	f3 f3 f2
	fdiv	f2 f13 f11
	fadd	f2 f3 f2
	return
L_spow10_1884 : 
	bne	r7 r0 L_else_24482
	return
L_else_24482 : 
	addi	r7 r7 -1
	addi	r8 r0 10
	mul	r6 r6 r8
	jump	L_spow10_1884
L_pow10_1887 : 
	addi	r6 r0 1
	jump	L_spow10_1884
L_sdivn_1889 : 
	sub	r8 r7 r9
	bgt	r0 r8 L_else_24486
	sub	r7 r7 r9
	addi	r6 r6 1
	jump	L_sdivn_1889
L_else_24486 : 
	return
L_divpow10_1893 : 
	call	L_pow10_1887
	addi	r7 r0 0
	add	r1 r0 r7
	add	r7 r0 r9
	add	r9 r0 r6
	add	r6 r0 r1
	jump	L_sdivn_1889
L_sprint_int_1896 : 
	bne	r11 r0 L_else_24490
	addi	r6 r10 48
	jump	min_caml_print_char
L_else_24490 : 
	bne	r12 r0 L_else_24492
	add	r9 r0 r10
	add	r7 r0 r11
	call	L_divpow10_1893
	add	r9 r0 r6
	addi	r6 r9 48
	call	min_caml_print_char
	add	r7 r0 r11
	call	L_pow10_1887
	mul	r6 r9 r6
	sub	r8 r10 r6
	addi	r7 r11 -1
	addi	r6 r0 0
	add	r10 r0 r8
	add	r11 r0 r7
	add	r12 r0 r6
	jump	L_sprint_int_1896
L_else_24492 : 
	add	r9 r0 r10
	add	r7 r0 r11
	call	L_divpow10_1893
	add	r9 r0 r6
	bne	r9 r0 L_else_24494
	addi	r6 r11 -1
	add	r11 r0 r6
	jump	L_sprint_int_1896
L_else_24494 : 
	addi	r6 r9 48
	call	min_caml_print_char
	add	r7 r0 r11
	call	L_pow10_1887
	mul	r6 r9 r6
	sub	r8 r10 r6
	addi	r6 r11 -1
	addi	r7 r0 0
	add	r10 r0 r8
	add	r11 r0 r6
	add	r12 r0 r7
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
	fadd	f9 f0 f11
	call	L_sin_1878
	fadd	f11 f0 f2
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f13 f2 f3
	fadd	f2 f0 f13
	call	L_cos_1880
	fadd	f12 f0 f2
	fadd	f9 f0 f13
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
	fadd	f9 f0 f10
	call	L_sin_1878
	fsub	f2 f0 f2
	fsti	f2 r0 1040
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f11 f2 f3
	fadd	f2 f0 f10
	call	L_cos_1880
	fadd	f10 f0 f2
	fadd	f9 f0 f11
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
	fldi	f2 r6 0
	call	L_cos_1880
	fadd	f10 f0 f2
	fldi	f9 r6 0
	call	L_sin_1878
	fadd	f11 f0 f2
	fldi	f2 r6 1
	call	L_cos_1880
	fadd	f12 f0 f2
	fldi	f9 r6 1
	call	L_sin_1878
	fadd	f13 f0 f2
	fldi	f2 r6 2
	call	L_cos_1880
	fadd	f14 f0 f2
	fldi	f9 r6 2
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
	fldi	f12 r7 0
	fldi	f11 r7 1
	fldi	f10 r7 2
	fmul	f2 f15 f15
	fmul	f3 f12 f2
	fmul	f2 f8 f8
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f5 f5
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r7 0
	fmul	f2 f9 f9
	fmul	f3 f12 f2
	fmul	f2 f7 f7
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f6 f6
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r7 1
	fmul	f2 f16 f16
	fmul	f3 f12 f2
	fmul	f2 f14 f14
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f13 f13
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r7 2
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
	fsti	f2 r6 0
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
	fsti	f2 r6 1
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
	fsti	f2 r6 2
	return
L_read_nth_object_2036 : 
	call	min_caml_read_int
	add	r10 r0 r6
	bne	r10 r5 L_else_24501
	addi	r6 r0 0
	return
L_else_24501 : 
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
	fbgt	f0 f2 L_else_24504
	addi	r16 r0 0
	jump	L_cont_24502
L_else_24504 : 
	addi	r16 r0 1
L_cont_24502 : 
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
	bne	r13 r0 L_else_24507
	jump	L_cont_24505
L_else_24507 : 
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
L_cont_24505 : 
	addi	r6 r0 2
	bne	r11 r6 L_else_24510
	addi	r20 r0 1
	jump	L_cont_24508
L_else_24510 : 
	add	r20 r0 r16
L_cont_24508 : 
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
	bne	r11 r6 L_else_24513
	fldi	f3 r14 0
	fbne	f3 f0 L_else_24519
	fldi	f2 r0 29
	jump	L_cont_24517
L_else_24519 : 
	fbne	f3 f0 L_else_24538
	fldi	f2 r0 29
	jump	L_cont_24536
L_else_24538 : 
	fbgt	f3 f0 L_else_24540
	fldi	f2 r0 31
	jump	L_cont_24536
L_else_24540 : 
	fldi	f2 r0 12
L_cont_24536 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_24517 : 
	fsti	f2 r14 0
	fldi	f2 r14 1
	fbne	f2 f0 L_else_24522
	fldi	f2 r0 29
	jump	L_cont_24520
L_else_24522 : 
	fbne	f2 f0 L_else_24533
	fldi	f3 r0 29
	jump	L_cont_24531
L_else_24533 : 
	fbgt	f2 f0 L_else_24535
	fldi	f3 r0 31
	jump	L_cont_24531
L_else_24535 : 
	fldi	f3 r0 12
L_cont_24531 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
L_cont_24520 : 
	fsti	f2 r14 1
	fldi	f3 r14 2
	fbne	f3 f0 L_else_24525
	fldi	f2 r0 29
	jump	L_cont_24523
L_else_24525 : 
	fbne	f3 f0 L_else_24528
	fldi	f2 r0 29
	jump	L_cont_24526
L_else_24528 : 
	fbgt	f3 f0 L_else_24530
	fldi	f2 r0 31
	jump	L_cont_24526
L_else_24530 : 
	fldi	f2 r0 12
L_cont_24526 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_24523 : 
	fsti	f2 r14 2
	jump	L_cont_24511
L_else_24513 : 
	addi	r6 r0 2
	bne	r11 r6 L_else_24542
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
	fbne	f3 f0 L_else_24545
	fldi	f3 r0 12
	jump	L_cont_24543
L_else_24545 : 
	bne	r6 r0 L_else_24547
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_24543
L_else_24547 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_24543 : 
	fldi	f2 r14 0
	fmul	f2 f2 f3
	fsti	f2 r14 0
	fldi	f2 r14 1
	fmul	f2 f2 f3
	fsti	f2 r14 1
	fldi	f2 r14 2
	fmul	f2 f2 f3
	fsti	f2 r14 2
	jump	L_cont_24511
L_else_24542 : 
L_cont_24511 : 
	bne	r13 r0 L_else_24516
	jump	L_cont_24514
L_else_24516 : 
	add	r7 r0 r14
	add	r6 r0 r19
	call	L_rotate_quadratic_matrix_2033
L_cont_24514 : 
	addi	r6 r0 1
	return
L_read_object_2038 : 
	addi	r6 r0 60
	bgt	r6 r21 L_else_24550
	return
L_else_24550 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24552
	sti	r21 r0 1072
	return
L_else_24552 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24554
	return
L_else_24554 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24556
	sti	r21 r0 1072
	return
L_else_24556 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24558
	return
L_else_24558 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24560
	sti	r21 r0 1072
	return
L_else_24560 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24562
	return
L_else_24562 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24564
	sti	r21 r0 1072
	return
L_else_24564 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24566
	return
L_else_24566 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24568
	sti	r21 r0 1072
	return
L_else_24568 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24570
	return
L_else_24570 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24572
	sti	r21 r0 1072
	return
L_else_24572 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24574
	return
L_else_24574 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24576
	sti	r21 r0 1072
	return
L_else_24576 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24578
	return
L_else_24578 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24580
	sti	r21 r0 1072
	return
L_else_24580 : 
	addi	r6 r21 1
	add	r21 r0 r6
	jump	L_read_object_2038
L_read_net_item_2042 : 
	call	min_caml_read_int
	add	r8 r0 r6
	bne	r8 r5 L_else_24583
	addi	r6 r7 1
	addi	r7 r0 -1
	jump	min_caml_create_array
L_else_24583 : 
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
	bne	r6 r5 L_else_24586
	addi	r6 r10 1
	jump	min_caml_create_array
L_else_24586 : 
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
	bne	r7 r5 L_else_24589
	return
L_else_24589 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24591
	return
L_else_24591 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24593
	return
L_else_24593 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24595
	return
L_else_24595 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24597
	return
L_else_24597 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24599
	return
L_else_24599 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24601
	return
L_else_24601 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24603
	return
L_else_24603 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r6 r10 1
	add	r10 r0 r6
	jump	L_read_and_network_2046
L_setup_rect_table_2134 : 
	addi	r6 r0 6
	fldi	f2 r0 29
	call	min_caml_create_float_array
	fldi	f2 r10 0
	fbne	f2 f0 L_else_24607
	fldi	f2 r0 29
	fsti	f2 r6 1
	jump	L_cont_24605
L_else_24607 : 
	ldi	r9 r8 6
	fldi	f2 r10 0
	fbgt	f0 f2 L_else_24628
	addi	r7 r0 0
	jump	L_cont_24626
L_else_24628 : 
	addi	r7 r0 1
L_cont_24626 : 
	xor	r9 r9 r7
	ldi	r7 r8 4
	fldi	f2 r7 0
	bne	r9 r0 L_else_24631
	fsub	f2 f0 f2
	jump	L_cont_24629
L_else_24631 : 
L_cont_24629 : 
	fsti	f2 r6 0
	fldi	f3 r0 12
	fldi	f2 r10 0
	fdiv	f2 f3 f2
	fsti	f2 r6 1
L_cont_24605 : 
	fldi	f2 r10 1
	fbne	f2 f0 L_else_24610
	fldi	f2 r0 29
	fsti	f2 r6 3
	jump	L_cont_24608
L_else_24610 : 
	ldi	r7 r8 6
	fldi	f2 r10 1
	fbgt	f0 f2 L_else_24622
	addi	r9 r0 0
	jump	L_cont_24620
L_else_24622 : 
	addi	r9 r0 1
L_cont_24620 : 
	xor	r7 r7 r9
	ldi	r9 r8 4
	fldi	f2 r9 1
	bne	r7 r0 L_else_24625
	fsub	f2 f0 f2
	jump	L_cont_24623
L_else_24625 : 
L_cont_24623 : 
	fsti	f2 r6 2
	fldi	f2 r0 12
	fldi	f3 r10 1
	fdiv	f2 f2 f3
	fsti	f2 r6 3
L_cont_24608 : 
	fldi	f2 r10 2
	fbne	f2 f0 L_else_24613
	fldi	f2 r0 29
	fsti	f2 r6 5
	jump	L_cont_24611
L_else_24613 : 
	ldi	r9 r8 6
	fldi	f2 r10 2
	fbgt	f0 f2 L_else_24616
	addi	r7 r0 0
	jump	L_cont_24614
L_else_24616 : 
	addi	r7 r0 1
L_cont_24614 : 
	xor	r9 r9 r7
	ldi	r7 r8 4
	fldi	f2 r7 2
	bne	r9 r0 L_else_24619
	fsub	f2 f0 f2
	jump	L_cont_24617
L_else_24619 : 
L_cont_24617 : 
	fsti	f2 r6 4
	fldi	f2 r0 12
	fldi	f3 r10 2
	fdiv	f2 f2 f3
	fsti	f2 r6 5
L_cont_24611 : 
	return
L_setup_surface_table_2137 : 
	addi	r6 r0 4
	fldi	f2 r0 29
	call	min_caml_create_float_array
	fldi	f3 r10 0
	ldi	r7 r8 4
	fldi	f2 r7 0
	fmul	f4 f3 f2
	fldi	f3 r10 1
	ldi	r7 r8 4
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fldi	f4 r10 2
	ldi	r7 r8 4
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f3 f0 L_else_24635
	fldi	f2 r0 29
	fsti	f2 r6 0
	jump	L_cont_24633
L_else_24635 : 
	fldi	f2 r0 31
	fdiv	f2 f2 f3
	fsti	f2 r6 0
	ldi	r7 r8 4
	fldi	f2 r7 0
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r6 1
	ldi	r7 r8 4
	fldi	f2 r7 1
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r6 2
	ldi	r7 r8 4
	fldi	f2 r7 2
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r6 3
L_cont_24633 : 
	return
L_setup_second_table_2140 : 
	addi	r6 r0 5
	fldi	f2 r0 29
	call	min_caml_create_float_array
	fldi	f7 r10 0
	fldi	f6 r10 1
	fldi	f5 r10 2
	fmul	f3 f7 f7
	ldi	r7 r8 4
	fldi	f2 r7 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r7 r8 4
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f5
	ldi	r7 r8 4
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r7 r8 3
	bne	r7 r0 L_else_24639
	jump	L_cont_24637
L_else_24639 : 
	fmul	f4 f6 f5
	ldi	r7 r8 9
	fldi	f3 r7 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f5 f7
	ldi	r7 r8 9
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f6
	ldi	r7 r8 9
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_24637 : 
	fldi	f4 r10 0
	ldi	r7 r8 4
	fldi	f3 r7 0
	fmul	f3 f4 f3
	fsub	f8 f0 f3
	fldi	f4 r10 1
	ldi	r7 r8 4
	fldi	f3 r7 1
	fmul	f3 f4 f3
	fsub	f7 f0 f3
	fldi	f4 r10 2
	ldi	r7 r8 4
	fldi	f3 r7 2
	fmul	f3 f4 f3
	fsub	f6 f0 f3
	fsti	f2 r6 0
	ldi	r7 r8 3
	bne	r7 r0 L_else_24642
	fsti	f8 r6 1
	fsti	f7 r6 2
	fsti	f6 r6 3
	jump	L_cont_24640
L_else_24642 : 
	fldi	f4 r10 2
	ldi	r7 r8 9
	fldi	f3 r7 1
	fmul	f5 f4 f3
	fldi	f4 r10 1
	ldi	r7 r8 9
	fldi	f3 r7 2
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 30
	fdiv	f3 f3 f4
	fsub	f3 f8 f3
	fsti	f3 r6 1
	fldi	f4 r10 2
	ldi	r7 r8 9
	fldi	f3 r7 0
	fmul	f4 f4 f3
	fldi	f5 r10 0
	ldi	r7 r8 9
	fldi	f3 r7 2
	fmul	f3 f5 f3
	fadd	f4 f4 f3
	fldi	f3 r0 30
	fdiv	f3 f4 f3
	fsub	f3 f7 f3
	fsti	f3 r6 2
	fldi	f4 r10 1
	ldi	r7 r8 9
	fldi	f3 r7 0
	fmul	f5 f4 f3
	fldi	f4 r10 0
	ldi	r7 r8 9
	fldi	f3 r7 1
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 30
	fdiv	f3 f3 f4
	fsub	f3 f6 f3
	fsti	f3 r6 3
L_cont_24640 : 
	fbne	f2 f0 L_else_24645
	jump	L_cont_24643
L_else_24645 : 
	fldi	f3 r0 12
	fdiv	f2 f3 f2
	fsti	f2 r6 4
L_cont_24643 : 
	return
L_iter_setup_dirvec_constants_2143 : 
	bgt	r0 r12 L_else_24648
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r6 r8 1
	bne	r6 r4 L_else_24651
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_24649
L_else_24651 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_24674
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_24649
L_else_24674 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_24649 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_24653
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_24656
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_24654
L_else_24656 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_24672
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_24654
L_else_24672 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_24654 : 
	addi	r13 r13 -1
	bgt	r0 r13 L_else_24658
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r6 r8 1
	bne	r6 r4 L_else_24661
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_24659
L_else_24661 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_24670
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_24659
L_else_24670 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_24659 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_24663
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_24666
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_24664
L_else_24666 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_24668
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_24664
L_else_24668 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_24664 : 
	addi	r6 r12 -1
	add	r12 r0 r6
	jump	L_iter_setup_dirvec_constants_2143
L_else_24663 : 
	return
L_else_24658 : 
	return
L_else_24653 : 
	return
L_else_24648 : 
	return
L_setup_startp_constants_2148 : 
	bgt	r0 r9 L_else_24677
	ldi	r8 r9 1970
	ldi	r10 r8 10
	ldi	r7 r8 1
	fldi	f3 r11 0
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f2 f3 f2
	fsti	f2 r10 0
	fldi	f3 r11 1
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f2 f3 f2
	fsti	f2 r10 1
	fldi	f3 r11 2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f2 f3 f2
	fsti	f2 r10 2
	addi	r6 r0 2
	bne	r7 r6 L_else_24680
	ldi	r6 r8 4
	fldi	f3 r10 0
	fldi	f5 r10 1
	fldi	f4 r10 2
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r10 3
	jump	L_cont_24678
L_else_24680 : 
	addi	r6 r0 2
	bgt	r7 r6 L_else_24682
	jump	L_cont_24678
L_else_24682 : 
	fldi	f7 r10 0
	fldi	f5 r10 1
	fldi	f6 r10 2
	fmul	f3 f7 f7
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f6 f6
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_24685
	jump	L_cont_24683
L_else_24685 : 
	fmul	f4 f5 f6
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f6 f7
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f2 f7 f5
	ldi	r6 r8 9
	fldi	f3 r6 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
L_cont_24683 : 
	addi	r6 r0 3
	bne	r7 r6 L_else_24688
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_24686
L_else_24688 : 
L_cont_24686 : 
	fsti	f2 r10 3
L_cont_24678 : 
	addi	r6 r9 -1
	add	r9 r0 r6
	jump	L_setup_startp_constants_2148
L_else_24677 : 
	return
L_check_all_inside_2173 : 
	add	r1 r8 r9
	ldi	r6 r1 0
	bne	r6 r5 L_else_24691
	addi	r6 r0 1
	return
L_else_24691 : 
	ldi	r10 r6 1970
	ldi	r6 r10 5
	fldi	f2 r6 0
	fsub	f5 f7 f2
	ldi	r6 r10 5
	fldi	f2 r6 1
	fsub	f2 f8 f2
	ldi	r6 r10 5
	fldi	f3 r6 2
	fsub	f3 f6 f3
	ldi	r7 r10 1
	bne	r7 r4 L_else_24694
	fbgt	f0 f5 L_else_24816
	fadd	f4 f0 f5
	jump	L_cont_24814
L_else_24816 : 
	fsub	f4 f0 f5
L_cont_24814 : 
	ldi	r6 r10 4
	fldi	f5 r6 0
	fbgt	f5 f4 L_else_24819
	addi	r6 r0 0
	jump	L_cont_24817
L_else_24819 : 
	fbgt	f0 f2 L_else_24824
	jump	L_cont_24822
L_else_24824 : 
	fsub	f2 f0 f2
L_cont_24822 : 
	ldi	r6 r10 4
	fldi	f4 r6 1
	fbgt	f4 f2 L_else_24826
	addi	r6 r0 0
	jump	L_cont_24817
L_else_24826 : 
	fbgt	f0 f3 L_else_24829
	fadd	f2 f0 f3
	jump	L_cont_24827
L_else_24829 : 
	fsub	f2 f0 f3
L_cont_24827 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_24831
	addi	r6 r0 0
	jump	L_cont_24817
L_else_24831 : 
	addi	r6 r0 1
L_cont_24817 : 
	bne	r6 r0 L_else_24821
	ldi	r6 r10 6
	sub	r6 r4 r6
	jump	L_cont_24692
L_else_24821 : 
	ldi	r6 r10 6
	jump	L_cont_24692
L_else_24694 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_24833
	ldi	r6 r10 4
	fldi	f4 r6 0
	fmul	f5 f4 f5
	fldi	f4 r6 1
	fmul	f2 f4 f2
	fadd	f4 f5 f2
	fldi	f2 r6 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	ldi	r7 r10 6
	fbgt	f0 f2 L_else_24836
	addi	r6 r0 0
	jump	L_cont_24834
L_else_24836 : 
	addi	r6 r0 1
L_cont_24834 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_24692
L_else_24833 : 
	fmul	f9 f5 f5
	ldi	r6 r10 4
	fldi	f4 r6 0
	fmul	f10 f9 f4
	fmul	f9 f2 f2
	ldi	r6 r10 4
	fldi	f4 r6 1
	fmul	f4 f9 f4
	fadd	f9 f10 f4
	fmul	f10 f3 f3
	ldi	r6 r10 4
	fldi	f4 r6 2
	fmul	f4 f10 f4
	fadd	f4 f9 f4
	ldi	r6 r10 3
	bne	r6 r0 L_else_24839
	fadd	f2 f0 f4
	jump	L_cont_24837
L_else_24839 : 
	fmul	f10 f2 f3
	ldi	r6 r10 9
	fldi	f9 r6 0
	fmul	f9 f10 f9
	fadd	f9 f4 f9
	fmul	f4 f3 f5
	ldi	r6 r10 9
	fldi	f3 r6 1
	fmul	f3 f4 f3
	fadd	f3 f9 f3
	fmul	f4 f5 f2
	ldi	r6 r10 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_24837 : 
	ldi	r7 r10 1
	addi	r6 r0 3
	bne	r7 r6 L_else_24842
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_24840
L_else_24842 : 
L_cont_24840 : 
	ldi	r7 r10 6
	fbgt	f0 f2 L_else_24845
	addi	r6 r0 0
	jump	L_cont_24843
L_else_24845 : 
	addi	r6 r0 1
L_cont_24843 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_24692 : 
	bne	r6 r0 L_else_24696
	addi	r10 r9 1
	add	r1 r8 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_24698
	addi	r6 r0 1
	return
L_else_24698 : 
	ldi	r9 r6 1970
	ldi	r6 r9 5
	fldi	f2 r6 0
	fsub	f5 f7 f2
	ldi	r6 r9 5
	fldi	f2 r6 1
	fsub	f3 f8 f2
	ldi	r6 r9 5
	fldi	f2 r6 2
	fsub	f4 f6 f2
	ldi	r6 r9 1
	bne	r6 r4 L_else_24701
	fbgt	f0 f5 L_else_24784
	fadd	f2 f0 f5
	jump	L_cont_24782
L_else_24784 : 
	fsub	f2 f0 f5
L_cont_24782 : 
	ldi	r6 r9 4
	fldi	f5 r6 0
	fbgt	f5 f2 L_else_24787
	addi	r6 r0 0
	jump	L_cont_24785
L_else_24787 : 
	fbgt	f0 f3 L_else_24792
	fadd	f2 f0 f3
	jump	L_cont_24790
L_else_24792 : 
	fsub	f2 f0 f3
L_cont_24790 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_24794
	addi	r6 r0 0
	jump	L_cont_24785
L_else_24794 : 
	fbgt	f0 f4 L_else_24797
	fadd	f2 f0 f4
	jump	L_cont_24795
L_else_24797 : 
	fsub	f2 f0 f4
L_cont_24795 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_24799
	addi	r6 r0 0
	jump	L_cont_24785
L_else_24799 : 
	addi	r6 r0 1
L_cont_24785 : 
	bne	r6 r0 L_else_24789
	ldi	r6 r9 6
	sub	r6 r4 r6
	jump	L_cont_24699
L_else_24789 : 
	ldi	r6 r9 6
	jump	L_cont_24699
L_else_24701 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_24801
	ldi	r6 r9 4
	fldi	f2 r6 0
	fmul	f5 f2 f5
	fldi	f2 r6 1
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	ldi	r7 r9 6
	fbgt	f0 f2 L_else_24804
	addi	r6 r0 0
	jump	L_cont_24802
L_else_24804 : 
	addi	r6 r0 1
L_cont_24802 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_24699
L_else_24801 : 
	fmul	f9 f5 f5
	ldi	r6 r9 4
	fldi	f2 r6 0
	fmul	f10 f9 f2
	fmul	f9 f3 f3
	ldi	r6 r9 4
	fldi	f2 r6 1
	fmul	f2 f9 f2
	fadd	f9 f10 f2
	fmul	f10 f4 f4
	ldi	r6 r9 4
	fldi	f2 r6 2
	fmul	f2 f10 f2
	fadd	f2 f9 f2
	ldi	r6 r9 3
	bne	r6 r0 L_else_24807
	jump	L_cont_24805
L_else_24807 : 
	fmul	f10 f3 f4
	ldi	r6 r9 9
	fldi	f9 r6 0
	fmul	f9 f10 f9
	fadd	f9 f2 f9
	fmul	f4 f4 f5
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f9 f2
	fmul	f3 f5 f3
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_24805 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else_24810
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_24808
L_else_24810 : 
L_cont_24808 : 
	ldi	r7 r9 6
	fbgt	f0 f2 L_else_24813
	addi	r6 r0 0
	jump	L_cont_24811
L_else_24813 : 
	addi	r6 r0 1
L_cont_24811 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_24699 : 
	bne	r6 r0 L_else_24703
	addi	r10 r10 1
	add	r1 r8 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_24705
	addi	r6 r0 1
	return
L_else_24705 : 
	ldi	r7 r6 1970
	ldi	r6 r7 5
	fldi	f2 r6 0
	fsub	f3 f7 f2
	ldi	r6 r7 5
	fldi	f2 r6 1
	fsub	f4 f8 f2
	ldi	r6 r7 5
	fldi	f2 r6 2
	fsub	f5 f6 f2
	ldi	r6 r7 1
	bne	r6 r4 L_else_24708
	fbgt	f0 f3 L_else_24752
	fadd	f2 f0 f3
	jump	L_cont_24750
L_else_24752 : 
	fsub	f2 f0 f3
L_cont_24750 : 
	ldi	r6 r7 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_24755
	addi	r6 r0 0
	jump	L_cont_24753
L_else_24755 : 
	fbgt	f0 f4 L_else_24760
	fadd	f2 f0 f4
	jump	L_cont_24758
L_else_24760 : 
	fsub	f2 f0 f4
L_cont_24758 : 
	ldi	r6 r7 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_24762
	addi	r6 r0 0
	jump	L_cont_24753
L_else_24762 : 
	fbgt	f0 f5 L_else_24765
	fadd	f2 f0 f5
	jump	L_cont_24763
L_else_24765 : 
	fsub	f2 f0 f5
L_cont_24763 : 
	ldi	r6 r7 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_24767
	addi	r6 r0 0
	jump	L_cont_24753
L_else_24767 : 
	addi	r6 r0 1
L_cont_24753 : 
	bne	r6 r0 L_else_24757
	ldi	r6 r7 6
	sub	r6 r4 r6
	jump	L_cont_24706
L_else_24757 : 
	ldi	r6 r7 6
	jump	L_cont_24706
L_else_24708 : 
	addi	r9 r0 2
	bne	r6 r9 L_else_24769
	ldi	r6 r7 4
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r7 r7 6
	fbgt	f0 f2 L_else_24772
	addi	r6 r0 0
	jump	L_cont_24770
L_else_24772 : 
	addi	r6 r0 1
L_cont_24770 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_24706
L_else_24769 : 
	fmul	f9 f3 f3
	ldi	r6 r7 4
	fldi	f2 r6 0
	fmul	f10 f9 f2
	fmul	f9 f4 f4
	ldi	r6 r7 4
	fldi	f2 r6 1
	fmul	f2 f9 f2
	fadd	f9 f10 f2
	fmul	f10 f5 f5
	ldi	r6 r7 4
	fldi	f2 r6 2
	fmul	f2 f10 f2
	fadd	f2 f9 f2
	ldi	r6 r7 3
	bne	r6 r0 L_else_24775
	jump	L_cont_24773
L_else_24775 : 
	fmul	f10 f4 f5
	ldi	r6 r7 9
	fldi	f9 r6 0
	fmul	f9 f10 f9
	fadd	f9 f2 f9
	fmul	f5 f5 f3
	ldi	r6 r7 9
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f9 f2
	fmul	f3 f3 f4
	ldi	r6 r7 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f5 f2
L_cont_24773 : 
	ldi	r9 r7 1
	addi	r6 r0 3
	bne	r9 r6 L_else_24778
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_24776
L_else_24778 : 
L_cont_24776 : 
	ldi	r7 r7 6
	fbgt	f0 f2 L_else_24781
	addi	r6 r0 0
	jump	L_cont_24779
L_else_24781 : 
	addi	r6 r0 1
L_cont_24779 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_24706 : 
	bne	r6 r0 L_else_24710
	addi	r10 r10 1
	add	r1 r8 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_24712
	addi	r6 r0 1
	return
L_else_24712 : 
	ldi	r7 r6 1970
	ldi	r6 r7 5
	fldi	f2 r6 0
	fsub	f2 f7 f2
	ldi	r6 r7 5
	fldi	f3 r6 1
	fsub	f4 f8 f3
	ldi	r6 r7 5
	fldi	f3 r6 2
	fsub	f5 f6 f3
	ldi	r6 r7 1
	bne	r6 r4 L_else_24715
	fbgt	f0 f2 L_else_24720
	jump	L_cont_24718
L_else_24720 : 
	fsub	f2 f0 f2
L_cont_24718 : 
	ldi	r6 r7 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_24723
	addi	r6 r0 0
	jump	L_cont_24721
L_else_24723 : 
	fbgt	f0 f4 L_else_24728
	fadd	f2 f0 f4
	jump	L_cont_24726
L_else_24728 : 
	fsub	f2 f0 f4
L_cont_24726 : 
	ldi	r6 r7 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_24730
	addi	r6 r0 0
	jump	L_cont_24721
L_else_24730 : 
	fbgt	f0 f5 L_else_24733
	fadd	f2 f0 f5
	jump	L_cont_24731
L_else_24733 : 
	fsub	f2 f0 f5
L_cont_24731 : 
	ldi	r6 r7 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_24735
	addi	r6 r0 0
	jump	L_cont_24721
L_else_24735 : 
	addi	r6 r0 1
L_cont_24721 : 
	bne	r6 r0 L_else_24725
	ldi	r6 r7 6
	sub	r6 r4 r6
	jump	L_cont_24713
L_else_24725 : 
	ldi	r6 r7 6
	jump	L_cont_24713
L_else_24715 : 
	addi	r9 r0 2
	bne	r6 r9 L_else_24737
	ldi	r6 r7 4
	fldi	f3 r6 0
	fmul	f3 f3 f2
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r6 r7 6
	fbgt	f0 f2 L_else_24740
	addi	r7 r0 0
	jump	L_cont_24738
L_else_24740 : 
	addi	r7 r0 1
L_cont_24738 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
	jump	L_cont_24713
L_else_24737 : 
	fmul	f9 f2 f2
	ldi	r6 r7 4
	fldi	f3 r6 0
	fmul	f10 f9 f3
	fmul	f9 f4 f4
	ldi	r6 r7 4
	fldi	f3 r6 1
	fmul	f3 f9 f3
	fadd	f9 f10 f3
	fmul	f10 f5 f5
	ldi	r6 r7 4
	fldi	f3 r6 2
	fmul	f3 f10 f3
	fadd	f3 f9 f3
	ldi	r6 r7 3
	bne	r6 r0 L_else_24743
	fadd	f2 f0 f3
	jump	L_cont_24741
L_else_24743 : 
	fmul	f10 f4 f5
	ldi	r6 r7 9
	fldi	f9 r6 0
	fmul	f9 f10 f9
	fadd	f9 f3 f9
	fmul	f3 f5 f2
	ldi	r6 r7 9
	fldi	f5 r6 1
	fmul	f3 f3 f5
	fadd	f3 f9 f3
	fmul	f4 f2 f4
	ldi	r6 r7 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_24741 : 
	ldi	r9 r7 1
	addi	r6 r0 3
	bne	r9 r6 L_else_24746
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_24744
L_else_24746 : 
L_cont_24744 : 
	ldi	r6 r7 6
	fbgt	f0 f2 L_else_24749
	addi	r7 r0 0
	jump	L_cont_24747
L_else_24749 : 
	addi	r7 r0 1
L_cont_24747 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
L_cont_24713 : 
	bne	r6 r0 L_else_24717
	addi	r6 r10 1
	add	r9 r0 r6
	jump	L_check_all_inside_2173
L_else_24717 : 
	addi	r6 r0 0
	return
L_else_24710 : 
	addi	r6 r0 0
	return
L_else_24703 : 
	addi	r6 r0 0
	return
L_else_24696 : 
	addi	r6 r0 0
	return
L_shadow_check_and_group_2179 : 
	add	r1 r12 r11
	ldi	r6 r1 0
	bne	r6 r5 L_else_24848
	addi	r6 r0 0
	return
L_else_24848 : 
	add	r1 r12 r11
	ldi	r8 r1 0
	addi	r13 r0 1905
	ldi	r10 r8 1970
	fldi	f3 r0 1042
	ldi	r6 r10 5
	fldi	f2 r6 0
	fsub	f7 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r10 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r10 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r13 1
	add	r1 r6 r8
	ldi	r9 r1 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_24851
	ldi	r7 r13 0
	fldi	f2 r9 0
	fsub	f2 f2 f7
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_24983
	jump	L_cont_24981
L_else_24983 : 
	fsub	f2 f0 f2
L_cont_24981 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_24986
	addi	r6 r0 0
	jump	L_cont_24984
L_else_24986 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25023
	jump	L_cont_25021
L_else_25023 : 
	fsub	f2 f0 f2
L_cont_25021 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25025
	addi	r6 r0 0
	jump	L_cont_24984
L_else_25025 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else_25028
	addi	r6 r0 1
	jump	L_cont_25026
L_else_25028 : 
	addi	r6 r0 0
L_cont_25026 : 
	sub	r6 r4 r6
L_cont_24984 : 
	bne	r6 r0 L_else_24988
	fldi	f2 r9 2
	fsub	f3 f2 f5
	fldi	f2 r9 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_24991
	jump	L_cont_24989
L_else_24991 : 
	fsub	f2 f0 f2
L_cont_24989 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_24994
	addi	r6 r0 0
	jump	L_cont_24992
L_else_24994 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25015
	jump	L_cont_25013
L_else_25015 : 
	fsub	f2 f0 f2
L_cont_25013 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25017
	addi	r6 r0 0
	jump	L_cont_24992
L_else_25017 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else_25020
	addi	r6 r0 1
	jump	L_cont_25018
L_else_25020 : 
	addi	r6 r0 0
L_cont_25018 : 
	sub	r6 r4 r6
L_cont_24992 : 
	bne	r6 r0 L_else_24996
	fldi	f2 r9 4
	fsub	f2 f2 f9
	fldi	f3 r9 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_24999
	jump	L_cont_24997
L_else_24999 : 
	fsub	f2 f0 f2
L_cont_24997 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25002
	addi	r6 r0 0
	jump	L_cont_25000
L_else_25002 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25007
	jump	L_cont_25005
L_else_25007 : 
	fsub	f2 f0 f2
L_cont_25005 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25009
	addi	r6 r0 0
	jump	L_cont_25000
L_else_25009 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else_25012
	addi	r6 r0 1
	jump	L_cont_25010
L_else_25012 : 
	addi	r6 r0 0
L_cont_25010 : 
	sub	r6 r4 r6
L_cont_25000 : 
	bne	r6 r0 L_else_25004
	addi	r6 r0 0
	jump	L_cont_24849
L_else_25004 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_24849
L_else_24996 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_24849
L_else_24988 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_24849
L_else_24851 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25030
	fldi	f2 r9 0
	fbgt	f0 f2 L_else_25032
	addi	r6 r0 0
	jump	L_cont_24849
L_else_25032 : 
	fldi	f2 r9 1
	fmul	f3 f2 f7
	fldi	f2 r9 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r9 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_24849
L_else_25030 : 
	fldi	f6 r9 0
	fbne	f6 f0 L_else_25034
	addi	r6 r0 0
	jump	L_cont_24849
L_else_25034 : 
	fldi	f2 r9 1
	fmul	f3 f2 f7
	fldi	f2 r9 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r9 3
	fmul	f2 f2 f9
	fadd	f8 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r10 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r6 r10 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r6 r10 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r10 3
	bne	r6 r0 L_else_25037
	jump	L_cont_25035
L_else_25037 : 
	fmul	f4 f5 f9
	ldi	r6 r10 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f7
	ldi	r6 r10 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f5
	ldi	r6 r10 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_25035 : 
	ldi	r7 r10 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25040
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25038
L_else_25040 : 
L_cont_25038 : 
	fmul	f3 f8 f8
	fmul	f2 f6 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_25042
	addi	r6 r0 0
	jump	L_cont_24849
L_else_25042 : 
	ldi	r6 r10 6
	bne	r6 r0 L_else_25045
	fsqrt	f2 f2
	fsub	f3 f8 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_25043
L_else_25045 : 
	fsqrt	f2 f2
	fadd	f3 f8 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_25043 : 
	addi	r6 r0 1
L_cont_24849 : 
	fldi	f3 r0 1073
	bne	r6 r0 L_else_24854
	addi	r6 r0 0
	jump	L_cont_24852
L_else_24854 : 
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_24980
	addi	r6 r0 0
	jump	L_cont_24852
L_else_24980 : 
	addi	r6 r0 1
L_cont_24852 : 
	bne	r6 r0 L_else_24856
	ldi	r6 r8 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_24858
	addi	r6 r0 0
	return
L_else_24858 : 
	addi	r6 r11 1
	add	r11 r0 r6
	jump	L_shadow_check_and_group_2179
L_else_24856 : 
	fldi	f2 r0 33
	fadd	f4 f3 f2
	fldi	f2 r0 1039
	fmul	f3 f2 f4
	fldi	f2 r0 1042
	fadd	f7 f3 f2
	fldi	f2 r0 1040
	fmul	f3 f2 f4
	fldi	f2 r0 1043
	fadd	f8 f3 f2
	fldi	f2 r0 1041
	fmul	f3 f2 f4
	fldi	f2 r0 1044
	fadd	f6 f3 f2
	addi	r6 r0 0
	add	r1 r12 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_24861
	addi	r6 r0 1
	jump	L_cont_24859
L_else_24861 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f3 f7 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f4 f8 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f5 f6 f2
	ldi	r6 r8 1
	bne	r6 r4 L_else_24866
	fbgt	f0 f3 L_else_24949
	fadd	f2 f0 f3
	jump	L_cont_24947
L_else_24949 : 
	fsub	f2 f0 f3
L_cont_24947 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_24952
	addi	r6 r0 0
	jump	L_cont_24950
L_else_24952 : 
	fbgt	f0 f4 L_else_24957
	fadd	f2 f0 f4
	jump	L_cont_24955
L_else_24957 : 
	fsub	f2 f0 f4
L_cont_24955 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_24959
	addi	r6 r0 0
	jump	L_cont_24950
L_else_24959 : 
	fbgt	f0 f5 L_else_24962
	fadd	f2 f0 f5
	jump	L_cont_24960
L_else_24962 : 
	fsub	f2 f0 f5
L_cont_24960 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_24964
	addi	r6 r0 0
	jump	L_cont_24950
L_else_24964 : 
	addi	r6 r0 1
L_cont_24950 : 
	bne	r6 r0 L_else_24954
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_24864
L_else_24954 : 
	ldi	r6 r8 6
	jump	L_cont_24864
L_else_24866 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_24966
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_24969
	addi	r6 r0 0
	jump	L_cont_24967
L_else_24969 : 
	addi	r6 r0 1
L_cont_24967 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_24864
L_else_24966 : 
	fmul	f9 f3 f3
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f10 f9 f2
	fmul	f9 f4 f4
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f9 f2
	fadd	f9 f10 f2
	fmul	f10 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f10 f2
	fadd	f2 f9 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_24972
	jump	L_cont_24970
L_else_24972 : 
	fmul	f10 f4 f5
	ldi	r6 r8 9
	fldi	f9 r6 0
	fmul	f9 f10 f9
	fadd	f9 f2 f9
	fmul	f5 f5 f3
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f9 f2
	fmul	f3 f3 f4
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f5 f2
L_cont_24970 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_24975
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_24973
L_else_24975 : 
L_cont_24973 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_24978
	addi	r6 r0 0
	jump	L_cont_24976
L_else_24978 : 
	addi	r6 r0 1
L_cont_24976 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_24864 : 
	bne	r6 r0 L_else_24868
	addi	r6 r0 1
	add	r1 r12 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_24870
	addi	r6 r0 1
	jump	L_cont_24859
L_else_24870 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f3 f7 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f4 f8 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f5 f6 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_24873
	fbgt	f0 f3 L_else_24917
	fadd	f2 f0 f3
	jump	L_cont_24915
L_else_24917 : 
	fsub	f2 f0 f3
L_cont_24915 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_24920
	addi	r6 r0 0
	jump	L_cont_24918
L_else_24920 : 
	fbgt	f0 f4 L_else_24925
	fadd	f2 f0 f4
	jump	L_cont_24923
L_else_24925 : 
	fsub	f2 f0 f4
L_cont_24923 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_24927
	addi	r6 r0 0
	jump	L_cont_24918
L_else_24927 : 
	fbgt	f0 f5 L_else_24930
	fadd	f2 f0 f5
	jump	L_cont_24928
L_else_24930 : 
	fsub	f2 f0 f5
L_cont_24928 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_24932
	addi	r6 r0 0
	jump	L_cont_24918
L_else_24932 : 
	addi	r6 r0 1
L_cont_24918 : 
	bne	r6 r0 L_else_24922
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_24871
L_else_24922 : 
	ldi	r6 r8 6
	jump	L_cont_24871
L_else_24873 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_24934
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_24937
	addi	r6 r0 0
	jump	L_cont_24935
L_else_24937 : 
	addi	r6 r0 1
L_cont_24935 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_24871
L_else_24934 : 
	fmul	f9 f3 f3
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f9 f9 f2
	fmul	f10 f4 f4
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f10 f2
	fadd	f10 f9 f2
	fmul	f9 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f9 f2
	fadd	f2 f10 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_24940
	jump	L_cont_24938
L_else_24940 : 
	fmul	f10 f4 f5
	ldi	r6 r8 9
	fldi	f9 r6 0
	fmul	f9 f10 f9
	fadd	f9 f2 f9
	fmul	f5 f5 f3
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f9 f2
	fmul	f3 f3 f4
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f5 f2
L_cont_24938 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else_24943
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_24941
L_else_24943 : 
L_cont_24941 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_24946
	addi	r6 r0 0
	jump	L_cont_24944
L_else_24946 : 
	addi	r6 r0 1
L_cont_24944 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_24871 : 
	bne	r6 r0 L_else_24875
	addi	r6 r0 2
	add	r1 r12 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_24877
	addi	r6 r0 1
	jump	L_cont_24859
L_else_24877 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f3 f7 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f4 f8 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f5 f6 f2
	ldi	r6 r8 1
	bne	r6 r4 L_else_24880
	fbgt	f0 f3 L_else_24885
	fadd	f2 f0 f3
	jump	L_cont_24883
L_else_24885 : 
	fsub	f2 f0 f3
L_cont_24883 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_24888
	addi	r6 r0 0
	jump	L_cont_24886
L_else_24888 : 
	fbgt	f0 f4 L_else_24893
	fadd	f2 f0 f4
	jump	L_cont_24891
L_else_24893 : 
	fsub	f2 f0 f4
L_cont_24891 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_24895
	addi	r6 r0 0
	jump	L_cont_24886
L_else_24895 : 
	fbgt	f0 f5 L_else_24898
	fadd	f2 f0 f5
	jump	L_cont_24896
L_else_24898 : 
	fsub	f2 f0 f5
L_cont_24896 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_24900
	addi	r6 r0 0
	jump	L_cont_24886
L_else_24900 : 
	addi	r6 r0 1
L_cont_24886 : 
	bne	r6 r0 L_else_24890
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_24878
L_else_24890 : 
	ldi	r6 r8 6
	jump	L_cont_24878
L_else_24880 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_24902
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_24905
	addi	r6 r0 0
	jump	L_cont_24903
L_else_24905 : 
	addi	r6 r0 1
L_cont_24903 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_24878
L_else_24902 : 
	fmul	f9 f3 f3
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f10 f9 f2
	fmul	f9 f4 f4
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f9 f2
	fadd	f2 f10 f2
	fmul	f10 f5 f5
	ldi	r6 r8 4
	fldi	f9 r6 2
	fmul	f9 f10 f9
	fadd	f2 f2 f9
	ldi	r6 r8 3
	bne	r6 r0 L_else_24908
	jump	L_cont_24906
L_else_24908 : 
	fmul	f10 f4 f5
	ldi	r6 r8 9
	fldi	f9 r6 0
	fmul	f9 f10 f9
	fadd	f9 f2 f9
	fmul	f2 f5 f3
	ldi	r6 r8 9
	fldi	f5 r6 1
	fmul	f2 f2 f5
	fadd	f2 f9 f2
	fmul	f4 f3 f4
	ldi	r6 r8 9
	fldi	f3 r6 2
	fmul	f3 f4 f3
	fadd	f2 f2 f3
L_cont_24906 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_24911
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_24909
L_else_24911 : 
L_cont_24909 : 
	ldi	r6 r8 6
	fbgt	f0 f2 L_else_24914
	addi	r7 r0 0
	jump	L_cont_24912
L_else_24914 : 
	addi	r7 r0 1
L_cont_24912 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
L_cont_24878 : 
	bne	r6 r0 L_else_24882
	addi	r9 r0 3
	add	r8 r0 r12
	call	L_check_all_inside_2173
	jump	L_cont_24859
L_else_24882 : 
	addi	r6 r0 0
	jump	L_cont_24859
L_else_24875 : 
	addi	r6 r0 0
	jump	L_cont_24859
L_else_24868 : 
	addi	r6 r0 0
L_cont_24859 : 
	bne	r6 r0 L_else_24863
	addi	r6 r11 1
	add	r11 r0 r6
	jump	L_shadow_check_and_group_2179
L_else_24863 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_group_2182 : 
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_25048
	addi	r6 r0 0
	return
L_else_25048 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25050
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_25052
	addi	r6 r0 0
	return
L_else_25052 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25054
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_25056
	addi	r6 r0 0
	return
L_else_25056 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25058
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_25060
	addi	r6 r0 0
	return
L_else_25060 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25062
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_25064
	addi	r6 r0 0
	return
L_else_25064 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25066
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_25068
	addi	r6 r0 0
	return
L_else_25068 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25070
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_25072
	addi	r6 r0 0
	return
L_else_25072 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25074
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_25076
	addi	r6 r0 0
	return
L_else_25076 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25078
	addi	r6 r15 1
	add	r15 r0 r6
	jump	L_shadow_check_one_or_group_2182
L_else_25078 : 
	addi	r6 r0 1
	return
L_else_25074 : 
	addi	r6 r0 1
	return
L_else_25070 : 
	addi	r6 r0 1
	return
L_else_25066 : 
	addi	r6 r0 1
	return
L_else_25062 : 
	addi	r6 r0 1
	return
L_else_25058 : 
	addi	r6 r0 1
	return
L_else_25054 : 
	addi	r6 r0 1
	return
L_else_25050 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_matrix_2185 : 
	add	r1 r16 r17
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_25081
	addi	r6 r0 0
	return
L_else_25081 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_25084
	addi	r6 r0 1
	jump	L_cont_25082
L_else_25084 : 
	addi	r10 r0 1905
	ldi	r9 r7 1970
	fldi	f3 r0 1042
	ldi	r6 r9 5
	fldi	f2 r6 0
	fsub	f7 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r9 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r9 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else_25386
	ldi	r7 r10 0
	fldi	f2 r8 0
	fsub	f2 f2 f7
	fldi	f3 r8 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25424
	jump	L_cont_25422
L_else_25424 : 
	fsub	f2 f0 f2
L_cont_25422 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25427
	addi	r6 r0 0
	jump	L_cont_25425
L_else_25427 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25464
	jump	L_cont_25462
L_else_25464 : 
	fsub	f2 f0 f2
L_cont_25462 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25466
	addi	r6 r0 0
	jump	L_cont_25425
L_else_25466 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_25469
	addi	r6 r0 1
	jump	L_cont_25467
L_else_25469 : 
	addi	r6 r0 0
L_cont_25467 : 
	sub	r6 r4 r6
L_cont_25425 : 
	bne	r6 r0 L_else_25429
	fldi	f2 r8 2
	fsub	f3 f2 f5
	fldi	f2 r8 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25432
	jump	L_cont_25430
L_else_25432 : 
	fsub	f2 f0 f2
L_cont_25430 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25435
	addi	r6 r0 0
	jump	L_cont_25433
L_else_25435 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25456
	jump	L_cont_25454
L_else_25456 : 
	fsub	f2 f0 f2
L_cont_25454 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25458
	addi	r6 r0 0
	jump	L_cont_25433
L_else_25458 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_25461
	addi	r6 r0 1
	jump	L_cont_25459
L_else_25461 : 
	addi	r6 r0 0
L_cont_25459 : 
	sub	r6 r4 r6
L_cont_25433 : 
	bne	r6 r0 L_else_25437
	fldi	f2 r8 4
	fsub	f2 f2 f9
	fldi	f3 r8 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25440
	jump	L_cont_25438
L_else_25440 : 
	fsub	f2 f0 f2
L_cont_25438 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25443
	addi	r6 r0 0
	jump	L_cont_25441
L_else_25443 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25448
	jump	L_cont_25446
L_else_25448 : 
	fsub	f2 f0 f2
L_cont_25446 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25450
	addi	r6 r0 0
	jump	L_cont_25441
L_else_25450 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_25453
	addi	r6 r0 1
	jump	L_cont_25451
L_else_25453 : 
	addi	r6 r0 0
L_cont_25451 : 
	sub	r6 r4 r6
L_cont_25441 : 
	bne	r6 r0 L_else_25445
	addi	r6 r0 0
	jump	L_cont_25384
L_else_25445 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_25384
L_else_25437 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_25384
L_else_25429 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_25384
L_else_25386 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25471
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_25473
	addi	r6 r0 0
	jump	L_cont_25384
L_else_25473 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_25384
L_else_25471 : 
	fldi	f8 r8 0
	fbne	f8 f0 L_else_25475
	addi	r6 r0 0
	jump	L_cont_25384
L_else_25475 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f6 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r9 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r6 r9 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r6 r9 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r9 3
	bne	r6 r0 L_else_25478
	jump	L_cont_25476
L_else_25478 : 
	fmul	f4 f5 f9
	ldi	r6 r9 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f7
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f5
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_25476 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25481
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25479
L_else_25481 : 
L_cont_25479 : 
	fmul	f3 f6 f6
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_25483
	addi	r6 r0 0
	jump	L_cont_25384
L_else_25483 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_25486
	fsqrt	f2 f2
	fsub	f3 f6 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_25484
L_else_25486 : 
	fsqrt	f2 f2
	fadd	f3 f6 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_25484 : 
	addi	r6 r0 1
L_cont_25384 : 
	bne	r6 r0 L_else_25388
	addi	r6 r0 0
	jump	L_cont_25082
L_else_25388 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_25390
	addi	r6 r0 0
	jump	L_cont_25082
L_else_25390 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25393
	addi	r6 r0 0
	jump	L_cont_25391
L_else_25393 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25397
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25399
	addi	r6 r0 0
	jump	L_cont_25391
L_else_25399 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25401
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25403
	addi	r6 r0 0
	jump	L_cont_25391
L_else_25403 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25405
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25407
	addi	r6 r0 0
	jump	L_cont_25391
L_else_25407 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25409
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25411
	addi	r6 r0 0
	jump	L_cont_25391
L_else_25411 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25413
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25415
	addi	r6 r0 0
	jump	L_cont_25391
L_else_25415 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25417
	addi	r6 r0 7
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25419
	addi	r6 r0 0
	jump	L_cont_25391
L_else_25419 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25421
	addi	r15 r0 8
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25391
L_else_25421 : 
	addi	r6 r0 1
	jump	L_cont_25391
L_else_25417 : 
	addi	r6 r0 1
	jump	L_cont_25391
L_else_25413 : 
	addi	r6 r0 1
	jump	L_cont_25391
L_else_25409 : 
	addi	r6 r0 1
	jump	L_cont_25391
L_else_25405 : 
	addi	r6 r0 1
	jump	L_cont_25391
L_else_25401 : 
	addi	r6 r0 1
	jump	L_cont_25391
L_else_25397 : 
	addi	r6 r0 1
L_cont_25391 : 
	bne	r6 r0 L_else_25395
	addi	r6 r0 0
	jump	L_cont_25082
L_else_25395 : 
	addi	r6 r0 1
L_cont_25082 : 
	bne	r6 r0 L_else_25086
	addi	r17 r17 1
	add	r1 r16 r17
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_25088
	addi	r6 r0 0
	return
L_else_25088 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_25091
	addi	r6 r0 1
	jump	L_cont_25089
L_else_25091 : 
	addi	r10 r0 1905
	ldi	r8 r7 1970
	fldi	f3 r0 1042
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f7 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r9 r1 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_25123
	ldi	r7 r10 0
	fldi	f2 r9 0
	fsub	f3 f2 f7
	fldi	f2 r9 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25157
	jump	L_cont_25155
L_else_25157 : 
	fsub	f2 f0 f2
L_cont_25155 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25160
	addi	r6 r0 0
	jump	L_cont_25158
L_else_25160 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25197
	jump	L_cont_25195
L_else_25197 : 
	fsub	f2 f0 f2
L_cont_25195 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25199
	addi	r6 r0 0
	jump	L_cont_25158
L_else_25199 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else_25202
	addi	r6 r0 1
	jump	L_cont_25200
L_else_25202 : 
	addi	r6 r0 0
L_cont_25200 : 
	sub	r6 r4 r6
L_cont_25158 : 
	bne	r6 r0 L_else_25162
	fldi	f2 r9 2
	fsub	f2 f2 f5
	fldi	f3 r9 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25165
	jump	L_cont_25163
L_else_25165 : 
	fsub	f2 f0 f2
L_cont_25163 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25168
	addi	r6 r0 0
	jump	L_cont_25166
L_else_25168 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25189
	jump	L_cont_25187
L_else_25189 : 
	fsub	f2 f0 f2
L_cont_25187 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25191
	addi	r6 r0 0
	jump	L_cont_25166
L_else_25191 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else_25194
	addi	r6 r0 1
	jump	L_cont_25192
L_else_25194 : 
	addi	r6 r0 0
L_cont_25192 : 
	sub	r6 r4 r6
L_cont_25166 : 
	bne	r6 r0 L_else_25170
	fldi	f2 r9 4
	fsub	f3 f2 f9
	fldi	f2 r9 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25173
	jump	L_cont_25171
L_else_25173 : 
	fsub	f2 f0 f2
L_cont_25171 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25176
	addi	r6 r0 0
	jump	L_cont_25174
L_else_25176 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25181
	jump	L_cont_25179
L_else_25181 : 
	fsub	f2 f0 f2
L_cont_25179 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25183
	addi	r6 r0 0
	jump	L_cont_25174
L_else_25183 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else_25186
	addi	r6 r0 1
	jump	L_cont_25184
L_else_25186 : 
	addi	r6 r0 0
L_cont_25184 : 
	sub	r6 r4 r6
L_cont_25174 : 
	bne	r6 r0 L_else_25178
	addi	r6 r0 0
	jump	L_cont_25121
L_else_25178 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_25121
L_else_25170 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_25121
L_else_25162 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_25121
L_else_25123 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25204
	fldi	f2 r9 0
	fbgt	f0 f2 L_else_25206
	addi	r6 r0 0
	jump	L_cont_25121
L_else_25206 : 
	fldi	f2 r9 1
	fmul	f3 f2 f7
	fldi	f2 r9 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r9 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_25121
L_else_25204 : 
	fldi	f8 r9 0
	fbne	f8 f0 L_else_25208
	addi	r6 r0 0
	jump	L_cont_25121
L_else_25208 : 
	fldi	f2 r9 1
	fmul	f3 f2 f7
	fldi	f2 r9 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r9 3
	fmul	f2 f2 f9
	fadd	f6 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f3 f2
	fmul	f4 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f9 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25211
	jump	L_cont_25209
L_else_25211 : 
	fmul	f4 f5 f9
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f9 f7
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f5
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_25209 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else_25214
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25212
L_else_25214 : 
L_cont_25212 : 
	fmul	f3 f6 f6
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_25216
	addi	r6 r0 0
	jump	L_cont_25121
L_else_25216 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else_25219
	fsqrt	f2 f2
	fsub	f2 f6 f2
	fldi	f3 r9 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_25217
L_else_25219 : 
	fsqrt	f2 f2
	fadd	f2 f6 f2
	fldi	f3 r9 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_25217 : 
	addi	r6 r0 1
L_cont_25121 : 
	bne	r6 r0 L_else_25125
	addi	r6 r0 0
	jump	L_cont_25089
L_else_25125 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else_25127
	addi	r6 r0 0
	jump	L_cont_25089
L_else_25127 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25130
	addi	r6 r0 0
	jump	L_cont_25128
L_else_25130 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25134
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25136
	addi	r6 r0 0
	jump	L_cont_25128
L_else_25136 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25138
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25140
	addi	r6 r0 0
	jump	L_cont_25128
L_else_25140 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25142
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25144
	addi	r6 r0 0
	jump	L_cont_25128
L_else_25144 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25146
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25148
	addi	r6 r0 0
	jump	L_cont_25128
L_else_25148 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25150
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25152
	addi	r6 r0 0
	jump	L_cont_25128
L_else_25152 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25154
	addi	r15 r0 7
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25128
L_else_25154 : 
	addi	r6 r0 1
	jump	L_cont_25128
L_else_25150 : 
	addi	r6 r0 1
	jump	L_cont_25128
L_else_25146 : 
	addi	r6 r0 1
	jump	L_cont_25128
L_else_25142 : 
	addi	r6 r0 1
	jump	L_cont_25128
L_else_25138 : 
	addi	r6 r0 1
	jump	L_cont_25128
L_else_25134 : 
	addi	r6 r0 1
L_cont_25128 : 
	bne	r6 r0 L_else_25132
	addi	r6 r0 0
	jump	L_cont_25089
L_else_25132 : 
	addi	r6 r0 1
L_cont_25089 : 
	bne	r6 r0 L_else_25093
	addi	r6 r17 1
	add	r17 r0 r6
	jump	L_shadow_check_one_or_matrix_2185
L_else_25093 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25096
	addi	r6 r0 0
	jump	L_cont_25094
L_else_25096 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25100
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25102
	addi	r6 r0 0
	jump	L_cont_25094
L_else_25102 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25104
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25106
	addi	r6 r0 0
	jump	L_cont_25094
L_else_25106 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25108
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25110
	addi	r6 r0 0
	jump	L_cont_25094
L_else_25110 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25112
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25114
	addi	r6 r0 0
	jump	L_cont_25094
L_else_25114 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25116
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25118
	addi	r6 r0 0
	jump	L_cont_25094
L_else_25118 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25120
	addi	r15 r0 7
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25094
L_else_25120 : 
	addi	r6 r0 1
	jump	L_cont_25094
L_else_25116 : 
	addi	r6 r0 1
	jump	L_cont_25094
L_else_25112 : 
	addi	r6 r0 1
	jump	L_cont_25094
L_else_25108 : 
	addi	r6 r0 1
	jump	L_cont_25094
L_else_25104 : 
	addi	r6 r0 1
	jump	L_cont_25094
L_else_25100 : 
	addi	r6 r0 1
L_cont_25094 : 
	bne	r6 r0 L_else_25098
	addi	r6 r17 1
	add	r17 r0 r6
	jump	L_shadow_check_one_or_matrix_2185
L_else_25098 : 
	addi	r6 r0 1
	return
L_else_25086 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25222
	addi	r6 r0 0
	jump	L_cont_25220
L_else_25222 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25359
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25361
	addi	r6 r0 0
	jump	L_cont_25220
L_else_25361 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25363
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25365
	addi	r6 r0 0
	jump	L_cont_25220
L_else_25365 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25367
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25369
	addi	r6 r0 0
	jump	L_cont_25220
L_else_25369 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25371
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25373
	addi	r6 r0 0
	jump	L_cont_25220
L_else_25373 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25375
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25377
	addi	r6 r0 0
	jump	L_cont_25220
L_else_25377 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25379
	addi	r6 r0 7
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25381
	addi	r6 r0 0
	jump	L_cont_25220
L_else_25381 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25383
	addi	r15 r0 8
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25220
L_else_25383 : 
	addi	r6 r0 1
	jump	L_cont_25220
L_else_25379 : 
	addi	r6 r0 1
	jump	L_cont_25220
L_else_25375 : 
	addi	r6 r0 1
	jump	L_cont_25220
L_else_25371 : 
	addi	r6 r0 1
	jump	L_cont_25220
L_else_25367 : 
	addi	r6 r0 1
	jump	L_cont_25220
L_else_25363 : 
	addi	r6 r0 1
	jump	L_cont_25220
L_else_25359 : 
	addi	r6 r0 1
L_cont_25220 : 
	bne	r6 r0 L_else_25224
	addi	r17 r17 1
	add	r1 r16 r17
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_25226
	addi	r6 r0 0
	return
L_else_25226 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_25229
	addi	r6 r0 1
	jump	L_cont_25227
L_else_25229 : 
	addi	r10 r0 1905
	ldi	r9 r7 1970
	fldi	f3 r0 1042
	ldi	r6 r9 5
	fldi	f2 r6 0
	fsub	f7 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r9 5
	fldi	f2 r6 1
	fsub	f6 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r9 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else_25261
	ldi	r7 r10 0
	fldi	f2 r8 0
	fsub	f2 f2 f7
	fldi	f3 r8 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_25295
	jump	L_cont_25293
L_else_25295 : 
	fsub	f2 f0 f2
L_cont_25293 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25298
	addi	r6 r0 0
	jump	L_cont_25296
L_else_25298 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25335
	jump	L_cont_25333
L_else_25335 : 
	fsub	f2 f0 f2
L_cont_25333 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25337
	addi	r6 r0 0
	jump	L_cont_25296
L_else_25337 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_25340
	addi	r6 r0 1
	jump	L_cont_25338
L_else_25340 : 
	addi	r6 r0 0
L_cont_25338 : 
	sub	r6 r4 r6
L_cont_25296 : 
	bne	r6 r0 L_else_25300
	fldi	f2 r8 2
	fsub	f3 f2 f6
	fldi	f2 r8 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25303
	jump	L_cont_25301
L_else_25303 : 
	fsub	f2 f0 f2
L_cont_25301 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25306
	addi	r6 r0 0
	jump	L_cont_25304
L_else_25306 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25327
	jump	L_cont_25325
L_else_25327 : 
	fsub	f2 f0 f2
L_cont_25325 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25329
	addi	r6 r0 0
	jump	L_cont_25304
L_else_25329 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_25332
	addi	r6 r0 1
	jump	L_cont_25330
L_else_25332 : 
	addi	r6 r0 0
L_cont_25330 : 
	sub	r6 r4 r6
L_cont_25304 : 
	bne	r6 r0 L_else_25308
	fldi	f2 r8 4
	fsub	f2 f2 f9
	fldi	f3 r8 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25311
	jump	L_cont_25309
L_else_25311 : 
	fsub	f2 f0 f2
L_cont_25309 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25314
	addi	r6 r0 0
	jump	L_cont_25312
L_else_25314 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_25319
	jump	L_cont_25317
L_else_25319 : 
	fsub	f2 f0 f2
L_cont_25317 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25321
	addi	r6 r0 0
	jump	L_cont_25312
L_else_25321 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_25324
	addi	r6 r0 1
	jump	L_cont_25322
L_else_25324 : 
	addi	r6 r0 0
L_cont_25322 : 
	sub	r6 r4 r6
L_cont_25312 : 
	bne	r6 r0 L_else_25316
	addi	r6 r0 0
	jump	L_cont_25259
L_else_25316 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_25259
L_else_25308 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_25259
L_else_25300 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_25259
L_else_25261 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25342
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_25344
	addi	r6 r0 0
	jump	L_cont_25259
L_else_25344 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_25259
L_else_25342 : 
	fldi	f8 r8 0
	fbne	f8 f0 L_else_25346
	addi	r6 r0 0
	jump	L_cont_25259
L_else_25346 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f5 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r9 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r6 r9 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r6 r9 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r9 3
	bne	r6 r0 L_else_25349
	jump	L_cont_25347
L_else_25349 : 
	fmul	f4 f6 f9
	ldi	r6 r9 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f7
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f6
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_25347 : 
	ldi	r6 r9 1
	addi	r7 r0 3
	bne	r6 r7 L_else_25352
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25350
L_else_25352 : 
L_cont_25350 : 
	fmul	f3 f5 f5
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_25354
	addi	r6 r0 0
	jump	L_cont_25259
L_else_25354 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_25357
	fsqrt	f2 f2
	fsub	f3 f5 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_25355
L_else_25357 : 
	fsqrt	f2 f2
	fadd	f3 f5 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_25355 : 
	addi	r6 r0 1
L_cont_25259 : 
	bne	r6 r0 L_else_25263
	addi	r6 r0 0
	jump	L_cont_25227
L_else_25263 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_25265
	addi	r6 r0 0
	jump	L_cont_25227
L_else_25265 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25268
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25268 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25272
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25274
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25274 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25276
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25278
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25278 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25280
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25282
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25282 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25284
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25286
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25286 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25288
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25290
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25290 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25292
	addi	r15 r0 7
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25266
L_else_25292 : 
	addi	r6 r0 1
	jump	L_cont_25266
L_else_25288 : 
	addi	r6 r0 1
	jump	L_cont_25266
L_else_25284 : 
	addi	r6 r0 1
	jump	L_cont_25266
L_else_25280 : 
	addi	r6 r0 1
	jump	L_cont_25266
L_else_25276 : 
	addi	r6 r0 1
	jump	L_cont_25266
L_else_25272 : 
	addi	r6 r0 1
L_cont_25266 : 
	bne	r6 r0 L_else_25270
	addi	r6 r0 0
	jump	L_cont_25227
L_else_25270 : 
	addi	r6 r0 1
L_cont_25227 : 
	bne	r6 r0 L_else_25231
	addi	r6 r17 1
	add	r17 r0 r6
	jump	L_shadow_check_one_or_matrix_2185
L_else_25231 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25234
	addi	r6 r0 0
	jump	L_cont_25232
L_else_25234 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25238
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25240
	addi	r6 r0 0
	jump	L_cont_25232
L_else_25240 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25242
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25244
	addi	r6 r0 0
	jump	L_cont_25232
L_else_25244 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25246
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25248
	addi	r6 r0 0
	jump	L_cont_25232
L_else_25248 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25250
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25252
	addi	r6 r0 0
	jump	L_cont_25232
L_else_25252 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25254
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25256
	addi	r6 r0 0
	jump	L_cont_25232
L_else_25256 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25258
	addi	r15 r0 7
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25232
L_else_25258 : 
	addi	r6 r0 1
	jump	L_cont_25232
L_else_25254 : 
	addi	r6 r0 1
	jump	L_cont_25232
L_else_25250 : 
	addi	r6 r0 1
	jump	L_cont_25232
L_else_25246 : 
	addi	r6 r0 1
	jump	L_cont_25232
L_else_25242 : 
	addi	r6 r0 1
	jump	L_cont_25232
L_else_25238 : 
	addi	r6 r0 1
L_cont_25232 : 
	bne	r6 r0 L_else_25236
	addi	r6 r17 1
	add	r17 r0 r6
	jump	L_shadow_check_one_or_matrix_2185
L_else_25236 : 
	addi	r6 r0 1
	return
L_else_25224 : 
	addi	r6 r0 1
	return
L_solve_each_element_2188 : 
	add	r1 r12 r15
	ldi	r11 r1 0
	bne	r11 r5 L_else_25489
	return
L_else_25489 : 
	ldi	r8 r11 1970
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
	bne	r7 r4 L_else_25492
	addi	r16 r0 0
	addi	r10 r0 1
	addi	r13 r0 2
	add	r1 r14 r16
	fldi	f2 r1 0
	fbne	f2 f0 L_else_25624
	addi	r6 r0 0
	jump	L_cont_25622
L_else_25624 : 
	ldi	r9 r8 4
	ldi	r6 r8 6
	add	r1 r14 r16
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_25671
	addi	r7 r0 0
	jump	L_cont_25669
L_else_25671 : 
	addi	r7 r0 1
L_cont_25669 : 
	xor	r6 r6 r7
	add	r1 r9 r16
	fldi	f2 r1 0
	bne	r6 r0 L_else_25674
	fsub	f2 f0 f2
	jump	L_cont_25672
L_else_25674 : 
L_cont_25672 : 
	fsub	f3 f2 f8
	add	r1 r14 r16
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r14 r10
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25677
	jump	L_cont_25675
L_else_25677 : 
	fsub	f2 f0 f2
L_cont_25675 : 
	add	r1 r9 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25679
	addi	r6 r0 0
	jump	L_cont_25622
L_else_25679 : 
	add	r1 r14 r13
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25682
	jump	L_cont_25680
L_else_25682 : 
	fsub	f2 f0 f2
L_cont_25680 : 
	add	r1 r9 r13
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25684
	addi	r6 r0 0
	jump	L_cont_25622
L_else_25684 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25622 : 
	bne	r6 r0 L_else_25626
	addi	r13 r0 1
	addi	r16 r0 2
	addi	r9 r0 0
	add	r1 r14 r13
	fldi	f2 r1 0
	fbne	f2 f0 L_else_25629
	addi	r6 r0 0
	jump	L_cont_25627
L_else_25629 : 
	ldi	r7 r8 4
	ldi	r10 r8 6
	add	r1 r14 r13
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_25655
	addi	r6 r0 0
	jump	L_cont_25653
L_else_25655 : 
	addi	r6 r0 1
L_cont_25653 : 
	xor	r6 r10 r6
	add	r1 r7 r13
	fldi	f2 r1 0
	bne	r6 r0 L_else_25658
	fsub	f2 f0 f2
	jump	L_cont_25656
L_else_25658 : 
L_cont_25656 : 
	fsub	f2 f2 f7
	add	r1 r14 r13
	fldi	f3 r1 0
	fdiv	f4 f2 f3
	add	r1 r14 r16
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25661
	jump	L_cont_25659
L_else_25661 : 
	fsub	f2 f0 f2
L_cont_25659 : 
	add	r1 r7 r16
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25663
	addi	r6 r0 0
	jump	L_cont_25627
L_else_25663 : 
	add	r1 r14 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_25666
	jump	L_cont_25664
L_else_25666 : 
	fsub	f2 f0 f2
L_cont_25664 : 
	add	r1 r7 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25668
	addi	r6 r0 0
	jump	L_cont_25627
L_else_25668 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25627 : 
	bne	r6 r0 L_else_25631
	addi	r16 r0 2
	addi	r10 r0 0
	addi	r13 r0 1
	add	r1 r14 r16
	fldi	f2 r1 0
	fbne	f2 f0 L_else_25634
	addi	r6 r0 0
	jump	L_cont_25632
L_else_25634 : 
	ldi	r9 r8 4
	ldi	r6 r8 6
	add	r1 r14 r16
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_25639
	addi	r7 r0 0
	jump	L_cont_25637
L_else_25639 : 
	addi	r7 r0 1
L_cont_25637 : 
	xor	r6 r6 r7
	add	r1 r9 r16
	fldi	f2 r1 0
	bne	r6 r0 L_else_25642
	fsub	f2 f0 f2
	jump	L_cont_25640
L_else_25642 : 
L_cont_25640 : 
	fsub	f3 f2 f9
	add	r1 r14 r16
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r14 r10
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_25645
	jump	L_cont_25643
L_else_25645 : 
	fsub	f2 f0 f2
L_cont_25643 : 
	add	r1 r9 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25647
	addi	r6 r0 0
	jump	L_cont_25632
L_else_25647 : 
	add	r1 r14 r13
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25650
	jump	L_cont_25648
L_else_25650 : 
	fsub	f2 f0 f2
L_cont_25648 : 
	add	r1 r9 r13
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25652
	addi	r6 r0 0
	jump	L_cont_25632
L_else_25652 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25632 : 
	bne	r6 r0 L_else_25636
	addi	r13 r0 0
	jump	L_cont_25490
L_else_25636 : 
	addi	r13 r0 3
	jump	L_cont_25490
L_else_25631 : 
	addi	r13 r0 2
	jump	L_cont_25490
L_else_25626 : 
	addi	r13 r0 1
	jump	L_cont_25490
L_else_25492 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25686
	ldi	r6 r8 4
	fldi	f3 r14 0
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fldi	f2 r14 1
	fldi	f3 r6 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r14 2
	fldi	f3 r6 2
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fbgt	f4 f0 L_else_25688
	addi	r13 r0 0
	jump	L_cont_25490
L_else_25688 : 
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
	addi	r13 r0 1
	jump	L_cont_25490
L_else_25686 : 
	fldi	f10 r14 0
	fldi	f5 r14 1
	fldi	f6 r14 2
	fmul	f3 f10 f10
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f6 f6
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25691
	fadd	f4 f0 f2
	jump	L_cont_25689
L_else_25691 : 
	fmul	f4 f5 f6
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f6 f10
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f10 f5
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
L_cont_25689 : 
	fbne	f4 f0 L_else_25693
	addi	r13 r0 0
	jump	L_cont_25490
L_else_25693 : 
	fldi	f11 r14 0
	fldi	f12 r14 1
	fldi	f10 r14 2
	fmul	f3 f11 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f3 f2
	fmul	f5 f12 f7
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f3 f2
	fmul	f3 f10 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f5 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25696
	fadd	f3 f0 f2
	jump	L_cont_25694
L_else_25696 : 
	fmul	f3 f10 f7
	fmul	f5 f12 f9
	fadd	f5 f3 f5
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f6 f5 f3
	fmul	f3 f11 f9
	fmul	f5 f10 f8
	fadd	f5 f3 f5
	ldi	r6 r8 9
	fldi	f3 r6 1
	fmul	f3 f5 f3
	fadd	f5 f6 f3
	fmul	f6 f11 f7
	fmul	f3 f12 f8
	fadd	f6 f6 f3
	ldi	r6 r8 9
	fldi	f3 r6 2
	fmul	f3 f6 f3
	fadd	f5 f5 f3
	fldi	f3 r0 30
	fdiv	f3 f5 f3
	fadd	f3 f2 f3
L_cont_25694 : 
	fmul	f5 f8 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f6 f5 f2
	fmul	f5 f7 f7
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f6 f2
	fmul	f6 f9 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f6 f2
	fadd	f2 f5 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25699
	jump	L_cont_25697
L_else_25699 : 
	fmul	f6 f7 f9
	ldi	r6 r8 9
	fldi	f5 r6 0
	fmul	f5 f6 f5
	fadd	f6 f2 f5
	fmul	f5 f9 f8
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f6 f2
	fmul	f6 f8 f7
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f6 f2
	fadd	f2 f5 f2
L_cont_25697 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25702
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont_25700
L_else_25702 : 
L_cont_25700 : 
	fmul	f5 f3 f3
	fmul	f2 f4 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_25704
	addi	r13 r0 0
	jump	L_cont_25490
L_else_25704 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else_25707
	fsub	f2 f0 f2
	jump	L_cont_25705
L_else_25707 : 
L_cont_25705 : 
	fsub	f2 f2 f3
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r13 r0 1
L_cont_25490 : 
	bne	r13 r0 L_else_25494
	ldi	r6 r11 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_25496
	return
L_else_25496 : 
	addi	r6 r15 1
	add	r15 r0 r6
	jump	L_solve_each_element_2188
L_else_25494 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_25499
	jump	L_cont_25497
L_else_25499 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_25501
	jump	L_cont_25497
L_else_25501 : 
	fldi	f2 r0 33
	fadd	f11 f3 f2
	fldi	f2 r14 0
	fmul	f2 f2 f11
	fldi	f3 r0 1063
	fadd	f12 f2 f3
	fldi	f2 r14 1
	fmul	f3 f2 f11
	fldi	f2 r0 1064
	fadd	f13 f3 f2
	fldi	f2 r14 2
	fmul	f3 f2 f11
	fldi	f2 r0 1065
	fadd	f14 f3 f2
	addi	r6 r0 0
	add	r1 r12 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25504
	addi	r6 r0 1
	jump	L_cont_25502
L_else_25504 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f3 f12 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f5 f13 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f4 f14 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_25509
	fbgt	f0 f3 L_else_25592
	fadd	f2 f0 f3
	jump	L_cont_25590
L_else_25592 : 
	fsub	f2 f0 f3
L_cont_25590 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25595
	addi	r6 r0 0
	jump	L_cont_25593
L_else_25595 : 
	fbgt	f0 f5 L_else_25600
	fadd	f2 f0 f5
	jump	L_cont_25598
L_else_25600 : 
	fsub	f2 f0 f5
L_cont_25598 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25602
	addi	r6 r0 0
	jump	L_cont_25593
L_else_25602 : 
	fbgt	f0 f4 L_else_25605
	fadd	f2 f0 f4
	jump	L_cont_25603
L_else_25605 : 
	fsub	f2 f0 f4
L_cont_25603 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25607
	addi	r6 r0 0
	jump	L_cont_25593
L_else_25607 : 
	addi	r6 r0 1
L_cont_25593 : 
	bne	r6 r0 L_else_25597
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_25507
L_else_25597 : 
	ldi	r6 r8 6
	jump	L_cont_25507
L_else_25509 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25609
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25612
	addi	r6 r0 0
	jump	L_cont_25610
L_else_25612 : 
	addi	r6 r0 1
L_cont_25610 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_25507
L_else_25609 : 
	fmul	f6 f3 f3
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f7 f6 f2
	fmul	f6 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f6 f7 f2
	fmul	f7 f4 f4
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f7 f2
	fadd	f2 f6 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25615
	jump	L_cont_25613
L_else_25615 : 
	fmul	f7 f5 f4
	ldi	r6 r8 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f4 f4 f3
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f6 f2
	fmul	f3 f3 f5
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_25613 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25618
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25616
L_else_25618 : 
L_cont_25616 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25621
	addi	r6 r0 0
	jump	L_cont_25619
L_else_25621 : 
	addi	r6 r0 1
L_cont_25619 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_25507 : 
	bne	r6 r0 L_else_25511
	addi	r6 r0 1
	add	r1 r12 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25513
	addi	r6 r0 1
	jump	L_cont_25502
L_else_25513 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f3 f12 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f4 f13 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f5 f14 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_25516
	fbgt	f0 f3 L_else_25560
	fadd	f2 f0 f3
	jump	L_cont_25558
L_else_25560 : 
	fsub	f2 f0 f3
L_cont_25558 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25563
	addi	r6 r0 0
	jump	L_cont_25561
L_else_25563 : 
	fbgt	f0 f4 L_else_25568
	fadd	f2 f0 f4
	jump	L_cont_25566
L_else_25568 : 
	fsub	f2 f0 f4
L_cont_25566 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25570
	addi	r6 r0 0
	jump	L_cont_25561
L_else_25570 : 
	fbgt	f0 f5 L_else_25573
	fadd	f2 f0 f5
	jump	L_cont_25571
L_else_25573 : 
	fsub	f2 f0 f5
L_cont_25571 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25575
	addi	r6 r0 0
	jump	L_cont_25561
L_else_25575 : 
	addi	r6 r0 1
L_cont_25561 : 
	bne	r6 r0 L_else_25565
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_25514
L_else_25565 : 
	ldi	r6 r8 6
	jump	L_cont_25514
L_else_25516 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25577
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25580
	addi	r6 r0 0
	jump	L_cont_25578
L_else_25580 : 
	addi	r6 r0 1
L_cont_25578 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_25514
L_else_25577 : 
	fmul	f6 f3 f3
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f6 f6 f2
	fmul	f7 f4 f4
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f7 f2
	fadd	f7 f6 f2
	fmul	f6 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f6 f2
	fadd	f2 f7 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25583
	jump	L_cont_25581
L_else_25583 : 
	fmul	f7 f4 f5
	ldi	r6 r8 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f5 f5 f3
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f6 f2
	fmul	f3 f3 f4
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f5 f2
L_cont_25581 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else_25586
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25584
L_else_25586 : 
L_cont_25584 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25589
	addi	r6 r0 0
	jump	L_cont_25587
L_else_25589 : 
	addi	r6 r0 1
L_cont_25587 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_25514 : 
	bne	r6 r0 L_else_25518
	addi	r6 r0 2
	add	r1 r12 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25520
	addi	r6 r0 1
	jump	L_cont_25502
L_else_25520 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f3 f12 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f4 f13 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f5 f14 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_25523
	fbgt	f0 f3 L_else_25528
	fadd	f2 f0 f3
	jump	L_cont_25526
L_else_25528 : 
	fsub	f2 f0 f3
L_cont_25526 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25531
	addi	r6 r0 0
	jump	L_cont_25529
L_else_25531 : 
	fbgt	f0 f4 L_else_25536
	fadd	f2 f0 f4
	jump	L_cont_25534
L_else_25536 : 
	fsub	f2 f0 f4
L_cont_25534 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25538
	addi	r6 r0 0
	jump	L_cont_25529
L_else_25538 : 
	fbgt	f0 f5 L_else_25541
	fadd	f2 f0 f5
	jump	L_cont_25539
L_else_25541 : 
	fsub	f2 f0 f5
L_cont_25539 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25543
	addi	r6 r0 0
	jump	L_cont_25529
L_else_25543 : 
	addi	r6 r0 1
L_cont_25529 : 
	bne	r6 r0 L_else_25533
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_25521
L_else_25533 : 
	ldi	r6 r8 6
	jump	L_cont_25521
L_else_25523 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25545
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25548
	addi	r6 r0 0
	jump	L_cont_25546
L_else_25548 : 
	addi	r6 r0 1
L_cont_25546 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_25521
L_else_25545 : 
	fmul	f6 f3 f3
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f7 f6 f2
	fmul	f6 f4 f4
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f6 f7 f2
	fmul	f7 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f7 f2
	fadd	f2 f6 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25551
	jump	L_cont_25549
L_else_25551 : 
	fmul	f7 f4 f5
	ldi	r6 r8 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f5 f5 f3
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f6 f2
	fmul	f3 f3 f4
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f5 f2
L_cont_25549 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25554
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25552
L_else_25554 : 
L_cont_25552 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25557
	addi	r6 r0 0
	jump	L_cont_25555
L_else_25557 : 
	addi	r6 r0 1
L_cont_25555 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_25521 : 
	bne	r6 r0 L_else_25525
	addi	r9 r0 3
	add	r8 r0 r12
	fadd	f7 f0 f12
	fadd	f8 f0 f13
	fadd	f6 f0 f14
	call	L_check_all_inside_2173
	jump	L_cont_25502
L_else_25525 : 
	addi	r6 r0 0
	jump	L_cont_25502
L_else_25518 : 
	addi	r6 r0 0
	jump	L_cont_25502
L_else_25511 : 
	addi	r6 r0 0
L_cont_25502 : 
	bne	r6 r0 L_else_25506
	jump	L_cont_25497
L_else_25506 : 
	fsti	f11 r0 1082
	fsti	f12 r0 1042
	fsti	f13 r0 1043
	fsti	f14 r0 1044
	sti	r11 r0 1045
	sti	r13 r0 1074
L_cont_25497 : 
	addi	r6 r15 1
	add	r15 r0 r6
	jump	L_solve_each_element_2188
L_solve_one_or_network_2192 : 
	add	r1 r17 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else_25710
	return
L_else_25710 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2188
	addi	r19 r19 1
	add	r1 r17 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else_25712
	return
L_else_25712 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2188
	addi	r19 r19 1
	add	r1 r17 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else_25714
	return
L_else_25714 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2188
	addi	r19 r19 1
	add	r1 r17 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else_25716
	return
L_else_25716 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2188
	addi	r19 r19 1
	add	r1 r17 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else_25718
	return
L_else_25718 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2188
	addi	r19 r19 1
	add	r1 r17 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else_25720
	return
L_else_25720 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2188
	addi	r19 r19 1
	add	r1 r17 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else_25722
	return
L_else_25722 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2188
	addi	r19 r19 1
	add	r1 r17 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else_25724
	return
L_else_25724 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2188
	addi	r6 r19 1
	add	r19 r0 r6
	jump	L_solve_one_or_network_2192
L_trace_or_matrix_2196 : 
	add	r1 r20 r22
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_25727
	return
L_else_25727 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_25730
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25854
	jump	L_cont_25728
L_else_25854 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25856
	jump	L_cont_25728
L_else_25856 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25858
	jump	L_cont_25728
L_else_25858 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25860
	jump	L_cont_25728
L_else_25860 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25862
	jump	L_cont_25728
L_else_25862 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25864
	jump	L_cont_25728
L_else_25864 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 7
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25866
	jump	L_cont_25728
L_else_25866 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r19 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
	jump	L_cont_25728
L_else_25730 : 
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
	bne	r7 r4 L_else_25869
	addi	r12 r0 0
	addi	r9 r0 1
	addi	r11 r0 2
	add	r1 r21 r12
	fldi	f2 r1 0
	fbne	f2 f0 L_else_25890
	addi	r6 r0 0
	jump	L_cont_25888
L_else_25890 : 
	ldi	r10 r8 4
	ldi	r6 r8 6
	add	r1 r21 r12
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_25937
	addi	r7 r0 0
	jump	L_cont_25935
L_else_25937 : 
	addi	r7 r0 1
L_cont_25935 : 
	xor	r6 r6 r7
	add	r1 r10 r12
	fldi	f2 r1 0
	bne	r6 r0 L_else_25940
	fsub	f2 f0 f2
	jump	L_cont_25938
L_else_25940 : 
L_cont_25938 : 
	fsub	f3 f2 f8
	add	r1 r21 r12
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r21 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25943
	jump	L_cont_25941
L_else_25943 : 
	fsub	f2 f0 f2
L_cont_25941 : 
	add	r1 r10 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25945
	addi	r6 r0 0
	jump	L_cont_25888
L_else_25945 : 
	add	r1 r21 r11
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25948
	jump	L_cont_25946
L_else_25948 : 
	fsub	f2 f0 f2
L_cont_25946 : 
	add	r1 r10 r11
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25950
	addi	r6 r0 0
	jump	L_cont_25888
L_else_25950 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25888 : 
	bne	r6 r0 L_else_25892
	addi	r10 r0 1
	addi	r12 r0 2
	addi	r9 r0 0
	add	r1 r21 r10
	fldi	f2 r1 0
	fbne	f2 f0 L_else_25895
	addi	r6 r0 0
	jump	L_cont_25893
L_else_25895 : 
	ldi	r7 r8 4
	ldi	r11 r8 6
	add	r1 r21 r10
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_25921
	addi	r6 r0 0
	jump	L_cont_25919
L_else_25921 : 
	addi	r6 r0 1
L_cont_25919 : 
	xor	r6 r11 r6
	add	r1 r7 r10
	fldi	f2 r1 0
	bne	r6 r0 L_else_25924
	fsub	f2 f0 f2
	jump	L_cont_25922
L_else_25924 : 
L_cont_25922 : 
	fsub	f2 f2 f7
	add	r1 r21 r10
	fldi	f3 r1 0
	fdiv	f4 f2 f3
	add	r1 r21 r12
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25927
	jump	L_cont_25925
L_else_25927 : 
	fsub	f2 f0 f2
L_cont_25925 : 
	add	r1 r7 r12
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25929
	addi	r6 r0 0
	jump	L_cont_25893
L_else_25929 : 
	add	r1 r21 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_25932
	jump	L_cont_25930
L_else_25932 : 
	fsub	f2 f0 f2
L_cont_25930 : 
	add	r1 r7 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25934
	addi	r6 r0 0
	jump	L_cont_25893
L_else_25934 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25893 : 
	bne	r6 r0 L_else_25897
	addi	r12 r0 2
	addi	r9 r0 0
	addi	r11 r0 1
	add	r1 r21 r12
	fldi	f2 r1 0
	fbne	f2 f0 L_else_25900
	addi	r6 r0 0
	jump	L_cont_25898
L_else_25900 : 
	ldi	r10 r8 4
	ldi	r6 r8 6
	add	r1 r21 r12
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_25905
	addi	r7 r0 0
	jump	L_cont_25903
L_else_25905 : 
	addi	r7 r0 1
L_cont_25903 : 
	xor	r6 r6 r7
	add	r1 r10 r12
	fldi	f2 r1 0
	bne	r6 r0 L_else_25908
	fsub	f2 f0 f2
	jump	L_cont_25906
L_else_25908 : 
L_cont_25906 : 
	fsub	f3 f2 f9
	add	r1 r21 r12
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r21 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_25911
	jump	L_cont_25909
L_else_25911 : 
	fsub	f2 f0 f2
L_cont_25909 : 
	add	r1 r10 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25913
	addi	r6 r0 0
	jump	L_cont_25898
L_else_25913 : 
	add	r1 r21 r11
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25916
	jump	L_cont_25914
L_else_25916 : 
	fsub	f2 f0 f2
L_cont_25914 : 
	add	r1 r10 r11
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25918
	addi	r6 r0 0
	jump	L_cont_25898
L_else_25918 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25898 : 
	bne	r6 r0 L_else_25902
	addi	r6 r0 0
	jump	L_cont_25867
L_else_25902 : 
	addi	r6 r0 3
	jump	L_cont_25867
L_else_25897 : 
	addi	r6 r0 2
	jump	L_cont_25867
L_else_25892 : 
	addi	r6 r0 1
	jump	L_cont_25867
L_else_25869 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25952
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
	fbgt	f4 f0 L_else_25954
	addi	r6 r0 0
	jump	L_cont_25867
L_else_25954 : 
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
	jump	L_cont_25867
L_else_25952 : 
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
	bne	r6 r0 L_else_25957
	fadd	f3 f0 f2
	jump	L_cont_25955
L_else_25957 : 
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
	fadd	f3 f4 f2
L_cont_25955 : 
	fbne	f3 f0 L_else_25959
	addi	r6 r0 0
	jump	L_cont_25867
L_else_25959 : 
	fldi	f12 r21 0
	fldi	f10 r21 1
	fldi	f11 r21 2
	fmul	f4 f12 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f5 f4 f2
	fmul	f4 f10 f7
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f5 f2
	fmul	f5 f11 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f5 f2
	fadd	f2 f4 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25962
	fadd	f4 f0 f2
	jump	L_cont_25960
L_else_25962 : 
	fmul	f5 f11 f7
	fmul	f4 f10 f9
	fadd	f5 f5 f4
	ldi	r6 r8 9
	fldi	f4 r6 0
	fmul	f5 f5 f4
	fmul	f6 f12 f9
	fmul	f4 f11 f8
	fadd	f6 f6 f4
	ldi	r6 r8 9
	fldi	f4 r6 1
	fmul	f4 f6 f4
	fadd	f6 f5 f4
	fmul	f4 f12 f7
	fmul	f5 f10 f8
	fadd	f5 f4 f5
	ldi	r6 r8 9
	fldi	f4 r6 2
	fmul	f4 f5 f4
	fadd	f4 f6 f4
	fldi	f5 r0 30
	fdiv	f4 f4 f5
	fadd	f4 f2 f4
L_cont_25960 : 
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
	bne	r6 r0 L_else_25965
	jump	L_cont_25963
L_else_25965 : 
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
	fmul	f5 f8 f7
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f5 f2
	fadd	f2 f6 f2
L_cont_25963 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25968
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont_25966
L_else_25968 : 
L_cont_25966 : 
	fmul	f5 f4 f4
	fmul	f2 f3 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_25970
	addi	r6 r0 0
	jump	L_cont_25867
L_else_25970 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else_25973
	fsub	f2 f0 f2
	jump	L_cont_25971
L_else_25973 : 
L_cont_25971 : 
	fsub	f2 f2 f4
	fdiv	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
L_cont_25867 : 
	bne	r6 r0 L_else_25871
	jump	L_cont_25728
L_else_25871 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_25873
	jump	L_cont_25728
L_else_25873 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25875
	jump	L_cont_25728
L_else_25875 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25877
	jump	L_cont_25728
L_else_25877 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25879
	jump	L_cont_25728
L_else_25879 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25881
	jump	L_cont_25728
L_else_25881 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25883
	jump	L_cont_25728
L_else_25883 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25885
	jump	L_cont_25728
L_else_25885 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 7
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25887
	jump	L_cont_25728
L_else_25887 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r19 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
L_cont_25728 : 
	addi	r22 r22 1
	add	r1 r20 r22
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_25732
	return
L_else_25732 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_25735
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25737
	jump	L_cont_25733
L_else_25737 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25739
	jump	L_cont_25733
L_else_25739 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25741
	jump	L_cont_25733
L_else_25741 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25743
	jump	L_cont_25733
L_else_25743 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25745
	jump	L_cont_25733
L_else_25745 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25747
	jump	L_cont_25733
L_else_25747 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r19 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
	jump	L_cont_25733
L_else_25735 : 
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
	bne	r7 r4 L_else_25750
	addi	r10 r0 0
	addi	r12 r0 1
	addi	r9 r0 2
	add	r1 r21 r10
	fldi	f2 r1 0
	fbne	f2 f0 L_else_25769
	addi	r6 r0 0
	jump	L_cont_25767
L_else_25769 : 
	ldi	r7 r8 4
	ldi	r11 r8 6
	add	r1 r21 r10
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_25816
	addi	r6 r0 0
	jump	L_cont_25814
L_else_25816 : 
	addi	r6 r0 1
L_cont_25814 : 
	xor	r6 r11 r6
	add	r1 r7 r10
	fldi	f2 r1 0
	bne	r6 r0 L_else_25819
	fsub	f2 f0 f2
	jump	L_cont_25817
L_else_25819 : 
L_cont_25817 : 
	fsub	f3 f2 f8
	add	r1 r21 r10
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r21 r12
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25822
	jump	L_cont_25820
L_else_25822 : 
	fsub	f2 f0 f2
L_cont_25820 : 
	add	r1 r7 r12
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25824
	addi	r6 r0 0
	jump	L_cont_25767
L_else_25824 : 
	add	r1 r21 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25827
	jump	L_cont_25825
L_else_25827 : 
	fsub	f2 f0 f2
L_cont_25825 : 
	add	r1 r7 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25829
	addi	r6 r0 0
	jump	L_cont_25767
L_else_25829 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25767 : 
	bne	r6 r0 L_else_25771
	addi	r12 r0 1
	addi	r9 r0 2
	addi	r11 r0 0
	add	r1 r21 r12
	fldi	f2 r1 0
	fbne	f2 f0 L_else_25774
	addi	r6 r0 0
	jump	L_cont_25772
L_else_25774 : 
	ldi	r10 r8 4
	ldi	r6 r8 6
	add	r1 r21 r12
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_25800
	addi	r7 r0 0
	jump	L_cont_25798
L_else_25800 : 
	addi	r7 r0 1
L_cont_25798 : 
	xor	r6 r6 r7
	add	r1 r10 r12
	fldi	f2 r1 0
	bne	r6 r0 L_else_25803
	fsub	f2 f0 f2
	jump	L_cont_25801
L_else_25803 : 
L_cont_25801 : 
	fsub	f3 f2 f7
	add	r1 r21 r12
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r21 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25806
	jump	L_cont_25804
L_else_25806 : 
	fsub	f2 f0 f2
L_cont_25804 : 
	add	r1 r10 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25808
	addi	r6 r0 0
	jump	L_cont_25772
L_else_25808 : 
	add	r1 r21 r11
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_25811
	jump	L_cont_25809
L_else_25811 : 
	fsub	f2 f0 f2
L_cont_25809 : 
	add	r1 r10 r11
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25813
	addi	r6 r0 0
	jump	L_cont_25772
L_else_25813 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25772 : 
	bne	r6 r0 L_else_25776
	addi	r10 r0 2
	addi	r11 r0 0
	addi	r9 r0 1
	add	r1 r21 r10
	fldi	f2 r1 0
	fbne	f2 f0 L_else_25779
	addi	r6 r0 0
	jump	L_cont_25777
L_else_25779 : 
	ldi	r7 r8 4
	ldi	r8 r8 6
	add	r1 r21 r10
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_25784
	addi	r6 r0 0
	jump	L_cont_25782
L_else_25784 : 
	addi	r6 r0 1
L_cont_25782 : 
	xor	r6 r8 r6
	add	r1 r7 r10
	fldi	f2 r1 0
	bne	r6 r0 L_else_25787
	fsub	f2 f0 f2
	jump	L_cont_25785
L_else_25787 : 
L_cont_25785 : 
	fsub	f3 f2 f9
	add	r1 r21 r10
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r21 r11
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_25790
	jump	L_cont_25788
L_else_25790 : 
	fsub	f2 f0 f2
L_cont_25788 : 
	add	r1 r7 r11
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25792
	addi	r6 r0 0
	jump	L_cont_25777
L_else_25792 : 
	add	r1 r21 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25795
	jump	L_cont_25793
L_else_25795 : 
	fsub	f2 f0 f2
L_cont_25793 : 
	add	r1 r7 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_25797
	addi	r6 r0 0
	jump	L_cont_25777
L_else_25797 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25777 : 
	bne	r6 r0 L_else_25781
	addi	r6 r0 0
	jump	L_cont_25748
L_else_25781 : 
	addi	r6 r0 3
	jump	L_cont_25748
L_else_25776 : 
	addi	r6 r0 2
	jump	L_cont_25748
L_else_25771 : 
	addi	r6 r0 1
	jump	L_cont_25748
L_else_25750 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25831
	ldi	r6 r8 4
	fldi	f3 r21 0
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fldi	f3 r21 1
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r21 2
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fbgt	f4 f0 L_else_25833
	addi	r6 r0 0
	jump	L_cont_25748
L_else_25833 : 
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
	jump	L_cont_25748
L_else_25831 : 
	fldi	f6 r21 0
	fldi	f10 r21 1
	fldi	f5 r21 2
	fmul	f3 f6 f6
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f10 f10
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25836
	fadd	f4 f0 f2
	jump	L_cont_25834
L_else_25836 : 
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
L_cont_25834 : 
	fbne	f4 f0 L_else_25838
	addi	r6 r0 0
	jump	L_cont_25748
L_else_25838 : 
	fldi	f12 r21 0
	fldi	f11 r21 1
	fldi	f10 r21 2
	fmul	f3 f12 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f5 f3 f2
	fmul	f3 f11 f7
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f5 f2
	fmul	f5 f10 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25841
	fadd	f3 f0 f2
	jump	L_cont_25839
L_else_25841 : 
	fmul	f5 f10 f7
	fmul	f3 f11 f9
	fadd	f5 f5 f3
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f6 f5 f3
	fmul	f5 f12 f9
	fmul	f3 f10 f8
	fadd	f5 f5 f3
	ldi	r6 r8 9
	fldi	f3 r6 1
	fmul	f3 f5 f3
	fadd	f6 f6 f3
	fmul	f5 f12 f7
	fmul	f3 f11 f8
	fadd	f5 f5 f3
	ldi	r6 r8 9
	fldi	f3 r6 2
	fmul	f3 f5 f3
	fadd	f5 f6 f3
	fldi	f3 r0 30
	fdiv	f3 f5 f3
	fadd	f3 f2 f3
L_cont_25839 : 
	fmul	f5 f8 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f6 f5 f2
	fmul	f5 f7 f7
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f6 f2
	fmul	f6 f9 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f6 f2
	fadd	f2 f5 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25844
	jump	L_cont_25842
L_else_25844 : 
	fmul	f6 f7 f9
	ldi	r6 r8 9
	fldi	f5 r6 0
	fmul	f5 f6 f5
	fadd	f6 f2 f5
	fmul	f5 f9 f8
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f6 f2
	fmul	f6 f8 f7
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f6 f2
	fadd	f2 f5 f2
L_cont_25842 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else_25847
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont_25845
L_else_25847 : 
L_cont_25845 : 
	fmul	f5 f3 f3
	fmul	f2 f4 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_25849
	addi	r6 r0 0
	jump	L_cont_25748
L_else_25849 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else_25852
	fsub	f2 f0 f2
	jump	L_cont_25850
L_else_25852 : 
L_cont_25850 : 
	fsub	f2 f2 f3
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r6 r0 1
L_cont_25748 : 
	bne	r6 r0 L_else_25752
	jump	L_cont_25733
L_else_25752 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_25754
	jump	L_cont_25733
L_else_25754 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25756
	jump	L_cont_25733
L_else_25756 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25758
	jump	L_cont_25733
L_else_25758 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25760
	jump	L_cont_25733
L_else_25760 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25762
	jump	L_cont_25733
L_else_25762 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25764
	jump	L_cont_25733
L_else_25764 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25766
	jump	L_cont_25733
L_else_25766 : 
	ldi	r12 r6 1083
	addi	r15 r0 0
	add	r14 r0 r21
	call	L_solve_each_element_2188
	addi	r19 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
L_cont_25733 : 
	addi	r6 r22 1
	add	r22 r0 r6
	jump	L_trace_or_matrix_2196
L_solve_each_element_fast_2202 : 
	ldi	r10 r12 0
	add	r1 r14 r15
	ldi	r13 r1 0
	bne	r13 r5 L_else_25976
	return
L_else_25976 : 
	ldi	r9 r13 1970
	ldi	r11 r9 10
	fldi	f7 r11 0
	fldi	f6 r11 1
	fldi	f8 r11 2
	ldi	r6 r12 1
	add	r1 r6 r13
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else_25979
	ldi	r7 r12 0
	fldi	f2 r8 0
	fsub	f3 f2 f7
	fldi	f2 r8 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26111
	jump	L_cont_26109
L_else_26111 : 
	fsub	f2 f0 f2
L_cont_26109 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26114
	addi	r6 r0 0
	jump	L_cont_26112
L_else_26114 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26151
	jump	L_cont_26149
L_else_26151 : 
	fsub	f2 f0 f2
L_cont_26149 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26153
	addi	r6 r0 0
	jump	L_cont_26112
L_else_26153 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_26156
	addi	r6 r0 1
	jump	L_cont_26154
L_else_26156 : 
	addi	r6 r0 0
L_cont_26154 : 
	sub	r6 r4 r6
L_cont_26112 : 
	bne	r6 r0 L_else_26116
	fldi	f2 r8 2
	fsub	f2 f2 f6
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26119
	jump	L_cont_26117
L_else_26119 : 
	fsub	f2 f0 f2
L_cont_26117 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26122
	addi	r6 r0 0
	jump	L_cont_26120
L_else_26122 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26143
	jump	L_cont_26141
L_else_26143 : 
	fsub	f2 f0 f2
L_cont_26141 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26145
	addi	r6 r0 0
	jump	L_cont_26120
L_else_26145 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_26148
	addi	r6 r0 1
	jump	L_cont_26146
L_else_26148 : 
	addi	r6 r0 0
L_cont_26146 : 
	sub	r6 r4 r6
L_cont_26120 : 
	bne	r6 r0 L_else_26124
	fldi	f2 r8 4
	fsub	f3 f2 f8
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26127
	jump	L_cont_26125
L_else_26127 : 
	fsub	f2 f0 f2
L_cont_26125 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26130
	addi	r6 r0 0
	jump	L_cont_26128
L_else_26130 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26135
	jump	L_cont_26133
L_else_26135 : 
	fsub	f2 f0 f2
L_cont_26133 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26137
	addi	r6 r0 0
	jump	L_cont_26128
L_else_26137 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_26140
	addi	r6 r0 1
	jump	L_cont_26138
L_else_26140 : 
	addi	r6 r0 0
L_cont_26138 : 
	sub	r6 r4 r6
L_cont_26128 : 
	bne	r6 r0 L_else_26132
	addi	r11 r0 0
	jump	L_cont_25977
L_else_26132 : 
	fsti	f4 r0 1073
	addi	r11 r0 3
	jump	L_cont_25977
L_else_26124 : 
	fsti	f4 r0 1073
	addi	r11 r0 2
	jump	L_cont_25977
L_else_26116 : 
	fsti	f4 r0 1073
	addi	r11 r0 1
	jump	L_cont_25977
L_else_25979 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26158
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_26160
	addi	r11 r0 0
	jump	L_cont_25977
L_else_26160 : 
	fldi	f2 r8 0
	fldi	f3 r11 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r11 r0 1
	jump	L_cont_25977
L_else_26158 : 
	fldi	f5 r8 0
	fbne	f5 f0 L_else_26162
	addi	r11 r0 0
	jump	L_cont_25977
L_else_26162 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f8
	fadd	f4 f3 f2
	fldi	f2 r11 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_26164
	addi	r11 r0 0
	jump	L_cont_25977
L_else_26164 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_26167
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26165
L_else_26167 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26165 : 
	addi	r11 r0 1
L_cont_25977 : 
	bne	r11 r0 L_else_25981
	ldi	r6 r13 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_25983
	return
L_else_25983 : 
	addi	r6 r15 1
	add	r15 r0 r6
	jump	L_solve_each_element_fast_2202
L_else_25981 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_25986
	jump	L_cont_25984
L_else_25986 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_25988
	jump	L_cont_25984
L_else_25988 : 
	fldi	f2 r0 33
	fadd	f14 f3 f2
	fldi	f2 r10 0
	fmul	f3 f2 f14
	fldi	f2 r0 1066
	fadd	f13 f3 f2
	fldi	f2 r10 1
	fmul	f3 f2 f14
	fldi	f2 r0 1067
	fadd	f12 f3 f2
	fldi	f2 r10 2
	fmul	f3 f2 f14
	fldi	f2 r0 1068
	fadd	f11 f3 f2
	addi	r6 r0 0
	add	r1 r14 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_25991
	addi	r6 r0 1
	jump	L_cont_25989
L_else_25991 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f3 f13 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f5 f12 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f4 f11 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_25996
	fbgt	f0 f3 L_else_26079
	fadd	f2 f0 f3
	jump	L_cont_26077
L_else_26079 : 
	fsub	f2 f0 f3
L_cont_26077 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26082
	addi	r6 r0 0
	jump	L_cont_26080
L_else_26082 : 
	fbgt	f0 f5 L_else_26087
	fadd	f2 f0 f5
	jump	L_cont_26085
L_else_26087 : 
	fsub	f2 f0 f5
L_cont_26085 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26089
	addi	r6 r0 0
	jump	L_cont_26080
L_else_26089 : 
	fbgt	f0 f4 L_else_26092
	fadd	f2 f0 f4
	jump	L_cont_26090
L_else_26092 : 
	fsub	f2 f0 f4
L_cont_26090 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26094
	addi	r6 r0 0
	jump	L_cont_26080
L_else_26094 : 
	addi	r6 r0 1
L_cont_26080 : 
	bne	r6 r0 L_else_26084
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_25994
L_else_26084 : 
	ldi	r6 r8 6
	jump	L_cont_25994
L_else_25996 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26096
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_26099
	addi	r6 r0 0
	jump	L_cont_26097
L_else_26099 : 
	addi	r6 r0 1
L_cont_26097 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_25994
L_else_26096 : 
	fmul	f6 f3 f3
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f7 f6 f2
	fmul	f6 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f6 f7 f2
	fmul	f7 f4 f4
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f7 f2
	fadd	f2 f6 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_26102
	jump	L_cont_26100
L_else_26102 : 
	fmul	f7 f5 f4
	ldi	r6 r8 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f4 f4 f3
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f6 f2
	fmul	f3 f3 f5
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_26100 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else_26105
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26103
L_else_26105 : 
L_cont_26103 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_26108
	addi	r6 r0 0
	jump	L_cont_26106
L_else_26108 : 
	addi	r6 r0 1
L_cont_26106 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_25994 : 
	bne	r6 r0 L_else_25998
	addi	r6 r0 1
	add	r1 r14 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26000
	addi	r6 r0 1
	jump	L_cont_25989
L_else_26000 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f3 f13 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f4 f12 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f5 f11 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_26003
	fbgt	f0 f3 L_else_26047
	fadd	f2 f0 f3
	jump	L_cont_26045
L_else_26047 : 
	fsub	f2 f0 f3
L_cont_26045 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26050
	addi	r6 r0 0
	jump	L_cont_26048
L_else_26050 : 
	fbgt	f0 f4 L_else_26055
	fadd	f2 f0 f4
	jump	L_cont_26053
L_else_26055 : 
	fsub	f2 f0 f4
L_cont_26053 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26057
	addi	r6 r0 0
	jump	L_cont_26048
L_else_26057 : 
	fbgt	f0 f5 L_else_26060
	fadd	f2 f0 f5
	jump	L_cont_26058
L_else_26060 : 
	fsub	f2 f0 f5
L_cont_26058 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26062
	addi	r6 r0 0
	jump	L_cont_26048
L_else_26062 : 
	addi	r6 r0 1
L_cont_26048 : 
	bne	r6 r0 L_else_26052
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_26001
L_else_26052 : 
	ldi	r6 r8 6
	jump	L_cont_26001
L_else_26003 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26064
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_26067
	addi	r6 r0 0
	jump	L_cont_26065
L_else_26067 : 
	addi	r6 r0 1
L_cont_26065 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_26001
L_else_26064 : 
	fmul	f6 f3 f3
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f6 f6 f2
	fmul	f7 f4 f4
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f7 f2
	fadd	f7 f6 f2
	fmul	f6 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f6 f2
	fadd	f2 f7 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_26070
	jump	L_cont_26068
L_else_26070 : 
	fmul	f7 f4 f5
	ldi	r6 r8 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f5 f5 f3
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f5 f2
	fadd	f5 f6 f2
	fmul	f3 f3 f4
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f5 f2
L_cont_26068 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_26073
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26071
L_else_26073 : 
L_cont_26071 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_26076
	addi	r6 r0 0
	jump	L_cont_26074
L_else_26076 : 
	addi	r6 r0 1
L_cont_26074 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_26001 : 
	bne	r6 r0 L_else_26005
	addi	r6 r0 2
	add	r1 r14 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26007
	addi	r6 r0 1
	jump	L_cont_25989
L_else_26007 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f3 f13 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f5 f12 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f4 f11 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_26010
	fbgt	f0 f3 L_else_26015
	fadd	f2 f0 f3
	jump	L_cont_26013
L_else_26015 : 
	fsub	f2 f0 f3
L_cont_26013 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26018
	addi	r6 r0 0
	jump	L_cont_26016
L_else_26018 : 
	fbgt	f0 f5 L_else_26023
	fadd	f2 f0 f5
	jump	L_cont_26021
L_else_26023 : 
	fsub	f2 f0 f5
L_cont_26021 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26025
	addi	r6 r0 0
	jump	L_cont_26016
L_else_26025 : 
	fbgt	f0 f4 L_else_26028
	fadd	f2 f0 f4
	jump	L_cont_26026
L_else_26028 : 
	fsub	f2 f0 f4
L_cont_26026 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26030
	addi	r6 r0 0
	jump	L_cont_26016
L_else_26030 : 
	addi	r6 r0 1
L_cont_26016 : 
	bne	r6 r0 L_else_26020
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_26008
L_else_26020 : 
	ldi	r6 r8 6
	jump	L_cont_26008
L_else_26010 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26032
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f3
	fldi	f2 r6 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_26035
	addi	r6 r0 0
	jump	L_cont_26033
L_else_26035 : 
	addi	r6 r0 1
L_cont_26033 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_26008
L_else_26032 : 
	fmul	f6 f3 f3
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f7 f6 f2
	fmul	f6 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f6 f7 f2
	fmul	f7 f4 f4
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f7 f2
	fadd	f2 f6 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_26038
	jump	L_cont_26036
L_else_26038 : 
	fmul	f7 f5 f4
	ldi	r6 r8 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f4 f4 f3
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f2 f6 f2
	fmul	f4 f3 f5
	ldi	r6 r8 9
	fldi	f3 r6 2
	fmul	f3 f4 f3
	fadd	f2 f2 f3
L_cont_26036 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else_26041
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26039
L_else_26041 : 
L_cont_26039 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_26044
	addi	r6 r0 0
	jump	L_cont_26042
L_else_26044 : 
	addi	r6 r0 1
L_cont_26042 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_26008 : 
	bne	r6 r0 L_else_26012
	addi	r9 r0 3
	add	r8 r0 r14
	fadd	f7 f0 f13
	fadd	f8 f0 f12
	fadd	f6 f0 f11
	call	L_check_all_inside_2173
	jump	L_cont_25989
L_else_26012 : 
	addi	r6 r0 0
	jump	L_cont_25989
L_else_26005 : 
	addi	r6 r0 0
	jump	L_cont_25989
L_else_25998 : 
	addi	r6 r0 0
L_cont_25989 : 
	bne	r6 r0 L_else_25993
	jump	L_cont_25984
L_else_25993 : 
	fsti	f14 r0 1082
	fsti	f13 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r13 r0 1045
	sti	r11 r0 1074
L_cont_25984 : 
	addi	r6 r15 1
	add	r15 r0 r6
	jump	L_solve_each_element_fast_2202
L_solve_one_or_network_fast_2206 : 
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_26170
	return
L_else_26170 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_26172
	return
L_else_26172 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_26174
	return
L_else_26174 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_26176
	return
L_else_26176 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_26178
	return
L_else_26178 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_26180
	return
L_else_26180 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_26182
	return
L_else_26182 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_26184
	return
L_else_26184 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r6 r18 1
	add	r18 r0 r6
	jump	L_solve_one_or_network_fast_2206
L_trace_or_matrix_fast_2210 : 
	add	r1 r19 r21
	ldi	r16 r1 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_26187
	return
L_else_26187 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26190
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26287
	jump	L_cont_26188
L_else_26287 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26289
	jump	L_cont_26188
L_else_26289 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26291
	jump	L_cont_26188
L_else_26291 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26293
	jump	L_cont_26188
L_else_26293 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 5
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26295
	jump	L_cont_26188
L_else_26295 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 6
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26297
	jump	L_cont_26188
L_else_26297 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 7
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26299
	jump	L_cont_26188
L_else_26299 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r18 r0 8
	add	r17 r0 r20
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_26188
L_else_26190 : 
	ldi	r9 r7 1970
	ldi	r10 r9 10
	fldi	f7 r10 0
	fldi	f6 r10 1
	fldi	f8 r10 2
	ldi	r6 r20 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else_26302
	ldi	r7 r20 0
	fldi	f2 r8 0
	fsub	f3 f2 f7
	fldi	f2 r8 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26323
	jump	L_cont_26321
L_else_26323 : 
	fsub	f2 f0 f2
L_cont_26321 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26326
	addi	r6 r0 0
	jump	L_cont_26324
L_else_26326 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26363
	jump	L_cont_26361
L_else_26363 : 
	fsub	f2 f0 f2
L_cont_26361 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26365
	addi	r6 r0 0
	jump	L_cont_26324
L_else_26365 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_26368
	addi	r6 r0 1
	jump	L_cont_26366
L_else_26368 : 
	addi	r6 r0 0
L_cont_26366 : 
	sub	r6 r4 r6
L_cont_26324 : 
	bne	r6 r0 L_else_26328
	fldi	f2 r8 2
	fsub	f2 f2 f6
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26331
	jump	L_cont_26329
L_else_26331 : 
	fsub	f2 f0 f2
L_cont_26329 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26334
	addi	r6 r0 0
	jump	L_cont_26332
L_else_26334 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26355
	jump	L_cont_26353
L_else_26355 : 
	fsub	f2 f0 f2
L_cont_26353 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26357
	addi	r6 r0 0
	jump	L_cont_26332
L_else_26357 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_26360
	addi	r6 r0 1
	jump	L_cont_26358
L_else_26360 : 
	addi	r6 r0 0
L_cont_26358 : 
	sub	r6 r4 r6
L_cont_26332 : 
	bne	r6 r0 L_else_26336
	fldi	f2 r8 4
	fsub	f3 f2 f8
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26339
	jump	L_cont_26337
L_else_26339 : 
	fsub	f2 f0 f2
L_cont_26337 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26342
	addi	r6 r0 0
	jump	L_cont_26340
L_else_26342 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26347
	jump	L_cont_26345
L_else_26347 : 
	fsub	f2 f0 f2
L_cont_26345 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26349
	addi	r6 r0 0
	jump	L_cont_26340
L_else_26349 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_26352
	addi	r6 r0 1
	jump	L_cont_26350
L_else_26352 : 
	addi	r6 r0 0
L_cont_26350 : 
	sub	r6 r4 r6
L_cont_26340 : 
	bne	r6 r0 L_else_26344
	addi	r6 r0 0
	jump	L_cont_26300
L_else_26344 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26300
L_else_26336 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26300
L_else_26328 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26300
L_else_26302 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26370
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_26372
	addi	r6 r0 0
	jump	L_cont_26300
L_else_26372 : 
	fldi	f2 r8 0
	fldi	f3 r10 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_26300
L_else_26370 : 
	fldi	f5 r8 0
	fbne	f5 f0 L_else_26374
	addi	r6 r0 0
	jump	L_cont_26300
L_else_26374 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f8
	fadd	f4 f3 f2
	fldi	f3 r10 3
	fmul	f2 f4 f4
	fmul	f3 f5 f3
	fsub	f2 f2 f3
	fbgt	f2 f0 L_else_26376
	addi	r6 r0 0
	jump	L_cont_26300
L_else_26376 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_26379
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26377
L_else_26379 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26377 : 
	addi	r6 r0 1
L_cont_26300 : 
	bne	r6 r0 L_else_26304
	jump	L_cont_26188
L_else_26304 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_26306
	jump	L_cont_26188
L_else_26306 : 
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26308
	jump	L_cont_26188
L_else_26308 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26310
	jump	L_cont_26188
L_else_26310 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26312
	jump	L_cont_26188
L_else_26312 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26314
	jump	L_cont_26188
L_else_26314 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 5
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26316
	jump	L_cont_26188
L_else_26316 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 6
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26318
	jump	L_cont_26188
L_else_26318 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 7
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26320
	jump	L_cont_26188
L_else_26320 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r18 r0 8
	add	r17 r0 r20
	call	L_solve_one_or_network_fast_2206
L_cont_26188 : 
	addi	r21 r21 1
	add	r1 r19 r21
	ldi	r16 r1 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_26192
	return
L_else_26192 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26195
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26197
	jump	L_cont_26193
L_else_26197 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26199
	jump	L_cont_26193
L_else_26199 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26201
	jump	L_cont_26193
L_else_26201 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26203
	jump	L_cont_26193
L_else_26203 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 5
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26205
	jump	L_cont_26193
L_else_26205 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 6
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26207
	jump	L_cont_26193
L_else_26207 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r18 r0 7
	add	r17 r0 r20
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_26193
L_else_26195 : 
	ldi	r10 r7 1970
	ldi	r8 r10 10
	fldi	f8 r8 0
	fldi	f6 r8 1
	fldi	f7 r8 2
	ldi	r6 r20 1
	add	r1 r6 r7
	ldi	r9 r1 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_26210
	ldi	r7 r20 0
	fldi	f2 r9 0
	fsub	f2 f2 f8
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26229
	jump	L_cont_26227
L_else_26229 : 
	fsub	f2 f0 f2
L_cont_26227 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26232
	addi	r6 r0 0
	jump	L_cont_26230
L_else_26232 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26269
	jump	L_cont_26267
L_else_26269 : 
	fsub	f2 f0 f2
L_cont_26267 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26271
	addi	r6 r0 0
	jump	L_cont_26230
L_else_26271 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else_26274
	addi	r6 r0 1
	jump	L_cont_26272
L_else_26274 : 
	addi	r6 r0 0
L_cont_26272 : 
	sub	r6 r4 r6
L_cont_26230 : 
	bne	r6 r0 L_else_26234
	fldi	f2 r9 2
	fsub	f2 f2 f6
	fldi	f3 r9 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26237
	jump	L_cont_26235
L_else_26237 : 
	fsub	f2 f0 f2
L_cont_26235 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26240
	addi	r6 r0 0
	jump	L_cont_26238
L_else_26240 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26261
	jump	L_cont_26259
L_else_26261 : 
	fsub	f2 f0 f2
L_cont_26259 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26263
	addi	r6 r0 0
	jump	L_cont_26238
L_else_26263 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else_26266
	addi	r6 r0 1
	jump	L_cont_26264
L_else_26266 : 
	addi	r6 r0 0
L_cont_26264 : 
	sub	r6 r4 r6
L_cont_26238 : 
	bne	r6 r0 L_else_26242
	fldi	f2 r9 4
	fsub	f3 f2 f7
	fldi	f2 r9 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26245
	jump	L_cont_26243
L_else_26245 : 
	fsub	f2 f0 f2
L_cont_26243 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26248
	addi	r6 r0 0
	jump	L_cont_26246
L_else_26248 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26253
	jump	L_cont_26251
L_else_26253 : 
	fsub	f2 f0 f2
L_cont_26251 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26255
	addi	r6 r0 0
	jump	L_cont_26246
L_else_26255 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else_26258
	addi	r6 r0 1
	jump	L_cont_26256
L_else_26258 : 
	addi	r6 r0 0
L_cont_26256 : 
	sub	r6 r4 r6
L_cont_26246 : 
	bne	r6 r0 L_else_26250
	addi	r6 r0 0
	jump	L_cont_26208
L_else_26250 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26208
L_else_26242 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26208
L_else_26234 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26208
L_else_26210 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26276
	fldi	f2 r9 0
	fbgt	f0 f2 L_else_26278
	addi	r6 r0 0
	jump	L_cont_26208
L_else_26278 : 
	fldi	f3 r9 0
	fldi	f2 r8 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_26208
L_else_26276 : 
	fldi	f5 r9 0
	fbne	f5 f0 L_else_26280
	addi	r6 r0 0
	jump	L_cont_26208
L_else_26280 : 
	fldi	f2 r9 1
	fmul	f3 f2 f8
	fldi	f2 r9 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r9 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r8 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_26282
	addi	r6 r0 0
	jump	L_cont_26208
L_else_26282 : 
	ldi	r6 r10 6
	bne	r6 r0 L_else_26285
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26283
L_else_26285 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26283 : 
	addi	r6 r0 1
L_cont_26208 : 
	bne	r6 r0 L_else_26212
	jump	L_cont_26193
L_else_26212 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_26214
	jump	L_cont_26193
L_else_26214 : 
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26216
	jump	L_cont_26193
L_else_26216 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26218
	jump	L_cont_26193
L_else_26218 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26220
	jump	L_cont_26193
L_else_26220 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26222
	jump	L_cont_26193
L_else_26222 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 5
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26224
	jump	L_cont_26193
L_else_26224 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 6
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26226
	jump	L_cont_26193
L_else_26226 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r18 r0 7
	add	r17 r0 r20
	call	L_solve_one_or_network_fast_2206
L_cont_26193 : 
	addi	r6 r21 1
	add	r21 r0 r6
	jump	L_trace_or_matrix_fast_2210
L_utexture_2225 : 
	ldi	r9 r7 0
	ldi	r8 r7 8
	fldi	f2 r8 0
	fsti	f2 r0 1049
	ldi	r8 r7 8
	fldi	f2 r8 1
	fsti	f2 r0 1050
	ldi	r8 r7 8
	fldi	f2 r8 2
	fsti	f2 r0 1051
	bne	r9 r4 L_else_26382
	fldi	f3 r6 0
	ldi	r8 r7 5
	fldi	f2 r8 0
	fsub	f4 f3 f2
	fldi	f2 r0 35
	fmul	f2 f4 f2
	flr	f2 f2
	fldi	f3 r0 36
	fmul	f2 f2 f3
	fsub	f6 f4 f2
	fldi	f5 r0 37
	fldi	f3 r6 2
	ldi	r6 r7 5
	fldi	f2 r6 2
	fsub	f4 f3 f2
	fldi	f2 r0 35
	fmul	f2 f4 f2
	flr	f3 f2
	fldi	f2 r0 36
	fmul	f2 f3 f2
	fsub	f3 f4 f2
	fldi	f2 r0 37
	fbgt	f5 f6 L_else_26385
	fbgt	f2 f3 L_else_26387
	fldi	f2 r0 38
	jump	L_cont_26383
L_else_26387 : 
	fldi	f2 r0 29
	jump	L_cont_26383
L_else_26385 : 
	fbgt	f2 f3 L_else_26389
	fldi	f2 r0 29
	jump	L_cont_26383
L_else_26389 : 
	fldi	f2 r0 38
L_cont_26383 : 
	fsti	f2 r0 1050
	return
L_else_26382 : 
	addi	r8 r0 2
	bne	r9 r8 L_else_26391
	fldi	f2 r6 1
	fldi	f3 r0 39
	fmul	f9 f2 f3
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
L_else_26391 : 
	addi	r8 r0 3
	bne	r9 r8 L_else_26393
	fldi	f3 r6 0
	ldi	r8 r7 5
	fldi	f2 r8 0
	fsub	f4 f3 f2
	fldi	f3 r6 2
	ldi	r6 r7 5
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
L_else_26393 : 
	addi	r8 r0 4
	bne	r9 r8 L_else_26395
	fldi	f3 r6 0
	ldi	r8 r7 5
	fldi	f2 r8 0
	fsub	f3 f3 f2
	ldi	r8 r7 4
	fldi	f2 r8 0
	fsqrt	f2 f2
	fmul	f3 f3 f2
	fldi	f4 r6 2
	ldi	r8 r7 5
	fldi	f2 r8 2
	fsub	f4 f4 f2
	ldi	r8 r7 4
	fldi	f2 r8 2
	fsqrt	f2 f2
	fmul	f5 f4 f2
	fmul	f4 f3 f3
	fmul	f2 f5 f5
	fadd	f15 f4 f2
	fbgt	f0 f3 L_else_26398
	fadd	f2 f0 f3
	jump	L_cont_26396
L_else_26398 : 
	fsub	f2 f0 f3
L_cont_26396 : 
	fldi	f4 r0 41
	fbgt	f4 f2 L_else_26401
	fdiv	f13 f5 f3
	fbgt	f0 f13 L_else_26416
	jump	L_cont_26414
L_else_26416 : 
	fsub	f13 f0 f13
L_cont_26414 : 
	call	L_atan_1882
	fldi	f3 r0 42
	fmul	f3 f2 f3
	fldi	f2 r0 40
	fdiv	f3 f3 f2
	jump	L_cont_26399
L_else_26401 : 
	fldi	f3 r0 43
L_cont_26399 : 
	flr	f2 f3
	fsub	f16 f3 f2
	fldi	f3 r6 1
	ldi	r6 r7 5
	fldi	f2 r6 1
	fsub	f3 f3 f2
	ldi	r6 r7 4
	fldi	f2 r6 1
	fsqrt	f2 f2
	fmul	f4 f3 f2
	fbgt	f0 f15 L_else_26404
	fadd	f2 f0 f15
	jump	L_cont_26402
L_else_26404 : 
	fsub	f2 f0 f15
L_cont_26402 : 
	fldi	f3 r0 41
	fbgt	f3 f2 L_else_26407
	fdiv	f13 f4 f15
	fbgt	f0 f13 L_else_26413
	jump	L_cont_26411
L_else_26413 : 
	fsub	f13 f0 f13
L_cont_26411 : 
	call	L_atan_1882
	fldi	f3 r0 42
	fmul	f2 f2 f3
	fldi	f3 r0 40
	fdiv	f2 f2 f3
	jump	L_cont_26405
L_else_26407 : 
	fldi	f2 r0 43
L_cont_26405 : 
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
	fbgt	f0 f2 L_else_26410
	jump	L_cont_26408
L_else_26410 : 
	fldi	f2 r0 29
L_cont_26408 : 
	fldi	f3 r0 38
	fmul	f2 f3 f2
	fldi	f3 r0 45
	fdiv	f2 f2 f3
	fsti	f2 r0 1051
	return
L_else_26395 : 
	return
L_trace_reflections_2232 : 
	bgt	r0 r23 L_else_26419
	ldi	r22 r23 1185
	ldi	r24 r22 1
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r21 r0 0
	ldi	r19 r0 1183
	add	r20 r0 r24
	call	L_trace_or_matrix_fast_2210
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_26422
	addi	r6 r0 0
	jump	L_cont_26420
L_else_26422 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_26570
	addi	r6 r0 0
	jump	L_cont_26420
L_else_26570 : 
	addi	r6 r0 1
L_cont_26420 : 
	bne	r6 r0 L_else_26425
	jump	L_cont_26423
L_else_26425 : 
	ldi	r7 r0 1045
	addi	r6 r0 4
	mul	r7 r7 r6
	ldi	r6 r0 1074
	add	r7 r7 r6
	ldi	r6 r22 0
	bne	r7 r6 L_else_26427
	addi	r6 r0 0
	ldi	r16 r0 1183
	add	r1 r16 r6
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_26430
	addi	r6 r0 0
	jump	L_cont_26428
L_else_26430 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26440
	addi	r6 r0 1
	jump	L_cont_26438
L_else_26440 : 
	addi	r10 r0 1905
	ldi	r9 r7 1970
	fldi	f3 r0 1042
	ldi	r6 r9 5
	fldi	f2 r6 0
	fsub	f7 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r9 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r9 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else_26472
	ldi	r7 r10 0
	fldi	f2 r8 0
	fsub	f2 f2 f7
	fldi	f3 r8 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_26506
	jump	L_cont_26504
L_else_26506 : 
	fsub	f2 f0 f2
L_cont_26504 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26509
	addi	r6 r0 0
	jump	L_cont_26507
L_else_26509 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26546
	jump	L_cont_26544
L_else_26546 : 
	fsub	f2 f0 f2
L_cont_26544 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26548
	addi	r6 r0 0
	jump	L_cont_26507
L_else_26548 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_26551
	addi	r6 r0 1
	jump	L_cont_26549
L_else_26551 : 
	addi	r6 r0 0
L_cont_26549 : 
	sub	r6 r4 r6
L_cont_26507 : 
	bne	r6 r0 L_else_26511
	fldi	f2 r8 2
	fsub	f3 f2 f5
	fldi	f2 r8 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26514
	jump	L_cont_26512
L_else_26514 : 
	fsub	f2 f0 f2
L_cont_26512 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26517
	addi	r6 r0 0
	jump	L_cont_26515
L_else_26517 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26538
	jump	L_cont_26536
L_else_26538 : 
	fsub	f2 f0 f2
L_cont_26536 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26540
	addi	r6 r0 0
	jump	L_cont_26515
L_else_26540 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_26543
	addi	r6 r0 1
	jump	L_cont_26541
L_else_26543 : 
	addi	r6 r0 0
L_cont_26541 : 
	sub	r6 r4 r6
L_cont_26515 : 
	bne	r6 r0 L_else_26519
	fldi	f2 r8 4
	fsub	f2 f2 f9
	fldi	f3 r8 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26522
	jump	L_cont_26520
L_else_26522 : 
	fsub	f2 f0 f2
L_cont_26520 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26525
	addi	r6 r0 0
	jump	L_cont_26523
L_else_26525 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_26530
	jump	L_cont_26528
L_else_26530 : 
	fsub	f2 f0 f2
L_cont_26528 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26532
	addi	r6 r0 0
	jump	L_cont_26523
L_else_26532 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_26535
	addi	r6 r0 1
	jump	L_cont_26533
L_else_26535 : 
	addi	r6 r0 0
L_cont_26533 : 
	sub	r6 r4 r6
L_cont_26523 : 
	bne	r6 r0 L_else_26527
	addi	r6 r0 0
	jump	L_cont_26470
L_else_26527 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26470
L_else_26519 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26470
L_else_26511 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26470
L_else_26472 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26553
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_26555
	addi	r6 r0 0
	jump	L_cont_26470
L_else_26555 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_26470
L_else_26553 : 
	fldi	f8 r8 0
	fbne	f8 f0 L_else_26557
	addi	r6 r0 0
	jump	L_cont_26470
L_else_26557 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f6 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r9 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r6 r9 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r6 r9 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r9 3
	bne	r6 r0 L_else_26560
	jump	L_cont_26558
L_else_26560 : 
	fmul	f4 f5 f9
	ldi	r6 r9 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f7
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f5
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_26558 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else_26563
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26561
L_else_26563 : 
L_cont_26561 : 
	fmul	f3 f6 f6
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_26565
	addi	r6 r0 0
	jump	L_cont_26470
L_else_26565 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_26568
	fsqrt	f2 f2
	fsub	f3 f6 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26566
L_else_26568 : 
	fsqrt	f2 f2
	fadd	f3 f6 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26566 : 
	addi	r6 r0 1
L_cont_26470 : 
	bne	r6 r0 L_else_26474
	addi	r6 r0 0
	jump	L_cont_26438
L_else_26474 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_26476
	addi	r6 r0 0
	jump	L_cont_26438
L_else_26476 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26479
	addi	r6 r0 0
	jump	L_cont_26477
L_else_26479 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26483
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26485
	addi	r6 r0 0
	jump	L_cont_26477
L_else_26485 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26487
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26489
	addi	r6 r0 0
	jump	L_cont_26477
L_else_26489 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26491
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26493
	addi	r6 r0 0
	jump	L_cont_26477
L_else_26493 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26495
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26497
	addi	r6 r0 0
	jump	L_cont_26477
L_else_26497 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26499
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26501
	addi	r6 r0 0
	jump	L_cont_26477
L_else_26501 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26503
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26477
L_else_26503 : 
	addi	r6 r0 1
	jump	L_cont_26477
L_else_26499 : 
	addi	r6 r0 1
	jump	L_cont_26477
L_else_26495 : 
	addi	r6 r0 1
	jump	L_cont_26477
L_else_26491 : 
	addi	r6 r0 1
	jump	L_cont_26477
L_else_26487 : 
	addi	r6 r0 1
	jump	L_cont_26477
L_else_26483 : 
	addi	r6 r0 1
L_cont_26477 : 
	bne	r6 r0 L_else_26481
	addi	r6 r0 0
	jump	L_cont_26438
L_else_26481 : 
	addi	r6 r0 1
L_cont_26438 : 
	bne	r6 r0 L_else_26442
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26428
L_else_26442 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26445
	addi	r6 r0 0
	jump	L_cont_26443
L_else_26445 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26449
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26451
	addi	r6 r0 0
	jump	L_cont_26443
L_else_26451 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26453
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26455
	addi	r6 r0 0
	jump	L_cont_26443
L_else_26455 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26457
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26459
	addi	r6 r0 0
	jump	L_cont_26443
L_else_26459 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26461
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26463
	addi	r6 r0 0
	jump	L_cont_26443
L_else_26463 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26465
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26467
	addi	r6 r0 0
	jump	L_cont_26443
L_else_26467 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26469
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26443
L_else_26469 : 
	addi	r6 r0 1
	jump	L_cont_26443
L_else_26465 : 
	addi	r6 r0 1
	jump	L_cont_26443
L_else_26461 : 
	addi	r6 r0 1
	jump	L_cont_26443
L_else_26457 : 
	addi	r6 r0 1
	jump	L_cont_26443
L_else_26453 : 
	addi	r6 r0 1
	jump	L_cont_26443
L_else_26449 : 
	addi	r6 r0 1
L_cont_26443 : 
	bne	r6 r0 L_else_26447
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26428
L_else_26447 : 
	addi	r6 r0 1
L_cont_26428 : 
	bne	r6 r0 L_else_26432
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
	fldi	f6 r22 2
	fmul	f2 f6 f15
	fmul	f5 f2 f3
	ldi	r6 r24 0
	fldi	f3 r25 0
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fldi	f2 r25 1
	fldi	f3 r6 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r25 2
	fldi	f3 r6 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fmul	f4 f6 f2
	fbgt	f5 f0 L_else_26435
	jump	L_cont_26433
L_else_26435 : 
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
	fldi	f2 r0 1057
	fldi	f3 r0 1051
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	fsti	f2 r0 1057
L_cont_26433 : 
	fbgt	f4 f0 L_else_26437
	jump	L_cont_26423
L_else_26437 : 
	fmul	f2 f4 f4
	fmul	f2 f2 f2
	fmul	f2 f2 f16
	fldi	f3 r0 1055
	fadd	f3 f3 f2
	fsti	f3 r0 1055
	fldi	f3 r0 1056
	fadd	f3 f3 f2
	fsti	f3 r0 1056
	fldi	f3 r0 1057
	fadd	f2 f3 f2
	fsti	f2 r0 1057
	jump	L_cont_26423
L_else_26432 : 
	jump	L_cont_26423
L_else_26427 : 
L_cont_26423 : 
	addi	r6 r23 -1
	add	r23 r0 r6
	jump	L_trace_reflections_2232
L_else_26419 : 
	return
L_trace_ray_2237 : 
	addi	r6 r0 4
	bgt	r29 r6 L_else_26573
	ldi	r28 r26 2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r22 r0 0
	ldi	r20 r0 1183
	add	r21 r0 r27
	call	L_trace_or_matrix_2196
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_26576
	addi	r6 r0 0
	jump	L_cont_26574
L_else_26576 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_26754
	addi	r6 r0 0
	jump	L_cont_26574
L_else_26754 : 
	addi	r6 r0 1
L_cont_26574 : 
	bne	r6 r0 L_else_26578
	addi	r6 r0 -1
	add	r1 r28 r29
	sti	r6 r1 0
	bne	r29 r0 L_else_26580
	return
L_else_26580 : 
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
	fbgt	f3 f0 L_else_26582
	return
L_else_26582 : 
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
L_else_26578 : 
	ldi	r10 r0 1045
	ldi	r30 r10 1970
	ldi	r31 r30 2
	ldi	r6 r30 7
	fldi	f2 r6 0
	fmul	f19 f2 f18
	ldi	r7 r30 1
	bne	r7 r4 L_else_26585
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
	fbne	f2 f0 L_else_26740
	fldi	f2 r0 29
	jump	L_cont_26738
L_else_26740 : 
	fbgt	f2 f0 L_else_26742
	fldi	f2 r0 31
	jump	L_cont_26738
L_else_26742 : 
	fldi	f2 r0 12
L_cont_26738 : 
	fsub	f2 f0 f2
	add	r1 r7 r8
	fsti	f2 r1 0
	jump	L_cont_26583
L_else_26585 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26744
	ldi	r6 r30 4
	fldi	f2 r6 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	ldi	r6 r30 4
	fldi	f2 r6 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	ldi	r6 r30 4
	fldi	f2 r6 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	jump	L_cont_26583
L_else_26744 : 
	fldi	f3 r0 1042
	ldi	r6 r30 5
	fldi	f2 r6 0
	fsub	f8 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r30 5
	fldi	f2 r6 1
	fsub	f6 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r30 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r30 4
	fldi	f2 r6 0
	fmul	f4 f8 f2
	ldi	r6 r30 4
	fldi	f2 r6 1
	fmul	f5 f6 f2
	ldi	r6 r30 4
	fldi	f2 r6 2
	fmul	f7 f9 f2
	ldi	r6 r30 3
	bne	r6 r0 L_else_26747
	fsti	f4 r0 1046
	fsti	f5 r0 1047
	fsti	f7 r0 1048
	jump	L_cont_26745
L_else_26747 : 
	ldi	r6 r30 9
	fldi	f2 r6 2
	fmul	f3 f6 f2
	ldi	r6 r30 9
	fldi	f2 r6 1
	fmul	f2 f9 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1046
	ldi	r6 r30 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r30 9
	fldi	f2 r6 0
	fmul	f2 f9 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f5 f2
	fsti	f2 r0 1047
	ldi	r6 r30 9
	fldi	f2 r6 1
	fmul	f3 f8 f2
	ldi	r6 r30 9
	fldi	f2 r6 0
	fmul	f2 f6 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f7 f2
	fsti	f2 r0 1048
L_cont_26745 : 
	ldi	r6 r30 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_26750
	fldi	f3 r0 12
	jump	L_cont_26748
L_else_26750 : 
	bne	r6 r0 L_else_26752
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_26748
L_else_26752 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_26748 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont_26583 : 
	fldi	f2 r0 1042
	fsti	f2 r0 1063
	fldi	f2 r0 1043
	fsti	f2 r0 1064
	fldi	f2 r0 1044
	fsti	f2 r0 1065
	addi	r6 r0 1042
	add	r7 r0 r30
	call	L_utexture_2225
	addi	r6 r0 4
	mul	r7 r10 r6
	ldi	r6 r0 1074
	add	r6 r7 r6
	add	r1 r28 r29
	sti	r6 r1 0
	ldi	r6 r26 1
	add	r1 r6 r29
	ldi	r6 r1 0
	fldi	f2 r0 1042
	fsti	f2 r6 0
	fldi	f2 r0 1043
	fsti	f2 r6 1
	fldi	f2 r0 1044
	fsti	f2 r6 2
	ldi	r7 r26 3
	ldi	r6 r30 7
	fldi	f2 r6 0
	fldi	f3 r0 11
	fbgt	f3 f2 L_else_26588
	addi	r6 r0 1
	add	r1 r7 r29
	sti	r6 r1 0
	ldi	r6 r26 4
	add	r1 r6 r29
	ldi	r7 r1 0
	fldi	f2 r0 1049
	fsti	f2 r7 0
	fldi	f2 r0 1050
	fsti	f2 r7 1
	fldi	f2 r0 1051
	fsti	f2 r7 2
	add	r1 r6 r29
	ldi	r6 r1 0
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
	ldi	r6 r26 7
	add	r1 r6 r29
	ldi	r6 r1 0
	fldi	f2 r0 1046
	fsti	f2 r6 0
	fldi	f2 r0 1047
	fsti	f2 r6 1
	fldi	f2 r0 1048
	fsti	f2 r6 2
	jump	L_cont_26586
L_else_26588 : 
	addi	r6 r0 0
	add	r1 r7 r29
	sti	r6 r1 0
L_cont_26586 : 
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
	ldi	r6 r30 7
	fldi	f2 r6 1
	fmul	f16 f18 f2
	addi	r6 r0 0
	ldi	r16 r0 1183
	add	r1 r16 r6
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_26591
	addi	r6 r0 0
	jump	L_cont_26589
L_else_26591 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26609
	addi	r6 r0 1
	jump	L_cont_26607
L_else_26609 : 
	addi	r10 r0 1905
	ldi	r9 r7 1970
	fldi	f3 r0 1042
	ldi	r6 r9 5
	fldi	f2 r6 0
	fsub	f7 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r9 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r9 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else_26641
	ldi	r7 r10 0
	fldi	f2 r8 0
	fsub	f2 f2 f7
	fldi	f3 r8 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_26675
	jump	L_cont_26673
L_else_26675 : 
	fsub	f2 f0 f2
L_cont_26673 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26678
	addi	r6 r0 0
	jump	L_cont_26676
L_else_26678 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26715
	jump	L_cont_26713
L_else_26715 : 
	fsub	f2 f0 f2
L_cont_26713 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26717
	addi	r6 r0 0
	jump	L_cont_26676
L_else_26717 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_26720
	addi	r6 r0 1
	jump	L_cont_26718
L_else_26720 : 
	addi	r6 r0 0
L_cont_26718 : 
	sub	r6 r4 r6
L_cont_26676 : 
	bne	r6 r0 L_else_26680
	fldi	f2 r8 2
	fsub	f3 f2 f5
	fldi	f2 r8 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26683
	jump	L_cont_26681
L_else_26683 : 
	fsub	f2 f0 f2
L_cont_26681 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26686
	addi	r6 r0 0
	jump	L_cont_26684
L_else_26686 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26707
	jump	L_cont_26705
L_else_26707 : 
	fsub	f2 f0 f2
L_cont_26705 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26709
	addi	r6 r0 0
	jump	L_cont_26684
L_else_26709 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_26712
	addi	r6 r0 1
	jump	L_cont_26710
L_else_26712 : 
	addi	r6 r0 0
L_cont_26710 : 
	sub	r6 r4 r6
L_cont_26684 : 
	bne	r6 r0 L_else_26688
	fldi	f2 r8 4
	fsub	f2 f2 f9
	fldi	f3 r8 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26691
	jump	L_cont_26689
L_else_26691 : 
	fsub	f2 f0 f2
L_cont_26689 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26694
	addi	r6 r0 0
	jump	L_cont_26692
L_else_26694 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_26699
	jump	L_cont_26697
L_else_26699 : 
	fsub	f2 f0 f2
L_cont_26697 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26701
	addi	r6 r0 0
	jump	L_cont_26692
L_else_26701 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_26704
	addi	r6 r0 1
	jump	L_cont_26702
L_else_26704 : 
	addi	r6 r0 0
L_cont_26702 : 
	sub	r6 r4 r6
L_cont_26692 : 
	bne	r6 r0 L_else_26696
	addi	r6 r0 0
	jump	L_cont_26639
L_else_26696 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26639
L_else_26688 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26639
L_else_26680 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26639
L_else_26641 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26722
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_26724
	addi	r6 r0 0
	jump	L_cont_26639
L_else_26724 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_26639
L_else_26722 : 
	fldi	f8 r8 0
	fbne	f8 f0 L_else_26726
	addi	r6 r0 0
	jump	L_cont_26639
L_else_26726 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f6 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r9 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r6 r9 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r6 r9 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r9 3
	bne	r6 r0 L_else_26729
	jump	L_cont_26727
L_else_26729 : 
	fmul	f4 f5 f9
	ldi	r6 r9 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f7
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f5
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_26727 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else_26732
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26730
L_else_26732 : 
L_cont_26730 : 
	fmul	f3 f6 f6
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_26734
	addi	r6 r0 0
	jump	L_cont_26639
L_else_26734 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_26737
	fsqrt	f2 f2
	fsub	f3 f6 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26735
L_else_26737 : 
	fsqrt	f2 f2
	fadd	f3 f6 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26735 : 
	addi	r6 r0 1
L_cont_26639 : 
	bne	r6 r0 L_else_26643
	addi	r6 r0 0
	jump	L_cont_26607
L_else_26643 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_26645
	addi	r6 r0 0
	jump	L_cont_26607
L_else_26645 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26648
	addi	r6 r0 0
	jump	L_cont_26646
L_else_26648 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26652
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26654
	addi	r6 r0 0
	jump	L_cont_26646
L_else_26654 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26656
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26658
	addi	r6 r0 0
	jump	L_cont_26646
L_else_26658 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26660
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26662
	addi	r6 r0 0
	jump	L_cont_26646
L_else_26662 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26664
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26666
	addi	r6 r0 0
	jump	L_cont_26646
L_else_26666 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26668
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26670
	addi	r6 r0 0
	jump	L_cont_26646
L_else_26670 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26672
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26646
L_else_26672 : 
	addi	r6 r0 1
	jump	L_cont_26646
L_else_26668 : 
	addi	r6 r0 1
	jump	L_cont_26646
L_else_26664 : 
	addi	r6 r0 1
	jump	L_cont_26646
L_else_26660 : 
	addi	r6 r0 1
	jump	L_cont_26646
L_else_26656 : 
	addi	r6 r0 1
	jump	L_cont_26646
L_else_26652 : 
	addi	r6 r0 1
L_cont_26646 : 
	bne	r6 r0 L_else_26650
	addi	r6 r0 0
	jump	L_cont_26607
L_else_26650 : 
	addi	r6 r0 1
L_cont_26607 : 
	bne	r6 r0 L_else_26611
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26589
L_else_26611 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26614
	addi	r6 r0 0
	jump	L_cont_26612
L_else_26614 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26618
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26620
	addi	r6 r0 0
	jump	L_cont_26612
L_else_26620 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26622
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26624
	addi	r6 r0 0
	jump	L_cont_26612
L_else_26624 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26626
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26628
	addi	r6 r0 0
	jump	L_cont_26612
L_else_26628 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26630
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26632
	addi	r6 r0 0
	jump	L_cont_26612
L_else_26632 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26634
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26636
	addi	r6 r0 0
	jump	L_cont_26612
L_else_26636 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26638
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26612
L_else_26638 : 
	addi	r6 r0 1
	jump	L_cont_26612
L_else_26634 : 
	addi	r6 r0 1
	jump	L_cont_26612
L_else_26630 : 
	addi	r6 r0 1
	jump	L_cont_26612
L_else_26626 : 
	addi	r6 r0 1
	jump	L_cont_26612
L_else_26622 : 
	addi	r6 r0 1
	jump	L_cont_26612
L_else_26618 : 
	addi	r6 r0 1
L_cont_26612 : 
	bne	r6 r0 L_else_26616
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26589
L_else_26616 : 
	addi	r6 r0 1
L_cont_26589 : 
	bne	r6 r0 L_else_26594
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
	fbgt	f5 f0 L_else_26604
	jump	L_cont_26602
L_else_26604 : 
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
L_cont_26602 : 
	fbgt	f4 f0 L_else_26606
	jump	L_cont_26592
L_else_26606 : 
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
	jump	L_cont_26592
L_else_26594 : 
L_cont_26592 : 
	addi	r11 r0 1042
	fldi	f2 r0 1042
	fsti	f2 r0 1066
	fldi	f2 r0 1043
	fsti	f2 r0 1067
	fldi	f2 r0 1044
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r9 r6 -1
	call	L_setup_startp_constants_2148
	ldi	r6 r0 1075
	addi	r23 r6 -1
	add	r25 r0 r27
	fadd	f15 f0 f19
	call	L_trace_reflections_2232
	fldi	f2 r0 50
	fbgt	f18 f2 L_else_26596
	return
L_else_26596 : 
	addi	r6 r0 4
	bgt	r6 r29 L_else_26599
	jump	L_cont_26597
L_else_26599 : 
	addi	r7 r29 1
	addi	r6 r0 -1
	add	r1 r28 r7
	sti	r6 r1 0
L_cont_26597 : 
	addi	r6 r0 2
	bne	r31 r6 L_else_26601
	fldi	f2 r0 12
	ldi	r6 r30 7
	fldi	f3 r6 0
	fsub	f2 f2 f3
	fmul	f2 f18 f2
	addi	r6 r29 1
	fldi	f3 r0 1082
	fadd	f3 f17 f3
	add	r29 r0 r6
	fadd	f18 f0 f2
	fadd	f17 f0 f3
	jump	L_trace_ray_2237
L_else_26601 : 
	return
L_else_26573 : 
	return
L_trace_diffuse_ray_2243 : 
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r21 r0 0
	ldi	r19 r0 1183
	add	r20 r0 r22
	call	L_trace_or_matrix_fast_2210
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_26758
	addi	r6 r0 0
	jump	L_cont_26756
L_else_26758 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_26919
	addi	r6 r0 0
	jump	L_cont_26756
L_else_26919 : 
	addi	r6 r0 1
L_cont_26756 : 
	bne	r6 r0 L_else_26760
	return
L_else_26760 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r9 r22 0
	ldi	r7 r19 1
	bne	r7 r4 L_else_26763
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
	fbne	f2 f0 L_else_26905
	fldi	f2 r0 29
	jump	L_cont_26903
L_else_26905 : 
	fbgt	f2 f0 L_else_26907
	fldi	f2 r0 31
	jump	L_cont_26903
L_else_26907 : 
	fldi	f2 r0 12
L_cont_26903 : 
	fsub	f2 f0 f2
	add	r1 r8 r7
	fsti	f2 r1 0
	jump	L_cont_26761
L_else_26763 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26909
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
	jump	L_cont_26761
L_else_26909 : 
	fldi	f3 r0 1042
	ldi	r6 r19 5
	fldi	f2 r6 0
	fsub	f8 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r19 5
	fldi	f2 r6 1
	fsub	f7 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r19 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r19 4
	fldi	f2 r6 0
	fmul	f3 f8 f2
	ldi	r6 r19 4
	fldi	f2 r6 1
	fmul	f6 f7 f2
	ldi	r6 r19 4
	fldi	f2 r6 2
	fmul	f4 f9 f2
	ldi	r6 r19 3
	bne	r6 r0 L_else_26912
	fsti	f3 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_26910
L_else_26912 : 
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f5 f7 f2
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f2 f9 f2
	fadd	f5 f5 f2
	fldi	f2 r0 30
	fdiv	f2 f5 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1046
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f9 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_26910 : 
	ldi	r6 r19 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_26915
	fldi	f3 r0 12
	jump	L_cont_26913
L_else_26915 : 
	bne	r6 r0 L_else_26917
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_26913
L_else_26917 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_26913 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont_26761 : 
	addi	r6 r0 1042
	add	r7 r0 r19
	call	L_utexture_2225
	addi	r6 r0 0
	ldi	r16 r0 1183
	add	r1 r16 r6
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_26766
	addi	r6 r0 0
	jump	L_cont_26764
L_else_26766 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26774
	addi	r6 r0 1
	jump	L_cont_26772
L_else_26774 : 
	addi	r10 r0 1905
	ldi	r9 r7 1970
	fldi	f3 r0 1042
	ldi	r6 r9 5
	fldi	f2 r6 0
	fsub	f7 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r9 5
	fldi	f2 r6 1
	fsub	f6 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r9 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else_26806
	ldi	r7 r10 0
	fldi	f2 r8 0
	fsub	f3 f2 f7
	fldi	f2 r8 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26840
	jump	L_cont_26838
L_else_26840 : 
	fsub	f2 f0 f2
L_cont_26838 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26843
	addi	r6 r0 0
	jump	L_cont_26841
L_else_26843 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26880
	jump	L_cont_26878
L_else_26880 : 
	fsub	f2 f0 f2
L_cont_26878 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26882
	addi	r6 r0 0
	jump	L_cont_26841
L_else_26882 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_26885
	addi	r6 r0 1
	jump	L_cont_26883
L_else_26885 : 
	addi	r6 r0 0
L_cont_26883 : 
	sub	r6 r4 r6
L_cont_26841 : 
	bne	r6 r0 L_else_26845
	fldi	f2 r8 2
	fsub	f2 f2 f6
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26848
	jump	L_cont_26846
L_else_26848 : 
	fsub	f2 f0 f2
L_cont_26846 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26851
	addi	r6 r0 0
	jump	L_cont_26849
L_else_26851 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26872
	jump	L_cont_26870
L_else_26872 : 
	fsub	f2 f0 f2
L_cont_26870 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26874
	addi	r6 r0 0
	jump	L_cont_26849
L_else_26874 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_26877
	addi	r6 r0 1
	jump	L_cont_26875
L_else_26877 : 
	addi	r6 r0 0
L_cont_26875 : 
	sub	r6 r4 r6
L_cont_26849 : 
	bne	r6 r0 L_else_26853
	fldi	f2 r8 4
	fsub	f3 f2 f9
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26856
	jump	L_cont_26854
L_else_26856 : 
	fsub	f2 f0 f2
L_cont_26854 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26859
	addi	r6 r0 0
	jump	L_cont_26857
L_else_26859 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26864
	jump	L_cont_26862
L_else_26864 : 
	fsub	f2 f0 f2
L_cont_26862 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26866
	addi	r6 r0 0
	jump	L_cont_26857
L_else_26866 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_26869
	addi	r6 r0 1
	jump	L_cont_26867
L_else_26869 : 
	addi	r6 r0 0
L_cont_26867 : 
	sub	r6 r4 r6
L_cont_26857 : 
	bne	r6 r0 L_else_26861
	addi	r6 r0 0
	jump	L_cont_26804
L_else_26861 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26804
L_else_26853 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26804
L_else_26845 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26804
L_else_26806 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26887
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_26889
	addi	r6 r0 0
	jump	L_cont_26804
L_else_26889 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_26804
L_else_26887 : 
	fldi	f8 r8 0
	fbne	f8 f0 L_else_26891
	addi	r6 r0 0
	jump	L_cont_26804
L_else_26891 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f5 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r9 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r6 r9 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r6 r9 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r9 3
	bne	r6 r0 L_else_26894
	jump	L_cont_26892
L_else_26894 : 
	fmul	f4 f6 f9
	ldi	r6 r9 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f9 f7
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f6
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_26892 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else_26897
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26895
L_else_26897 : 
L_cont_26895 : 
	fmul	f3 f5 f5
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_26899
	addi	r6 r0 0
	jump	L_cont_26804
L_else_26899 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_26902
	fsqrt	f2 f2
	fsub	f3 f5 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26900
L_else_26902 : 
	fsqrt	f2 f2
	fadd	f3 f5 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26900 : 
	addi	r6 r0 1
L_cont_26804 : 
	bne	r6 r0 L_else_26808
	addi	r6 r0 0
	jump	L_cont_26772
L_else_26808 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_26810
	addi	r6 r0 0
	jump	L_cont_26772
L_else_26810 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26813
	addi	r6 r0 0
	jump	L_cont_26811
L_else_26813 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26817
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26819
	addi	r6 r0 0
	jump	L_cont_26811
L_else_26819 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26821
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26823
	addi	r6 r0 0
	jump	L_cont_26811
L_else_26823 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26825
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26827
	addi	r6 r0 0
	jump	L_cont_26811
L_else_26827 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26829
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26831
	addi	r6 r0 0
	jump	L_cont_26811
L_else_26831 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26833
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26835
	addi	r6 r0 0
	jump	L_cont_26811
L_else_26835 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26837
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26811
L_else_26837 : 
	addi	r6 r0 1
	jump	L_cont_26811
L_else_26833 : 
	addi	r6 r0 1
	jump	L_cont_26811
L_else_26829 : 
	addi	r6 r0 1
	jump	L_cont_26811
L_else_26825 : 
	addi	r6 r0 1
	jump	L_cont_26811
L_else_26821 : 
	addi	r6 r0 1
	jump	L_cont_26811
L_else_26817 : 
	addi	r6 r0 1
L_cont_26811 : 
	bne	r6 r0 L_else_26815
	addi	r6 r0 0
	jump	L_cont_26772
L_else_26815 : 
	addi	r6 r0 1
L_cont_26772 : 
	bne	r6 r0 L_else_26776
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26764
L_else_26776 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26779
	addi	r6 r0 0
	jump	L_cont_26777
L_else_26779 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26783
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26785
	addi	r6 r0 0
	jump	L_cont_26777
L_else_26785 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26787
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26789
	addi	r6 r0 0
	jump	L_cont_26777
L_else_26789 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26791
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26793
	addi	r6 r0 0
	jump	L_cont_26777
L_else_26793 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26795
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26797
	addi	r6 r0 0
	jump	L_cont_26777
L_else_26797 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26799
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26801
	addi	r6 r0 0
	jump	L_cont_26777
L_else_26801 : 
	ldi	r12 r6 1083
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26803
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26777
L_else_26803 : 
	addi	r6 r0 1
	jump	L_cont_26777
L_else_26799 : 
	addi	r6 r0 1
	jump	L_cont_26777
L_else_26795 : 
	addi	r6 r0 1
	jump	L_cont_26777
L_else_26791 : 
	addi	r6 r0 1
	jump	L_cont_26777
L_else_26787 : 
	addi	r6 r0 1
	jump	L_cont_26777
L_else_26783 : 
	addi	r6 r0 1
L_cont_26777 : 
	bne	r6 r0 L_else_26781
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26764
L_else_26781 : 
	addi	r6 r0 1
L_cont_26764 : 
	bne	r6 r0 L_else_26768
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
	fbgt	f2 f0 L_else_26771
	fldi	f2 r0 29
	jump	L_cont_26769
L_else_26771 : 
L_cont_26769 : 
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
	fldi	f2 r0 1054
	fldi	f3 r0 1051
	fmul	f3 f4 f3
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	return
L_else_26768 : 
	return
L_iter_trace_diffuse_rays_2246 : 
	bgt	r0 r22 L_else_26922
	add	r1 r24 r22
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f3 r6 0
	fldi	f2 r25 0
	fmul	f4 f3 f2
	fldi	f3 r6 1
	fldi	f2 r25 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r6 2
	fldi	f2 r25 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_26925
	add	r1 r24 r22
	ldi	r26 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r6 r0 0
	ldi	r19 r0 1183
	add	r1 r19 r6
	ldi	r16 r1 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_26933
	jump	L_cont_26931
L_else_26933 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26966
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26968
	jump	L_cont_26964
L_else_26968 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26970
	jump	L_cont_26964
L_else_26970 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26972
	jump	L_cont_26964
L_else_26972 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26974
	jump	L_cont_26964
L_else_26974 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r18 r0 5
	add	r17 r0 r26
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_26964
L_else_26966 : 
	ldi	r9 r7 1970
	ldi	r10 r9 10
	fldi	f7 r10 0
	fldi	f6 r10 1
	fldi	f8 r10 2
	ldi	r6 r26 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else_26977
	ldi	r7 r26 0
	fldi	f2 r8 0
	fsub	f3 f2 f7
	fldi	f2 r8 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26992
	jump	L_cont_26990
L_else_26992 : 
	fsub	f2 f0 f2
L_cont_26990 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26995
	addi	r6 r0 0
	jump	L_cont_26993
L_else_26995 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_27032
	jump	L_cont_27030
L_else_27032 : 
	fsub	f2 f0 f2
L_cont_27030 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_27034
	addi	r6 r0 0
	jump	L_cont_26993
L_else_27034 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_27037
	addi	r6 r0 1
	jump	L_cont_27035
L_else_27037 : 
	addi	r6 r0 0
L_cont_27035 : 
	sub	r6 r4 r6
L_cont_26993 : 
	bne	r6 r0 L_else_26997
	fldi	f2 r8 2
	fsub	f2 f2 f6
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_27000
	jump	L_cont_26998
L_else_27000 : 
	fsub	f2 f0 f2
L_cont_26998 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_27003
	addi	r6 r0 0
	jump	L_cont_27001
L_else_27003 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_27024
	jump	L_cont_27022
L_else_27024 : 
	fsub	f2 f0 f2
L_cont_27022 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_27026
	addi	r6 r0 0
	jump	L_cont_27001
L_else_27026 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_27029
	addi	r6 r0 1
	jump	L_cont_27027
L_else_27029 : 
	addi	r6 r0 0
L_cont_27027 : 
	sub	r6 r4 r6
L_cont_27001 : 
	bne	r6 r0 L_else_27005
	fldi	f2 r8 4
	fsub	f3 f2 f8
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_27008
	jump	L_cont_27006
L_else_27008 : 
	fsub	f2 f0 f2
L_cont_27006 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_27011
	addi	r6 r0 0
	jump	L_cont_27009
L_else_27011 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_27016
	jump	L_cont_27014
L_else_27016 : 
	fsub	f2 f0 f2
L_cont_27014 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_27018
	addi	r6 r0 0
	jump	L_cont_27009
L_else_27018 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_27021
	addi	r6 r0 1
	jump	L_cont_27019
L_else_27021 : 
	addi	r6 r0 0
L_cont_27019 : 
	sub	r6 r4 r6
L_cont_27009 : 
	bne	r6 r0 L_else_27013
	addi	r6 r0 0
	jump	L_cont_26975
L_else_27013 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26975
L_else_27005 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26975
L_else_26997 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26975
L_else_26977 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27039
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_27041
	addi	r6 r0 0
	jump	L_cont_26975
L_else_27041 : 
	fldi	f3 r8 0
	fldi	f2 r10 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_26975
L_else_27039 : 
	fldi	f5 r8 0
	fbne	f5 f0 L_else_27043
	addi	r6 r0 0
	jump	L_cont_26975
L_else_27043 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f8
	fadd	f4 f3 f2
	fldi	f2 r10 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_27045
	addi	r6 r0 0
	jump	L_cont_26975
L_else_27045 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_27048
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_27046
L_else_27048 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_27046 : 
	addi	r6 r0 1
L_cont_26975 : 
	bne	r6 r0 L_else_26979
	jump	L_cont_26964
L_else_26979 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_26981
	jump	L_cont_26964
L_else_26981 : 
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26983
	jump	L_cont_26964
L_else_26983 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26985
	jump	L_cont_26964
L_else_26985 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26987
	jump	L_cont_26964
L_else_26987 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_26989
	jump	L_cont_26964
L_else_26989 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r18 r0 5
	add	r17 r0 r26
	call	L_solve_one_or_network_fast_2206
L_cont_26964 : 
	addi	r21 r0 1
	add	r20 r0 r26
	call	L_trace_or_matrix_fast_2210
L_cont_26931 : 
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_26936
	addi	r6 r0 0
	jump	L_cont_26934
L_else_26936 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_26963
	addi	r6 r0 0
	jump	L_cont_26934
L_else_26963 : 
	addi	r6 r0 1
L_cont_26934 : 
	bne	r6 r0 L_else_26938
	jump	L_cont_26923
L_else_26938 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r8 r26 0
	ldi	r7 r19 1
	bne	r7 r4 L_else_26941
	ldi	r6 r0 1074
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r7 r0 1046
	addi	r9 r6 -1
	addi	r6 r6 -1
	add	r1 r8 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else_26949
	fldi	f2 r0 29
	jump	L_cont_26947
L_else_26949 : 
	fbgt	f2 f0 L_else_26951
	fldi	f2 r0 31
	jump	L_cont_26947
L_else_26951 : 
	fldi	f2 r0 12
L_cont_26947 : 
	fsub	f2 f0 f2
	add	r1 r7 r9
	fsti	f2 r1 0
	jump	L_cont_26939
L_else_26941 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26953
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
	jump	L_cont_26939
L_else_26953 : 
	fldi	f3 r0 1042
	ldi	r6 r19 5
	fldi	f2 r6 0
	fsub	f9 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r19 5
	fldi	f2 r6 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r19 5
	fldi	f2 r6 2
	fsub	f7 f3 f2
	ldi	r6 r19 4
	fldi	f2 r6 0
	fmul	f5 f9 f2
	ldi	r6 r19 4
	fldi	f2 r6 1
	fmul	f6 f8 f2
	ldi	r6 r19 4
	fldi	f2 r6 2
	fmul	f4 f7 f2
	ldi	r6 r19 3
	bne	r6 r0 L_else_26956
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_26954
L_else_26956 : 
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f5 f2
	fsti	f2 r0 1046
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f9 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f3 f9 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f8 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_26954 : 
	ldi	r6 r19 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_26959
	fldi	f3 r0 12
	jump	L_cont_26957
L_else_26959 : 
	bne	r6 r0 L_else_26961
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_26957
L_else_26961 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_26957 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont_26939 : 
	addi	r6 r0 1042
	add	r7 r0 r19
	call	L_utexture_2225
	addi	r17 r0 0
	ldi	r16 r0 1183
	call	L_shadow_check_one_or_matrix_2185
	bne	r6 r0 L_else_26943
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
	fbgt	f2 f0 L_else_26946
	fldi	f2 r0 29
	jump	L_cont_26944
L_else_26946 : 
L_cont_26944 : 
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
	jump	L_cont_26923
L_else_26943 : 
	jump	L_cont_26923
L_else_26925 : 
	addi	r6 r22 1
	add	r1 r24 r6
	ldi	r26 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r6 r0 0
	ldi	r19 r0 1183
	add	r1 r19 r6
	ldi	r16 r1 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_27051
	jump	L_cont_27049
L_else_27051 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_27084
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_27086
	jump	L_cont_27082
L_else_27086 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_27088
	jump	L_cont_27082
L_else_27088 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_27090
	jump	L_cont_27082
L_else_27090 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_27092
	jump	L_cont_27082
L_else_27092 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r18 r0 5
	add	r17 r0 r26
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_27082
L_else_27084 : 
	ldi	r9 r7 1970
	ldi	r10 r9 10
	fldi	f8 r10 0
	fldi	f6 r10 1
	fldi	f7 r10 2
	ldi	r6 r26 1
	add	r1 r6 r7
	ldi	r7 r1 0
	ldi	r8 r9 1
	bne	r8 r4 L_else_27095
	ldi	r8 r26 0
	fldi	f2 r7 0
	fsub	f3 f2 f8
	fldi	f2 r7 1
	fmul	f4 f3 f2
	fldi	f2 r8 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_27110
	jump	L_cont_27108
L_else_27110 : 
	fsub	f2 f0 f2
L_cont_27108 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_27113
	addi	r6 r0 0
	jump	L_cont_27111
L_else_27113 : 
	fldi	f2 r8 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_27150
	jump	L_cont_27148
L_else_27150 : 
	fsub	f2 f0 f2
L_cont_27148 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_27152
	addi	r6 r0 0
	jump	L_cont_27111
L_else_27152 : 
	fldi	f2 r7 1
	fbne	f2 f0 L_else_27155
	addi	r6 r0 1
	jump	L_cont_27153
L_else_27155 : 
	addi	r6 r0 0
L_cont_27153 : 
	sub	r6 r4 r6
L_cont_27111 : 
	bne	r6 r0 L_else_27115
	fldi	f2 r7 2
	fsub	f2 f2 f6
	fldi	f3 r7 3
	fmul	f4 f2 f3
	fldi	f2 r8 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_27118
	jump	L_cont_27116
L_else_27118 : 
	fsub	f2 f0 f2
L_cont_27116 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_27121
	addi	r6 r0 0
	jump	L_cont_27119
L_else_27121 : 
	fldi	f2 r8 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_27142
	jump	L_cont_27140
L_else_27142 : 
	fsub	f2 f0 f2
L_cont_27140 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_27144
	addi	r6 r0 0
	jump	L_cont_27119
L_else_27144 : 
	fldi	f2 r7 3
	fbne	f2 f0 L_else_27147
	addi	r6 r0 1
	jump	L_cont_27145
L_else_27147 : 
	addi	r6 r0 0
L_cont_27145 : 
	sub	r6 r4 r6
L_cont_27119 : 
	bne	r6 r0 L_else_27123
	fldi	f2 r7 4
	fsub	f3 f2 f7
	fldi	f2 r7 5
	fmul	f4 f3 f2
	fldi	f2 r8 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_27126
	jump	L_cont_27124
L_else_27126 : 
	fsub	f2 f0 f2
L_cont_27124 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_27129
	addi	r6 r0 0
	jump	L_cont_27127
L_else_27129 : 
	fldi	f2 r8 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_27134
	jump	L_cont_27132
L_else_27134 : 
	fsub	f2 f0 f2
L_cont_27132 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_27136
	addi	r6 r0 0
	jump	L_cont_27127
L_else_27136 : 
	fldi	f2 r7 5
	fbne	f2 f0 L_else_27139
	addi	r6 r0 1
	jump	L_cont_27137
L_else_27139 : 
	addi	r6 r0 0
L_cont_27137 : 
	sub	r6 r4 r6
L_cont_27127 : 
	bne	r6 r0 L_else_27131
	addi	r6 r0 0
	jump	L_cont_27093
L_else_27131 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_27093
L_else_27123 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_27093
L_else_27115 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_27093
L_else_27095 : 
	addi	r6 r0 2
	bne	r8 r6 L_else_27157
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_27159
	addi	r6 r0 0
	jump	L_cont_27093
L_else_27159 : 
	fldi	f3 r7 0
	fldi	f2 r10 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_27093
L_else_27157 : 
	fldi	f5 r7 0
	fbne	f5 f0 L_else_27161
	addi	r6 r0 0
	jump	L_cont_27093
L_else_27161 : 
	fldi	f2 r7 1
	fmul	f3 f2 f8
	fldi	f2 r7 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r10 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_27163
	addi	r6 r0 0
	jump	L_cont_27093
L_else_27163 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_27166
	fsqrt	f2 f2
	fsub	f2 f4 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_27164
L_else_27166 : 
	fsqrt	f2 f2
	fadd	f2 f4 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_27164 : 
	addi	r6 r0 1
L_cont_27093 : 
	bne	r6 r0 L_else_27097
	jump	L_cont_27082
L_else_27097 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_27099
	jump	L_cont_27082
L_else_27099 : 
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_27101
	jump	L_cont_27082
L_else_27101 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_27103
	jump	L_cont_27082
L_else_27103 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_27105
	jump	L_cont_27082
L_else_27105 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_27107
	jump	L_cont_27082
L_else_27107 : 
	ldi	r14 r6 1083
	addi	r15 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r18 r0 5
	add	r17 r0 r26
	call	L_solve_one_or_network_fast_2206
L_cont_27082 : 
	addi	r21 r0 1
	add	r20 r0 r26
	call	L_trace_or_matrix_fast_2210
L_cont_27049 : 
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_27054
	addi	r6 r0 0
	jump	L_cont_27052
L_else_27054 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_27081
	addi	r6 r0 0
	jump	L_cont_27052
L_else_27081 : 
	addi	r6 r0 1
L_cont_27052 : 
	bne	r6 r0 L_else_27056
	jump	L_cont_26923
L_else_27056 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r8 r26 0
	ldi	r7 r19 1
	bne	r7 r4 L_else_27059
	ldi	r6 r0 1074
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r7 r0 1046
	addi	r9 r6 -1
	addi	r6 r6 -1
	add	r1 r8 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else_27067
	fldi	f2 r0 29
	jump	L_cont_27065
L_else_27067 : 
	fbgt	f2 f0 L_else_27069
	fldi	f2 r0 31
	jump	L_cont_27065
L_else_27069 : 
	fldi	f2 r0 12
L_cont_27065 : 
	fsub	f2 f0 f2
	add	r1 r7 r9
	fsti	f2 r1 0
	jump	L_cont_27057
L_else_27059 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27071
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
	jump	L_cont_27057
L_else_27071 : 
	fldi	f3 r0 1042
	ldi	r6 r19 5
	fldi	f2 r6 0
	fsub	f9 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r19 5
	fldi	f2 r6 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r19 5
	fldi	f2 r6 2
	fsub	f7 f3 f2
	ldi	r6 r19 4
	fldi	f2 r6 0
	fmul	f6 f9 f2
	ldi	r6 r19 4
	fldi	f2 r6 1
	fmul	f5 f8 f2
	ldi	r6 r19 4
	fldi	f2 r6 2
	fmul	f4 f7 f2
	ldi	r6 r19 3
	bne	r6 r0 L_else_27074
	fsti	f6 r0 1046
	fsti	f5 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_27072
L_else_27074 : 
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r0 1046
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f9 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f5 f2
	fsti	f2 r0 1047
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f3 f9 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_27072 : 
	ldi	r6 r19 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_27077
	fldi	f3 r0 12
	jump	L_cont_27075
L_else_27077 : 
	bne	r6 r0 L_else_27079
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_27075
L_else_27079 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_27075 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont_27057 : 
	addi	r6 r0 1042
	add	r7 r0 r19
	call	L_utexture_2225
	addi	r17 r0 0
	ldi	r16 r0 1183
	call	L_shadow_check_one_or_matrix_2185
	bne	r6 r0 L_else_27061
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
	fbgt	f2 f0 L_else_27064
	fldi	f2 r0 29
	jump	L_cont_27062
L_else_27064 : 
L_cont_27062 : 
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
	jump	L_cont_26923
L_else_27061 : 
L_cont_26923 : 
	addi	r26 r22 -2
	bgt	r0 r26 L_else_26927
	add	r1 r24 r26
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	fldi	f3 r25 0
	fmul	f3 f2 f3
	fldi	f4 r6 1
	fldi	f2 r25 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r6 2
	fldi	f2 r25 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_26930
	add	r1 r24 r26
	ldi	r22 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_26928
L_else_26930 : 
	addi	r6 r26 1
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_26928 : 
	addi	r6 r26 -2
	add	r22 r0 r6
	jump	L_iter_trace_diffuse_rays_2246
L_else_26927 : 
	return
L_else_26922 : 
	return
L_calc_diffuse_using_1point_2259 : 
	ldi	r6 r9 5
	ldi	r8 r9 7
	ldi	r7 r9 1
	ldi	r27 r9 4
	add	r1 r6 r28
	ldi	r6 r1 0
	fldi	f2 r6 0
	fsti	f2 r0 1052
	fldi	f2 r6 1
	fsti	f2 r0 1053
	fldi	f2 r6 2
	fsti	f2 r0 1054
	ldi	r6 r9 6
	ldi	r31 r6 0
	add	r1 r8 r28
	ldi	r30 r1 0
	add	r1 r7 r28
	ldi	r29 r1 0
	bne	r31 r0 L_else_27170
	jump	L_cont_27168
L_else_27170 : 
	ldi	r24 r0 1076
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r9 r6 -1
	add	r11 r0 r29
	call	L_setup_startp_constants_2148
	addi	r7 r0 118
	add	r1 r24 r7
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f3 r6 0
	fldi	f2 r30 0
	fmul	f4 f3 f2
	fldi	f2 r6 1
	fldi	f3 r30 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r6 2
	fldi	f3 r30 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_27197
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27195
L_else_27197 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_27195 : 
	addi	r22 r0 116
	add	r25 r0 r30
	add	r23 r0 r29
	call	L_iter_trace_diffuse_rays_2246
L_cont_27168 : 
	bne	r31 r4 L_else_27173
	jump	L_cont_27171
L_else_27173 : 
	ldi	r24 r0 1077
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r9 r6 -1
	add	r11 r0 r29
	call	L_setup_startp_constants_2148
	addi	r7 r0 118
	add	r1 r24 r7
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f3 r6 0
	fldi	f2 r30 0
	fmul	f4 f3 f2
	fldi	f2 r6 1
	fldi	f3 r30 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r6 2
	fldi	f3 r30 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_27194
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27192
L_else_27194 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_27192 : 
	addi	r22 r0 116
	add	r25 r0 r30
	add	r23 r0 r29
	call	L_iter_trace_diffuse_rays_2246
L_cont_27171 : 
	addi	r6 r0 2
	bne	r31 r6 L_else_27176
	jump	L_cont_27174
L_else_27176 : 
	ldi	r24 r0 1078
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r9 r6 -1
	add	r11 r0 r29
	call	L_setup_startp_constants_2148
	addi	r7 r0 118
	add	r1 r24 r7
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f3 r6 0
	fldi	f2 r30 0
	fmul	f4 f3 f2
	fldi	f2 r6 1
	fldi	f3 r30 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r6 2
	fldi	f3 r30 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_27191
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27189
L_else_27191 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_27189 : 
	addi	r22 r0 116
	add	r25 r0 r30
	add	r23 r0 r29
	call	L_iter_trace_diffuse_rays_2246
L_cont_27174 : 
	addi	r6 r0 3
	bne	r31 r6 L_else_27179
	jump	L_cont_27177
L_else_27179 : 
	ldi	r24 r0 1079
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r9 r6 -1
	add	r11 r0 r29
	call	L_setup_startp_constants_2148
	addi	r7 r0 118
	add	r1 r24 r7
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f3 r6 0
	fldi	f2 r30 0
	fmul	f4 f3 f2
	fldi	f2 r6 1
	fldi	f3 r30 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r6 2
	fldi	f3 r30 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_27188
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27186
L_else_27188 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_27186 : 
	addi	r22 r0 116
	add	r25 r0 r30
	add	r23 r0 r29
	call	L_iter_trace_diffuse_rays_2246
L_cont_27177 : 
	addi	r6 r0 4
	bne	r31 r6 L_else_27182
	jump	L_cont_27180
L_else_27182 : 
	ldi	r24 r0 1080
	fldi	f2 r29 0
	fsti	f2 r0 1066
	fldi	f2 r29 1
	fsti	f2 r0 1067
	fldi	f2 r29 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r9 r6 -1
	add	r11 r0 r29
	call	L_setup_startp_constants_2148
	addi	r7 r0 118
	add	r1 r24 r7
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f3 r6 0
	fldi	f2 r30 0
	fmul	f4 f3 f2
	fldi	f3 r6 1
	fldi	f2 r30 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r6 2
	fldi	f2 r30 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_27185
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27183
L_else_27185 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_27183 : 
	addi	r22 r0 116
	add	r25 r0 r30
	add	r23 r0 r29
	call	L_iter_trace_diffuse_rays_2246
L_cont_27180 : 
	add	r1 r27 r28
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
L_do_without_neighbors_2268 : 
	addi	r7 r0 4
	bgt	r28 r7 L_else_27200
	ldi	r7 r6 2
	add	r1 r7 r28
	ldi	r7 r1 0
	bgt	r0 r7 L_else_27202
	ldi	r7 r6 3
	add	r1 r7 r28
	ldi	r7 r1 0
	bne	r7 r0 L_else_27205
	jump	L_cont_27203
L_else_27205 : 
	ldi	r7 r6 5
	ldi	r9 r6 7
	ldi	r8 r6 1
	ldi	r27 r6 4
	add	r1 r7 r28
	ldi	r7 r1 0
	fldi	f2 r7 0
	fsti	f2 r0 1052
	fldi	f2 r7 1
	fsti	f2 r0 1053
	fldi	f2 r7 2
	fsti	f2 r0 1054
	ldi	r7 r6 6
	ldi	r31 r7 0
	add	r1 r9 r28
	ldi	r29 r1 0
	add	r1 r8 r28
	ldi	r30 r1 0
	bne	r31 r0 L_else_27215
	jump	L_cont_27213
L_else_27215 : 
	ldi	r24 r0 1076
	fldi	f2 r30 0
	fsti	f2 r0 1066
	fldi	f2 r30 1
	fsti	f2 r0 1067
	fldi	f2 r30 2
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r9 r7 -1
	sti	r6 r2 0
	add	r11 r0 r30
	addi	r2 r2 1
	call	L_setup_startp_constants_2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r25 r0 r29
	add	r23 r0 r30
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont_27213 : 
	bne	r31 r4 L_else_27218
	jump	L_cont_27216
L_else_27218 : 
	ldi	r24 r0 1077
	fldi	f2 r30 0
	fsti	f2 r0 1066
	fldi	f2 r30 1
	fsti	f2 r0 1067
	fldi	f2 r30 2
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r9 r7 -1
	sti	r6 r2 0
	add	r11 r0 r30
	addi	r2 r2 1
	call	L_setup_startp_constants_2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r25 r0 r29
	add	r23 r0 r30
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont_27216 : 
	addi	r7 r0 2
	bne	r31 r7 L_else_27221
	jump	L_cont_27219
L_else_27221 : 
	ldi	r24 r0 1078
	fldi	f2 r30 0
	fsti	f2 r0 1066
	fldi	f2 r30 1
	fsti	f2 r0 1067
	fldi	f2 r30 2
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r9 r7 -1
	sti	r6 r2 0
	add	r11 r0 r30
	addi	r2 r2 1
	call	L_setup_startp_constants_2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r25 r0 r29
	add	r23 r0 r30
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont_27219 : 
	addi	r7 r0 3
	bne	r31 r7 L_else_27224
	jump	L_cont_27222
L_else_27224 : 
	ldi	r24 r0 1079
	fldi	f2 r30 0
	fsti	f2 r0 1066
	fldi	f2 r30 1
	fsti	f2 r0 1067
	fldi	f2 r30 2
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r9 r7 -1
	sti	r6 r2 0
	add	r11 r0 r30
	addi	r2 r2 1
	call	L_setup_startp_constants_2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r25 r0 r29
	add	r23 r0 r30
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont_27222 : 
	addi	r7 r0 4
	bne	r31 r7 L_else_27227
	jump	L_cont_27225
L_else_27227 : 
	ldi	r24 r0 1080
	fldi	f2 r30 0
	fsti	f2 r0 1066
	fldi	f2 r30 1
	fsti	f2 r0 1067
	fldi	f2 r30 2
	fsti	f2 r0 1068
	ldi	r7 r0 1072
	addi	r9 r7 -1
	sti	r6 r2 0
	add	r11 r0 r30
	addi	r2 r2 1
	call	L_setup_startp_constants_2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r25 r0 r29
	add	r23 r0 r30
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont_27225 : 
	add	r1 r27 r28
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
L_cont_27203 : 
	addi	r7 r28 1
	addi	r8 r0 4
	bgt	r7 r8 L_else_27207
	ldi	r8 r6 2
	add	r1 r8 r7
	ldi	r8 r1 0
	bgt	r0 r8 L_else_27209
	ldi	r8 r6 3
	add	r1 r8 r7
	ldi	r8 r1 0
	bne	r8 r0 L_else_27212
	jump	L_cont_27210
L_else_27212 : 
	sti	r6 r2 0
	sti	r7 r2 1
	add	r9 r0 r6
	add	r28 r0 r7
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
L_cont_27210 : 
	addi	r7 r7 1
	add	r28 r0 r7
	jump	L_do_without_neighbors_2268
L_else_27209 : 
	return
L_else_27207 : 
	return
L_else_27202 : 
	return
L_else_27200 : 
	return
L_try_exploit_neighbors_2284 : 
	add	r1 r9 r11
	ldi	r10 r1 0
	addi	r6 r0 4
	bgt	r7 r6 L_else_27230
	ldi	r6 r10 2
	add	r1 r6 r7
	ldi	r6 r1 0
	bgt	r0 r6 L_else_27232
	add	r1 r9 r11
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r7
	ldi	r8 r1 0
	add	r1 r15 r11
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r7
	ldi	r6 r1 0
	bne	r6 r8 L_else_27235
	add	r1 r14 r11
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r7
	ldi	r6 r1 0
	bne	r6 r8 L_else_27267
	addi	r6 r11 -1
	add	r1 r9 r6
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r7
	ldi	r6 r1 0
	bne	r6 r8 L_else_27269
	addi	r6 r11 1
	add	r1 r9 r6
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r7
	ldi	r6 r1 0
	bne	r6 r8 L_else_27271
	addi	r6 r0 1
	jump	L_cont_27233
L_else_27271 : 
	addi	r6 r0 0
	jump	L_cont_27233
L_else_27269 : 
	addi	r6 r0 0
	jump	L_cont_27233
L_else_27267 : 
	addi	r6 r0 0
	jump	L_cont_27233
L_else_27235 : 
	addi	r6 r0 0
L_cont_27233 : 
	bne	r6 r0 L_else_27237
	add	r1 r9 r11
	ldi	r6 r1 0
	addi	r8 r0 4
	bgt	r7 r8 L_else_27239
	ldi	r8 r6 2
	add	r1 r8 r7
	ldi	r8 r1 0
	bgt	r0 r8 L_else_27241
	ldi	r8 r6 3
	add	r1 r8 r7
	ldi	r8 r1 0
	bne	r8 r0 L_else_27244
	jump	L_cont_27242
L_else_27244 : 
	sti	r6 r2 0
	sti	r7 r2 1
	add	r9 r0 r6
	add	r28 r0 r7
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
L_cont_27242 : 
	addi	r28 r7 1
	jump	L_do_without_neighbors_2268
L_else_27241 : 
	return
L_else_27239 : 
	return
L_else_27237 : 
	ldi	r6 r10 3
	add	r1 r6 r7
	ldi	r6 r1 0
	bne	r6 r0 L_else_27247
	jump	L_cont_27245
L_else_27247 : 
	add	r1 r15 r11
	ldi	r6 r1 0
	ldi	r17 r6 5
	addi	r6 r11 -1
	add	r1 r9 r6
	ldi	r6 r1 0
	ldi	r16 r6 5
	add	r1 r9 r11
	ldi	r6 r1 0
	ldi	r12 r6 5
	addi	r6 r11 1
	add	r1 r9 r6
	ldi	r6 r1 0
	ldi	r10 r6 5
	add	r1 r14 r11
	ldi	r6 r1 0
	ldi	r8 r6 5
	add	r1 r17 r7
	ldi	r6 r1 0
	fldi	f2 r6 0
	fsti	f2 r0 1052
	fldi	f2 r6 1
	fsti	f2 r0 1053
	fldi	f2 r6 2
	fsti	f2 r0 1054
	add	r1 r16 r7
	ldi	r6 r1 0
	fldi	f3 r0 1052
	fldi	f2 r6 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r6 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r6 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r12 r7
	ldi	r6 r1 0
	fldi	f2 r0 1052
	fldi	f3 r6 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r6 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r6 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	add	r1 r10 r7
	ldi	r6 r1 0
	fldi	f3 r0 1052
	fldi	f2 r6 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r6 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r6 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r8 r7
	ldi	r6 r1 0
	fldi	f2 r0 1052
	fldi	f3 r6 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r6 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r6 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	add	r1 r9 r11
	ldi	r6 r1 0
	ldi	r6 r6 4
	add	r1 r6 r7
	ldi	r6 r1 0
	fldi	f4 r0 1055
	fldi	f2 r6 0
	fldi	f3 r0 1052
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1055
	fldi	f3 r0 1056
	fldi	f4 r6 1
	fldi	f2 r0 1053
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1056
	fldi	f4 r0 1057
	fldi	f2 r6 2
	fldi	f3 r0 1054
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1057
L_cont_27245 : 
	addi	r28 r7 1
	add	r1 r9 r11
	ldi	r8 r1 0
	addi	r6 r0 4
	bgt	r28 r6 L_else_27249
	ldi	r6 r8 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else_27251
	add	r1 r9 r11
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r28
	ldi	r7 r1 0
	add	r1 r15 r11
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r7 L_else_27254
	add	r1 r14 r11
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r7 L_else_27261
	addi	r6 r11 -1
	add	r1 r9 r6
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r7 L_else_27263
	addi	r6 r11 1
	add	r1 r9 r6
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r7 L_else_27265
	addi	r6 r0 1
	jump	L_cont_27252
L_else_27265 : 
	addi	r6 r0 0
	jump	L_cont_27252
L_else_27263 : 
	addi	r6 r0 0
	jump	L_cont_27252
L_else_27261 : 
	addi	r6 r0 0
	jump	L_cont_27252
L_else_27254 : 
	addi	r6 r0 0
L_cont_27252 : 
	bne	r6 r0 L_else_27256
	add	r1 r9 r11
	ldi	r6 r1 0
	jump	L_do_without_neighbors_2268
L_else_27256 : 
	ldi	r6 r8 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else_27259
	jump	L_cont_27257
L_else_27259 : 
	add	r1 r15 r11
	ldi	r6 r1 0
	ldi	r16 r6 5
	addi	r6 r11 -1
	add	r1 r9 r6
	ldi	r6 r1 0
	ldi	r8 r6 5
	add	r1 r9 r11
	ldi	r6 r1 0
	ldi	r7 r6 5
	addi	r6 r11 1
	add	r1 r9 r6
	ldi	r6 r1 0
	ldi	r12 r6 5
	add	r1 r14 r11
	ldi	r6 r1 0
	ldi	r10 r6 5
	add	r1 r16 r28
	ldi	r6 r1 0
	fldi	f2 r6 0
	fsti	f2 r0 1052
	fldi	f2 r6 1
	fsti	f2 r0 1053
	fldi	f2 r6 2
	fsti	f2 r0 1054
	add	r1 r8 r28
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
	add	r1 r7 r28
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
	add	r1 r12 r28
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
	add	r1 r10 r28
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
	add	r1 r9 r11
	ldi	r6 r1 0
	ldi	r6 r6 4
	add	r1 r6 r28
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
L_cont_27257 : 
	addi	r6 r28 1
	add	r7 r0 r6
	jump	L_try_exploit_neighbors_2284
L_else_27251 : 
	return
L_else_27249 : 
	return
L_else_27232 : 
	return
L_else_27230 : 
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
	bgt	r28 r6 L_else_27276
	ldi	r6 r27 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else_27278
	ldi	r6 r27 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else_27281
	jump	L_cont_27279
L_else_27281 : 
	ldi	r6 r27 6
	ldi	r8 r6 0
	fldi	f2 r0 29
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r6 r27 7
	ldi	r7 r27 1
	ldi	r24 r8 1076
	add	r1 r6 r28
	ldi	r25 r1 0
	add	r1 r7 r28
	ldi	r23 r1 0
	fldi	f2 r23 0
	fsti	f2 r0 1066
	fldi	f2 r23 1
	fsti	f2 r0 1067
	fldi	f2 r23 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r9 r6 -1
	add	r11 r0 r23
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
L_cont_27279 : 
	addi	r28 r28 1
	addi	r6 r0 4
	bgt	r28 r6 L_else_27283
	ldi	r6 r27 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else_27285
	ldi	r6 r27 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else_27288
	jump	L_cont_27286
L_else_27288 : 
	ldi	r6 r27 6
	ldi	r8 r6 0
	fldi	f2 r0 29
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r6 r27 7
	ldi	r7 r27 1
	ldi	r24 r8 1076
	add	r1 r6 r28
	ldi	r25 r1 0
	add	r1 r7 r28
	ldi	r23 r1 0
	fldi	f2 r23 0
	fsti	f2 r0 1066
	fldi	f2 r23 1
	fsti	f2 r0 1067
	fldi	f2 r23 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r9 r6 -1
	add	r11 r0 r23
	call	L_setup_startp_constants_2148
	addi	r7 r0 118
	add	r1 r24 r7
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	fldi	f3 r25 0
	fmul	f3 f2 f3
	fldi	f4 r6 1
	fldi	f2 r25 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r6 2
	fldi	f2 r25 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_27291
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27289
L_else_27291 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_27289 : 
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
L_cont_27286 : 
	addi	r6 r28 1
	add	r28 r0 r6
	jump	L_pretrace_diffuse_rays_2297
L_else_27285 : 
	return
L_else_27283 : 
	return
L_else_27278 : 
	return
L_else_27276 : 
	return
L_pretrace_pixels_2300 : 
	bgt	r0 r6 L_else_27294
	fldi	f3 r0 1062
	ldi	r9 r0 1060
	sub	r9 r6 r9
	foi	f2 r9
	fmul	f3 f3 f2
	fldi	f2 r0 1030
	fmul	f2 f3 f2
	fadd	f2 f2 f22
	fsti	f2 r0 1069
	fldi	f2 r0 1031
	fmul	f2 f3 f2
	fadd	f2 f2 f20
	fsti	f2 r0 1070
	fldi	f2 r0 1032
	fmul	f2 f3 f2
	fadd	f2 f2 f21
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
	fbne	f2 f0 L_else_27297
	fldi	f3 r0 12
	jump	L_cont_27295
L_else_27297 : 
	fldi	f3 r0 12
	fdiv	f3 f3 f2
L_cont_27295 : 
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
	fldi	f18 r0 12
	addi	r27 r0 1069
	add	r1 r7 r6
	ldi	r26 r1 0
	fldi	f17 r0 29
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_trace_ray_2237
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	add	r1 r7 r6
	ldi	r9 r1 0
	ldi	r9 r9 0
	fldi	f2 r0 1055
	fsti	f2 r9 0
	fldi	f2 r0 1056
	fsti	f2 r9 1
	fldi	f2 r0 1057
	fsti	f2 r9 2
	add	r1 r7 r6
	ldi	r9 r1 0
	ldi	r9 r9 6
	sti	r8 r9 0
	add	r1 r7 r6
	ldi	r27 r1 0
	addi	r28 r0 0
	ldi	r9 r27 2
	add	r1 r9 r28
	ldi	r9 r1 0
	bgt	r0 r9 L_else_27300
	ldi	r9 r27 3
	add	r1 r9 r28
	ldi	r9 r1 0
	bne	r9 r0 L_else_27306
	jump	L_cont_27304
L_else_27306 : 
	ldi	r9 r27 6
	ldi	r11 r9 0
	fldi	f2 r0 29
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r9 r27 7
	ldi	r10 r27 1
	ldi	r24 r11 1076
	add	r1 r9 r28
	ldi	r25 r1 0
	add	r1 r10 r28
	ldi	r23 r1 0
	fldi	f2 r23 0
	fsti	f2 r0 1066
	fldi	f2 r23 1
	fsti	f2 r0 1067
	fldi	f2 r23 2
	fsti	f2 r0 1068
	ldi	r9 r0 1072
	addi	r9 r9 -1
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	add	r11 r0 r23
	addi	r2 r2 3
	call	L_setup_startp_constants_2148
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	addi	r10 r0 118
	add	r1 r24 r10
	ldi	r9 r1 0
	ldi	r9 r9 0
	fldi	f2 r9 0
	fldi	f3 r25 0
	fmul	f3 f2 f3
	fldi	f4 r9 1
	fldi	f2 r25 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r9 2
	fldi	f2 r25 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_27309
	add	r1 r24 r10
	ldi	r22 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_trace_diffuse_ray_2243
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	jump	L_cont_27307
L_else_27309 : 
	addi	r9 r0 119
	add	r1 r24 r9
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_trace_diffuse_ray_2243
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
L_cont_27307 : 
	addi	r22 r0 116
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	ldi	r9 r27 5
	add	r1 r9 r28
	ldi	r9 r1 0
	fldi	f2 r0 1052
	fsti	f2 r9 0
	fldi	f2 r0 1053
	fsti	f2 r9 1
	fldi	f2 r0 1054
	fsti	f2 r9 2
L_cont_27304 : 
	addi	r28 r0 1
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_pretrace_diffuse_rays_2297
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	jump	L_cont_27298
L_else_27300 : 
L_cont_27298 : 
	addi	r9 r6 -1
	addi	r6 r8 1
	addi	r8 r0 5
	bgt	r8 r6 L_else_27303
	addi	r6 r6 -5
	jump	L_cont_27301
L_else_27303 : 
L_cont_27301 : 
	add	r8 r0 r6
	add	r6 r0 r9
	jump	L_pretrace_pixels_2300
L_else_27294 : 
	return
L_scan_pixel_2311 : 
	ldi	r11 r0 1058
	bgt	r11 r10 L_else_27312
	return
L_else_27312 : 
	add	r1 r9 r10
	ldi	r11 r1 0
	ldi	r11 r11 0
	fldi	f2 r11 0
	fsti	f2 r0 1055
	fldi	f2 r11 1
	fsti	f2 r0 1056
	fldi	f2 r11 2
	fsti	f2 r0 1057
	ldi	r12 r0 1059
	addi	r11 r8 1
	bgt	r12 r11 L_else_27315
	addi	r11 r0 0
	jump	L_cont_27313
L_else_27315 : 
	bgt	r8 r0 L_else_27355
	addi	r11 r0 0
	jump	L_cont_27313
L_else_27355 : 
	ldi	r12 r0 1058
	addi	r11 r10 1
	bgt	r12 r11 L_else_27357
	addi	r11 r0 0
	jump	L_cont_27313
L_else_27357 : 
	bgt	r10 r0 L_else_27359
	addi	r11 r0 0
	jump	L_cont_27313
L_else_27359 : 
	addi	r11 r0 1
L_cont_27313 : 
	bne	r11 r0 L_else_27318
	add	r1 r9 r10
	ldi	r11 r1 0
	addi	r28 r0 0
	ldi	r12 r11 2
	add	r1 r12 r28
	ldi	r12 r1 0
	bgt	r0 r12 L_else_27334
	ldi	r12 r11 3
	add	r1 r12 r28
	ldi	r12 r1 0
	bne	r12 r0 L_else_27337
	jump	L_cont_27335
L_else_27337 : 
	sti	r11 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r9 r2 4
	sti	r10 r2 5
	add	r9 r0 r11
	addi	r2 r2 6
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -6
	ldi	r11 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r6 r2 3
	ldi	r9 r2 4
	ldi	r10 r2 5
L_cont_27335 : 
	addi	r28 r0 1
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	jump	L_cont_27316
L_else_27334 : 
	jump	L_cont_27316
L_else_27318 : 
	addi	r28 r0 0
	add	r1 r9 r10
	ldi	r13 r1 0
	ldi	r11 r13 2
	add	r1 r11 r28
	ldi	r11 r1 0
	bgt	r0 r11 L_else_27339
	add	r1 r9 r10
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r28
	ldi	r12 r1 0
	add	r1 r7 r10
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r28
	ldi	r11 r1 0
	bne	r11 r12 L_else_27342
	add	r1 r6 r10
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r28
	ldi	r11 r1 0
	bne	r11 r12 L_else_27349
	addi	r11 r10 -1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r28
	ldi	r11 r1 0
	bne	r11 r12 L_else_27351
	addi	r11 r10 1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r28
	ldi	r11 r1 0
	bne	r11 r12 L_else_27353
	addi	r11 r0 1
	jump	L_cont_27340
L_else_27353 : 
	addi	r11 r0 0
	jump	L_cont_27340
L_else_27351 : 
	addi	r11 r0 0
	jump	L_cont_27340
L_else_27349 : 
	addi	r11 r0 0
	jump	L_cont_27340
L_else_27342 : 
	addi	r11 r0 0
L_cont_27340 : 
	bne	r11 r0 L_else_27344
	add	r1 r9 r10
	ldi	r11 r1 0
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	jump	L_cont_27316
L_else_27344 : 
	ldi	r11 r13 3
	add	r1 r11 r28
	ldi	r11 r1 0
	bne	r11 r0 L_else_27347
	jump	L_cont_27345
L_else_27347 : 
	add	r1 r7 r10
	ldi	r11 r1 0
	ldi	r14 r11 5
	addi	r11 r10 -1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r16 r11 5
	add	r1 r9 r10
	ldi	r11 r1 0
	ldi	r15 r11 5
	addi	r11 r10 1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r13 r11 5
	add	r1 r6 r10
	ldi	r11 r1 0
	ldi	r12 r11 5
	add	r1 r14 r28
	ldi	r11 r1 0
	fldi	f2 r11 0
	fsti	f2 r0 1052
	fldi	f2 r11 1
	fsti	f2 r0 1053
	fldi	f2 r11 2
	fsti	f2 r0 1054
	add	r1 r16 r28
	ldi	r11 r1 0
	fldi	f3 r0 1052
	fldi	f2 r11 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r11 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r11 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r15 r28
	ldi	r11 r1 0
	fldi	f3 r0 1052
	fldi	f2 r11 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r11 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r11 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r13 r28
	ldi	r11 r1 0
	fldi	f3 r0 1052
	fldi	f2 r11 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r11 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r11 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r12 r28
	ldi	r11 r1 0
	fldi	f3 r0 1052
	fldi	f2 r11 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r11 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r11 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r9 r10
	ldi	r11 r1 0
	ldi	r11 r11 4
	add	r1 r11 r28
	ldi	r11 r1 0
	fldi	f4 r0 1055
	fldi	f3 r11 0
	fldi	f2 r0 1052
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f3 r11 1
	fldi	f2 r0 1053
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f4 r0 1057
	fldi	f3 r11 2
	fldi	f2 r0 1054
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1057
L_cont_27345 : 
	addi	r11 r0 1
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r13 r0 r8
	add	r15 r0 r7
	add	r14 r0 r6
	add	r7 r0 r11
	add	r11 r0 r10
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	jump	L_cont_27316
L_else_27339 : 
L_cont_27316 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element_2293
	fldi	f2 r0 1056
	call	L_write_rgb_element_2293
	fldi	f2 r0 1057
	call	L_write_rgb_element_2293
	addi	r10 r10 1
	ldi	r11 r0 1058
	bgt	r11 r10 L_else_27320
	return
L_else_27320 : 
	add	r1 r9 r10
	ldi	r11 r1 0
	ldi	r11 r11 0
	fldi	f2 r11 0
	fsti	f2 r0 1055
	fldi	f2 r11 1
	fsti	f2 r0 1056
	fldi	f2 r11 2
	fsti	f2 r0 1057
	ldi	r11 r0 1059
	addi	r12 r8 1
	bgt	r11 r12 L_else_27323
	addi	r11 r0 0
	jump	L_cont_27321
L_else_27323 : 
	bgt	r8 r0 L_else_27328
	addi	r11 r0 0
	jump	L_cont_27321
L_else_27328 : 
	ldi	r11 r0 1058
	addi	r12 r10 1
	bgt	r11 r12 L_else_27330
	addi	r11 r0 0
	jump	L_cont_27321
L_else_27330 : 
	bgt	r10 r0 L_else_27332
	addi	r11 r0 0
	jump	L_cont_27321
L_else_27332 : 
	addi	r11 r0 1
L_cont_27321 : 
	bne	r11 r0 L_else_27326
	add	r1 r9 r10
	ldi	r11 r1 0
	addi	r28 r0 0
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	sti	r6 r2 3
	sti	r10 r2 4
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	ldi	r6 r2 3
	ldi	r10 r2 4
	jump	L_cont_27324
L_else_27326 : 
	addi	r11 r0 0
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	sti	r6 r2 3
	sti	r10 r2 4
	add	r13 r0 r8
	add	r15 r0 r7
	add	r14 r0 r6
	add	r7 r0 r11
	add	r11 r0 r10
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	ldi	r6 r2 3
	ldi	r10 r2 4
L_cont_27324 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element_2293
	fldi	f2 r0 1056
	call	L_write_rgb_element_2293
	fldi	f2 r0 1057
	call	L_write_rgb_element_2293
	addi	r10 r10 1
	jump	L_scan_pixel_2311
L_scan_line_2317 : 
	ldi	r11 r0 1059
	bgt	r11 r10 L_else_27362
	return
L_else_27362 : 
	ldi	r11 r0 1059
	addi	r11 r11 -1
	bgt	r11 r10 L_else_27365
	jump	L_cont_27363
L_else_27365 : 
	addi	r12 r10 1
	fldi	f2 r0 1062
	ldi	r11 r0 1061
	sub	r11 r12 r11
	foi	f3 r11
	fmul	f4 f2 f3
	fldi	f2 r0 1033
	fmul	f2 f4 f2
	fldi	f3 r0 1027
	fadd	f22 f2 f3
	fldi	f2 r0 1034
	fmul	f3 f4 f2
	fldi	f2 r0 1028
	fadd	f20 f3 f2
	fldi	f2 r0 1035
	fmul	f3 f4 f2
	fldi	f2 r0 1029
	fadd	f21 f3 f2
	ldi	r11 r0 1058
	addi	r11 r11 -1
	sti	r10 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r8 r2 3
	sti	r9 r2 4
	add	r7 r0 r6
	add	r8 r0 r9
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_pretrace_pixels_2300
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	ldi	r8 r2 3
	ldi	r9 r2 4
L_cont_27363 : 
	addi	r12 r0 0
	ldi	r11 r0 1058
	bgt	r11 r0 L_else_27368
	jump	L_cont_27366
L_else_27368 : 
	add	r1 r7 r12
	ldi	r11 r1 0
	ldi	r11 r11 0
	fldi	f2 r11 0
	fsti	f2 r0 1055
	fldi	f2 r11 1
	fsti	f2 r0 1056
	fldi	f2 r11 2
	fsti	f2 r0 1057
	ldi	r13 r0 1059
	addi	r11 r10 1
	bgt	r13 r11 L_else_27382
	addi	r11 r0 0
	jump	L_cont_27380
L_else_27382 : 
	bgt	r10 r0 L_else_27387
	addi	r11 r0 0
	jump	L_cont_27380
L_else_27387 : 
	ldi	r13 r0 1058
	addi	r11 r0 1
	bgt	r13 r11 L_else_27389
	addi	r11 r0 0
	jump	L_cont_27380
L_else_27389 : 
	addi	r11 r0 0
L_cont_27380 : 
	bne	r11 r0 L_else_27385
	add	r1 r7 r12
	ldi	r11 r1 0
	addi	r28 r0 0
	sti	r10 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r9 r2 4
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r6 r2 3
	ldi	r9 r2 4
	jump	L_cont_27383
L_else_27385 : 
	addi	r11 r0 0
	sti	r10 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r9 r2 4
	add	r13 r0 r10
	add	r15 r0 r8
	add	r9 r0 r7
	add	r14 r0 r6
	add	r7 r0 r11
	add	r11 r0 r12
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r6 r2 3
	ldi	r9 r2 4
L_cont_27383 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element_2293
	fldi	f2 r0 1056
	call	L_write_rgb_element_2293
	fldi	f2 r0 1057
	call	L_write_rgb_element_2293
	addi	r11 r0 1
	sti	r9 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	sti	r7 r2 3
	sti	r10 r2 4
	add	r9 r0 r7
	add	r7 r0 r8
	add	r8 r0 r10
	add	r10 r0 r11
	addi	r2 r2 5
	call	L_scan_pixel_2311
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r7 r2 3
	ldi	r10 r2 4
L_cont_27366 : 
	addi	r10 r10 1
	addi	r9 r9 2
	addi	r11 r0 5
	bgt	r11 r9 L_else_27371
	addi	r9 r9 -5
	jump	L_cont_27369
L_else_27371 : 
L_cont_27369 : 
	ldi	r11 r0 1059
	bgt	r11 r10 L_else_27373
	return
L_else_27373 : 
	ldi	r11 r0 1059
	addi	r11 r11 -1
	bgt	r11 r10 L_else_27376
	jump	L_cont_27374
L_else_27376 : 
	addi	r12 r10 1
	fldi	f3 r0 1062
	ldi	r11 r0 1061
	sub	r11 r12 r11
	foi	f2 r11
	fmul	f4 f3 f2
	fldi	f2 r0 1033
	fmul	f3 f4 f2
	fldi	f2 r0 1027
	fadd	f22 f3 f2
	fldi	f2 r0 1034
	fmul	f3 f4 f2
	fldi	f2 r0 1028
	fadd	f20 f3 f2
	fldi	f2 r0 1035
	fmul	f3 f4 f2
	fldi	f2 r0 1029
	fadd	f21 f3 f2
	ldi	r11 r0 1058
	addi	r11 r11 -1
	sti	r10 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r8 r2 3
	sti	r9 r2 4
	add	r7 r0 r8
	add	r6 r0 r11
	add	r8 r0 r9
	addi	r2 r2 5
	call	L_pretrace_pixels_2300
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	ldi	r8 r2 3
	ldi	r9 r2 4
L_cont_27374 : 
	addi	r11 r0 0
	sti	r9 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	sti	r7 r2 3
	sti	r10 r2 4
	add	r9 r0 r6
	add	r6 r0 r8
	add	r8 r0 r10
	add	r10 r0 r11
	addi	r2 r2 5
	call	L_scan_pixel_2311
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	ldi	r7 r2 3
	ldi	r10 r2 4
	addi	r10 r10 1
	addi	r9 r9 2
	addi	r11 r0 5
	bgt	r11 r9 L_else_27379
	addi	r9 r9 -5
	jump	L_cont_27377
L_else_27379 : 
L_cont_27377 : 
	add	r1 r0 r8
	add	r8 r0 r6
	add	r6 r0 r7
	add	r7 r0 r1
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
	bgt	r0 r18 L_else_27394
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27396
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27398
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27400
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27402
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27404
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27406
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27408
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r6 r18 -1
	add	r18 r0 r6
	jump	L_init_line_elements_2327
L_else_27408 : 
	add	r6 r0 r17
	return
L_else_27406 : 
	add	r6 r0 r17
	return
L_else_27404 : 
	add	r6 r0 r17
	return
L_else_27402 : 
	add	r6 r0 r17
	return
L_else_27400 : 
	add	r6 r0 r17
	return
L_else_27398 : 
	add	r6 r0 r17
	return
L_else_27396 : 
	add	r6 r0 r17
	return
L_else_27394 : 
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
	bgt	r0 r18 L_else_27411
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27413
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27415
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27417
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27419
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27421
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27423
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	jump	L_init_line_elements_2327
L_else_27423 : 
	add	r6 r0 r17
	return
L_else_27421 : 
	add	r6 r0 r17
	return
L_else_27419 : 
	add	r6 r0 r17
	return
L_else_27417 : 
	add	r6 r0 r17
	return
L_else_27415 : 
	add	r6 r0 r17
	return
L_else_27413 : 
	add	r6 r0 r17
	return
L_else_27411 : 
	add	r6 r0 r17
	return
L_tan_2332 : 
	fadd	f9 f0 f11
	call	L_sin_1878
	fadd	f10 f0 f2
	fadd	f2 f0 f11
	call	L_cos_1880
	fdiv	f2 f10 f2
	return
L_adjust_position_2334 : 
	fmul	f3 f2 f2
	fldi	f2 r0 50
	fadd	f2 f3 f2
	fsqrt	f15 f2
	fldi	f2 r0 12
	fdiv	f13 f2 f15
	call	L_atan_1882
	fmul	f11 f2 f16
	call	L_tan_2332
	fmul	f2 f2 f15
	return
L_calc_dirvec_2337 : 
	addi	r9 r0 5
	bgt	r9 r8 L_else_27428
	fmul	f4 f5 f5
	fmul	f3 f2 f2
	fadd	f4 f4 f3
	fldi	f3 r0 12
	fadd	f3 f4 f3
	fsqrt	f3 f3
	fdiv	f7 f5 f3
	fdiv	f6 f2 f3
	fldi	f2 r0 12
	fdiv	f5 f2 f3
	ldi	r8 r7 1076
	add	r1 r8 r6
	ldi	r7 r1 0
	ldi	r7 r7 0
	fsti	f7 r7 0
	fsti	f6 r7 1
	fsti	f5 r7 2
	addi	r7 r6 40
	add	r1 r8 r7
	ldi	r7 r1 0
	ldi	r7 r7 0
	fsub	f2 f0 f6
	fsti	f7 r7 0
	fsti	f5 r7 1
	fsti	f2 r7 2
	addi	r7 r6 80
	add	r1 r8 r7
	ldi	r7 r1 0
	ldi	r7 r7 0
	fsub	f3 f0 f7
	fsub	f2 f0 f6
	fsti	f5 r7 0
	fsti	f3 r7 1
	fsti	f2 r7 2
	addi	r7 r6 1
	add	r1 r8 r7
	ldi	r7 r1 0
	ldi	r7 r7 0
	fsub	f3 f0 f7
	fsub	f4 f0 f6
	fsub	f2 f0 f5
	fsti	f3 r7 0
	fsti	f4 r7 1
	fsti	f2 r7 2
	addi	r7 r6 41
	add	r1 r8 r7
	ldi	r7 r1 0
	ldi	r7 r7 0
	fsub	f3 f0 f7
	fsub	f2 f0 f5
	fsti	f3 r7 0
	fsti	f2 r7 1
	fsti	f6 r7 2
	addi	r6 r6 81
	add	r1 r8 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsub	f2 f0 f5
	fsti	f2 r6 0
	fsti	f7 r6 1
	fsti	f6 r6 2
	return
L_else_27428 : 
	fadd	f16 f0 f17
	call	L_adjust_position_2334
	fadd	f19 f0 f2
	addi	r8 r8 1
	fadd	f2 f0 f19
	fadd	f16 f0 f18
	call	L_adjust_position_2334
	fadd	f5 f0 f19
	jump	L_calc_dirvec_2337
L_calc_dirvecs_2345 : 
	bgt	r0 r11 L_else_27431
	foi	f3 r11
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f17 f3 f2
	addi	r8 r0 0
	fldi	f5 r0 29
	fldi	f2 r0 29
	add	r7 r0 r13
	add	r6 r0 r10
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	foi	f2 r11
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 50
	fadd	f17 f2 f3
	addi	r8 r0 0
	fldi	f5 r0 29
	fldi	f2 r0 29
	addi	r6 r10 2
	add	r7 r0 r13
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	addi	r12 r11 -1
	addi	r11 r13 1
	addi	r6 r0 5
	bgt	r6 r11 L_else_27434
	addi	r11 r11 -5
	jump	L_cont_27432
L_else_27434 : 
L_cont_27432 : 
	bgt	r0 r12 L_else_27436
	foi	f2 r12
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f17 f2 f3
	addi	r8 r0 0
	fldi	f5 r0 29
	fldi	f2 r0 29
	add	r7 r0 r11
	add	r6 r0 r10
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	foi	f2 r12
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 50
	fadd	f17 f2 f3
	addi	r8 r0 0
	fldi	f5 r0 29
	fldi	f2 r0 29
	addi	r6 r10 2
	add	r7 r0 r11
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	addi	r7 r12 -1
	addi	r6 r11 1
	addi	r8 r0 5
	bgt	r8 r6 L_else_27439
	addi	r6 r6 -5
	jump	L_cont_27437
L_else_27439 : 
L_cont_27437 : 
	add	r11 r0 r7
	add	r13 r0 r6
	jump	L_calc_dirvecs_2345
L_else_27436 : 
	return
L_else_27431 : 
	return
L_calc_dirvec_rows_2350 : 
	bgt	r0 r16 L_else_27442
	foi	f3 r16
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
	addi	r8 r0 0
	fldi	f5 r0 29
	fldi	f2 r0 29
	add	r7 r0 r15
	add	r6 r0 r14
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	foi	f2 r10
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 50
	fadd	f17 f2 f3
	addi	r8 r0 0
	fldi	f5 r0 29
	fldi	f2 r0 29
	addi	r6 r14 2
	add	r7 r0 r15
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	addi	r11 r0 3
	addi	r13 r15 1
	addi	r6 r0 5
	bgt	r6 r13 L_else_27445
	addi	r13 r13 -5
	jump	L_cont_27443
L_else_27445 : 
L_cont_27443 : 
	add	r10 r0 r14
	call	L_calc_dirvecs_2345
	addi	r16 r16 -1
	addi	r15 r15 2
	addi	r6 r0 5
	bgt	r6 r15 L_else_27448
	addi	r15 r15 -5
	jump	L_cont_27446
L_else_27448 : 
L_cont_27446 : 
	addi	r14 r14 4
	bgt	r0 r16 L_else_27450
	foi	f3 r16
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f20 f3 f2
	addi	r11 r0 4
	add	r13 r0 r15
	add	r10 r0 r14
	call	L_calc_dirvecs_2345
	addi	r8 r16 -1
	addi	r6 r15 2
	addi	r7 r0 5
	bgt	r7 r6 L_else_27453
	addi	r6 r6 -5
	jump	L_cont_27451
L_else_27453 : 
L_cont_27451 : 
	addi	r7 r14 4
	add	r16 r0 r8
	add	r15 r0 r6
	add	r14 r0 r7
	jump	L_calc_dirvec_rows_2350
L_else_27450 : 
	return
L_else_27442 : 
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
	bgt	r0 r12 L_else_27457
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27459
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27461
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27463
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27465
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27467
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27469
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27471
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r6 r12 -1
	add	r12 r0 r6
	jump	L_create_dirvec_elements_2356
L_else_27471 : 
	return
L_else_27469 : 
	return
L_else_27467 : 
	return
L_else_27465 : 
	return
L_else_27463 : 
	return
L_else_27461 : 
	return
L_else_27459 : 
	return
L_else_27457 : 
	return
L_create_dirvecs_2359 : 
	bgt	r0 r13 L_else_27474
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
	addi	r6 r13 -1
	add	r13 r0 r6
	jump	L_create_dirvecs_2359
L_else_27474 : 
	return
L_init_dirvec_constants_2361 : 
	bgt	r0 r15 L_else_27477
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_27480
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27534
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27532
L_else_27534 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27543
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27532
L_else_27543 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27532 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27536
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27539
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27537
L_else_27539 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27541
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27537
L_else_27541 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27537 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27478
L_else_27536 : 
	jump	L_cont_27478
L_else_27480 : 
L_cont_27478 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else_27482
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_27485
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27515
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27513
L_else_27515 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27531
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27513
L_else_27531 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27513 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27517
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27520
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27518
L_else_27520 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27529
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27518
L_else_27529 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27518 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_27522
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27525
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27523
L_else_27525 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27527
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27523
L_else_27527 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27523 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27483
L_else_27522 : 
	jump	L_cont_27483
L_else_27517 : 
	jump	L_cont_27483
L_else_27485 : 
L_cont_27483 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else_27487
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_27490
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27503
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27501
L_else_27503 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27512
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27501
L_else_27512 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27501 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27505
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27508
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27506
L_else_27508 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27510
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27506
L_else_27510 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27506 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27488
L_else_27505 : 
	jump	L_cont_27488
L_else_27490 : 
L_cont_27488 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else_27492
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27495
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27498
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27496
L_else_27498 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27500
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27496
L_else_27500 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27496 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27493
L_else_27495 : 
L_cont_27493 : 
	addi	r6 r15 -1
	add	r15 r0 r6
	jump	L_init_dirvec_constants_2361
L_else_27492 : 
	return
L_else_27487 : 
	return
L_else_27482 : 
	return
L_else_27477 : 
	return
L_init_vecset_constants_2364 : 
	bgt	r0 r16 L_else_27546
	ldi	r14 r16 1076
	addi	r6 r0 119
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_27549
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27612
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27610
L_else_27612 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27628
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27610
L_else_27628 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27610 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27614
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27617
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27615
L_else_27617 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27626
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27615
L_else_27626 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27615 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_27619
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27622
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27620
L_else_27622 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27624
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27620
L_else_27624 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27620 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27547
L_else_27619 : 
	jump	L_cont_27547
L_else_27614 : 
	jump	L_cont_27547
L_else_27549 : 
L_cont_27547 : 
	addi	r6 r0 118
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27552
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27600
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27598
L_else_27600 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27609
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27598
L_else_27609 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27598 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_27602
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27605
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27603
L_else_27605 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27607
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27603
L_else_27607 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27603 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27550
L_else_27602 : 
	jump	L_cont_27550
L_else_27552 : 
L_cont_27550 : 
	addi	r6 r0 117
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27555
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27595
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27593
L_else_27595 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27597
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27593
L_else_27597 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27593 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27553
L_else_27555 : 
L_cont_27553 : 
	addi	r15 r0 116
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_27557
	ldi	r14 r16 1076
	addi	r6 r0 119
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27560
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27583
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27581
L_else_27583 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27592
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27581
L_else_27592 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27581 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_27585
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_27588
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27586
L_else_27588 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27590
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27586
L_else_27590 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27586 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27558
L_else_27585 : 
	jump	L_cont_27558
L_else_27560 : 
L_cont_27558 : 
	addi	r6 r0 118
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27563
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r6 r8 1
	bne	r6 r4 L_else_27578
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27576
L_else_27578 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_27580
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27576
L_else_27580 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27576 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27561
L_else_27563 : 
L_cont_27561 : 
	addi	r15 r0 117
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_27565
	ldi	r14 r16 1076
	addi	r6 r0 119
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27568
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r6 r8 1
	bne	r6 r4 L_else_27573
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27571
L_else_27573 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_27575
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27571
L_else_27575 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27571 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27566
L_else_27568 : 
L_cont_27566 : 
	addi	r15 r0 118
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_27570
	ldi	r14 r16 1076
	addi	r15 r0 119
	call	L_init_dirvec_constants_2361
	addi	r6 r16 -1
	add	r16 r0 r6
	jump	L_init_vecset_constants_2364
L_else_27570 : 
	return
L_else_27565 : 
	return
L_else_27557 : 
	return
L_else_27546 : 
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
	bne	r9 r0 L_else_27631
	sti	r21 r0 1072
	jump	L_cont_27629
L_else_27631 : 
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
	bne	r9 r0 L_else_27677
	sti	r21 r0 1072
	jump	L_cont_27629
L_else_27677 : 
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
	bne	r9 r0 L_else_27679
	sti	r21 r0 1072
	jump	L_cont_27629
L_else_27679 : 
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
	bne	r9 r0 L_else_27681
	sti	r21 r0 1072
	jump	L_cont_27629
L_else_27681 : 
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
L_cont_27629 : 
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
	bne	r11 r5 L_else_27634
	jump	L_cont_27632
L_else_27634 : 
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
	bne	r11 r5 L_else_27669
	jump	L_cont_27632
L_else_27669 : 
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
	bne	r11 r5 L_else_27671
	jump	L_cont_27632
L_else_27671 : 
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
	bne	r11 r5 L_else_27673
	jump	L_cont_27632
L_else_27673 : 
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
	bne	r11 r5 L_else_27675
	jump	L_cont_27632
L_else_27675 : 
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
L_cont_27632 : 
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
	addi	r13 r0 0
	addi	r10 r0 0
	foi	f3 r9
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f20 f3 f2
	addi	r11 r0 4
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_calc_dirvecs_2345
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r16 r0 8
	addi	r15 r0 2
	addi	r14 r0 4
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
	bgt	r0 r12 L_else_27637
	ldi	r9 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r15 r9 1
	bne	r15 r4 L_else_27651
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
	jump	L_cont_27649
L_else_27651 : 
	addi	r14 r0 2
	bne	r15 r14 L_else_27667
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
	jump	L_cont_27649
L_else_27667 : 
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
L_cont_27649 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_27653
	ldi	r9 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r15 r9 1
	bne	r15 r4 L_else_27656
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
	jump	L_cont_27654
L_else_27656 : 
	addi	r14 r0 2
	bne	r15 r14 L_else_27665
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
	jump	L_cont_27654
L_else_27665 : 
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
L_cont_27654 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27658
	ldi	r9 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r15 r9 1
	bne	r15 r4 L_else_27661
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
	jump	L_cont_27659
L_else_27661 : 
	addi	r14 r0 2
	bne	r15 r14 L_else_27663
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
	jump	L_cont_27659
L_else_27663 : 
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
L_cont_27659 : 
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
	jump	L_cont_27635
L_else_27658 : 
	jump	L_cont_27635
L_else_27653 : 
	jump	L_cont_27635
L_else_27637 : 
L_cont_27635 : 
	ldi	r9 r0 1072
	addi	r12 r9 -1
	bgt	r0 r12 L_else_27640
	ldi	r11 r12 1970
	ldi	r9 r11 2
	addi	r10 r0 2
	bne	r9 r10 L_else_27642
	ldi	r9 r11 7
	fldi	f3 r9 0
	fldi	f2 r0 12
	fbgt	f2 f3 L_else_27644
	jump	L_cont_27638
L_else_27644 : 
	ldi	r10 r11 1
	bne	r10 r4 L_else_27646
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
	jump	L_cont_27638
L_else_27646 : 
	addi	r9 r0 2
	bne	r10 r9 L_else_27648
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
	jump	L_cont_27638
L_else_27648 : 
	jump	L_cont_27638
L_else_27642 : 
	jump	L_cont_27638
L_else_27640 : 
L_cont_27638 : 
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
	fadd	f22 f3 f2
	fldi	f2 r0 1034
	fmul	f3 f4 f2
	fldi	f2 r0 1028
	fadd	f20 f3 f2
	fldi	f2 r0 1035
	fmul	f3 f4 f2
	fldi	f2 r0 1029
	fadd	f21 f3 f2
	ldi	r9 r0 1058
	addi	r9 r9 -1
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	add	r6 r0 r9
	add	r8 r0 r10
	addi	r2 r2 3
	call	L_pretrace_pixels_2300
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	addi	r10 r0 0
	addi	r9 r0 2
	add	r1 r0 r8
	add	r8 r0 r6
	add	r6 r0 r1
	call	L_scan_line_2317
	return
min_caml_end : 
	call	min_caml_start
