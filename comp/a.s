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
	bne	r0 r7 L_else_27854
	return
L_else_27854 : 
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
	bne	r0 r7 L_else_27855
	return
L_else_27855 : 
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
	fbgt	f2 f6 L_else_24624
	fldi	f3 r0 15
	fbgt	f3 f2 L_else_24626
	fldi	f5 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f2 f0 L_else_24628
	fldi	f3 r0 19
	fbgt	f3 f2 L_else_24630
	jump	L_psin_1874
L_else_24630 : 
	fldi	f3 r0 20
	fbgt	f3 f2 L_else_24632
	fadd	f2 f4 f2
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_24632 : 
	fadd	f2 f6 f2
	call	L_psin_1874
	fsub	f2 f0 f2
	return
L_else_24628 : 
	fbgt	f2 f5 L_else_24634
	jump	L_psin_1874
L_else_24634 : 
	fbgt	f2 f3 L_else_24636
	fsub	f2 f2 f4
	jump	L_pcos_1876
L_else_24636 : 
	fsub	f2 f6 f2
	jump	L_psin_1874
L_else_24626 : 
	fadd	f2 f2 f4
	jump	L_sin_1878
L_else_24624 : 
	fsub	f2 f2 f4
	jump	L_sin_1878
L_cos_1880 : 
	fldi	f4 r0 13
	fldi	f6 r0 14
	fbgt	f2 f6 L_else_24639
	fldi	f3 r0 15
	fbgt	f3 f2 L_else_24641
	fldi	f5 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f2 f0 L_else_24643
	fldi	f3 r0 19
	fbgt	f3 f2 L_else_24645
	jump	L_pcos_1876
L_else_24645 : 
	fldi	f3 r0 20
	fbgt	f3 f2 L_else_24647
	fadd	f2 f2 f4
	jump	L_psin_1874
L_else_24647 : 
	fadd	f2 f6 f2
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_24643 : 
	fbgt	f2 f5 L_else_24649
	jump	L_pcos_1876
L_else_24649 : 
	fbgt	f2 f3 L_else_24651
	fsub	f2 f2 f4
	call	L_psin_1874
	fsub	f2 f0 f2
	return
L_else_24651 : 
	fsub	f2 f6 f2
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_24641 : 
	fadd	f2 f2 f4
	jump	L_cos_1880
L_else_24639 : 
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
	bne	r6 r0 L_else_24655
	add	r6 r0 r7
	return
L_else_24655 : 
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
	bgt	r0 r9 L_else_24659
	sub	r6 r6 r7
	addi	r8 r8 1
	jump	L_sdivn_1889
L_else_24659 : 
	add	r6 r0 r8
	return
L_divpow10_1893 : 
	call	L_pow10_1887
	addi	r8 r0 0
	add	r7 r0 r6
	add	r6 r0 r9
	jump	L_sdivn_1889
L_sprint_int_1896 : 
	bne	r11 r0 L_else_24663
	addi	r6 r10 48
	jump	min_caml_print_char
L_else_24663 : 
	bne	r12 r0 L_else_24665
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
L_else_24665 : 
	add	r9 r0 r10
	add	r6 r0 r11
	call	L_divpow10_1893
	add	r9 r0 r6
	bne	r9 r0 L_else_24667
	addi	r11 r11 -1
	jump	L_sprint_int_1896
L_else_24667 : 
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
	bne	r10 r5 L_else_24674
	addi	r6 r0 0
	return
L_else_24674 : 
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
	fbgt	f0 f2 L_else_24677
	addi	r16 r0 0
	jump	L_cont_24675
L_else_24677 : 
	addi	r16 r0 1
L_cont_24675 : 
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
	bne	r13 r0 L_else_24680
	jump	L_cont_24678
L_else_24680 : 
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
L_cont_24678 : 
	addi	r6 r0 2
	bne	r11 r6 L_else_24683
	addi	r20 r0 1
	jump	L_cont_24681
L_else_24683 : 
	add	r20 r0 r16
L_cont_24681 : 
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
	bne	r11 r6 L_else_24686
	fldi	f3 r14 0
	fbne	f3 f0 L_else_24692
	fldi	f2 r0 29
	jump	L_cont_24690
L_else_24692 : 
	fbne	f3 f0 L_else_24711
	fldi	f2 r0 29
	jump	L_cont_24709
L_else_24711 : 
	fbgt	f3 f0 L_else_24713
	fldi	f2 r0 31
	jump	L_cont_24709
L_else_24713 : 
	fldi	f2 r0 12
L_cont_24709 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_24690 : 
	fsti	f2 r14 0
	fldi	f2 r14 1
	fbne	f2 f0 L_else_24695
	fldi	f2 r0 29
	jump	L_cont_24693
L_else_24695 : 
	fbne	f2 f0 L_else_24706
	fldi	f3 r0 29
	jump	L_cont_24704
L_else_24706 : 
	fbgt	f2 f0 L_else_24708
	fldi	f3 r0 31
	jump	L_cont_24704
L_else_24708 : 
	fldi	f3 r0 12
L_cont_24704 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
L_cont_24693 : 
	fsti	f2 r14 1
	fldi	f3 r14 2
	fbne	f3 f0 L_else_24698
	fldi	f2 r0 29
	jump	L_cont_24696
L_else_24698 : 
	fbne	f3 f0 L_else_24701
	fldi	f2 r0 29
	jump	L_cont_24699
L_else_24701 : 
	fbgt	f3 f0 L_else_24703
	fldi	f2 r0 31
	jump	L_cont_24699
L_else_24703 : 
	fldi	f2 r0 12
L_cont_24699 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_24696 : 
	fsti	f2 r14 2
	jump	L_cont_24684
L_else_24686 : 
	addi	r6 r0 2
	bne	r11 r6 L_else_24715
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
	fbne	f3 f0 L_else_24718
	fldi	f3 r0 12
	jump	L_cont_24716
L_else_24718 : 
	bne	r6 r0 L_else_24720
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_24716
L_else_24720 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_24716 : 
	fldi	f2 r14 0
	fmul	f2 f2 f3
	fsti	f2 r14 0
	fldi	f2 r14 1
	fmul	f2 f2 f3
	fsti	f2 r14 1
	fldi	f2 r14 2
	fmul	f2 f2 f3
	fsti	f2 r14 2
	jump	L_cont_24684
L_else_24715 : 
L_cont_24684 : 
	bne	r13 r0 L_else_24689
	jump	L_cont_24687
L_else_24689 : 
	add	r6 r0 r14
	add	r7 r0 r19
	call	L_rotate_quadratic_matrix_2033
L_cont_24687 : 
	addi	r6 r0 1
	return
L_read_object_2038 : 
	addi	r6 r0 60
	bgt	r6 r21 L_else_24723
	return
L_else_24723 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24725
	sti	r21 r0 1072
	return
L_else_24725 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24727
	return
L_else_24727 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24729
	sti	r21 r0 1072
	return
L_else_24729 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24731
	return
L_else_24731 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24733
	sti	r21 r0 1072
	return
L_else_24733 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24735
	return
L_else_24735 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24737
	sti	r21 r0 1072
	return
L_else_24737 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24739
	return
L_else_24739 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24741
	sti	r21 r0 1072
	return
L_else_24741 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24743
	return
L_else_24743 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24745
	sti	r21 r0 1072
	return
L_else_24745 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24747
	return
L_else_24747 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24749
	sti	r21 r0 1072
	return
L_else_24749 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else_24751
	return
L_else_24751 : 
	add	r8 r0 r21
	call	L_read_nth_object_2036
	bne	r6 r0 L_else_24753
	sti	r21 r0 1072
	return
L_else_24753 : 
	addi	r21 r21 1
	jump	L_read_object_2038
L_read_net_item_2042 : 
	call	min_caml_read_int
	add	r8 r0 r6
	bne	r8 r5 L_else_24756
	addi	r6 r7 1
	addi	r7 r0 -1
	jump	min_caml_create_array
L_else_24756 : 
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
	bne	r6 r5 L_else_24759
	addi	r6 r10 1
	jump	min_caml_create_array
L_else_24759 : 
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
	bne	r7 r5 L_else_24762
	return
L_else_24762 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24764
	return
L_else_24764 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24766
	return
L_else_24766 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24768
	return
L_else_24768 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24770
	return
L_else_24770 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24772
	return
L_else_24772 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24774
	return
L_else_24774 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_24776
	return
L_else_24776 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	jump	L_read_and_network_2046
L_setup_rect_table_2134 : 
	addi	r6 r0 6
	fldi	f2 r0 29
	call	min_caml_create_float_array
	fldi	f2 r8 0
	fbne	f2 f0 L_else_24780
	fldi	f2 r0 29
	fsti	f2 r6 1
	jump	L_cont_24778
L_else_24780 : 
	ldi	r9 r10 6
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_24801
	addi	r7 r0 0
	jump	L_cont_24799
L_else_24801 : 
	addi	r7 r0 1
L_cont_24799 : 
	xor	r9 r9 r7
	ldi	r7 r10 4
	fldi	f2 r7 0
	bne	r9 r0 L_else_24804
	fsub	f2 f0 f2
	jump	L_cont_24802
L_else_24804 : 
L_cont_24802 : 
	fsti	f2 r6 0
	fldi	f3 r0 12
	fldi	f2 r8 0
	fdiv	f2 f3 f2
	fsti	f2 r6 1
L_cont_24778 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_24783
	fldi	f2 r0 29
	fsti	f2 r6 3
	jump	L_cont_24781
L_else_24783 : 
	ldi	r7 r10 6
	fldi	f2 r8 1
	fbgt	f0 f2 L_else_24795
	addi	r9 r0 0
	jump	L_cont_24793
L_else_24795 : 
	addi	r9 r0 1
L_cont_24793 : 
	xor	r7 r7 r9
	ldi	r9 r10 4
	fldi	f2 r9 1
	bne	r7 r0 L_else_24798
	fsub	f2 f0 f2
	jump	L_cont_24796
L_else_24798 : 
L_cont_24796 : 
	fsti	f2 r6 2
	fldi	f2 r0 12
	fldi	f3 r8 1
	fdiv	f2 f2 f3
	fsti	f2 r6 3
L_cont_24781 : 
	fldi	f2 r8 2
	fbne	f2 f0 L_else_24786
	fldi	f2 r0 29
	fsti	f2 r6 5
	jump	L_cont_24784
L_else_24786 : 
	ldi	r9 r10 6
	fldi	f2 r8 2
	fbgt	f0 f2 L_else_24789
	addi	r7 r0 0
	jump	L_cont_24787
L_else_24789 : 
	addi	r7 r0 1
L_cont_24787 : 
	xor	r9 r9 r7
	ldi	r7 r10 4
	fldi	f2 r7 2
	bne	r9 r0 L_else_24792
	fsub	f2 f0 f2
	jump	L_cont_24790
L_else_24792 : 
L_cont_24790 : 
	fsti	f2 r6 4
	fldi	f2 r0 12
	fldi	f3 r8 2
	fdiv	f2 f2 f3
	fsti	f2 r6 5
L_cont_24784 : 
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
	fbgt	f3 f0 L_else_24808
	fldi	f2 r0 29
	fsti	f2 r6 0
	jump	L_cont_24806
L_else_24808 : 
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
L_cont_24806 : 
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
	bne	r7 r0 L_else_24812
	jump	L_cont_24810
L_else_24812 : 
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
L_cont_24810 : 
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
	bne	r7 r0 L_else_24815
	fsti	f8 r6 1
	fsti	f7 r6 2
	fsti	f6 r6 3
	jump	L_cont_24813
L_else_24815 : 
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
L_cont_24813 : 
	fbne	f2 f0 L_else_24818
	jump	L_cont_24816
L_else_24818 : 
	fldi	f3 r0 12
	fdiv	f2 f3 f2
	fsti	f2 r6 4
L_cont_24816 : 
	return
L_iter_setup_dirvec_constants_2143 : 
	bgt	r0 r12 L_else_24821
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r6 r10 1
	bne	r6 r4 L_else_24824
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_24822
L_else_24824 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_24847
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_24822
L_else_24847 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_24822 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_24826
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_24829
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_24827
L_else_24829 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_24845
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_24827
L_else_24845 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_24827 : 
	addi	r13 r13 -1
	bgt	r0 r13 L_else_24831
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r6 r10 1
	bne	r6 r4 L_else_24834
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_24832
L_else_24834 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_24843
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_24832
L_else_24843 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_24832 : 
	addi	r13 r13 -1
	bgt	r0 r13 L_else_24836
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_24839
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_24837
L_else_24839 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_24841
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_24837
L_else_24841 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_24837 : 
	addi	r12 r13 -1
	jump	L_iter_setup_dirvec_constants_2143
L_else_24836 : 
	return
L_else_24831 : 
	return
L_else_24826 : 
	return
L_else_24821 : 
	return
L_setup_startp_constants_2148 : 
	bgt	r0 r7 L_else_24850
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
	bne	r9 r8 L_else_24853
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
	jump	L_cont_24851
L_else_24853 : 
	addi	r8 r0 2
	bgt	r9 r8 L_else_24855
	jump	L_cont_24851
L_else_24855 : 
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
	bne	r8 r0 L_else_24858
	jump	L_cont_24856
L_else_24858 : 
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
L_cont_24856 : 
	addi	r8 r0 3
	bne	r9 r8 L_else_24861
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_24859
L_else_24861 : 
L_cont_24859 : 
	fsti	f2 r10 3
L_cont_24851 : 
	addi	r7 r7 -1
	jump	L_setup_startp_constants_2148
L_else_24850 : 
	return
L_check_all_inside_2173 : 
	add	r1 r7 r6
	ldi	r8 r1 0
	bne	r8 r5 L_else_24864
	addi	r6 r0 1
	return
L_else_24864 : 
	ldi	r10 r8 1970
	ldi	r8 r10 5
	fldi	f5 r8 0
	fsub	f8 f2 f5
	ldi	r8 r10 5
	fldi	f5 r8 1
	fsub	f7 f3 f5
	ldi	r8 r10 5
	fldi	f5 r8 2
	fsub	f6 f4 f5
	ldi	r9 r10 1
	bne	r9 r4 L_else_24867
	fbgt	f0 f8 L_else_24989
	fadd	f5 f0 f8
	jump	L_cont_24987
L_else_24989 : 
	fsub	f5 f0 f8
L_cont_24987 : 
	ldi	r8 r10 4
	fldi	f8 r8 0
	fbgt	f8 f5 L_else_24992
	addi	r8 r0 0
	jump	L_cont_24990
L_else_24992 : 
	fbgt	f0 f7 L_else_24997
	fadd	f5 f0 f7
	jump	L_cont_24995
L_else_24997 : 
	fsub	f5 f0 f7
L_cont_24995 : 
	ldi	r8 r10 4
	fldi	f7 r8 1
	fbgt	f7 f5 L_else_24999
	addi	r8 r0 0
	jump	L_cont_24990
L_else_24999 : 
	fbgt	f0 f6 L_else_25002
	fadd	f5 f0 f6
	jump	L_cont_25000
L_else_25002 : 
	fsub	f5 f0 f6
L_cont_25000 : 
	ldi	r8 r10 4
	fldi	f6 r8 2
	fbgt	f6 f5 L_else_25004
	addi	r8 r0 0
	jump	L_cont_24990
L_else_25004 : 
	addi	r8 r0 1
L_cont_24990 : 
	bne	r8 r0 L_else_24994
	ldi	r8 r10 6
	sub	r8 r4 r8
	jump	L_cont_24865
L_else_24994 : 
	ldi	r8 r10 6
	jump	L_cont_24865
L_else_24867 : 
	addi	r8 r0 2
	bne	r9 r8 L_else_25006
	ldi	r8 r10 4
	fldi	f5 r8 0
	fmul	f8 f5 f8
	fldi	f5 r8 1
	fmul	f5 f5 f7
	fadd	f7 f8 f5
	fldi	f5 r8 2
	fmul	f5 f5 f6
	fadd	f5 f7 f5
	ldi	r9 r10 6
	fbgt	f0 f5 L_else_25009
	addi	r8 r0 0
	jump	L_cont_25007
L_else_25009 : 
	addi	r8 r0 1
L_cont_25007 : 
	xor	r8 r9 r8
	sub	r8 r4 r8
	jump	L_cont_24865
L_else_25006 : 
	fmul	f9 f8 f8
	ldi	r8 r10 4
	fldi	f5 r8 0
	fmul	f10 f9 f5
	fmul	f9 f7 f7
	ldi	r8 r10 4
	fldi	f5 r8 1
	fmul	f5 f9 f5
	fadd	f9 f10 f5
	fmul	f10 f6 f6
	ldi	r8 r10 4
	fldi	f5 r8 2
	fmul	f5 f10 f5
	fadd	f5 f9 f5
	ldi	r8 r10 3
	bne	r8 r0 L_else_25012
	jump	L_cont_25010
L_else_25012 : 
	fmul	f10 f7 f6
	ldi	r8 r10 9
	fldi	f9 r8 0
	fmul	f9 f10 f9
	fadd	f9 f5 f9
	fmul	f6 f6 f8
	ldi	r8 r10 9
	fldi	f5 r8 1
	fmul	f5 f6 f5
	fadd	f6 f9 f5
	fmul	f7 f8 f7
	ldi	r8 r10 9
	fldi	f5 r8 2
	fmul	f5 f7 f5
	fadd	f5 f6 f5
L_cont_25010 : 
	ldi	r9 r10 1
	addi	r8 r0 3
	bne	r9 r8 L_else_25015
	fldi	f6 r0 12
	fsub	f5 f5 f6
	jump	L_cont_25013
L_else_25015 : 
L_cont_25013 : 
	ldi	r9 r10 6
	fbgt	f0 f5 L_else_25018
	addi	r8 r0 0
	jump	L_cont_25016
L_else_25018 : 
	addi	r8 r0 1
L_cont_25016 : 
	xor	r8 r9 r8
	sub	r8 r4 r8
L_cont_24865 : 
	bne	r8 r0 L_else_24869
	addi	r10 r6 1
	add	r1 r7 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_24871
	addi	r6 r0 1
	return
L_else_24871 : 
	ldi	r9 r6 1970
	ldi	r6 r9 5
	fldi	f5 r6 0
	fsub	f7 f2 f5
	ldi	r6 r9 5
	fldi	f5 r6 1
	fsub	f8 f3 f5
	ldi	r6 r9 5
	fldi	f5 r6 2
	fsub	f6 f4 f5
	ldi	r6 r9 1
	bne	r6 r4 L_else_24874
	fbgt	f0 f7 L_else_24957
	fadd	f5 f0 f7
	jump	L_cont_24955
L_else_24957 : 
	fsub	f5 f0 f7
L_cont_24955 : 
	ldi	r6 r9 4
	fldi	f7 r6 0
	fbgt	f7 f5 L_else_24960
	addi	r6 r0 0
	jump	L_cont_24958
L_else_24960 : 
	fbgt	f0 f8 L_else_24965
	fadd	f5 f0 f8
	jump	L_cont_24963
L_else_24965 : 
	fsub	f5 f0 f8
L_cont_24963 : 
	ldi	r6 r9 4
	fldi	f7 r6 1
	fbgt	f7 f5 L_else_24967
	addi	r6 r0 0
	jump	L_cont_24958
L_else_24967 : 
	fbgt	f0 f6 L_else_24970
	jump	L_cont_24968
L_else_24970 : 
	fsub	f6 f0 f6
L_cont_24968 : 
	ldi	r6 r9 4
	fldi	f5 r6 2
	fbgt	f5 f6 L_else_24972
	addi	r6 r0 0
	jump	L_cont_24958
L_else_24972 : 
	addi	r6 r0 1
L_cont_24958 : 
	bne	r6 r0 L_else_24962
	ldi	r6 r9 6
	sub	r6 r4 r6
	jump	L_cont_24872
L_else_24962 : 
	ldi	r6 r9 6
	jump	L_cont_24872
L_else_24874 : 
	addi	r8 r0 2
	bne	r6 r8 L_else_24974
	ldi	r6 r9 4
	fldi	f5 r6 0
	fmul	f7 f5 f7
	fldi	f5 r6 1
	fmul	f5 f5 f8
	fadd	f7 f7 f5
	fldi	f5 r6 2
	fmul	f5 f5 f6
	fadd	f5 f7 f5
	ldi	r8 r9 6
	fbgt	f0 f5 L_else_24977
	addi	r6 r0 0
	jump	L_cont_24975
L_else_24977 : 
	addi	r6 r0 1
L_cont_24975 : 
	xor	r6 r8 r6
	sub	r6 r4 r6
	jump	L_cont_24872
L_else_24974 : 
	fmul	f9 f7 f7
	ldi	r6 r9 4
	fldi	f5 r6 0
	fmul	f10 f9 f5
	fmul	f9 f8 f8
	ldi	r6 r9 4
	fldi	f5 r6 1
	fmul	f5 f9 f5
	fadd	f9 f10 f5
	fmul	f10 f6 f6
	ldi	r6 r9 4
	fldi	f5 r6 2
	fmul	f5 f10 f5
	fadd	f5 f9 f5
	ldi	r6 r9 3
	bne	r6 r0 L_else_24980
	jump	L_cont_24978
L_else_24980 : 
	fmul	f10 f8 f6
	ldi	r6 r9 9
	fldi	f9 r6 0
	fmul	f9 f10 f9
	fadd	f9 f5 f9
	fmul	f6 f6 f7
	ldi	r6 r9 9
	fldi	f5 r6 1
	fmul	f5 f6 f5
	fadd	f6 f9 f5
	fmul	f7 f7 f8
	ldi	r6 r9 9
	fldi	f5 r6 2
	fmul	f5 f7 f5
	fadd	f5 f6 f5
L_cont_24978 : 
	ldi	r8 r9 1
	addi	r6 r0 3
	bne	r8 r6 L_else_24983
	fldi	f6 r0 12
	fsub	f5 f5 f6
	jump	L_cont_24981
L_else_24983 : 
L_cont_24981 : 
	ldi	r8 r9 6
	fbgt	f0 f5 L_else_24986
	addi	r6 r0 0
	jump	L_cont_24984
L_else_24986 : 
	addi	r6 r0 1
L_cont_24984 : 
	xor	r6 r8 r6
	sub	r6 r4 r6
L_cont_24872 : 
	bne	r6 r0 L_else_24876
	addi	r10 r10 1
	add	r1 r7 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_24878
	addi	r6 r0 1
	return
L_else_24878 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f5 r6 0
	fsub	f7 f2 f5
	ldi	r6 r8 5
	fldi	f5 r6 1
	fsub	f8 f3 f5
	ldi	r6 r8 5
	fldi	f5 r6 2
	fsub	f6 f4 f5
	ldi	r6 r8 1
	bne	r6 r4 L_else_24881
	fbgt	f0 f7 L_else_24925
	fadd	f5 f0 f7
	jump	L_cont_24923
L_else_24925 : 
	fsub	f5 f0 f7
L_cont_24923 : 
	ldi	r6 r8 4
	fldi	f7 r6 0
	fbgt	f7 f5 L_else_24928
	addi	r6 r0 0
	jump	L_cont_24926
L_else_24928 : 
	fbgt	f0 f8 L_else_24933
	fadd	f5 f0 f8
	jump	L_cont_24931
L_else_24933 : 
	fsub	f5 f0 f8
L_cont_24931 : 
	ldi	r6 r8 4
	fldi	f7 r6 1
	fbgt	f7 f5 L_else_24935
	addi	r6 r0 0
	jump	L_cont_24926
L_else_24935 : 
	fbgt	f0 f6 L_else_24938
	jump	L_cont_24936
L_else_24938 : 
	fsub	f6 f0 f6
L_cont_24936 : 
	ldi	r6 r8 4
	fldi	f5 r6 2
	fbgt	f5 f6 L_else_24940
	addi	r6 r0 0
	jump	L_cont_24926
L_else_24940 : 
	addi	r6 r0 1
L_cont_24926 : 
	bne	r6 r0 L_else_24930
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_24879
L_else_24930 : 
	ldi	r6 r8 6
	jump	L_cont_24879
L_else_24881 : 
	addi	r9 r0 2
	bne	r6 r9 L_else_24942
	ldi	r6 r8 4
	fldi	f5 r6 0
	fmul	f7 f5 f7
	fldi	f5 r6 1
	fmul	f5 f5 f8
	fadd	f7 f7 f5
	fldi	f5 r6 2
	fmul	f5 f5 f6
	fadd	f5 f7 f5
	ldi	r8 r8 6
	fbgt	f0 f5 L_else_24945
	addi	r6 r0 0
	jump	L_cont_24943
L_else_24945 : 
	addi	r6 r0 1
L_cont_24943 : 
	xor	r6 r8 r6
	sub	r6 r4 r6
	jump	L_cont_24879
