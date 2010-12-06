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
	bne	r0 r7 L_else_19027
	return
L_else_19027 : 
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
	bne	r0 r7 L_else_19028
	return
L_else_19028 : 
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
	fbgt	f9 f5 L_else_16884
	fldi	f2 r0 15
	fbgt	f2 f9 L_else_16886
	fldi	f4 r0 16
	fldi	f3 r0 17
	fldi	f2 r0 18
	fbgt	f9 f0 L_else_16888
	fldi	f2 r0 19
	fbgt	f2 f9 L_else_16890
	jump	L_psin_1874
L_else_16890 : 
	fldi	f2 r0 20
	fbgt	f2 f9 L_else_16892
	fadd	f2 f3 f9
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_16892 : 
	fadd	f9 f5 f9
	call	L_psin_1874
	fsub	f2 f0 f2
	return
L_else_16888 : 
	fbgt	f9 f4 L_else_16894
	jump	L_psin_1874
L_else_16894 : 
	fbgt	f9 f2 L_else_16896
	fsub	f2 f9 f3
	jump	L_pcos_1876
L_else_16896 : 
	fsub	f9 f5 f9
	jump	L_psin_1874
L_else_16886 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1878
L_else_16884 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1878
L_cos_1880 : 
	fldi	f4 r0 13
	fldi	f6 r0 14
	fbgt	f2 f6 L_else_16899
	fldi	f3 r0 15
	fbgt	f3 f2 L_else_16901
	fldi	f5 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f2 f0 L_else_16903
	fldi	f3 r0 19
	fbgt	f3 f2 L_else_16905
	jump	L_pcos_1876
L_else_16905 : 
	fldi	f3 r0 20
	fbgt	f3 f2 L_else_16907
	fadd	f9 f2 f4
	jump	L_psin_1874
L_else_16907 : 
	fadd	f2 f6 f2
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_16903 : 
	fbgt	f2 f5 L_else_16909
	jump	L_pcos_1876
L_else_16909 : 
	fbgt	f2 f3 L_else_16911
	fsub	f9 f2 f4
	call	L_psin_1874
	fsub	f2 f0 f2
	return
L_else_16911 : 
	fsub	f2 f6 f2
	call	L_pcos_1876
	fsub	f2 f0 f2
	return
L_else_16901 : 
	fadd	f2 f2 f4
	jump	L_cos_1880
L_else_16899 : 
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
	bne	r7 r0 L_else_16915
	return
L_else_16915 : 
	addi	r7 r7 -1
	addi	r8 r0 10
	mul	r6 r6 r8
	jump	L_spow10_1884
L_pow10_1887 : 
	addi	r6 r0 1
	jump	L_spow10_1884
L_sdivn_1889 : 
	sub	r8 r7 r9
	bgt	r0 r8 L_else_16919
	sub	r7 r7 r9
	addi	r6 r6 1
	jump	L_sdivn_1889
L_else_16919 : 
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
	bne	r11 r0 L_else_16923
	addi	r6 r10 48
	jump	min_caml_print_char
L_else_16923 : 
	bne	r12 r0 L_else_16925
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
L_else_16925 : 
	add	r9 r0 r10
	add	r7 r0 r11
	call	L_divpow10_1893
	add	r9 r0 r6
	bne	r9 r0 L_else_16927
	addi	r6 r11 -1
	add	r11 r0 r6
	jump	L_sprint_int_1896
L_else_16927 : 
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
L_read_object_2038 : 
	addi	r6 r0 60
	bgt	r6 r8 L_else_16931
	return
L_else_16931 : 
	call	min_caml_read_int
	add	r11 r0 r6
	bne	r11 r5 L_else_16934
	addi	r6 r0 0
	jump	L_cont_16932
L_else_16934 : 
	call	min_caml_read_int
	add	r12 r0 r6
	call	min_caml_read_int
	add	r13 r0 r6
	call	min_caml_read_int
	add	r14 r0 r6
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r6
	call	min_caml_read_float
	fsti	f2 r10 0
	call	min_caml_read_float
	fsti	f2 r10 1
	call	min_caml_read_float
	fsti	f2 r10 2
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r15 r0 r6
	call	min_caml_read_float
	fsti	f2 r15 0
	call	min_caml_read_float
	fsti	f2 r15 1
	call	min_caml_read_float
	fsti	f2 r15 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_16992
	addi	r16 r0 0
	jump	L_cont_16990
L_else_16992 : 
	addi	r16 r0 1
L_cont_16990 : 
	addi	r6 r0 2
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r17 r0 r6
	call	min_caml_read_float
	fsti	f2 r17 0
	call	min_caml_read_float
	fsti	f2 r17 1
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r19 r0 r6
	call	min_caml_read_float
	fsti	f2 r19 0
	call	min_caml_read_float
	fsti	f2 r19 1
	call	min_caml_read_float
	fsti	f2 r19 2
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r18 r0 r6
	bne	r14 r0 L_else_16995
	jump	L_cont_16993
L_else_16995 : 
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r18 0
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r18 1
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r18 2
L_cont_16993 : 
	addi	r6 r0 2
	bne	r12 r6 L_else_16998
	addi	r20 r0 1
	jump	L_cont_16996
L_else_16998 : 
	add	r20 r0 r16
L_cont_16996 : 
	addi	r6 r0 4
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r11 r3 0
	sti	r12 r3 1
	sti	r13 r3 2
	sti	r14 r3 3
	sti	r10 r3 4
	sti	r15 r3 5
	sti	r20 r3 6
	sti	r17 r3 7
	sti	r19 r3 8
	sti	r18 r3 9
	sti	r6 r3 10
	add	r7 r0 r3
	addi	r3 r3 11
	addi	r6 r0 1970
	add	r1 r6 r8
	sti	r7 r1 0
	addi	r6 r0 3
	bne	r12 r6 L_else_17001
	fldi	f3 r10 0
	fbne	f3 f0 L_else_17007
	fldi	f2 r0 26
	jump	L_cont_17005
L_else_17007 : 
	fbne	f3 f0 L_else_17026
	fldi	f2 r0 26
	jump	L_cont_17024
L_else_17026 : 
	fbgt	f3 f0 L_else_17028
	fldi	f2 r0 28
	jump	L_cont_17024
L_else_17028 : 
	fldi	f2 r0 12
L_cont_17024 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_17005 : 
	fsti	f2 r10 0
	fldi	f2 r10 1
	fbne	f2 f0 L_else_17010
	fldi	f2 r0 26
	jump	L_cont_17008
L_else_17010 : 
	fbne	f2 f0 L_else_17021
	fldi	f3 r0 26
	jump	L_cont_17019
L_else_17021 : 
	fbgt	f2 f0 L_else_17023
	fldi	f3 r0 28
	jump	L_cont_17019
L_else_17023 : 
	fldi	f3 r0 12
L_cont_17019 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
L_cont_17008 : 
	fsti	f2 r10 1
	fldi	f3 r10 2
	fbne	f3 f0 L_else_17013
	fldi	f2 r0 26
	jump	L_cont_17011
L_else_17013 : 
	fbne	f3 f0 L_else_17016
	fldi	f2 r0 26
	jump	L_cont_17014
L_else_17016 : 
	fbgt	f3 f0 L_else_17018
	fldi	f2 r0 28
	jump	L_cont_17014
L_else_17018 : 
	fldi	f2 r0 12
L_cont_17014 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_17011 : 
	fsti	f2 r10 2
	jump	L_cont_16999
L_else_17001 : 
	addi	r6 r0 2
	bne	r12 r6 L_else_17030
	sub	r6 r4 r16
	fldi	f2 r10 0
	fmul	f3 f2 f2
	fldi	f2 r10 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r10 2
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_17033
	fldi	f3 r0 12
	jump	L_cont_17031
L_else_17033 : 
	bne	r6 r0 L_else_17035
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_17031
L_else_17035 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
L_cont_17031 : 
	fldi	f2 r10 0
	fmul	f2 f2 f3
	fsti	f2 r10 0
	fldi	f2 r10 1
	fmul	f2 f2 f3
	fsti	f2 r10 1
	fldi	f2 r10 2
	fmul	f2 f2 f3
	fsti	f2 r10 2
	jump	L_cont_16999
L_else_17030 : 
L_cont_16999 : 
	bne	r14 r0 L_else_17004
	jump	L_cont_17002
L_else_17004 : 
	fldi	f2 r18 0
	call	L_cos_1880
	fadd	f10 f0 f2
	fldi	f9 r18 0
	call	L_sin_1878
	fadd	f11 f0 f2
	fldi	f2 r18 1
	call	L_cos_1880
	fadd	f12 f0 f2
	fldi	f9 r18 1
	call	L_sin_1878
	fadd	f13 f0 f2
	fldi	f2 r18 2
	call	L_cos_1880
	fadd	f14 f0 f2
	fldi	f9 r18 2
	call	L_sin_1878
	fmul	f15 f12 f14
	fmul	f3 f11 f13
	fmul	f3 f3 f14
	fmul	f4 f10 f2
	fsub	f9 f3 f4
	fmul	f3 f10 f13
	fmul	f3 f3 f14
	fmul	f4 f11 f2
	fadd	f16 f3 f4
	fmul	f5 f12 f2
	fmul	f3 f11 f13
	fmul	f4 f3 f2
	fmul	f3 f10 f14
	fadd	f7 f4 f3
	fmul	f3 f10 f13
	fmul	f3 f3 f2
	fmul	f2 f11 f14
	fsub	f14 f3 f2
	fsub	f8 f0 f13
	fmul	f6 f11 f12
	fmul	f13 f10 f12
	fldi	f12 r10 0
	fldi	f11 r10 1
	fldi	f10 r10 2
	fmul	f2 f15 f15
	fmul	f3 f12 f2
	fmul	f2 f5 f5
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f8 f8
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r10 0
	fmul	f2 f9 f9
	fmul	f3 f12 f2
	fmul	f2 f7 f7
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f6 f6
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r10 1
	fmul	f2 f16 f16
	fmul	f3 f12 f2
	fmul	f2 f14 f14
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f13 f13
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r10 2
	fldi	f4 r0 29
	fmul	f2 f12 f9
	fmul	f3 f2 f16
	fmul	f2 f11 f7
	fmul	f2 f2 f14
	fadd	f3 f3 f2
	fmul	f2 f10 f6
	fmul	f2 f2 f13
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r18 0
	fldi	f4 r0 29
	fmul	f2 f12 f15
	fmul	f3 f2 f16
	fmul	f2 f11 f5
	fmul	f2 f2 f14
	fadd	f3 f3 f2
	fmul	f2 f10 f8
	fmul	f2 f2 f13
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r18 1
	fldi	f4 r0 29
	fmul	f2 f12 f15
	fmul	f3 f2 f9
	fmul	f2 f11 f5
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fmul	f2 f10 f8
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r18 2
L_cont_17002 : 
	addi	r6 r0 1
L_cont_16932 : 
	bne	r6 r0 L_else_16936
	sti	r8 r0 1072
	return
L_else_16936 : 
	addi	r8 r8 1
	addi	r6 r0 60
	bgt	r6 r8 L_else_16938
	return
L_else_16938 : 
	call	min_caml_read_int
	add	r11 r0 r6
	bne	r11 r5 L_else_16941
	addi	r6 r0 0
	jump	L_cont_16939
L_else_16941 : 
	call	min_caml_read_int
	add	r12 r0 r6
	call	min_caml_read_int
	add	r13 r0 r6
	call	min_caml_read_int
	add	r14 r0 r6
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r6
	call	min_caml_read_float
	fsti	f2 r10 0
	call	min_caml_read_float
	fsti	f2 r10 1
	call	min_caml_read_float
	fsti	f2 r10 2
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r15 r0 r6
	call	min_caml_read_float
	fsti	f2 r15 0
	call	min_caml_read_float
	fsti	f2 r15 1
	call	min_caml_read_float
	fsti	f2 r15 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_16946
	addi	r16 r0 0
	jump	L_cont_16944
L_else_16946 : 
	addi	r16 r0 1
L_cont_16944 : 
	addi	r6 r0 2
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r17 r0 r6
	call	min_caml_read_float
	fsti	f2 r17 0
	call	min_caml_read_float
	fsti	f2 r17 1
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r19 r0 r6
	call	min_caml_read_float
	fsti	f2 r19 0
	call	min_caml_read_float
	fsti	f2 r19 1
	call	min_caml_read_float
	fsti	f2 r19 2
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r18 r0 r6
	bne	r14 r0 L_else_16949
	jump	L_cont_16947
L_else_16949 : 
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r18 0
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r18 1
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r18 2
L_cont_16947 : 
	addi	r6 r0 2
	bne	r12 r6 L_else_16952
	addi	r20 r0 1
	jump	L_cont_16950
L_else_16952 : 
	add	r20 r0 r16
L_cont_16950 : 
	addi	r6 r0 4
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r11 r3 0
	sti	r12 r3 1
	sti	r13 r3 2
	sti	r14 r3 3
	sti	r10 r3 4
	sti	r15 r3 5
	sti	r20 r3 6
	sti	r17 r3 7
	sti	r19 r3 8
	sti	r18 r3 9
	sti	r6 r3 10
	add	r6 r0 r3
	addi	r3 r3 11
	addi	r7 r0 1970
	add	r1 r7 r8
	sti	r6 r1 0
	addi	r6 r0 3
	bne	r12 r6 L_else_16955
	fldi	f3 r10 0
	fbne	f3 f0 L_else_16961
	fldi	f2 r0 26
	jump	L_cont_16959
L_else_16961 : 
	fbne	f3 f0 L_else_16980
	fldi	f2 r0 26
	jump	L_cont_16978
L_else_16980 : 
	fbgt	f3 f0 L_else_16982
	fldi	f2 r0 28
	jump	L_cont_16978
L_else_16982 : 
	fldi	f2 r0 12
L_cont_16978 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_16959 : 
	fsti	f2 r10 0
	fldi	f3 r10 1
	fbne	f3 f0 L_else_16964
	fldi	f2 r0 26
	jump	L_cont_16962
L_else_16964 : 
	fbne	f3 f0 L_else_16975
	fldi	f2 r0 26
	jump	L_cont_16973
L_else_16975 : 
	fbgt	f3 f0 L_else_16977
	fldi	f2 r0 28
	jump	L_cont_16973
L_else_16977 : 
	fldi	f2 r0 12
L_cont_16973 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_16962 : 
	fsti	f2 r10 1
	fldi	f3 r10 2
	fbne	f3 f0 L_else_16967
	fldi	f2 r0 26
	jump	L_cont_16965
L_else_16967 : 
	fbne	f3 f0 L_else_16970
	fldi	f2 r0 26
	jump	L_cont_16968
L_else_16970 : 
	fbgt	f3 f0 L_else_16972
	fldi	f2 r0 28
	jump	L_cont_16968
L_else_16972 : 
	fldi	f2 r0 12
L_cont_16968 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont_16965 : 
	fsti	f2 r10 2
	jump	L_cont_16953
L_else_16955 : 
	addi	r6 r0 2
	bne	r12 r6 L_else_16984
	sub	r6 r4 r16
	fldi	f2 r10 0
	fmul	f3 f2 f2
	fldi	f2 r10 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r10 2
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_16987
	fldi	f3 r0 12
	jump	L_cont_16985
L_else_16987 : 
	bne	r6 r0 L_else_16989
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_16985
L_else_16989 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
L_cont_16985 : 
	fldi	f2 r10 0
	fmul	f2 f2 f3
	fsti	f2 r10 0
	fldi	f2 r10 1
	fmul	f2 f2 f3
	fsti	f2 r10 1
	fldi	f2 r10 2
	fmul	f2 f2 f3
	fsti	f2 r10 2
	jump	L_cont_16953
L_else_16984 : 
L_cont_16953 : 
	bne	r14 r0 L_else_16958
	jump	L_cont_16956
L_else_16958 : 
	fldi	f2 r18 0
	call	L_cos_1880
	fadd	f10 f0 f2
	fldi	f9 r18 0
	call	L_sin_1878
	fadd	f11 f0 f2
	fldi	f2 r18 1
	call	L_cos_1880
	fadd	f12 f0 f2
	fldi	f9 r18 1
	call	L_sin_1878
	fadd	f13 f0 f2
	fldi	f2 r18 2
	call	L_cos_1880
	fadd	f14 f0 f2
	fldi	f9 r18 2
	call	L_sin_1878
	fmul	f15 f12 f14
	fmul	f3 f11 f13
	fmul	f3 f3 f14
	fmul	f4 f10 f2
	fsub	f9 f3 f4
	fmul	f3 f10 f13
	fmul	f3 f3 f14
	fmul	f4 f11 f2
	fadd	f16 f3 f4
	fmul	f5 f12 f2
	fmul	f3 f11 f13
	fmul	f4 f3 f2
	fmul	f3 f10 f14
	fadd	f7 f4 f3
	fmul	f3 f10 f13
	fmul	f3 f3 f2
	fmul	f2 f11 f14
	fsub	f14 f3 f2
	fsub	f8 f0 f13
	fmul	f6 f11 f12
	fmul	f13 f10 f12
	fldi	f12 r10 0
	fldi	f11 r10 1
	fldi	f10 r10 2
	fmul	f2 f15 f15
	fmul	f3 f12 f2
	fmul	f2 f5 f5
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f8 f8
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r10 0
	fmul	f2 f9 f9
	fmul	f3 f12 f2
	fmul	f2 f7 f7
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f6 f6
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r10 1
	fmul	f2 f16 f16
	fmul	f3 f12 f2
	fmul	f2 f14 f14
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f13 f13
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r10 2
	fldi	f4 r0 29
	fmul	f2 f12 f9
	fmul	f3 f2 f16
	fmul	f2 f11 f7
	fmul	f2 f2 f14
	fadd	f3 f3 f2
	fmul	f2 f10 f6
	fmul	f2 f2 f13
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r18 0
	fldi	f4 r0 29
	fmul	f2 f12 f15
	fmul	f3 f2 f16
	fmul	f2 f11 f5
	fmul	f2 f2 f14
	fadd	f3 f3 f2
	fmul	f2 f10 f8
	fmul	f2 f2 f13
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r18 1
	fldi	f4 r0 29
	fmul	f2 f12 f15
	fmul	f3 f2 f9
	fmul	f2 f11 f5
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fmul	f2 f10 f8
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r18 2
L_cont_16956 : 
	addi	r6 r0 1
L_cont_16939 : 
	bne	r6 r0 L_else_16943
	sti	r8 r0 1072
	return
L_else_16943 : 
	addi	r6 r8 1
	add	r8 r0 r6
	jump	L_read_object_2038
L_read_net_item_2042 : 
	call	min_caml_read_int
	add	r8 r0 r6
	bne	r8 r5 L_else_17038
	addi	r6 r7 1
	addi	r7 r0 -1
	jump	min_caml_create_array
L_else_17038 : 
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
	bne	r6 r5 L_else_17041
	addi	r6 r10 1
	jump	min_caml_create_array
L_else_17041 : 
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
	bne	r7 r5 L_else_17044
	return
L_else_17044 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_17046
	return
L_else_17046 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_17048
	return
L_else_17048 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_17050
	return
L_else_17050 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_17052
	return
L_else_17052 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_17054
	return
L_else_17054 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_17056
	return
L_else_17056 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item_2042
	ldi	r7 r6 0
	bne	r7 r5 L_else_17058
	return
L_else_17058 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r6 r10 1
	add	r10 r0 r6
	jump	L_read_and_network_2046
L_solver_rect_2059 : 
	addi	r11 r0 0
	addi	r9 r0 1
	addi	r10 r0 2
	add	r1 r13 r11
	fldi	f2 r1 0
	fbne	f2 f0 L_else_17062
	addi	r6 r0 0
	jump	L_cont_17060
L_else_17062 : 
	ldi	r8 r12 4
	ldi	r6 r12 6
	add	r1 r13 r11
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_17109
	addi	r7 r0 0
	jump	L_cont_17107
L_else_17109 : 
	addi	r7 r0 1
L_cont_17107 : 
	xor	r6 r6 r7
	add	r1 r8 r11
	fldi	f2 r1 0
	bne	r6 r0 L_else_17112
	fsub	f2 f0 f2
	jump	L_cont_17110
L_else_17112 : 
L_cont_17110 : 
	fsub	f3 f2 f6
	add	r1 r13 r11
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r13 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_17115
	jump	L_cont_17113
L_else_17115 : 
	fsub	f2 f0 f2
L_cont_17113 : 
	add	r1 r8 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17117
	addi	r6 r0 0
	jump	L_cont_17060
L_else_17117 : 
	add	r1 r13 r10
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_17120
	jump	L_cont_17118
L_else_17120 : 
	fsub	f2 f0 f2
L_cont_17118 : 
	add	r1 r8 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17122
	addi	r6 r0 0
	jump	L_cont_17060
L_else_17122 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_17060 : 
	bne	r6 r0 L_else_17064
	addi	r10 r0 1
	addi	r11 r0 2
	addi	r8 r0 0
	add	r1 r13 r10
	fldi	f2 r1 0
	fbne	f2 f0 L_else_17067
	addi	r6 r0 0
	jump	L_cont_17065