L_else_24942 : 
	fmul	f9 f7 f7
	ldi	r6 r8 4
	fldi	f5 r6 0
	fmul	f10 f9 f5
	fmul	f9 f8 f8
	ldi	r6 r8 4
	fldi	f5 r6 1
	fmul	f5 f9 f5
	fadd	f9 f10 f5
	fmul	f10 f6 f6
	ldi	r6 r8 4
	fldi	f5 r6 2
	fmul	f5 f10 f5
	fadd	f5 f9 f5
	ldi	r6 r8 3
	bne	r6 r0 L_else_24948
	jump	L_cont_24946
L_else_24948 : 
	fmul	f10 f8 f6
	ldi	r6 r8 9
	fldi	f9 r6 0
	fmul	f9 f10 f9
	fadd	f9 f5 f9
	fmul	f6 f6 f7
	ldi	r6 r8 9
	fldi	f5 r6 1
	fmul	f5 f6 f5
	fadd	f6 f9 f5
	fmul	f7 f7 f8
	ldi	r6 r8 9
	fldi	f5 r6 2
	fmul	f5 f7 f5
	fadd	f5 f6 f5
L_cont_24946 : 
	ldi	r9 r8 1
	addi	r6 r0 3
	bne	r9 r6 L_else_24951
	fldi	f6 r0 12
	fsub	f5 f5 f6
	jump	L_cont_24949
L_else_24951 : 
L_cont_24949 : 
	ldi	r8 r8 6
	fbgt	f0 f5 L_else_24954
	addi	r6 r0 0
	jump	L_cont_24952
L_else_24954 : 
	addi	r6 r0 1
L_cont_24952 : 
	xor	r6 r8 r6
	sub	r6 r4 r6
L_cont_24879 : 
	bne	r6 r0 L_else_24883
	addi	r10 r10 1
	add	r1 r7 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_24885
	addi	r6 r0 1
	return
L_else_24885 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f5 r6 0
	fsub	f5 f2 f5
	ldi	r6 r8 5
	fldi	f6 r6 1
	fsub	f8 f3 f6
	ldi	r6 r8 5
	fldi	f6 r6 2
	fsub	f6 f4 f6
	ldi	r6 r8 1
	bne	r6 r4 L_else_24888
	fbgt	f0 f5 L_else_24893
	jump	L_cont_24891
L_else_24893 : 
	fsub	f5 f0 f5
L_cont_24891 : 
	ldi	r6 r8 4
	fldi	f7 r6 0
	fbgt	f7 f5 L_else_24896
	addi	r6 r0 0
	jump	L_cont_24894
L_else_24896 : 
	fbgt	f0 f8 L_else_24901
	fadd	f5 f0 f8
	jump	L_cont_24899
L_else_24901 : 
	fsub	f5 f0 f8
L_cont_24899 : 
	ldi	r6 r8 4
	fldi	f7 r6 1
	fbgt	f7 f5 L_else_24903
	addi	r6 r0 0
	jump	L_cont_24894
L_else_24903 : 
	fbgt	f0 f6 L_else_24906
	jump	L_cont_24904
L_else_24906 : 
	fsub	f6 f0 f6
L_cont_24904 : 
	ldi	r6 r8 4
	fldi	f5 r6 2
	fbgt	f5 f6 L_else_24908
	addi	r6 r0 0
	jump	L_cont_24894
L_else_24908 : 
	addi	r6 r0 1
L_cont_24894 : 
	bne	r6 r0 L_else_24898
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_24886
L_else_24898 : 
	ldi	r6 r8 6
	jump	L_cont_24886
L_else_24888 : 
	addi	r9 r0 2
	bne	r6 r9 L_else_24910
	ldi	r6 r8 4
	fldi	f7 r6 0
	fmul	f7 f7 f5
	fldi	f5 r6 1
	fmul	f5 f5 f8
	fadd	f7 f7 f5
	fldi	f5 r6 2
	fmul	f5 f5 f6
	fadd	f5 f7 f5
	ldi	r6 r8 6
	fbgt	f0 f5 L_else_24913
	addi	r8 r0 0
	jump	L_cont_24911
L_else_24913 : 
	addi	r8 r0 1
L_cont_24911 : 
	xor	r6 r6 r8
	sub	r6 r4 r6
	jump	L_cont_24886
L_else_24910 : 
	fmul	f9 f5 f5
	ldi	r6 r8 4
	fldi	f7 r6 0
	fmul	f10 f9 f7
	fmul	f9 f8 f8
	ldi	r6 r8 4
	fldi	f7 r6 1
	fmul	f7 f9 f7
	fadd	f9 f10 f7
	fmul	f10 f6 f6
	ldi	r6 r8 4
	fldi	f7 r6 2
	fmul	f7 f10 f7
	fadd	f7 f9 f7
	ldi	r6 r8 3
	bne	r6 r0 L_else_24916
	fadd	f5 f0 f7
	jump	L_cont_24914
L_else_24916 : 
	fmul	f10 f8 f6
	ldi	r6 r8 9
	fldi	f9 r6 0
	fmul	f9 f10 f9
	fadd	f9 f7 f9
	fmul	f6 f6 f5
	ldi	r6 r8 9
	fldi	f7 r6 1
	fmul	f6 f6 f7
	fadd	f6 f9 f6
	fmul	f7 f5 f8
	ldi	r6 r8 9
	fldi	f5 r6 2
	fmul	f5 f7 f5
	fadd	f5 f6 f5
L_cont_24914 : 
	ldi	r9 r8 1
	addi	r6 r0 3
	bne	r9 r6 L_else_24919
	fldi	f6 r0 12
	fsub	f5 f5 f6
	jump	L_cont_24917
L_else_24919 : 
L_cont_24917 : 
	ldi	r6 r8 6
	fbgt	f0 f5 L_else_24922
	addi	r8 r0 0
	jump	L_cont_24920
L_else_24922 : 
	addi	r8 r0 1
L_cont_24920 : 
	xor	r6 r6 r8
	sub	r6 r4 r6
L_cont_24886 : 
	bne	r6 r0 L_else_24890
	addi	r6 r10 1
	jump	L_check_all_inside_2173
L_else_24890 : 
	addi	r6 r0 0
	return
L_else_24883 : 
	addi	r6 r0 0
	return
L_else_24876 : 
	addi	r6 r0 0
	return
L_else_24869 : 
	addi	r6 r0 0
	return
L_shadow_check_and_group_2179 : 
	ldi	r6 r11 0
	bne	r6 r5 L_else_25021
	addi	r6 r0 0
	return
L_else_25021 : 
	ldi	r8 r11 0
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
	bne	r7 r4 L_else_25024
	ldi	r7 r13 0
	fldi	f2 r9 0
	fsub	f2 f2 f7
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25155
	jump	L_cont_25153
L_else_25155 : 
	fsub	f2 f0 f2
L_cont_25153 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25158
	addi	r6 r0 0
	jump	L_cont_25156
L_else_25158 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25195
	jump	L_cont_25193
L_else_25195 : 
	fsub	f2 f0 f2
L_cont_25193 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25197
	addi	r6 r0 0
	jump	L_cont_25156
L_else_25197 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else_25200
	addi	r6 r0 1
	jump	L_cont_25198
L_else_25200 : 
	addi	r6 r0 0
L_cont_25198 : 
	sub	r6 r4 r6
L_cont_25156 : 
	bne	r6 r0 L_else_25160
	fldi	f2 r9 2
	fsub	f3 f2 f5
	fldi	f2 r9 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25163
	jump	L_cont_25161
L_else_25163 : 
	fsub	f2 f0 f2
L_cont_25161 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25166
	addi	r6 r0 0
	jump	L_cont_25164
L_else_25166 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25187
	jump	L_cont_25185
L_else_25187 : 
	fsub	f2 f0 f2
L_cont_25185 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25189
	addi	r6 r0 0
	jump	L_cont_25164
L_else_25189 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else_25192
	addi	r6 r0 1
	jump	L_cont_25190
L_else_25192 : 
	addi	r6 r0 0
L_cont_25190 : 
	sub	r6 r4 r6
L_cont_25164 : 
	bne	r6 r0 L_else_25168
	fldi	f2 r9 4
	fsub	f2 f2 f9
	fldi	f3 r9 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25171
	jump	L_cont_25169
L_else_25171 : 
	fsub	f2 f0 f2
L_cont_25169 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25174
	addi	r6 r0 0
	jump	L_cont_25172
L_else_25174 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25179
	jump	L_cont_25177
L_else_25179 : 
	fsub	f2 f0 f2
L_cont_25177 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25181
	addi	r6 r0 0
	jump	L_cont_25172
L_else_25181 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else_25184
	addi	r6 r0 1
	jump	L_cont_25182
L_else_25184 : 
	addi	r6 r0 0
L_cont_25182 : 
	sub	r6 r4 r6
L_cont_25172 : 
	bne	r6 r0 L_else_25176
	addi	r6 r0 0
	jump	L_cont_25022
L_else_25176 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_25022
L_else_25168 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_25022
L_else_25160 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_25022
L_else_25024 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25202
	fldi	f2 r9 0
	fbgt	f0 f2 L_else_25204
	addi	r6 r0 0
	jump	L_cont_25022
L_else_25204 : 
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
	jump	L_cont_25022
L_else_25202 : 
	fldi	f6 r9 0
	fbne	f6 f0 L_else_25206
	addi	r6 r0 0
	jump	L_cont_25022
L_else_25206 : 
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
	bne	r6 r0 L_else_25209
	jump	L_cont_25207
L_else_25209 : 
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
L_cont_25207 : 
	ldi	r7 r10 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25212
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25210
L_else_25212 : 
L_cont_25210 : 
	fmul	f3 f8 f8
	fmul	f2 f6 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_25214
	addi	r6 r0 0
	jump	L_cont_25022
L_else_25214 : 
	ldi	r6 r10 6
	bne	r6 r0 L_else_25217
	fsqrt	f2 f2
	fsub	f3 f8 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_25215
L_else_25217 : 
	fsqrt	f2 f2
	fadd	f3 f8 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_25215 : 
	addi	r6 r0 1
L_cont_25022 : 
	fldi	f2 r0 1073
	bne	r6 r0 L_else_25026
	ldi	r6 r8 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_25028
	addi	r6 r0 0
	return
L_else_25028 : 
	addi	r11 r11 1
	jump	L_shadow_check_and_group_2179
L_else_25026 : 
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_25030
	ldi	r6 r8 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_25032
	addi	r6 r0 0
	return
L_else_25032 : 
	addi	r11 r11 1
	jump	L_shadow_check_and_group_2179
L_else_25030 : 
	fldi	f3 r0 33
	fadd	f3 f2 f3
	fldi	f2 r0 1039
	fmul	f2 f2 f3
	fldi	f4 r0 1042
	fadd	f6 f2 f4
	fldi	f2 r0 1040
	fmul	f2 f2 f3
	fldi	f4 r0 1043
	fadd	f7 f2 f4
	fldi	f2 r0 1041
	fmul	f2 f2 f3
	fldi	f3 r0 1044
	fadd	f8 f2 f3
	ldi	r6 r12 0
	bne	r6 r5 L_else_25035
	addi	r6 r0 1
	jump	L_cont_25033
L_else_25035 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f3 f6 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f4 f7 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f5 f8 f2
	ldi	r6 r8 1
	bne	r6 r4 L_else_25040
	fbgt	f0 f3 L_else_25123
	fadd	f2 f0 f3
	jump	L_cont_25121
L_else_25123 : 
	fsub	f2 f0 f3
L_cont_25121 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25126
	addi	r6 r0 0
	jump	L_cont_25124
L_else_25126 : 
	fbgt	f0 f4 L_else_25131
	fadd	f2 f0 f4
	jump	L_cont_25129
L_else_25131 : 
	fsub	f2 f0 f4
L_cont_25129 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25133
	addi	r6 r0 0
	jump	L_cont_25124
L_else_25133 : 
	fbgt	f0 f5 L_else_25136
	fadd	f2 f0 f5
	jump	L_cont_25134
L_else_25136 : 
	fsub	f2 f0 f5
L_cont_25134 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25138
	addi	r6 r0 0
	jump	L_cont_25124
L_else_25138 : 
	addi	r6 r0 1
L_cont_25124 : 
	bne	r6 r0 L_else_25128
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_25038
L_else_25128 : 
	ldi	r6 r8 6
	jump	L_cont_25038
L_else_25040 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_25140
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
	fbgt	f0 f2 L_else_25143
	addi	r6 r0 0
	jump	L_cont_25141
L_else_25143 : 
	addi	r6 r0 1
L_cont_25141 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_25038
L_else_25140 : 
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
	bne	r6 r0 L_else_25146
	jump	L_cont_25144
L_else_25146 : 
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
L_cont_25144 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25149
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25147
L_else_25149 : 
L_cont_25147 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25152
	addi	r6 r0 0
	jump	L_cont_25150
L_else_25152 : 
	addi	r6 r0 1
L_cont_25150 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_25038 : 
	bne	r6 r0 L_else_25042
	ldi	r6 r12 1
	bne	r6 r5 L_else_25044
	addi	r6 r0 1
	jump	L_cont_25033
L_else_25044 : 
	ldi	r7 r6 1970
	ldi	r6 r7 5
	fldi	f2 r6 0
	fsub	f3 f6 f2
	ldi	r6 r7 5
	fldi	f2 r6 1
	fsub	f4 f7 f2
	ldi	r6 r7 5
	fldi	f2 r6 2
	fsub	f5 f8 f2
	ldi	r6 r7 1
	bne	r6 r4 L_else_25047
	fbgt	f0 f3 L_else_25091
	fadd	f2 f0 f3
	jump	L_cont_25089
L_else_25091 : 
	fsub	f2 f0 f3
L_cont_25089 : 
	ldi	r6 r7 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25094
	addi	r6 r0 0
	jump	L_cont_25092
L_else_25094 : 
	fbgt	f0 f4 L_else_25099
	fadd	f2 f0 f4
	jump	L_cont_25097
L_else_25099 : 
	fsub	f2 f0 f4
L_cont_25097 : 
	ldi	r6 r7 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25101
	addi	r6 r0 0
	jump	L_cont_25092
L_else_25101 : 
	fbgt	f0 f5 L_else_25104
	fadd	f2 f0 f5
	jump	L_cont_25102
L_else_25104 : 
	fsub	f2 f0 f5
L_cont_25102 : 
	ldi	r6 r7 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25106
	addi	r6 r0 0
	jump	L_cont_25092
L_else_25106 : 
	addi	r6 r0 1
L_cont_25092 : 
	bne	r6 r0 L_else_25096
	ldi	r6 r7 6
	sub	r6 r4 r6
	jump	L_cont_25045
L_else_25096 : 
	ldi	r6 r7 6
	jump	L_cont_25045
L_else_25047 : 
	addi	r8 r0 2
	bne	r6 r8 L_else_25108
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
	fbgt	f0 f2 L_else_25111
	addi	r6 r0 0
	jump	L_cont_25109
L_else_25111 : 
	addi	r6 r0 1
L_cont_25109 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_25045
L_else_25108 : 
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
	bne	r6 r0 L_else_25114
	jump	L_cont_25112
L_else_25114 : 
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
L_cont_25112 : 
	ldi	r8 r7 1
	addi	r6 r0 3
	bne	r8 r6 L_else_25117
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25115
L_else_25117 : 
L_cont_25115 : 
	ldi	r7 r7 6
	fbgt	f0 f2 L_else_25120
	addi	r6 r0 0
	jump	L_cont_25118
L_else_25120 : 
	addi	r6 r0 1
L_cont_25118 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_25045 : 
	bne	r6 r0 L_else_25049
	ldi	r6 r12 2
	bne	r6 r5 L_else_25051
	addi	r6 r0 1
	jump	L_cont_25033
L_else_25051 : 
	ldi	r7 r6 1970
	ldi	r6 r7 5
	fldi	f2 r6 0
	fsub	f2 f6 f2
	ldi	r6 r7 5
	fldi	f3 r6 1
	fsub	f4 f7 f3
	ldi	r6 r7 5
	fldi	f3 r6 2
	fsub	f5 f8 f3
	ldi	r6 r7 1
	bne	r6 r4 L_else_25054
	fbgt	f0 f2 L_else_25059
	jump	L_cont_25057
L_else_25059 : 
	fsub	f2 f0 f2
L_cont_25057 : 
	ldi	r6 r7 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25062
	addi	r6 r0 0
	jump	L_cont_25060
L_else_25062 : 
	fbgt	f0 f4 L_else_25067
	fadd	f2 f0 f4
	jump	L_cont_25065
L_else_25067 : 
	fsub	f2 f0 f4
L_cont_25065 : 
	ldi	r6 r7 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25069
	addi	r6 r0 0
	jump	L_cont_25060
L_else_25069 : 
	fbgt	f0 f5 L_else_25072
	fadd	f2 f0 f5
	jump	L_cont_25070
L_else_25072 : 
	fsub	f2 f0 f5
L_cont_25070 : 
	ldi	r6 r7 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25074
	addi	r6 r0 0
	jump	L_cont_25060
L_else_25074 : 
	addi	r6 r0 1
L_cont_25060 : 
	bne	r6 r0 L_else_25064
	ldi	r6 r7 6
	sub	r6 r4 r6
	jump	L_cont_25052
L_else_25064 : 
	ldi	r6 r7 6
	jump	L_cont_25052
L_else_25054 : 
	addi	r8 r0 2
	bne	r6 r8 L_else_25076
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
	fbgt	f0 f2 L_else_25079
	addi	r7 r0 0
	jump	L_cont_25077
L_else_25079 : 
	addi	r7 r0 1
L_cont_25077 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
	jump	L_cont_25052
L_else_25076 : 
	fmul	f9 f2 f2
	ldi	r6 r7 4
	fldi	f3 r6 0
	fmul	f10 f9 f3
	fmul	f9 f4 f4
	ldi	r6 r7 4
	fldi	f3 r6 1
	fmul	f3 f9 f3
	fadd	f3 f10 f3
	fmul	f10 f5 f5
	ldi	r6 r7 4
	fldi	f9 r6 2
	fmul	f9 f10 f9
	fadd	f3 f3 f9
	ldi	r6 r7 3
	bne	r6 r0 L_else_25082
	fadd	f2 f0 f3
	jump	L_cont_25080
L_else_25082 : 
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
L_cont_25080 : 
	ldi	r8 r7 1
	addi	r6 r0 3
	bne	r8 r6 L_else_25085
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25083
L_else_25085 : 
L_cont_25083 : 
	ldi	r6 r7 6
	fbgt	f0 f2 L_else_25088
	addi	r7 r0 0
	jump	L_cont_25086
L_else_25088 : 
	addi	r7 r0 1
L_cont_25086 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
L_cont_25052 : 
	bne	r6 r0 L_else_25056
	addi	r6 r0 3
	add	r7 r0 r12
	fadd	f2 f0 f6
	fadd	f3 f0 f7
	fadd	f4 f0 f8
	call	L_check_all_inside_2173
	jump	L_cont_25033
L_else_25056 : 
	addi	r6 r0 0
	jump	L_cont_25033
L_else_25049 : 
	addi	r6 r0 0
	jump	L_cont_25033
L_else_25042 : 
	addi	r6 r0 0
L_cont_25033 : 
	bne	r6 r0 L_else_25037
	addi	r11 r11 1
	jump	L_shadow_check_and_group_2179
L_else_25037 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_group_2182 : 
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_25220
	addi	r6 r0 0
	return
L_else_25220 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25222
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_25224
	addi	r6 r0 0
	return
L_else_25224 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25226
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_25228
	addi	r6 r0 0
	return
L_else_25228 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25230
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_25232
	addi	r6 r0 0
	return
L_else_25232 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25234
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_25236
	addi	r6 r0 0
	return
L_else_25236 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25238
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_25240
	addi	r6 r0 0
	return
L_else_25240 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25242
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_25244
	addi	r6 r0 0
	return
L_else_25244 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25246
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else_25248
	addi	r6 r0 0
	return
L_else_25248 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25250
	addi	r14 r14 1
	jump	L_shadow_check_one_or_group_2182
L_else_25250 : 
	addi	r6 r0 1
	return
L_else_25246 : 
	addi	r6 r0 1
	return
L_else_25242 : 
	addi	r6 r0 1
	return
L_else_25238 : 
	addi	r6 r0 1
	return
L_else_25234 : 
	addi	r6 r0 1
	return
L_else_25230 : 
	addi	r6 r0 1
	return
L_else_25226 : 
	addi	r6 r0 1
	return
L_else_25222 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_matrix_2185 : 
	add	r1 r17 r16
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_25253
	addi	r6 r0 0
	return
L_else_25253 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_25256
	addi	r6 r0 1
	jump	L_cont_25254
L_else_25256 : 
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
	bne	r7 r4 L_else_25558
	ldi	r7 r10 0
	fldi	f2 r9 0
	fsub	f2 f2 f7
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25596
	jump	L_cont_25594
L_else_25596 : 
	fsub	f2 f0 f2
L_cont_25594 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25599
	addi	r6 r0 0
	jump	L_cont_25597
L_else_25599 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25636
	jump	L_cont_25634
L_else_25636 : 
	fsub	f2 f0 f2
L_cont_25634 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25638
	addi	r6 r0 0
	jump	L_cont_25597
L_else_25638 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else_25641
	addi	r6 r0 1
	jump	L_cont_25639
L_else_25641 : 
	addi	r6 r0 0
L_cont_25639 : 
	sub	r6 r4 r6
L_cont_25597 : 
	bne	r6 r0 L_else_25601
	fldi	f2 r9 2
	fsub	f3 f2 f5
	fldi	f2 r9 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25604
	jump	L_cont_25602
L_else_25604 : 
	fsub	f2 f0 f2
L_cont_25602 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25607
	addi	r6 r0 0
	jump	L_cont_25605
L_else_25607 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25628
	jump	L_cont_25626
L_else_25628 : 
	fsub	f2 f0 f2
L_cont_25626 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25630
	addi	r6 r0 0
	jump	L_cont_25605
L_else_25630 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else_25633
	addi	r6 r0 1
	jump	L_cont_25631
L_else_25633 : 
	addi	r6 r0 0
L_cont_25631 : 
	sub	r6 r4 r6
L_cont_25605 : 
	bne	r6 r0 L_else_25609
	fldi	f2 r9 4
	fsub	f2 f2 f9
	fldi	f3 r9 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25612
	jump	L_cont_25610
L_else_25612 : 
	fsub	f2 f0 f2
L_cont_25610 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25615
	addi	r6 r0 0
	jump	L_cont_25613
L_else_25615 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25620
	jump	L_cont_25618
L_else_25620 : 
	fsub	f2 f0 f2
L_cont_25618 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25622
	addi	r6 r0 0
	jump	L_cont_25613
L_else_25622 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else_25625
	addi	r6 r0 1
	jump	L_cont_25623
L_else_25625 : 
	addi	r6 r0 0
L_cont_25623 : 
	sub	r6 r4 r6
L_cont_25613 : 
	bne	r6 r0 L_else_25617
	addi	r6 r0 0
	jump	L_cont_25556
L_else_25617 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_25556
L_else_25609 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_25556
L_else_25601 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_25556
L_else_25558 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25643
	fldi	f2 r9 0
	fbgt	f0 f2 L_else_25645
	addi	r6 r0 0
	jump	L_cont_25556
L_else_25645 : 
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
	jump	L_cont_25556
L_else_25643 : 
	fldi	f8 r9 0
	fbne	f8 f0 L_else_25647
	addi	r6 r0 0
	jump	L_cont_25556
L_else_25647 : 
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
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25650
	jump	L_cont_25648
L_else_25650 : 
	fmul	f4 f5 f9
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f7
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f5
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_25648 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25653
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25651
L_else_25653 : 
L_cont_25651 : 
	fmul	f3 f6 f6
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_25655
	addi	r6 r0 0
	jump	L_cont_25556
L_else_25655 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else_25658
	fsqrt	f2 f2
	fsub	f3 f6 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_25656
L_else_25658 : 
	fsqrt	f2 f2
	fadd	f3 f6 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_25656 : 
	addi	r6 r0 1
L_cont_25556 : 
	bne	r6 r0 L_else_25560
	addi	r6 r0 0
	jump	L_cont_25254
L_else_25560 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_25562
	addi	r6 r0 0
	jump	L_cont_25254
L_else_25562 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_25565
	addi	r6 r0 0
	jump	L_cont_25563
L_else_25565 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25569
	ldi	r6 r18 2
	bne	r6 r5 L_else_25571
	addi	r6 r0 0
	jump	L_cont_25563
L_else_25571 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25573
	ldi	r6 r18 3
	bne	r6 r5 L_else_25575
	addi	r6 r0 0
	jump	L_cont_25563
L_else_25575 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25577
	ldi	r6 r18 4
	bne	r6 r5 L_else_25579
	addi	r6 r0 0
	jump	L_cont_25563
L_else_25579 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25581
	ldi	r6 r18 5
	bne	r6 r5 L_else_25583
	addi	r6 r0 0
	jump	L_cont_25563
L_else_25583 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25585
	ldi	r6 r18 6
	bne	r6 r5 L_else_25587
	addi	r6 r0 0
	jump	L_cont_25563