L_else_17067 : 
	ldi	r7 r12 4
	ldi	r9 r12 6
	add	r1 r13 r10
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_17093
	addi	r6 r0 0
	jump	L_cont_17091
L_else_17093 : 
	addi	r6 r0 1
L_cont_17091 : 
	xor	r6 r9 r6
	add	r1 r7 r10
	fldi	f2 r1 0
	bne	r6 r0 L_else_17096
	fsub	f2 f0 f2
	jump	L_cont_17094
L_else_17096 : 
L_cont_17094 : 
	fsub	f2 f2 f5
	add	r1 r13 r10
	fldi	f3 r1 0
	fdiv	f4 f2 f3
	add	r1 r13 r11
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_17099
	jump	L_cont_17097
L_else_17099 : 
	fsub	f2 f0 f2
L_cont_17097 : 
	add	r1 r7 r11
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17101
	addi	r6 r0 0
	jump	L_cont_17065
L_else_17101 : 
	add	r1 r13 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_17104
	jump	L_cont_17102
L_else_17104 : 
	fsub	f2 f0 f2
L_cont_17102 : 
	add	r1 r7 r8
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17106
	addi	r6 r0 0
	jump	L_cont_17065
L_else_17106 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_17065 : 
	bne	r6 r0 L_else_17069
	addi	r11 r0 2
	addi	r9 r0 0
	addi	r10 r0 1
	add	r1 r13 r11
	fldi	f2 r1 0
	fbne	f2 f0 L_else_17072
	addi	r6 r0 0
	jump	L_cont_17070
L_else_17072 : 
	ldi	r8 r12 4
	ldi	r6 r12 6
	add	r1 r13 r11
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_17077
	addi	r7 r0 0
	jump	L_cont_17075
L_else_17077 : 
	addi	r7 r0 1
L_cont_17075 : 
	xor	r6 r6 r7
	add	r1 r8 r11
	fldi	f2 r1 0
	bne	r6 r0 L_else_17080
	fsub	f2 f0 f2
	jump	L_cont_17078
L_else_17080 : 
L_cont_17078 : 
	fsub	f3 f2 f7
	add	r1 r13 r11
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r13 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_17083
	jump	L_cont_17081
L_else_17083 : 
	fsub	f2 f0 f2
L_cont_17081 : 
	add	r1 r8 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17085
	addi	r6 r0 0
	jump	L_cont_17070
L_else_17085 : 
	add	r1 r13 r10
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_17088
	jump	L_cont_17086
L_else_17088 : 
	fsub	f2 f0 f2
L_cont_17086 : 
	add	r1 r8 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17090
	addi	r6 r0 0
	jump	L_cont_17070
L_else_17090 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_17070 : 
	bne	r6 r0 L_else_17074
	addi	r6 r0 0
	return
L_else_17074 : 
	addi	r6 r0 3
	return
L_else_17069 : 
	addi	r6 r0 2
	return
L_else_17064 : 
	addi	r6 r0 1
	return
L_solver_second_2084 : 
	fldi	f6 r7 0
	fldi	f10 r7 1
	fldi	f5 r7 2
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
	bne	r6 r0 L_else_17126
	fadd	f3 f0 f2
	jump	L_cont_17124
L_else_17126 : 
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
L_cont_17124 : 
	fbne	f3 f0 L_else_17128
	addi	r6 r0 0
	return
L_else_17128 : 
	fldi	f12 r7 0
	fldi	f11 r7 1
	fldi	f10 r7 2
	fmul	f4 f12 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f5 f4 f2
	fmul	f4 f11 f7
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f5 f2
	fmul	f5 f10 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f5 f2
	fadd	f2 f4 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_17131
	fadd	f4 f0 f2
	jump	L_cont_17129
L_else_17131 : 
	fmul	f5 f10 f7
	fmul	f4 f11 f9
	fadd	f5 f5 f4
	ldi	r6 r8 9
	fldi	f4 r6 0
	fmul	f6 f5 f4
	fmul	f5 f12 f9
	fmul	f4 f10 f8
	fadd	f5 f5 f4
	ldi	r6 r8 9
	fldi	f4 r6 1
	fmul	f4 f5 f4
	fadd	f5 f6 f4
	fmul	f6 f12 f7
	fmul	f4 f11 f8
	fadd	f6 f6 f4
	ldi	r6 r8 9
	fldi	f4 r6 2
	fmul	f4 f6 f4
	fadd	f5 f5 f4
	fldi	f4 r0 29
	fdiv	f4 f5 f4
	fadd	f4 f2 f4
L_cont_17129 : 
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
	bne	r6 r0 L_else_17134
	jump	L_cont_17132
L_else_17134 : 
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
L_cont_17132 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_17137
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont_17135
L_else_17137 : 
L_cont_17135 : 
	fmul	f5 f4 f4
	fmul	f2 f3 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_17139
	addi	r6 r0 0
	return
L_else_17139 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else_17142
	fsub	f2 f0 f2
	jump	L_cont_17140
L_else_17142 : 
L_cont_17140 : 
	fsub	f2 f2 f4
	fdiv	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
	return
L_solver_rect_fast_2094 : 
	fldi	f2 r7 0
	fsub	f3 f2 f6
	fldi	f2 r7 1
	fmul	f4 f3 f2
	fldi	f2 r8 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_17146
	jump	L_cont_17144
L_else_17146 : 
	fsub	f2 f0 f2
L_cont_17144 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_17149
	addi	r6 r0 0
	jump	L_cont_17147
L_else_17149 : 
	fldi	f2 r8 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_17186
	jump	L_cont_17184
L_else_17186 : 
	fsub	f2 f0 f2
L_cont_17184 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_17188
	addi	r6 r0 0
	jump	L_cont_17147
L_else_17188 : 
	fldi	f2 r7 1
	fbne	f2 f0 L_else_17191
	addi	r6 r0 1
	jump	L_cont_17189
L_else_17191 : 
	addi	r6 r0 0
L_cont_17189 : 
	sub	r6 r4 r6
L_cont_17147 : 
	bne	r6 r0 L_else_17151
	fldi	f2 r7 2
	fsub	f3 f2 f5
	fldi	f2 r7 3
	fmul	f4 f3 f2
	fldi	f2 r8 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_17154
	jump	L_cont_17152
L_else_17154 : 
	fsub	f2 f0 f2
L_cont_17152 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_17157
	addi	r6 r0 0
	jump	L_cont_17155
L_else_17157 : 
	fldi	f2 r8 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_17178
	jump	L_cont_17176
L_else_17178 : 
	fsub	f2 f0 f2
L_cont_17176 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_17180
	addi	r6 r0 0
	jump	L_cont_17155
L_else_17180 : 
	fldi	f2 r7 3
	fbne	f2 f0 L_else_17183
	addi	r6 r0 1
	jump	L_cont_17181
L_else_17183 : 
	addi	r6 r0 0
L_cont_17181 : 
	sub	r6 r4 r6
L_cont_17155 : 
	bne	r6 r0 L_else_17159
	fldi	f2 r7 4
	fsub	f3 f2 f7
	fldi	f2 r7 5
	fmul	f4 f3 f2
	fldi	f2 r8 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_17162
	jump	L_cont_17160
L_else_17162 : 
	fsub	f2 f0 f2
L_cont_17160 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else_17165
	addi	r6 r0 0
	jump	L_cont_17163
L_else_17165 : 
	fldi	f2 r8 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_17170
	jump	L_cont_17168
L_else_17170 : 
	fsub	f2 f0 f2
L_cont_17168 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_17172
	addi	r6 r0 0
	jump	L_cont_17163
L_else_17172 : 
	fldi	f2 r7 5
	fbne	f2 f0 L_else_17175
	addi	r6 r0 1
	jump	L_cont_17173
L_else_17175 : 
	addi	r6 r0 0
L_cont_17173 : 
	sub	r6 r4 r6
L_cont_17163 : 
	bne	r6 r0 L_else_17167
	addi	r6 r0 0
	return
L_else_17167 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	return
L_else_17159 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	return
L_else_17151 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	return
L_solver_second_fast_2107 : 
	fldi	f6 r8 0
	fbne	f6 f0 L_else_17194
	addi	r6 r0 0
	return
L_else_17194 : 
	fldi	f2 r8 1
	fmul	f3 f2 f7
	fldi	f2 r8 2
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f9
	fadd	f5 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r9 4
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fmul	f3 f8 f8
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
	bne	r6 r0 L_else_17197
	jump	L_cont_17195
L_else_17197 : 
	fmul	f4 f8 f9
	ldi	r6 r9 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f7
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f8
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_17195 : 
	ldi	r6 r9 1
	addi	r7 r0 3
	bne	r6 r7 L_else_17200
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_17198
L_else_17200 : 
L_cont_17198 : 
	fmul	f3 f5 f5
	fmul	f2 f6 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_17202
	addi	r6 r0 0
	return
L_else_17202 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_17205
	fsqrt	f2 f2
	fsub	f3 f5 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_17203
L_else_17205 : 
	fsqrt	f2 f2
	fadd	f3 f5 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_17203 : 
	addi	r6 r0 1
	return
L_solver_fast_2113 : 
	ldi	r9 r7 1970
	fldi	f3 r8 0
	ldi	r6 r9 5
	fldi	f2 r6 0
	fsub	f6 f3 f2
	fldi	f3 r8 1
	ldi	r6 r9 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r8 2
	ldi	r6 r9 5
	fldi	f2 r6 2
	fsub	f7 f3 f2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r7 r1 0
	ldi	r8 r9 1
	bne	r8 r4 L_else_17208
	ldi	r8 r10 0
	jump	L_solver_rect_fast_2094
L_else_17208 : 
	addi	r6 r0 2
	bne	r8 r6 L_else_17210
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_17212
	addi	r6 r0 0
	return
L_else_17212 : 
	fldi	f2 r7 1
	fmul	f3 f2 f6
	fldi	f2 r7 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	return
L_else_17210 : 
	fldi	f9 r7 0
	fbne	f9 f0 L_else_17214
	addi	r6 r0 0
	return
L_else_17214 : 
	fldi	f2 r7 1
	fmul	f3 f2 f6
	fldi	f2 r7 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f7
	fadd	f8 f3 f2
	fmul	f3 f6 f6
	ldi	r6 r9 4
	fldi	f2 r6 0
	fmul	f3 f3 f2
	fmul	f4 f5 f5
	ldi	r6 r9 4
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r9 4
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	ldi	r6 r9 3
	bne	r6 r0 L_else_17217
	jump	L_cont_17215
L_else_17217 : 
	fmul	f4 f5 f7
	ldi	r6 r9 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f7 f6
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f5
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_17215 : 
	ldi	r6 r9 1
	addi	r8 r0 3
	bne	r6 r8 L_else_17220
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_17218
L_else_17220 : 
L_cont_17218 : 
	fmul	f3 f8 f8
	fmul	f2 f9 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_17222
	addi	r6 r0 0
	return
L_else_17222 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_17225
	fsqrt	f2 f2
	fsub	f2 f8 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_17223
L_else_17225 : 
	fsqrt	f2 f2
	fadd	f2 f8 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_17223 : 
	addi	r6 r0 1
	return
L_solver_fast2_2131 : 
	ldi	r9 r7 1970
	ldi	r8 r9 10
	fldi	f6 r8 0
	fldi	f5 r8 1
	fldi	f7 r8 2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r7 r1 0
	ldi	r6 r9 1
	bne	r6 r4 L_else_17228
	ldi	r8 r10 0
	jump	L_solver_rect_fast_2094
L_else_17228 : 
	addi	r10 r0 2
	bne	r6 r10 L_else_17230
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_17232
	addi	r6 r0 0
	return
L_else_17232 : 
	fldi	f3 r7 0
	fldi	f2 r8 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	return
L_else_17230 : 
	fldi	f8 r7 0
	fbne	f8 f0 L_else_17234
	addi	r6 r0 0
	return
L_else_17234 : 
	fldi	f2 r7 1
	fmul	f3 f2 f6
	fldi	f2 r7 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r8 3
	fmul	f3 f4 f4
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_17236
	addi	r6 r0 0
	return
L_else_17236 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_17239
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r7 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_17237
L_else_17239 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r7 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_17237 : 
	addi	r6 r0 1
	return
L_setup_rect_table_2134 : 
	addi	r6 r0 6
	fldi	f2 r0 26
	call	min_caml_create_float_array
	fldi	f2 r10 0
	fbne	f2 f0 L_else_17243
	fldi	f2 r0 26
	fsti	f2 r6 1
	jump	L_cont_17241
L_else_17243 : 
	ldi	r9 r8 6
	fldi	f2 r10 0
	fbgt	f0 f2 L_else_17264
	addi	r7 r0 0
	jump	L_cont_17262
L_else_17264 : 
	addi	r7 r0 1
L_cont_17262 : 
	xor	r9 r9 r7
	ldi	r7 r8 4
	fldi	f2 r7 0
	bne	r9 r0 L_else_17267
	fsub	f2 f0 f2
	jump	L_cont_17265
L_else_17267 : 
L_cont_17265 : 
	fsti	f2 r6 0
	fldi	f3 r0 12
	fldi	f2 r10 0
	fdiv	f2 f3 f2
	fsti	f2 r6 1
L_cont_17241 : 
	fldi	f2 r10 1
	fbne	f2 f0 L_else_17246
	fldi	f2 r0 26
	fsti	f2 r6 3
	jump	L_cont_17244
L_else_17246 : 
	ldi	r7 r8 6
	fldi	f2 r10 1
	fbgt	f0 f2 L_else_17258
	addi	r9 r0 0
	jump	L_cont_17256
L_else_17258 : 
	addi	r9 r0 1
L_cont_17256 : 
	xor	r7 r7 r9
	ldi	r9 r8 4
	fldi	f2 r9 1
	bne	r7 r0 L_else_17261
	fsub	f2 f0 f2
	jump	L_cont_17259
L_else_17261 : 
L_cont_17259 : 
	fsti	f2 r6 2
	fldi	f2 r0 12
	fldi	f3 r10 1
	fdiv	f2 f2 f3
	fsti	f2 r6 3
L_cont_17244 : 
	fldi	f2 r10 2
	fbne	f2 f0 L_else_17249
	fldi	f2 r0 26
	fsti	f2 r6 5
	jump	L_cont_17247
L_else_17249 : 
	ldi	r9 r8 6
	fldi	f2 r10 2
	fbgt	f0 f2 L_else_17252
	addi	r7 r0 0
	jump	L_cont_17250
L_else_17252 : 
	addi	r7 r0 1
L_cont_17250 : 
	xor	r9 r9 r7
	ldi	r7 r8 4
	fldi	f2 r7 2
	bne	r9 r0 L_else_17255
	fsub	f2 f0 f2
	jump	L_cont_17253
L_else_17255 : 
L_cont_17253 : 
	fsti	f2 r6 4
	fldi	f2 r0 12
	fldi	f3 r10 2
	fdiv	f2 f2 f3
	fsti	f2 r6 5
L_cont_17247 : 
	return
L_setup_surface_table_2137 : 
	addi	r6 r0 4
	fldi	f2 r0 26
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
	fbgt	f3 f0 L_else_17271
	fldi	f2 r0 26
	fsti	f2 r6 0
	jump	L_cont_17269
L_else_17271 : 
	fldi	f2 r0 28
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
L_cont_17269 : 
	return
L_setup_second_table_2140 : 
	addi	r6 r0 5
	fldi	f2 r0 26
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
	bne	r7 r0 L_else_17275
	jump	L_cont_17273
L_else_17275 : 
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
L_cont_17273 : 
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
	bne	r7 r0 L_else_17278
	fsti	f8 r6 1
	fsti	f7 r6 2
	fsti	f6 r6 3
	jump	L_cont_17276
L_else_17278 : 
	fldi	f4 r10 2
	ldi	r7 r8 9
	fldi	f3 r7 1
	fmul	f5 f4 f3
	fldi	f4 r10 1
	ldi	r7 r8 9
	fldi	f3 r7 2
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 29
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
	fldi	f3 r0 29
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
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f6 f3
	fsti	f3 r6 3
L_cont_17276 : 
	fbne	f2 f0 L_else_17281
	jump	L_cont_17279
L_else_17281 : 
	fldi	f3 r0 12
	fdiv	f2 f3 f2
	fsti	f2 r6 4
L_cont_17279 : 
	return
L_iter_setup_dirvec_constants_2143 : 
	bgt	r0 r12 L_else_17284
	ldi	r8 r12 1970
	ldi	r10 r11 1
	ldi	r13 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_17287
	addi	r6 r0 6
	fldi	f2 r0 26
	call	min_caml_create_float_array
	fldi	f2 r13 0
	fbne	f2 f0 L_else_17297
	fldi	f2 r0 26
	fsti	f2 r6 1
	jump	L_cont_17295
L_else_17297 : 
	ldi	r9 r8 6
	fldi	f2 r13 0
	fbgt	f0 f2 L_else_17318
	addi	r7 r0 0
	jump	L_cont_17316
L_else_17318 : 
	addi	r7 r0 1
L_cont_17316 : 
	xor	r9 r9 r7
	ldi	r7 r8 4
	fldi	f2 r7 0
	bne	r9 r0 L_else_17321
	fsub	f2 f0 f2
	jump	L_cont_17319
L_else_17321 : 
L_cont_17319 : 
	fsti	f2 r6 0
	fldi	f3 r0 12
	fldi	f2 r13 0
	fdiv	f2 f3 f2
	fsti	f2 r6 1
L_cont_17295 : 
	fldi	f2 r13 1
	fbne	f2 f0 L_else_17300
	fldi	f2 r0 26
	fsti	f2 r6 3
	jump	L_cont_17298
L_else_17300 : 
	ldi	r7 r8 6
	fldi	f2 r13 1
	fbgt	f0 f2 L_else_17312
	addi	r9 r0 0
	jump	L_cont_17310
L_else_17312 : 
	addi	r9 r0 1
L_cont_17310 : 
	xor	r7 r7 r9
	ldi	r9 r8 4
	fldi	f2 r9 1
	bne	r7 r0 L_else_17315
	fsub	f2 f0 f2
	jump	L_cont_17313
L_else_17315 : 
L_cont_17313 : 
	fsti	f2 r6 2
	fldi	f2 r0 12
	fldi	f3 r13 1
	fdiv	f2 f2 f3
	fsti	f2 r6 3
L_cont_17298 : 
	fldi	f2 r13 2
	fbne	f2 f0 L_else_17303
	fldi	f2 r0 26
	fsti	f2 r6 5
	jump	L_cont_17301
L_else_17303 : 
	ldi	r9 r8 6
	fldi	f2 r13 2
	fbgt	f0 f2 L_else_17306
	addi	r7 r0 0
	jump	L_cont_17304
L_else_17306 : 
	addi	r7 r0 1
L_cont_17304 : 
	xor	r9 r9 r7
	ldi	r7 r8 4
	fldi	f2 r7 2
	bne	r9 r0 L_else_17309
	fsub	f2 f0 f2
	jump	L_cont_17307
L_else_17309 : 
L_cont_17307 : 
	fsti	f2 r6 4
	fldi	f2 r0 12
	fldi	f3 r13 2
	fdiv	f2 f2 f3
	fsti	f2 r6 5
L_cont_17301 : 
	add	r1 r10 r12
	sti	r6 r1 0
	jump	L_cont_17285
L_else_17287 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_17323
	addi	r6 r0 4
	fldi	f2 r0 26
	call	min_caml_create_float_array
	fldi	f3 r13 0
	ldi	r7 r8 4
	fldi	f2 r7 0
	fmul	f4 f3 f2
	fldi	f3 r13 1
	ldi	r7 r8 4
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fldi	f4 r13 2
	ldi	r7 r8 4
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f3 f0 L_else_17326
	fldi	f2 r0 26
	fsti	f2 r6 0
	jump	L_cont_17324
L_else_17326 : 
	fldi	f2 r0 28
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
L_cont_17324 : 
	add	r1 r10 r12
	sti	r6 r1 0
	jump	L_cont_17285
L_else_17323 : 
	addi	r6 r0 5
	fldi	f2 r0 26
	call	min_caml_create_float_array
	fldi	f6 r13 0
	fldi	f7 r13 1
	fldi	f5 r13 2
	fmul	f3 f6 f6
	ldi	r7 r8 4
	fldi	f2 r7 0
	fmul	f3 f3 f2
	fmul	f4 f7 f7
	ldi	r7 r8 4
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r7 r8 4
	fldi	f2 r7 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	ldi	r7 r8 3
	bne	r7 r0 L_else_17329
	jump	L_cont_17327
L_else_17329 : 
	fmul	f4 f7 f5
	ldi	r7 r8 9
	fldi	f3 r7 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f5 f6
	ldi	r7 r8 9
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f7
	ldi	r7 r8 9
	fldi	f2 r7 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_17327 : 
	fldi	f4 r13 0
	ldi	r7 r8 4
	fldi	f3 r7 0
	fmul	f3 f4 f3
	fsub	f7 f0 f3
	fldi	f4 r13 1
	ldi	r7 r8 4
	fldi	f3 r7 1
	fmul	f3 f4 f3
	fsub	f8 f0 f3
	fldi	f4 r13 2
	ldi	r7 r8 4
	fldi	f3 r7 2
	fmul	f3 f4 f3
	fsub	f6 f0 f3
	fsti	f2 r6 0
	ldi	r7 r8 3
	bne	r7 r0 L_else_17332
	fsti	f7 r6 1
	fsti	f8 r6 2
	fsti	f6 r6 3
	jump	L_cont_17330
L_else_17332 : 
	fldi	f4 r13 2
	ldi	r7 r8 9
	fldi	f3 r7 1
	fmul	f5 f4 f3
	fldi	f4 r13 1
	ldi	r7 r8 9
	fldi	f3 r7 2
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f7 f3
	fsti	f3 r6 1
	fldi	f4 r13 2
	ldi	r7 r8 9
	fldi	f3 r7 0
	fmul	f4 f4 f3
	fldi	f5 r13 0
	ldi	r7 r8 9
	fldi	f3 r7 2
	fmul	f3 f5 f3
	fadd	f4 f4 f3
	fldi	f3 r0 29
	fdiv	f3 f4 f3
	fsub	f3 f8 f3
	fsti	f3 r6 2
	fldi	f4 r13 1
	ldi	r7 r8 9
	fldi	f3 r7 0
	fmul	f5 f4 f3
	fldi	f4 r13 0
	ldi	r7 r8 9
	fldi	f3 r7 1
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f6 f3
	fsti	f3 r6 3
L_cont_17330 : 
	fbne	f2 f0 L_else_17335
	jump	L_cont_17333
L_else_17335 : 
	fldi	f3 r0 12
	fdiv	f2 f3 f2
	fsti	f2 r6 4
L_cont_17333 : 
	add	r1 r10 r12
	sti	r6 r1 0
L_cont_17285 : 
	addi	r12 r12 -1
	bgt	r0 r12 L_else_17289
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_17292
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_17290
L_else_17292 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_17294
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_17290
L_else_17294 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_17290 : 
	addi	r6 r12 -1
	add	r12 r0 r6
	jump	L_iter_setup_dirvec_constants_2143
L_else_17289 : 
	return
L_else_17284 : 
	return
L_setup_startp_constants_2148 : 
	bgt	r0 r9 L_else_17338
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
	bne	r7 r6 L_else_17341
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
	jump	L_cont_17339
L_else_17341 : 
	addi	r6 r0 2
	bgt	r7 r6 L_else_17343
	jump	L_cont_17339
L_else_17343 : 
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
	bne	r6 r0 L_else_17346
	jump	L_cont_17344
L_else_17346 : 
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
L_cont_17344 : 
	addi	r6 r0 3
	bne	r7 r6 L_else_17349
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_17347
L_else_17349 : 
L_cont_17347 : 
	fsti	f2 r10 3
L_cont_17339 : 
	addi	r6 r9 -1
	add	r9 r0 r6
	jump	L_setup_startp_constants_2148
L_else_17338 : 
	return
L_is_second_outside_2163 : 
	fmul	f3 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f3 f2
	fmul	f4 f6 f6
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f7
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_17353
	jump	L_cont_17351
L_else_17353 : 
	fmul	f4 f6 f7
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f7 f5
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f6
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_17351 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_17356
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_17354
L_else_17356 : 
L_cont_17354 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_17359
	addi	r6 r0 0
	jump	L_cont_17357
L_else_17359 : 
	addi	r6 r0 1
L_cont_17357 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	return
L_is_outside_2168 : 
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f5 f3 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f4 f4 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f3 f6 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_17362
	fbgt	f0 f5 L_else_17365
	fadd	f2 f0 f5
	jump	L_cont_17363
L_else_17365 : 
	fsub	f2 f0 f5
L_cont_17363 : 
	ldi	r6 r8 4
	fldi	f5 r6 0
	fbgt	f5 f2 L_else_17368
	addi	r6 r0 0
	jump	L_cont_17366
L_else_17368 : 
	fbgt	f0 f4 L_else_17373
	fadd	f2 f0 f4
	jump	L_cont_17371
L_else_17373 : 
	fsub	f2 f0 f4
L_cont_17371 : 
	ldi	r6 r8 4
	fldi	f4 r6 1
	fbgt	f4 f2 L_else_17375
	addi	r6 r0 0
	jump	L_cont_17366
L_else_17375 : 
	fbgt	f0 f3 L_else_17378
	fadd	f2 f0 f3
	jump	L_cont_17376
L_else_17378 : 
	fsub	f2 f0 f3
L_cont_17376 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_17380
	addi	r6 r0 0
	jump	L_cont_17366
L_else_17380 : 
	addi	r6 r0 1
L_cont_17366 : 
	bne	r6 r0 L_else_17370
	ldi	r6 r8 6
	sub	r6 r4 r6
	return
L_else_17370 : 
	ldi	r6 r8 6
	return
L_else_17362 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_17382
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f5 f2 f5
	fldi	f2 r6 1
	fmul	f2 f2 f4
	fadd	f4 f5 f2
	fldi	f2 r6 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_17385
	addi	r6 r0 0
	jump	L_cont_17383
L_else_17385 : 
	addi	r6 r0 1
L_cont_17383 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	return
L_else_17382 : 
	fmul	f6 f5 f5
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f7 f6 f2
	fmul	f6 f4 f4
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f6 f7 f2
	fmul	f7 f3 f3
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f7 f2
	fadd	f2 f6 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else_17388
	jump	L_cont_17386
L_else_17388 : 
	fmul	f7 f4 f3
	ldi	r6 r8 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f3 f3 f5
	ldi	r6 r8 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f6 f2
	fmul	f4 f5 f4
	ldi	r6 r8 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_17386 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_17391
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_17389
L_else_17391 : 
L_cont_17389 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_17394
	addi	r6 r0 0
	jump	L_cont_17392
L_else_17394 : 
	addi	r6 r0 1
L_cont_17392 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	return
L_check_all_inside_2173 : 
	add	r1 r9 r8
	ldi	r6 r1 0
	bne	r6 r5 L_else_17397
	addi	r6 r0 1
	return
L_else_17397 : 
	ldi	r10 r6 1970
	ldi	r6 r10 5
	fldi	f2 r6 0
	fsub	f5 f10 f2
	ldi	r6 r10 5
	fldi	f2 r6 1
	fsub	f3 f9 f2
	ldi	r6 r10 5
	fldi	f2 r6 2
	fsub	f4 f8 f2
	ldi	r7 r10 1
	bne	r7 r4 L_else_17400
	fbgt	f0 f5 L_else_17443
	fadd	f2 f0 f5
	jump	L_cont_17441
L_else_17443 : 
	fsub	f2 f0 f5
L_cont_17441 : 
	ldi	r6 r10 4
	fldi	f5 r6 0
	fbgt	f5 f2 L_else_17446
	addi	r6 r0 0
	jump	L_cont_17444
L_else_17446 : 
	fbgt	f0 f3 L_else_17451
	fadd	f2 f0 f3
	jump	L_cont_17449
L_else_17451 : 
	fsub	f2 f0 f3
L_cont_17449 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else_17453
	addi	r6 r0 0
	jump	L_cont_17444
L_else_17453 : 
	fbgt	f0 f4 L_else_17456
	fadd	f2 f0 f4
	jump	L_cont_17454
L_else_17456 : 
	fsub	f2 f0 f4
L_cont_17454 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else_17458
	addi	r6 r0 0
	jump	L_cont_17444
L_else_17458 : 
	addi	r6 r0 1
L_cont_17444 : 
	bne	r6 r0 L_else_17448
	ldi	r6 r10 6
	sub	r6 r4 r6
	jump	L_cont_17398
L_else_17448 : 
	ldi	r6 r10 6
	jump	L_cont_17398
L_else_17400 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_17460
	ldi	r6 r10 4
	fldi	f2 r6 0
	fmul	f5 f2 f5
	fldi	f2 r6 1
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	ldi	r7 r10 6
	fbgt	f0 f2 L_else_17463
	addi	r6 r0 0
	jump	L_cont_17461
L_else_17463 : 
	addi	r6 r0 1
L_cont_17461 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_17398
L_else_17460 : 
	fmul	f6 f5 f5
	ldi	r6 r10 4
	fldi	f2 r6 0
	fmul	f7 f6 f2
	fmul	f6 f3 f3
	ldi	r6 r10 4
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f6 f7 f2
	fmul	f7 f4 f4
	ldi	r6 r10 4
	fldi	f2 r6 2
	fmul	f2 f7 f2
	fadd	f2 f6 f2
	ldi	r6 r10 3
	bne	r6 r0 L_else_17466
	jump	L_cont_17464
L_else_17466 : 
	fmul	f7 f3 f4
	ldi	r6 r10 9
	fldi	f6 r6 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f4 f4 f5
	ldi	r6 r10 9
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f4 f6 f2
	fmul	f3 f5 f3
	ldi	r6 r10 9
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_17464 : 
	ldi	r7 r10 1
	addi	r6 r0 3
	bne	r7 r6 L_else_17469
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont_17467
L_else_17469 : 
L_cont_17467 : 
	ldi	r7 r10 6
	fbgt	f0 f2 L_else_17472
	addi	r6 r0 0
	jump	L_cont_17470
L_else_17472 : 
	addi	r6 r0 1
L_cont_17470 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont_17398 : 
	bne	r6 r0 L_else_17402
	addi	r10 r8 1
	add	r1 r9 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_17404
	addi	r6 r0 1
	return
L_else_17404 : 
	ldi	r8 r6 1970
	fadd	f3 f0 f10
	fadd	f4 f0 f9
	fadd	f6 f0 f8
	call	L_is_outside_2168
	bne	r6 r0 L_else_17406
	addi	r10 r10 1
	add	r1 r9 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_17408
	addi	r6 r0 1
	return
L_else_17408 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f5 f10 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f6 f9 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f7 f8 f2
	ldi	r6 r8 1
	bne	r6 r4 L_else_17411
	fbgt	f0 f5 L_else_17420
	jump	L_cont_17418
L_else_17420 : 
	fsub	f5 f0 f5
L_cont_17418 : 
	ldi	r6 r8 4
	fldi	f2 r6 0
	fbgt	f2 f5 L_else_17423
	addi	r6 r0 0
	jump	L_cont_17421
L_else_17423 : 
	fbgt	f0 f6 L_else_17428
	jump	L_cont_17426
L_else_17428 : 
	fsub	f6 f0 f6
L_cont_17426 : 
	ldi	r6 r8 4
	fldi	f2 r6 1
	fbgt	f2 f6 L_else_17430
	addi	r6 r0 0
	jump	L_cont_17421
L_else_17430 : 
	fbgt	f0 f7 L_else_17433
	jump	L_cont_17431
L_else_17433 : 
	fsub	f7 f0 f7
L_cont_17431 : 
	ldi	r6 r8 4
	fldi	f2 r6 2
	fbgt	f2 f7 L_else_17435
	addi	r6 r0 0
	jump	L_cont_17421
L_else_17435 : 
	addi	r6 r0 1
L_cont_17421 : 
	bne	r6 r0 L_else_17425
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_17409
L_else_17425 : 
	ldi	r6 r8 6
	jump	L_cont_17409
L_else_17411 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_17437
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f5
	fldi	f2 r6 1
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fldi	f3 r6 2
	fmul	f3 f3 f7
	fadd	f2 f2 f3
	ldi	r6 r8 6
	fbgt	f0 f2 L_else_17440
	addi	r7 r0 0
	jump	L_cont_17438
L_else_17440 : 
	addi	r7 r0 1
L_cont_17438 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
	jump	L_cont_17409
L_else_17437 : 
	call	L_is_second_outside_2163
L_cont_17409 : 
	bne	r6 r0 L_else_17413
	addi	r10 r10 1
	add	r1 r9 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else_17415
	addi	r6 r0 1
	return
L_else_17415 : 
	ldi	r8 r6 1970
	fadd	f3 f0 f10
	fadd	f4 f0 f9
	fadd	f6 f0 f8
	call	L_is_outside_2168
	bne	r6 r0 L_else_17417
	addi	r6 r10 1
	add	r8 r0 r6
	jump	L_check_all_inside_2173
L_else_17417 : 
	addi	r6 r0 0
	return
L_else_17413 : 
	addi	r6 r0 0
	return
L_else_17406 : 
	addi	r6 r0 0
	return
L_else_17402 : 
	addi	r6 r0 0
	return
L_shadow_check_and_group_2179 : 
	add	r1 r11 r12
	ldi	r6 r1 0
	bne	r6 r5 L_else_17475
	addi	r6 r0 0
	return
L_else_17475 : 
	add	r1 r11 r12
	ldi	r10 r1 0
	addi	r13 r0 1905
	ldi	r9 r10 1970
	fldi	f3 r0 1042
	ldi	r6 r9 5
	fldi	f2 r6 0
	fsub	f6 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r9 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r9 5
	fldi	f2 r6 2
	fsub	f7 f3 f2
	ldi	r6 r13 1
	add	r1 r6 r10
	ldi	r7 r1 0
	ldi	r8 r9 1
	bne	r8 r4 L_else_17478
	ldi	r8 r13 0
	call	L_solver_rect_fast_2094
	jump	L_cont_17476
L_else_17478 : 
	addi	r6 r0 2
	bne	r8 r6 L_else_17530
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_17532
	addi	r6 r0 0
	jump	L_cont_17476
L_else_17532 : 
	fldi	f2 r7 1
	fmul	f3 f2 f6
	fldi	f2 r7 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_17476
L_else_17530 : 
	add	r8 r0 r7
	fadd	f8 f0 f5
	fadd	f9 f0 f7
	fadd	f7 f0 f6
	call	L_solver_second_fast_2107
L_cont_17476 : 
	fldi	f3 r0 1073
	bne	r6 r0 L_else_17481
	addi	r6 r0 0
	jump	L_cont_17479
L_else_17481 : 
	fldi	f2 r0 30
	fbgt	f2 f3 L_else_17528
	addi	r6 r0 0
	jump	L_cont_17479
L_else_17528 : 
	addi	r6 r0 1
L_cont_17479 : 
	bne	r6 r0 L_else_17483
	ldi	r6 r10 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_17485
	addi	r6 r0 0
	return
L_else_17485 : 
	addi	r6 r12 1
	add	r12 r0 r6
	jump	L_shadow_check_and_group_2179
L_else_17483 : 
	fldi	f2 r0 31
	fadd	f3 f3 f2
	fldi	f2 r0 1039
	fmul	f2 f2 f3
	fldi	f4 r0 1042
	fadd	f10 f2 f4
	fldi	f2 r0 1040
	fmul	f2 f2 f3
	fldi	f4 r0 1043
	fadd	f9 f2 f4
	fldi	f2 r0 1041
	fmul	f2 f2 f3
	fldi	f3 r0 1044
	fadd	f8 f2 f3
	addi	r6 r0 0
	add	r1 r11 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17488
	addi	r6 r0 1
	jump	L_cont_17486
L_else_17488 : 
	ldi	r8 r6 1970
	fadd	f3 f0 f10
	fadd	f4 f0 f9
	fadd	f6 f0 f8
	call	L_is_outside_2168
	bne	r6 r0 L_else_17492
	addi	r6 r0 1
	add	r1 r11 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17494
	addi	r6 r0 1
	jump	L_cont_17486
L_else_17494 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f5 f10 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f6 f9 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f7 f8 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_17497
	fbgt	f0 f5 L_else_17506
	jump	L_cont_17504
L_else_17506 : 
	fsub	f5 f0 f5
L_cont_17504 : 
	ldi	r6 r8 4
	fldi	f2 r6 0
	fbgt	f2 f5 L_else_17509
	addi	r6 r0 0
	jump	L_cont_17507
L_else_17509 : 
	fbgt	f0 f6 L_else_17514
	jump	L_cont_17512
L_else_17514 : 
	fsub	f6 f0 f6
L_cont_17512 : 
	ldi	r6 r8 4
	fldi	f2 r6 1
	fbgt	f2 f6 L_else_17516
	addi	r6 r0 0
	jump	L_cont_17507
L_else_17516 : 
	fbgt	f0 f7 L_else_17519
	jump	L_cont_17517
L_else_17519 : 
	fsub	f7 f0 f7
L_cont_17517 : 
	ldi	r6 r8 4
	fldi	f2 r6 2
	fbgt	f2 f7 L_else_17521
	addi	r6 r0 0
	jump	L_cont_17507
L_else_17521 : 
	addi	r6 r0 1
L_cont_17507 : 
	bne	r6 r0 L_else_17511
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_17495
L_else_17511 : 
	ldi	r6 r8 6
	jump	L_cont_17495
L_else_17497 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_17523
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f3 f2 f5
	fldi	f2 r6 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_17526
	addi	r6 r0 0
	jump	L_cont_17524
L_else_17526 : 
	addi	r6 r0 1
L_cont_17524 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_17495
L_else_17523 : 
	call	L_is_second_outside_2163
L_cont_17495 : 
	bne	r6 r0 L_else_17499
	addi	r6 r0 2
	add	r1 r11 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17501
	addi	r6 r0 1
	jump	L_cont_17486
L_else_17501 : 
	ldi	r8 r6 1970
	fadd	f3 f0 f10
	fadd	f4 f0 f9
	fadd	f6 f0 f8
	call	L_is_outside_2168
	bne	r6 r0 L_else_17503
	addi	r8 r0 3
	add	r9 r0 r11
	call	L_check_all_inside_2173
	jump	L_cont_17486
L_else_17503 : 
	addi	r6 r0 0
	jump	L_cont_17486
L_else_17499 : 
	addi	r6 r0 0
	jump	L_cont_17486
L_else_17492 : 
	addi	r6 r0 0
L_cont_17486 : 
	bne	r6 r0 L_else_17490
	addi	r6 r12 1
	add	r12 r0 r6
	jump	L_shadow_check_and_group_2179
L_else_17490 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_group_2182 : 
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_17535
	addi	r6 r0 0
	return
L_else_17535 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17537
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_17539
	addi	r6 r0 0
	return
L_else_17539 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17541
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_17543
	addi	r6 r0 0
	return
L_else_17543 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17545
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_17547
	addi	r6 r0 0
	return
L_else_17547 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17549
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_17551
	addi	r6 r0 0
	return
L_else_17551 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17553
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_17555
	addi	r6 r0 0
	return
L_else_17555 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17557
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_17559
	addi	r6 r0 0
	return
L_else_17559 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17561
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r6 r1 0
	bne	r6 r5 L_else_17563
	addi	r6 r0 0
	return
L_else_17563 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17565
	addi	r6 r15 1
	add	r15 r0 r6
	jump	L_shadow_check_one_or_group_2182
L_else_17565 : 
	addi	r6 r0 1
	return
L_else_17561 : 
	addi	r6 r0 1
	return
L_else_17557 : 
	addi	r6 r0 1
	return
L_else_17553 : 
	addi	r6 r0 1
	return
L_else_17549 : 
	addi	r6 r0 1
	return
L_else_17545 : 
	addi	r6 r0 1
	return
L_else_17541 : 
	addi	r6 r0 1
	return
L_else_17537 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_matrix_2185 : 
	add	r1 r16 r17
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_17568
	addi	r6 r0 0
	return
L_else_17568 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_17571
	addi	r6 r0 1
	jump	L_cont_17569
L_else_17571 : 
	addi	r10 r0 1905
	ldi	r9 r7 1970
	fldi	f3 r0 1042
	ldi	r6 r9 5
	fldi	f2 r6 0
	fsub	f6 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r9 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r9 5
	fldi	f2 r6 2
	fsub	f7 f3 f2
	ldi	r6 r10 1
	add	r1 r6 r7
	ldi	r7 r1 0
	ldi	r8 r9 1
	bne	r8 r4 L_else_17737
	ldi	r8 r10 0
	call	L_solver_rect_fast_2094
	jump	L_cont_17735
L_else_17737 : 
	addi	r6 r0 2
	bne	r8 r6 L_else_17774
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_17776
	addi	r6 r0 0
	jump	L_cont_17735
L_else_17776 : 
	fldi	f2 r7 1
	fmul	f3 f2 f6
	fldi	f2 r7 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_17735
L_else_17774 : 
	add	r8 r0 r7
	fadd	f8 f0 f5
	fadd	f9 f0 f7
	fadd	f7 f0 f6
	call	L_solver_second_fast_2107
L_cont_17735 : 
	bne	r6 r0 L_else_17739
	addi	r6 r0 0
	jump	L_cont_17569
L_else_17739 : 
	fldi	f3 r0 1073
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_17741
	addi	r6 r0 0
	jump	L_cont_17569
L_else_17741 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17744
	addi	r6 r0 0
	jump	L_cont_17742
L_else_17744 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17748
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17750
	addi	r6 r0 0
	jump	L_cont_17742
L_else_17750 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17752
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17754
	addi	r6 r0 0
	jump	L_cont_17742