L_else_25587 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25589
	ldi	r6 r18 7
	bne	r6 r5 L_else_25591
	addi	r6 r0 0
	jump	L_cont_25563
L_else_25591 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25593
	addi	r14 r0 8
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25563
L_else_25593 : 
	addi	r6 r0 1
	jump	L_cont_25563
L_else_25589 : 
	addi	r6 r0 1
	jump	L_cont_25563
L_else_25585 : 
	addi	r6 r0 1
	jump	L_cont_25563
L_else_25581 : 
	addi	r6 r0 1
	jump	L_cont_25563
L_else_25577 : 
	addi	r6 r0 1
	jump	L_cont_25563
L_else_25573 : 
	addi	r6 r0 1
	jump	L_cont_25563
L_else_25569 : 
	addi	r6 r0 1
L_cont_25563 : 
	bne	r6 r0 L_else_25567
	addi	r6 r0 0
	jump	L_cont_25254
L_else_25567 : 
	addi	r6 r0 1
L_cont_25254 : 
	bne	r6 r0 L_else_25258
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_25260
	addi	r6 r0 0
	return
L_else_25260 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_25263
	addi	r6 r0 1
	jump	L_cont_25261
L_else_25263 : 
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
	bne	r7 r4 L_else_25295
	ldi	r7 r10 0
	fldi	f2 r8 0
	fsub	f3 f2 f7
	fldi	f2 r8 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25329
	jump	L_cont_25327
L_else_25329 : 
	fsub	f2 f0 f2
L_cont_25327 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25332
	addi	r6 r0 0
	jump	L_cont_25330
L_else_25332 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25369
	jump	L_cont_25367
L_else_25369 : 
	fsub	f2 f0 f2
L_cont_25367 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25371
	addi	r6 r0 0
	jump	L_cont_25330
L_else_25371 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_25374
	addi	r6 r0 1
	jump	L_cont_25372
L_else_25374 : 
	addi	r6 r0 0
L_cont_25372 : 
	sub	r6 r4 r6
L_cont_25330 : 
	bne	r6 r0 L_else_25334
	fldi	f2 r8 2
	fsub	f2 f2 f5
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25337
	jump	L_cont_25335
L_else_25337 : 
	fsub	f2 f0 f2
L_cont_25335 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25340
	addi	r6 r0 0
	jump	L_cont_25338
L_else_25340 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25361
	jump	L_cont_25359
L_else_25361 : 
	fsub	f2 f0 f2
L_cont_25359 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25363
	addi	r6 r0 0
	jump	L_cont_25338
L_else_25363 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_25366
	addi	r6 r0 1
	jump	L_cont_25364
L_else_25366 : 
	addi	r6 r0 0
L_cont_25364 : 
	sub	r6 r4 r6
L_cont_25338 : 
	bne	r6 r0 L_else_25342
	fldi	f2 r8 4
	fsub	f3 f2 f9
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25345
	jump	L_cont_25343
L_else_25345 : 
	fsub	f2 f0 f2
L_cont_25343 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25348
	addi	r6 r0 0
	jump	L_cont_25346
L_else_25348 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_25353
	jump	L_cont_25351
L_else_25353 : 
	fsub	f2 f0 f2
L_cont_25351 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25355
	addi	r6 r0 0
	jump	L_cont_25346
L_else_25355 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_25358
	addi	r6 r0 1
	jump	L_cont_25356
L_else_25358 : 
	addi	r6 r0 0
L_cont_25356 : 
	sub	r6 r4 r6
L_cont_25346 : 
	bne	r6 r0 L_else_25350
	addi	r6 r0 0
	jump	L_cont_25293
L_else_25350 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_25293
L_else_25342 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_25293
L_else_25334 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_25293
L_else_25295 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25376
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_25378
	addi	r6 r0 0
	jump	L_cont_25293
L_else_25378 : 
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
	jump	L_cont_25293
L_else_25376 : 
	fldi	f8 r8 0
	fbne	f8 f0 L_else_25380
	addi	r6 r0 0
	jump	L_cont_25293
L_else_25380 : 
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
	fmul	f3 f3 f2
	fmul	f4 f5 f5
	ldi	r6 r9 4
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f9 f9
	ldi	r6 r9 4
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	ldi	r6 r9 3
	bne	r6 r0 L_else_25383
	jump	L_cont_25381
L_else_25383 : 
	fmul	f4 f5 f9
	ldi	r6 r9 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f9 f7
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f5
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_25381 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25386
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25384
L_else_25386 : 
L_cont_25384 : 
	fmul	f3 f6 f6
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_25388
	addi	r6 r0 0
	jump	L_cont_25293
L_else_25388 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_25391
	fsqrt	f2 f2
	fsub	f2 f6 f2
	fldi	f3 r8 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_25389
L_else_25391 : 
	fsqrt	f2 f2
	fadd	f2 f6 f2
	fldi	f3 r8 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_25389 : 
	addi	r6 r0 1
L_cont_25293 : 
	bne	r6 r0 L_else_25297
	addi	r6 r0 0
	jump	L_cont_25261
L_else_25297 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else_25299
	addi	r6 r0 0
	jump	L_cont_25261
L_else_25299 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_25302
	addi	r6 r0 0
	jump	L_cont_25300
L_else_25302 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25306
	ldi	r6 r18 2
	bne	r6 r5 L_else_25308
	addi	r6 r0 0
	jump	L_cont_25300
L_else_25308 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25310
	ldi	r6 r18 3
	bne	r6 r5 L_else_25312
	addi	r6 r0 0
	jump	L_cont_25300
L_else_25312 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25314
	ldi	r6 r18 4
	bne	r6 r5 L_else_25316
	addi	r6 r0 0
	jump	L_cont_25300
L_else_25316 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25318
	ldi	r6 r18 5
	bne	r6 r5 L_else_25320
	addi	r6 r0 0
	jump	L_cont_25300
L_else_25320 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25322
	ldi	r6 r18 6
	bne	r6 r5 L_else_25324
	addi	r6 r0 0
	jump	L_cont_25300
L_else_25324 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25326
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25300
L_else_25326 : 
	addi	r6 r0 1
	jump	L_cont_25300
L_else_25322 : 
	addi	r6 r0 1
	jump	L_cont_25300
L_else_25318 : 
	addi	r6 r0 1
	jump	L_cont_25300
L_else_25314 : 
	addi	r6 r0 1
	jump	L_cont_25300
L_else_25310 : 
	addi	r6 r0 1
	jump	L_cont_25300
L_else_25306 : 
	addi	r6 r0 1
L_cont_25300 : 
	bne	r6 r0 L_else_25304
	addi	r6 r0 0
	jump	L_cont_25261
L_else_25304 : 
	addi	r6 r0 1
L_cont_25261 : 
	bne	r6 r0 L_else_25265
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix_2185
L_else_25265 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_25268
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25268 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25272
	ldi	r6 r18 2
	bne	r6 r5 L_else_25274
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25274 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25276
	ldi	r6 r18 3
	bne	r6 r5 L_else_25278
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25278 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25280
	ldi	r6 r18 4
	bne	r6 r5 L_else_25282
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25282 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25284
	ldi	r6 r18 5
	bne	r6 r5 L_else_25286
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25286 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25288
	ldi	r6 r18 6
	bne	r6 r5 L_else_25290
	addi	r6 r0 0
	jump	L_cont_25266
L_else_25290 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25292
	addi	r14 r0 7
	add	r15 r0 r18
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
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix_2185
L_else_25270 : 
	addi	r6 r0 1
	return
L_else_25258 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_25394
	addi	r6 r0 0
	jump	L_cont_25392
L_else_25394 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25531
	ldi	r6 r18 2
	bne	r6 r5 L_else_25533
	addi	r6 r0 0
	jump	L_cont_25392
L_else_25533 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25535
	ldi	r6 r18 3
	bne	r6 r5 L_else_25537
	addi	r6 r0 0
	jump	L_cont_25392
L_else_25537 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25539
	ldi	r6 r18 4
	bne	r6 r5 L_else_25541
	addi	r6 r0 0
	jump	L_cont_25392
L_else_25541 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25543
	ldi	r6 r18 5
	bne	r6 r5 L_else_25545
	addi	r6 r0 0
	jump	L_cont_25392
L_else_25545 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25547
	ldi	r6 r18 6
	bne	r6 r5 L_else_25549
	addi	r6 r0 0
	jump	L_cont_25392
L_else_25549 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25551
	ldi	r6 r18 7
	bne	r6 r5 L_else_25553
	addi	r6 r0 0
	jump	L_cont_25392
L_else_25553 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25555
	addi	r14 r0 8
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25392
L_else_25555 : 
	addi	r6 r0 1
	jump	L_cont_25392
L_else_25551 : 
	addi	r6 r0 1
	jump	L_cont_25392
L_else_25547 : 
	addi	r6 r0 1
	jump	L_cont_25392
L_else_25543 : 
	addi	r6 r0 1
	jump	L_cont_25392
L_else_25539 : 
	addi	r6 r0 1
	jump	L_cont_25392
L_else_25535 : 
	addi	r6 r0 1
	jump	L_cont_25392
L_else_25531 : 
	addi	r6 r0 1
L_cont_25392 : 
	bne	r6 r0 L_else_25396
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_25398
	addi	r6 r0 0
	return
L_else_25398 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_25401
	addi	r6 r0 1
	jump	L_cont_25399
L_else_25401 : 
	addi	r10 r0 1905
	ldi	r8 r7 1970
	fldi	f3 r0 1042
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f7 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f6 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r9 r1 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_25433
	ldi	r7 r10 0
	fldi	f2 r9 0
	fsub	f2 f2 f7
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_25467
	jump	L_cont_25465
L_else_25467 : 
	fsub	f2 f0 f2
L_cont_25465 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25470
	addi	r6 r0 0
	jump	L_cont_25468
L_else_25470 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25507
	jump	L_cont_25505
L_else_25507 : 
	fsub	f2 f0 f2
L_cont_25505 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25509
	addi	r6 r0 0
	jump	L_cont_25468
L_else_25509 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else_25512
	addi	r6 r0 1
	jump	L_cont_25510
L_else_25512 : 
	addi	r6 r0 0
L_cont_25510 : 
	sub	r6 r4 r6
L_cont_25468 : 
	bne	r6 r0 L_else_25472
	fldi	f2 r9 2
	fsub	f3 f2 f6
	fldi	f2 r9 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25475
	jump	L_cont_25473
L_else_25475 : 
	fsub	f2 f0 f2
L_cont_25473 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25478
	addi	r6 r0 0
	jump	L_cont_25476
L_else_25478 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25499
	jump	L_cont_25497
L_else_25499 : 
	fsub	f2 f0 f2
L_cont_25497 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25501
	addi	r6 r0 0
	jump	L_cont_25476
L_else_25501 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else_25504
	addi	r6 r0 1
	jump	L_cont_25502
L_else_25504 : 
	addi	r6 r0 0
L_cont_25502 : 
	sub	r6 r4 r6
L_cont_25476 : 
	bne	r6 r0 L_else_25480
	fldi	f2 r9 4
	fsub	f2 f2 f9
	fldi	f3 r9 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25483
	jump	L_cont_25481
L_else_25483 : 
	fsub	f2 f0 f2
L_cont_25481 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25486
	addi	r6 r0 0
	jump	L_cont_25484
L_else_25486 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_25491
	jump	L_cont_25489
L_else_25491 : 
	fsub	f2 f0 f2
L_cont_25489 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25493
	addi	r6 r0 0
	jump	L_cont_25484
L_else_25493 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else_25496
	addi	r6 r0 1
	jump	L_cont_25494
L_else_25496 : 
	addi	r6 r0 0
L_cont_25494 : 
	sub	r6 r4 r6
L_cont_25484 : 
	bne	r6 r0 L_else_25488
	addi	r6 r0 0
	jump	L_cont_25431
L_else_25488 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_25431
L_else_25480 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_25431
L_else_25472 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_25431
L_else_25433 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25514
	fldi	f2 r9 0
	fbgt	f0 f2 L_else_25516
	addi	r6 r0 0
	jump	L_cont_25431
L_else_25516 : 
	fldi	f2 r9 1
	fmul	f3 f2 f7
	fldi	f2 r9 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r9 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_25431
L_else_25514 : 
	fldi	f8 r9 0
	fbne	f8 f0 L_else_25518
	addi	r6 r0 0
	jump	L_cont_25431
L_else_25518 : 
	fldi	f2 r9 1
	fmul	f3 f2 f7
	fldi	f2 r9 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r9 3
	fmul	f2 f2 f9
	fadd	f5 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_25521
	jump	L_cont_25519
L_else_25521 : 
	fmul	f4 f6 f9
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f7
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f6
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_25519 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else_25524
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25522
L_else_25524 : 
L_cont_25522 : 
	fmul	f3 f5 f5
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_25526
	addi	r6 r0 0
	jump	L_cont_25431
L_else_25526 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else_25529
	fsqrt	f2 f2
	fsub	f3 f5 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_25527
L_else_25529 : 
	fsqrt	f2 f2
	fadd	f3 f5 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_25527 : 
	addi	r6 r0 1
L_cont_25431 : 
	bne	r6 r0 L_else_25435
	addi	r6 r0 0
	jump	L_cont_25399
L_else_25435 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_25437
	addi	r6 r0 0
	jump	L_cont_25399
L_else_25437 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_25440
	addi	r6 r0 0
	jump	L_cont_25438
L_else_25440 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25444
	ldi	r6 r18 2
	bne	r6 r5 L_else_25446
	addi	r6 r0 0
	jump	L_cont_25438
L_else_25446 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25448
	ldi	r6 r18 3
	bne	r6 r5 L_else_25450
	addi	r6 r0 0
	jump	L_cont_25438
L_else_25450 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25452
	ldi	r6 r18 4
	bne	r6 r5 L_else_25454
	addi	r6 r0 0
	jump	L_cont_25438
L_else_25454 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25456
	ldi	r6 r18 5
	bne	r6 r5 L_else_25458
	addi	r6 r0 0
	jump	L_cont_25438
L_else_25458 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25460
	ldi	r6 r18 6
	bne	r6 r5 L_else_25462
	addi	r6 r0 0
	jump	L_cont_25438
L_else_25462 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25464
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25438
L_else_25464 : 
	addi	r6 r0 1
	jump	L_cont_25438
L_else_25460 : 
	addi	r6 r0 1
	jump	L_cont_25438
L_else_25456 : 
	addi	r6 r0 1
	jump	L_cont_25438
L_else_25452 : 
	addi	r6 r0 1
	jump	L_cont_25438
L_else_25448 : 
	addi	r6 r0 1
	jump	L_cont_25438
L_else_25444 : 
	addi	r6 r0 1
L_cont_25438 : 
	bne	r6 r0 L_else_25442
	addi	r6 r0 0
	jump	L_cont_25399
L_else_25442 : 
	addi	r6 r0 1
L_cont_25399 : 
	bne	r6 r0 L_else_25403
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix_2185
L_else_25403 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else_25406
	addi	r6 r0 0
	jump	L_cont_25404
L_else_25406 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25410
	ldi	r6 r18 2
	bne	r6 r5 L_else_25412
	addi	r6 r0 0
	jump	L_cont_25404
L_else_25412 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25414
	ldi	r6 r18 3
	bne	r6 r5 L_else_25416
	addi	r6 r0 0
	jump	L_cont_25404
L_else_25416 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25418
	ldi	r6 r18 4
	bne	r6 r5 L_else_25420
	addi	r6 r0 0
	jump	L_cont_25404
L_else_25420 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25422
	ldi	r6 r18 5
	bne	r6 r5 L_else_25424
	addi	r6 r0 0
	jump	L_cont_25404
L_else_25424 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25426
	ldi	r6 r18 6
	bne	r6 r5 L_else_25428
	addi	r6 r0 0
	jump	L_cont_25404
L_else_25428 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_25430
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_25404
L_else_25430 : 
	addi	r6 r0 1
	jump	L_cont_25404
L_else_25426 : 
	addi	r6 r0 1
	jump	L_cont_25404
L_else_25422 : 
	addi	r6 r0 1
	jump	L_cont_25404
L_else_25418 : 
	addi	r6 r0 1
	jump	L_cont_25404
L_else_25414 : 
	addi	r6 r0 1
	jump	L_cont_25404
L_else_25410 : 
	addi	r6 r0 1
L_cont_25404 : 
	bne	r6 r0 L_else_25408
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix_2185
L_else_25408 : 
	addi	r6 r0 1
	return
L_else_25396 : 
	addi	r6 r0 1
	return
L_solve_each_element_2188 : 
	ldi	r15 r11 0
	bne	r15 r5 L_else_25661
	return
L_else_25661 : 
	ldi	r8 r15 1970
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
	bne	r7 r4 L_else_25664
	fldi	f2 r13 0
	fbne	f2 f0 L_else_25796
	addi	r6 r0 0
	jump	L_cont_25794
L_else_25796 : 
	ldi	r7 r8 4
	ldi	r9 r8 6
	fldi	f2 r13 0
	fbgt	f0 f2 L_else_25843
	addi	r6 r0 0
	jump	L_cont_25841
L_else_25843 : 
	addi	r6 r0 1
L_cont_25841 : 
	xor	r6 r9 r6
	fldi	f2 r7 0
	bne	r6 r0 L_else_25846
	fsub	f2 f0 f2
	jump	L_cont_25844
L_else_25846 : 
L_cont_25844 : 
	fsub	f2 f2 f8
	fldi	f3 r13 0
	fdiv	f4 f2 f3
	fldi	f2 r13 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25849
	jump	L_cont_25847
L_else_25849 : 
	fsub	f2 f0 f2
L_cont_25847 : 
	fldi	f3 r7 1
	fbgt	f3 f2 L_else_25851
	addi	r6 r0 0
	jump	L_cont_25794
L_else_25851 : 
	fldi	f2 r13 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25854
	jump	L_cont_25852
L_else_25854 : 
	fsub	f2 f0 f2
L_cont_25852 : 
	fldi	f3 r7 2
	fbgt	f3 f2 L_else_25856
	addi	r6 r0 0
	jump	L_cont_25794
L_else_25856 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25794 : 
	bne	r6 r0 L_else_25798
	fldi	f2 r13 1
	fbne	f2 f0 L_else_25801
	addi	r6 r0 0
	jump	L_cont_25799
L_else_25801 : 
	ldi	r9 r8 4
	ldi	r7 r8 6
	fldi	f2 r13 1
	fbgt	f0 f2 L_else_25827
	addi	r6 r0 0
	jump	L_cont_25825
L_else_25827 : 
	addi	r6 r0 1
L_cont_25825 : 
	xor	r6 r7 r6
	fldi	f2 r9 1
	bne	r6 r0 L_else_25830
	fsub	f2 f0 f2
	jump	L_cont_25828
L_else_25830 : 
L_cont_25828 : 
	fsub	f2 f2 f7
	fldi	f3 r13 1
	fdiv	f4 f2 f3
	fldi	f2 r13 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25833
	jump	L_cont_25831
L_else_25833 : 
	fsub	f2 f0 f2
L_cont_25831 : 
	fldi	f3 r9 2
	fbgt	f3 f2 L_else_25835
	addi	r6 r0 0
	jump	L_cont_25799
L_else_25835 : 
	fldi	f2 r13 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_25838
	jump	L_cont_25836
L_else_25838 : 
	fsub	f2 f0 f2
L_cont_25836 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else_25840
	addi	r6 r0 0
	jump	L_cont_25799
L_else_25840 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25799 : 
	bne	r6 r0 L_else_25803
	fldi	f2 r13 2
	fbne	f2 f0 L_else_25806
	addi	r6 r0 0
	jump	L_cont_25804
L_else_25806 : 
	ldi	r9 r8 4
	ldi	r6 r8 6
	fldi	f2 r13 2
	fbgt	f0 f2 L_else_25811
	addi	r7 r0 0
	jump	L_cont_25809
L_else_25811 : 
	addi	r7 r0 1
L_cont_25809 : 
	xor	r6 r6 r7
	fldi	f2 r9 2
	bne	r6 r0 L_else_25814
	fsub	f2 f0 f2
	jump	L_cont_25812
L_else_25814 : 
L_cont_25812 : 
	fsub	f3 f2 f9
	fldi	f2 r13 2
	fdiv	f4 f3 f2
	fldi	f2 r13 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_25817
	jump	L_cont_25815
L_else_25817 : 
	fsub	f2 f0 f2
L_cont_25815 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else_25819
	addi	r6 r0 0
	jump	L_cont_25804
L_else_25819 : 
	fldi	f2 r13 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25822
	jump	L_cont_25820
L_else_25822 : 
	fsub	f2 f0 f2
L_cont_25820 : 
	fldi	f3 r9 1
	fbgt	f3 f2 L_else_25824
	addi	r6 r0 0
	jump	L_cont_25804
L_else_25824 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25804 : 
	bne	r6 r0 L_else_25808
	addi	r14 r0 0
	jump	L_cont_25662
L_else_25808 : 
	addi	r14 r0 3
	jump	L_cont_25662
L_else_25803 : 
	addi	r14 r0 2
	jump	L_cont_25662
L_else_25798 : 
	addi	r14 r0 1
	jump	L_cont_25662
L_else_25664 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25858
	ldi	r6 r8 4
	fldi	f3 r13 0
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fldi	f2 r13 1
	fldi	f3 r6 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r13 2
	fldi	f3 r6 2
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fbgt	f4 f0 L_else_25860
	addi	r14 r0 0
	jump	L_cont_25662
L_else_25860 : 
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
	addi	r14 r0 1
	jump	L_cont_25662
L_else_25858 : 
	fldi	f10 r13 0
	fldi	f5 r13 1
	fldi	f6 r13 2
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
	bne	r6 r0 L_else_25863
	fadd	f4 f0 f2
	jump	L_cont_25861
L_else_25863 : 
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
L_cont_25861 : 
	fbne	f4 f0 L_else_25865
	addi	r14 r0 0
	jump	L_cont_25662
L_else_25865 : 
	fldi	f11 r13 0
	fldi	f12 r13 1
	fldi	f10 r13 2
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
	bne	r6 r0 L_else_25868
	fadd	f3 f0 f2
	jump	L_cont_25866
L_else_25868 : 
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
L_cont_25866 : 
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
	bne	r6 r0 L_else_25871
	jump	L_cont_25869
L_else_25871 : 
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
L_cont_25869 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25874
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont_25872
L_else_25874 : 
L_cont_25872 : 
	fmul	f5 f3 f3
	fmul	f2 f4 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_25876
	addi	r14 r0 0
	jump	L_cont_25662
L_else_25876 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else_25879
	fsub	f2 f0 f2
	jump	L_cont_25877
L_else_25879 : 
L_cont_25877 : 
	fsub	f2 f2 f3
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r14 r0 1
L_cont_25662 : 
	bne	r14 r0 L_else_25666
	ldi	r6 r15 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_25668
	return
L_else_25668 : 
	addi	r11 r11 1
	jump	L_solve_each_element_2188
L_else_25666 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_25671
	jump	L_cont_25669
L_else_25671 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_25673
	jump	L_cont_25669
L_else_25673 : 
	fldi	f2 r0 33
	fadd	f14 f3 f2
	fldi	f2 r13 0
	fmul	f3 f2 f14
	fldi	f2 r0 1063
	fadd	f13 f3 f2
	fldi	f2 r13 1
	fmul	f3 f2 f14
	fldi	f2 r0 1064
	fadd	f12 f3 f2
	fldi	f2 r13 2
	fmul	f3 f2 f14
	fldi	f2 r0 1065
	fadd	f11 f3 f2
	ldi	r6 r12 0
	bne	r6 r5 L_else_25676
	addi	r6 r0 1
	jump	L_cont_25674
L_else_25676 : 
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
	bne	r7 r4 L_else_25681
	fbgt	f0 f3 L_else_25764
	fadd	f2 f0 f3
	jump	L_cont_25762
L_else_25764 : 
	fsub	f2 f0 f3
L_cont_25762 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25767
	addi	r6 r0 0
	jump	L_cont_25765
L_else_25767 : 
	fbgt	f0 f4 L_else_25772
	fadd	f2 f0 f4
	jump	L_cont_25770
L_else_25772 : 
	fsub	f2 f0 f4
L_cont_25770 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25774
	addi	r6 r0 0
	jump	L_cont_25765
L_else_25774 : 
	fbgt	f0 f5 L_else_25777
	fadd	f2 f0 f5
	jump	L_cont_25775
L_else_25777 : 
	fsub	f2 f0 f5
L_cont_25775 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25779
	addi	r6 r0 0
	jump	L_cont_25765
L_else_25779 : 
	addi	r6 r0 1
L_cont_25765 : 
	bne	r6 r0 L_else_25769
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_25679
L_else_25769 : 
	ldi	r6 r8 6
	jump	L_cont_25679
L_else_25681 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_25781
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
	fbgt	f0 f2 L_else_25784
	addi	r6 r0 0
	jump	L_cont_25782
L_else_25784 : 
	addi	r6 r0 1
L_cont_25782 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_25679
L_else_25781 : 
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
	bne	r6 r0 L_else_25787
	jump	L_cont_25785
L_else_25787 : 
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
L_cont_25785 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25790
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25788
L_else_25790 : 
L_cont_25788 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25793
	addi	r6 r0 0
	jump	L_cont_25791
L_else_25793 : 
	addi	r6 r0 1
L_cont_25791 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_25679 : 
	bne	r6 r0 L_else_25683
	ldi	r6 r12 1
	bne	r6 r5 L_else_25685
	addi	r6 r0 1
	jump	L_cont_25674
L_else_25685 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f2 f13 f2
	ldi	r6 r8 5
	fldi	f3 r6 1
	fsub	f4 f12 f3
	ldi	r6 r8 5
	fldi	f3 r6 2
	fsub	f5 f11 f3
	ldi	r6 r8 1
	bne	r6 r4 L_else_25688
	fbgt	f0 f2 L_else_25732
	jump	L_cont_25730
L_else_25732 : 
	fsub	f2 f0 f2
L_cont_25730 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25735
	addi	r6 r0 0
	jump	L_cont_25733
L_else_25735 : 
	fbgt	f0 f4 L_else_25740
	fadd	f2 f0 f4
	jump	L_cont_25738
L_else_25740 : 
	fsub	f2 f0 f4
L_cont_25738 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25742
	addi	r6 r0 0
	jump	L_cont_25733
L_else_25742 : 
	fbgt	f0 f5 L_else_25745
	fadd	f2 f0 f5
	jump	L_cont_25743
L_else_25745 : 
	fsub	f2 f0 f5
L_cont_25743 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25747
	addi	r6 r0 0
	jump	L_cont_25733
L_else_25747 : 
	addi	r6 r0 1
L_cont_25733 : 
	bne	r6 r0 L_else_25737
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_25686
L_else_25737 : 
	ldi	r6 r8 6
	jump	L_cont_25686
L_else_25688 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_25749
	ldi	r6 r8 4
	fldi	f3 r6 0
	fmul	f3 f3 f2
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25752
	addi	r6 r0 0
	jump	L_cont_25750
L_else_25752 : 
	addi	r6 r0 1
L_cont_25750 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_25686
L_else_25749 : 
	fmul	f6 f2 f2
	ldi	r6 r8 4
	fldi	f3 r6 0
	fmul	f6 f6 f3
	fmul	f7 f4 f4
	ldi	r6 r8 4
	fldi	f3 r6 1
	fmul	f3 f7 f3
	fadd	f7 f6 f3
	fmul	f6 f5 f5
	ldi	r6 r8 4
	fldi	f3 r6 2
	fmul	f3 f6 f3
	fadd	f3 f7 f3
	ldi	r6 r8 3
	bne	r6 r0 L_else_25755
	fadd	f2 f0 f3
	jump	L_cont_25753
L_else_25755 : 
	fmul	f7 f4 f5
	ldi	r6 r8 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f3 f6
	fmul	f5 f5 f2
	ldi	r6 r8 9
	fldi	f3 r6 1
	fmul	f3 f5 f3
	fadd	f5 f6 f3
	fmul	f3 f2 f4
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f5 f2
L_cont_25753 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25758
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25756
L_else_25758 : 
L_cont_25756 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25761
	addi	r6 r0 0
	jump	L_cont_25759
L_else_25761 : 
	addi	r6 r0 1
L_cont_25759 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_25686 : 
	bne	r6 r0 L_else_25690
	ldi	r6 r12 2
	bne	r6 r5 L_else_25692
	addi	r6 r0 1
	jump	L_cont_25674
L_else_25692 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f2 f13 f2
	ldi	r6 r8 5
	fldi	f3 r6 1
	fsub	f4 f12 f3
	ldi	r6 r8 5
	fldi	f3 r6 2
	fsub	f5 f11 f3
	ldi	r6 r8 1
	bne	r6 r4 L_else_25695
	fbgt	f0 f2 L_else_25700
	jump	L_cont_25698
L_else_25700 : 
	fsub	f2 f0 f2
L_cont_25698 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_25703
	addi	r6 r0 0
	jump	L_cont_25701
L_else_25703 : 
	fbgt	f0 f4 L_else_25708
	fadd	f2 f0 f4
	jump	L_cont_25706
L_else_25708 : 
	fsub	f2 f0 f4
L_cont_25706 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_25710
	addi	r6 r0 0
	jump	L_cont_25701
L_else_25710 : 
	fbgt	f0 f5 L_else_25713
	fadd	f2 f0 f5
	jump	L_cont_25711
L_else_25713 : 
	fsub	f2 f0 f5
L_cont_25711 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_25715
	addi	r6 r0 0
	jump	L_cont_25701
L_else_25715 : 
	addi	r6 r0 1
L_cont_25701 : 
	bne	r6 r0 L_else_25705
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_25693
L_else_25705 : 
	ldi	r6 r8 6
	jump	L_cont_25693
L_else_25695 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_25717
	ldi	r6 r8 4
	fldi	f3 r6 0
	fmul	f3 f3 f2
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_25720
	addi	r6 r0 0
	jump	L_cont_25718
L_else_25720 : 
	addi	r6 r0 1
L_cont_25718 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_25693
L_else_25717 : 
	fmul	f6 f2 f2
	ldi	r6 r8 4
	fldi	f3 r6 0
	fmul	f6 f6 f3
	fmul	f7 f4 f4
	ldi	r6 r8 4
	fldi	f3 r6 1
	fmul	f3 f7 f3
	fadd	f7 f6 f3
	fmul	f6 f5 f5
	ldi	r6 r8 4
	fldi	f3 r6 2
	fmul	f3 f6 f3
	fadd	f3 f7 f3
	ldi	r6 r8 3
	bne	r6 r0 L_else_25723
	fadd	f2 f0 f3
	jump	L_cont_25721
L_else_25723 : 
	fmul	f7 f4 f5
	ldi	r6 r8 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f3 f6
	fmul	f5 f5 f2
	ldi	r6 r8 9
	fldi	f3 r6 1
	fmul	f3 f5 f3
	fadd	f5 f6 f3
	fmul	f2 f2 f4
	ldi	r6 r8 9
	fldi	f3 r6 2
	fmul	f2 f2 f3
	fadd	f2 f5 f2
L_cont_25721 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_25726
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_25724
L_else_25726 : 
L_cont_25724 : 
	ldi	r6 r8 6
	fbgt	f0 f2 L_else_25729
	addi	r7 r0 0
	jump	L_cont_25727
L_else_25729 : 
	addi	r7 r0 1
L_cont_25727 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
L_cont_25693 : 
	bne	r6 r0 L_else_25697
	addi	r6 r0 3
	add	r7 r0 r12
	fadd	f2 f0 f13
	fadd	f3 f0 f12
	fadd	f4 f0 f11
	call	L_check_all_inside_2173
	jump	L_cont_25674
L_else_25697 : 
	addi	r6 r0 0
	jump	L_cont_25674
L_else_25690 : 
	addi	r6 r0 0
	jump	L_cont_25674
L_else_25683 : 
	addi	r6 r0 0
L_cont_25674 : 
	bne	r6 r0 L_else_25678
	jump	L_cont_25669
L_else_25678 : 
	fsti	f14 r0 1082
	fsti	f13 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r15 r0 1045
	sti	r14 r0 1074
L_cont_25669 : 
	addi	r11 r11 1
	jump	L_solve_each_element_2188
L_solve_one_or_network_2192 : 
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_25882
	return
L_else_25882 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_25884
	return
L_else_25884 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_25886
	return
L_else_25886 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_25888
	return
L_else_25888 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_25890
	return
L_else_25890 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_25892
	return
L_else_25892 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_25894
	return
L_else_25894 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_25896
	return
L_else_25896 : 
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
	bne	r7 r5 L_else_25899
	return
L_else_25899 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_25902
	ldi	r6 r17 1
	bne	r6 r5 L_else_26026
	jump	L_cont_25900
L_else_26026 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 2
	bne	r6 r5 L_else_26028
	jump	L_cont_25900
L_else_26028 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 3
	bne	r6 r5 L_else_26030
	jump	L_cont_25900
L_else_26030 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 4
	bne	r6 r5 L_else_26032
	jump	L_cont_25900
L_else_26032 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 5
	bne	r6 r5 L_else_26034
	jump	L_cont_25900
L_else_26034 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 6
	bne	r6 r5 L_else_26036
	jump	L_cont_25900
L_else_26036 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 7
	bne	r6 r5 L_else_26038
	jump	L_cont_25900
L_else_26038 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
	jump	L_cont_25900
L_else_25902 : 
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
	bne	r7 r4 L_else_26041
	fldi	f2 r21 0
	fbne	f2 f0 L_else_26062
	addi	r6 r0 0
	jump	L_cont_26060
L_else_26062 : 
	ldi	r7 r8 4
	ldi	r9 r8 6
	fldi	f2 r21 0
	fbgt	f0 f2 L_else_26109
	addi	r6 r0 0
	jump	L_cont_26107
L_else_26109 : 
	addi	r6 r0 1
L_cont_26107 : 
	xor	r6 r9 r6
	fldi	f2 r7 0
	bne	r6 r0 L_else_26112
	fsub	f2 f0 f2
	jump	L_cont_26110
L_else_26112 : 
L_cont_26110 : 
	fsub	f2 f2 f8
	fldi	f3 r21 0
	fdiv	f4 f2 f3
	fldi	f2 r21 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26115
	jump	L_cont_26113
L_else_26115 : 
	fsub	f2 f0 f2
L_cont_26113 : 
	fldi	f3 r7 1
	fbgt	f3 f2 L_else_26117
	addi	r6 r0 0
	jump	L_cont_26060
L_else_26117 : 
	fldi	f2 r21 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26120
	jump	L_cont_26118
L_else_26120 : 
	fsub	f2 f0 f2
L_cont_26118 : 
	fldi	f3 r7 2
	fbgt	f3 f2 L_else_26122
	addi	r6 r0 0
	jump	L_cont_26060
L_else_26122 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_26060 : 
	bne	r6 r0 L_else_26064
	fldi	f2 r21 1
	fbne	f2 f0 L_else_26067
	addi	r6 r0 0
	jump	L_cont_26065
L_else_26067 : 
	ldi	r9 r8 4
	ldi	r7 r8 6
	fldi	f2 r21 1
	fbgt	f0 f2 L_else_26093
	addi	r6 r0 0
	jump	L_cont_26091
L_else_26093 : 
	addi	r6 r0 1
L_cont_26091 : 
	xor	r6 r7 r6
	fldi	f2 r9 1
	bne	r6 r0 L_else_26096
	fsub	f2 f0 f2
	jump	L_cont_26094
L_else_26096 : 
L_cont_26094 : 
	fsub	f2 f2 f7
	fldi	f3 r21 1
	fdiv	f4 f2 f3
	fldi	f2 r21 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26099
	jump	L_cont_26097
L_else_26099 : 
	fsub	f2 f0 f2
L_cont_26097 : 
	fldi	f3 r9 2
	fbgt	f3 f2 L_else_26101
	addi	r6 r0 0
	jump	L_cont_26065
L_else_26101 : 
	fldi	f2 r21 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26104
	jump	L_cont_26102
L_else_26104 : 
	fsub	f2 f0 f2
L_cont_26102 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else_26106
	addi	r6 r0 0
	jump	L_cont_26065
L_else_26106 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_26065 : 
	bne	r6 r0 L_else_26069
	fldi	f2 r21 2
	fbne	f2 f0 L_else_26072
	addi	r6 r0 0
	jump	L_cont_26070
L_else_26072 : 
	ldi	r9 r8 4
	ldi	r6 r8 6
	fldi	f2 r21 2
	fbgt	f0 f2 L_else_26077
	addi	r7 r0 0
	jump	L_cont_26075
L_else_26077 : 
	addi	r7 r0 1
L_cont_26075 : 
	xor	r6 r6 r7
	fldi	f2 r9 2
	bne	r6 r0 L_else_26080
	fsub	f2 f0 f2
	jump	L_cont_26078
L_else_26080 : 
L_cont_26078 : 
	fsub	f3 f2 f9
	fldi	f2 r21 2
	fdiv	f4 f3 f2
	fldi	f2 r21 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26083
	jump	L_cont_26081
L_else_26083 : 
	fsub	f2 f0 f2
L_cont_26081 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else_26085
	addi	r6 r0 0
	jump	L_cont_26070
L_else_26085 : 
	fldi	f2 r21 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26088
	jump	L_cont_26086
L_else_26088 : 
	fsub	f2 f0 f2
L_cont_26086 : 
	fldi	f3 r9 1
	fbgt	f3 f2 L_else_26090
	addi	r6 r0 0
	jump	L_cont_26070
L_else_26090 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_26070 : 
	bne	r6 r0 L_else_26074
	addi	r6 r0 0
	jump	L_cont_26039
L_else_26074 : 
	addi	r6 r0 3
	jump	L_cont_26039
L_else_26069 : 
	addi	r6 r0 2
	jump	L_cont_26039
L_else_26064 : 
	addi	r6 r0 1
	jump	L_cont_26039
L_else_26041 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26124
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
	fbgt	f4 f0 L_else_26126
	addi	r6 r0 0
	jump	L_cont_26039
L_else_26126 : 
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
	jump	L_cont_26039
L_else_26124 : 
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
	bne	r6 r0 L_else_26129
	fadd	f3 f0 f2
	jump	L_cont_26127
L_else_26129 : 
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
L_cont_26127 : 
	fbne	f3 f0 L_else_26131
	addi	r6 r0 0
	jump	L_cont_26039
L_else_26131 : 
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
	bne	r6 r0 L_else_26134
	fadd	f4 f0 f2
	jump	L_cont_26132
L_else_26134 : 
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
L_cont_26132 : 
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
	bne	r6 r0 L_else_26137
	jump	L_cont_26135
L_else_26137 : 
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
L_cont_26135 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_26140
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont_26138
L_else_26140 : 
L_cont_26138 : 
	fmul	f5 f4 f4
	fmul	f2 f3 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_26142
	addi	r6 r0 0
	jump	L_cont_26039
L_else_26142 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else_26145
	fsub	f2 f0 f2
	jump	L_cont_26143
L_else_26145 : 
L_cont_26143 : 
	fsub	f2 f2 f4
	fdiv	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
L_cont_26039 : 
	bne	r6 r0 L_else_26043
	jump	L_cont_25900
L_else_26043 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_26045
	jump	L_cont_25900
L_else_26045 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_26047
	jump	L_cont_25900
L_else_26047 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 2
	bne	r6 r5 L_else_26049
	jump	L_cont_25900
L_else_26049 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 3
	bne	r6 r5 L_else_26051
	jump	L_cont_25900
L_else_26051 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 4
	bne	r6 r5 L_else_26053
	jump	L_cont_25900
L_else_26053 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 5
	bne	r6 r5 L_else_26055
	jump	L_cont_25900
L_else_26055 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 6
	bne	r6 r5 L_else_26057
	jump	L_cont_25900
L_else_26057 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 7
	bne	r6 r5 L_else_26059
	jump	L_cont_25900
L_else_26059 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
L_cont_25900 : 
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_25904
	return
L_else_25904 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_25907
	ldi	r6 r17 1
	bne	r6 r5 L_else_25909
	jump	L_cont_25905
L_else_25909 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 2
	bne	r6 r5 L_else_25911
	jump	L_cont_25905
L_else_25911 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 3
	bne	r6 r5 L_else_25913
	jump	L_cont_25905
L_else_25913 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 4
	bne	r6 r5 L_else_25915
	jump	L_cont_25905
L_else_25915 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 5
	bne	r6 r5 L_else_25917
	jump	L_cont_25905
L_else_25917 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 6
	bne	r6 r5 L_else_25919
	jump	L_cont_25905
L_else_25919 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
	jump	L_cont_25905
L_else_25907 : 
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
	bne	r7 r4 L_else_25922
	fldi	f3 r21 0
	fbne	f3 f0 L_else_25941
	addi	r6 r0 0
	jump	L_cont_25939
L_else_25941 : 
	ldi	r9 r8 4
	ldi	r7 r8 6
	fbgt	f0 f3 L_else_25988
	addi	r6 r0 0
	jump	L_cont_25986
L_else_25988 : 
	addi	r6 r0 1
L_cont_25986 : 
	xor	r6 r7 r6
	fldi	f2 r9 0
	bne	r6 r0 L_else_25991
	fsub	f2 f0 f2
	jump	L_cont_25989
L_else_25991 : 
L_cont_25989 : 
	fsub	f2 f2 f8
	fdiv	f4 f2 f3
	fldi	f2 r21 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25994
	jump	L_cont_25992
L_else_25994 : 
	fsub	f2 f0 f2
L_cont_25992 : 
	fldi	f3 r9 1
	fbgt	f3 f2 L_else_25996
	addi	r6 r0 0
	jump	L_cont_25939
L_else_25996 : 
	fldi	f2 r21 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25999
	jump	L_cont_25997
L_else_25999 : 
	fsub	f2 f0 f2
L_cont_25997 : 
	fldi	f3 r9 2
	fbgt	f3 f2 L_else_26001
	addi	r6 r0 0
	jump	L_cont_25939
L_else_26001 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25939 : 
	bne	r6 r0 L_else_25943
	fldi	f3 r21 1
	fbne	f3 f0 L_else_25946
	addi	r6 r0 0
	jump	L_cont_25944
L_else_25946 : 
	ldi	r9 r8 4
	ldi	r7 r8 6
	fbgt	f0 f3 L_else_25972
	addi	r6 r0 0
	jump	L_cont_25970
L_else_25972 : 
	addi	r6 r0 1
L_cont_25970 : 
	xor	r6 r7 r6
	fldi	f2 r9 1
	bne	r6 r0 L_else_25975
	fsub	f2 f0 f2
	jump	L_cont_25973
L_else_25975 : 
L_cont_25973 : 
	fsub	f2 f2 f7
	fdiv	f4 f2 f3
	fldi	f2 r21 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_25978
	jump	L_cont_25976
L_else_25978 : 
	fsub	f2 f0 f2
L_cont_25976 : 
	fldi	f3 r9 2
	fbgt	f3 f2 L_else_25980
	addi	r6 r0 0
	jump	L_cont_25944
L_else_25980 : 
	fldi	f2 r21 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_25983
	jump	L_cont_25981
L_else_25983 : 
	fsub	f2 f0 f2
L_cont_25981 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else_25985
	addi	r6 r0 0
	jump	L_cont_25944
L_else_25985 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25944 : 
	bne	r6 r0 L_else_25948
	fldi	f3 r21 2
	fbne	f3 f0 L_else_25951
	addi	r6 r0 0
	jump	L_cont_25949
L_else_25951 : 
	ldi	r7 r8 4
	ldi	r8 r8 6
	fbgt	f0 f3 L_else_25956
	addi	r6 r0 0
	jump	L_cont_25954
L_else_25956 : 
	addi	r6 r0 1
L_cont_25954 : 
	xor	r6 r8 r6
	fldi	f2 r7 2
	bne	r6 r0 L_else_25959
	fsub	f2 f0 f2
	jump	L_cont_25957
L_else_25959 : 
L_cont_25957 : 
	fsub	f2 f2 f9
	fdiv	f4 f2 f3
	fldi	f2 r21 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_25962
	jump	L_cont_25960
L_else_25962 : 
	fsub	f2 f0 f2
L_cont_25960 : 
	fldi	f3 r7 0
	fbgt	f3 f2 L_else_25964
	addi	r6 r0 0
	jump	L_cont_25949
L_else_25964 : 
	fldi	f2 r21 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_25967
	jump	L_cont_25965
L_else_25967 : 
	fsub	f2 f0 f2
L_cont_25965 : 
	fldi	f3 r7 1
	fbgt	f3 f2 L_else_25969
	addi	r6 r0 0
	jump	L_cont_25949
L_else_25969 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_25949 : 
	bne	r6 r0 L_else_25953
	addi	r6 r0 0
	jump	L_cont_25920
L_else_25953 : 
	addi	r6 r0 3
	jump	L_cont_25920
L_else_25948 : 
	addi	r6 r0 2
	jump	L_cont_25920
L_else_25943 : 
	addi	r6 r0 1
	jump	L_cont_25920
L_else_25922 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26003
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
	fbgt	f4 f0 L_else_26005
	addi	r6 r0 0
	jump	L_cont_25920
L_else_26005 : 
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
	jump	L_cont_25920
L_else_26003 : 
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
	bne	r6 r0 L_else_26008
	fadd	f4 f0 f2
	jump	L_cont_26006
L_else_26008 : 
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
L_cont_26006 : 
	fbne	f4 f0 L_else_26010
	addi	r6 r0 0
	jump	L_cont_25920
L_else_26010 : 
	fldi	f12 r21 0
	fldi	f10 r21 1
	fldi	f11 r21 2
	fmul	f3 f12 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f5 f3 f2
	fmul	f3 f10 f7
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
	bne	r6 r0 L_else_26013
	fadd	f3 f0 f2
	jump	L_cont_26011
L_else_26013 : 
	fmul	f5 f11 f7
	fmul	f3 f10 f9
	fadd	f5 f5 f3
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f5 f5 f3
	fmul	f6 f12 f9
	fmul	f3 f11 f8
	fadd	f6 f6 f3
	ldi	r6 r8 9
	fldi	f3 r6 1
	fmul	f3 f6 f3
	fadd	f6 f5 f3
	fmul	f3 f12 f7
	fmul	f5 f10 f8
	fadd	f5 f3 f5
	ldi	r6 r8 9
	fldi	f3 r6 2
	fmul	f3 f5 f3
	fadd	f3 f6 f3
	fldi	f5 r0 30
	fdiv	f3 f3 f5
	fadd	f3 f2 f3
L_cont_26011 : 
	fmul	f5 f8 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f5 f5 f2
	fmul	f6 f7 f7
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f5 f5 f2
	fmul	f6 f9 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f6 f2
	fadd	f2 f5 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_26016
	jump	L_cont_26014
L_else_26016 : 
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
L_cont_26014 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_26019
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont_26017
L_else_26019 : 
L_cont_26017 : 
	fmul	f5 f3 f3
	fmul	f2 f4 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_26021
	addi	r6 r0 0
	jump	L_cont_25920
L_else_26021 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else_26024
	fsub	f2 f0 f2
	jump	L_cont_26022
L_else_26024 : 
L_cont_26022 : 
	fsub	f2 f2 f3
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r6 r0 1
L_cont_25920 : 
	bne	r6 r0 L_else_25924
	jump	L_cont_25905
L_else_25924 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_25926
	jump	L_cont_25905
L_else_25926 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_25928
	jump	L_cont_25905
L_else_25928 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 2
	bne	r6 r5 L_else_25930
	jump	L_cont_25905
L_else_25930 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 3
	bne	r6 r5 L_else_25932
	jump	L_cont_25905
L_else_25932 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 4
	bne	r6 r5 L_else_25934
	jump	L_cont_25905
L_else_25934 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 5
	bne	r6 r5 L_else_25936
	jump	L_cont_25905
L_else_25936 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	ldi	r6 r17 6
	bne	r6 r5 L_else_25938
	jump	L_cont_25905
L_else_25938 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_2188
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_2192
L_cont_25905 : 
	addi	r19 r19 1
	jump	L_trace_or_matrix_2196
L_solve_each_element_fast_2202 : 
	ldi	r10 r13 0
	ldi	r14 r11 0
	bne	r14 r5 L_else_26148
	return
L_else_26148 : 
	ldi	r9 r14 1970
	ldi	r15 r9 10
	fldi	f7 r15 0
	fldi	f6 r15 1
	fldi	f8 r15 2
	ldi	r6 r13 1
	add	r1 r6 r14
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else_26151
	ldi	r7 r13 0
	fldi	f2 r8 0
	fsub	f3 f2 f7
	fldi	f2 r8 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26283
	jump	L_cont_26281
L_else_26283 : 
	fsub	f2 f0 f2
L_cont_26281 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26286
	addi	r6 r0 0
	jump	L_cont_26284
L_else_26286 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26323
	jump	L_cont_26321
L_else_26323 : 
	fsub	f2 f0 f2
L_cont_26321 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26325
	addi	r6 r0 0
	jump	L_cont_26284
L_else_26325 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_26328
	addi	r6 r0 1
	jump	L_cont_26326
L_else_26328 : 
	addi	r6 r0 0
L_cont_26326 : 
	sub	r6 r4 r6
L_cont_26284 : 
	bne	r6 r0 L_else_26288
	fldi	f2 r8 2
	fsub	f2 f2 f6
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26291
	jump	L_cont_26289
L_else_26291 : 
	fsub	f2 f0 f2
L_cont_26289 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26294
	addi	r6 r0 0
	jump	L_cont_26292
L_else_26294 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26315
	jump	L_cont_26313
L_else_26315 : 
	fsub	f2 f0 f2