L_else_17754 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17756
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17758
	addi	r6 r0 0
	jump	L_cont_17742
L_else_17758 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17760
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17762
	addi	r6 r0 0
	jump	L_cont_17742
L_else_17762 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17764
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17766
	addi	r6 r0 0
	jump	L_cont_17742
L_else_17766 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17768
	addi	r6 r0 7
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17770
	addi	r6 r0 0
	jump	L_cont_17742
L_else_17770 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17772
	addi	r15 r0 8
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17742
L_else_17772 : 
	addi	r6 r0 1
	jump	L_cont_17742
L_else_17768 : 
	addi	r6 r0 1
	jump	L_cont_17742
L_else_17764 : 
	addi	r6 r0 1
	jump	L_cont_17742
L_else_17760 : 
	addi	r6 r0 1
	jump	L_cont_17742
L_else_17756 : 
	addi	r6 r0 1
	jump	L_cont_17742
L_else_17752 : 
	addi	r6 r0 1
	jump	L_cont_17742
L_else_17748 : 
	addi	r6 r0 1
L_cont_17742 : 
	bne	r6 r0 L_else_17746
	addi	r6 r0 0
	jump	L_cont_17569
L_else_17746 : 
	addi	r6 r0 1
L_cont_17569 : 
	bne	r6 r0 L_else_17573
	addi	r17 r17 1
	add	r1 r16 r17
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_17575
	addi	r6 r0 0
	return
L_else_17575 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_17578
	addi	r6 r0 1
	jump	L_cont_17576
L_else_17578 : 
	addi	r10 r0 1905
	addi	r8 r0 1042
	call	L_solver_fast_2113
	bne	r6 r0 L_else_17609
	addi	r6 r0 0
	jump	L_cont_17576
L_else_17609 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_17611
	addi	r6 r0 0
	jump	L_cont_17576
L_else_17611 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17614
	addi	r6 r0 0
	jump	L_cont_17612
L_else_17614 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17618
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17620
	addi	r6 r0 0
	jump	L_cont_17612
L_else_17620 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17622
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17624
	addi	r6 r0 0
	jump	L_cont_17612
L_else_17624 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17626
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17628
	addi	r6 r0 0
	jump	L_cont_17612
L_else_17628 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17630
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17632
	addi	r6 r0 0
	jump	L_cont_17612
L_else_17632 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17634
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17636
	addi	r6 r0 0
	jump	L_cont_17612
L_else_17636 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17638
	addi	r15 r0 7
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17612
L_else_17638 : 
	addi	r6 r0 1
	jump	L_cont_17612
L_else_17634 : 
	addi	r6 r0 1
	jump	L_cont_17612
L_else_17630 : 
	addi	r6 r0 1
	jump	L_cont_17612
L_else_17626 : 
	addi	r6 r0 1
	jump	L_cont_17612
L_else_17622 : 
	addi	r6 r0 1
	jump	L_cont_17612
L_else_17618 : 
	addi	r6 r0 1
L_cont_17612 : 
	bne	r6 r0 L_else_17616
	addi	r6 r0 0
	jump	L_cont_17576
L_else_17616 : 
	addi	r6 r0 1
L_cont_17576 : 
	bne	r6 r0 L_else_17580
	addi	r6 r17 1
	add	r17 r0 r6
	jump	L_shadow_check_one_or_matrix_2185
L_else_17580 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17583
	addi	r6 r0 0
	jump	L_cont_17581
L_else_17583 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17587
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17589
	addi	r6 r0 0
	jump	L_cont_17581
L_else_17589 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17591
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17593
	addi	r6 r0 0
	jump	L_cont_17581
L_else_17593 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17595
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17597
	addi	r6 r0 0
	jump	L_cont_17581
L_else_17597 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17599
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17601
	addi	r6 r0 0
	jump	L_cont_17581
L_else_17601 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17603
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17605
	addi	r6 r0 0
	jump	L_cont_17581
L_else_17605 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17607
	addi	r15 r0 7
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17581
L_else_17607 : 
	addi	r6 r0 1
	jump	L_cont_17581
L_else_17603 : 
	addi	r6 r0 1
	jump	L_cont_17581
L_else_17599 : 
	addi	r6 r0 1
	jump	L_cont_17581
L_else_17595 : 
	addi	r6 r0 1
	jump	L_cont_17581
L_else_17591 : 
	addi	r6 r0 1
	jump	L_cont_17581
L_else_17587 : 
	addi	r6 r0 1
L_cont_17581 : 
	bne	r6 r0 L_else_17585
	addi	r6 r17 1
	add	r17 r0 r6
	jump	L_shadow_check_one_or_matrix_2185
L_else_17585 : 
	addi	r6 r0 1
	return
L_else_17573 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17641
	addi	r6 r0 0
	jump	L_cont_17639
L_else_17641 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17710
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17712
	addi	r6 r0 0
	jump	L_cont_17639
L_else_17712 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17714
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17716
	addi	r6 r0 0
	jump	L_cont_17639
L_else_17716 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17718
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17720
	addi	r6 r0 0
	jump	L_cont_17639
L_else_17720 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17722
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17724
	addi	r6 r0 0
	jump	L_cont_17639
L_else_17724 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17726
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17728
	addi	r6 r0 0
	jump	L_cont_17639
L_else_17728 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17730
	addi	r6 r0 7
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17732
	addi	r6 r0 0
	jump	L_cont_17639
L_else_17732 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17734
	addi	r15 r0 8
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17639
L_else_17734 : 
	addi	r6 r0 1
	jump	L_cont_17639
L_else_17730 : 
	addi	r6 r0 1
	jump	L_cont_17639
L_else_17726 : 
	addi	r6 r0 1
	jump	L_cont_17639
L_else_17722 : 
	addi	r6 r0 1
	jump	L_cont_17639
L_else_17718 : 
	addi	r6 r0 1
	jump	L_cont_17639
L_else_17714 : 
	addi	r6 r0 1
	jump	L_cont_17639
L_else_17710 : 
	addi	r6 r0 1
L_cont_17639 : 
	bne	r6 r0 L_else_17643
	addi	r17 r17 1
	add	r1 r16 r17
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_17645
	addi	r6 r0 0
	return
L_else_17645 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_17648
	addi	r6 r0 1
	jump	L_cont_17646
L_else_17648 : 
	addi	r10 r0 1905
	addi	r8 r0 1042
	call	L_solver_fast_2113
	bne	r6 r0 L_else_17679
	addi	r6 r0 0
	jump	L_cont_17646
L_else_17679 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_17681
	addi	r6 r0 0
	jump	L_cont_17646
L_else_17681 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17684
	addi	r6 r0 0
	jump	L_cont_17682
L_else_17684 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17688
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17690
	addi	r6 r0 0
	jump	L_cont_17682
L_else_17690 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17692
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17694
	addi	r6 r0 0
	jump	L_cont_17682
L_else_17694 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17696
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17698
	addi	r6 r0 0
	jump	L_cont_17682
L_else_17698 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17700
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17702
	addi	r6 r0 0
	jump	L_cont_17682
L_else_17702 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17704
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17706
	addi	r6 r0 0
	jump	L_cont_17682
L_else_17706 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17708
	addi	r15 r0 7
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17682
L_else_17708 : 
	addi	r6 r0 1
	jump	L_cont_17682
L_else_17704 : 
	addi	r6 r0 1
	jump	L_cont_17682
L_else_17700 : 
	addi	r6 r0 1
	jump	L_cont_17682
L_else_17696 : 
	addi	r6 r0 1
	jump	L_cont_17682
L_else_17692 : 
	addi	r6 r0 1
	jump	L_cont_17682
L_else_17688 : 
	addi	r6 r0 1
L_cont_17682 : 
	bne	r6 r0 L_else_17686
	addi	r6 r0 0
	jump	L_cont_17646
L_else_17686 : 
	addi	r6 r0 1
L_cont_17646 : 
	bne	r6 r0 L_else_17650
	addi	r6 r17 1
	add	r17 r0 r6
	jump	L_shadow_check_one_or_matrix_2185
L_else_17650 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17653
	addi	r6 r0 0
	jump	L_cont_17651
L_else_17653 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17657
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17659
	addi	r6 r0 0
	jump	L_cont_17651
L_else_17659 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17661
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17663
	addi	r6 r0 0
	jump	L_cont_17651
L_else_17663 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17665
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17667
	addi	r6 r0 0
	jump	L_cont_17651
L_else_17667 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17669
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17671
	addi	r6 r0 0
	jump	L_cont_17651
L_else_17671 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17673
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17675
	addi	r6 r0 0
	jump	L_cont_17651
L_else_17675 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_17677
	addi	r15 r0 7
	add	r14 r0 r18
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_17651
L_else_17677 : 
	addi	r6 r0 1
	jump	L_cont_17651
L_else_17673 : 
	addi	r6 r0 1
	jump	L_cont_17651
L_else_17669 : 
	addi	r6 r0 1
	jump	L_cont_17651
L_else_17665 : 
	addi	r6 r0 1
	jump	L_cont_17651
L_else_17661 : 
	addi	r6 r0 1
	jump	L_cont_17651
L_else_17657 : 
	addi	r6 r0 1
L_cont_17651 : 
	bne	r6 r0 L_else_17655
	addi	r6 r17 1
	add	r17 r0 r6
	jump	L_shadow_check_one_or_matrix_2185
L_else_17655 : 
	addi	r6 r0 1
	return
L_else_17643 : 
	addi	r6 r0 1
	return
L_solve_each_element_2188 : 
	add	r1 r15 r16
	ldi	r14 r1 0
	bne	r14 r5 L_else_17779
	return
L_else_17779 : 
	ldi	r12 r14 1970
	fldi	f3 r0 1063
	ldi	r6 r12 5
	fldi	f2 r6 0
	fsub	f6 f3 f2
	fldi	f3 r0 1064
	ldi	r6 r12 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r0 1065
	ldi	r6 r12 5
	fldi	f2 r6 2
	fsub	f7 f3 f2
	ldi	r7 r12 1
	bne	r7 r4 L_else_17782
	add	r13 r0 r17
	call	L_solver_rect_2059
	add	r11 r0 r6
	jump	L_cont_17780
L_else_17782 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_17834
	ldi	r6 r12 4
	fldi	f2 r17 0
	fldi	f3 r6 0
	fmul	f3 f2 f3
	fldi	f4 r17 1
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r17 2
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fbgt	f4 f0 L_else_17836
	addi	r11 r0 0
	jump	L_cont_17780
L_else_17836 : 
	fldi	f2 r6 0
	fmul	f3 f2 f6
	fldi	f2 r6 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r11 r0 1
	jump	L_cont_17780
L_else_17834 : 
	add	r8 r0 r12
	add	r7 r0 r17
	fadd	f8 f0 f6
	fadd	f9 f0 f7
	fadd	f7 f0 f5
	call	L_solver_second_2084
	add	r11 r0 r6
L_cont_17780 : 
	bne	r11 r0 L_else_17784
	ldi	r6 r14 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_17786
	return
L_else_17786 : 
	addi	r6 r16 1
	add	r16 r0 r6
	jump	L_solve_each_element_2188
L_else_17784 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_17789
	jump	L_cont_17787
L_else_17789 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_17791
	jump	L_cont_17787
L_else_17791 : 
	fldi	f2 r0 31
	fadd	f13 f3 f2
	fldi	f2 r17 0
	fmul	f3 f2 f13
	fldi	f2 r0 1063
	fadd	f14 f3 f2
	fldi	f2 r17 1
	fmul	f3 f2 f13
	fldi	f2 r0 1064
	fadd	f12 f3 f2
	fldi	f2 r17 2
	fmul	f3 f2 f13
	fldi	f2 r0 1065
	fadd	f11 f3 f2
	addi	r6 r0 0
	add	r1 r15 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17794
	addi	r6 r0 1
	jump	L_cont_17792
L_else_17794 : 
	ldi	r8 r6 1970
	fadd	f3 f0 f14
	fadd	f4 f0 f12
	fadd	f6 f0 f11
	call	L_is_outside_2168
	bne	r6 r0 L_else_17798
	addi	r6 r0 1
	add	r1 r15 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17800
	addi	r6 r0 1
	jump	L_cont_17792
L_else_17800 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f5 f14 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f6 f12 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f7 f11 f2
	ldi	r6 r8 1
	bne	r6 r4 L_else_17803
	fbgt	f0 f5 L_else_17812
	jump	L_cont_17810
L_else_17812 : 
	fsub	f5 f0 f5
L_cont_17810 : 
	ldi	r6 r8 4
	fldi	f2 r6 0
	fbgt	f2 f5 L_else_17815
	addi	r6 r0 0
	jump	L_cont_17813
L_else_17815 : 
	fbgt	f0 f6 L_else_17820
	jump	L_cont_17818
L_else_17820 : 
	fsub	f6 f0 f6
L_cont_17818 : 
	ldi	r6 r8 4
	fldi	f2 r6 1
	fbgt	f2 f6 L_else_17822
	addi	r6 r0 0
	jump	L_cont_17813
L_else_17822 : 
	fbgt	f0 f7 L_else_17825
	jump	L_cont_17823
L_else_17825 : 
	fsub	f7 f0 f7
L_cont_17823 : 
	ldi	r6 r8 4
	fldi	f2 r6 2
	fbgt	f2 f7 L_else_17827
	addi	r6 r0 0
	jump	L_cont_17813
L_else_17827 : 
	addi	r6 r0 1
L_cont_17813 : 
	bne	r6 r0 L_else_17817
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_17801
L_else_17817 : 
	ldi	r6 r8 6
	jump	L_cont_17801
L_else_17803 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_17829
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f2 f2 f5
	fldi	f3 r6 1
	fmul	f3 f3 f6
	fadd	f3 f2 f3
	fldi	f2 r6 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_17832
	addi	r6 r0 0
	jump	L_cont_17830
L_else_17832 : 
	addi	r6 r0 1
L_cont_17830 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_17801
L_else_17829 : 
	call	L_is_second_outside_2163
L_cont_17801 : 
	bne	r6 r0 L_else_17805
	addi	r6 r0 2
	add	r1 r15 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17807
	addi	r6 r0 1
	jump	L_cont_17792
L_else_17807 : 
	ldi	r8 r6 1970
	fadd	f3 f0 f14
	fadd	f4 f0 f12
	fadd	f6 f0 f11
	call	L_is_outside_2168
	bne	r6 r0 L_else_17809
	addi	r8 r0 3
	add	r9 r0 r15
	fadd	f10 f0 f14
	fadd	f9 f0 f12
	fadd	f8 f0 f11
	call	L_check_all_inside_2173
	jump	L_cont_17792
L_else_17809 : 
	addi	r6 r0 0
	jump	L_cont_17792
L_else_17805 : 
	addi	r6 r0 0
	jump	L_cont_17792
L_else_17798 : 
	addi	r6 r0 0
L_cont_17792 : 
	bne	r6 r0 L_else_17796
	jump	L_cont_17787
L_else_17796 : 
	fsti	f13 r0 1082
	fsti	f14 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r14 r0 1045
	sti	r11 r0 1074
L_cont_17787 : 
	addi	r6 r16 1
	add	r16 r0 r6
	jump	L_solve_each_element_2188
L_solve_one_or_network_2192 : 
	add	r1 r18 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else_17839
	return
L_else_17839 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r19
	call	L_solve_each_element_2188
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else_17841
	return
L_else_17841 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r19
	call	L_solve_each_element_2188
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else_17843
	return
L_else_17843 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r19
	call	L_solve_each_element_2188
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else_17845
	return
L_else_17845 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r19
	call	L_solve_each_element_2188
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else_17847
	return
L_else_17847 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r19
	call	L_solve_each_element_2188
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else_17849
	return
L_else_17849 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r19
	call	L_solve_each_element_2188
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else_17851
	return
L_else_17851 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r19
	call	L_solve_each_element_2188
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else_17853
	return
L_else_17853 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r19
	call	L_solve_each_element_2188
	addi	r6 r20 1
	add	r20 r0 r6
	jump	L_solve_one_or_network_2192
L_trace_or_matrix_2196 : 
	add	r1 r21 r23
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_17856
	return
L_else_17856 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_17859
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17983
	jump	L_cont_17857
L_else_17983 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17985
	jump	L_cont_17857
L_else_17985 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17987
	jump	L_cont_17857
L_else_17987 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17989
	jump	L_cont_17857
L_else_17989 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17991
	jump	L_cont_17857
L_else_17991 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17993
	jump	L_cont_17857
L_else_17993 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 7
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17995
	jump	L_cont_17857
L_else_17995 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r20 r0 8
	add	r19 r0 r22
	call	L_solve_one_or_network_2192
	jump	L_cont_17857
L_else_17859 : 
	ldi	r12 r7 1970
	fldi	f3 r0 1063
	ldi	r6 r12 5
	fldi	f2 r6 0
	fsub	f6 f3 f2
	fldi	f3 r0 1064
	ldi	r6 r12 5
	fldi	f2 r6 1
	fsub	f5 f3 f2
	fldi	f3 r0 1065
	ldi	r6 r12 5
	fldi	f2 r6 2
	fsub	f7 f3 f2
	ldi	r7 r12 1
	bne	r7 r4 L_else_17998
	add	r13 r0 r22
	call	L_solver_rect_2059
	jump	L_cont_17996
L_else_17998 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18018
	ldi	r6 r12 4
	fldi	f2 r22 0
	fldi	f3 r6 0
	fmul	f3 f2 f3
	fldi	f4 r22 1
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r22 2
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fbgt	f4 f0 L_else_18020
	addi	r6 r0 0
	jump	L_cont_17996
L_else_18020 : 
	fldi	f2 r6 0
	fmul	f3 f2 f6
	fldi	f2 r6 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_17996
L_else_18018 : 
	add	r8 r0 r12
	add	r7 r0 r22
	fadd	f8 f0 f6
	fadd	f9 f0 f7
	fadd	f7 f0 f5
	call	L_solver_second_2084
L_cont_17996 : 
	bne	r6 r0 L_else_18000
	jump	L_cont_17857
L_else_18000 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_18002
	jump	L_cont_17857
L_else_18002 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18004
	jump	L_cont_17857
L_else_18004 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18006
	jump	L_cont_17857
L_else_18006 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18008
	jump	L_cont_17857
L_else_18008 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18010
	jump	L_cont_17857
L_else_18010 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18012
	jump	L_cont_17857
L_else_18012 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18014
	jump	L_cont_17857
L_else_18014 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 7
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18016
	jump	L_cont_17857
L_else_18016 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r20 r0 8
	add	r19 r0 r22
	call	L_solve_one_or_network_2192
L_cont_17857 : 
	addi	r23 r23 1
	add	r1 r21 r23
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_17861
	return
L_else_17861 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_17864
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17866
	jump	L_cont_17862
L_else_17866 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17868
	jump	L_cont_17862
L_else_17868 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17870
	jump	L_cont_17862
L_else_17870 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17872
	jump	L_cont_17862
L_else_17872 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17874
	jump	L_cont_17862
L_else_17874 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17876
	jump	L_cont_17862
L_else_17876 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r20 r0 7
	add	r19 r0 r22
	call	L_solve_one_or_network_2192
	jump	L_cont_17862
L_else_17864 : 
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
	bne	r7 r4 L_else_17879
	addi	r12 r0 0
	addi	r7 r0 1
	addi	r11 r0 2
	add	r1 r22 r12
	fldi	f2 r1 0
	fbne	f2 f0 L_else_17898
	addi	r6 r0 0
	jump	L_cont_17896
L_else_17898 : 
	ldi	r10 r8 4
	ldi	r6 r8 6
	add	r1 r22 r12
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_17945
	addi	r9 r0 0
	jump	L_cont_17943
L_else_17945 : 
	addi	r9 r0 1
L_cont_17943 : 
	xor	r6 r6 r9
	add	r1 r10 r12
	fldi	f2 r1 0
	bne	r6 r0 L_else_17948
	fsub	f2 f0 f2
	jump	L_cont_17946
L_else_17948 : 
L_cont_17946 : 
	fsub	f3 f2 f8
	add	r1 r22 r12
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r22 r7
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_17951
	jump	L_cont_17949
L_else_17951 : 
	fsub	f2 f0 f2
L_cont_17949 : 
	add	r1 r10 r7
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17953
	addi	r6 r0 0
	jump	L_cont_17896
L_else_17953 : 
	add	r1 r22 r11
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_17956
	jump	L_cont_17954
L_else_17956 : 
	fsub	f2 f0 f2
L_cont_17954 : 
	add	r1 r10 r11
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17958
	addi	r6 r0 0
	jump	L_cont_17896
L_else_17958 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_17896 : 
	bne	r6 r0 L_else_17900
	addi	r10 r0 1
	addi	r12 r0 2
	addi	r9 r0 0
	add	r1 r22 r10
	fldi	f2 r1 0
	fbne	f2 f0 L_else_17903
	addi	r6 r0 0
	jump	L_cont_17901
L_else_17903 : 
	ldi	r7 r8 4
	ldi	r11 r8 6
	add	r1 r22 r10
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_17929
	addi	r6 r0 0
	jump	L_cont_17927