L_cont_26313 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26317
	addi	r6 r0 0
	jump	L_cont_26292
L_else_26317 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_26320
	addi	r6 r0 1
	jump	L_cont_26318
L_else_26320 : 
	addi	r6 r0 0
L_cont_26318 : 
	sub	r6 r4 r6
L_cont_26292 : 
	bne	r6 r0 L_else_26296
	fldi	f2 r8 4
	fsub	f3 f2 f8
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26299
	jump	L_cont_26297
L_else_26299 : 
	fsub	f2 f0 f2
L_cont_26297 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26302
	addi	r6 r0 0
	jump	L_cont_26300
L_else_26302 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26307
	jump	L_cont_26305
L_else_26307 : 
	fsub	f2 f0 f2
L_cont_26305 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26309
	addi	r6 r0 0
	jump	L_cont_26300
L_else_26309 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_26312
	addi	r6 r0 1
	jump	L_cont_26310
L_else_26312 : 
	addi	r6 r0 0
L_cont_26310 : 
	sub	r6 r4 r6
L_cont_26300 : 
	bne	r6 r0 L_else_26304
	addi	r15 r0 0
	jump	L_cont_26149
L_else_26304 : 
	fsti	f4 r0 1073
	addi	r15 r0 3
	jump	L_cont_26149
L_else_26296 : 
	fsti	f4 r0 1073
	addi	r15 r0 2
	jump	L_cont_26149
L_else_26288 : 
	fsti	f4 r0 1073
	addi	r15 r0 1
	jump	L_cont_26149
L_else_26151 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26330
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_26332
	addi	r15 r0 0
	jump	L_cont_26149
L_else_26332 : 
	fldi	f2 r8 0
	fldi	f3 r15 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r15 r0 1
	jump	L_cont_26149
L_else_26330 : 
	fldi	f5 r8 0
	fbne	f5 f0 L_else_26334
	addi	r15 r0 0
	jump	L_cont_26149
L_else_26334 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f8
	fadd	f4 f3 f2
	fldi	f2 r15 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_26336
	addi	r15 r0 0
	jump	L_cont_26149
L_else_26336 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_26339
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26337
L_else_26339 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26337 : 
	addi	r15 r0 1
L_cont_26149 : 
	bne	r15 r0 L_else_26153
	ldi	r6 r14 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_26155
	return
L_else_26155 : 
	addi	r11 r11 1
	jump	L_solve_each_element_fast_2202
L_else_26153 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_26158
	jump	L_cont_26156
L_else_26158 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_26160
	jump	L_cont_26156
L_else_26160 : 
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
	ldi	r6 r12 0
	bne	r6 r5 L_else_26163
	addi	r6 r0 1
	jump	L_cont_26161
L_else_26163 : 
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
	ldi	r6 r8 1
	bne	r6 r4 L_else_26168
	fbgt	f0 f3 L_else_26251
	fadd	f2 f0 f3
	jump	L_cont_26249
L_else_26251 : 
	fsub	f2 f0 f3
L_cont_26249 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26254
	addi	r6 r0 0
	jump	L_cont_26252
L_else_26254 : 
	fbgt	f0 f4 L_else_26259
	fadd	f2 f0 f4
	jump	L_cont_26257
L_else_26259 : 
	fsub	f2 f0 f4
L_cont_26257 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26261
	addi	r6 r0 0
	jump	L_cont_26252
L_else_26261 : 
	fbgt	f0 f5 L_else_26264
	fadd	f2 f0 f5
	jump	L_cont_26262
L_else_26264 : 
	fsub	f2 f0 f5
L_cont_26262 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26266
	addi	r6 r0 0
	jump	L_cont_26252
L_else_26266 : 
	addi	r6 r0 1
L_cont_26252 : 
	bne	r6 r0 L_else_26256
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_26166
L_else_26256 : 
	ldi	r6 r8 6
	jump	L_cont_26166
L_else_26168 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_26268
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
	fbgt	f0 f2 L_else_26271
	addi	r6 r0 0
	jump	L_cont_26269
L_else_26271 : 
	addi	r6 r0 1
L_cont_26269 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_26166
L_else_26268 : 
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
	bne	r6 r0 L_else_26274
	jump	L_cont_26272
L_else_26274 : 
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
L_cont_26272 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_26277
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26275
L_else_26277 : 
L_cont_26275 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_26280
	addi	r6 r0 0
	jump	L_cont_26278
L_else_26280 : 
	addi	r6 r0 1
L_cont_26278 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_26166 : 
	bne	r6 r0 L_else_26170
	ldi	r6 r12 1
	bne	r6 r5 L_else_26172
	addi	r6 r0 1
	jump	L_cont_26161
L_else_26172 : 
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
	ldi	r6 r8 1
	bne	r6 r4 L_else_26175
	fbgt	f0 f3 L_else_26219
	fadd	f2 f0 f3
	jump	L_cont_26217
L_else_26219 : 
	fsub	f2 f0 f3
L_cont_26217 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26222
	addi	r6 r0 0
	jump	L_cont_26220
L_else_26222 : 
	fbgt	f0 f4 L_else_26227
	fadd	f2 f0 f4
	jump	L_cont_26225
L_else_26227 : 
	fsub	f2 f0 f4
L_cont_26225 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26229
	addi	r6 r0 0
	jump	L_cont_26220
L_else_26229 : 
	fbgt	f0 f5 L_else_26232
	fadd	f2 f0 f5
	jump	L_cont_26230
L_else_26232 : 
	fsub	f2 f0 f5
L_cont_26230 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26234
	addi	r6 r0 0
	jump	L_cont_26220
L_else_26234 : 
	addi	r6 r0 1
L_cont_26220 : 
	bne	r6 r0 L_else_26224
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_26173
L_else_26224 : 
	ldi	r6 r8 6
	jump	L_cont_26173
L_else_26175 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_26236
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
	fbgt	f0 f2 L_else_26239
	addi	r6 r0 0
	jump	L_cont_26237
L_else_26239 : 
	addi	r6 r0 1
L_cont_26237 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_26173
L_else_26236 : 
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
	bne	r6 r0 L_else_26242
	jump	L_cont_26240
L_else_26242 : 
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
L_cont_26240 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_26245
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26243
L_else_26245 : 
L_cont_26243 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_26248
	addi	r6 r0 0
	jump	L_cont_26246
L_else_26248 : 
	addi	r6 r0 1
L_cont_26246 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_26173 : 
	bne	r6 r0 L_else_26177
	ldi	r6 r12 2
	bne	r6 r5 L_else_26179
	addi	r6 r0 1
	jump	L_cont_26161
L_else_26179 : 
	ldi	r7 r6 1970
	ldi	r6 r7 5
	fldi	f2 r6 0
	fsub	f2 f13 f2
	ldi	r6 r7 5
	fldi	f3 r6 1
	fsub	f4 f12 f3
	ldi	r6 r7 5
	fldi	f3 r6 2
	fsub	f5 f11 f3
	ldi	r6 r7 1
	bne	r6 r4 L_else_26182
	fbgt	f0 f2 L_else_26187
	jump	L_cont_26185
L_else_26187 : 
	fsub	f2 f0 f2
L_cont_26185 : 
	ldi	r6 r7 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26190
	addi	r6 r0 0
	jump	L_cont_26188
L_else_26190 : 
	fbgt	f0 f4 L_else_26195
	fadd	f2 f0 f4
	jump	L_cont_26193
L_else_26195 : 
	fsub	f2 f0 f4
L_cont_26193 : 
	ldi	r6 r7 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26197
	addi	r6 r0 0
	jump	L_cont_26188
L_else_26197 : 
	fbgt	f0 f5 L_else_26200
	fadd	f2 f0 f5
	jump	L_cont_26198
L_else_26200 : 
	fsub	f2 f0 f5
L_cont_26198 : 
	ldi	r6 r7 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26202
	addi	r6 r0 0
	jump	L_cont_26188
L_else_26202 : 
	addi	r6 r0 1
L_cont_26188 : 
	bne	r6 r0 L_else_26192
	ldi	r6 r7 6
	sub	r6 r4 r6
	jump	L_cont_26180
L_else_26192 : 
	ldi	r6 r7 6
	jump	L_cont_26180
L_else_26182 : 
	addi	r8 r0 2
	bne	r6 r8 L_else_26204
	ldi	r6 r7 4
	fldi	f3 r6 0
	fmul	f3 f3 f2
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	ldi	r7 r7 6
	fbgt	f0 f2 L_else_26207
	addi	r6 r0 0
	jump	L_cont_26205
L_else_26207 : 
	addi	r6 r0 1
L_cont_26205 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_26180
L_else_26204 : 
	fmul	f6 f2 f2
	ldi	r6 r7 4
	fldi	f3 r6 0
	fmul	f7 f6 f3
	fmul	f6 f4 f4
	ldi	r6 r7 4
	fldi	f3 r6 1
	fmul	f3 f6 f3
	fadd	f6 f7 f3
	fmul	f7 f5 f5
	ldi	r6 r7 4
	fldi	f3 r6 2
	fmul	f3 f7 f3
	fadd	f3 f6 f3
	ldi	r6 r7 3
	bne	r6 r0 L_else_26210
	fadd	f2 f0 f3
	jump	L_cont_26208
L_else_26210 : 
	fmul	f7 f4 f5
	ldi	r6 r7 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f3 f6
	fmul	f5 f5 f2
	ldi	r6 r7 9
	fldi	f3 r6 1
	fmul	f3 f5 f3
	fadd	f5 f6 f3
	fmul	f3 f2 f4
	ldi	r6 r7 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f5 f2
L_cont_26208 : 
	ldi	r8 r7 1
	addi	r6 r0 3
	bne	r8 r6 L_else_26213
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26211
L_else_26213 : 
L_cont_26211 : 
	ldi	r6 r7 6
	fbgt	f0 f2 L_else_26216
	addi	r7 r0 0
	jump	L_cont_26214
L_else_26216 : 
	addi	r7 r0 1
L_cont_26214 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
L_cont_26180 : 
	bne	r6 r0 L_else_26184
	addi	r6 r0 3
	add	r7 r0 r12
	fadd	f2 f0 f13
	fadd	f3 f0 f12
	fadd	f4 f0 f11
	call	L_check_all_inside_2173
	jump	L_cont_26161
L_else_26184 : 
	addi	r6 r0 0
	jump	L_cont_26161
L_else_26177 : 
	addi	r6 r0 0
	jump	L_cont_26161
L_else_26170 : 
	addi	r6 r0 0
L_cont_26161 : 
	bne	r6 r0 L_else_26165
	jump	L_cont_26156
L_else_26165 : 
	fsti	f14 r0 1082
	fsti	f13 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r14 r0 1045
	sti	r15 r0 1074
L_cont_26156 : 
	addi	r11 r11 1
	jump	L_solve_each_element_fast_2202
L_solve_one_or_network_fast_2206 : 
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_26342
	return
L_else_26342 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_26344
	return
L_else_26344 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_26346
	return
L_else_26346 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_26348
	return
L_else_26348 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_26350
	return
L_else_26350 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_26352
	return
L_else_26352 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_26354
	return
L_else_26354 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else_26356
	return
L_else_26356 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast_2202
	addi	r16 r16 1
	jump	L_solve_one_or_network_fast_2206
L_trace_or_matrix_fast_2210 : 
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_26359
	return
L_else_26359 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26362
	ldi	r6 r17 1
	bne	r6 r5 L_else_26459
	jump	L_cont_26360
L_else_26459 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_26461
	jump	L_cont_26360
L_else_26461 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_26463
	jump	L_cont_26360
L_else_26463 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_26465
	jump	L_cont_26360
L_else_26465 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 5
	bne	r6 r5 L_else_26467
	jump	L_cont_26360
L_else_26467 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 6
	bne	r6 r5 L_else_26469
	jump	L_cont_26360
L_else_26469 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 7
	bne	r6 r5 L_else_26471
	jump	L_cont_26360
L_else_26471 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_26360
L_else_26362 : 
	ldi	r10 r7 1970
	ldi	r9 r10 10
	fldi	f7 r9 0
	fldi	f6 r9 1
	fldi	f8 r9 2
	ldi	r6 r21 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_26474
	ldi	r7 r21 0
	fldi	f2 r8 0
	fsub	f3 f2 f7
	fldi	f2 r8 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26495
	jump	L_cont_26493
L_else_26495 : 
	fsub	f2 f0 f2
L_cont_26493 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26498
	addi	r6 r0 0
	jump	L_cont_26496
L_else_26498 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26535
	jump	L_cont_26533
L_else_26535 : 
	fsub	f2 f0 f2
L_cont_26533 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26537
	addi	r6 r0 0
	jump	L_cont_26496
L_else_26537 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_26540
	addi	r6 r0 1
	jump	L_cont_26538
L_else_26540 : 
	addi	r6 r0 0
L_cont_26538 : 
	sub	r6 r4 r6
L_cont_26496 : 
	bne	r6 r0 L_else_26500
	fldi	f2 r8 2
	fsub	f2 f2 f6
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26503
	jump	L_cont_26501
L_else_26503 : 
	fsub	f2 f0 f2
L_cont_26501 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26506
	addi	r6 r0 0
	jump	L_cont_26504
L_else_26506 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26527
	jump	L_cont_26525
L_else_26527 : 
	fsub	f2 f0 f2
L_cont_26525 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26529
	addi	r6 r0 0
	jump	L_cont_26504
L_else_26529 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_26532
	addi	r6 r0 1
	jump	L_cont_26530
L_else_26532 : 
	addi	r6 r0 0
L_cont_26530 : 
	sub	r6 r4 r6
L_cont_26504 : 
	bne	r6 r0 L_else_26508
	fldi	f2 r8 4
	fsub	f3 f2 f8
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26511
	jump	L_cont_26509
L_else_26511 : 
	fsub	f2 f0 f2
L_cont_26509 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26514
	addi	r6 r0 0
	jump	L_cont_26512
L_else_26514 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26519
	jump	L_cont_26517
L_else_26519 : 
	fsub	f2 f0 f2
L_cont_26517 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26521
	addi	r6 r0 0
	jump	L_cont_26512
L_else_26521 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_26524
	addi	r6 r0 1
	jump	L_cont_26522
L_else_26524 : 
	addi	r6 r0 0
L_cont_26522 : 
	sub	r6 r4 r6
L_cont_26512 : 
	bne	r6 r0 L_else_26516
	addi	r6 r0 0
	jump	L_cont_26472
L_else_26516 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26472
L_else_26508 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26472
L_else_26500 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26472
L_else_26474 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26542
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_26544
	addi	r6 r0 0
	jump	L_cont_26472
L_else_26544 : 
	fldi	f2 r8 0
	fldi	f3 r9 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_26472
L_else_26542 : 
	fldi	f5 r8 0
	fbne	f5 f0 L_else_26546
	addi	r6 r0 0
	jump	L_cont_26472
L_else_26546 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f8
	fadd	f4 f3 f2
	fldi	f3 r9 3
	fmul	f2 f4 f4
	fmul	f3 f5 f3
	fsub	f2 f2 f3
	fbgt	f2 f0 L_else_26548
	addi	r6 r0 0
	jump	L_cont_26472
L_else_26548 : 
	ldi	r6 r10 6
	bne	r6 r0 L_else_26551
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26549
L_else_26551 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26549 : 
	addi	r6 r0 1
L_cont_26472 : 
	bne	r6 r0 L_else_26476
	jump	L_cont_26360
L_else_26476 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_26478
	jump	L_cont_26360
L_else_26478 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_26480
	jump	L_cont_26360
L_else_26480 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_26482
	jump	L_cont_26360
L_else_26482 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_26484
	jump	L_cont_26360
L_else_26484 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_26486
	jump	L_cont_26360
L_else_26486 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 5
	bne	r6 r5 L_else_26488
	jump	L_cont_26360
L_else_26488 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 6
	bne	r6 r5 L_else_26490
	jump	L_cont_26360
L_else_26490 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 7
	bne	r6 r5 L_else_26492
	jump	L_cont_26360
L_else_26492 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_fast_2206
L_cont_26360 : 
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_26364
	return
L_else_26364 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26367
	ldi	r6 r17 1
	bne	r6 r5 L_else_26369
	jump	L_cont_26365
L_else_26369 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_26371
	jump	L_cont_26365
L_else_26371 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_26373
	jump	L_cont_26365
L_else_26373 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_26375
	jump	L_cont_26365
L_else_26375 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 5
	bne	r6 r5 L_else_26377
	jump	L_cont_26365
L_else_26377 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 6
	bne	r6 r5 L_else_26379
	jump	L_cont_26365
L_else_26379 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_26365
L_else_26367 : 
	ldi	r9 r7 1970
	ldi	r10 r9 10
	fldi	f8 r10 0
	fldi	f6 r10 1
	fldi	f7 r10 2
	ldi	r6 r21 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else_26382
	ldi	r7 r21 0
	fldi	f2 r8 0
	fsub	f2 f2 f8
	fldi	f3 r8 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26401
	jump	L_cont_26399
L_else_26401 : 
	fsub	f2 f0 f2
L_cont_26399 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26404
	addi	r6 r0 0
	jump	L_cont_26402
L_else_26404 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26441
	jump	L_cont_26439
L_else_26441 : 
	fsub	f2 f0 f2
L_cont_26439 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26443
	addi	r6 r0 0
	jump	L_cont_26402
L_else_26443 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_26446
	addi	r6 r0 1
	jump	L_cont_26444
L_else_26446 : 
	addi	r6 r0 0
L_cont_26444 : 
	sub	r6 r4 r6
L_cont_26402 : 
	bne	r6 r0 L_else_26406
	fldi	f2 r8 2
	fsub	f2 f2 f6
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26409
	jump	L_cont_26407
L_else_26409 : 
	fsub	f2 f0 f2
L_cont_26407 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26412
	addi	r6 r0 0
	jump	L_cont_26410
L_else_26412 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26433
	jump	L_cont_26431
L_else_26433 : 
	fsub	f2 f0 f2
L_cont_26431 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26435
	addi	r6 r0 0
	jump	L_cont_26410
L_else_26435 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_26438
	addi	r6 r0 1
	jump	L_cont_26436
L_else_26438 : 
	addi	r6 r0 0
L_cont_26436 : 
	sub	r6 r4 r6
L_cont_26410 : 
	bne	r6 r0 L_else_26414
	fldi	f2 r8 4
	fsub	f3 f2 f7
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_26417
	jump	L_cont_26415
L_else_26417 : 
	fsub	f2 f0 f2
L_cont_26415 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26420
	addi	r6 r0 0
	jump	L_cont_26418
L_else_26420 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26425
	jump	L_cont_26423
L_else_26425 : 
	fsub	f2 f0 f2
L_cont_26423 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26427
	addi	r6 r0 0
	jump	L_cont_26418
L_else_26427 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_26430
	addi	r6 r0 1
	jump	L_cont_26428
L_else_26430 : 
	addi	r6 r0 0
L_cont_26428 : 
	sub	r6 r4 r6
L_cont_26418 : 
	bne	r6 r0 L_else_26422
	addi	r6 r0 0
	jump	L_cont_26380
L_else_26422 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26380
L_else_26414 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26380
L_else_26406 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26380
L_else_26382 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26448
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_26450
	addi	r6 r0 0
	jump	L_cont_26380
L_else_26450 : 
	fldi	f3 r8 0
	fldi	f2 r10 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_26380
L_else_26448 : 
	fldi	f5 r8 0
	fbne	f5 f0 L_else_26452
	addi	r6 r0 0
	jump	L_cont_26380
L_else_26452 : 
	fldi	f2 r8 1
	fmul	f3 f2 f8
	fldi	f2 r8 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r10 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_26454
	addi	r6 r0 0
	jump	L_cont_26380
L_else_26454 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_26457
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26455
L_else_26457 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26455 : 
	addi	r6 r0 1
L_cont_26380 : 
	bne	r6 r0 L_else_26384
	jump	L_cont_26365
L_else_26384 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_26386
	jump	L_cont_26365
L_else_26386 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_26388
	jump	L_cont_26365
L_else_26388 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_26390
	jump	L_cont_26365
L_else_26390 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_26392
	jump	L_cont_26365
L_else_26392 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_26394
	jump	L_cont_26365
L_else_26394 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 5
	bne	r6 r5 L_else_26396
	jump	L_cont_26365
L_else_26396 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 6
	bne	r6 r5 L_else_26398
	jump	L_cont_26365
L_else_26398 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast_2202
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_fast_2206
L_cont_26365 : 
	addi	r19 r19 1
	jump	L_trace_or_matrix_fast_2210
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
	bne	r9 r4 L_else_26554
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
	fbgt	f5 f6 L_else_26557
	fbgt	f2 f3 L_else_26559
	fldi	f2 r0 38
	jump	L_cont_26555
L_else_26559 : 
	fldi	f2 r0 29
	jump	L_cont_26555
L_else_26557 : 
	fbgt	f2 f3 L_else_26561
	fldi	f2 r0 29
	jump	L_cont_26555
L_else_26561 : 
	fldi	f2 r0 38
L_cont_26555 : 
	fsti	f2 r0 1050
	return
L_else_26554 : 
	addi	r8 r0 2
	bne	r9 r8 L_else_26563
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
L_else_26563 : 
	addi	r8 r0 3
	bne	r9 r8 L_else_26565
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
L_else_26565 : 
	addi	r8 r0 4
	bne	r9 r8 L_else_26567
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
	fbgt	f0 f3 L_else_26570
	fadd	f2 f0 f3
	jump	L_cont_26568
L_else_26570 : 
	fsub	f2 f0 f3
L_cont_26568 : 
	fldi	f4 r0 41
	fbgt	f4 f2 L_else_26573
	fdiv	f2 f5 f3
	fbgt	f0 f2 L_else_26588
	jump	L_cont_26586
L_else_26588 : 
	fsub	f2 f0 f2
L_cont_26586 : 
	call	L_atan_1882
	fldi	f3 r0 42
	fmul	f3 f2 f3
	fldi	f2 r0 40
	fdiv	f3 f3 f2
	jump	L_cont_26571
L_else_26573 : 
	fldi	f3 r0 43
L_cont_26571 : 
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
	fbgt	f0 f15 L_else_26576
	fadd	f2 f0 f15
	jump	L_cont_26574
L_else_26576 : 
	fsub	f2 f0 f15
L_cont_26574 : 
	fldi	f3 r0 41
	fbgt	f3 f2 L_else_26579
	fdiv	f2 f4 f15
	fbgt	f0 f2 L_else_26585
	jump	L_cont_26583
L_else_26585 : 
	fsub	f2 f0 f2
L_cont_26583 : 
	call	L_atan_1882
	fldi	f3 r0 42
	fmul	f2 f2 f3
	fldi	f3 r0 40
	fdiv	f2 f2 f3
	jump	L_cont_26577
L_else_26579 : 
	fldi	f2 r0 43
L_cont_26577 : 
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
	fbgt	f0 f2 L_else_26582
	jump	L_cont_26580
L_else_26582 : 
	fldi	f2 r0 29
L_cont_26580 : 
	fldi	f3 r0 38
	fmul	f2 f3 f2
	fldi	f3 r0 45
	fdiv	f2 f2 f3
	fsti	f2 r0 1051
	return
L_else_26567 : 
	return
L_trace_reflections_2232 : 
	bgt	r0 r22 L_else_26591
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
	fbgt	f3 f2 L_else_26594
	addi	r6 r0 0
	jump	L_cont_26592
L_else_26594 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_26742
	addi	r6 r0 0
	jump	L_cont_26592
L_else_26742 : 
	addi	r6 r0 1
L_cont_26592 : 
	bne	r6 r0 L_else_26597
	jump	L_cont_26595
L_else_26597 : 
	ldi	r7 r0 1045
	addi	r6 r0 4
	mul	r7 r7 r6
	ldi	r6 r0 1074
	add	r7 r7 r6
	ldi	r6 r25 0
	bne	r7 r6 L_else_26599
	ldi	r17 r0 1183
	ldi	r16 r17 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_26602
	addi	r6 r0 0
	jump	L_cont_26600
L_else_26602 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26612
	addi	r6 r0 1
	jump	L_cont_26610
L_else_26612 : 
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
	bne	r7 r4 L_else_26644
	ldi	r7 r10 0
	fldi	f2 r8 0
	fsub	f2 f2 f7
	fldi	f3 r8 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26678
	jump	L_cont_26676
L_else_26678 : 
	fsub	f2 f0 f2
L_cont_26676 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26681
	addi	r6 r0 0
	jump	L_cont_26679
L_else_26681 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26718
	jump	L_cont_26716
L_else_26718 : 
	fsub	f2 f0 f2
L_cont_26716 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26720
	addi	r6 r0 0
	jump	L_cont_26679
L_else_26720 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_26723
	addi	r6 r0 1
	jump	L_cont_26721
L_else_26723 : 
	addi	r6 r0 0
L_cont_26721 : 
	sub	r6 r4 r6
L_cont_26679 : 
	bne	r6 r0 L_else_26683
	fldi	f2 r8 2
	fsub	f3 f2 f6
	fldi	f2 r8 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26686
	jump	L_cont_26684
L_else_26686 : 
	fsub	f2 f0 f2
L_cont_26684 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26689
	addi	r6 r0 0
	jump	L_cont_26687
L_else_26689 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26710
	jump	L_cont_26708
L_else_26710 : 
	fsub	f2 f0 f2
L_cont_26708 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26712
	addi	r6 r0 0
	jump	L_cont_26687
L_else_26712 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else_26715
	addi	r6 r0 1
	jump	L_cont_26713
L_else_26715 : 
	addi	r6 r0 0
L_cont_26713 : 
	sub	r6 r4 r6
L_cont_26687 : 
	bne	r6 r0 L_else_26691
	fldi	f2 r8 4
	fsub	f2 f2 f9
	fldi	f3 r8 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26694
	jump	L_cont_26692
L_else_26694 : 
	fsub	f2 f0 f2
L_cont_26692 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26697
	addi	r6 r0 0
	jump	L_cont_26695
L_else_26697 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_26702
	jump	L_cont_26700
L_else_26702 : 
	fsub	f2 f0 f2
L_cont_26700 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26704
	addi	r6 r0 0
	jump	L_cont_26695
L_else_26704 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else_26707
	addi	r6 r0 1
	jump	L_cont_26705
L_else_26707 : 
	addi	r6 r0 0
L_cont_26705 : 
	sub	r6 r4 r6
L_cont_26695 : 
	bne	r6 r0 L_else_26699
	addi	r6 r0 0
	jump	L_cont_26642
L_else_26699 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26642
L_else_26691 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26642
L_else_26683 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26642
L_else_26644 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26725
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_26727
	addi	r6 r0 0
	jump	L_cont_26642
L_else_26727 : 
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
	jump	L_cont_26642
L_else_26725 : 
	fldi	f8 r8 0
	fbne	f8 f0 L_else_26729
	addi	r6 r0 0
	jump	L_cont_26642
L_else_26729 : 
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
	bne	r6 r0 L_else_26732
	jump	L_cont_26730
L_else_26732 : 
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
L_cont_26730 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else_26735
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26733
L_else_26735 : 
L_cont_26733 : 
	fmul	f3 f5 f5
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_26737
	addi	r6 r0 0
	jump	L_cont_26642
L_else_26737 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_26740
	fsqrt	f2 f2
	fsub	f3 f5 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26738
L_else_26740 : 
	fsqrt	f2 f2
	fadd	f3 f5 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26738 : 
	addi	r6 r0 1
L_cont_26642 : 
	bne	r6 r0 L_else_26646
	addi	r6 r0 0
	jump	L_cont_26610
L_else_26646 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_26648
	addi	r6 r0 0
	jump	L_cont_26610
L_else_26648 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_26651
	addi	r6 r0 0
	jump	L_cont_26649
L_else_26651 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26655
	ldi	r6 r16 2
	bne	r6 r5 L_else_26657
	addi	r6 r0 0
	jump	L_cont_26649
L_else_26657 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26659
	ldi	r6 r16 3
	bne	r6 r5 L_else_26661
	addi	r6 r0 0
	jump	L_cont_26649
L_else_26661 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26663
	ldi	r6 r16 4
	bne	r6 r5 L_else_26665
	addi	r6 r0 0
	jump	L_cont_26649
L_else_26665 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26667
	ldi	r6 r16 5
	bne	r6 r5 L_else_26669
	addi	r6 r0 0
	jump	L_cont_26649
L_else_26669 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26671
	ldi	r6 r16 6
	bne	r6 r5 L_else_26673
	addi	r6 r0 0
	jump	L_cont_26649
L_else_26673 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26675
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26649
L_else_26675 : 
	addi	r6 r0 1
	jump	L_cont_26649
L_else_26671 : 
	addi	r6 r0 1
	jump	L_cont_26649
L_else_26667 : 
	addi	r6 r0 1
	jump	L_cont_26649
L_else_26663 : 
	addi	r6 r0 1
	jump	L_cont_26649
L_else_26659 : 
	addi	r6 r0 1
	jump	L_cont_26649
L_else_26655 : 
	addi	r6 r0 1
L_cont_26649 : 
	bne	r6 r0 L_else_26653
	addi	r6 r0 0
	jump	L_cont_26610
L_else_26653 : 
	addi	r6 r0 1
L_cont_26610 : 
	bne	r6 r0 L_else_26614
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26600
L_else_26614 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_26617
	addi	r6 r0 0
	jump	L_cont_26615
L_else_26617 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26621
	ldi	r6 r16 2
	bne	r6 r5 L_else_26623
	addi	r6 r0 0
	jump	L_cont_26615
L_else_26623 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26625
	ldi	r6 r16 3
	bne	r6 r5 L_else_26627
	addi	r6 r0 0
	jump	L_cont_26615
L_else_26627 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26629
	ldi	r6 r16 4
	bne	r6 r5 L_else_26631
	addi	r6 r0 0
	jump	L_cont_26615
L_else_26631 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26633
	ldi	r6 r16 5
	bne	r6 r5 L_else_26635
	addi	r6 r0 0
	jump	L_cont_26615
L_else_26635 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26637
	ldi	r6 r16 6
	bne	r6 r5 L_else_26639
	addi	r6 r0 0
	jump	L_cont_26615
L_else_26639 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26641
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26615
L_else_26641 : 
	addi	r6 r0 1
	jump	L_cont_26615
L_else_26637 : 
	addi	r6 r0 1
	jump	L_cont_26615
L_else_26633 : 
	addi	r6 r0 1
	jump	L_cont_26615
L_else_26629 : 
	addi	r6 r0 1
	jump	L_cont_26615
L_else_26625 : 
	addi	r6 r0 1
	jump	L_cont_26615
L_else_26621 : 
	addi	r6 r0 1
L_cont_26615 : 
	bne	r6 r0 L_else_26619
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26600
L_else_26619 : 
	addi	r6 r0 1
L_cont_26600 : 
	bne	r6 r0 L_else_26604
	ldi	r6 r24 0
	fldi	f3 r0 1046
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fldi	f2 r0 1047
	fldi	f3 r6 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r0 1048
	fldi	f3 r6 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fldi	f5 r25 2
	fmul	f2 f5 f15
	fmul	f4 f2 f3
	ldi	r6 r24 0
	fldi	f2 r23 0
	fldi	f3 r6 0
	fmul	f3 f2 f3
	fldi	f6 r23 1
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fldi	f6 r23 2
	fldi	f2 r6 2
	fmul	f2 f6 f2
	fadd	f2 f3 f2
	fmul	f5 f5 f2
	fbgt	f4 f0 L_else_26607
	jump	L_cont_26605
L_else_26607 : 
	fldi	f3 r0 1055
	fldi	f2 r0 1049
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f3 r0 1056
	fldi	f2 r0 1050
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f2 r0 1051
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
L_cont_26605 : 
	fbgt	f5 f0 L_else_26609
	jump	L_cont_26595
L_else_26609 : 
	fmul	f2 f5 f5
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
	jump	L_cont_26595
L_else_26604 : 
	jump	L_cont_26595
L_else_26599 : 
L_cont_26595 : 
	addi	r22 r22 -1
	jump	L_trace_reflections_2232
L_else_26591 : 
	return
L_trace_ray_2237 : 
	addi	r6 r0 4
	bgt	r26 r6 L_else_26745
	ldi	r29 r28 2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r19 r0 0
	ldi	r20 r0 1183
	add	r21 r0 r27
	call	L_trace_or_matrix_2196
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_26748
	addi	r6 r0 0
	jump	L_cont_26746
L_else_26748 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_26926
	addi	r6 r0 0
	jump	L_cont_26746
L_else_26926 : 
	addi	r6 r0 1
L_cont_26746 : 
	bne	r6 r0 L_else_26750
	addi	r6 r0 -1
	add	r1 r29 r26
	sti	r6 r1 0
	bne	r26 r0 L_else_26752
	return
L_else_26752 : 
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
	fbgt	f3 f0 L_else_26754
	return
L_else_26754 : 
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
L_else_26750 : 
	ldi	r10 r0 1045
	ldi	r31 r10 1970
	ldi	r30 r31 2
	ldi	r6 r31 7
	fldi	f2 r6 0
	fmul	f19 f2 f17
	ldi	r7 r31 1
	bne	r7 r4 L_else_26757
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
	fbne	f2 f0 L_else_26912
	fldi	f2 r0 29
	jump	L_cont_26910
L_else_26912 : 
	fbgt	f2 f0 L_else_26914
	fldi	f2 r0 31
	jump	L_cont_26910
L_else_26914 : 
	fldi	f2 r0 12
L_cont_26910 : 
	fsub	f2 f0 f2
	add	r1 r7 r8
	fsti	f2 r1 0
	jump	L_cont_26755
L_else_26757 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26916
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
	jump	L_cont_26755
L_else_26916 : 
	fldi	f3 r0 1042
	ldi	r6 r31 5
	fldi	f2 r6 0
	fsub	f9 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r31 5
	fldi	f2 r6 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r31 5
	fldi	f2 r6 2
	fsub	f7 f3 f2
	ldi	r6 r31 4
	fldi	f2 r6 0
	fmul	f5 f9 f2
	ldi	r6 r31 4
	fldi	f2 r6 1
	fmul	f6 f8 f2
	ldi	r6 r31 4
	fldi	f2 r6 2
	fmul	f4 f7 f2
	ldi	r6 r31 3
	bne	r6 r0 L_else_26919
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_26917
L_else_26919 : 
	ldi	r6 r31 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r31 9
	fldi	f2 r6 1
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f5 f2
	fsti	f2 r0 1046
	ldi	r6 r31 9
	fldi	f2 r6 2
	fmul	f3 f9 f2
	ldi	r6 r31 9
	fldi	f2 r6 0
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r6 r31 9
	fldi	f2 r6 1
	fmul	f3 f9 f2
	ldi	r6 r31 9
	fldi	f2 r6 0
	fmul	f2 f8 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_26917 : 
	ldi	r6 r31 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_26922
	fldi	f3 r0 12
	jump	L_cont_26920
L_else_26922 : 
	bne	r6 r0 L_else_26924
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_26920
L_else_26924 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_26920 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont_26755 : 
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
	fldi	f2 r6 0
	fldi	f3 r0 11
	fbgt	f3 f2 L_else_26760
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
	jump	L_cont_26758
L_else_26760 : 
	addi	r6 r0 0
	add	r1 r7 r26
	sti	r6 r1 0
L_cont_26758 : 
	fldi	f5 r0 49
	fldi	f3 r27 0
	fldi	f2 r0 1046
	fmul	f4 f3 f2
	fldi	f3 r27 1
	fldi	f2 r0 1047
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r27 2
	fldi	f2 r0 1048
	fmul	f2 f3 f2
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
	ldi	r6 r31 7
	fldi	f2 r6 1
	fmul	f16 f17 f2
	ldi	r17 r0 1183
	ldi	r16 r17 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_26763
	addi	r6 r0 0
	jump	L_cont_26761
L_else_26763 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26781
	addi	r6 r0 1
	jump	L_cont_26779
L_else_26781 : 
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
	bne	r7 r4 L_else_26813
	ldi	r7 r10 0
	fldi	f2 r9 0
	fsub	f2 f2 f7
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_26847
	jump	L_cont_26845
L_else_26847 : 
	fsub	f2 f0 f2
L_cont_26845 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26850
	addi	r6 r0 0
	jump	L_cont_26848
L_else_26850 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26887
	jump	L_cont_26885
L_else_26887 : 
	fsub	f2 f0 f2
L_cont_26885 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26889
	addi	r6 r0 0
	jump	L_cont_26848
L_else_26889 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else_26892
	addi	r6 r0 1
	jump	L_cont_26890
L_else_26892 : 
	addi	r6 r0 0
L_cont_26890 : 
	sub	r6 r4 r6
L_cont_26848 : 
	bne	r6 r0 L_else_26852
	fldi	f2 r9 2
	fsub	f3 f2 f5
	fldi	f2 r9 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26855
	jump	L_cont_26853
L_else_26855 : 
	fsub	f2 f0 f2
L_cont_26853 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26858
	addi	r6 r0 0
	jump	L_cont_26856
L_else_26858 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_26879
	jump	L_cont_26877
L_else_26879 : 
	fsub	f2 f0 f2
L_cont_26877 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_26881
	addi	r6 r0 0
	jump	L_cont_26856
L_else_26881 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else_26884
	addi	r6 r0 1
	jump	L_cont_26882
L_else_26884 : 
	addi	r6 r0 0
L_cont_26882 : 
	sub	r6 r4 r6
L_cont_26856 : 
	bne	r6 r0 L_else_26860
	fldi	f2 r9 4
	fsub	f2 f2 f9
	fldi	f3 r9 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_26863
	jump	L_cont_26861
L_else_26863 : 
	fsub	f2 f0 f2
L_cont_26861 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_26866
	addi	r6 r0 0
	jump	L_cont_26864
L_else_26866 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_26871
	jump	L_cont_26869
L_else_26871 : 
	fsub	f2 f0 f2
L_cont_26869 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_26873
	addi	r6 r0 0
	jump	L_cont_26864
L_else_26873 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else_26876
	addi	r6 r0 1
	jump	L_cont_26874
L_else_26876 : 
	addi	r6 r0 0
L_cont_26874 : 
	sub	r6 r4 r6
L_cont_26864 : 
	bne	r6 r0 L_else_26868
	addi	r6 r0 0
	jump	L_cont_26811
L_else_26868 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26811
L_else_26860 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26811
L_else_26852 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26811
L_else_26813 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_26894
	fldi	f2 r9 0
	fbgt	f0 f2 L_else_26896
	addi	r6 r0 0
	jump	L_cont_26811
L_else_26896 : 
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
	jump	L_cont_26811
L_else_26894 : 
	fldi	f6 r9 0
	fbne	f6 f0 L_else_26898
	addi	r6 r0 0
	jump	L_cont_26811
L_else_26898 : 
	fldi	f2 r9 1
	fmul	f3 f2 f7
	fldi	f2 r9 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r9 3
	fmul	f2 f2 f9
	fadd	f8 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_26901
	jump	L_cont_26899
L_else_26901 : 
	fmul	f4 f5 f9
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f7
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f5
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_26899 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else_26904
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_26902
L_else_26904 : 
L_cont_26902 : 
	fmul	f3 f8 f8
	fmul	f2 f6 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_26906
	addi	r6 r0 0
	jump	L_cont_26811
L_else_26906 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else_26909
	fsqrt	f2 f2
	fsub	f3 f8 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_26907
L_else_26909 : 
	fsqrt	f2 f2
	fadd	f3 f8 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_26907 : 
	addi	r6 r0 1
L_cont_26811 : 
	bne	r6 r0 L_else_26815
	addi	r6 r0 0
	jump	L_cont_26779
L_else_26815 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_26817
	addi	r6 r0 0
	jump	L_cont_26779
L_else_26817 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_26820
	addi	r6 r0 0
	jump	L_cont_26818
L_else_26820 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26824
	ldi	r6 r16 2
	bne	r6 r5 L_else_26826
	addi	r6 r0 0
	jump	L_cont_26818
L_else_26826 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26828
	ldi	r6 r16 3
	bne	r6 r5 L_else_26830
	addi	r6 r0 0
	jump	L_cont_26818
L_else_26830 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26832
	ldi	r6 r16 4
	bne	r6 r5 L_else_26834
	addi	r6 r0 0
	jump	L_cont_26818
L_else_26834 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26836
	ldi	r6 r16 5
	bne	r6 r5 L_else_26838
	addi	r6 r0 0
	jump	L_cont_26818
L_else_26838 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26840
	ldi	r6 r16 6
	bne	r6 r5 L_else_26842
	addi	r6 r0 0
	jump	L_cont_26818
L_else_26842 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26844
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26818
L_else_26844 : 
	addi	r6 r0 1
	jump	L_cont_26818
L_else_26840 : 
	addi	r6 r0 1
	jump	L_cont_26818
L_else_26836 : 
	addi	r6 r0 1
	jump	L_cont_26818
L_else_26832 : 
	addi	r6 r0 1
	jump	L_cont_26818
L_else_26828 : 
	addi	r6 r0 1
	jump	L_cont_26818
L_else_26824 : 
	addi	r6 r0 1
L_cont_26818 : 
	bne	r6 r0 L_else_26822
	addi	r6 r0 0
	jump	L_cont_26779
L_else_26822 : 
	addi	r6 r0 1
L_cont_26779 : 
	bne	r6 r0 L_else_26783
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26761
L_else_26783 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_26786
	addi	r6 r0 0
	jump	L_cont_26784
L_else_26786 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26790
	ldi	r6 r16 2
	bne	r6 r5 L_else_26792
	addi	r6 r0 0
	jump	L_cont_26784
L_else_26792 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26794
	ldi	r6 r16 3
	bne	r6 r5 L_else_26796
	addi	r6 r0 0
	jump	L_cont_26784
L_else_26796 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26798
	ldi	r6 r16 4
	bne	r6 r5 L_else_26800
	addi	r6 r0 0
	jump	L_cont_26784
L_else_26800 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26802
	ldi	r6 r16 5
	bne	r6 r5 L_else_26804
	addi	r6 r0 0
	jump	L_cont_26784
L_else_26804 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26806
	ldi	r6 r16 6
	bne	r6 r5 L_else_26808
	addi	r6 r0 0
	jump	L_cont_26784
L_else_26808 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26810
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26784
L_else_26810 : 
	addi	r6 r0 1
	jump	L_cont_26784
L_else_26806 : 
	addi	r6 r0 1
	jump	L_cont_26784
L_else_26802 : 
	addi	r6 r0 1
	jump	L_cont_26784
L_else_26798 : 
	addi	r6 r0 1
	jump	L_cont_26784
L_else_26794 : 
	addi	r6 r0 1
	jump	L_cont_26784
L_else_26790 : 
	addi	r6 r0 1
L_cont_26784 : 
	bne	r6 r0 L_else_26788
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26761
L_else_26788 : 
	addi	r6 r0 1
L_cont_26761 : 
	bne	r6 r0 L_else_26766
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
	fmul	f5 f2 f19
	fldi	f3 r27 0
	fldi	f2 r0 1039
	fmul	f4 f3 f2
	fldi	f2 r27 1
	fldi	f3 r0 1040
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r27 2
	fldi	f3 r0 1041
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsub	f4 f0 f2
	fbgt	f5 f0 L_else_26776
	jump	L_cont_26774
L_else_26776 : 
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
L_cont_26774 : 
	fbgt	f4 f0 L_else_26778
	jump	L_cont_26764
L_else_26778 : 
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
	jump	L_cont_26764
L_else_26766 : 
L_cont_26764 : 
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
	fbgt	f17 f2 L_else_26768
	return
L_else_26768 : 
	addi	r6 r0 4
	bgt	r6 r26 L_else_26771
	jump	L_cont_26769
L_else_26771 : 
	addi	r7 r26 1
	addi	r6 r0 -1
	add	r1 r29 r7
	sti	r6 r1 0
L_cont_26769 : 
	addi	r6 r0 2
	bne	r30 r6 L_else_26773
	fldi	f3 r0 12
	ldi	r6 r31 7
	fldi	f2 r6 0
	fsub	f2 f3 f2
	fmul	f17 f17 f2
	addi	r26 r26 1
	fldi	f2 r0 1082
	fadd	f18 f18 f2
	jump	L_trace_ray_2237
L_else_26773 : 
	return
L_else_26745 : 
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
	fbgt	f3 f2 L_else_26930
	addi	r6 r0 0
	jump	L_cont_26928
L_else_26930 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_27091
	addi	r6 r0 0
	jump	L_cont_26928
L_else_27091 : 
	addi	r6 r0 1
L_cont_26928 : 
	bne	r6 r0 L_else_26932
	return
L_else_26932 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r9 r22 0
	ldi	r7 r19 1
	bne	r7 r4 L_else_26935
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
	fbne	f2 f0 L_else_27077
	fldi	f2 r0 29
	jump	L_cont_27075
L_else_27077 : 
	fbgt	f2 f0 L_else_27079
	fldi	f2 r0 31
	jump	L_cont_27075
L_else_27079 : 
	fldi	f2 r0 12
L_cont_27075 : 
	fsub	f2 f0 f2
	add	r1 r8 r7
	fsti	f2 r1 0
	jump	L_cont_26933
L_else_26935 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27081
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
	jump	L_cont_26933
L_else_27081 : 
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
	bne	r6 r0 L_else_27084
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_27082
L_else_27084 : 
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f5 f2
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
	fadd	f2 f6 f2
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
L_cont_27082 : 
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
	fbne	f3 f0 L_else_27087
	fldi	f3 r0 12
	jump	L_cont_27085
L_else_27087 : 
	bne	r6 r0 L_else_27089
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_27085
L_else_27089 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_27085 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont_26933 : 
	addi	r7 r0 1042
	add	r6 r0 r19
	call	L_utexture_2225
	ldi	r17 r0 1183
	ldi	r16 r17 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_26938
	addi	r6 r0 0
	jump	L_cont_26936
L_else_26938 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_26946
	addi	r6 r0 1
	jump	L_cont_26944
L_else_26946 : 
	addi	r10 r0 1905
	ldi	r8 r7 1970
	fldi	f3 r0 1042
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f6 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f8 f3 f2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r9 r1 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_26978
	ldi	r7 r10 0
	fldi	f2 r9 0
	fsub	f2 f2 f6
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_27012
	jump	L_cont_27010
L_else_27012 : 
	fsub	f2 f0 f2
L_cont_27010 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_27015
	addi	r6 r0 0
	jump	L_cont_27013
L_else_27015 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_27052
	jump	L_cont_27050
L_else_27052 : 
	fsub	f2 f0 f2
L_cont_27050 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_27054
	addi	r6 r0 0
	jump	L_cont_27013
L_else_27054 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else_27057
	addi	r6 r0 1
	jump	L_cont_27055
L_else_27057 : 
	addi	r6 r0 0
L_cont_27055 : 
	sub	r6 r4 r6
L_cont_27013 : 
	bne	r6 r0 L_else_27017
	fldi	f2 r9 2
	fsub	f3 f2 f5
	fldi	f2 r9 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_27020
	jump	L_cont_27018
L_else_27020 : 
	fsub	f2 f0 f2
L_cont_27018 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_27023
	addi	r6 r0 0
	jump	L_cont_27021
L_else_27023 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_27044
	jump	L_cont_27042
L_else_27044 : 
	fsub	f2 f0 f2
L_cont_27042 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_27046
	addi	r6 r0 0
	jump	L_cont_27021
L_else_27046 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else_27049
	addi	r6 r0 1
	jump	L_cont_27047
L_else_27049 : 
	addi	r6 r0 0
L_cont_27047 : 
	sub	r6 r4 r6
L_cont_27021 : 
	bne	r6 r0 L_else_27025
	fldi	f2 r9 4
	fsub	f2 f2 f8
	fldi	f3 r9 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_27028
	jump	L_cont_27026
L_else_27028 : 
	fsub	f2 f0 f2
L_cont_27026 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_27031
	addi	r6 r0 0
	jump	L_cont_27029
L_else_27031 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_27036
	jump	L_cont_27034
L_else_27036 : 
	fsub	f2 f0 f2
L_cont_27034 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_27038
	addi	r6 r0 0
	jump	L_cont_27029
L_else_27038 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else_27041
	addi	r6 r0 1
	jump	L_cont_27039
L_else_27041 : 
	addi	r6 r0 0
L_cont_27039 : 
	sub	r6 r4 r6
L_cont_27029 : 
	bne	r6 r0 L_else_27033
	addi	r6 r0 0
	jump	L_cont_26976
L_else_27033 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_26976
L_else_27025 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_26976
L_else_27017 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_26976
L_else_26978 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27059
	fldi	f2 r9 0
	fbgt	f0 f2 L_else_27061
	addi	r6 r0 0
	jump	L_cont_26976
L_else_27061 : 
	fldi	f2 r9 1
	fmul	f3 f2 f6
	fldi	f2 r9 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r9 3
	fmul	f2 f2 f8
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_26976
L_else_27059 : 
	fldi	f7 r9 0
	fbne	f7 f0 L_else_27063
	addi	r6 r0 0
	jump	L_cont_26976
L_else_27063 : 
	fldi	f2 r9 1
	fmul	f3 f2 f6
	fldi	f2 r9 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r9 3
	fmul	f2 f2 f8
	fadd	f9 f3 f2
	fmul	f3 f6 f6
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f8 f8
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_27066
	jump	L_cont_27064
L_else_27066 : 
	fmul	f4 f5 f8
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f8 f6
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f6 f5
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_27064 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else_27069
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_27067
L_else_27069 : 
L_cont_27067 : 
	fmul	f3 f9 f9
	fmul	f2 f7 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_27071
	addi	r6 r0 0
	jump	L_cont_26976