L_else_17929 : 
	addi	r6 r0 1
L_cont_17927 : 
	xor	r6 r11 r6
	add	r1 r7 r10
	fldi	f2 r1 0
	bne	r6 r0 L_else_17932
	fsub	f2 f0 f2
	jump	L_cont_17930
L_else_17932 : 
L_cont_17930 : 
	fsub	f2 f2 f7
	add	r1 r22 r10
	fldi	f3 r1 0
	fdiv	f4 f2 f3
	add	r1 r22 r12
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else_17935
	jump	L_cont_17933
L_else_17935 : 
	fsub	f2 f0 f2
L_cont_17933 : 
	add	r1 r7 r12
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17937
	addi	r6 r0 0
	jump	L_cont_17901
L_else_17937 : 
	add	r1 r22 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_17940
	jump	L_cont_17938
L_else_17940 : 
	fsub	f2 f0 f2
L_cont_17938 : 
	add	r1 r7 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17942
	addi	r6 r0 0
	jump	L_cont_17901
L_else_17942 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_17901 : 
	bne	r6 r0 L_else_17905
	addi	r11 r0 2
	addi	r7 r0 0
	addi	r10 r0 1
	add	r1 r22 r11
	fldi	f2 r1 0
	fbne	f2 f0 L_else_17908
	addi	r6 r0 0
	jump	L_cont_17906
L_else_17908 : 
	ldi	r9 r8 4
	ldi	r6 r8 6
	add	r1 r22 r11
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_17913
	addi	r8 r0 0
	jump	L_cont_17911
L_else_17913 : 
	addi	r8 r0 1
L_cont_17911 : 
	xor	r6 r6 r8
	add	r1 r9 r11
	fldi	f2 r1 0
	bne	r6 r0 L_else_17916
	fsub	f2 f0 f2
	jump	L_cont_17914
L_else_17916 : 
L_cont_17914 : 
	fsub	f3 f2 f9
	add	r1 r22 r11
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r22 r7
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else_17919
	jump	L_cont_17917
L_else_17919 : 
	fsub	f2 f0 f2
L_cont_17917 : 
	add	r1 r9 r7
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17921
	addi	r6 r0 0
	jump	L_cont_17906
L_else_17921 : 
	add	r1 r22 r10
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_17924
	jump	L_cont_17922
L_else_17924 : 
	fsub	f2 f0 f2
L_cont_17922 : 
	add	r1 r9 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_17926
	addi	r6 r0 0
	jump	L_cont_17906
L_else_17926 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont_17906 : 
	bne	r6 r0 L_else_17910
	addi	r6 r0 0
	jump	L_cont_17877
L_else_17910 : 
	addi	r6 r0 3
	jump	L_cont_17877
L_else_17905 : 
	addi	r6 r0 2
	jump	L_cont_17877
L_else_17900 : 
	addi	r6 r0 1
	jump	L_cont_17877
L_else_17879 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_17960
	ldi	r6 r8 4
	fldi	f2 r22 0
	fldi	f3 r6 0
	fmul	f3 f2 f3
	fldi	f4 r22 1
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r22 2
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fbgt	f4 f0 L_else_17962
	addi	r6 r0 0
	jump	L_cont_17877
L_else_17962 : 
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
	jump	L_cont_17877
L_else_17960 : 
	fldi	f6 r22 0
	fldi	f10 r22 1
	fldi	f5 r22 2
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
	bne	r6 r0 L_else_17965
	fadd	f4 f0 f2
	jump	L_cont_17963
L_else_17965 : 
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
L_cont_17963 : 
	fbne	f4 f0 L_else_17967
	addi	r6 r0 0
	jump	L_cont_17877
L_else_17967 : 
	fldi	f12 r22 0
	fldi	f6 r22 1
	fldi	f11 r22 2
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
	bne	r6 r0 L_else_17970
	fadd	f3 f0 f2
	jump	L_cont_17968
L_else_17970 : 
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
	fldi	f5 r0 29
	fdiv	f3 f3 f5
	fadd	f3 f2 f3
L_cont_17968 : 
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
	bne	r6 r0 L_else_17973
	jump	L_cont_17971
L_else_17973 : 
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
L_cont_17971 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else_17976
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont_17974
L_else_17976 : 
L_cont_17974 : 
	fmul	f5 f3 f3
	fmul	f2 f4 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_17978
	addi	r6 r0 0
	jump	L_cont_17877
L_else_17978 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else_17981
	fsub	f2 f0 f2
	jump	L_cont_17979
L_else_17981 : 
L_cont_17979 : 
	fsub	f2 f2 f3
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r6 r0 1
L_cont_17877 : 
	bne	r6 r0 L_else_17881
	jump	L_cont_17862
L_else_17881 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_17883
	jump	L_cont_17862
L_else_17883 : 
	addi	r6 r0 1
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17885
	jump	L_cont_17862
L_else_17885 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 2
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17887
	jump	L_cont_17862
L_else_17887 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 3
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17889
	jump	L_cont_17862
L_else_17889 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 4
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17891
	jump	L_cont_17862
L_else_17891 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 5
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17893
	jump	L_cont_17862
L_else_17893 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r6 r0 6
	add	r1 r18 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_17895
	jump	L_cont_17862
L_else_17895 : 
	ldi	r15 r6 1083
	addi	r16 r0 0
	add	r17 r0 r22
	call	L_solve_each_element_2188
	addi	r20 r0 7
	add	r19 r0 r22
	call	L_solve_one_or_network_2192
L_cont_17862 : 
	addi	r6 r23 1
	add	r23 r0 r6
	jump	L_trace_or_matrix_2196
L_solve_each_element_fast_2202 : 
	ldi	r10 r12 0
	add	r1 r14 r13
	ldi	r11 r1 0
	bne	r11 r5 L_else_18023
	return
L_else_18023 : 
	ldi	r9 r11 1970
	ldi	r15 r9 10
	fldi	f6 r15 0
	fldi	f5 r15 1
	fldi	f7 r15 2
	ldi	r6 r12 1
	add	r1 r6 r11
	ldi	r7 r1 0
	ldi	r8 r9 1
	bne	r8 r4 L_else_18026
	ldi	r8 r12 0
	call	L_solver_rect_fast_2094
	add	r15 r0 r6
	jump	L_cont_18024
L_else_18026 : 
	addi	r6 r0 2
	bne	r8 r6 L_else_18078
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_18080
	addi	r15 r0 0
	jump	L_cont_18024
L_else_18080 : 
	fldi	f2 r7 0
	fldi	f3 r15 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r15 r0 1
	jump	L_cont_18024
L_else_18078 : 
	fldi	f8 r7 0
	fbne	f8 f0 L_else_18082
	addi	r15 r0 0
	jump	L_cont_18024
L_else_18082 : 
	fldi	f2 r7 1
	fmul	f3 f2 f6
	fldi	f2 r7 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r15 3
	fmul	f3 f4 f4
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_18084
	addi	r15 r0 0
	jump	L_cont_18024
L_else_18084 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_18087
	fsqrt	f2 f2
	fsub	f2 f4 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_18085
L_else_18087 : 
	fsqrt	f2 f2
	fadd	f2 f4 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_18085 : 
	addi	r15 r0 1
L_cont_18024 : 
	bne	r15 r0 L_else_18028
	ldi	r6 r11 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else_18030
	return
L_else_18030 : 
	addi	r6 r13 1
	add	r13 r0 r6
	jump	L_solve_each_element_fast_2202
L_else_18028 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_18033
	jump	L_cont_18031
L_else_18033 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_18035
	jump	L_cont_18031
L_else_18035 : 
	fldi	f2 r0 31
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
	addi	r6 r0 0
	add	r1 r14 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18038
	addi	r6 r0 1
	jump	L_cont_18036
L_else_18038 : 
	ldi	r8 r6 1970
	fadd	f3 f0 f13
	fadd	f4 f0 f11
	fadd	f6 f0 f12
	call	L_is_outside_2168
	bne	r6 r0 L_else_18042
	addi	r6 r0 1
	add	r1 r14 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18044
	addi	r6 r0 1
	jump	L_cont_18036
L_else_18044 : 
	ldi	r8 r6 1970
	ldi	r6 r8 5
	fldi	f2 r6 0
	fsub	f5 f13 f2
	ldi	r6 r8 5
	fldi	f2 r6 1
	fsub	f6 f11 f2
	ldi	r6 r8 5
	fldi	f2 r6 2
	fsub	f7 f12 f2
	ldi	r7 r8 1
	bne	r7 r4 L_else_18047
	fbgt	f0 f5 L_else_18056
	jump	L_cont_18054
L_else_18056 : 
	fsub	f5 f0 f5
L_cont_18054 : 
	ldi	r6 r8 4
	fldi	f2 r6 0
	fbgt	f2 f5 L_else_18059
	addi	r6 r0 0
	jump	L_cont_18057
L_else_18059 : 
	fbgt	f0 f6 L_else_18064
	jump	L_cont_18062
L_else_18064 : 
	fsub	f6 f0 f6
L_cont_18062 : 
	ldi	r6 r8 4
	fldi	f2 r6 1
	fbgt	f2 f6 L_else_18066
	addi	r6 r0 0
	jump	L_cont_18057
L_else_18066 : 
	fbgt	f0 f7 L_else_18069
	jump	L_cont_18067
L_else_18069 : 
	fsub	f7 f0 f7
L_cont_18067 : 
	ldi	r6 r8 4
	fldi	f2 r6 2
	fbgt	f2 f7 L_else_18071
	addi	r6 r0 0
	jump	L_cont_18057
L_else_18071 : 
	addi	r6 r0 1
L_cont_18057 : 
	bne	r6 r0 L_else_18061
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont_18045
L_else_18061 : 
	ldi	r6 r8 6
	jump	L_cont_18045
L_else_18047 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18073
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f2 f2 f5
	fldi	f3 r6 1
	fmul	f3 f3 f6
	fadd	f3 f2 f3
	fldi	f2 r6 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	ldi	r7 r8 6
	fbgt	f0 f2 L_else_18076
	addi	r6 r0 0
	jump	L_cont_18074
L_else_18076 : 
	addi	r6 r0 1
L_cont_18074 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont_18045
L_else_18073 : 
	call	L_is_second_outside_2163
L_cont_18045 : 
	bne	r6 r0 L_else_18049
	addi	r6 r0 2
	add	r1 r14 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18051
	addi	r6 r0 1
	jump	L_cont_18036
L_else_18051 : 
	ldi	r8 r6 1970
	fadd	f3 f0 f13
	fadd	f4 f0 f11
	fadd	f6 f0 f12
	call	L_is_outside_2168
	bne	r6 r0 L_else_18053
	addi	r8 r0 3
	add	r9 r0 r14
	fadd	f10 f0 f13
	fadd	f9 f0 f11
	fadd	f8 f0 f12
	call	L_check_all_inside_2173
	jump	L_cont_18036
L_else_18053 : 
	addi	r6 r0 0
	jump	L_cont_18036
L_else_18049 : 
	addi	r6 r0 0
	jump	L_cont_18036
L_else_18042 : 
	addi	r6 r0 0
L_cont_18036 : 
	bne	r6 r0 L_else_18040
	jump	L_cont_18031
L_else_18040 : 
	fsti	f14 r0 1082
	fsti	f13 r0 1042
	fsti	f11 r0 1043
	fsti	f12 r0 1044
	sti	r11 r0 1045
	sti	r15 r0 1074
L_cont_18031 : 
	addi	r6 r13 1
	add	r13 r0 r6
	jump	L_solve_each_element_fast_2202
L_solve_one_or_network_fast_2206 : 
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_18090
	return
L_else_18090 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_18092
	return
L_else_18092 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_18094
	return
L_else_18094 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_18096
	return
L_else_18096 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_18098
	return
L_else_18098 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_18100
	return
L_else_18100 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_18102
	return
L_else_18102 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r18 r18 1
	add	r1 r16 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else_18104
	return
L_else_18104 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2202
	addi	r6 r18 1
	add	r18 r0 r6
	jump	L_solve_one_or_network_fast_2206
L_trace_or_matrix_fast_2210 : 
	add	r1 r19 r21
	ldi	r16 r1 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_18107
	return
L_else_18107 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_18110
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18145
	jump	L_cont_18108
L_else_18145 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18147
	jump	L_cont_18108
L_else_18147 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18149
	jump	L_cont_18108
L_else_18149 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18151
	jump	L_cont_18108
L_else_18151 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 5
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18153
	jump	L_cont_18108
L_else_18153 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 6
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18155
	jump	L_cont_18108
L_else_18155 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 7
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18157
	jump	L_cont_18108
L_else_18157 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r18 r0 8
	add	r17 r0 r20
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_18108
L_else_18110 : 
	ldi	r9 r7 1970
	ldi	r10 r9 10
	fldi	f6 r10 0
	fldi	f5 r10 1
	fldi	f7 r10 2
	ldi	r6 r20 1
	add	r1 r6 r7
	ldi	r7 r1 0
	ldi	r8 r9 1
	bne	r8 r4 L_else_18160
	ldi	r8 r20 0
	call	L_solver_rect_fast_2094
	jump	L_cont_18158
L_else_18160 : 
	addi	r6 r0 2
	bne	r8 r6 L_else_18180
	fldi	f2 r7 0
	fbgt	f0 f2 L_else_18182
	addi	r6 r0 0
	jump	L_cont_18158
L_else_18182 : 
	fldi	f2 r7 0
	fldi	f3 r10 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont_18158
L_else_18180 : 
	fldi	f8 r7 0
	fbne	f8 f0 L_else_18184
	addi	r6 r0 0
	jump	L_cont_18158
L_else_18184 : 
	fldi	f2 r7 1
	fmul	f3 f2 f6
	fldi	f2 r7 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r10 3
	fmul	f3 f4 f4
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_18186
	addi	r6 r0 0
	jump	L_cont_18158
L_else_18186 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else_18189
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r7 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_18187
L_else_18189 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r7 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_18187 : 
	addi	r6 r0 1
L_cont_18158 : 
	bne	r6 r0 L_else_18162
	jump	L_cont_18108
L_else_18162 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_18164
	jump	L_cont_18108
L_else_18164 : 
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18166
	jump	L_cont_18108
L_else_18166 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18168
	jump	L_cont_18108
L_else_18168 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18170
	jump	L_cont_18108
L_else_18170 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18172
	jump	L_cont_18108
L_else_18172 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 5
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18174
	jump	L_cont_18108
L_else_18174 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 6
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18176
	jump	L_cont_18108
L_else_18176 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 7
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18178
	jump	L_cont_18108
L_else_18178 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r18 r0 8
	add	r17 r0 r20
	call	L_solve_one_or_network_fast_2206
L_cont_18108 : 
	addi	r21 r21 1
	add	r1 r19 r21
	ldi	r16 r1 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_18112
	return
L_else_18112 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_18115
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18117
	jump	L_cont_18113
L_else_18117 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18119
	jump	L_cont_18113
L_else_18119 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18121
	jump	L_cont_18113
L_else_18121 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18123
	jump	L_cont_18113
L_else_18123 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 5
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18125
	jump	L_cont_18113
L_else_18125 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 6
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18127
	jump	L_cont_18113
L_else_18127 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r18 r0 7
	add	r17 r0 r20
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_18113
L_else_18115 : 
	add	r10 r0 r20
	call	L_solver_fast2_2131
	bne	r6 r0 L_else_18129
	jump	L_cont_18113
L_else_18129 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_18131
	jump	L_cont_18113
L_else_18131 : 
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18133
	jump	L_cont_18113
L_else_18133 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18135
	jump	L_cont_18113
L_else_18135 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18137
	jump	L_cont_18113
L_else_18137 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18139
	jump	L_cont_18113
L_else_18139 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 5
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18141
	jump	L_cont_18113
L_else_18141 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r6 r0 6
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18143
	jump	L_cont_18113
L_else_18143 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r20
	call	L_solve_each_element_fast_2202
	addi	r18 r0 7
	add	r17 r0 r20
	call	L_solve_one_or_network_fast_2206
L_cont_18113 : 
	addi	r6 r21 1
	add	r21 r0 r6
	jump	L_trace_or_matrix_fast_2210
L_get_nvector_second_2220 : 
	fldi	f3 r0 1042
	ldi	r6 r7 5
	fldi	f2 r6 0
	fsub	f9 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r7 5
	fldi	f2 r6 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r7 5
	fldi	f2 r6 2
	fsub	f7 f3 f2
	ldi	r6 r7 4
	fldi	f2 r6 0
	fmul	f5 f9 f2
	ldi	r6 r7 4
	fldi	f2 r6 1
	fmul	f6 f8 f2
	ldi	r6 r7 4
	fldi	f2 r6 2
	fmul	f4 f7 f2
	ldi	r6 r7 3
	bne	r6 r0 L_else_18193
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_18191
L_else_18193 : 
	ldi	r6 r7 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r7 9
	fldi	f2 r6 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f2 f5 f2
	fsti	f2 r0 1046
	ldi	r6 r7 9
	fldi	f2 r6 2
	fmul	f3 f9 f2
	ldi	r6 r7 9
	fldi	f2 r6 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 29
	fdiv	f2 f2 f3
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r6 r7 9
	fldi	f2 r6 1
	fmul	f3 f9 f2
	ldi	r6 r7 9
	fldi	f2 r6 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_18191 : 
	ldi	r6 r7 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_18196
	fldi	f3 r0 12
	jump	L_cont_18194
L_else_18196 : 
	bne	r6 r0 L_else_18198
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_18194
L_else_18198 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
L_cont_18194 : 
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
	ldi	r8 r7 1
	bne	r8 r4 L_else_18201
	ldi	r6 r0 1074
	fldi	f2 r0 26
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r8 r0 1046
	addi	r7 r6 -1
	addi	r6 r6 -1
	add	r1 r9 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else_18204
	fldi	f2 r0 26
	jump	L_cont_18202
L_else_18204 : 
	fbgt	f2 f0 L_else_18206
	fldi	f2 r0 28
	jump	L_cont_18202
L_else_18206 : 
	fldi	f2 r0 12
L_cont_18202 : 
	fsub	f2 f0 f2
	add	r1 r8 r7
	fsti	f2 r1 0
	return
L_else_18201 : 
	addi	r6 r0 2
	bne	r8 r6 L_else_18208
	ldi	r6 r7 4
	fldi	f2 r6 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	ldi	r6 r7 4
	fldi	f2 r6 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	ldi	r6 r7 4
	fldi	f2 r6 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	return
L_else_18208 : 
	fldi	f3 r0 1042
	ldi	r6 r7 5
	fldi	f2 r6 0
	fsub	f9 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r7 5
	fldi	f2 r6 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r7 5
	fldi	f2 r6 2
	fsub	f7 f3 f2
	ldi	r6 r7 4
	fldi	f2 r6 0
	fmul	f6 f9 f2
	ldi	r6 r7 4
	fldi	f2 r6 1
	fmul	f5 f8 f2
	ldi	r6 r7 4
	fldi	f2 r6 2
	fmul	f4 f7 f2
	ldi	r6 r7 3
	bne	r6 r0 L_else_18211
	fsti	f6 r0 1046
	fsti	f5 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_18209
L_else_18211 : 
	ldi	r6 r7 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r7 9
	fldi	f2 r6 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r0 1046
	ldi	r6 r7 9
	fldi	f2 r6 2
	fmul	f3 f9 f2
	ldi	r6 r7 9
	fldi	f2 r6 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 29
	fdiv	f2 f2 f3
	fadd	f2 f5 f2
	fsti	f2 r0 1047
	ldi	r6 r7 9
	fldi	f2 r6 1
	fmul	f3 f9 f2
	ldi	r6 r7 9
	fldi	f2 r6 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_18209 : 
	ldi	r6 r7 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_18214
	fldi	f3 r0 12
	jump	L_cont_18212
L_else_18214 : 
	bne	r6 r0 L_else_18216
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont_18212
L_else_18216 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
L_cont_18212 : 
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
	bne	r9 r4 L_else_18219
	fldi	f3 r6 0
	ldi	r8 r7 5
	fldi	f2 r8 0
	fsub	f4 f3 f2
	fldi	f2 r0 33
	fmul	f2 f4 f2
	flr	f2 f2
	fldi	f3 r0 34
	fmul	f2 f2 f3
	fsub	f6 f4 f2
	fldi	f5 r0 35
	fldi	f3 r6 2
	ldi	r6 r7 5
	fldi	f2 r6 2
	fsub	f4 f3 f2
	fldi	f2 r0 33
	fmul	f2 f4 f2
	flr	f3 f2
	fldi	f2 r0 34
	fmul	f2 f3 f2
	fsub	f3 f4 f2
	fldi	f2 r0 35
	fbgt	f5 f6 L_else_18222
	fbgt	f2 f3 L_else_18224
	fldi	f2 r0 36
	jump	L_cont_18220
L_else_18224 : 
	fldi	f2 r0 26
	jump	L_cont_18220