L_else_27071 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else_27074
	fsqrt	f2 f2
	fsub	f3 f9 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_27072
L_else_27074 : 
	fsqrt	f2 f2
	fadd	f3 f9 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_27072 : 
	addi	r6 r0 1
L_cont_26976 : 
	bne	r6 r0 L_else_26980
	addi	r6 r0 0
	jump	L_cont_26944
L_else_26980 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else_26982
	addi	r6 r0 0
	jump	L_cont_26944
L_else_26982 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_26985
	addi	r6 r0 0
	jump	L_cont_26983
L_else_26985 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26989
	ldi	r6 r16 2
	bne	r6 r5 L_else_26991
	addi	r6 r0 0
	jump	L_cont_26983
L_else_26991 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26993
	ldi	r6 r16 3
	bne	r6 r5 L_else_26995
	addi	r6 r0 0
	jump	L_cont_26983
L_else_26995 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26997
	ldi	r6 r16 4
	bne	r6 r5 L_else_26999
	addi	r6 r0 0
	jump	L_cont_26983
L_else_26999 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_27001
	ldi	r6 r16 5
	bne	r6 r5 L_else_27003
	addi	r6 r0 0
	jump	L_cont_26983
L_else_27003 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_27005
	ldi	r6 r16 6
	bne	r6 r5 L_else_27007
	addi	r6 r0 0
	jump	L_cont_26983
L_else_27007 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_27009
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26983
L_else_27009 : 
	addi	r6 r0 1
	jump	L_cont_26983
L_else_27005 : 
	addi	r6 r0 1
	jump	L_cont_26983
L_else_27001 : 
	addi	r6 r0 1
	jump	L_cont_26983
L_else_26997 : 
	addi	r6 r0 1
	jump	L_cont_26983
L_else_26993 : 
	addi	r6 r0 1
	jump	L_cont_26983
L_else_26989 : 
	addi	r6 r0 1
L_cont_26983 : 
	bne	r6 r0 L_else_26987
	addi	r6 r0 0
	jump	L_cont_26944
L_else_26987 : 
	addi	r6 r0 1
L_cont_26944 : 
	bne	r6 r0 L_else_26948
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26936
L_else_26948 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else_26951
	addi	r6 r0 0
	jump	L_cont_26949
L_else_26951 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26955
	ldi	r6 r16 2
	bne	r6 r5 L_else_26957
	addi	r6 r0 0
	jump	L_cont_26949
L_else_26957 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26959
	ldi	r6 r16 3
	bne	r6 r5 L_else_26961
	addi	r6 r0 0
	jump	L_cont_26949
L_else_26961 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26963
	ldi	r6 r16 4
	bne	r6 r5 L_else_26965
	addi	r6 r0 0
	jump	L_cont_26949
L_else_26965 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26967
	ldi	r6 r16 5
	bne	r6 r5 L_else_26969
	addi	r6 r0 0
	jump	L_cont_26949
L_else_26969 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26971
	ldi	r6 r16 6
	bne	r6 r5 L_else_26973
	addi	r6 r0 0
	jump	L_cont_26949
L_else_26973 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_26975
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_26949
L_else_26975 : 
	addi	r6 r0 1
	jump	L_cont_26949
L_else_26971 : 
	addi	r6 r0 1
	jump	L_cont_26949
L_else_26967 : 
	addi	r6 r0 1
	jump	L_cont_26949
L_else_26963 : 
	addi	r6 r0 1
	jump	L_cont_26949
L_else_26959 : 
	addi	r6 r0 1
	jump	L_cont_26949
L_else_26955 : 
	addi	r6 r0 1
L_cont_26949 : 
	bne	r6 r0 L_else_26953
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_26936
L_else_26953 : 
	addi	r6 r0 1
L_cont_26936 : 
	bne	r6 r0 L_else_26940
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
	fbgt	f2 f0 L_else_26943
	fldi	f2 r0 29
	jump	L_cont_26941
L_else_26943 : 
L_cont_26941 : 
	fmul	f2 f17 f2
	ldi	r6 r19 7
	fldi	f3 r6 0
	fmul	f4 f2 f3
	fldi	f2 r0 1052
	fldi	f3 r0 1049
	fmul	f3 f4 f3
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r0 1050
	fmul	f3 f4 f3
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r0 1051
	fmul	f3 f4 f3
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	return
L_else_26940 : 
	return
L_iter_trace_diffuse_rays_2246 : 
	bgt	r0 r22 L_else_27094
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
	fbgt	f0 f3 L_else_27097
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	ldi	r20 r0 1183
	ldi	r17 r20 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_27105
	jump	L_cont_27103
L_else_27105 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_27138
	ldi	r6 r17 1
	bne	r6 r5 L_else_27140
	jump	L_cont_27136
L_else_27140 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_27142
	jump	L_cont_27136
L_else_27142 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_27144
	jump	L_cont_27136
L_else_27144 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_27146
	jump	L_cont_27136
L_else_27146 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_27136
L_else_27138 : 
	ldi	r8 r7 1970
	ldi	r10 r8 10
	fldi	f7 r10 0
	fldi	f6 r10 1
	fldi	f8 r10 2
	ldi	r6 r26 1
	add	r1 r6 r7
	ldi	r7 r1 0
	ldi	r9 r8 1
	bne	r9 r4 L_else_27149
	ldi	r9 r26 0
	fldi	f2 r7 0
	fsub	f2 f2 f7
	fldi	f3 r7 1
	fmul	f4 f2 f3
	fldi	f2 r9 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_27164
	jump	L_cont_27162
L_else_27164 : 
	fsub	f2 f0 f2
L_cont_27162 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_27167
	addi	r6 r0 0
	jump	L_cont_27165
L_else_27167 : 
	fldi	f2 r9 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_27204
	jump	L_cont_27202
L_else_27204 : 
	fsub	f2 f0 f2
L_cont_27202 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_27206
	addi	r6 r0 0
	jump	L_cont_27165
L_else_27206 : 
	fldi	f2 r7 1
	fbne	f2 f0 L_else_27209
	addi	r6 r0 1
	jump	L_cont_27207
L_else_27209 : 
	addi	r6 r0 0
L_cont_27207 : 
	sub	r6 r4 r6
L_cont_27165 : 
	bne	r6 r0 L_else_27169
	fldi	f2 r7 2
	fsub	f3 f2 f6
	fldi	f2 r7 3
	fmul	f4 f3 f2
	fldi	f2 r9 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_27172
	jump	L_cont_27170
L_else_27172 : 
	fsub	f2 f0 f2
L_cont_27170 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_27175
	addi	r6 r0 0
	jump	L_cont_27173
L_else_27175 : 
	fldi	f2 r9 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_27196
	jump	L_cont_27194
L_else_27196 : 
	fsub	f2 f0 f2
L_cont_27194 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_27198
	addi	r6 r0 0
	jump	L_cont_27173
L_else_27198 : 
	fldi	f2 r7 3
	fbne	f2 f0 L_else_27201
	addi	r6 r0 1
	jump	L_cont_27199
L_else_27201 : 
	addi	r6 r0 0
L_cont_27199 : 
	sub	r6 r4 r6
L_cont_27173 : 
	bne	r6 r0 L_else_27177
	fldi	f2 r7 4
	fsub	f2 f2 f8
	fldi	f3 r7 5
	fmul	f4 f2 f3
	fldi	f2 r9 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_27180
	jump	L_cont_27178
L_else_27180 : 
	fsub	f2 f0 f2
L_cont_27178 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_27183
	addi	r6 r0 0
	jump	L_cont_27181
L_else_27183 : 
	fldi	f2 r9 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_27188
	jump	L_cont_27186
L_else_27188 : 
	fsub	f2 f0 f2
L_cont_27186 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_27190
	addi	r6 r0 0
	jump	L_cont_27181
L_else_27190 : 
	fldi	f2 r7 5
	fbne	f2 f0 L_else_27193
	addi	r6 r0 1
	jump	L_cont_27191
L_else_27193 : 
	addi	r6 r0 0
L_cont_27191 : 
	sub	r6 r4 r6
L_cont_27181 : 
	bne	r6 r0 L_else_27185
	addi	r6 r0 0
	jump	L_cont_27147
L_else_27185 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_27147
L_else_27177 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont_27147
L_else_27169 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont_27147
L_else_27149 : 
	addi	r6 r0 2
	bne	r9 r6 L_else_27211
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_27213
	addi	r6 r0 0
	jump	L_cont_27147
L_else_27213 : 
	fldi	f3 r7 0
	fldi	f2 r10 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_27147
L_else_27211 : 
	fldi	f5 r7 0
	fbne	f5 f0 L_else_27215
	addi	r6 r0 0
	jump	L_cont_27147
L_else_27215 : 
	fldi	f2 r7 1
	fmul	f3 f2 f7
	fldi	f2 r7 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f8
	fadd	f4 f3 f2
	fldi	f2 r10 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_27217
	addi	r6 r0 0
	jump	L_cont_27147
L_else_27217 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else_27220
	fsqrt	f2 f2
	fsub	f2 f4 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_27218
L_else_27220 : 
	fsqrt	f2 f2
	fadd	f2 f4 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_27218 : 
	addi	r6 r0 1
L_cont_27147 : 
	bne	r6 r0 L_else_27151
	jump	L_cont_27136
L_else_27151 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_27153
	jump	L_cont_27136
L_else_27153 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_27155
	jump	L_cont_27136
L_else_27155 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_27157
	jump	L_cont_27136
L_else_27157 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_27159
	jump	L_cont_27136
L_else_27159 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_27161
	jump	L_cont_27136
L_else_27161 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast_2206
L_cont_27136 : 
	addi	r19 r0 1
	add	r21 r0 r26
	call	L_trace_or_matrix_fast_2210
L_cont_27103 : 
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_27108
	addi	r6 r0 0
	jump	L_cont_27106
L_else_27108 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_27135
	addi	r6 r0 0
	jump	L_cont_27106
L_else_27135 : 
	addi	r6 r0 1
L_cont_27106 : 
	bne	r6 r0 L_else_27110
	jump	L_cont_27095
L_else_27110 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r8 r26 0
	ldi	r7 r19 1
	bne	r7 r4 L_else_27113
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
	fbne	f2 f0 L_else_27121
	fldi	f2 r0 29
	jump	L_cont_27119
L_else_27121 : 
	fbgt	f2 f0 L_else_27123
	fldi	f2 r0 31
	jump	L_cont_27119
L_else_27123 : 
	fldi	f2 r0 12
L_cont_27119 : 
	fsub	f2 f0 f2
	add	r1 r7 r9
	fsti	f2 r1 0
	jump	L_cont_27111
L_else_27113 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27125
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
	jump	L_cont_27111
L_else_27125 : 
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
	bne	r6 r0 L_else_27128
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_27126
L_else_27128 : 
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
L_cont_27126 : 
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
	fbne	f3 f0 L_else_27131
	fldi	f3 r0 12
	jump	L_cont_27129
L_else_27131 : 
	bne	r6 r0 L_else_27133
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_27129
L_else_27133 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_27129 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont_27111 : 
	addi	r7 r0 1042
	add	r6 r0 r19
	call	L_utexture_2225
	addi	r16 r0 0
	ldi	r17 r0 1183
	call	L_shadow_check_one_or_matrix_2185
	bne	r6 r0 L_else_27115
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
	fbgt	f2 f0 L_else_27118
	fldi	f2 r0 29
	jump	L_cont_27116
L_else_27118 : 
L_cont_27116 : 
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
	jump	L_cont_27095
L_else_27115 : 
	jump	L_cont_27095
L_else_27097 : 
	addi	r6 r22 1
	add	r1 r23 r6
	ldi	r26 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	ldi	r20 r0 1183
	ldi	r17 r20 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_27223
	jump	L_cont_27221
L_else_27223 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_27256
	ldi	r6 r17 1
	bne	r6 r5 L_else_27258
	jump	L_cont_27254
L_else_27258 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_27260
	jump	L_cont_27254
L_else_27260 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_27262
	jump	L_cont_27254
L_else_27262 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_27264
	jump	L_cont_27254
L_else_27264 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_27254
L_else_27256 : 
	ldi	r8 r7 1970
	ldi	r10 r8 10
	fldi	f7 r10 0
	fldi	f6 r10 1
	fldi	f4 r10 2
	ldi	r6 r26 1
	add	r1 r6 r7
	ldi	r7 r1 0
	ldi	r9 r8 1
	bne	r9 r4 L_else_27267
	ldi	r9 r26 0
	fldi	f2 r7 0
	fsub	f2 f2 f7
	fldi	f3 r7 1
	fmul	f5 f2 f3
	fldi	f2 r9 1
	fmul	f2 f5 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_27282
	jump	L_cont_27280
L_else_27282 : 
	fsub	f2 f0 f2
L_cont_27280 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_27285
	addi	r6 r0 0
	jump	L_cont_27283
L_else_27285 : 
	fldi	f2 r9 2
	fmul	f2 f5 f2
	fadd	f2 f2 f4
	fbgt	f0 f2 L_else_27322
	jump	L_cont_27320
L_else_27322 : 
	fsub	f2 f0 f2
L_cont_27320 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_27324
	addi	r6 r0 0
	jump	L_cont_27283
L_else_27324 : 
	fldi	f2 r7 1
	fbne	f2 f0 L_else_27327
	addi	r6 r0 1
	jump	L_cont_27325
L_else_27327 : 
	addi	r6 r0 0
L_cont_27325 : 
	sub	r6 r4 r6
L_cont_27283 : 
	bne	r6 r0 L_else_27287
	fldi	f2 r7 2
	fsub	f3 f2 f6
	fldi	f2 r7 3
	fmul	f5 f3 f2
	fldi	f2 r9 0
	fmul	f2 f5 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_27290
	jump	L_cont_27288
L_else_27290 : 
	fsub	f2 f0 f2
L_cont_27288 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_27293
	addi	r6 r0 0
	jump	L_cont_27291
L_else_27293 : 
	fldi	f2 r9 2
	fmul	f2 f5 f2
	fadd	f2 f2 f4
	fbgt	f0 f2 L_else_27314
	jump	L_cont_27312
L_else_27314 : 
	fsub	f2 f0 f2
L_cont_27312 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_27316
	addi	r6 r0 0
	jump	L_cont_27291
L_else_27316 : 
	fldi	f2 r7 3
	fbne	f2 f0 L_else_27319
	addi	r6 r0 1
	jump	L_cont_27317
L_else_27319 : 
	addi	r6 r0 0
L_cont_27317 : 
	sub	r6 r4 r6
L_cont_27291 : 
	bne	r6 r0 L_else_27295
	fldi	f2 r7 4
	fsub	f2 f2 f4
	fldi	f3 r7 5
	fmul	f4 f2 f3
	fldi	f2 r9 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_27298
	jump	L_cont_27296
L_else_27298 : 
	fsub	f2 f0 f2
L_cont_27296 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_27301
	addi	r6 r0 0
	jump	L_cont_27299
L_else_27301 : 
	fldi	f2 r9 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_27306
	jump	L_cont_27304
L_else_27306 : 
	fsub	f2 f0 f2
L_cont_27304 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_27308
	addi	r6 r0 0
	jump	L_cont_27299
L_else_27308 : 
	fldi	f2 r7 5
	fbne	f2 f0 L_else_27311
	addi	r6 r0 1
	jump	L_cont_27309
L_else_27311 : 
	addi	r6 r0 0
L_cont_27309 : 
	sub	r6 r4 r6
L_cont_27299 : 
	bne	r6 r0 L_else_27303
	addi	r6 r0 0
	jump	L_cont_27265
L_else_27303 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont_27265
L_else_27295 : 
	fsti	f5 r0 1073
	addi	r6 r0 2
	jump	L_cont_27265
L_else_27287 : 
	fsti	f5 r0 1073
	addi	r6 r0 1
	jump	L_cont_27265
L_else_27267 : 
	addi	r6 r0 2
	bne	r9 r6 L_else_27329
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_27331
	addi	r6 r0 0
	jump	L_cont_27265
L_else_27331 : 
	fldi	f3 r7 0
	fldi	f2 r10 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_27265
L_else_27329 : 
	fldi	f5 r7 0
	fbne	f5 f0 L_else_27333
	addi	r6 r0 0
	jump	L_cont_27265
L_else_27333 : 
	fldi	f2 r7 1
	fmul	f3 f2 f7
	fldi	f2 r7 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f4
	fadd	f4 f3 f2
	fldi	f2 r10 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_27335
	addi	r6 r0 0
	jump	L_cont_27265
L_else_27335 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else_27338
	fsqrt	f2 f2
	fsub	f2 f4 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_27336
L_else_27338 : 
	fsqrt	f2 f2
	fadd	f2 f4 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_27336 : 
	addi	r6 r0 1
L_cont_27265 : 
	bne	r6 r0 L_else_27269
	jump	L_cont_27254
L_else_27269 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_27271
	jump	L_cont_27254
L_else_27271 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else_27273
	jump	L_cont_27254
L_else_27273 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 2
	bne	r6 r5 L_else_27275
	jump	L_cont_27254
L_else_27275 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 3
	bne	r6 r5 L_else_27277
	jump	L_cont_27254
L_else_27277 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	ldi	r6 r17 4
	bne	r6 r5 L_else_27279
	jump	L_cont_27254
L_else_27279 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast_2206
L_cont_27254 : 
	addi	r19 r0 1
	add	r21 r0 r26
	call	L_trace_or_matrix_fast_2210
L_cont_27221 : 
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else_27226
	addi	r6 r0 0
	jump	L_cont_27224
L_else_27226 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else_27253
	addi	r6 r0 0
	jump	L_cont_27224
L_else_27253 : 
	addi	r6 r0 1
L_cont_27224 : 
	bne	r6 r0 L_else_27228
	jump	L_cont_27095
L_else_27228 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r8 r26 0
	ldi	r7 r19 1
	bne	r7 r4 L_else_27231
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
	fbne	f2 f0 L_else_27239
	fldi	f2 r0 29
	jump	L_cont_27237
L_else_27239 : 
	fbgt	f2 f0 L_else_27241
	fldi	f2 r0 31
	jump	L_cont_27237
L_else_27241 : 
	fldi	f2 r0 12
L_cont_27237 : 
	fsub	f2 f0 f2
	add	r1 r7 r9
	fsti	f2 r1 0
	jump	L_cont_27229
L_else_27231 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27243
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
	jump	L_cont_27229
L_else_27243 : 
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
	bne	r6 r0 L_else_27246
	fsti	f6 r0 1046
	fsti	f5 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_27244
L_else_27246 : 
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f6 f2
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
	fadd	f2 f5 f2
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
L_cont_27244 : 
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
	fbne	f3 f0 L_else_27249
	fldi	f3 r0 12
	jump	L_cont_27247
L_else_27249 : 
	bne	r6 r0 L_else_27251
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_27247
L_else_27251 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont_27247 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont_27229 : 
	addi	r7 r0 1042
	add	r6 r0 r19
	call	L_utexture_2225
	addi	r16 r0 0
	ldi	r17 r0 1183
	call	L_shadow_check_one_or_matrix_2185
	bne	r6 r0 L_else_27233
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
	fbgt	f2 f0 L_else_27236
	fldi	f2 r0 29
	jump	L_cont_27234
L_else_27236 : 
L_cont_27234 : 
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
	jump	L_cont_27095
L_else_27233 : 
L_cont_27095 : 
	addi	r26 r22 -2
	bgt	r0 r26 L_else_27099
	add	r1 r23 r26
	ldi	r22 r1 0
	ldi	r6 r22 0
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
	fbgt	f0 f3 L_else_27102
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27100
L_else_27102 : 
	addi	r6 r26 1
	add	r1 r23 r6
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_27100 : 
	addi	r22 r26 -2
	jump	L_iter_trace_diffuse_rays_2246
L_else_27099 : 
	return
L_else_27094 : 
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
	bne	r31 r0 L_else_27342
	jump	L_cont_27340
L_else_27342 : 
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
	fbgt	f0 f2 L_else_27369
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27367
L_else_27369 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
L_cont_27367 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays_2246
L_cont_27340 : 
	bne	r31 r4 L_else_27345
	jump	L_cont_27343
L_else_27345 : 
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
	fbgt	f0 f2 L_else_27366
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27364
L_else_27366 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
L_cont_27364 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays_2246
L_cont_27343 : 
	addi	r6 r0 2
	bne	r31 r6 L_else_27348
	jump	L_cont_27346
L_else_27348 : 
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
	fbgt	f0 f2 L_else_27363
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27361
L_else_27363 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
L_cont_27361 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays_2246
L_cont_27346 : 
	addi	r6 r0 3
	bne	r31 r6 L_else_27351
	jump	L_cont_27349
L_else_27351 : 
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
	fbgt	f0 f2 L_else_27360
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27358
L_else_27360 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray_2243
L_cont_27358 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays_2246
L_cont_27349 : 
	addi	r6 r0 4
	bne	r31 r6 L_else_27354
	jump	L_cont_27352
L_else_27354 : 
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
	fbgt	f0 f3 L_else_27357
	ldi	r22 r23 118
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27355
L_else_27357 : 
	ldi	r22 r23 119
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_27355 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays_2246
L_cont_27352 : 
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
L_do_without_neighbors_2268 : 
	addi	r7 r0 4
	bgt	r27 r7 L_else_27372
	ldi	r7 r6 2
	add	r1 r7 r27
	ldi	r7 r1 0
	bgt	r0 r7 L_else_27374
	ldi	r7 r6 3
	add	r1 r7 r27
	ldi	r7 r1 0
	bne	r7 r0 L_else_27377
	jump	L_cont_27375
L_else_27377 : 
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
	bne	r31 r0 L_else_27387
	jump	L_cont_27385
L_else_27387 : 
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
L_cont_27385 : 
	bne	r31 r4 L_else_27390
	jump	L_cont_27388
L_else_27390 : 
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
L_cont_27388 : 
	addi	r7 r0 2
	bne	r31 r7 L_else_27393
	jump	L_cont_27391
L_else_27393 : 
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
L_cont_27391 : 
	addi	r7 r0 3
	bne	r31 r7 L_else_27396
	jump	L_cont_27394
L_else_27396 : 
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
L_cont_27394 : 
	addi	r7 r0 4
	bne	r31 r7 L_else_27399
	jump	L_cont_27397
L_else_27399 : 
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
L_cont_27397 : 
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
L_cont_27375 : 
	addi	r7 r27 1
	addi	r8 r0 4
	bgt	r7 r8 L_else_27379
	ldi	r8 r6 2
	add	r1 r8 r7
	ldi	r8 r1 0
	bgt	r0 r8 L_else_27381
	ldi	r8 r6 3
	add	r1 r8 r7
	ldi	r8 r1 0
	bne	r8 r0 L_else_27384
	jump	L_cont_27382
L_else_27384 : 
	sti	r6 r2 0
	sti	r7 r2 1
	add	r27 r0 r7
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
L_cont_27382 : 
	addi	r27 r7 1
	jump	L_do_without_neighbors_2268
L_else_27381 : 
	return
L_else_27379 : 
	return
L_else_27374 : 
	return
L_else_27372 : 
	return
L_try_exploit_neighbors_2284 : 
	add	r1 r9 r6
	ldi	r12 r1 0
	addi	r13 r0 4
	bgt	r11 r13 L_else_27402
	ldi	r13 r12 2
	add	r1 r13 r11
	ldi	r13 r1 0
	bgt	r0 r13 L_else_27404
	ldi	r13 r12 2
	add	r1 r13 r11
	ldi	r15 r1 0
	add	r1 r8 r6
	ldi	r14 r1 0
	ldi	r13 r14 2
	add	r1 r13 r11
	ldi	r13 r1 0
	bne	r13 r15 L_else_27407
	add	r1 r10 r6
	ldi	r13 r1 0
	ldi	r13 r13 2
	add	r1 r13 r11
	ldi	r13 r1 0
	bne	r13 r15 L_else_27439
	addi	r13 r6 -1
	add	r1 r9 r13
	ldi	r13 r1 0
	ldi	r13 r13 2
	add	r1 r13 r11
	ldi	r13 r1 0
	bne	r13 r15 L_else_27441
	addi	r13 r6 1
	add	r1 r9 r13
	ldi	r13 r1 0
	ldi	r13 r13 2
	add	r1 r13 r11
	ldi	r13 r1 0
	bne	r13 r15 L_else_27443
	addi	r13 r0 1
	jump	L_cont_27405
L_else_27443 : 
	addi	r13 r0 0
	jump	L_cont_27405
L_else_27441 : 
	addi	r13 r0 0
	jump	L_cont_27405
L_else_27439 : 
	addi	r13 r0 0
	jump	L_cont_27405
L_else_27407 : 
	addi	r13 r0 0
L_cont_27405 : 
	bne	r13 r0 L_else_27409
	addi	r6 r0 4
	bgt	r11 r6 L_else_27411
	ldi	r6 r12 2
	add	r1 r6 r11
	ldi	r6 r1 0
	bgt	r0 r6 L_else_27413
	ldi	r6 r12 3
	add	r1 r6 r11
	ldi	r6 r1 0
	bne	r6 r0 L_else_27416
	jump	L_cont_27414