L_else_18222 : 
	fbgt	f2 f3 L_else_18226
	fldi	f2 r0 26
	jump	L_cont_18220
L_else_18226 : 
	fldi	f2 r0 36
L_cont_18220 : 
	fsti	f2 r0 1050
	return
L_else_18219 : 
	addi	r8 r0 2
	bne	r9 r8 L_else_18228
	fldi	f2 r6 1
	fldi	f3 r0 37
	fmul	f9 f2 f3
	call	L_sin_1878
	fmul	f4 f2 f2
	fldi	f2 r0 36
	fmul	f2 f2 f4
	fsti	f2 r0 1049
	fldi	f3 r0 36
	fldi	f2 r0 12
	fsub	f2 f2 f4
	fmul	f2 f3 f2
	fsti	f2 r0 1050
	return
L_else_18228 : 
	addi	r8 r0 3
	bne	r9 r8 L_else_18230
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
	fldi	f2 r0 35
	fdiv	f3 f3 f2
	flr	f2 f3
	fsub	f3 f3 f2
	fldi	f2 r0 38
	fmul	f2 f3 f2
	call	L_cos_1880
	fmul	f3 f2 f2
	fldi	f2 r0 36
	fmul	f2 f3 f2
	fsti	f2 r0 1050
	fldi	f2 r0 12
	fsub	f3 f2 f3
	fldi	f2 r0 36
	fmul	f2 f3 f2
	fsti	f2 r0 1051
	return
L_else_18230 : 
	addi	r8 r0 4
	bne	r9 r8 L_else_18232
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
	fbgt	f0 f3 L_else_18235
	fadd	f2 f0 f3
	jump	L_cont_18233
L_else_18235 : 
	fsub	f2 f0 f3
L_cont_18233 : 
	fldi	f4 r0 39
	fbgt	f4 f2 L_else_18238
	fdiv	f13 f5 f3
	fbgt	f0 f13 L_else_18253
	jump	L_cont_18251
L_else_18253 : 
	fsub	f13 f0 f13
L_cont_18251 : 
	call	L_atan_1882
	fldi	f3 r0 40
	fmul	f3 f2 f3
	fldi	f2 r0 38
	fdiv	f3 f3 f2
	jump	L_cont_18236
L_else_18238 : 
	fldi	f3 r0 41
L_cont_18236 : 
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
	fbgt	f0 f15 L_else_18241
	fadd	f2 f0 f15
	jump	L_cont_18239
L_else_18241 : 
	fsub	f2 f0 f15
L_cont_18239 : 
	fldi	f3 r0 39
	fbgt	f3 f2 L_else_18244
	fdiv	f13 f4 f15
	fbgt	f0 f13 L_else_18250
	jump	L_cont_18248
L_else_18250 : 
	fsub	f13 f0 f13
L_cont_18248 : 
	call	L_atan_1882
	fldi	f3 r0 40
	fmul	f2 f2 f3
	fldi	f3 r0 38
	fdiv	f2 f2 f3
	jump	L_cont_18242
L_else_18244 : 
	fldi	f2 r0 41
L_cont_18242 : 
	flr	f3 f2
	fsub	f3 f2 f3
	fldi	f4 r0 42
	fldi	f2 r0 11
	fsub	f2 f2 f16
	fmul	f2 f2 f2
	fsub	f4 f4 f2
	fldi	f2 r0 11
	fsub	f2 f2 f3
	fmul	f2 f2 f2
	fsub	f2 f4 f2
	fbgt	f0 f2 L_else_18247
	jump	L_cont_18245
L_else_18247 : 
	fldi	f2 r0 26
L_cont_18245 : 
	fldi	f3 r0 36
	fmul	f2 f3 f2
	fldi	f3 r0 43
	fdiv	f2 f2 f3
	fsti	f2 r0 1051
	return
L_else_18232 : 
	return
L_trace_reflections_2232 : 
	bgt	r0 r23 L_else_18256
	ldi	r22 r23 1185
	ldi	r24 r22 1
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r21 r0 0
	ldi	r19 r0 1183
	add	r20 r0 r24
	call	L_trace_or_matrix_fast_2210
	fldi	f3 r0 1082
	fldi	f2 r0 32
	fbgt	f3 f2 L_else_18259
	addi	r6 r0 0
	jump	L_cont_18257
L_else_18259 : 
	fldi	f2 r0 45
	fbgt	f2 f3 L_else_18339
	addi	r6 r0 0
	jump	L_cont_18257
L_else_18339 : 
	addi	r6 r0 1
L_cont_18257 : 
	bne	r6 r0 L_else_18262
	jump	L_cont_18260
L_else_18262 : 
	ldi	r7 r0 1045
	addi	r6 r0 4
	mul	r7 r7 r6
	ldi	r6 r0 1074
	add	r7 r7 r6
	ldi	r6 r22 0
	bne	r7 r6 L_else_18264
	addi	r6 r0 0
	ldi	r16 r0 1183
	add	r1 r16 r6
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_18267
	addi	r6 r0 0
	jump	L_cont_18265
L_else_18267 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_18277
	addi	r6 r0 1
	jump	L_cont_18275
L_else_18277 : 
	addi	r10 r0 1905
	addi	r8 r0 1042
	call	L_solver_fast_2113
	bne	r6 r0 L_else_18308
	addi	r6 r0 0
	jump	L_cont_18275
L_else_18308 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_18310
	addi	r6 r0 0
	jump	L_cont_18275
L_else_18310 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18313
	addi	r6 r0 0
	jump	L_cont_18311
L_else_18313 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18317
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18319
	addi	r6 r0 0
	jump	L_cont_18311
L_else_18319 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18321
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18323
	addi	r6 r0 0
	jump	L_cont_18311
L_else_18323 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18325
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18327
	addi	r6 r0 0
	jump	L_cont_18311
L_else_18327 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18329
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18331
	addi	r6 r0 0
	jump	L_cont_18311
L_else_18331 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18333
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18335
	addi	r6 r0 0
	jump	L_cont_18311
L_else_18335 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18337
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_18311
L_else_18337 : 
	addi	r6 r0 1
	jump	L_cont_18311
L_else_18333 : 
	addi	r6 r0 1
	jump	L_cont_18311
L_else_18329 : 
	addi	r6 r0 1
	jump	L_cont_18311
L_else_18325 : 
	addi	r6 r0 1
	jump	L_cont_18311
L_else_18321 : 
	addi	r6 r0 1
	jump	L_cont_18311
L_else_18317 : 
	addi	r6 r0 1
L_cont_18311 : 
	bne	r6 r0 L_else_18315
	addi	r6 r0 0
	jump	L_cont_18275
L_else_18315 : 
	addi	r6 r0 1
L_cont_18275 : 
	bne	r6 r0 L_else_18279
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_18265
L_else_18279 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18282
	addi	r6 r0 0
	jump	L_cont_18280
L_else_18282 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18286
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18288
	addi	r6 r0 0
	jump	L_cont_18280
L_else_18288 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18290
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18292
	addi	r6 r0 0
	jump	L_cont_18280
L_else_18292 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18294
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18296
	addi	r6 r0 0
	jump	L_cont_18280
L_else_18296 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18298
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18300
	addi	r6 r0 0
	jump	L_cont_18280
L_else_18300 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18302
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18304
	addi	r6 r0 0
	jump	L_cont_18280
L_else_18304 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18306
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_18280
L_else_18306 : 
	addi	r6 r0 1
	jump	L_cont_18280
L_else_18302 : 
	addi	r6 r0 1
	jump	L_cont_18280
L_else_18298 : 
	addi	r6 r0 1
	jump	L_cont_18280
L_else_18294 : 
	addi	r6 r0 1
	jump	L_cont_18280
L_else_18290 : 
	addi	r6 r0 1
	jump	L_cont_18280
L_else_18286 : 
	addi	r6 r0 1
L_cont_18280 : 
	bne	r6 r0 L_else_18284
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_18265
L_else_18284 : 
	addi	r6 r0 1
L_cont_18265 : 
	bne	r6 r0 L_else_18269
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
	fbgt	f5 f0 L_else_18272
	jump	L_cont_18270
L_else_18272 : 
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
L_cont_18270 : 
	fbgt	f4 f0 L_else_18274
	jump	L_cont_18260
L_else_18274 : 
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
	jump	L_cont_18260
L_else_18269 : 
	jump	L_cont_18260
L_else_18264 : 
L_cont_18260 : 
	addi	r6 r23 -1
	add	r23 r0 r6
	jump	L_trace_reflections_2232
L_else_18256 : 
	return
L_trace_ray_2237 : 
	addi	r6 r0 4
	bgt	r29 r6 L_else_18342
	ldi	r28 r26 2
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r23 r0 0
	ldi	r21 r0 1183
	add	r22 r0 r27
	call	L_trace_or_matrix_2196
	fldi	f3 r0 1082
	fldi	f2 r0 32
	fbgt	f3 f2 L_else_18345
	addi	r6 r0 0
	jump	L_cont_18343
L_else_18345 : 
	fldi	f2 r0 45
	fbgt	f2 f3 L_else_18447
	addi	r6 r0 0
	jump	L_cont_18343
L_else_18447 : 
	addi	r6 r0 1
L_cont_18343 : 
	bne	r6 r0 L_else_18347
	addi	r6 r0 -1
	add	r1 r28 r29
	sti	r6 r1 0
	bne	r29 r0 L_else_18349
	return
L_else_18349 : 
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
	fbgt	f3 f0 L_else_18351
	return
L_else_18351 : 
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
L_else_18347 : 
	ldi	r10 r0 1045
	ldi	r30 r10 1970
	ldi	r31 r30 2
	ldi	r6 r30 7
	fldi	f2 r6 0
	fmul	f19 f2 f18
	ldi	r7 r30 1
	bne	r7 r4 L_else_18354
	ldi	r6 r0 1074
	fldi	f2 r0 26
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r7 r0 1046
	addi	r8 r6 -1
	addi	r6 r6 -1
	add	r1 r27 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else_18441
	fldi	f2 r0 26
	jump	L_cont_18439
L_else_18441 : 
	fbgt	f2 f0 L_else_18443
	fldi	f2 r0 28
	jump	L_cont_18439
L_else_18443 : 
	fldi	f2 r0 12
L_cont_18439 : 
	fsub	f2 f0 f2
	add	r1 r7 r8
	fsti	f2 r1 0
	jump	L_cont_18352
L_else_18354 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18445
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
	jump	L_cont_18352
L_else_18445 : 
	add	r7 r0 r30
	call	L_get_nvector_second_2220
L_cont_18352 : 
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
	fldi	f3 r6 0
	fldi	f2 r0 11
	fbgt	f2 f3 L_else_18357
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
	fldi	f2 r0 46
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
	jump	L_cont_18355
L_else_18357 : 
	addi	r6 r0 0
	add	r1 r7 r29
	sti	r6 r1 0
L_cont_18355 : 
	fldi	f5 r0 47
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
	ldi	r6 r30 7
	fldi	f2 r6 1
	fmul	f16 f18 f2
	addi	r6 r0 0
	ldi	r16 r0 1183
	add	r1 r16 r6
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_18360
	addi	r6 r0 0
	jump	L_cont_18358
L_else_18360 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_18378
	addi	r6 r0 1
	jump	L_cont_18376
L_else_18378 : 
	addi	r10 r0 1905
	addi	r8 r0 1042
	call	L_solver_fast_2113
	bne	r6 r0 L_else_18409
	addi	r6 r0 0
	jump	L_cont_18376
L_else_18409 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_18411
	addi	r6 r0 0
	jump	L_cont_18376
L_else_18411 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18414
	addi	r6 r0 0
	jump	L_cont_18412
L_else_18414 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18418
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18420
	addi	r6 r0 0
	jump	L_cont_18412
L_else_18420 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18422
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18424
	addi	r6 r0 0
	jump	L_cont_18412
L_else_18424 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18426
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18428
	addi	r6 r0 0
	jump	L_cont_18412
L_else_18428 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18430
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18432
	addi	r6 r0 0
	jump	L_cont_18412
L_else_18432 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18434
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18436
	addi	r6 r0 0
	jump	L_cont_18412
L_else_18436 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18438
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_18412
L_else_18438 : 
	addi	r6 r0 1
	jump	L_cont_18412
L_else_18434 : 
	addi	r6 r0 1
	jump	L_cont_18412
L_else_18430 : 
	addi	r6 r0 1
	jump	L_cont_18412
L_else_18426 : 
	addi	r6 r0 1
	jump	L_cont_18412
L_else_18422 : 
	addi	r6 r0 1
	jump	L_cont_18412
L_else_18418 : 
	addi	r6 r0 1
L_cont_18412 : 
	bne	r6 r0 L_else_18416
	addi	r6 r0 0
	jump	L_cont_18376
L_else_18416 : 
	addi	r6 r0 1
L_cont_18376 : 
	bne	r6 r0 L_else_18380
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_18358
L_else_18380 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18383
	addi	r6 r0 0
	jump	L_cont_18381
L_else_18383 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18387
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18389
	addi	r6 r0 0
	jump	L_cont_18381
L_else_18389 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18391
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18393
	addi	r6 r0 0
	jump	L_cont_18381
L_else_18393 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18395
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18397
	addi	r6 r0 0
	jump	L_cont_18381
L_else_18397 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18399
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18401
	addi	r6 r0 0
	jump	L_cont_18381
L_else_18401 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18403
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18405
	addi	r6 r0 0
	jump	L_cont_18381
L_else_18405 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18407
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_18381
L_else_18407 : 
	addi	r6 r0 1
	jump	L_cont_18381
L_else_18403 : 
	addi	r6 r0 1
	jump	L_cont_18381
L_else_18399 : 
	addi	r6 r0 1
	jump	L_cont_18381
L_else_18395 : 
	addi	r6 r0 1
	jump	L_cont_18381
L_else_18391 : 
	addi	r6 r0 1
	jump	L_cont_18381
L_else_18387 : 
	addi	r6 r0 1
L_cont_18381 : 
	bne	r6 r0 L_else_18385
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_18358
L_else_18385 : 
	addi	r6 r0 1
L_cont_18358 : 
	bne	r6 r0 L_else_18363
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
	fbgt	f5 f0 L_else_18373
	jump	L_cont_18371
L_else_18373 : 
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
L_cont_18371 : 
	fbgt	f4 f0 L_else_18375
	jump	L_cont_18361
L_else_18375 : 
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
	jump	L_cont_18361
L_else_18363 : 
L_cont_18361 : 
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
	fldi	f2 r0 48
	fbgt	f18 f2 L_else_18365
	return
L_else_18365 : 
	addi	r6 r0 4
	bgt	r6 r29 L_else_18368
	jump	L_cont_18366
L_else_18368 : 
	addi	r7 r29 1
	addi	r6 r0 -1
	add	r1 r28 r7
	sti	r6 r1 0
L_cont_18366 : 
	addi	r6 r0 2
	bne	r31 r6 L_else_18370
	fldi	f3 r0 12
	ldi	r6 r30 7
	fldi	f2 r6 0
	fsub	f2 f3 f2
	fmul	f3 f18 f2
	addi	r6 r29 1
	fldi	f2 r0 1082
	fadd	f2 f17 f2
	add	r29 r0 r6
	fadd	f18 f0 f3
	fadd	f17 f0 f2
	jump	L_trace_ray_2237
L_else_18370 : 
	return
L_else_18342 : 
	return
L_trace_diffuse_ray_2243 : 
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r21 r0 0
	ldi	r19 r0 1183
	add	r20 r0 r22
	call	L_trace_or_matrix_fast_2210
	fldi	f3 r0 1082
	fldi	f2 r0 32
	fbgt	f3 f2 L_else_18451
	addi	r6 r0 0
	jump	L_cont_18449
L_else_18451 : 
	fldi	f2 r0 45
	fbgt	f2 f3 L_else_18536
	addi	r6 r0 0
	jump	L_cont_18449
L_else_18536 : 
	addi	r6 r0 1
L_cont_18449 : 
	bne	r6 r0 L_else_18453
	return
L_else_18453 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r9 r22 0
	ldi	r7 r19 1
	bne	r7 r4 L_else_18456
	ldi	r6 r0 1074
	fldi	f2 r0 26
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r8 r0 1046
	addi	r7 r6 -1
	addi	r6 r6 -1
	add	r1 r9 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else_18530
	fldi	f2 r0 26
	jump	L_cont_18528
L_else_18530 : 
	fbgt	f2 f0 L_else_18532
	fldi	f2 r0 28
	jump	L_cont_18528
L_else_18532 : 
	fldi	f2 r0 12
L_cont_18528 : 
	fsub	f2 f0 f2
	add	r1 r8 r7
	fsti	f2 r1 0
	jump	L_cont_18454
L_else_18456 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18534
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
	jump	L_cont_18454
L_else_18534 : 
	add	r7 r0 r19
	call	L_get_nvector_second_2220
L_cont_18454 : 
	addi	r6 r0 1042
	add	r7 r0 r19
	call	L_utexture_2225
	addi	r6 r0 0
	ldi	r16 r0 1183
	add	r1 r16 r6
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else_18459
	addi	r6 r0 0
	jump	L_cont_18457
L_else_18459 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_18467
	addi	r6 r0 1
	jump	L_cont_18465
L_else_18467 : 
	addi	r10 r0 1905
	addi	r8 r0 1042
	call	L_solver_fast_2113
	bne	r6 r0 L_else_18498
	addi	r6 r0 0
	jump	L_cont_18465
L_else_18498 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_18500
	addi	r6 r0 0
	jump	L_cont_18465
L_else_18500 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18503
	addi	r6 r0 0
	jump	L_cont_18501
L_else_18503 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18507
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18509
	addi	r6 r0 0
	jump	L_cont_18501
L_else_18509 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18511
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18513
	addi	r6 r0 0
	jump	L_cont_18501
L_else_18513 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18515
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18517
	addi	r6 r0 0
	jump	L_cont_18501
L_else_18517 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18519
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18521
	addi	r6 r0 0
	jump	L_cont_18501
L_else_18521 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18523
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18525
	addi	r6 r0 0
	jump	L_cont_18501
L_else_18525 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18527
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_18501
L_else_18527 : 
	addi	r6 r0 1
	jump	L_cont_18501
L_else_18523 : 
	addi	r6 r0 1
	jump	L_cont_18501
L_else_18519 : 
	addi	r6 r0 1
	jump	L_cont_18501
L_else_18515 : 
	addi	r6 r0 1
	jump	L_cont_18501
L_else_18511 : 
	addi	r6 r0 1
	jump	L_cont_18501
L_else_18507 : 
	addi	r6 r0 1
L_cont_18501 : 
	bne	r6 r0 L_else_18505
	addi	r6 r0 0
	jump	L_cont_18465
L_else_18505 : 
	addi	r6 r0 1
L_cont_18465 : 
	bne	r6 r0 L_else_18469
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_18457
L_else_18469 : 
	addi	r6 r0 1
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18472
	addi	r6 r0 0
	jump	L_cont_18470
L_else_18472 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18476
	addi	r6 r0 2
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18478
	addi	r6 r0 0
	jump	L_cont_18470
L_else_18478 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18480
	addi	r6 r0 3
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18482
	addi	r6 r0 0
	jump	L_cont_18470
L_else_18482 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18484
	addi	r6 r0 4
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18486
	addi	r6 r0 0
	jump	L_cont_18470
L_else_18486 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18488
	addi	r6 r0 5
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18490
	addi	r6 r0 0
	jump	L_cont_18470
L_else_18490 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18492
	addi	r6 r0 6
	add	r1 r17 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18494
	addi	r6 r0 0
	jump	L_cont_18470
L_else_18494 : 
	ldi	r11 r6 1083
	addi	r12 r0 0
	call	L_shadow_check_and_group_2179
	bne	r6 r0 L_else_18496
	addi	r15 r0 7
	add	r14 r0 r17
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_18470
L_else_18496 : 
	addi	r6 r0 1
	jump	L_cont_18470
L_else_18492 : 
	addi	r6 r0 1
	jump	L_cont_18470
L_else_18488 : 
	addi	r6 r0 1
	jump	L_cont_18470
L_else_18484 : 
	addi	r6 r0 1
	jump	L_cont_18470
L_else_18480 : 
	addi	r6 r0 1
	jump	L_cont_18470
L_else_18476 : 
	addi	r6 r0 1
L_cont_18470 : 
	bne	r6 r0 L_else_18474
	addi	r17 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_18457
L_else_18474 : 
	addi	r6 r0 1
L_cont_18457 : 
	bne	r6 r0 L_else_18461
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
	fbgt	f2 f0 L_else_18464
	fldi	f2 r0 26
	jump	L_cont_18462
L_else_18464 : 
L_cont_18462 : 
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
L_else_18461 : 
	return
L_iter_trace_diffuse_rays_2246 : 
	bgt	r0 r22 L_else_18539
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
	fbgt	f0 f3 L_else_18542
	add	r1 r24 r22
	ldi	r26 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r6 r0 0
	ldi	r19 r0 1183
	add	r1 r19 r6
	ldi	r16 r1 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_18550
	jump	L_cont_18548