L_else_27416 : 
	sti	r12 r2 0
	sti	r11 r2 1
	add	r6 r0 r12
	add	r27 r0 r11
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -2
	ldi	r12 r2 0
	ldi	r11 r2 1
L_cont_27414 : 
	addi	r27 r11 1
	add	r6 r0 r12
	jump	L_do_without_neighbors_2268
L_else_27413 : 
	return
L_else_27411 : 
	return
L_else_27409 : 
	ldi	r13 r12 3
	add	r1 r13 r11
	ldi	r13 r1 0
	bne	r13 r0 L_else_27419
	jump	L_cont_27417
L_else_27419 : 
	ldi	r19 r14 5
	addi	r13 r6 -1
	add	r1 r9 r13
	ldi	r13 r1 0
	ldi	r17 r13 5
	ldi	r18 r12 5
	addi	r13 r6 1
	add	r1 r9 r13
	ldi	r13 r1 0
	ldi	r16 r13 5
	add	r1 r10 r6
	ldi	r13 r1 0
	ldi	r15 r13 5
	add	r1 r19 r11
	ldi	r13 r1 0
	fldi	f2 r13 0
	fsti	f2 r0 1052
	fldi	f2 r13 1
	fsti	f2 r0 1053
	fldi	f2 r13 2
	fsti	f2 r0 1054
	add	r1 r17 r11
	ldi	r13 r1 0
	fldi	f3 r0 1052
	fldi	f2 r13 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r13 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r13 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r18 r11
	ldi	r13 r1 0
	fldi	f3 r0 1052
	fldi	f2 r13 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r13 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r13 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r16 r11
	ldi	r13 r1 0
	fldi	f3 r0 1052
	fldi	f2 r13 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r13 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r13 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r15 r11
	ldi	r13 r1 0
	fldi	f3 r0 1052
	fldi	f2 r13 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r13 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r13 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	ldi	r13 r12 4
	add	r1 r13 r11
	ldi	r13 r1 0
	fldi	f3 r0 1055
	fldi	f4 r13 0
	fldi	f2 r0 1052
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f2 r13 1
	fldi	f3 r0 1053
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f4 r13 2
	fldi	f2 r0 1054
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
L_cont_27417 : 
	addi	r27 r11 1
	addi	r11 r0 4
	bgt	r27 r11 L_else_27421
	ldi	r11 r12 2
	add	r1 r11 r27
	ldi	r11 r1 0
	bgt	r0 r11 L_else_27423
	ldi	r11 r12 2
	add	r1 r11 r27
	ldi	r13 r1 0
	ldi	r11 r14 2
	add	r1 r11 r27
	ldi	r11 r1 0
	bne	r11 r13 L_else_27426
	add	r1 r10 r6
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r27
	ldi	r11 r1 0
	bne	r11 r13 L_else_27433
	addi	r11 r6 -1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r27
	ldi	r11 r1 0
	bne	r11 r13 L_else_27435
	addi	r11 r6 1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r27
	ldi	r11 r1 0
	bne	r11 r13 L_else_27437
	addi	r11 r0 1
	jump	L_cont_27424
L_else_27437 : 
	addi	r11 r0 0
	jump	L_cont_27424
L_else_27435 : 
	addi	r11 r0 0
	jump	L_cont_27424
L_else_27433 : 
	addi	r11 r0 0
	jump	L_cont_27424
L_else_27426 : 
	addi	r11 r0 0
L_cont_27424 : 
	bne	r11 r0 L_else_27428
	add	r6 r0 r12
	jump	L_do_without_neighbors_2268
L_else_27428 : 
	ldi	r11 r12 3
	add	r1 r11 r27
	ldi	r11 r1 0
	bne	r11 r0 L_else_27431
	jump	L_cont_27429
L_else_27431 : 
	ldi	r16 r14 5
	addi	r11 r6 -1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r17 r11 5
	ldi	r14 r12 5
	addi	r11 r6 1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r15 r11 5
	add	r1 r10 r6
	ldi	r11 r1 0
	ldi	r13 r11 5
	add	r1 r16 r27
	ldi	r11 r1 0
	fldi	f2 r11 0
	fsti	f2 r0 1052
	fldi	f2 r11 1
	fsti	f2 r0 1053
	fldi	f2 r11 2
	fsti	f2 r0 1054
	add	r1 r17 r27
	ldi	r11 r1 0
	fldi	f3 r0 1052
	fldi	f2 r11 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r11 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r11 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r14 r27
	ldi	r11 r1 0
	fldi	f2 r0 1052
	fldi	f3 r11 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r11 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r11 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	add	r1 r15 r27
	ldi	r11 r1 0
	fldi	f3 r0 1052
	fldi	f2 r11 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r11 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r11 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r13 r27
	ldi	r11 r1 0
	fldi	f2 r0 1052
	fldi	f3 r11 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r11 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r11 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	ldi	r11 r12 4
	add	r1 r11 r27
	ldi	r11 r1 0
	fldi	f3 r0 1055
	fldi	f4 r11 0
	fldi	f2 r0 1052
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f2 r11 1
	fldi	f3 r0 1053
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f4 r11 2
	fldi	f2 r0 1054
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
L_cont_27429 : 
	addi	r11 r27 1
	jump	L_try_exploit_neighbors_2284
L_else_27423 : 
	return
L_else_27421 : 
	return
L_else_27404 : 
	return
L_else_27402 : 
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
	bgt	r28 r6 L_else_27448
	ldi	r6 r27 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else_27450
	ldi	r6 r27 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else_27453
	jump	L_cont_27451
L_else_27453 : 
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
L_cont_27451 : 
	addi	r28 r28 1
	addi	r6 r0 4
	bgt	r28 r6 L_else_27455
	ldi	r6 r27 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else_27457
	ldi	r6 r27 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else_27460
	jump	L_cont_27458
L_else_27460 : 
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
	fbgt	f0 f3 L_else_27463
	ldi	r22 r23 118
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_27461
L_else_27463 : 
	ldi	r22 r23 119
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_27461 : 
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
L_cont_27458 : 
	addi	r28 r28 1
	jump	L_pretrace_diffuse_rays_2297
L_else_27457 : 
	return
L_else_27455 : 
	return
L_else_27450 : 
	return
L_else_27448 : 
	return
L_pretrace_pixels_2300 : 
	bgt	r0 r7 L_else_27466
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
	fbne	f2 f0 L_else_27469
	fldi	f3 r0 12
	jump	L_cont_27467
L_else_27469 : 
	fldi	f3 r0 12
	fdiv	f3 f3 f2
L_cont_27467 : 
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
	bgt	r0 r10 L_else_27472
	ldi	r10 r9 3
	ldi	r10 r10 0
	bne	r10 r0 L_else_27478
	jump	L_cont_27476
L_else_27478 : 
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
	fbgt	f0 f3 L_else_27481
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
	jump	L_cont_27479
L_else_27481 : 
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
L_cont_27479 : 
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
L_cont_27476 : 
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
	jump	L_cont_27470
L_else_27472 : 
L_cont_27470 : 
	addi	r9 r7 -1
	addi	r7 r8 1
	addi	r8 r0 5
	bgt	r8 r7 L_else_27475
	addi	r7 r7 -5
	jump	L_cont_27473
L_else_27475 : 
L_cont_27473 : 
	add	r8 r0 r7
	add	r7 r0 r9
	jump	L_pretrace_pixels_2300
L_else_27466 : 
	return
L_scan_pixel_2311 : 
	ldi	r11 r0 1058
	bgt	r11 r6 L_else_27484
	return
L_else_27484 : 
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
	bgt	r13 r12 L_else_27487
	addi	r12 r0 0
	jump	L_cont_27485
L_else_27487 : 
	bgt	r7 r0 L_else_27527
	addi	r12 r0 0
	jump	L_cont_27485
L_else_27527 : 
	ldi	r13 r0 1058
	addi	r12 r6 1
	bgt	r13 r12 L_else_27529
	addi	r12 r0 0
	jump	L_cont_27485
L_else_27529 : 
	bgt	r6 r0 L_else_27531
	addi	r12 r0 0
	jump	L_cont_27485
L_else_27531 : 
	addi	r12 r0 1
L_cont_27485 : 
	bne	r12 r0 L_else_27490
	addi	r27 r0 0
	ldi	r12 r11 2
	ldi	r12 r12 0
	bgt	r0 r12 L_else_27506
	ldi	r12 r11 3
	ldi	r12 r12 0
	bne	r12 r0 L_else_27509
	jump	L_cont_27507
L_else_27509 : 
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
L_cont_27507 : 
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
	jump	L_cont_27488
L_else_27506 : 
	jump	L_cont_27488
L_else_27490 : 
	addi	r27 r0 0
	ldi	r12 r11 2
	ldi	r12 r12 0
	bgt	r0 r12 L_else_27511
	ldi	r12 r11 2
	ldi	r14 r12 0
	add	r1 r8 r6
	ldi	r13 r1 0
	ldi	r12 r13 2
	ldi	r12 r12 0
	bne	r12 r14 L_else_27514
	add	r1 r10 r6
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r14 L_else_27521
	addi	r12 r6 -1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r14 L_else_27523
	addi	r12 r6 1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r14 L_else_27525
	addi	r12 r0 1
	jump	L_cont_27512
L_else_27525 : 
	addi	r12 r0 0
	jump	L_cont_27512
L_else_27523 : 
	addi	r12 r0 0
	jump	L_cont_27512
L_else_27521 : 
	addi	r12 r0 0
	jump	L_cont_27512
L_else_27514 : 
	addi	r12 r0 0
L_cont_27512 : 
	bne	r12 r0 L_else_27516
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
	jump	L_cont_27488
L_else_27516 : 
	ldi	r12 r11 3
	ldi	r12 r12 0
	bne	r12 r0 L_else_27519
	jump	L_cont_27517
L_else_27519 : 
	ldi	r14 r13 5
	addi	r12 r6 -1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r17 r12 5
	ldi	r13 r11 5
	addi	r12 r6 1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r16 r12 5
	add	r1 r10 r6
	ldi	r12 r1 0
	ldi	r15 r12 5
	ldi	r12 r14 0
	fldi	f2 r12 0
	fsti	f2 r0 1052
	fldi	f2 r12 1
	fsti	f2 r0 1053
	fldi	f2 r12 2
	fsti	f2 r0 1054
	ldi	r12 r17 0
	fldi	f3 r0 1052
	fldi	f2 r12 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r12 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r12 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	ldi	r12 r13 0
	fldi	f2 r0 1052
	fldi	f3 r12 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r12 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r12 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	ldi	r12 r16 0
	fldi	f3 r0 1052
	fldi	f2 r12 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r12 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r12 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	ldi	r12 r15 0
	fldi	f2 r0 1052
	fldi	f3 r12 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r12 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r12 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	ldi	r11 r11 4
	ldi	r11 r11 0
	fldi	f3 r0 1055
	fldi	f4 r11 0
	fldi	f2 r0 1052
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f2 r11 1
	fldi	f3 r0 1053
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f4 r11 2
	fldi	f2 r0 1054
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
L_cont_27517 : 
	addi	r11 r0 1
	sti	r7 r2 0
	sti	r10 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
	jump	L_cont_27488
L_else_27511 : 
L_cont_27488 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element_2293
	fldi	f2 r0 1056
	call	L_write_rgb_element_2293
	fldi	f2 r0 1057
	call	L_write_rgb_element_2293
	addi	r6 r6 1
	ldi	r11 r0 1058
	bgt	r11 r6 L_else_27492
	return
L_else_27492 : 
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
	bgt	r12 r13 L_else_27495
	addi	r12 r0 0
	jump	L_cont_27493
L_else_27495 : 
	bgt	r7 r0 L_else_27500
	addi	r12 r0 0
	jump	L_cont_27493
L_else_27500 : 
	ldi	r12 r0 1058
	addi	r13 r6 1
	bgt	r12 r13 L_else_27502
	addi	r12 r0 0
	jump	L_cont_27493
L_else_27502 : 
	bgt	r6 r0 L_else_27504
	addi	r12 r0 0
	jump	L_cont_27493
L_else_27504 : 
	addi	r12 r0 1
L_cont_27493 : 
	bne	r12 r0 L_else_27498
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
	jump	L_cont_27496
L_else_27498 : 
	addi	r11 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
L_cont_27496 : 
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
	bgt	r11 r6 L_else_27534
	return
L_else_27534 : 
	ldi	r11 r0 1059
	addi	r11 r11 -1
	bgt	r11 r6 L_else_27537
	jump	L_cont_27535
L_else_27537 : 
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
L_cont_27535 : 
	addi	r12 r0 0
	ldi	r11 r0 1058
	bgt	r11 r0 L_else_27540
	jump	L_cont_27538
L_else_27540 : 
	ldi	r11 r8 0
	ldi	r11 r11 0
	fldi	f2 r11 0
	fsti	f2 r0 1055
	fldi	f2 r11 1
	fsti	f2 r0 1056
	fldi	f2 r11 2
	fsti	f2 r0 1057
	ldi	r13 r0 1059
	addi	r11 r6 1
	bgt	r13 r11 L_else_27554
	addi	r11 r0 0
	jump	L_cont_27552
L_else_27554 : 
	bgt	r6 r0 L_else_27559
	addi	r11 r0 0
	jump	L_cont_27552
L_else_27559 : 
	ldi	r13 r0 1058
	addi	r11 r0 1
	bgt	r13 r11 L_else_27561
	addi	r11 r0 0
	jump	L_cont_27552
L_else_27561 : 
	addi	r11 r0 0
L_cont_27552 : 
	bne	r11 r0 L_else_27557
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
	jump	L_cont_27555
L_else_27557 : 
	addi	r11 r0 0
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r10 r0 r9
	add	r9 r0 r8
	add	r8 r0 r7
	add	r7 r0 r6
	add	r6 r0 r12
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
L_cont_27555 : 
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
L_cont_27538 : 
	addi	r11 r6 1
	addi	r6 r10 2
	addi	r10 r0 5
	bgt	r10 r6 L_else_27543
	addi	r6 r6 -5
	jump	L_cont_27541
L_else_27543 : 
L_cont_27541 : 
	ldi	r10 r0 1059
	bgt	r10 r11 L_else_27545
	return
L_else_27545 : 
	ldi	r10 r0 1059
	addi	r10 r10 -1
	bgt	r10 r11 L_else_27548
	jump	L_cont_27546
L_else_27548 : 
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
L_cont_27546 : 
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
	bgt	r11 r6 L_else_27551
	addi	r6 r6 -5
	jump	L_cont_27549
L_else_27551 : 
L_cont_27549 : 
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
	bgt	r0 r18 L_else_27566
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27568
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27570
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27572
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27574
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27576
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27578
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27580
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	jump	L_init_line_elements_2327
L_else_27580 : 
	add	r6 r0 r17
	return
L_else_27578 : 
	add	r6 r0 r17
	return
L_else_27576 : 
	add	r6 r0 r17
	return
L_else_27574 : 
	add	r6 r0 r17
	return
L_else_27572 : 
	add	r6 r0 r17
	return
L_else_27570 : 
	add	r6 r0 r17
	return
L_else_27568 : 
	add	r6 r0 r17
	return
L_else_27566 : 
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
	bgt	r0 r18 L_else_27583
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27585
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27587
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27589
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27591
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27593
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_27595
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	jump	L_init_line_elements_2327
L_else_27595 : 
	add	r6 r0 r17
	return
L_else_27593 : 
	add	r6 r0 r17
	return
L_else_27591 : 
	add	r6 r0 r17
	return
L_else_27589 : 
	add	r6 r0 r17
	return
L_else_27587 : 
	add	r6 r0 r17
	return
L_else_27585 : 
	add	r6 r0 r17
	return
L_else_27583 : 
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
	bgt	r9 r6 L_else_27600
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
L_else_27600 : 
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
	bgt	r0 r10 L_else_27603
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
	bgt	r6 r10 L_else_27606
	addi	r10 r10 -5
	jump	L_cont_27604
L_else_27606 : 
L_cont_27604 : 
	bgt	r0 r13 L_else_27608
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
	bgt	r8 r6 L_else_27611
	addi	r6 r6 -5
	jump	L_cont_27609
L_else_27611 : 
L_cont_27609 : 
	add	r10 r0 r7
	add	r11 r0 r6
	jump	L_calc_dirvecs_2345
L_else_27608 : 
	return
L_else_27603 : 
	return
L_calc_dirvec_rows_2350 : 
	bgt	r0 r14 L_else_27614
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
	bgt	r6 r11 L_else_27617
	addi	r11 r11 -5
	jump	L_cont_27615
L_else_27617 : 
L_cont_27615 : 
	add	r12 r0 r16
	call	L_calc_dirvecs_2345
	addi	r17 r14 -1
	addi	r14 r15 2
	addi	r6 r0 5
	bgt	r6 r14 L_else_27620
	addi	r14 r14 -5
	jump	L_cont_27618
L_else_27620 : 
L_cont_27618 : 
	addi	r15 r16 4
	bgt	r0 r17 L_else_27622
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
	bgt	r7 r6 L_else_27625
	addi	r6 r6 -5
	jump	L_cont_27623
L_else_27625 : 
L_cont_27623 : 
	addi	r16 r15 4
	add	r14 r0 r8
	add	r15 r0 r6
	jump	L_calc_dirvec_rows_2350
L_else_27622 : 
	return
L_else_27614 : 
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
	bgt	r0 r12 L_else_27629
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27631
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27633
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27635
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27637
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27639
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27641
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_27643
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	jump	L_create_dirvec_elements_2356
L_else_27643 : 
	return
L_else_27641 : 
	return
L_else_27639 : 
	return
L_else_27637 : 
	return
L_else_27635 : 
	return
L_else_27633 : 
	return
L_else_27631 : 
	return
L_else_27629 : 
	return
L_create_dirvecs_2359 : 
	bgt	r0 r13 L_else_27646
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
L_else_27646 : 
	return
L_init_dirvec_constants_2361 : 
	bgt	r0 r15 L_else_27649
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_27652
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27706
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27704
L_else_27706 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27715
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27704
L_else_27715 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27704 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27708
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27711
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27709
L_else_27711 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27713
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27709
L_else_27713 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27709 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27650
L_else_27708 : 
	jump	L_cont_27650
L_else_27652 : 
L_cont_27650 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else_27654
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_27657
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27687
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27685
L_else_27687 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27703
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27685
L_else_27703 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27685 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27689
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27692
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27690
L_else_27692 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27701
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27690
L_else_27701 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27690 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_27694
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27697
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27695
L_else_27697 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27699
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27695
L_else_27699 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27695 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27655
L_else_27694 : 
	jump	L_cont_27655
L_else_27689 : 
	jump	L_cont_27655
L_else_27657 : 
L_cont_27655 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else_27659
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_27662
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27675
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27673
L_else_27675 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27684
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27673
L_else_27684 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27673 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27677
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27680
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27678
L_else_27680 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27682
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27678
L_else_27682 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27678 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27660
L_else_27677 : 
	jump	L_cont_27660
L_else_27662 : 
L_cont_27660 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else_27664
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27667
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27670
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27668
L_else_27670 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27672
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27668
L_else_27672 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27668 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27665
L_else_27667 : 
L_cont_27665 : 
	addi	r15 r15 -1
	jump	L_init_dirvec_constants_2361
L_else_27664 : 
	return
L_else_27659 : 
	return
L_else_27654 : 
	return
L_else_27649 : 
	return
L_init_vecset_constants_2364 : 
	bgt	r0 r16 L_else_27718
	ldi	r14 r16 1076
	ldi	r11 r14 119
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27721
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27784
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27782
L_else_27784 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27800
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27782
L_else_27800 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27782 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_27786
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27789
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27787
L_else_27789 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27798
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27787
L_else_27798 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27787 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27791
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27794
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27792
L_else_27794 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27796
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27792
L_else_27796 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27792 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27719
L_else_27791 : 
	jump	L_cont_27719
L_else_27786 : 
	jump	L_cont_27719
L_else_27721 : 
L_cont_27719 : 
	ldi	r11 r14 118
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27724
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27772
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27770
L_else_27772 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27781
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27770
L_else_27781 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27770 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_27774
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27777
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27775
L_else_27777 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27779
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27775
L_else_27779 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27775 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27722
L_else_27774 : 
	jump	L_cont_27722
L_else_27724 : 
L_cont_27722 : 
	ldi	r11 r14 117
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_27727
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27767
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27765
L_else_27767 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27769
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27765
L_else_27769 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27765 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27725
L_else_27727 : 
L_cont_27725 : 
	addi	r15 r0 116
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_27729
	ldi	r14 r16 1076
	ldi	r11 r14 119
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_27732
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27755
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27753
L_else_27755 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27764
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_27753
L_else_27764 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_27753 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27757
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27760
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27758
L_else_27760 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27762
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27758
L_else_27762 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27758 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27730
L_else_27757 : 
	jump	L_cont_27730
L_else_27732 : 
L_cont_27730 : 
	ldi	r11 r14 118
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27735
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else_27750
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27748
L_else_27750 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_27752
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27748
L_else_27752 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27748 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27733
L_else_27735 : 
L_cont_27733 : 
	addi	r15 r0 117
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_27737
	ldi	r14 r16 1076
	ldi	r11 r14 119
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_27740
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r6 r10 1
	bne	r6 r4 L_else_27745
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27743
L_else_27745 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_27747
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_27743
L_else_27747 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_27743 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_27738
L_else_27740 : 
L_cont_27738 : 
	addi	r15 r0 118
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_27742
	ldi	r14 r16 1076
	addi	r15 r0 119
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	jump	L_init_vecset_constants_2364
L_else_27742 : 
	return
L_else_27737 : 
	return
L_else_27729 : 
	return
L_else_27718 : 
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
	bne	r9 r0 L_else_27803
	sti	r21 r0 1072
	jump	L_cont_27801
L_else_27803 : 
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
	bne	r9 r0 L_else_27849
	sti	r21 r0 1072
	jump	L_cont_27801
L_else_27849 : 
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
	bne	r9 r0 L_else_27851
	sti	r21 r0 1072
	jump	L_cont_27801
L_else_27851 : 
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
	bne	r9 r0 L_else_27853
	sti	r21 r0 1072
	jump	L_cont_27801
L_else_27853 : 
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
L_cont_27801 : 
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
	bne	r11 r5 L_else_27806
	jump	L_cont_27804
L_else_27806 : 
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
	bne	r11 r5 L_else_27841
	jump	L_cont_27804
L_else_27841 : 
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
	bne	r11 r5 L_else_27843
	jump	L_cont_27804
L_else_27843 : 
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
	bne	r11 r5 L_else_27845
	jump	L_cont_27804
L_else_27845 : 
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
	bne	r11 r5 L_else_27847
	jump	L_cont_27804
L_else_27847 : 
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
L_cont_27804 : 
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
	bgt	r0 r12 L_else_27809
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r9 r11 0
	ldi	r15 r10 1
	bne	r15 r4 L_else_27823
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
	jump	L_cont_27821
L_else_27823 : 
	addi	r14 r0 2
	bne	r15 r14 L_else_27839
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
	jump	L_cont_27821
L_else_27839 : 
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
L_cont_27821 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else_27825
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r9 r11 0
	ldi	r15 r10 1
	bne	r15 r4 L_else_27828
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
	jump	L_cont_27826
L_else_27828 : 
	addi	r14 r0 2
	bne	r15 r14 L_else_27837
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
	jump	L_cont_27826
L_else_27837 : 
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
L_cont_27826 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else_27830
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r9 r11 0
	ldi	r15 r10 1
	bne	r15 r4 L_else_27833
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
	jump	L_cont_27831
L_else_27833 : 
	addi	r14 r0 2
	bne	r15 r14 L_else_27835
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
	jump	L_cont_27831
L_else_27835 : 
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
L_cont_27831 : 
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
	jump	L_cont_27807
L_else_27830 : 
	jump	L_cont_27807
L_else_27825 : 
	jump	L_cont_27807
L_else_27809 : 
L_cont_27807 : 
	ldi	r9 r0 1072
	addi	r12 r9 -1
	bgt	r0 r12 L_else_27812
	ldi	r11 r12 1970
	ldi	r9 r11 2
	addi	r10 r0 2
	bne	r9 r10 L_else_27814
	ldi	r9 r11 7
	fldi	f3 r9 0
	fldi	f2 r0 12
	fbgt	f2 f3 L_else_27816
	jump	L_cont_27810
L_else_27816 : 
	ldi	r10 r11 1
	bne	r10 r4 L_else_27818
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
	jump	L_cont_27810
L_else_27818 : 
	addi	r9 r0 2
	bne	r10 r9 L_else_27820
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
	jump	L_cont_27810
L_else_27820 : 
	jump	L_cont_27810
L_else_27814 : 
	jump	L_cont_27810
L_else_27812 : 
L_cont_27810 : 
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