L_else_18550 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_18565
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18567
	jump	L_cont_18563
L_else_18567 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18569
	jump	L_cont_18563
L_else_18569 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18571
	jump	L_cont_18563
L_else_18571 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18573
	jump	L_cont_18563
L_else_18573 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r18 r0 5
	add	r17 r0 r26
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_18563
L_else_18565 : 
	add	r10 r0 r26
	call	L_solver_fast2_2131
	bne	r6 r0 L_else_18575
	jump	L_cont_18563
L_else_18575 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_18577
	jump	L_cont_18563
L_else_18577 : 
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18579
	jump	L_cont_18563
L_else_18579 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18581
	jump	L_cont_18563
L_else_18581 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18583
	jump	L_cont_18563
L_else_18583 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18585
	jump	L_cont_18563
L_else_18585 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r18 r0 5
	add	r17 r0 r26
	call	L_solve_one_or_network_fast_2206
L_cont_18563 : 
	addi	r21 r0 1
	add	r20 r0 r26
	call	L_trace_or_matrix_fast_2210
L_cont_18548 : 
	fldi	f3 r0 1082
	fldi	f2 r0 32
	fbgt	f3 f2 L_else_18553
	addi	r6 r0 0
	jump	L_cont_18551
L_else_18553 : 
	fldi	f2 r0 45
	fbgt	f2 f3 L_else_18562
	addi	r6 r0 0
	jump	L_cont_18551
L_else_18562 : 
	addi	r6 r0 1
L_cont_18551 : 
	bne	r6 r0 L_else_18555
	jump	L_cont_18540
L_else_18555 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r9 r26 0
	add	r7 r0 r19
	call	L_get_nvector_2222
	addi	r6 r0 1042
	add	r7 r0 r19
	call	L_utexture_2225
	addi	r17 r0 0
	ldi	r16 r0 1183
	call	L_shadow_check_one_or_matrix_2185
	bne	r6 r0 L_else_18557
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
	fbgt	f2 f0 L_else_18560
	fldi	f2 r0 26
	jump	L_cont_18558
L_else_18560 : 
L_cont_18558 : 
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
	jump	L_cont_18540
L_else_18557 : 
	jump	L_cont_18540
L_else_18542 : 
	addi	r6 r22 1
	add	r1 r24 r6
	ldi	r26 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r6 r0 0
	ldi	r19 r0 1183
	add	r1 r19 r6
	ldi	r16 r1 0
	ldi	r7 r16 0
	bne	r7 r5 L_else_18588
	jump	L_cont_18586
L_else_18588 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_18603
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18605
	jump	L_cont_18601
L_else_18605 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18607
	jump	L_cont_18601
L_else_18607 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18609
	jump	L_cont_18601
L_else_18609 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18611
	jump	L_cont_18601
L_else_18611 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r18 r0 5
	add	r17 r0 r26
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_18601
L_else_18603 : 
	add	r10 r0 r26
	call	L_solver_fast2_2131
	bne	r6 r0 L_else_18613
	jump	L_cont_18601
L_else_18613 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_18615
	jump	L_cont_18601
L_else_18615 : 
	addi	r6 r0 1
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18617
	jump	L_cont_18601
L_else_18617 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 2
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18619
	jump	L_cont_18601
L_else_18619 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 3
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18621
	jump	L_cont_18601
L_else_18621 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r6 r0 4
	add	r1 r16 r6
	ldi	r6 r1 0
	bne	r6 r5 L_else_18623
	jump	L_cont_18601
L_else_18623 : 
	ldi	r14 r6 1083
	addi	r13 r0 0
	add	r12 r0 r26
	call	L_solve_each_element_fast_2202
	addi	r18 r0 5
	add	r17 r0 r26
	call	L_solve_one_or_network_fast_2206
L_cont_18601 : 
	addi	r21 r0 1
	add	r20 r0 r26
	call	L_trace_or_matrix_fast_2210
L_cont_18586 : 
	fldi	f3 r0 1082
	fldi	f2 r0 32
	fbgt	f3 f2 L_else_18591
	addi	r6 r0 0
	jump	L_cont_18589
L_else_18591 : 
	fldi	f2 r0 45
	fbgt	f2 f3 L_else_18600
	addi	r6 r0 0
	jump	L_cont_18589
L_else_18600 : 
	addi	r6 r0 1
L_cont_18589 : 
	bne	r6 r0 L_else_18593
	jump	L_cont_18540
L_else_18593 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r9 r26 0
	add	r7 r0 r19
	call	L_get_nvector_2222
	addi	r6 r0 1042
	add	r7 r0 r19
	call	L_utexture_2225
	addi	r17 r0 0
	ldi	r16 r0 1183
	call	L_shadow_check_one_or_matrix_2185
	bne	r6 r0 L_else_18595
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
	fbgt	f2 f0 L_else_18598
	fldi	f2 r0 26
	jump	L_cont_18596
L_else_18598 : 
L_cont_18596 : 
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
	jump	L_cont_18540
L_else_18595 : 
L_cont_18540 : 
	addi	r26 r22 -2
	bgt	r0 r26 L_else_18544
	add	r1 r24 r26
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f3 r6 0
	fldi	f2 r25 0
	fmul	f4 f3 f2
	fldi	f2 r6 1
	fldi	f3 r25 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r6 2
	fldi	f3 r25 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_18547
	add	r1 r24 r26
	ldi	r22 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18545
L_else_18547 : 
	addi	r6 r26 1
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_18545 : 
	addi	r6 r26 -2
	add	r22 r0 r6
	jump	L_iter_trace_diffuse_rays_2246
L_else_18544 : 
	return
L_else_18539 : 
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
	bne	r31 r0 L_else_18627
	jump	L_cont_18625
L_else_18627 : 
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
	fbgt	f0 f3 L_else_18654
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18652
L_else_18654 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_18652 : 
	addi	r22 r0 116
	add	r25 r0 r30
	add	r23 r0 r29
	call	L_iter_trace_diffuse_rays_2246
L_cont_18625 : 
	bne	r31 r4 L_else_18630
	jump	L_cont_18628
L_else_18630 : 
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
	fbgt	f0 f3 L_else_18651
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18649
L_else_18651 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_18649 : 
	addi	r22 r0 116
	add	r25 r0 r30
	add	r23 r0 r29
	call	L_iter_trace_diffuse_rays_2246
L_cont_18628 : 
	addi	r6 r0 2
	bne	r31 r6 L_else_18633
	jump	L_cont_18631
L_else_18633 : 
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
	fbgt	f0 f3 L_else_18648
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18646
L_else_18648 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_18646 : 
	addi	r22 r0 116
	add	r25 r0 r30
	add	r23 r0 r29
	call	L_iter_trace_diffuse_rays_2246
L_cont_18631 : 
	addi	r6 r0 3
	bne	r31 r6 L_else_18636
	jump	L_cont_18634
L_else_18636 : 
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
	fbgt	f0 f3 L_else_18645
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18643
L_else_18645 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_18643 : 
	addi	r22 r0 116
	add	r25 r0 r30
	add	r23 r0 r29
	call	L_iter_trace_diffuse_rays_2246
L_cont_18634 : 
	addi	r6 r0 4
	bne	r31 r6 L_else_18639
	jump	L_cont_18637
L_else_18639 : 
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
	fbgt	f0 f3 L_else_18642
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18640
L_else_18642 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_18640 : 
	addi	r22 r0 116
	add	r25 r0 r30
	add	r23 r0 r29
	call	L_iter_trace_diffuse_rays_2246
L_cont_18637 : 
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
L_calc_diffuse_using_5points_2262 : 
	add	r1 r6 r11
	ldi	r6 r1 0
	ldi	r9 r6 5
	addi	r6 r11 -1
	add	r1 r14 r6
	ldi	r6 r1 0
	ldi	r12 r6 5
	add	r1 r14 r11
	ldi	r6 r1 0
	ldi	r10 r6 5
	addi	r6 r11 1
	add	r1 r14 r6
	ldi	r6 r1 0
	ldi	r8 r6 5
	add	r1 r7 r11
	ldi	r6 r1 0
	ldi	r7 r6 5
	add	r1 r9 r13
	ldi	r6 r1 0
	fldi	f2 r6 0
	fsti	f2 r0 1052
	fldi	f2 r6 1
	fsti	f2 r0 1053
	fldi	f2 r6 2
	fsti	f2 r0 1054
	add	r1 r12 r13
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
	add	r1 r10 r13
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
	add	r1 r8 r13
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
	add	r1 r7 r13
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
	add	r1 r14 r11
	ldi	r6 r1 0
	ldi	r6 r6 4
	add	r1 r6 r13
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
	bgt	r28 r7 L_else_18658
	ldi	r7 r6 2
	add	r1 r7 r28
	ldi	r7 r1 0
	bgt	r0 r7 L_else_18660
	ldi	r7 r6 3
	add	r1 r7 r28
	ldi	r7 r1 0
	bne	r7 r0 L_else_18663
	jump	L_cont_18661
L_else_18663 : 
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
	bne	r31 r0 L_else_18673
	jump	L_cont_18671
L_else_18673 : 
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
L_cont_18671 : 
	bne	r31 r4 L_else_18676
	jump	L_cont_18674
L_else_18676 : 
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
L_cont_18674 : 
	addi	r7 r0 2
	bne	r31 r7 L_else_18679
	jump	L_cont_18677
L_else_18679 : 
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
L_cont_18677 : 
	addi	r7 r0 3
	bne	r31 r7 L_else_18682
	jump	L_cont_18680
L_else_18682 : 
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
L_cont_18680 : 
	addi	r7 r0 4
	bne	r31 r7 L_else_18685
	jump	L_cont_18683
L_else_18685 : 
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
L_cont_18683 : 
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
L_cont_18661 : 
	addi	r7 r28 1
	addi	r8 r0 4
	bgt	r7 r8 L_else_18665
	ldi	r8 r6 2
	add	r1 r8 r7
	ldi	r8 r1 0
	bgt	r0 r8 L_else_18667
	ldi	r8 r6 3
	add	r1 r8 r7
	ldi	r8 r1 0
	bne	r8 r0 L_else_18670
	jump	L_cont_18668
L_else_18670 : 
	sti	r6 r2 0
	sti	r7 r2 1
	add	r9 r0 r6
	add	r28 r0 r7
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
L_cont_18668 : 
	addi	r7 r7 1
	add	r28 r0 r7
	jump	L_do_without_neighbors_2268
L_else_18667 : 
	return
L_else_18665 : 
	return
L_else_18660 : 
	return
L_else_18658 : 
	return
L_try_exploit_neighbors_2284 : 
	add	r1 r18 r16
	ldi	r9 r1 0
	addi	r6 r0 4
	bgt	r7 r6 L_else_18688
	ldi	r6 r9 2
	add	r1 r6 r7
	ldi	r6 r1 0
	bgt	r0 r6 L_else_18690
	add	r1 r18 r16
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r7
	ldi	r8 r1 0
	add	r1 r19 r16
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r7
	ldi	r6 r1 0
	bne	r6 r8 L_else_18693
	add	r1 r17 r16
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r7
	ldi	r6 r1 0
	bne	r6 r8 L_else_18725
	addi	r6 r16 -1
	add	r1 r18 r6
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r7
	ldi	r6 r1 0
	bne	r6 r8 L_else_18727
	addi	r6 r16 1
	add	r1 r18 r6
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r7
	ldi	r6 r1 0
	bne	r6 r8 L_else_18729
	addi	r6 r0 1
	jump	L_cont_18691
L_else_18729 : 
	addi	r6 r0 0
	jump	L_cont_18691
L_else_18727 : 
	addi	r6 r0 0
	jump	L_cont_18691
L_else_18725 : 
	addi	r6 r0 0
	jump	L_cont_18691
L_else_18693 : 
	addi	r6 r0 0
L_cont_18691 : 
	bne	r6 r0 L_else_18695
	add	r1 r18 r16
	ldi	r6 r1 0
	addi	r8 r0 4
	bgt	r7 r8 L_else_18697
	ldi	r8 r6 2
	add	r1 r8 r7
	ldi	r8 r1 0
	bgt	r0 r8 L_else_18699
	ldi	r8 r6 3
	add	r1 r8 r7
	ldi	r8 r1 0
	bne	r8 r0 L_else_18702
	jump	L_cont_18700
L_else_18702 : 
	sti	r6 r2 0
	sti	r7 r2 1
	add	r9 r0 r6
	add	r28 r0 r7
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
L_cont_18700 : 
	addi	r28 r7 1
	jump	L_do_without_neighbors_2268
L_else_18699 : 
	return
L_else_18697 : 
	return
L_else_18695 : 
	ldi	r6 r9 3
	add	r1 r6 r7
	ldi	r6 r1 0
	bne	r6 r0 L_else_18705
	jump	L_cont_18703
L_else_18705 : 
	add	r1 r19 r16
	ldi	r6 r1 0
	ldi	r12 r6 5
	addi	r6 r16 -1
	add	r1 r18 r6
	ldi	r6 r1 0
	ldi	r11 r6 5
	add	r1 r18 r16
	ldi	r6 r1 0
	ldi	r10 r6 5
	addi	r6 r16 1
	add	r1 r18 r6
	ldi	r6 r1 0
	ldi	r9 r6 5
	add	r1 r17 r16
	ldi	r6 r1 0
	ldi	r8 r6 5
	add	r1 r12 r7
	ldi	r6 r1 0
	fldi	f2 r6 0
	fsti	f2 r0 1052
	fldi	f2 r6 1
	fsti	f2 r0 1053
	fldi	f2 r6 2
	fsti	f2 r0 1054
	add	r1 r11 r7
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
	add	r1 r10 r7
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
	add	r1 r9 r7
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
	add	r1 r18 r16
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
L_cont_18703 : 
	addi	r28 r7 1
	add	r1 r18 r16
	ldi	r8 r1 0
	addi	r6 r0 4
	bgt	r28 r6 L_else_18707
	ldi	r6 r8 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else_18709
	add	r1 r18 r16
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r28
	ldi	r7 r1 0
	add	r1 r19 r16
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r7 L_else_18712
	add	r1 r17 r16
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r7 L_else_18719
	addi	r6 r16 -1
	add	r1 r18 r6
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r7 L_else_18721
	addi	r6 r16 1
	add	r1 r18 r6
	ldi	r6 r1 0
	ldi	r6 r6 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r7 L_else_18723
	addi	r6 r0 1
	jump	L_cont_18710
L_else_18723 : 
	addi	r6 r0 0
	jump	L_cont_18710
L_else_18721 : 
	addi	r6 r0 0
	jump	L_cont_18710
L_else_18719 : 
	addi	r6 r0 0
	jump	L_cont_18710
L_else_18712 : 
	addi	r6 r0 0
L_cont_18710 : 
	bne	r6 r0 L_else_18714
	add	r1 r18 r16
	ldi	r6 r1 0
	jump	L_do_without_neighbors_2268
L_else_18714 : 
	ldi	r6 r8 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else_18717
	jump	L_cont_18715
L_else_18717 : 
	add	r11 r0 r16
	add	r6 r0 r19
	add	r14 r0 r18
	add	r7 r0 r17
	add	r13 r0 r28
	call	L_calc_diffuse_using_5points_2262
L_cont_18715 : 
	addi	r6 r28 1
	add	r7 r0 r6
	jump	L_try_exploit_neighbors_2284
L_else_18709 : 
	return
L_else_18707 : 
	return
L_else_18690 : 
	return
L_else_18688 : 
	return
L_write_rgb_element_2293 : 
	jump	min_caml_print_float
L_pretrace_diffuse_rays_2297 : 
	addi	r6 r0 4
	bgt	r28 r6 L_else_18733
	ldi	r6 r27 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else_18735
	ldi	r6 r27 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else_18738
	jump	L_cont_18736
L_else_18738 : 
	ldi	r6 r27 6
	ldi	r8 r6 0
	fldi	f2 r0 26
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
L_cont_18736 : 
	addi	r28 r28 1
	addi	r6 r0 4
	bgt	r28 r6 L_else_18740
	ldi	r6 r27 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else_18742
	ldi	r6 r27 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else_18745
	jump	L_cont_18743
L_else_18745 : 
	ldi	r6 r27 6
	ldi	r8 r6 0
	fldi	f2 r0 26
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
	fbgt	f0 f3 L_else_18748
	add	r1 r24 r7
	ldi	r22 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_18746
L_else_18748 : 
	addi	r6 r0 119
	add	r1 r24 r6
	ldi	r22 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_18746 : 
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
L_cont_18743 : 
	addi	r6 r28 1
	add	r28 r0 r6
	jump	L_pretrace_diffuse_rays_2297
L_else_18742 : 
	return
L_else_18740 : 
	return
L_else_18735 : 
	return
L_else_18733 : 
	return
L_pretrace_pixels_2300 : 
	bgt	r0 r6 L_else_18751
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
	fbne	f2 f0 L_else_18754
	fldi	f3 r0 12
	jump	L_cont_18752
L_else_18754 : 
	fldi	f3 r0 12
	fdiv	f3 f3 f2
L_cont_18752 : 
	fldi	f2 r0 1069
	fmul	f2 f2 f3
	fsti	f2 r0 1069
	fldi	f2 r0 1070
	fmul	f2 f2 f3
	fsti	f2 r0 1070
	fldi	f2 r0 1071
	fmul	f2 f2 f3
	fsti	f2 r0 1071
	fldi	f2 r0 26
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
	fldi	f17 r0 26
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
	bgt	r0 r9 L_else_18757
	ldi	r9 r27 3
	add	r1 r9 r28
	ldi	r9 r1 0
	bne	r9 r0 L_else_18763
	jump	L_cont_18761
L_else_18763 : 
	ldi	r9 r27 6
	ldi	r11 r9 0
	fldi	f2 r0 26
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
	fbgt	f0 f3 L_else_18766
	add	r1 r24 r10
	ldi	r22 r1 0
	fldi	f2 r0 49
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
	jump	L_cont_18764
L_else_18766 : 
	addi	r9 r0 119
	add	r1 r24 r9
	ldi	r22 r1 0
	fldi	f2 r0 50
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
L_cont_18764 : 
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
L_cont_18761 : 
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
	jump	L_cont_18755
L_else_18757 : 
L_cont_18755 : 
	addi	r9 r6 -1
	addi	r6 r8 1
	addi	r8 r0 5
	bgt	r8 r6 L_else_18760
	addi	r6 r6 -5
	jump	L_cont_18758
L_else_18760 : 
L_cont_18758 : 
	add	r8 r0 r6
	add	r6 r0 r9
	jump	L_pretrace_pixels_2300
L_else_18751 : 
	return
L_scan_pixel_2311 : 
	ldi	r11 r0 1058
	bgt	r11 r10 L_else_18769
	return
L_else_18769 : 
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
	bgt	r12 r11 L_else_18772
	addi	r11 r0 0
	jump	L_cont_18770
L_else_18772 : 
	bgt	r8 r0 L_else_18812
	addi	r11 r0 0
	jump	L_cont_18770
L_else_18812 : 
	ldi	r12 r0 1058
	addi	r11 r10 1
	bgt	r12 r11 L_else_18814
	addi	r11 r0 0
	jump	L_cont_18770
L_else_18814 : 
	bgt	r10 r0 L_else_18816
	addi	r11 r0 0
	jump	L_cont_18770
L_else_18816 : 
	addi	r11 r0 1
L_cont_18770 : 
	bne	r11 r0 L_else_18775
	add	r1 r9 r10
	ldi	r11 r1 0
	addi	r28 r0 0
	ldi	r12 r11 2
	add	r1 r12 r28
	ldi	r12 r1 0
	bgt	r0 r12 L_else_18791
	ldi	r12 r11 3
	add	r1 r12 r28
	ldi	r12 r1 0
	bne	r12 r0 L_else_18794
	jump	L_cont_18792
L_else_18794 : 
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
L_cont_18792 : 
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
	jump	L_cont_18773
L_else_18791 : 
	jump	L_cont_18773
L_else_18775 : 
	addi	r28 r0 0
	add	r1 r9 r10
	ldi	r13 r1 0
	ldi	r11 r13 2
	add	r1 r11 r28
	ldi	r11 r1 0
	bgt	r0 r11 L_else_18796
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
	bne	r11 r12 L_else_18799
	add	r1 r6 r10
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r28
	ldi	r11 r1 0
	bne	r11 r12 L_else_18806
	addi	r11 r10 -1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r28
	ldi	r11 r1 0
	bne	r11 r12 L_else_18808
	addi	r11 r10 1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r28
	ldi	r11 r1 0
	bne	r11 r12 L_else_18810
	addi	r11 r0 1
	jump	L_cont_18797
L_else_18810 : 
	addi	r11 r0 0
	jump	L_cont_18797
L_else_18808 : 
	addi	r11 r0 0
	jump	L_cont_18797
L_else_18806 : 
	addi	r11 r0 0
	jump	L_cont_18797
L_else_18799 : 
	addi	r11 r0 0
L_cont_18797 : 
	bne	r11 r0 L_else_18801
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
	jump	L_cont_18773
L_else_18801 : 
	ldi	r11 r13 3
	add	r1 r11 r28
	ldi	r11 r1 0
	bne	r11 r0 L_else_18804
	jump	L_cont_18802
L_else_18804 : 
	sti	r10 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	add	r11 r0 r10
	add	r14 r0 r9
	add	r13 r0 r28
	add	r1 r0 r6
	add	r6 r0 r7
	add	r7 r0 r1
	addi	r2 r2 5
	call	L_calc_diffuse_using_5points_2262
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
L_cont_18802 : 
	addi	r11 r0 1
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r16 r0 r10
	add	r15 r0 r8
	add	r19 r0 r7
	add	r18 r0 r9
	add	r17 r0 r6
	add	r7 r0 r11
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	jump	L_cont_18773
L_else_18796 : 
L_cont_18773 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element_2293
	fldi	f2 r0 1056
	call	L_write_rgb_element_2293
	fldi	f2 r0 1057
	call	L_write_rgb_element_2293
	addi	r10 r10 1
	ldi	r11 r0 1058
	bgt	r11 r10 L_else_18777
	return
L_else_18777 : 
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
	bgt	r12 r11 L_else_18780
	addi	r11 r0 0
	jump	L_cont_18778
L_else_18780 : 
	bgt	r8 r0 L_else_18785
	addi	r11 r0 0
	jump	L_cont_18778
L_else_18785 : 
	ldi	r12 r0 1058
	addi	r11 r10 1
	bgt	r12 r11 L_else_18787
	addi	r11 r0 0
	jump	L_cont_18778
L_else_18787 : 
	bgt	r10 r0 L_else_18789
	addi	r11 r0 0
	jump	L_cont_18778
L_else_18789 : 
	addi	r11 r0 1
L_cont_18778 : 
	bne	r11 r0 L_else_18783
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
	jump	L_cont_18781
L_else_18783 : 
	addi	r11 r0 0
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r9 r2 2
	sti	r6 r2 3
	sti	r10 r2 4
	add	r16 r0 r10
	add	r15 r0 r8
	add	r19 r0 r7
	add	r18 r0 r9
	add	r17 r0 r6
	add	r7 r0 r11
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	ldi	r6 r2 3
	ldi	r10 r2 4
L_cont_18781 : 
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
	bgt	r11 r10 L_else_18819
	return
L_else_18819 : 
	ldi	r11 r0 1059
	addi	r11 r11 -1
	bgt	r11 r10 L_else_18822
	jump	L_cont_18820
L_else_18822 : 
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
L_cont_18820 : 
	addi	r16 r0 0
	ldi	r11 r0 1058
	bgt	r11 r0 L_else_18825
	jump	L_cont_18823
L_else_18825 : 
	add	r1 r7 r16
	ldi	r11 r1 0
	ldi	r11 r11 0
	fldi	f2 r11 0
	fsti	f2 r0 1055
	fldi	f2 r11 1
	fsti	f2 r0 1056
	fldi	f2 r11 2
	fsti	f2 r0 1057
	ldi	r12 r0 1059
	addi	r11 r10 1
	bgt	r12 r11 L_else_18839
	addi	r11 r0 0
	jump	L_cont_18837
L_else_18839 : 
	bgt	r10 r0 L_else_18844
	addi	r11 r0 0
	jump	L_cont_18837
L_else_18844 : 
	ldi	r12 r0 1058
	addi	r11 r0 1
	bgt	r12 r11 L_else_18846
	addi	r11 r0 0
	jump	L_cont_18837
L_else_18846 : 
	addi	r11 r0 0
L_cont_18837 : 
	bne	r11 r0 L_else_18842
	add	r1 r7 r16
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
	jump	L_cont_18840
L_else_18842 : 
	addi	r11 r0 0
	sti	r10 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r9 r2 4
	add	r15 r0 r10
	add	r19 r0 r8
	add	r18 r0 r7
	add	r17 r0 r6
	add	r7 r0 r11
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r6 r2 3
	ldi	r9 r2 4
L_cont_18840 : 
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
L_cont_18823 : 
	addi	r10 r10 1
	addi	r9 r9 2
	addi	r11 r0 5
	bgt	r11 r9 L_else_18828
	addi	r9 r9 -5
	jump	L_cont_18826
L_else_18828 : 
L_cont_18826 : 
	ldi	r11 r0 1059
	bgt	r11 r10 L_else_18830
	return
L_else_18830 : 
	ldi	r11 r0 1059
	addi	r11 r11 -1
	bgt	r11 r10 L_else_18833
	jump	L_cont_18831
L_else_18833 : 
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
L_cont_18831 : 
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
	bgt	r11 r9 L_else_18836
	addi	r9 r9 -5
	jump	L_cont_18834
L_else_18836 : 
L_cont_18834 : 
	add	r1 r0 r8
	add	r8 r0 r6
	add	r6 r0 r7
	add	r7 r0 r1
	jump	L_scan_line_2317
L_create_float5x3array_2323 : 
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r7 r0 5
	add	r1 r0 r6
	add	r6 r0 r7
	add	r7 r0 r1
	call	min_caml_create_array
	add	r8 r0 r6
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r6 r8 1
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r6 r8 2
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r6 r8 3
	addi	r6 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r6 r8 4
	add	r6 r0 r8
	return
L_create_pixel_2325 : 
	addi	r6 r0 3
	fldi	f2 r0 26
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
	bgt	r0 r18 L_else_18851
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18853
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18855
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18857
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18859
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18861
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18863
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18865
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r6 r18 -1
	add	r18 r0 r6
	jump	L_init_line_elements_2327
L_else_18865 : 
	add	r6 r0 r17
	return
L_else_18863 : 
	add	r6 r0 r17
	return
L_else_18861 : 
	add	r6 r0 r17
	return
L_else_18859 : 
	add	r6 r0 r17
	return
L_else_18857 : 
	add	r6 r0 r17
	return
L_else_18855 : 
	add	r6 r0 r17
	return
L_else_18853 : 
	add	r6 r0 r17
	return
L_else_18851 : 
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
	bgt	r0 r18 L_else_18868
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18870
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18872
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18874
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18876
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18878
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else_18880
	call	L_create_pixel_2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	jump	L_init_line_elements_2327
L_else_18880 : 
	add	r6 r0 r17
	return
L_else_18878 : 
	add	r6 r0 r17
	return
L_else_18876 : 
	add	r6 r0 r17
	return
L_else_18874 : 
	add	r6 r0 r17
	return
L_else_18872 : 
	add	r6 r0 r17
	return
L_else_18870 : 
	add	r6 r0 r17
	return
L_else_18868 : 
	add	r6 r0 r17
	return
L_adjust_position_2334 : 
	fmul	f3 f2 f2
	fldi	f2 r0 48
	fadd	f2 f3 f2
	fsqrt	f15 f2
	fldi	f2 r0 12
	fdiv	f13 f2 f15
	call	L_atan_1882
	fmul	f10 f2 f16
	fadd	f9 f0 f10
	call	L_sin_1878
	fadd	f11 f0 f2
	fadd	f2 f0 f10
	call	L_cos_1880
	fdiv	f2 f11 f2
	fmul	f2 f2 f15
	return
L_calc_dirvec_2337 : 
	addi	r9 r0 5
	bgt	r9 r8 L_else_18884
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
L_else_18884 : 
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
	bgt	r0 r11 L_else_18887
	foi	f3 r11
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
	fsub	f17 f3 f2
	addi	r8 r0 0
	fldi	f5 r0 26
	fldi	f2 r0 26
	add	r7 r0 r13
	add	r6 r0 r10
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	foi	f2 r11
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 48
	fadd	f17 f2 f3
	addi	r8 r0 0
	fldi	f5 r0 26
	fldi	f2 r0 26
	addi	r6 r10 2
	add	r7 r0 r13
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	addi	r12 r11 -1
	addi	r11 r13 1
	addi	r6 r0 5
	bgt	r6 r11 L_else_18890
	addi	r11 r11 -5
	jump	L_cont_18888
L_else_18890 : 
L_cont_18888 : 
	bgt	r0 r12 L_else_18892
	foi	f2 r12
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 52
	fsub	f17 f2 f3
	addi	r8 r0 0
	fldi	f5 r0 26
	fldi	f2 r0 26
	add	r7 r0 r11
	add	r6 r0 r10
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	foi	f2 r12
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 48
	fadd	f17 f2 f3
	addi	r8 r0 0
	fldi	f5 r0 26
	fldi	f2 r0 26
	addi	r6 r10 2
	add	r7 r0 r11
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	addi	r7 r12 -1
	addi	r6 r11 1
	addi	r8 r0 5
	bgt	r8 r6 L_else_18895
	addi	r6 r6 -5
	jump	L_cont_18893
L_else_18895 : 
L_cont_18893 : 
	add	r11 r0 r7
	add	r13 r0 r6
	jump	L_calc_dirvecs_2345
L_else_18892 : 
	return
L_else_18887 : 
	return
L_calc_dirvec_rows_2350 : 
	bgt	r0 r16 L_else_18898
	foi	f3 r16
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
	fsub	f20 f3 f2
	addi	r10 r0 4
	foi	f3 r10
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
	fsub	f17 f3 f2
	addi	r8 r0 0
	fldi	f5 r0 26
	fldi	f2 r0 26
	add	r7 r0 r15
	add	r6 r0 r14
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	foi	f2 r10
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 48
	fadd	f17 f2 f3
	addi	r8 r0 0
	fldi	f5 r0 26
	fldi	f2 r0 26
	addi	r6 r14 2
	add	r7 r0 r15
	fadd	f18 f0 f20
	call	L_calc_dirvec_2337
	addi	r11 r0 3
	addi	r13 r15 1
	addi	r6 r0 5
	bgt	r6 r13 L_else_18901
	addi	r13 r13 -5
	jump	L_cont_18899
L_else_18901 : 
L_cont_18899 : 
	add	r10 r0 r14
	call	L_calc_dirvecs_2345
	addi	r16 r16 -1
	addi	r15 r15 2
	addi	r6 r0 5
	bgt	r6 r15 L_else_18904
	addi	r15 r15 -5
	jump	L_cont_18902
L_else_18904 : 
L_cont_18902 : 
	addi	r14 r14 4
	bgt	r0 r16 L_else_18906
	foi	f3 r16
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
	fsub	f20 f3 f2
	addi	r11 r0 4
	add	r13 r0 r15
	add	r10 r0 r14
	call	L_calc_dirvecs_2345
	addi	r8 r16 -1
	addi	r6 r15 2
	addi	r7 r0 5
	bgt	r7 r6 L_else_18909
	addi	r6 r6 -5
	jump	L_cont_18907
L_else_18909 : 
L_cont_18907 : 
	addi	r7 r14 4
	add	r16 r0 r8
	add	r15 r0 r6
	add	r14 r0 r7
	jump	L_calc_dirvec_rows_2350
L_else_18906 : 
	return
L_else_18898 : 
	return
L_create_dirvec_2354 : 
	addi	r6 r0 3
	fldi	f2 r0 26
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
	bgt	r0 r12 L_else_18913
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18915
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18917
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18919
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18921
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18923
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18925
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else_18927
	call	L_create_dirvec_2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r6 r12 -1
	add	r12 r0 r6
	jump	L_create_dirvec_elements_2356
L_else_18927 : 
	return
L_else_18925 : 
	return
L_else_18923 : 
	return
L_else_18921 : 
	return
L_else_18919 : 
	return
L_else_18917 : 
	return
L_else_18915 : 
	return
L_else_18913 : 
	return
L_create_dirvecs_2359 : 
	bgt	r0 r13 L_else_18930
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
L_else_18930 : 
	return
L_init_dirvec_constants_2361 : 
	bgt	r0 r15 L_else_18933
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	call	L_iter_setup_dirvec_constants_2143
	addi	r15 r15 -1
	bgt	r0 r15 L_else_18935
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_18938
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_18953
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18951
L_else_18953 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18955
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18951
L_else_18955 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_18951 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18936
L_else_18938 : 
L_cont_18936 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else_18940
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	call	L_iter_setup_dirvec_constants_2143
	addi	r15 r15 -1
	bgt	r0 r15 L_else_18942
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_18945
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_18948
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18946
L_else_18948 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18950
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18946
L_else_18950 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18946 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18943
L_else_18945 : 
L_cont_18943 : 
	addi	r6 r15 -1
	add	r15 r0 r6
	jump	L_init_dirvec_constants_2361
L_else_18942 : 
	return
L_else_18940 : 
	return
L_else_18935 : 
	return
L_else_18933 : 
	return
L_init_vecset_constants_2364 : 
	bgt	r0 r16 L_else_18958
	ldi	r14 r16 1076
	addi	r6 r0 119
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else_18961
	ldi	r8 r13 1970
	ldi	r12 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_18994
	call	L_setup_rect_table_2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18992
L_else_18994 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18996
	call	L_setup_surface_table_2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont_18992
L_else_18996 : 
	call	L_setup_second_table_2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont_18992 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18959
L_else_18961 : 
L_cont_18959 : 
	addi	r6 r0 118
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	call	L_iter_setup_dirvec_constants_2143
	addi	r6 r0 117
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_18964
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r7 r8 1
	bne	r7 r4 L_else_18989
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18987
L_else_18989 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_18991
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18987
L_else_18991 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18987 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18962
L_else_18964 : 
L_cont_18962 : 
	addi	r15 r0 116
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_18966
	ldi	r14 r16 1076
	addi	r6 r0 119
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	call	L_iter_setup_dirvec_constants_2143
	addi	r6 r0 118
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_18969
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r6 r8 1
	bne	r6 r4 L_else_18984
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18982
L_else_18984 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_18986
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18982
L_else_18986 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18982 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18967
L_else_18969 : 
L_cont_18967 : 
	addi	r15 r0 117
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_18971
	ldi	r14 r16 1076
	addi	r6 r0 119
	add	r1 r14 r6
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else_18974
	ldi	r8 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r6 r8 1
	bne	r6 r4 L_else_18979
	call	L_setup_rect_table_2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18977
L_else_18979 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_18981
	call	L_setup_surface_table_2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_18977
L_else_18981 : 
	call	L_setup_second_table_2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_18977 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_18972
L_else_18974 : 
L_cont_18972 : 
	addi	r15 r0 118
	call	L_init_dirvec_constants_2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else_18976
	ldi	r14 r16 1076
	addi	r15 r0 119
	call	L_init_dirvec_constants_2361
	addi	r6 r16 -1
	add	r16 r0 r6
	jump	L_init_vecset_constants_2364
L_else_18976 : 
	return
L_else_18971 : 
	return
L_else_18966 : 
	return
L_else_18958 : 
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
	fldi	f3 r0 53
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
	call	min_caml_read_float
	fsti	f2 r0 1024
	call	min_caml_read_float
	fsti	f2 r0 1025
	call	min_caml_read_float
	fsti	f2 r0 1026
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f11 f2 f3
	fadd	f2 f0 f11
	call	L_cos_1880
	fadd	f10 f0 f2
	fadd	f9 f0 f11
	call	L_sin_1878
	fadd	f11 f0 f2
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f13 f2 f3
	fadd	f2 f0 f13
	call	L_cos_1880
	fadd	f12 f0 f2
	fadd	f9 f0 f13
	call	L_sin_1878
	fmul	f4 f10 f2
	fldi	f3 r0 54
	fmul	f3 f4 f3
	fsti	f3 r0 1027
	fldi	f3 r0 55
	fmul	f3 f11 f3
	fsti	f3 r0 1028
	fmul	f4 f10 f12
	fldi	f3 r0 54
	fmul	f3 f4 f3
	fsti	f3 r0 1029
	fsti	f12 r0 1030
	fldi	f3 r0 26
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
	sti	r6 r2 0
	addi	r2 r2 1
	call	min_caml_read_int
	addi	r2 r2 -1
	ldi	r6 r2 0
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f11 f2 f3
	fadd	f9 f0 f11
	call	L_sin_1878
	fsub	f2 f0 f2
	fsti	f2 r0 1040
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f10 f2 f3
	fadd	f2 f0 f11
	call	L_cos_1880
	fadd	f11 f0 f2
	fadd	f9 f0 f10
	call	L_sin_1878
	fmul	f2 f11 f2
	fsti	f2 r0 1039
	fadd	f2 f0 f10
	call	L_cos_1880
	fmul	f2 f11 f2
	fsti	f2 r0 1041
	call	min_caml_read_float
	fsti	f2 r0 1081
	addi	r9 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_read_object_2038
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r10 r0 0
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r11 r9 0
	bne	r11 r5 L_else_18999
	jump	L_cont_18997
L_else_18999 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r9 r1 0
	addi	r10 r0 1
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r11 r9 0
	bne	r11 r5 L_else_19020
	jump	L_cont_18997
L_else_19020 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r9 r1 0
	addi	r10 r0 2
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r11 r9 0
	bne	r11 r5 L_else_19022
	jump	L_cont_18997
L_else_19022 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r9 r1 0
	addi	r10 r0 3
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r11 r9 0
	bne	r11 r5 L_else_19024
	jump	L_cont_18997
L_else_19024 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r9 r1 0
	addi	r10 r0 4
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r11 r9 0
	bne	r11 r5 L_else_19026
	jump	L_cont_18997
L_else_19026 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r9 r1 0
	addi	r10 r0 5
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_read_and_network_2046
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
L_cont_18997 : 
	addi	r10 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_read_or_network_2044
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	sti	r9 r0 1183
	addi	r9 r0 80
	sti	r6 r2 0
	add	r6 r0 r9
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r9 r0 54
	sti	r6 r2 0
	add	r6 r0 r9
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r9 r0 10
	sti	r6 r2 0
	add	r6 r0 r9
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r6 r2 0
	ldi	r10 r0 1058
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_print_int_1900
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r9 r0 32
	sti	r6 r2 0
	add	r6 r0 r9
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r6 r2 0
	ldi	r10 r0 1059
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_print_int_1900
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r9 r0 32
	sti	r6 r2 0
	add	r6 r0 r9
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r10 r0 255
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_print_int_1900
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r9 r0 10
	sti	r6 r2 0
	add	r6 r0 r9
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r6 r2 0
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
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
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
	bgt	r0 r12 L_else_19002
	ldi	r9 r12 1970
	ldi	r13 r11 1
	ldi	r10 r11 0
	ldi	r15 r9 1
	bne	r15 r4 L_else_19016
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
	jump	L_cont_19014
L_else_19016 : 
	addi	r14 r0 2
	bne	r15 r14 L_else_19018
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
	jump	L_cont_19014
L_else_19018 : 
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
L_cont_19014 : 
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
	jump	L_cont_19000
L_else_19002 : 
L_cont_19000 : 
	ldi	r9 r0 1072
	addi	r11 r9 -1
	bgt	r0 r11 L_else_19005
	ldi	r10 r11 1970
	ldi	r12 r10 2
	addi	r9 r0 2
	bne	r12 r9 L_else_19007
	ldi	r9 r10 7
	fldi	f3 r9 0
	fldi	f2 r0 12
	fbgt	f2 f3 L_else_19009
	jump	L_cont_19003
L_else_19009 : 
	ldi	r9 r10 1
	bne	r9 r4 L_else_19011
	addi	r9 r0 4
	mul	r15 r11 r9
	ldi	r14 r0 1075
	fldi	f3 r0 12
	ldi	r9 r10 7
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
	jump	L_cont_19003
L_else_19011 : 
	addi	r12 r0 2
	bne	r9 r12 L_else_19013
	addi	r9 r0 4
	mul	r9 r11 r9
	addi	r14 r9 1
	ldi	r15 r0 1075
	fldi	f3 r0 12
	ldi	r9 r10 7
	fldi	f2 r9 0
	fsub	f9 f3 f2
	ldi	r9 r10 4
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
	fldi	f3 r0 29
	ldi	r9 r10 4
	fldi	f2 r9 0
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	fldi	f3 r0 1039
	fsub	f5 f2 f3
	fldi	f3 r0 29
	ldi	r9 r10 4
	fldi	f2 r9 1
	fmul	f2 f3 f2
	fmul	f3 f2 f6
	fldi	f2 r0 1040
	fsub	f3 f3 f2
	fldi	f4 r0 29
	ldi	r9 r10 4
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
	addi	r9 r0 1185
	sti	r14 r3 0
	sti	r16 r3 1
	fsti	f9 r3 2
	add	r10 r0 r3
	addi	r3 r3 3
	add	r1 r9 r15
	sti	r10 r1 0
	addi	r9 r15 1
	sti	r9 r0 1075
	jump	L_cont_19003
L_else_19013 : 
	jump	L_cont_19003
L_else_19007 : 
	jump	L_cont_19003
L_else_19005 : 
L_cont_19003 : 
	addi	r10 r0 0
	addi	r9 r0 0
	fldi	f3 r0 1062
	ldi	r11 r0 1061
	sub	r10 r10 r11
	foi	f2 r10
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
	ldi	r10 r0 1058
	addi	r10 r10 -1
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	add	r6 r0 r10
	add	r8 r0 r9
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
