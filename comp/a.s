	nop
	nop
	addi	r6 r0 170
	ptc	r6
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r0 256
	addi	r3 r0 1024
	addi	r6 r0 1555
	addi	r7 r0 0
	call	min_caml_create_array
	addi	r6 r0 1856
	sti	r6 r0 1854
	addi	r6 r0 1859
	sti	r6 r0 1855
	jump	min_caml_end
min_caml_create_array : 
	add	r10 r0 r3
	add	r3 r6 r3
	sub	r6 r3 r6
	add	r8 r0 r7
	sub	r7 r3 r6
	add	r9 r0 r4
	call	min_caml_init_arrayt
	add	r6 r0 r10
	return
min_caml_init_array : 
	add	r6 r6 r10
min_caml_init_arrayt : 
	bne	r0 r7 L_else.22707
	return
L_else.22707 : 
	sti	r8 r6 0
	addi	r7 r7 -1
	add	r6 r6 r9
	jump	min_caml_init_arrayt
min_caml_create_float_array : 
	add	r9 r0 r3
	add	r3 r6 r3
	sub	r6 r3 r6
	sub	r7 r3 r6
	add	r8 r0 r4
	call	min_caml_init_float_arrayt
	add	r6 r0 r9
	return
min_caml_init_float_array : 
	add	r6 r6 r9
min_caml_init_float_arrayt : 
	bne	r0 r7 L_else.22708
	return
L_else.22708 : 
	fsti	f2 r6 0
	addi	r7 r7 -1
	addi	r6 r6 r8
	jump	min_caml_init_float_arrayt
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
L_psin.1938 : 
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
L_pcos.1940 : 
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
L_sin.1942 : 
	fldi	f4 r0 13
	fldi	f6 r0 14
	fbgt	f2 f6 L_else.21044
	fldi	f3 r0 15
	fbgt	f3 f2 L_else.21046
	fldi	f5 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f2 f0 L_else.21048
	fldi	f3 r0 19
	fbgt	f3 f2 L_else.21050
	jump	L_psin.1938
L_else.21050 : 
	fldi	f3 r0 20
	fbgt	f3 f2 L_else.21052
	fadd	f2 f4 f2
	call	L_pcos.1940
	fsub	f2 f0 f2
	return
L_else.21052 : 
	fadd	f2 f6 f2
	call	L_psin.1938
	fsub	f2 f0 f2
	return
L_else.21048 : 
	fbgt	f2 f5 L_else.21054
	jump	L_psin.1938
L_else.21054 : 
	fbgt	f2 f3 L_else.21056
	fsub	f2 f2 f4
	jump	L_pcos.1940
L_else.21056 : 
	fsub	f2 f6 f2
	jump	L_psin.1938
L_else.21046 : 
	fadd	f2 f2 f4
	jump	L_sin.1942
L_else.21044 : 
	fsub	f2 f2 f4
	jump	L_sin.1942
L_cos.1944 : 
	fldi	f4 r0 13
	fldi	f6 r0 14
	fbgt	f2 f6 L_else.21059
	fldi	f3 r0 15
	fbgt	f3 f2 L_else.21061
	fldi	f5 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f2 f0 L_else.21063
	fldi	f3 r0 19
	fbgt	f3 f2 L_else.21065
	jump	L_pcos.1940
L_else.21065 : 
	fldi	f3 r0 20
	fbgt	f3 f2 L_else.21067
	fadd	f2 f2 f4
	jump	L_psin.1938
L_else.21067 : 
	fadd	f2 f6 f2
	call	L_pcos.1940
	fsub	f2 f0 f2
	return
L_else.21063 : 
	fbgt	f2 f5 L_else.21069
	jump	L_pcos.1940
L_else.21069 : 
	fbgt	f2 f3 L_else.21071
	fsub	f2 f2 f4
	call	L_psin.1938
	fsub	f2 f0 f2
	return
L_else.21071 : 
	fsub	f2 f6 f2
	call	L_pcos.1940
	fsub	f2 f0 f2
	return
L_else.21061 : 
	fadd	f2 f2 f4
	jump	L_cos.1944
L_else.21059 : 
	fsub	f2 f2 f4
	jump	L_cos.1944
L_atan.1946 : 
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
L_spow10.1948 : 
	bne	r6 r0 L_else.21075
	add	r6 r0 r7
	return
L_else.21075 : 
	addi	r6 r6 -1
	muli	r7 r7 10
	jump	L_spow10.1948
L_pow10.1951 : 
	addi	r7 r0 1
	jump	L_spow10.1948
L_sdivn.1953 : 
	sub	r6 r6 r7
	bgt	r0 r6 L_else.21079
	addi	r8 r8 1
	jump	L_sdivn.1953
L_else.21079 : 
	add	r6 r0 r8
	return
L_divpow10.1957 : 
	call	L_pow10.1951
	addi	r7 r0 0
	add	r1 r0 r6
	add	r6 r0 r8
	add	r8 r0 r7
	add	r7 r0 r1
	jump	L_sdivn.1953
L_sprint_int.1960 : 
	bne	r10 r0 L_else.21083
	addi	r6 r9 48
	jump	min_caml_print_char
L_else.21083 : 
	bne	r11 r0 L_else.21085
	add	r8 r0 r9
	add	r6 r0 r10
	call	L_divpow10.1957
	add	r8 r0 r6
	addi	r6 r8 48
	call	min_caml_print_char
	add	r6 r0 r10
	call	L_pow10.1951
	mul	r6 r8 r6
	sub	r9 r9 r6
	addi	r10 r10 -1
	addi	r11 r0 0
	jump	L_sprint_int.1960
L_else.21085 : 
	add	r8 r0 r9
	add	r6 r0 r10
	call	L_divpow10.1957
	add	r8 r0 r6
	bne	r8 r0 L_else.21087
	addi	r10 r10 -1
	jump	L_sprint_int.1960
L_else.21087 : 
	addi	r6 r8 48
	call	min_caml_print_char
	add	r6 r0 r10
	call	L_pow10.1951
	mul	r6 r8 r6
	sub	r9 r9 r6
	addi	r10 r10 -1
	addi	r11 r0 0
	jump	L_sprint_int.1960
L_print_int.1964 : 
	addi	r10 r0 9
	addi	r11 r0 1
	jump	L_sprint_int.1960
L_read_screen_settings.2093 : 
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
	call	L_cos.1944
	fadd	f10 f0 f2
	fadd	f2 f0 f11
	call	L_sin.1942
	fadd	f11 f0 f2
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f13 f2 f3
	fadd	f2 f0 f13
	call	L_cos.1944
	fadd	f12 f0 f2
	fadd	f2 f0 f13
	call	L_sin.1942
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
	fsti	f0 r0 1031
	fsub	f3 f0 f2
	fsti	f3 r0 1032
	fsub	f3 f0 f11
	fmul	f2 f3 f2
	fsti	f2 r0 1033
	fsub	f2 f0 f10
	fsti	f2 r0 1034
	fmul	f2 f3 f12
	fsti	f2 r0 1035
	fldi	f3 r0 1024
	fldi	f2 r0 1027
	fsub	f2 f3 f2
	fsti	f2 r0 1036
	fldi	f3 r0 1025
	fldi	f2 r0 1028
	fsub	f2 f3 f2
	fsti	f2 r0 1037
	fldi	f3 r0 1026
	fldi	f2 r0 1029
	fsub	f2 f3 f2
	fsti	f2 r0 1038
	return
L_read_light.2095 : 
	call	min_caml_read_int
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f10 f2 f3
	fadd	f2 f0 f10
	call	L_sin.1942
	fsub	f2 f0 f2
	fsti	f2 r0 1040
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f11 f2 f3
	fadd	f2 f0 f10
	call	L_cos.1944
	fadd	f10 f0 f2
	fadd	f2 f0 f11
	call	L_sin.1942
	fmul	f2 f10 f2
	fsti	f2 r0 1039
	fadd	f2 f0 f11
	call	L_cos.1944
	fmul	f2 f10 f2
	fsti	f2 r0 1041
	call	min_caml_read_float
	fsti	f2 r0 1081
	return
L_rotate_quadratic_matrix.2097 : 
	fldi	f2 r7 0
	call	L_cos.1944
	fadd	f10 f0 f2
	fldi	f2 r7 0
	call	L_sin.1942
	fadd	f11 f0 f2
	fldi	f2 r7 1
	call	L_cos.1944
	fadd	f12 f0 f2
	fldi	f2 r7 1
	call	L_sin.1942
	fadd	f13 f0 f2
	fldi	f2 r7 2
	call	L_cos.1944
	fadd	f14 f0 f2
	fldi	f2 r7 2
	call	L_sin.1942
	fmul	f5 f12 f14
	fmul	f8 f11 f13
	fmul	f4 f8 f14
	fmul	f3 f10 f2
	fsub	f9 f4 f3
	fmul	f7 f10 f13
	fmul	f4 f7 f14
	fmul	f3 f11 f2
	fadd	f6 f4 f3
	fmul	f15 f12 f2
	fmul	f4 f8 f2
	fmul	f3 f10 f14
	fadd	f8 f4 f3
	fmul	f2 f7 f2
	fmul	f3 f11 f14
	fsub	f14 f2 f3
	fsub	f13 f0 f13
	fmul	f11 f11 f12
	fmul	f10 f10 f12
	fldi	f7 r6 0
	fldi	f16 r6 1
	fldi	f12 r6 2
	fmul	f2 f5 f5
	fmul	f3 f7 f2
	fmul	f2 f15 f15
	fmul	f2 f16 f2
	fadd	f3 f3 f2
	fmul	f2 f13 f13
	fmul	f2 f12 f2
	fadd	f2 f3 f2
	fsti	f2 r6 0
	fmul	f2 f9 f9
	fmul	f3 f7 f2
	fmul	f2 f8 f8
	fmul	f2 f16 f2
	fadd	f3 f3 f2
	fmul	f2 f11 f11
	fmul	f2 f12 f2
	fadd	f2 f3 f2
	fsti	f2 r6 1
	fmul	f2 f6 f6
	fmul	f3 f7 f2
	fmul	f2 f14 f14
	fmul	f2 f16 f2
	fadd	f3 f3 f2
	fmul	f2 f10 f10
	fmul	f2 f12 f2
	fadd	f2 f3 f2
	fsti	f2 r6 2
	fldi	f4 r0 29
	fmul	f2 f7 f9
	fmul	f3 f2 f6
	fmul	f2 f16 f8
	fmul	f2 f2 f14
	fadd	f3 f3 f2
	fmul	f2 f12 f11
	fmul	f2 f2 f10
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r7 0
	fldi	f4 r0 29
	fmul	f7 f7 f5
	fmul	f3 f7 f6
	fmul	f6 f16 f15
	fmul	f2 f6 f14
	fadd	f3 f3 f2
	fmul	f5 f12 f13
	fmul	f2 f5 f10
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r7 1
	fldi	f4 r0 29
	fmul	f3 f7 f9
	fmul	f2 f6 f8
	fadd	f3 f3 f2
	fmul	f2 f5 f11
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r7 2
	return
L_read_nth_object.2100 : 
	call	min_caml_read_int
	add	r11 r0 r6
	bne	r11 r5 L_else.21094
	addi	r6 r0 0
	return
L_else.21094 : 
	call	min_caml_read_int
	add	r12 r0 r6
	call	min_caml_read_int
	add	r13 r0 r6
	call	min_caml_read_int
	add	r14 r0 r6
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r15 r0 r6
	call	min_caml_read_float
	fsti	f2 r15 0
	call	min_caml_read_float
	fsti	f2 r15 1
	call	min_caml_read_float
	fsti	f2 r15 2
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r16 r0 r6
	call	min_caml_read_float
	fsti	f2 r16 0
	call	min_caml_read_float
	fsti	f2 r16 1
	call	min_caml_read_float
	fsti	f2 r16 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else.21097
	addi	r17 r0 0
	jump	L_cont.21095
L_else.21097 : 
	addi	r17 r0 1
L_cont.21095 : 
	addi	r6 r0 2
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r18 r0 r6
	call	min_caml_read_float
	fsti	f2 r18 0
	call	min_caml_read_float
	fsti	f2 r18 1
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r19 r0 r6
	call	min_caml_read_float
	fsti	f2 r19 0
	call	min_caml_read_float
	fsti	f2 r19 1
	call	min_caml_read_float
	fsti	f2 r19 2
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r20 r0 r6
	bne	r14 r0 L_else.21100
	jump	L_cont.21098
L_else.21100 : 
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r20 0
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r20 1
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r20 2
L_cont.21098 : 
	addi	r6 r0 2
	bne	r12 r6 L_else.21103
	addi	r21 r0 1
	jump	L_cont.21101
L_else.21103 : 
	add	r21 r0 r17
L_cont.21101 : 
	addi	r6 r0 4
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r22 r0 r11
	add	r9 r0 r12
	add	r11 r0 r14
	add	r8 r0 r15
	add	r7 r0 r20
	addi	r23 r0 1919
	muli	r10 r10 11
	addi	r24 r10 10
	add	r1 r23 r24
	sti	r6 r1 0
	addi	r6 r10 9
	add	r1 r23 r6
	sti	r7 r1 0
	addi	r6 r10 8
	add	r1 r23 r6
	sti	r19 r1 0
	addi	r6 r10 7
	add	r1 r23 r6
	sti	r18 r1 0
	addi	r6 r10 6
	add	r1 r23 r6
	sti	r21 r1 0
	addi	r6 r10 5
	add	r1 r23 r6
	sti	r16 r1 0
	addi	r6 r10 4
	add	r1 r23 r6
	sti	r8 r1 0
	addi	r6 r10 3
	add	r1 r23 r6
	sti	r11 r1 0
	addi	r6 r10 2
	add	r1 r23 r6
	sti	r13 r1 0
	addi	r6 r10 1
	add	r1 r23 r6
	sti	r9 r1 0
	add	r1 r23 r10
	sti	r22 r1 0
	addi	r6 r0 3
	bne	r12 r6 L_else.21106
	fldi	f3 r15 0
	fbne	f3 f0 L_else.21112
	fldi	f2 r0 30
	jump	L_cont.21110
L_else.21112 : 
	fbne	f3 f0 L_else.21131
	fldi	f2 r0 30
	jump	L_cont.21129
L_else.21131 : 
	fbgt	f3 f0 L_else.21133
	fldi	f2 r0 31
	jump	L_cont.21129
L_else.21133 : 
	fldi	f2 r0 12
L_cont.21129 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont.21110 : 
	fsti	f2 r15 0
	fldi	f3 r15 1
	fbne	f3 f0 L_else.21115
	fldi	f2 r0 30
	jump	L_cont.21113
L_else.21115 : 
	fbne	f3 f0 L_else.21126
	fldi	f2 r0 30
	jump	L_cont.21124
L_else.21126 : 
	fbgt	f3 f0 L_else.21128
	fldi	f2 r0 31
	jump	L_cont.21124
L_else.21128 : 
	fldi	f2 r0 12
L_cont.21124 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont.21113 : 
	fsti	f2 r15 1
	fldi	f3 r15 2
	fbne	f3 f0 L_else.21118
	fldi	f2 r0 30
	jump	L_cont.21116
L_else.21118 : 
	fbne	f3 f0 L_else.21121
	fldi	f2 r0 30
	jump	L_cont.21119
L_else.21121 : 
	fbgt	f3 f0 L_else.21123
	fldi	f2 r0 31
	jump	L_cont.21119
L_else.21123 : 
	fldi	f2 r0 12
L_cont.21119 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont.21116 : 
	fsti	f2 r15 2
	jump	L_cont.21104
L_else.21106 : 
	addi	r6 r0 2
	bne	r12 r6 L_else.21135
	sub	r6 r4 r17
	fldi	f2 r15 0
	fmul	f3 f2 f2
	fldi	f2 r15 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r15 2
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else.21138
	fldi	f3 r0 12
	jump	L_cont.21136
L_else.21138 : 
	bne	r6 r0 L_else.21140
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont.21136
L_else.21140 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont.21136 : 
	fldi	f2 r15 0
	fmul	f2 f2 f3
	fsti	f2 r15 0
	fldi	f2 r15 1
	fmul	f2 f2 f3
	fsti	f2 r15 1
	fldi	f2 r15 2
	fmul	f2 f2 f3
	fsti	f2 r15 2
	jump	L_cont.21104
L_else.21135 : 
L_cont.21104 : 
	bne	r14 r0 L_else.21109
	jump	L_cont.21107
L_else.21109 : 
	add	r6 r0 r15
	add	r7 r0 r20
	call	L_rotate_quadratic_matrix.2097
L_cont.21107 : 
	addi	r6 r0 1
	return
L_read_object.2102 : 
	addi	r6 r0 60
	bgt	r6 r25 L_else.21143
	return
L_else.21143 : 
	add	r10 r0 r25
	call	L_read_nth_object.2100
	bne	r6 r0 L_else.21145
	sti	r25 r0 1072
	return
L_else.21145 : 
	addi	r25 r25 1
	addi	r6 r0 60
	bgt	r6 r25 L_else.21147
	return
L_else.21147 : 
	add	r10 r0 r25
	call	L_read_nth_object.2100
	bne	r6 r0 L_else.21149
	sti	r25 r0 1072
	return
L_else.21149 : 
	addi	r25 r25 1
	addi	r6 r0 60
	bgt	r6 r25 L_else.21151
	return
L_else.21151 : 
	add	r10 r0 r25
	call	L_read_nth_object.2100
	bne	r6 r0 L_else.21153
	sti	r25 r0 1072
	return
L_else.21153 : 
	addi	r25 r25 1
	addi	r6 r0 60
	bgt	r6 r25 L_else.21155
	return
L_else.21155 : 
	add	r10 r0 r25
	call	L_read_nth_object.2100
	bne	r6 r0 L_else.21157
	sti	r25 r0 1072
	return
L_else.21157 : 
	addi	r25 r25 1
	addi	r6 r0 60
	bgt	r6 r25 L_else.21159
	return
L_else.21159 : 
	add	r10 r0 r25
	call	L_read_nth_object.2100
	bne	r6 r0 L_else.21161
	sti	r25 r0 1072
	return
L_else.21161 : 
	addi	r25 r25 1
	addi	r6 r0 60
	bgt	r6 r25 L_else.21163
	return
L_else.21163 : 
	add	r10 r0 r25
	call	L_read_nth_object.2100
	bne	r6 r0 L_else.21165
	sti	r25 r0 1072
	return
L_else.21165 : 
	addi	r25 r25 1
	addi	r6 r0 60
	bgt	r6 r25 L_else.21167
	return
L_else.21167 : 
	add	r10 r0 r25
	call	L_read_nth_object.2100
	bne	r6 r0 L_else.21169
	sti	r25 r0 1072
	return
L_else.21169 : 
	addi	r25 r25 1
	addi	r6 r0 60
	bgt	r6 r25 L_else.21171
	return
L_else.21171 : 
	add	r10 r0 r25
	call	L_read_nth_object.2100
	bne	r6 r0 L_else.21173
	sti	r25 r0 1072
	return
L_else.21173 : 
	addi	r25 r25 1
	jump	L_read_object.2102
L_read_net_item.2106 : 
	call	min_caml_read_int
	add	r8 r0 r6
	bne	r8 r5 L_else.21176
	addi	r13 r7 1
	addi	r14 r0 -1
	addi	r12 r0 1
	addi	r7 r0 0
	add	r6 r0 r13
	call	min_caml_create_array
	add	r11 r0 r6
	addi	r10 r0 0
	add	r6 r0 r11
	add	r7 r0 r13
	add	r8 r0 r14
	add	r9 r0 r12
	call	min_caml_init_array
	add	r6 r0 r11
	return
L_else.21176 : 
	addi	r6 r7 1
	sti	r8 r2 0
	sti	r7 r2 1
	add	r7 r0 r6
	addi	r2 r2 2
	call	L_read_net_item.2106
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r7 r2 1
	add	r1 r6 r7
	sti	r8 r1 0
	return
L_read_or_network.2108 : 
	addi	r7 r0 0
	call	L_read_net_item.2106
	add	r12 r0 r6
	ldi	r6 r12 0
	bne	r6 r5 L_else.21179
	addi	r13 r15 1
	addi	r14 r0 1
	addi	r7 r0 0
	add	r6 r0 r13
	call	min_caml_create_array
	add	r11 r0 r6
	addi	r10 r0 0
	add	r6 r0 r11
	add	r7 r0 r13
	add	r8 r0 r12
	add	r9 r0 r14
	call	min_caml_init_array
	add	r6 r0 r11
	return
L_else.21179 : 
	addi	r6 r15 1
	sti	r12 r2 0
	sti	r15 r2 1
	add	r15 r0 r6
	addi	r2 r2 2
	call	L_read_or_network.2108
	addi	r2 r2 -2
	ldi	r12 r2 0
	ldi	r15 r2 1
	add	r1 r6 r15
	sti	r12 r1 0
	return
L_read_and_network.2110 : 
	addi	r7 r0 0
	call	L_read_net_item.2106
	ldi	r7 r6 0
	bne	r7 r5 L_else.21182
	return
L_else.21182 : 
	addi	r16 r0 1083
	add	r1 r16 r15
	sti	r6 r1 0
	addi	r15 r15 1
	addi	r7 r0 0
	call	L_read_net_item.2106
	ldi	r7 r6 0
	bne	r7 r5 L_else.21184
	return
L_else.21184 : 
	add	r1 r16 r15
	sti	r6 r1 0
	addi	r15 r15 1
	addi	r7 r0 0
	call	L_read_net_item.2106
	ldi	r7 r6 0
	bne	r7 r5 L_else.21186
	return
L_else.21186 : 
	add	r1 r16 r15
	sti	r6 r1 0
	addi	r15 r15 1
	addi	r7 r0 0
	call	L_read_net_item.2106
	ldi	r7 r6 0
	bne	r7 r5 L_else.21188
	return
L_else.21188 : 
	add	r1 r16 r15
	sti	r6 r1 0
	addi	r15 r15 1
	addi	r7 r0 0
	call	L_read_net_item.2106
	ldi	r7 r6 0
	bne	r7 r5 L_else.21190
	return
L_else.21190 : 
	add	r1 r16 r15
	sti	r6 r1 0
	addi	r15 r15 1
	addi	r7 r0 0
	call	L_read_net_item.2106
	ldi	r7 r6 0
	bne	r7 r5 L_else.21192
	return
L_else.21192 : 
	add	r1 r16 r15
	sti	r6 r1 0
	addi	r15 r15 1
	addi	r7 r0 0
	call	L_read_net_item.2106
	ldi	r7 r6 0
	bne	r7 r5 L_else.21194
	return
L_else.21194 : 
	add	r1 r16 r15
	sti	r6 r1 0
	addi	r15 r15 1
	addi	r7 r0 0
	call	L_read_net_item.2106
	ldi	r7 r6 0
	bne	r7 r5 L_else.21196
	return
L_else.21196 : 
	add	r1 r16 r15
	sti	r6 r1 0
	addi	r15 r15 1
	jump	L_read_and_network.2110
L_setup_rect_table.2198 : 
	addi	r6 r0 6
	fldi	f2 r0 30
	call	min_caml_create_float_array
	fldi	f2 r10 0
	fbne	f2 f0 L_else.21200
	fsti	f0 r6 1
	jump	L_cont.21198
L_else.21200 : 
	fldi	f2 r10 0
	fbgt	f0 f2 L_else.21221
	addi	r7 r0 0
	jump	L_cont.21219
L_else.21221 : 
	addi	r7 r0 1
L_cont.21219 : 
	xor	r7 r12 r7
	fldi	f2 r11 0
	bne	r7 r0 L_else.21224
	fsub	f2 f0 f2
	jump	L_cont.21222
L_else.21224 : 
L_cont.21222 : 
	fsti	f2 r6 0
	fldi	f2 r0 12
	fldi	f3 r10 0
	fdiv	f2 f2 f3
	fsti	f2 r6 1
L_cont.21198 : 
	fldi	f2 r10 1
	fbne	f2 f0 L_else.21203
	fsti	f0 r6 3
	jump	L_cont.21201
L_else.21203 : 
	fldi	f2 r10 1
	fbgt	f0 f2 L_else.21215
	addi	r7 r0 0
	jump	L_cont.21213
L_else.21215 : 
	addi	r7 r0 1
L_cont.21213 : 
	xor	r7 r12 r7
	fldi	f2 r11 1
	bne	r7 r0 L_else.21218
	fsub	f2 f0 f2
	jump	L_cont.21216
L_else.21218 : 
L_cont.21216 : 
	fsti	f2 r6 2
	fldi	f3 r0 12
	fldi	f2 r10 1
	fdiv	f2 f3 f2
	fsti	f2 r6 3
L_cont.21201 : 
	fldi	f2 r10 2
	fbne	f2 f0 L_else.21206
	fsti	f0 r6 5
	jump	L_cont.21204
L_else.21206 : 
	fldi	f2 r10 2
	fbgt	f0 f2 L_else.21209
	addi	r7 r0 0
	jump	L_cont.21207
L_else.21209 : 
	addi	r7 r0 1
L_cont.21207 : 
	xor	r7 r12 r7
	fldi	f2 r11 2
	bne	r7 r0 L_else.21212
	fsub	f2 f0 f2
	jump	L_cont.21210
L_else.21212 : 
L_cont.21210 : 
	fsti	f2 r6 4
	fldi	f2 r0 12
	fldi	f3 r10 2
	fdiv	f2 f2 f3
	fsti	f2 r6 5
L_cont.21204 : 
	return
L_setup_surface_table.2201 : 
	addi	r6 r0 4
	fldi	f2 r0 30
	call	min_caml_create_float_array
	fldi	f3 r10 0
	fldi	f2 r11 0
	fmul	f4 f3 f2
	fldi	f3 r10 1
	fldi	f2 r11 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r10 2
	fldi	f2 r11 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f3 f0 L_else.21228
	fsti	f0 r6 0
	jump	L_cont.21226
L_else.21228 : 
	fldi	f2 r0 31
	fdiv	f2 f2 f3
	fsti	f2 r6 0
	fldi	f2 r11 0
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r6 1
	fldi	f2 r11 1
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r6 2
	fldi	f2 r11 2
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r6 3
L_cont.21226 : 
	return
L_setup_second_table.2204 : 
	addi	r6 r0 5
	fldi	f2 r0 30
	call	min_caml_create_float_array
	fldi	f8 r10 0
	fldi	f10 r10 1
	fldi	f9 r10 2
	fmul	f2 f8 f8
	fldi	f7 r12 0
	fmul	f3 f2 f7
	fmul	f2 f10 f10
	fldi	f6 r12 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fmul	f2 f9 f9
	fldi	f5 r12 2
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	bne	r11 r0 L_else.21232
	jump	L_cont.21230
L_else.21232 : 
	fmul	f3 f10 f9
	fldi	f4 r13 0
	fmul	f3 f3 f4
	fadd	f4 f2 f3
	fmul	f2 f9 f8
	fldi	f3 r13 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fmul	f2 f8 f10
	fldi	f3 r13 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
L_cont.21230 : 
	fmul	f3 f8 f7
	fsub	f8 f0 f3
	fmul	f3 f10 f6
	fsub	f7 f0 f3
	fmul	f3 f9 f5
	fsub	f6 f0 f3
	fsti	f2 r6 0
	bne	r11 r0 L_else.21235
	fsti	f8 r6 1
	fsti	f7 r6 2
	fsti	f6 r6 3
	jump	L_cont.21233
L_else.21235 : 
	fldi	f3 r10 2
	fldi	f4 r13 1
	fmul	f4 f3 f4
	fldi	f5 r10 1
	fldi	f3 r13 2
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f8 f3
	fsti	f3 r6 1
	fldi	f4 r10 2
	fldi	f3 r13 0
	fmul	f5 f4 f3
	fldi	f3 r10 0
	fldi	f4 r13 2
	fmul	f3 f3 f4
	fadd	f4 f5 f3
	fldi	f3 r0 29
	fdiv	f3 f4 f3
	fsub	f3 f7 f3
	fsti	f3 r6 2
	fldi	f3 r10 1
	fldi	f4 r13 0
	fmul	f4 f3 f4
	fldi	f5 r10 0
	fldi	f3 r13 1
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f6 f3
	fsti	f3 r6 3
L_cont.21233 : 
	fbne	f2 f0 L_else.21238
	jump	L_cont.21236
L_else.21238 : 
	fldi	f3 r0 12
	fdiv	f2 f3 f2
	fsti	f2 r6 4
L_cont.21236 : 
	return
L_iter_setup_dirvec_constants.2207 : 
	bgt	r0 r16 L_else.21241
	muli	r7 r16 11
	ldi	r13 r7 1928
	ldi	r12 r7 1925
	ldi	r11 r7 1923
	ldi	r6 r7 1922
	ldi	r7 r7 1920
	bne	r7 r4 L_else.21244
	add	r10 r0 r14
	call	L_setup_rect_table.2198
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.21242
L_else.21244 : 
	addi	r8 r0 2
	bne	r7 r8 L_else.21253
	add	r10 r0 r14
	call	L_setup_surface_table.2201
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.21242
L_else.21253 : 
	add	r10 r0 r14
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_setup_second_table.2204
	add	r1 r15 r16
	sti	r6 r1 0
L_cont.21242 : 
	addi	r16 r16 -1
	bgt	r0 r16 L_else.21246
	muli	r6 r16 11
	ldi	r13 r6 1928
	ldi	r12 r6 1925
	ldi	r11 r6 1923
	ldi	r8 r6 1922
	ldi	r6 r6 1920
	add	r7 r0 r6
	add	r6 r0 r8
	bne	r7 r4 L_else.21249
	add	r10 r0 r14
	call	L_setup_rect_table.2198
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.21247
L_else.21249 : 
	addi	r8 r0 2
	bne	r7 r8 L_else.21251
	add	r10 r0 r14
	call	L_setup_surface_table.2201
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.21247
L_else.21251 : 
	add	r10 r0 r14
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_setup_second_table.2204
	add	r1 r15 r16
	sti	r6 r1 0
L_cont.21247 : 
	addi	r16 r16 -1
	jump	L_iter_setup_dirvec_constants.2207
L_else.21246 : 
	return
L_else.21241 : 
	return
L_setup_startp_constants.2212 : 
	bgt	r0 r7 L_else.21256
	muli	r13 r7 11
	ldi	r8 r13 1929
	ldi	r9 r13 1928
	ldi	r10 r13 1924
	ldi	r11 r13 1923
	ldi	r12 r13 1922
	ldi	r13 r13 1920
	fldi	f2 r6 0
	fldi	f3 r10 0
	fsub	f2 f2 f3
	fsti	f2 r8 0
	fldi	f3 r6 1
	fldi	f2 r10 1
	fsub	f2 f3 f2
	fsti	f2 r8 1
	fldi	f2 r6 2
	fldi	f3 r10 2
	fsub	f2 f2 f3
	fsti	f2 r8 2
	addi	r10 r0 2
	bne	r13 r10 L_else.21259
	fldi	f2 r8 0
	fldi	f5 r8 1
	fldi	f4 r8 2
	fldi	f3 r11 0
	fmul	f3 f3 f2
	fldi	f2 r11 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r11 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r8 3
	jump	L_cont.21257
L_else.21259 : 
	addi	r10 r0 2
	bgt	r13 r10 L_else.21261
	jump	L_cont.21257
L_else.21261 : 
	fldi	f7 r8 0
	fldi	f5 r8 1
	fldi	f6 r8 2
	fmul	f2 f7 f7
	fldi	f3 r11 0
	fmul	f3 f2 f3
	fmul	f4 f5 f5
	fldi	f2 r11 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fmul	f4 f6 f6
	fldi	f2 r11 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	bne	r12 r0 L_else.21264
	jump	L_cont.21262
L_else.21264 : 
	fmul	f4 f5 f6
	fldi	f3 r9 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f6 f7
	fldi	f2 r9 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fmul	f4 f7 f5
	fldi	f2 r9 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont.21262 : 
	addi	r9 r0 3
	bne	r13 r9 L_else.21267
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.21265
L_else.21267 : 
L_cont.21265 : 
	fsti	f2 r8 3
L_cont.21257 : 
	addi	r7 r7 -1
	jump	L_setup_startp_constants.2212
L_else.21256 : 
	return
L_check_all_inside.2237 : 
	ldi	r8 r6 0
	bne	r8 r5 L_else.21270
	addi	r6 r0 1
	return
L_else.21270 : 
	muli	r13 r8 11
	ldi	r9 r13 1928
	ldi	r8 r13 1925
	ldi	r10 r13 1924
	ldi	r11 r13 1923
	ldi	r12 r13 1922
	ldi	r13 r13 1920
	fldi	f5 r10 0
	fsub	f8 f2 f5
	fldi	f5 r10 1
	fsub	f5 f3 f5
	fldi	f6 r10 2
	fsub	f6 f4 f6
	bne	r13 r4 L_else.21273
	fbgt	f0 f8 L_else.21278
	jump	L_cont.21276
L_else.21278 : 
	fsub	f8 f0 f8
L_cont.21276 : 
	fldi	f7 r11 0
	fbgt	f7 f8 L_else.21281
	addi	r9 r0 0
	jump	L_cont.21279
L_else.21281 : 
	fbgt	f0 f5 L_else.21286
	jump	L_cont.21284
L_else.21286 : 
	fsub	f5 f0 f5
L_cont.21284 : 
	fldi	f7 r11 1
	fbgt	f7 f5 L_else.21288
	addi	r9 r0 0
	jump	L_cont.21279
L_else.21288 : 
	fbgt	f0 f6 L_else.21291
	fadd	f5 f0 f6
	jump	L_cont.21289
L_else.21291 : 
	fsub	f5 f0 f6
L_cont.21289 : 
	fldi	f6 r11 2
	fbgt	f6 f5 L_else.21293
	addi	r9 r0 0
	jump	L_cont.21279
L_else.21293 : 
	addi	r9 r0 1
L_cont.21279 : 
	bne	r9 r0 L_else.21283
	sub	r8 r4 r8
	jump	L_cont.21271
L_else.21283 : 
	jump	L_cont.21271
L_else.21273 : 
	addi	r10 r0 2
	bne	r13 r10 L_else.21295
	fldi	f7 r11 0
	fmul	f7 f7 f8
	fldi	f8 r11 1
	fmul	f5 f8 f5
	fadd	f7 f7 f5
	fldi	f5 r11 2
	fmul	f5 f5 f6
	fadd	f5 f7 f5
	fbgt	f0 f5 L_else.21298
	addi	r9 r0 0
	jump	L_cont.21296
L_else.21298 : 
	addi	r9 r0 1
L_cont.21296 : 
	xor	r8 r8 r9
	sub	r8 r4 r8
	jump	L_cont.21271
L_else.21295 : 
	fmul	f7 f8 f8
	fldi	f9 r11 0
	fmul	f9 f7 f9
	fmul	f10 f5 f5
	fldi	f7 r11 1
	fmul	f7 f10 f7
	fadd	f9 f9 f7
	fmul	f10 f6 f6
	fldi	f7 r11 2
	fmul	f7 f10 f7
	fadd	f7 f9 f7
	bne	r12 r0 L_else.21301
	fadd	f5 f0 f7
	jump	L_cont.21299
L_else.21301 : 
	fmul	f10 f5 f6
	fldi	f9 r9 0
	fmul	f9 f10 f9
	fadd	f7 f7 f9
	fmul	f9 f6 f8
	fldi	f6 r9 1
	fmul	f6 f9 f6
	fadd	f6 f7 f6
	fmul	f7 f8 f5
	fldi	f5 r9 2
	fmul	f5 f7 f5
	fadd	f5 f6 f5
L_cont.21299 : 
	addi	r9 r0 3
	bne	r13 r9 L_else.21304
	fldi	f6 r0 12
	fsub	f5 f5 f6
	jump	L_cont.21302
L_else.21304 : 
L_cont.21302 : 
	fbgt	f0 f5 L_else.21307
	addi	r9 r0 0
	jump	L_cont.21305
L_else.21307 : 
	addi	r9 r0 1
L_cont.21305 : 
	xor	r8 r8 r9
	sub	r8 r4 r8
L_cont.21271 : 
	bne	r8 r0 L_else.21275
	addi	r6 r6 1
	jump	L_check_all_inside.2237
L_else.21275 : 
	addi	r6 r0 0
	return
L_shadow_check_and_group.2243 : 
	ldi	r17 r14 0
	bne	r17 r5 L_else.21310
	addi	r6 r0 0
	return
L_else.21310 : 
	ldi	r12 r0 1855
	ldi	r13 r0 1854
	muli	r16 r17 11
	ldi	r7 r16 1928
	ldi	r6 r16 1925
	ldi	r9 r16 1924
	ldi	r8 r16 1923
	ldi	r11 r16 1922
	ldi	r10 r16 1920
	fldi	f3 r0 1042
	fldi	f2 r9 0
	fsub	f7 f3 f2
	fldi	f2 r0 1043
	fldi	f3 r9 1
	fsub	f6 f2 f3
	fldi	f3 r0 1044
	fldi	f2 r9 2
	fsub	f9 f3 f2
	add	r1 r12 r17
	ldi	r12 r1 0
	bne	r10 r4 L_else.21313
	fldi	f2 r12 0
	fsub	f2 f2 f7
	fldi	f4 r12 1
	fmul	f5 f2 f4
	fldi	f12 r13 1
	fmul	f2 f5 f12
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.21326
	jump	L_cont.21324
L_else.21326 : 
	fsub	f2 f0 f2
L_cont.21324 : 
	fldi	f10 r8 1
	fbgt	f10 f2 L_else.21329
	addi	r6 r0 0
	jump	L_cont.21327
L_else.21329 : 
	fldi	f2 r13 2
	fmul	f2 f5 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21366
	jump	L_cont.21364
L_else.21366 : 
	fsub	f2 f0 f2
L_cont.21364 : 
	fldi	f3 r8 2
	fbgt	f3 f2 L_else.21368
	addi	r6 r0 0
	jump	L_cont.21327
L_else.21368 : 
	fbne	f4 f0 L_else.21371
	addi	r6 r0 1
	jump	L_cont.21369
L_else.21371 : 
	addi	r6 r0 0
L_cont.21369 : 
	sub	r6 r4 r6
L_cont.21327 : 
	bne	r6 r0 L_else.21331
	fldi	f2 r12 2
	fsub	f2 f2 f6
	fldi	f4 r12 3
	fmul	f11 f2 f4
	fldi	f5 r13 0
	fmul	f2 f11 f5
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.21334
	jump	L_cont.21332
L_else.21334 : 
	fsub	f2 f0 f2
L_cont.21332 : 
	fldi	f8 r8 0
	fbgt	f8 f2 L_else.21337
	addi	r6 r0 0
	jump	L_cont.21335
L_else.21337 : 
	fldi	f2 r13 2
	fmul	f2 f11 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21358
	jump	L_cont.21356
L_else.21358 : 
	fsub	f2 f0 f2
L_cont.21356 : 
	fldi	f3 r8 2
	fbgt	f3 f2 L_else.21360
	addi	r6 r0 0
	jump	L_cont.21335
L_else.21360 : 
	fbne	f4 f0 L_else.21363
	addi	r6 r0 1
	jump	L_cont.21361
L_else.21363 : 
	addi	r6 r0 0
L_cont.21361 : 
	sub	r6 r4 r6
L_cont.21335 : 
	bne	r6 r0 L_else.21339
	fldi	f2 r12 4
	fsub	f2 f2 f9
	fldi	f3 r12 5
	fmul	f4 f2 f3
	fmul	f2 f4 f5
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.21342
	jump	L_cont.21340
L_else.21342 : 
	fsub	f2 f0 f2
L_cont.21340 : 
	fbgt	f8 f2 L_else.21345
	addi	r6 r0 0
	jump	L_cont.21343
L_else.21345 : 
	fmul	f2 f4 f12
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.21350
	jump	L_cont.21348
L_else.21350 : 
	fsub	f2 f0 f2
L_cont.21348 : 
	fbgt	f10 f2 L_else.21352
	addi	r6 r0 0
	jump	L_cont.21343
L_else.21352 : 
	fbne	f3 f0 L_else.21355
	addi	r6 r0 1
	jump	L_cont.21353
L_else.21355 : 
	addi	r6 r0 0
L_cont.21353 : 
	sub	r6 r4 r6
L_cont.21343 : 
	bne	r6 r0 L_else.21347
	addi	r6 r0 0
	jump	L_cont.21311
L_else.21347 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.21311
L_else.21339 : 
	fsti	f11 r0 1073
	addi	r6 r0 2
	jump	L_cont.21311
L_else.21331 : 
	fsti	f5 r0 1073
	addi	r6 r0 1
	jump	L_cont.21311
L_else.21313 : 
	addi	r9 r0 2
	bne	r10 r9 L_else.21373
	fldi	f2 r12 0
	fbgt	f0 f2 L_else.21375
	addi	r6 r0 0
	jump	L_cont.21311
L_else.21375 : 
	fldi	f2 r12 1
	fmul	f3 f2 f7
	fldi	f2 r12 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r12 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont.21311
L_else.21373 : 
	fldi	f8 r12 0
	fbne	f8 f0 L_else.21377
	addi	r6 r0 0
	jump	L_cont.21311
L_else.21377 : 
	fldi	f2 r12 1
	fmul	f3 f2 f7
	fldi	f2 r12 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r12 3
	fmul	f2 f2 f9
	fadd	f5 f3 f2
	fmul	f2 f7 f7
	fldi	f3 r8 0
	fmul	f3 f2 f3
	fmul	f4 f6 f6
	fldi	f2 r8 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fmul	f4 f9 f9
	fldi	f2 r8 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	bne	r11 r0 L_else.21380
	jump	L_cont.21378
L_else.21380 : 
	fmul	f4 f6 f9
	fldi	f3 r7 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f9 f7
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fmul	f4 f7 f6
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont.21378 : 
	addi	r7 r0 3
	bne	r10 r7 L_else.21383
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.21381
L_else.21383 : 
L_cont.21381 : 
	fmul	f3 f5 f5
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.21385
	addi	r6 r0 0
	jump	L_cont.21311
L_else.21385 : 
	bne	r6 r0 L_else.21388
	fsqrt	f2 f2
	fsub	f2 f5 f2
	fldi	f3 r12 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont.21386
L_else.21388 : 
	fsqrt	f2 f2
	fadd	f2 f5 f2
	fldi	f3 r12 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont.21386 : 
	addi	r6 r0 1
L_cont.21311 : 
	fldi	f3 r0 1073
	bne	r6 r0 L_else.21315
	ldi	r6 r16 1925
	bne	r6 r0 L_else.21317
	addi	r6 r0 0
	return
L_else.21317 : 
	addi	r14 r14 1
	jump	L_shadow_check_and_group.2243
L_else.21315 : 
	fldi	f2 r0 32
	fbgt	f2 f3 L_else.21319
	ldi	r6 r16 1925
	bne	r6 r0 L_else.21321
	addi	r6 r0 0
	return
L_else.21321 : 
	addi	r14 r14 1
	jump	L_shadow_check_and_group.2243
L_else.21319 : 
	fldi	f2 r0 33
	fadd	f5 f3 f2
	fldi	f2 r0 1039
	fmul	f3 f2 f5
	fldi	f2 r0 1042
	fadd	f2 f3 f2
	fldi	f3 r0 1040
	fmul	f4 f3 f5
	fldi	f3 r0 1043
	fadd	f3 f4 f3
	fldi	f4 r0 1041
	fmul	f5 f4 f5
	fldi	f4 r0 1044
	fadd	f4 f5 f4
	add	r6 r0 r15
	add	r7 r0 r15
	call	L_check_all_inside.2237
	bne	r6 r0 L_else.21323
	addi	r14 r14 1
	jump	L_shadow_check_and_group.2243
L_else.21323 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_group.2246 : 
	add	r1 r19 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else.21391
	addi	r6 r0 0
	return
L_else.21391 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21393
	addi	r18 r18 1
	add	r1 r19 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else.21395
	addi	r6 r0 0
	return
L_else.21395 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21397
	addi	r18 r18 1
	add	r1 r19 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else.21399
	addi	r6 r0 0
	return
L_else.21399 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21401
	addi	r18 r18 1
	add	r1 r19 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else.21403
	addi	r6 r0 0
	return
L_else.21403 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21405
	addi	r18 r18 1
	add	r1 r19 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else.21407
	addi	r6 r0 0
	return
L_else.21407 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21409
	addi	r18 r18 1
	add	r1 r19 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else.21411
	addi	r6 r0 0
	return
L_else.21411 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21413
	addi	r18 r18 1
	add	r1 r19 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else.21415
	addi	r6 r0 0
	return
L_else.21415 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21417
	addi	r18 r18 1
	add	r1 r19 r18
	ldi	r6 r1 0
	bne	r6 r5 L_else.21419
	addi	r6 r0 0
	return
L_else.21419 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21421
	addi	r18 r18 1
	jump	L_shadow_check_one_or_group.2246
L_else.21421 : 
	addi	r6 r0 1
	return
L_else.21417 : 
	addi	r6 r0 1
	return
L_else.21413 : 
	addi	r6 r0 1
	return
L_else.21409 : 
	addi	r6 r0 1
	return
L_else.21405 : 
	addi	r6 r0 1
	return
L_else.21401 : 
	addi	r6 r0 1
	return
L_else.21397 : 
	addi	r6 r0 1
	return
L_else.21393 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_matrix.2249 : 
	ldi	r22 r20 0
	ldi	r14 r22 0
	bne	r14 r5 L_else.21424
	addi	r6 r0 0
	return
L_else.21424 : 
	addi	r6 r0 99
	bne	r14 r6 L_else.21427
	addi	r6 r0 1
	jump	L_cont.21425
L_else.21427 : 
	ldi	r12 r0 1855
	ldi	r13 r0 1854
	muli	r10 r14 11
	ldi	r7 r10 1928
	ldi	r6 r10 1925
	ldi	r9 r10 1924
	ldi	r8 r10 1923
	ldi	r11 r10 1922
	ldi	r10 r10 1920
	fldi	f2 r0 1042
	fldi	f3 r9 0
	fsub	f7 f2 f3
	fldi	f3 r0 1043
	fldi	f2 r9 1
	fsub	f6 f3 f2
	fldi	f2 r0 1044
	fldi	f3 r9 2
	fsub	f9 f2 f3
	add	r1 r12 r14
	ldi	r12 r1 0
	bne	r10 r4 L_else.21463
	fldi	f2 r12 0
	fsub	f2 f2 f7
	fldi	f5 r12 1
	fmul	f4 f2 f5
	fldi	f12 r13 1
	fmul	f2 f4 f12
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.21501
	jump	L_cont.21499
L_else.21501 : 
	fsub	f2 f0 f2
L_cont.21499 : 
	fldi	f11 r8 1
	fbgt	f11 f2 L_else.21504
	addi	r6 r0 0
	jump	L_cont.21502
L_else.21504 : 
	fldi	f2 r13 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21541
	jump	L_cont.21539
L_else.21541 : 
	fsub	f2 f0 f2
L_cont.21539 : 
	fldi	f3 r8 2
	fbgt	f3 f2 L_else.21543
	addi	r6 r0 0
	jump	L_cont.21502
L_else.21543 : 
	fbne	f5 f0 L_else.21546
	addi	r6 r0 1
	jump	L_cont.21544
L_else.21546 : 
	addi	r6 r0 0
L_cont.21544 : 
	sub	r6 r4 r6
L_cont.21502 : 
	bne	r6 r0 L_else.21506
	fldi	f2 r12 2
	fsub	f2 f2 f6
	fldi	f4 r12 3
	fmul	f10 f2 f4
	fldi	f8 r13 0
	fmul	f2 f10 f8
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.21509
	jump	L_cont.21507
L_else.21509 : 
	fsub	f2 f0 f2
L_cont.21507 : 
	fldi	f5 r8 0
	fbgt	f5 f2 L_else.21512
	addi	r6 r0 0
	jump	L_cont.21510
L_else.21512 : 
	fldi	f2 r13 2
	fmul	f2 f10 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21533
	jump	L_cont.21531
L_else.21533 : 
	fsub	f2 f0 f2
L_cont.21531 : 
	fldi	f3 r8 2
	fbgt	f3 f2 L_else.21535
	addi	r6 r0 0
	jump	L_cont.21510
L_else.21535 : 
	fbne	f4 f0 L_else.21538
	addi	r6 r0 1
	jump	L_cont.21536
L_else.21538 : 
	addi	r6 r0 0
L_cont.21536 : 
	sub	r6 r4 r6
L_cont.21510 : 
	bne	r6 r0 L_else.21514
	fldi	f2 r12 4
	fsub	f2 f2 f9
	fldi	f4 r12 5
	fmul	f3 f2 f4
	fmul	f2 f3 f8
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.21517
	jump	L_cont.21515
L_else.21517 : 
	fsub	f2 f0 f2
L_cont.21515 : 
	fbgt	f5 f2 L_else.21520
	addi	r6 r0 0
	jump	L_cont.21518
L_else.21520 : 
	fmul	f2 f3 f12
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.21525
	jump	L_cont.21523
L_else.21525 : 
	fsub	f2 f0 f2
L_cont.21523 : 
	fbgt	f11 f2 L_else.21527
	addi	r6 r0 0
	jump	L_cont.21518
L_else.21527 : 
	fbne	f4 f0 L_else.21530
	addi	r6 r0 1
	jump	L_cont.21528
L_else.21530 : 
	addi	r6 r0 0
L_cont.21528 : 
	sub	r6 r4 r6
L_cont.21518 : 
	bne	r6 r0 L_else.21522
	addi	r6 r0 0
	jump	L_cont.21461
L_else.21522 : 
	fsti	f3 r0 1073
	addi	r6 r0 3
	jump	L_cont.21461
L_else.21514 : 
	fsti	f10 r0 1073
	addi	r6 r0 2
	jump	L_cont.21461
L_else.21506 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.21461
L_else.21463 : 
	addi	r9 r0 2
	bne	r10 r9 L_else.21548
	fldi	f2 r12 0
	fbgt	f0 f2 L_else.21550
	addi	r6 r0 0
	jump	L_cont.21461
L_else.21550 : 
	fldi	f2 r12 1
	fmul	f3 f2 f7
	fldi	f2 r12 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r12 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont.21461
L_else.21548 : 
	fldi	f8 r12 0
	fbne	f8 f0 L_else.21552
	addi	r6 r0 0
	jump	L_cont.21461
L_else.21552 : 
	fldi	f2 r12 1
	fmul	f3 f2 f7
	fldi	f2 r12 2
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r12 3
	fmul	f2 f2 f9
	fadd	f5 f3 f2
	fmul	f2 f7 f7
	fldi	f3 r8 0
	fmul	f3 f2 f3
	fmul	f4 f6 f6
	fldi	f2 r8 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fmul	f4 f9 f9
	fldi	f2 r8 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	bne	r11 r0 L_else.21555
	jump	L_cont.21553
L_else.21555 : 
	fmul	f4 f6 f9
	fldi	f3 r7 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f9 f7
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fmul	f4 f7 f6
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont.21553 : 
	addi	r7 r0 3
	bne	r10 r7 L_else.21558
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.21556
L_else.21558 : 
L_cont.21556 : 
	fmul	f3 f5 f5
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.21560
	addi	r6 r0 0
	jump	L_cont.21461
L_else.21560 : 
	bne	r6 r0 L_else.21563
	fsqrt	f2 f2
	fsub	f2 f5 f2
	fldi	f3 r12 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont.21561
L_else.21563 : 
	fsqrt	f2 f2
	fadd	f2 f5 f2
	fldi	f3 r12 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont.21561 : 
	addi	r6 r0 1
L_cont.21461 : 
	bne	r6 r0 L_else.21465
	addi	r6 r0 0
	jump	L_cont.21425
L_else.21465 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else.21467
	addi	r6 r0 0
	jump	L_cont.21425
L_else.21467 : 
	ldi	r6 r22 1
	bne	r6 r5 L_else.21470
	addi	r6 r0 0
	jump	L_cont.21468
L_else.21470 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21474
	ldi	r6 r22 2
	bne	r6 r5 L_else.21476
	addi	r6 r0 0
	jump	L_cont.21468
L_else.21476 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21478
	ldi	r6 r22 3
	bne	r6 r5 L_else.21480
	addi	r6 r0 0
	jump	L_cont.21468
L_else.21480 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21482
	ldi	r6 r22 4
	bne	r6 r5 L_else.21484
	addi	r6 r0 0
	jump	L_cont.21468
L_else.21484 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21486
	ldi	r6 r22 5
	bne	r6 r5 L_else.21488
	addi	r6 r0 0
	jump	L_cont.21468
L_else.21488 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21490
	ldi	r6 r22 6
	bne	r6 r5 L_else.21492
	addi	r6 r0 0
	jump	L_cont.21468
L_else.21492 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21494
	ldi	r6 r22 7
	bne	r6 r5 L_else.21496
	addi	r6 r0 0
	jump	L_cont.21468
L_else.21496 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21498
	addi	r18 r0 8
	add	r19 r0 r22
	call	L_shadow_check_one_or_group.2246
	jump	L_cont.21468
L_else.21498 : 
	addi	r6 r0 1
	jump	L_cont.21468
L_else.21494 : 
	addi	r6 r0 1
	jump	L_cont.21468
L_else.21490 : 
	addi	r6 r0 1
	jump	L_cont.21468
L_else.21486 : 
	addi	r6 r0 1
	jump	L_cont.21468
L_else.21482 : 
	addi	r6 r0 1
	jump	L_cont.21468
L_else.21478 : 
	addi	r6 r0 1
	jump	L_cont.21468
L_else.21474 : 
	addi	r6 r0 1
L_cont.21468 : 
	bne	r6 r0 L_else.21472
	addi	r6 r0 0
	jump	L_cont.21425
L_else.21472 : 
	addi	r6 r0 1
L_cont.21425 : 
	bne	r6 r0 L_else.21429
	addi	r20 r20 1
	jump	L_shadow_check_one_or_matrix.2249
L_else.21429 : 
	ldi	r6 r22 1
	bne	r6 r5 L_else.21432
	addi	r6 r0 0
	jump	L_cont.21430
L_else.21432 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21436
	ldi	r6 r22 2
	bne	r6 r5 L_else.21438
	addi	r6 r0 0
	jump	L_cont.21430
L_else.21438 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21440
	ldi	r6 r22 3
	bne	r6 r5 L_else.21442
	addi	r6 r0 0
	jump	L_cont.21430
L_else.21442 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21444
	ldi	r6 r22 4
	bne	r6 r5 L_else.21446
	addi	r6 r0 0
	jump	L_cont.21430
L_else.21446 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21448
	ldi	r6 r22 5
	bne	r6 r5 L_else.21450
	addi	r6 r0 0
	jump	L_cont.21430
L_else.21450 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21452
	ldi	r6 r22 6
	bne	r6 r5 L_else.21454
	addi	r6 r0 0
	jump	L_cont.21430
L_else.21454 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21456
	ldi	r6 r22 7
	bne	r6 r5 L_else.21458
	addi	r6 r0 0
	jump	L_cont.21430
L_else.21458 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	call	L_shadow_check_and_group.2243
	bne	r6 r0 L_else.21460
	addi	r18 r0 8
	add	r19 r0 r22
	call	L_shadow_check_one_or_group.2246
	jump	L_cont.21430
L_else.21460 : 
	addi	r6 r0 1
	jump	L_cont.21430
L_else.21456 : 
	addi	r6 r0 1
	jump	L_cont.21430
L_else.21452 : 
	addi	r6 r0 1
	jump	L_cont.21430
L_else.21448 : 
	addi	r6 r0 1
	jump	L_cont.21430
L_else.21444 : 
	addi	r6 r0 1
	jump	L_cont.21430
L_else.21440 : 
	addi	r6 r0 1
	jump	L_cont.21430
L_else.21436 : 
	addi	r6 r0 1
L_cont.21430 : 
	bne	r6 r0 L_else.21434
	addi	r20 r20 1
	jump	L_shadow_check_one_or_matrix.2249
L_else.21434 : 
	addi	r6 r0 1
	return
L_solve_each_element.2252 : 
	ldi	r18 r14 0
	bne	r18 r5 L_else.21566
	return
L_else.21566 : 
	muli	r12 r18 11
	ldi	r7 r12 1928
	ldi	r6 r12 1925
	ldi	r9 r12 1924
	ldi	r8 r12 1923
	ldi	r11 r12 1922
	ldi	r10 r12 1920
	fldi	f2 r0 1063
	fldi	f3 r9 0
	fsub	f8 f2 f3
	fldi	f3 r0 1064
	fldi	f2 r9 1
	fsub	f7 f3 f2
	fldi	f2 r0 1065
	fldi	f3 r9 2
	fsub	f9 f2 f3
	bne	r10 r4 L_else.21569
	fldi	f2 r16 0
	fbne	f2 f0 L_else.21583
	addi	r7 r0 0
	jump	L_cont.21581
L_else.21583 : 
	fldi	f2 r16 0
	fbgt	f0 f2 L_else.21630
	addi	r7 r0 0
	jump	L_cont.21628
L_else.21630 : 
	addi	r7 r0 1
L_cont.21628 : 
	xor	r7 r6 r7
	fldi	f2 r8 0
	bne	r7 r0 L_else.21633
	fsub	f2 f0 f2
	jump	L_cont.21631
L_else.21633 : 
L_cont.21631 : 
	fsub	f2 f2 f8
	fldi	f3 r16 0
	fdiv	f4 f2 f3
	fldi	f2 r16 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.21636
	jump	L_cont.21634
L_else.21636 : 
	fsub	f2 f0 f2
L_cont.21634 : 
	fldi	f3 r8 1
	fbgt	f3 f2 L_else.21638
	addi	r7 r0 0
	jump	L_cont.21581
L_else.21638 : 
	fldi	f2 r16 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21641
	jump	L_cont.21639
L_else.21641 : 
	fsub	f2 f0 f2
L_cont.21639 : 
	fldi	f3 r8 2
	fbgt	f3 f2 L_else.21643
	addi	r7 r0 0
	jump	L_cont.21581
L_else.21643 : 
	fsti	f4 r0 1073
	addi	r7 r0 1
L_cont.21581 : 
	bne	r7 r0 L_else.21585
	fldi	f2 r16 1
	fbne	f2 f0 L_else.21588
	addi	r7 r0 0
	jump	L_cont.21586
L_else.21588 : 
	fldi	f2 r16 1
	fbgt	f0 f2 L_else.21614
	addi	r7 r0 0
	jump	L_cont.21612
L_else.21614 : 
	addi	r7 r0 1
L_cont.21612 : 
	xor	r7 r6 r7
	fldi	f2 r8 1
	bne	r7 r0 L_else.21617
	fsub	f2 f0 f2
	jump	L_cont.21615
L_else.21617 : 
L_cont.21615 : 
	fsub	f3 f2 f7
	fldi	f2 r16 1
	fdiv	f4 f3 f2
	fldi	f2 r16 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21620
	jump	L_cont.21618
L_else.21620 : 
	fsub	f2 f0 f2
L_cont.21618 : 
	fldi	f3 r8 2
	fbgt	f3 f2 L_else.21622
	addi	r7 r0 0
	jump	L_cont.21586
L_else.21622 : 
	fldi	f2 r16 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.21625
	jump	L_cont.21623
L_else.21625 : 
	fsub	f2 f0 f2
L_cont.21623 : 
	fldi	f3 r8 0
	fbgt	f3 f2 L_else.21627
	addi	r7 r0 0
	jump	L_cont.21586
L_else.21627 : 
	fsti	f4 r0 1073
	addi	r7 r0 1
L_cont.21586 : 
	bne	r7 r0 L_else.21590
	fldi	f2 r16 2
	fbne	f2 f0 L_else.21593
	addi	r6 r0 0
	jump	L_cont.21591
L_else.21593 : 
	fldi	f2 r16 2
	fbgt	f0 f2 L_else.21598
	addi	r7 r0 0
	jump	L_cont.21596
L_else.21598 : 
	addi	r7 r0 1
L_cont.21596 : 
	xor	r6 r6 r7
	fldi	f2 r8 2
	bne	r6 r0 L_else.21601
	fsub	f2 f0 f2
	jump	L_cont.21599
L_else.21601 : 
L_cont.21599 : 
	fsub	f3 f2 f9
	fldi	f2 r16 2
	fdiv	f4 f3 f2
	fldi	f2 r16 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.21604
	jump	L_cont.21602
L_else.21604 : 
	fsub	f2 f0 f2
L_cont.21602 : 
	fldi	f3 r8 0
	fbgt	f3 f2 L_else.21606
	addi	r6 r0 0
	jump	L_cont.21591
L_else.21606 : 
	fldi	f2 r16 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.21609
	jump	L_cont.21607
L_else.21609 : 
	fsub	f2 f0 f2
L_cont.21607 : 
	fldi	f3 r8 1
	fbgt	f3 f2 L_else.21611
	addi	r6 r0 0
	jump	L_cont.21591
L_else.21611 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.21591 : 
	bne	r6 r0 L_else.21595
	addi	r17 r0 0
	jump	L_cont.21567
L_else.21595 : 
	addi	r17 r0 3
	jump	L_cont.21567
L_else.21590 : 
	addi	r17 r0 2
	jump	L_cont.21567
L_else.21585 : 
	addi	r17 r0 1
	jump	L_cont.21567
L_else.21569 : 
	addi	r9 r0 2
	bne	r10 r9 L_else.21645
	fldi	f2 r16 0
	fldi	f6 r8 0
	fmul	f2 f2 f6
	fldi	f3 r16 1
	fldi	f5 r8 1
	fmul	f3 f3 f5
	fadd	f2 f2 f3
	fldi	f3 r16 2
	fldi	f4 r8 2
	fmul	f3 f3 f4
	fadd	f3 f2 f3
	fbgt	f3 f0 L_else.21647
	addi	r17 r0 0
	jump	L_cont.21567
L_else.21647 : 
	fmul	f2 f6 f8
	fmul	f5 f5 f7
	fadd	f2 f2 f5
	fmul	f4 f4 f9
	fadd	f2 f2 f4
	fsub	f2 f0 f2
	fdiv	f2 f2 f3
	fsti	f2 r0 1073
	addi	r17 r0 1
	jump	L_cont.21567
L_else.21645 : 
	fldi	f14 r16 0
	fldi	f13 r16 1
	fldi	f15 r16 2
	fmul	f2 f14 f14
	fldi	f12 r8 0
	fmul	f2 f2 f12
	fmul	f3 f13 f13
	fldi	f11 r8 1
	fmul	f3 f3 f11
	fadd	f2 f2 f3
	fmul	f3 f15 f15
	fldi	f10 r8 2
	fmul	f3 f3 f10
	fadd	f2 f2 f3
	bne	r11 r0 L_else.21650
	fadd	f4 f0 f2
	jump	L_cont.21648
L_else.21650 : 
	fmul	f4 f13 f15
	fldi	f3 r7 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f15 f14
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fmul	f4 f14 f13
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
L_cont.21648 : 
	fbne	f4 f0 L_else.21652
	addi	r17 r0 0
	jump	L_cont.21567
L_else.21652 : 
	fmul	f2 f14 f8
	fmul	f3 f2 f12
	fmul	f2 f13 f7
	fmul	f2 f2 f11
	fadd	f3 f3 f2
	fmul	f2 f15 f9
	fmul	f2 f2 f10
	fadd	f2 f3 f2
	bne	r11 r0 L_else.21655
	fadd	f3 f0 f2
	jump	L_cont.21653
L_else.21655 : 
	fmul	f5 f15 f7
	fmul	f3 f13 f9
	fadd	f5 f5 f3
	fldi	f3 r7 0
	fmul	f6 f5 f3
	fmul	f5 f14 f9
	fmul	f3 f15 f8
	fadd	f5 f5 f3
	fldi	f3 r7 1
	fmul	f3 f5 f3
	fadd	f6 f6 f3
	fmul	f5 f14 f7
	fmul	f3 f13 f8
	fadd	f5 f5 f3
	fldi	f3 r7 2
	fmul	f3 f5 f3
	fadd	f5 f6 f3
	fldi	f3 r0 29
	fdiv	f3 f5 f3
	fadd	f3 f2 f3
L_cont.21653 : 
	fmul	f2 f8 f8
	fmul	f5 f2 f12
	fmul	f2 f7 f7
	fmul	f2 f2 f11
	fadd	f5 f5 f2
	fmul	f2 f9 f9
	fmul	f2 f2 f10
	fadd	f2 f5 f2
	bne	r11 r0 L_else.21658
	jump	L_cont.21656
L_else.21658 : 
	fmul	f6 f7 f9
	fldi	f5 r7 0
	fmul	f5 f6 f5
	fadd	f5 f2 f5
	fmul	f6 f9 f8
	fldi	f2 r7 1
	fmul	f2 f6 f2
	fadd	f5 f5 f2
	fmul	f6 f8 f7
	fldi	f2 r7 2
	fmul	f2 f6 f2
	fadd	f2 f5 f2
L_cont.21656 : 
	addi	r7 r0 3
	bne	r10 r7 L_else.21661
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont.21659
L_else.21661 : 
L_cont.21659 : 
	fmul	f5 f3 f3
	fmul	f2 f4 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else.21663
	addi	r17 r0 0
	jump	L_cont.21567
L_else.21663 : 
	fsqrt	f2 f2
	bne	r6 r0 L_else.21666
	fsub	f2 f0 f2
	jump	L_cont.21664
L_else.21666 : 
L_cont.21664 : 
	fsub	f2 f2 f3
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r17 r0 1
L_cont.21567 : 
	bne	r17 r0 L_else.21571
	ldi	r6 r12 1925
	bne	r6 r0 L_else.21573
	return
L_else.21573 : 
	addi	r14 r14 1
	jump	L_solve_each_element.2252
L_else.21571 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else.21576
	jump	L_cont.21574
L_else.21576 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.21578
	jump	L_cont.21574
L_else.21578 : 
	fldi	f2 r0 33
	fadd	f13 f3 f2
	fldi	f2 r16 0
	fmul	f3 f2 f13
	fldi	f2 r0 1063
	fadd	f11 f3 f2
	fldi	f2 r16 1
	fmul	f3 f2 f13
	fldi	f2 r0 1064
	fadd	f12 f3 f2
	fldi	f2 r16 2
	fmul	f3 f2 f13
	fldi	f2 r0 1065
	fadd	f14 f3 f2
	add	r6 r0 r15
	add	r7 r0 r15
	fadd	f2 f0 f11
	fadd	f3 f0 f12
	fadd	f4 f0 f14
	call	L_check_all_inside.2237
	bne	r6 r0 L_else.21580
	jump	L_cont.21574
L_else.21580 : 
	fsti	f13 r0 1082
	fsti	f11 r0 1042
	fsti	f12 r0 1043
	fsti	f14 r0 1044
	sti	r18 r0 1045
	sti	r17 r0 1074
L_cont.21574 : 
	addi	r14 r14 1
	jump	L_solve_each_element.2252
L_solve_one_or_network.2256 : 
	add	r1 r20 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else.21669
	return
L_else.21669 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r21
	call	L_solve_each_element.2252
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else.21671
	return
L_else.21671 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r21
	call	L_solve_each_element.2252
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else.21673
	return
L_else.21673 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r21
	call	L_solve_each_element.2252
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else.21675
	return
L_else.21675 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r21
	call	L_solve_each_element.2252
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else.21677
	return
L_else.21677 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r21
	call	L_solve_each_element.2252
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else.21679
	return
L_else.21679 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r21
	call	L_solve_each_element.2252
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else.21681
	return
L_else.21681 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r21
	call	L_solve_each_element.2252
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r6 r1 0
	bne	r6 r5 L_else.21683
	return
L_else.21683 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r21
	call	L_solve_each_element.2252
	addi	r19 r19 1
	jump	L_solve_one_or_network.2256
L_trace_or_matrix.2260 : 
	add	r1 r23 r22
	ldi	r20 r1 0
	ldi	r7 r20 0
	bne	r7 r5 L_else.21686
	return
L_else.21686 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.21689
	ldi	r6 r20 1
	bne	r6 r5 L_else.21813
	jump	L_cont.21687
L_else.21813 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 2
	bne	r6 r5 L_else.21815
	jump	L_cont.21687
L_else.21815 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 3
	bne	r6 r5 L_else.21817
	jump	L_cont.21687
L_else.21817 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 4
	bne	r6 r5 L_else.21819
	jump	L_cont.21687
L_else.21819 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 5
	bne	r6 r5 L_else.21821
	jump	L_cont.21687
L_else.21821 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 6
	bne	r6 r5 L_else.21823
	jump	L_cont.21687
L_else.21823 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 7
	bne	r6 r5 L_else.21825
	jump	L_cont.21687
L_else.21825 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	addi	r19 r0 8
	add	r21 r0 r24
	call	L_solve_one_or_network.2256
	jump	L_cont.21687
L_else.21689 : 
	muli	r10 r7 11
	ldi	r7 r10 1928
	ldi	r6 r10 1925
	ldi	r9 r10 1924
	ldi	r8 r10 1923
	ldi	r11 r10 1922
	ldi	r10 r10 1920
	fldi	f3 r0 1063
	fldi	f2 r9 0
	fsub	f8 f3 f2
	fldi	f2 r0 1064
	fldi	f3 r9 1
	fsub	f7 f2 f3
	fldi	f3 r0 1065
	fldi	f2 r9 2
	fsub	f9 f3 f2
	bne	r10 r4 L_else.21828
	fldi	f2 r24 0
	fbne	f2 f0 L_else.21849
	addi	r7 r0 0
	jump	L_cont.21847
L_else.21849 : 
	fldi	f2 r24 0
	fbgt	f0 f2 L_else.21896
	addi	r7 r0 0
	jump	L_cont.21894
L_else.21896 : 
	addi	r7 r0 1
L_cont.21894 : 
	xor	r7 r6 r7
	fldi	f2 r8 0
	bne	r7 r0 L_else.21899
	fsub	f2 f0 f2
	jump	L_cont.21897
L_else.21899 : 
L_cont.21897 : 
	fsub	f3 f2 f8
	fldi	f2 r24 0
	fdiv	f4 f3 f2
	fldi	f2 r24 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.21902
	jump	L_cont.21900
L_else.21902 : 
	fsub	f2 f0 f2
L_cont.21900 : 
	fldi	f3 r8 1
	fbgt	f3 f2 L_else.21904
	addi	r7 r0 0
	jump	L_cont.21847
L_else.21904 : 
	fldi	f2 r24 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21907
	jump	L_cont.21905
L_else.21907 : 
	fsub	f2 f0 f2
L_cont.21905 : 
	fldi	f3 r8 2
	fbgt	f3 f2 L_else.21909
	addi	r7 r0 0
	jump	L_cont.21847
L_else.21909 : 
	fsti	f4 r0 1073
	addi	r7 r0 1
L_cont.21847 : 
	bne	r7 r0 L_else.21851
	fldi	f2 r24 1
	fbne	f2 f0 L_else.21854
	addi	r7 r0 0
	jump	L_cont.21852
L_else.21854 : 
	fldi	f2 r24 1
	fbgt	f0 f2 L_else.21880
	addi	r7 r0 0
	jump	L_cont.21878
L_else.21880 : 
	addi	r7 r0 1
L_cont.21878 : 
	xor	r7 r6 r7
	fldi	f2 r8 1
	bne	r7 r0 L_else.21883
	fsub	f2 f0 f2
	jump	L_cont.21881
L_else.21883 : 
L_cont.21881 : 
	fsub	f3 f2 f7
	fldi	f2 r24 1
	fdiv	f4 f3 f2
	fldi	f2 r24 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21886
	jump	L_cont.21884
L_else.21886 : 
	fsub	f2 f0 f2
L_cont.21884 : 
	fldi	f3 r8 2
	fbgt	f3 f2 L_else.21888
	addi	r7 r0 0
	jump	L_cont.21852
L_else.21888 : 
	fldi	f2 r24 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.21891
	jump	L_cont.21889
L_else.21891 : 
	fsub	f2 f0 f2
L_cont.21889 : 
	fldi	f3 r8 0
	fbgt	f3 f2 L_else.21893
	addi	r7 r0 0
	jump	L_cont.21852
L_else.21893 : 
	fsti	f4 r0 1073
	addi	r7 r0 1
L_cont.21852 : 
	bne	r7 r0 L_else.21856
	fldi	f2 r24 2
	fbne	f2 f0 L_else.21859
	addi	r6 r0 0
	jump	L_cont.21857
L_else.21859 : 
	fldi	f2 r24 2
	fbgt	f0 f2 L_else.21864
	addi	r7 r0 0
	jump	L_cont.21862
L_else.21864 : 
	addi	r7 r0 1
L_cont.21862 : 
	xor	r6 r6 r7
	fldi	f2 r8 2
	bne	r6 r0 L_else.21867
	fsub	f2 f0 f2
	jump	L_cont.21865
L_else.21867 : 
L_cont.21865 : 
	fsub	f3 f2 f9
	fldi	f2 r24 2
	fdiv	f4 f3 f2
	fldi	f2 r24 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.21870
	jump	L_cont.21868
L_else.21870 : 
	fsub	f2 f0 f2
L_cont.21868 : 
	fldi	f3 r8 0
	fbgt	f3 f2 L_else.21872
	addi	r6 r0 0
	jump	L_cont.21857
L_else.21872 : 
	fldi	f2 r24 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.21875
	jump	L_cont.21873
L_else.21875 : 
	fsub	f2 f0 f2
L_cont.21873 : 
	fldi	f3 r8 1
	fbgt	f3 f2 L_else.21877
	addi	r6 r0 0
	jump	L_cont.21857
L_else.21877 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.21857 : 
	bne	r6 r0 L_else.21861
	addi	r6 r0 0
	jump	L_cont.21826
L_else.21861 : 
	addi	r6 r0 3
	jump	L_cont.21826
L_else.21856 : 
	addi	r6 r0 2
	jump	L_cont.21826
L_else.21851 : 
	addi	r6 r0 1
	jump	L_cont.21826
L_else.21828 : 
	addi	r9 r0 2
	bne	r10 r9 L_else.21911
	fldi	f2 r24 0
	fldi	f10 r8 0
	fmul	f3 f2 f10
	fldi	f2 r24 1
	fldi	f6 r8 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r24 2
	fldi	f5 r8 2
	fmul	f2 f2 f5
	fadd	f4 f3 f2
	fbgt	f4 f0 L_else.21913
	addi	r6 r0 0
	jump	L_cont.21826
L_else.21913 : 
	fmul	f2 f10 f8
	fmul	f3 f6 f7
	fadd	f2 f2 f3
	fmul	f3 f5 f9
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont.21826
L_else.21911 : 
	fldi	f14 r24 0
	fldi	f13 r24 1
	fldi	f15 r24 2
	fmul	f2 f14 f14
	fldi	f12 r8 0
	fmul	f2 f2 f12
	fmul	f3 f13 f13
	fldi	f11 r8 1
	fmul	f3 f3 f11
	fadd	f2 f2 f3
	fmul	f3 f15 f15
	fldi	f10 r8 2
	fmul	f3 f3 f10
	fadd	f2 f2 f3
	bne	r11 r0 L_else.21916
	fadd	f3 f0 f2
	jump	L_cont.21914
L_else.21916 : 
	fmul	f4 f13 f15
	fldi	f3 r7 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f15 f14
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fmul	f2 f14 f13
	fldi	f3 r7 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
L_cont.21914 : 
	fbne	f3 f0 L_else.21918
	addi	r6 r0 0
	jump	L_cont.21826
L_else.21918 : 
	fmul	f2 f14 f8
	fmul	f4 f2 f12
	fmul	f2 f13 f7
	fmul	f2 f2 f11
	fadd	f4 f4 f2
	fmul	f2 f15 f9
	fmul	f2 f2 f10
	fadd	f2 f4 f2
	bne	r11 r0 L_else.21921
	fadd	f4 f0 f2
	jump	L_cont.21919
L_else.21921 : 
	fmul	f4 f15 f7
	fmul	f5 f13 f9
	fadd	f4 f4 f5
	fldi	f5 r7 0
	fmul	f5 f4 f5
	fmul	f6 f14 f9
	fmul	f4 f15 f8
	fadd	f6 f6 f4
	fldi	f4 r7 1
	fmul	f4 f6 f4
	fadd	f5 f5 f4
	fmul	f6 f14 f7
	fmul	f4 f13 f8
	fadd	f6 f6 f4
	fldi	f4 r7 2
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	fadd	f4 f2 f4
L_cont.21919 : 
	fmul	f2 f8 f8
	fmul	f5 f2 f12
	fmul	f2 f7 f7
	fmul	f2 f2 f11
	fadd	f5 f5 f2
	fmul	f2 f9 f9
	fmul	f2 f2 f10
	fadd	f2 f5 f2
	bne	r11 r0 L_else.21924
	jump	L_cont.21922
L_else.21924 : 
	fmul	f6 f7 f9
	fldi	f5 r7 0
	fmul	f5 f6 f5
	fadd	f5 f2 f5
	fmul	f6 f9 f8
	fldi	f2 r7 1
	fmul	f2 f6 f2
	fadd	f5 f5 f2
	fmul	f6 f8 f7
	fldi	f2 r7 2
	fmul	f2 f6 f2
	fadd	f2 f5 f2
L_cont.21922 : 
	addi	r7 r0 3
	bne	r10 r7 L_else.21927
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont.21925
L_else.21927 : 
L_cont.21925 : 
	fmul	f5 f4 f4
	fmul	f2 f3 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else.21929
	addi	r6 r0 0
	jump	L_cont.21826
L_else.21929 : 
	fsqrt	f2 f2
	bne	r6 r0 L_else.21932
	fsub	f2 f0 f2
	jump	L_cont.21930
L_else.21932 : 
L_cont.21930 : 
	fsub	f2 f2 f4
	fdiv	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
L_cont.21826 : 
	bne	r6 r0 L_else.21830
	jump	L_cont.21687
L_else.21830 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.21832
	jump	L_cont.21687
L_else.21832 : 
	ldi	r6 r20 1
	bne	r6 r5 L_else.21834
	jump	L_cont.21687
L_else.21834 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 2
	bne	r6 r5 L_else.21836
	jump	L_cont.21687
L_else.21836 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 3
	bne	r6 r5 L_else.21838
	jump	L_cont.21687
L_else.21838 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 4
	bne	r6 r5 L_else.21840
	jump	L_cont.21687
L_else.21840 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 5
	bne	r6 r5 L_else.21842
	jump	L_cont.21687
L_else.21842 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 6
	bne	r6 r5 L_else.21844
	jump	L_cont.21687
L_else.21844 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 7
	bne	r6 r5 L_else.21846
	jump	L_cont.21687
L_else.21846 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	addi	r19 r0 8
	add	r21 r0 r24
	call	L_solve_one_or_network.2256
L_cont.21687 : 
	addi	r22 r22 1
	add	r1 r23 r22
	ldi	r20 r1 0
	ldi	r7 r20 0
	bne	r7 r5 L_else.21691
	return
L_else.21691 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.21694
	ldi	r6 r20 1
	bne	r6 r5 L_else.21696
	jump	L_cont.21692
L_else.21696 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 2
	bne	r6 r5 L_else.21698
	jump	L_cont.21692
L_else.21698 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 3
	bne	r6 r5 L_else.21700
	jump	L_cont.21692
L_else.21700 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 4
	bne	r6 r5 L_else.21702
	jump	L_cont.21692
L_else.21702 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 5
	bne	r6 r5 L_else.21704
	jump	L_cont.21692
L_else.21704 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 6
	bne	r6 r5 L_else.21706
	jump	L_cont.21692
L_else.21706 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	addi	r19 r0 7
	add	r21 r0 r24
	call	L_solve_one_or_network.2256
	jump	L_cont.21692
L_else.21694 : 
	muli	r6 r7 11
	ldi	r13 r6 1928
	ldi	r9 r6 1925
	ldi	r12 r6 1924
	ldi	r7 r6 1923
	ldi	r8 r6 1922
	ldi	r6 r6 1920
	add	r11 r0 r6
	add	r10 r0 r7
	add	r7 r0 r12
	add	r6 r0 r13
	fldi	f3 r0 1063
	fldi	f2 r7 0
	fsub	f8 f3 f2
	fldi	f2 r0 1064
	fldi	f3 r7 1
	fsub	f7 f2 f3
	fldi	f3 r0 1065
	fldi	f2 r7 2
	fsub	f9 f3 f2
	bne	r11 r4 L_else.21709
	fldi	f2 r24 0
	fbne	f2 f0 L_else.21728
	addi	r6 r0 0
	jump	L_cont.21726
L_else.21728 : 
	fldi	f2 r24 0
	fbgt	f0 f2 L_else.21775
	addi	r6 r0 0
	jump	L_cont.21773
L_else.21775 : 
	addi	r6 r0 1
L_cont.21773 : 
	xor	r6 r9 r6
	fldi	f2 r10 0
	bne	r6 r0 L_else.21778
	fsub	f2 f0 f2
	jump	L_cont.21776
L_else.21778 : 
L_cont.21776 : 
	fsub	f3 f2 f8
	fldi	f2 r24 0
	fdiv	f4 f3 f2
	fldi	f2 r24 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.21781
	jump	L_cont.21779
L_else.21781 : 
	fsub	f2 f0 f2
L_cont.21779 : 
	fldi	f3 r10 1
	fbgt	f3 f2 L_else.21783
	addi	r6 r0 0
	jump	L_cont.21726
L_else.21783 : 
	fldi	f2 r24 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21786
	jump	L_cont.21784
L_else.21786 : 
	fsub	f2 f0 f2
L_cont.21784 : 
	fldi	f3 r10 2
	fbgt	f3 f2 L_else.21788
	addi	r6 r0 0
	jump	L_cont.21726
L_else.21788 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.21726 : 
	bne	r6 r0 L_else.21730
	fldi	f2 r24 1
	fbne	f2 f0 L_else.21733
	addi	r6 r0 0
	jump	L_cont.21731
L_else.21733 : 
	fldi	f2 r24 1
	fbgt	f0 f2 L_else.21759
	addi	r6 r0 0
	jump	L_cont.21757
L_else.21759 : 
	addi	r6 r0 1
L_cont.21757 : 
	xor	r6 r9 r6
	fldi	f2 r10 1
	bne	r6 r0 L_else.21762
	fsub	f2 f0 f2
	jump	L_cont.21760
L_else.21762 : 
L_cont.21760 : 
	fsub	f2 f2 f7
	fldi	f3 r24 1
	fdiv	f4 f2 f3
	fldi	f2 r24 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21765
	jump	L_cont.21763
L_else.21765 : 
	fsub	f2 f0 f2
L_cont.21763 : 
	fldi	f3 r10 2
	fbgt	f3 f2 L_else.21767
	addi	r6 r0 0
	jump	L_cont.21731
L_else.21767 : 
	fldi	f2 r24 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.21770
	jump	L_cont.21768
L_else.21770 : 
	fsub	f2 f0 f2
L_cont.21768 : 
	fldi	f3 r10 0
	fbgt	f3 f2 L_else.21772
	addi	r6 r0 0
	jump	L_cont.21731
L_else.21772 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.21731 : 
	bne	r6 r0 L_else.21735
	fldi	f2 r24 2
	fbne	f2 f0 L_else.21738
	addi	r6 r0 0
	jump	L_cont.21736
L_else.21738 : 
	fldi	f2 r24 2
	fbgt	f0 f2 L_else.21743
	addi	r6 r0 0
	jump	L_cont.21741
L_else.21743 : 
	addi	r6 r0 1
L_cont.21741 : 
	xor	r6 r9 r6
	fldi	f2 r10 2
	bne	r6 r0 L_else.21746
	fsub	f2 f0 f2
	jump	L_cont.21744
L_else.21746 : 
L_cont.21744 : 
	fsub	f2 f2 f9
	fldi	f3 r24 2
	fdiv	f4 f2 f3
	fldi	f2 r24 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.21749
	jump	L_cont.21747
L_else.21749 : 
	fsub	f2 f0 f2
L_cont.21747 : 
	fldi	f3 r10 0
	fbgt	f3 f2 L_else.21751
	addi	r6 r0 0
	jump	L_cont.21736
L_else.21751 : 
	fldi	f2 r24 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.21754
	jump	L_cont.21752
L_else.21754 : 
	fsub	f2 f0 f2
L_cont.21752 : 
	fldi	f3 r10 1
	fbgt	f3 f2 L_else.21756
	addi	r6 r0 0
	jump	L_cont.21736
L_else.21756 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.21736 : 
	bne	r6 r0 L_else.21740
	addi	r6 r0 0
	jump	L_cont.21707
L_else.21740 : 
	addi	r6 r0 3
	jump	L_cont.21707
L_else.21735 : 
	addi	r6 r0 2
	jump	L_cont.21707
L_else.21730 : 
	addi	r6 r0 1
	jump	L_cont.21707
L_else.21709 : 
	addi	r7 r0 2
	bne	r11 r7 L_else.21790
	fldi	f2 r24 0
	fldi	f6 r10 0
	fmul	f2 f2 f6
	fldi	f3 r24 1
	fldi	f5 r10 1
	fmul	f3 f3 f5
	fadd	f2 f2 f3
	fldi	f3 r24 2
	fldi	f4 r10 2
	fmul	f3 f3 f4
	fadd	f3 f2 f3
	fbgt	f3 f0 L_else.21792
	addi	r6 r0 0
	jump	L_cont.21707
L_else.21792 : 
	fmul	f2 f6 f8
	fmul	f5 f5 f7
	fadd	f2 f2 f5
	fmul	f4 f4 f9
	fadd	f2 f2 f4
	fsub	f2 f0 f2
	fdiv	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont.21707
L_else.21790 : 
	fldi	f14 r24 0
	fldi	f13 r24 1
	fldi	f15 r24 2
	fmul	f2 f14 f14
	fldi	f12 r10 0
	fmul	f2 f2 f12
	fmul	f3 f13 f13
	fldi	f11 r10 1
	fmul	f3 f3 f11
	fadd	f2 f2 f3
	fmul	f3 f15 f15
	fldi	f10 r10 2
	fmul	f3 f3 f10
	fadd	f2 f2 f3
	bne	r8 r0 L_else.21795
	fadd	f3 f0 f2
	jump	L_cont.21793
L_else.21795 : 
	fmul	f4 f13 f15
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f15 f14
	fldi	f2 r6 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fmul	f4 f14 f13
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
L_cont.21793 : 
	fbne	f3 f0 L_else.21797
	addi	r6 r0 0
	jump	L_cont.21707
L_else.21797 : 
	fmul	f2 f14 f8
	fmul	f4 f2 f12
	fmul	f2 f13 f7
	fmul	f2 f2 f11
	fadd	f4 f4 f2
	fmul	f2 f15 f9
	fmul	f2 f2 f10
	fadd	f2 f4 f2
	bne	r8 r0 L_else.21800
	fadd	f4 f0 f2
	jump	L_cont.21798
L_else.21800 : 
	fmul	f5 f15 f7
	fmul	f4 f13 f9
	fadd	f5 f5 f4
	fldi	f4 r6 0
	fmul	f6 f5 f4
	fmul	f4 f14 f9
	fmul	f5 f15 f8
	fadd	f4 f4 f5
	fldi	f5 r6 1
	fmul	f4 f4 f5
	fadd	f6 f6 f4
	fmul	f4 f14 f7
	fmul	f5 f13 f8
	fadd	f4 f4 f5
	fldi	f5 r6 2
	fmul	f4 f4 f5
	fadd	f5 f6 f4
	fldi	f4 r0 29
	fdiv	f4 f5 f4
	fadd	f4 f2 f4
L_cont.21798 : 
	fmul	f2 f8 f8
	fmul	f5 f2 f12
	fmul	f2 f7 f7
	fmul	f2 f2 f11
	fadd	f5 f5 f2
	fmul	f2 f9 f9
	fmul	f2 f2 f10
	fadd	f2 f5 f2
	bne	r8 r0 L_else.21803
	jump	L_cont.21801
L_else.21803 : 
	fmul	f5 f7 f9
	fldi	f6 r6 0
	fmul	f5 f5 f6
	fadd	f6 f2 f5
	fmul	f2 f9 f8
	fldi	f5 r6 1
	fmul	f2 f2 f5
	fadd	f6 f6 f2
	fmul	f2 f8 f7
	fldi	f5 r6 2
	fmul	f2 f2 f5
	fadd	f2 f6 f2
L_cont.21801 : 
	addi	r6 r0 3
	bne	r11 r6 L_else.21806
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont.21804
L_else.21806 : 
L_cont.21804 : 
	fmul	f5 f4 f4
	fmul	f2 f3 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else.21808
	addi	r6 r0 0
	jump	L_cont.21707
L_else.21808 : 
	fsqrt	f2 f2
	bne	r9 r0 L_else.21811
	fsub	f2 f0 f2
	jump	L_cont.21809
L_else.21811 : 
L_cont.21809 : 
	fsub	f2 f2 f4
	fdiv	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
L_cont.21707 : 
	bne	r6 r0 L_else.21711
	jump	L_cont.21692
L_else.21711 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else.21713
	jump	L_cont.21692
L_else.21713 : 
	ldi	r6 r20 1
	bne	r6 r5 L_else.21715
	jump	L_cont.21692
L_else.21715 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 2
	bne	r6 r5 L_else.21717
	jump	L_cont.21692
L_else.21717 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 3
	bne	r6 r5 L_else.21719
	jump	L_cont.21692
L_else.21719 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 4
	bne	r6 r5 L_else.21721
	jump	L_cont.21692
L_else.21721 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 5
	bne	r6 r5 L_else.21723
	jump	L_cont.21692
L_else.21723 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	ldi	r6 r20 6
	bne	r6 r5 L_else.21725
	jump	L_cont.21692
L_else.21725 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r24
	call	L_solve_each_element.2252
	addi	r19 r0 7
	add	r21 r0 r24
	call	L_solve_one_or_network.2256
L_cont.21692 : 
	addi	r22 r22 1
	jump	L_trace_or_matrix.2260
L_solve_each_element_fast.2266 : 
	ldi	r18 r14 0
	bne	r18 r5 L_else.21935
	return
L_else.21935 : 
	muli	r11 r18 11
	ldi	r6 r11 1929
	ldi	r7 r11 1925
	ldi	r8 r11 1923
	ldi	r9 r11 1920
	fldi	f9 r6 0
	fldi	f8 r6 1
	fldi	f11 r6 2
	add	r1 r17 r18
	ldi	r10 r1 0
	bne	r9 r4 L_else.21938
	fldi	f2 r10 0
	fsub	f2 f2 f9
	fldi	f5 r10 1
	fmul	f4 f2 f5
	fldi	f12 r16 1
	fmul	f2 f4 f12
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.21952
	jump	L_cont.21950
L_else.21952 : 
	fsub	f2 f0 f2
L_cont.21950 : 
	fldi	f10 r8 1
	fbgt	f10 f2 L_else.21955
	addi	r6 r0 0
	jump	L_cont.21953
L_else.21955 : 
	fldi	f2 r16 2
	fmul	f2 f4 f2
	fadd	f2 f2 f11
	fbgt	f0 f2 L_else.21992
	jump	L_cont.21990
L_else.21992 : 
	fsub	f2 f0 f2
L_cont.21990 : 
	fldi	f3 r8 2
	fbgt	f3 f2 L_else.21994
	addi	r6 r0 0
	jump	L_cont.21953
L_else.21994 : 
	fbne	f5 f0 L_else.21997
	addi	r6 r0 1
	jump	L_cont.21995
L_else.21997 : 
	addi	r6 r0 0
L_cont.21995 : 
	sub	r6 r4 r6
L_cont.21953 : 
	bne	r6 r0 L_else.21957
	fldi	f2 r10 2
	fsub	f2 f2 f8
	fldi	f4 r10 3
	fmul	f7 f2 f4
	fldi	f5 r16 0
	fmul	f2 f7 f5
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21960
	jump	L_cont.21958
L_else.21960 : 
	fsub	f2 f0 f2
L_cont.21958 : 
	fldi	f6 r8 0
	fbgt	f6 f2 L_else.21963
	addi	r6 r0 0
	jump	L_cont.21961
L_else.21963 : 
	fldi	f2 r16 2
	fmul	f2 f7 f2
	fadd	f2 f2 f11
	fbgt	f0 f2 L_else.21984
	jump	L_cont.21982
L_else.21984 : 
	fsub	f2 f0 f2
L_cont.21982 : 
	fldi	f3 r8 2
	fbgt	f3 f2 L_else.21986
	addi	r6 r0 0
	jump	L_cont.21961
L_else.21986 : 
	fbne	f4 f0 L_else.21989
	addi	r6 r0 1
	jump	L_cont.21987
L_else.21989 : 
	addi	r6 r0 0
L_cont.21987 : 
	sub	r6 r4 r6
L_cont.21961 : 
	bne	r6 r0 L_else.21965
	fldi	f2 r10 4
	fsub	f2 f2 f11
	fldi	f4 r10 5
	fmul	f3 f2 f4
	fmul	f2 f3 f5
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.21968
	jump	L_cont.21966
L_else.21968 : 
	fsub	f2 f0 f2
L_cont.21966 : 
	fbgt	f6 f2 L_else.21971
	addi	r6 r0 0
	jump	L_cont.21969
L_else.21971 : 
	fmul	f2 f3 f12
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.21976
	jump	L_cont.21974
L_else.21976 : 
	fsub	f2 f0 f2
L_cont.21974 : 
	fbgt	f10 f2 L_else.21978
	addi	r6 r0 0
	jump	L_cont.21969
L_else.21978 : 
	fbne	f4 f0 L_else.21981
	addi	r6 r0 1
	jump	L_cont.21979
L_else.21981 : 
	addi	r6 r0 0
L_cont.21979 : 
	sub	r6 r4 r6
L_cont.21969 : 
	bne	r6 r0 L_else.21973
	addi	r19 r0 0
	jump	L_cont.21936
L_else.21973 : 
	fsti	f3 r0 1073
	addi	r19 r0 3
	jump	L_cont.21936
L_else.21965 : 
	fsti	f7 r0 1073
	addi	r19 r0 2
	jump	L_cont.21936
L_else.21957 : 
	fsti	f4 r0 1073
	addi	r19 r0 1
	jump	L_cont.21936
L_else.21938 : 
	addi	r8 r0 2
	bne	r9 r8 L_else.21999
	fldi	f3 r10 0
	fbgt	f0 f3 L_else.22001
	addi	r19 r0 0
	jump	L_cont.21936
L_else.22001 : 
	fldi	f2 r6 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r19 r0 1
	jump	L_cont.21936
L_else.21999 : 
	fldi	f5 r10 0
	fbne	f5 f0 L_else.22003
	addi	r19 r0 0
	jump	L_cont.21936
L_else.22003 : 
	fldi	f2 r10 1
	fmul	f3 f2 f9
	fldi	f2 r10 2
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r10 3
	fmul	f2 f2 f11
	fadd	f4 f3 f2
	fldi	f2 r6 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.22005
	addi	r19 r0 0
	jump	L_cont.21936
L_else.22005 : 
	bne	r7 r0 L_else.22008
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r10 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.22006
L_else.22008 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r10 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.22006 : 
	addi	r19 r0 1
L_cont.21936 : 
	bne	r19 r0 L_else.21940
	ldi	r6 r11 1925
	bne	r6 r0 L_else.21942
	return
L_else.21942 : 
	addi	r14 r14 1
	jump	L_solve_each_element_fast.2266
L_else.21940 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else.21945
	jump	L_cont.21943
L_else.21945 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.21947
	jump	L_cont.21943
L_else.21947 : 
	fldi	f2 r0 33
	fadd	f14 f3 f2
	fldi	f2 r16 0
	fmul	f3 f2 f14
	fldi	f2 r0 1066
	fadd	f12 f3 f2
	fldi	f2 r16 1
	fmul	f3 f2 f14
	fldi	f2 r0 1067
	fadd	f11 f3 f2
	fldi	f2 r16 2
	fmul	f3 f2 f14
	fldi	f2 r0 1068
	fadd	f13 f3 f2
	add	r6 r0 r15
	add	r7 r0 r15
	fadd	f2 f0 f12
	fadd	f3 f0 f11
	fadd	f4 f0 f13
	call	L_check_all_inside.2237
	bne	r6 r0 L_else.21949
	jump	L_cont.21943
L_else.21949 : 
	fsti	f14 r0 1082
	fsti	f12 r0 1042
	fsti	f11 r0 1043
	fsti	f13 r0 1044
	sti	r18 r0 1045
	sti	r19 r0 1074
L_cont.21943 : 
	addi	r14 r14 1
	jump	L_solve_each_element_fast.2266
L_solve_one_or_network_fast.2270 : 
	add	r1 r21 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else.22011
	return
L_else.22011 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r22
	add	r17 r0 r23
	call	L_solve_each_element_fast.2266
	addi	r20 r20 1
	add	r1 r21 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else.22013
	return
L_else.22013 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r22
	add	r17 r0 r23
	call	L_solve_each_element_fast.2266
	addi	r20 r20 1
	add	r1 r21 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else.22015
	return
L_else.22015 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r22
	add	r17 r0 r23
	call	L_solve_each_element_fast.2266
	addi	r20 r20 1
	add	r1 r21 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else.22017
	return
L_else.22017 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r22
	add	r17 r0 r23
	call	L_solve_each_element_fast.2266
	addi	r20 r20 1
	add	r1 r21 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else.22019
	return
L_else.22019 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r22
	add	r17 r0 r23
	call	L_solve_each_element_fast.2266
	addi	r20 r20 1
	add	r1 r21 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else.22021
	return
L_else.22021 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r22
	add	r17 r0 r23
	call	L_solve_each_element_fast.2266
	addi	r20 r20 1
	add	r1 r21 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else.22023
	return
L_else.22023 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r22
	add	r17 r0 r23
	call	L_solve_each_element_fast.2266
	addi	r20 r20 1
	add	r1 r21 r20
	ldi	r6 r1 0
	bne	r6 r5 L_else.22025
	return
L_else.22025 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r22
	add	r17 r0 r23
	call	L_solve_each_element_fast.2266
	addi	r20 r20 1
	jump	L_solve_one_or_network_fast.2270
L_trace_or_matrix_fast.2274 : 
	add	r1 r25 r24
	ldi	r21 r1 0
	ldi	r10 r21 0
	bne	r10 r5 L_else.22028
	return
L_else.22028 : 
	addi	r6 r0 99
	bne	r10 r6 L_else.22031
	ldi	r6 r21 1
	bne	r6 r5 L_else.22128
	jump	L_cont.22029
L_else.22128 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 2
	bne	r6 r5 L_else.22130
	jump	L_cont.22029
L_else.22130 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 3
	bne	r6 r5 L_else.22132
	jump	L_cont.22029
L_else.22132 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 4
	bne	r6 r5 L_else.22134
	jump	L_cont.22029
L_else.22134 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 5
	bne	r6 r5 L_else.22136
	jump	L_cont.22029
L_else.22136 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 6
	bne	r6 r5 L_else.22138
	jump	L_cont.22029
L_else.22138 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 7
	bne	r6 r5 L_else.22140
	jump	L_cont.22029
L_else.22140 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	addi	r20 r0 8
	add	r22 r0 r26
	add	r23 r0 r27
	call	L_solve_one_or_network_fast.2270
	jump	L_cont.22029
L_else.22031 : 
	muli	r8 r10 11
	ldi	r7 r8 1929
	ldi	r6 r8 1925
	ldi	r9 r8 1923
	ldi	r8 r8 1920
	fldi	f12 r7 0
	fldi	f7 r7 1
	fldi	f11 r7 2
	add	r1 r27 r10
	ldi	r10 r1 0
	bne	r8 r4 L_else.22143
	fldi	f2 r10 0
	fsub	f2 f2 f12
	fldi	f4 r10 1
	fmul	f5 f2 f4
	fldi	f8 r26 1
	fmul	f2 f5 f8
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.22164
	jump	L_cont.22162
L_else.22164 : 
	fsub	f2 f0 f2
L_cont.22162 : 
	fldi	f10 r9 1
	fbgt	f10 f2 L_else.22167
	addi	r6 r0 0
	jump	L_cont.22165
L_else.22167 : 
	fldi	f2 r26 2
	fmul	f2 f5 f2
	fadd	f2 f2 f11
	fbgt	f0 f2 L_else.22204
	jump	L_cont.22202
L_else.22204 : 
	fsub	f2 f0 f2
L_cont.22202 : 
	fldi	f3 r9 2
	fbgt	f3 f2 L_else.22206
	addi	r6 r0 0
	jump	L_cont.22165
L_else.22206 : 
	fbne	f4 f0 L_else.22209
	addi	r6 r0 1
	jump	L_cont.22207
L_else.22209 : 
	addi	r6 r0 0
L_cont.22207 : 
	sub	r6 r4 r6
L_cont.22165 : 
	bne	r6 r0 L_else.22169
	fldi	f2 r10 2
	fsub	f2 f2 f7
	fldi	f4 r10 3
	fmul	f9 f2 f4
	fldi	f5 r26 0
	fmul	f2 f9 f5
	fadd	f2 f2 f12
	fbgt	f0 f2 L_else.22172
	jump	L_cont.22170
L_else.22172 : 
	fsub	f2 f0 f2
L_cont.22170 : 
	fldi	f6 r9 0
	fbgt	f6 f2 L_else.22175
	addi	r6 r0 0
	jump	L_cont.22173
L_else.22175 : 
	fldi	f2 r26 2
	fmul	f2 f9 f2
	fadd	f2 f2 f11
	fbgt	f0 f2 L_else.22196
	jump	L_cont.22194
L_else.22196 : 
	fsub	f2 f0 f2
L_cont.22194 : 
	fldi	f3 r9 2
	fbgt	f3 f2 L_else.22198
	addi	r6 r0 0
	jump	L_cont.22173
L_else.22198 : 
	fbne	f4 f0 L_else.22201
	addi	r6 r0 1
	jump	L_cont.22199
L_else.22201 : 
	addi	r6 r0 0
L_cont.22199 : 
	sub	r6 r4 r6
L_cont.22173 : 
	bne	r6 r0 L_else.22177
	fldi	f2 r10 4
	fsub	f2 f2 f11
	fldi	f3 r10 5
	fmul	f4 f2 f3
	fmul	f2 f4 f5
	fadd	f2 f2 f12
	fbgt	f0 f2 L_else.22180
	jump	L_cont.22178
L_else.22180 : 
	fsub	f2 f0 f2
L_cont.22178 : 
	fbgt	f6 f2 L_else.22183
	addi	r6 r0 0
	jump	L_cont.22181
L_else.22183 : 
	fmul	f2 f4 f8
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.22188
	jump	L_cont.22186
L_else.22188 : 
	fsub	f2 f0 f2
L_cont.22186 : 
	fbgt	f10 f2 L_else.22190
	addi	r6 r0 0
	jump	L_cont.22181
L_else.22190 : 
	fbne	f3 f0 L_else.22193
	addi	r6 r0 1
	jump	L_cont.22191
L_else.22193 : 
	addi	r6 r0 0
L_cont.22191 : 
	sub	r6 r4 r6
L_cont.22181 : 
	bne	r6 r0 L_else.22185
	addi	r6 r0 0
	jump	L_cont.22141
L_else.22185 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.22141
L_else.22177 : 
	fsti	f9 r0 1073
	addi	r6 r0 2
	jump	L_cont.22141
L_else.22169 : 
	fsti	f5 r0 1073
	addi	r6 r0 1
	jump	L_cont.22141
L_else.22143 : 
	addi	r9 r0 2
	bne	r8 r9 L_else.22211
	fldi	f3 r10 0
	fbgt	f0 f3 L_else.22213
	addi	r6 r0 0
	jump	L_cont.22141
L_else.22213 : 
	fldi	f2 r7 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont.22141
L_else.22211 : 
	fldi	f5 r10 0
	fbne	f5 f0 L_else.22215
	addi	r6 r0 0
	jump	L_cont.22141
L_else.22215 : 
	fldi	f2 r10 1
	fmul	f3 f2 f12
	fldi	f2 r10 2
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r10 3
	fmul	f2 f2 f11
	fadd	f4 f3 f2
	fldi	f2 r7 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.22217
	addi	r6 r0 0
	jump	L_cont.22141
L_else.22217 : 
	bne	r6 r0 L_else.22220
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r10 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.22218
L_else.22220 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r10 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.22218 : 
	addi	r6 r0 1
L_cont.22141 : 
	bne	r6 r0 L_else.22145
	jump	L_cont.22029
L_else.22145 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.22147
	jump	L_cont.22029
L_else.22147 : 
	ldi	r6 r21 1
	bne	r6 r5 L_else.22149
	jump	L_cont.22029
L_else.22149 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 2
	bne	r6 r5 L_else.22151
	jump	L_cont.22029
L_else.22151 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 3
	bne	r6 r5 L_else.22153
	jump	L_cont.22029
L_else.22153 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 4
	bne	r6 r5 L_else.22155
	jump	L_cont.22029
L_else.22155 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 5
	bne	r6 r5 L_else.22157
	jump	L_cont.22029
L_else.22157 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 6
	bne	r6 r5 L_else.22159
	jump	L_cont.22029
L_else.22159 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 7
	bne	r6 r5 L_else.22161
	jump	L_cont.22029
L_else.22161 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	addi	r20 r0 8
	add	r22 r0 r26
	add	r23 r0 r27
	call	L_solve_one_or_network_fast.2270
L_cont.22029 : 
	addi	r24 r24 1
	add	r1 r25 r24
	ldi	r21 r1 0
	ldi	r11 r21 0
	bne	r11 r5 L_else.22033
	return
L_else.22033 : 
	addi	r6 r0 99
	bne	r11 r6 L_else.22036
	ldi	r6 r21 1
	bne	r6 r5 L_else.22038
	jump	L_cont.22034
L_else.22038 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 2
	bne	r6 r5 L_else.22040
	jump	L_cont.22034
L_else.22040 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 3
	bne	r6 r5 L_else.22042
	jump	L_cont.22034
L_else.22042 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 4
	bne	r6 r5 L_else.22044
	jump	L_cont.22034
L_else.22044 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 5
	bne	r6 r5 L_else.22046
	jump	L_cont.22034
L_else.22046 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 6
	bne	r6 r5 L_else.22048
	jump	L_cont.22034
L_else.22048 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	addi	r20 r0 7
	add	r22 r0 r26
	add	r23 r0 r27
	call	L_solve_one_or_network_fast.2270
	jump	L_cont.22034
L_else.22036 : 
	muli	r6 r11 11
	ldi	r10 r6 1929
	ldi	r8 r6 1925
	ldi	r7 r6 1923
	ldi	r6 r6 1920
	add	r9 r0 r6
	add	r6 r0 r10
	fldi	f8 r6 0
	fldi	f7 r6 1
	fldi	f11 r6 2
	add	r1 r27 r11
	ldi	r10 r1 0
	bne	r9 r4 L_else.22051
	fldi	f2 r10 0
	fsub	f2 f2 f8
	fldi	f4 r10 1
	fmul	f5 f2 f4
	fldi	f12 r26 1
	fmul	f2 f5 f12
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.22070
	jump	L_cont.22068
L_else.22070 : 
	fsub	f2 f0 f2
L_cont.22068 : 
	fldi	f10 r7 1
	fbgt	f10 f2 L_else.22073
	addi	r6 r0 0
	jump	L_cont.22071
L_else.22073 : 
	fldi	f2 r26 2
	fmul	f2 f5 f2
	fadd	f2 f2 f11
	fbgt	f0 f2 L_else.22110
	jump	L_cont.22108
L_else.22110 : 
	fsub	f2 f0 f2
L_cont.22108 : 
	fldi	f3 r7 2
	fbgt	f3 f2 L_else.22112
	addi	r6 r0 0
	jump	L_cont.22071
L_else.22112 : 
	fbne	f4 f0 L_else.22115
	addi	r6 r0 1
	jump	L_cont.22113
L_else.22115 : 
	addi	r6 r0 0
L_cont.22113 : 
	sub	r6 r4 r6
L_cont.22071 : 
	bne	r6 r0 L_else.22075
	fldi	f2 r10 2
	fsub	f2 f2 f7
	fldi	f4 r10 3
	fmul	f9 f2 f4
	fldi	f5 r26 0
	fmul	f2 f9 f5
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.22078
	jump	L_cont.22076
L_else.22078 : 
	fsub	f2 f0 f2
L_cont.22076 : 
	fldi	f6 r7 0
	fbgt	f6 f2 L_else.22081
	addi	r6 r0 0
	jump	L_cont.22079
L_else.22081 : 
	fldi	f2 r26 2
	fmul	f2 f9 f2
	fadd	f2 f2 f11
	fbgt	f0 f2 L_else.22102
	jump	L_cont.22100
L_else.22102 : 
	fsub	f2 f0 f2
L_cont.22100 : 
	fldi	f3 r7 2
	fbgt	f3 f2 L_else.22104
	addi	r6 r0 0
	jump	L_cont.22079
L_else.22104 : 
	fbne	f4 f0 L_else.22107
	addi	r6 r0 1
	jump	L_cont.22105
L_else.22107 : 
	addi	r6 r0 0
L_cont.22105 : 
	sub	r6 r4 r6
L_cont.22079 : 
	bne	r6 r0 L_else.22083
	fldi	f2 r10 4
	fsub	f2 f2 f11
	fldi	f3 r10 5
	fmul	f4 f2 f3
	fmul	f2 f4 f5
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.22086
	jump	L_cont.22084
L_else.22086 : 
	fsub	f2 f0 f2
L_cont.22084 : 
	fbgt	f6 f2 L_else.22089
	addi	r6 r0 0
	jump	L_cont.22087
L_else.22089 : 
	fmul	f2 f4 f12
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.22094
	jump	L_cont.22092
L_else.22094 : 
	fsub	f2 f0 f2
L_cont.22092 : 
	fbgt	f10 f2 L_else.22096
	addi	r6 r0 0
	jump	L_cont.22087
L_else.22096 : 
	fbne	f3 f0 L_else.22099
	addi	r6 r0 1
	jump	L_cont.22097
L_else.22099 : 
	addi	r6 r0 0
L_cont.22097 : 
	sub	r6 r4 r6
L_cont.22087 : 
	bne	r6 r0 L_else.22091
	addi	r6 r0 0
	jump	L_cont.22049
L_else.22091 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.22049
L_else.22083 : 
	fsti	f9 r0 1073
	addi	r6 r0 2
	jump	L_cont.22049
L_else.22075 : 
	fsti	f5 r0 1073
	addi	r6 r0 1
	jump	L_cont.22049
L_else.22051 : 
	addi	r7 r0 2
	bne	r9 r7 L_else.22117
	fldi	f3 r10 0
	fbgt	f0 f3 L_else.22119
	addi	r6 r0 0
	jump	L_cont.22049
L_else.22119 : 
	fldi	f2 r6 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont.22049
L_else.22117 : 
	fldi	f5 r10 0
	fbne	f5 f0 L_else.22121
	addi	r6 r0 0
	jump	L_cont.22049
L_else.22121 : 
	fldi	f2 r10 1
	fmul	f3 f2 f8
	fldi	f2 r10 2
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r10 3
	fmul	f2 f2 f11
	fadd	f4 f3 f2
	fldi	f2 r6 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.22123
	addi	r6 r0 0
	jump	L_cont.22049
L_else.22123 : 
	bne	r8 r0 L_else.22126
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r10 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.22124
L_else.22126 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r10 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.22124 : 
	addi	r6 r0 1
L_cont.22049 : 
	bne	r6 r0 L_else.22053
	jump	L_cont.22034
L_else.22053 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.22055
	jump	L_cont.22034
L_else.22055 : 
	ldi	r6 r21 1
	bne	r6 r5 L_else.22057
	jump	L_cont.22034
L_else.22057 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 2
	bne	r6 r5 L_else.22059
	jump	L_cont.22034
L_else.22059 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 3
	bne	r6 r5 L_else.22061
	jump	L_cont.22034
L_else.22061 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 4
	bne	r6 r5 L_else.22063
	jump	L_cont.22034
L_else.22063 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 5
	bne	r6 r5 L_else.22065
	jump	L_cont.22034
L_else.22065 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	ldi	r6 r21 6
	bne	r6 r5 L_else.22067
	jump	L_cont.22034
L_else.22067 : 
	ldi	r14 r6 1083
	add	r15 r0 r14
	add	r16 r0 r26
	add	r17 r0 r27
	call	L_solve_each_element_fast.2266
	addi	r20 r0 7
	add	r22 r0 r26
	add	r23 r0 r27
	call	L_solve_one_or_network_fast.2270
L_cont.22034 : 
	addi	r24 r24 1
	jump	L_trace_or_matrix_fast.2274
L_utexture.2289 : 
	fldi	f2 r9 0
	fsti	f2 r0 1049
	fldi	f2 r9 1
	fsti	f2 r0 1050
	fldi	f2 r9 2
	fsti	f2 r0 1051
	bne	r6 r4 L_else.22223
	fldi	f2 r10 0
	fldi	f3 r8 0
	fsub	f3 f2 f3
	fldi	f7 r0 35
	fmul	f2 f3 f7
	flr	f2 f2
	fldi	f5 r0 36
	fmul	f2 f2 f5
	fsub	f4 f3 f2
	fldi	f6 r0 37
	fldi	f2 r10 2
	fldi	f3 r8 2
	fsub	f3 f2 f3
	fmul	f2 f3 f7
	flr	f2 f2
	fmul	f2 f2 f5
	fsub	f2 f3 f2
	fbgt	f6 f4 L_else.22226
	fbgt	f6 f2 L_else.22228
	fldi	f2 r0 38
	jump	L_cont.22224
L_else.22228 : 
	fldi	f2 r0 30
	jump	L_cont.22224
L_else.22226 : 
	fbgt	f6 f2 L_else.22230
	fldi	f2 r0 30
	jump	L_cont.22224
L_else.22230 : 
	fldi	f2 r0 38
L_cont.22224 : 
	fsti	f2 r0 1050
	return
L_else.22223 : 
	addi	r9 r0 2
	bne	r6 r9 L_else.22232
	fldi	f2 r10 1
	fldi	f3 r0 39
	fmul	f2 f2 f3
	call	L_sin.1942
	fmul	f3 f2 f2
	fldi	f2 r0 38
	fmul	f2 f2 f3
	fsti	f2 r0 1049
	fldi	f4 r0 38
	fldi	f2 r0 12
	fsub	f2 f2 f3
	fmul	f2 f4 f2
	fsti	f2 r0 1050
	return
L_else.22232 : 
	addi	r9 r0 3
	bne	r6 r9 L_else.22234
	fldi	f2 r10 0
	fldi	f3 r8 0
	fsub	f3 f2 f3
	fldi	f4 r10 2
	fldi	f2 r8 2
	fsub	f4 f4 f2
	fmul	f2 f3 f3
	fmul	f3 f4 f4
	fadd	f2 f2 f3
	fsqrt	f3 f2
	fldi	f2 r0 37
	fdiv	f3 f3 f2
	flr	f2 f3
	fsub	f3 f3 f2
	fldi	f2 r0 40
	fmul	f2 f3 f2
	call	L_cos.1944
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
L_else.22234 : 
	addi	r9 r0 4
	bne	r6 r9 L_else.22236
	fldi	f2 r10 0
	fldi	f3 r8 0
	fsub	f3 f2 f3
	fldi	f2 r7 0
	fsqrt	f2 f2
	fmul	f2 f3 f2
	fldi	f3 r10 2
	fldi	f4 r8 2
	fsub	f4 f3 f4
	fldi	f3 r7 2
	fsqrt	f3 f3
	fmul	f5 f4 f3
	fmul	f3 f2 f2
	fmul	f4 f5 f5
	fadd	f15 f3 f4
	fbgt	f0 f2 L_else.22239
	fadd	f3 f0 f2
	jump	L_cont.22237
L_else.22239 : 
	fsub	f3 f0 f2
L_cont.22237 : 
	fldi	f4 r0 41
	fbgt	f4 f3 L_else.22242
	fdiv	f2 f5 f2
	fbgt	f0 f2 L_else.22257
	jump	L_cont.22255
L_else.22257 : 
	fsub	f2 f0 f2
L_cont.22255 : 
	call	L_atan.1946
	fldi	f3 r0 42
	fmul	f2 f2 f3
	fldi	f3 r0 40
	fdiv	f2 f2 f3
	jump	L_cont.22240
L_else.22242 : 
	fldi	f2 r0 43
L_cont.22240 : 
	flr	f3 f2
	fsub	f16 f2 f3
	fldi	f3 r10 1
	fldi	f2 r8 1
	fsub	f3 f3 f2
	fldi	f2 r7 1
	fsqrt	f2 f2
	fmul	f3 f3 f2
	fbgt	f0 f15 L_else.22245
	fadd	f2 f0 f15
	jump	L_cont.22243
L_else.22245 : 
	fsub	f2 f0 f15
L_cont.22243 : 
	fldi	f4 r0 41
	fbgt	f4 f2 L_else.22248
	fdiv	f2 f3 f15
	fbgt	f0 f2 L_else.22254
	jump	L_cont.22252
L_else.22254 : 
	fsub	f2 f0 f2
L_cont.22252 : 
	call	L_atan.1946
	fldi	f3 r0 42
	fmul	f3 f2 f3
	fldi	f2 r0 40
	fdiv	f3 f3 f2
	jump	L_cont.22246
L_else.22248 : 
	fldi	f3 r0 43
L_cont.22246 : 
	flr	f2 f3
	fsub	f5 f3 f2
	fldi	f3 r0 44
	fldi	f4 r0 11
	fsub	f2 f4 f16
	fmul	f2 f2 f2
	fsub	f3 f3 f2
	fsub	f2 f4 f5
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fbgt	f0 f2 L_else.22251
	jump	L_cont.22249
L_else.22251 : 
	fldi	f2 r0 30
L_cont.22249 : 
	fldi	f3 r0 38
	fmul	f2 f3 f2
	fldi	f3 r0 45
	fdiv	f2 f2 f3
	fsti	f2 r0 1051
	return
L_else.22236 : 
	return
L_trace_reflections.2296 : 
	bgt	r0 r28 L_else.22260
	muli	r6 r28 4
	fldi	f17 r6 1137
	ldi	r27 r6 1136
	ldi	r30 r6 1135
	ldi	r31 r6 1134
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r24 r0 0
	ldi	r25 r0 1133
	add	r26 r0 r30
	call	L_trace_or_matrix_fast.2274
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else.22263
	addi	r6 r0 0
	jump	L_cont.22261
L_else.22263 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else.22277
	addi	r6 r0 0
	jump	L_cont.22261
L_else.22277 : 
	addi	r6 r0 1
L_cont.22261 : 
	bne	r6 r0 L_else.22266
	jump	L_cont.22264
L_else.22266 : 
	ldi	r6 r0 1045
	muli	r6 r6 4
	ldi	r7 r0 1074
	add	r6 r6 r7
	bne	r6 r31 L_else.22268
	ldi	r20 r0 1133
	add	r21 r0 r20
	call	L_shadow_check_one_or_matrix.2249
	bne	r6 r0 L_else.22270
	fldi	f2 r0 1046
	fldi	f3 r30 0
	fmul	f3 f2 f3
	fldi	f4 r0 1047
	fldi	f2 r30 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r0 1048
	fldi	f2 r30 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fmul	f3 f17 f15
	fmul	f5 f3 f2
	fldi	f3 r29 0
	fldi	f2 r30 0
	fmul	f4 f3 f2
	fldi	f2 r29 1
	fldi	f3 r30 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r29 2
	fldi	f3 r30 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fmul	f4 f17 f2
	fbgt	f5 f0 L_else.22273
	jump	L_cont.22271
L_else.22273 : 
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
L_cont.22271 : 
	fbgt	f4 f0 L_else.22275
	jump	L_cont.22264
L_else.22275 : 
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
	jump	L_cont.22264
L_else.22270 : 
	jump	L_cont.22264
L_else.22268 : 
L_cont.22264 : 
	addi	r28 r28 -1
	jump	L_trace_reflections.2296
L_else.22260 : 
	return
L_trace_ray.2301 : 
	addi	r16 r0 4
	bgt	r6 r16 L_else.22280
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r22 r0 0
	ldi	r23 r0 1133
	sti	r11 r2 0
	sti	r15 r2 1
	sti	r14 r2 2
	sti	r13 r2 3
	sti	r8 r2 4
	sti	r12 r2 5
	sti	r9 r2 6
	sti	r7 r2 7
	sti	r6 r2 8
	sti	r10 r2 9
	add	r24 r0 r7
	addi	r2 r2 10
	call	L_trace_or_matrix.2260
	addi	r2 r2 -10
	ldi	r11 r2 0
	ldi	r15 r2 1
	ldi	r14 r2 2
	ldi	r13 r2 3
	ldi	r8 r2 4
	ldi	r12 r2 5
	ldi	r9 r2 6
	ldi	r7 r2 7
	ldi	r6 r2 8
	ldi	r10 r2 9
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else.22283
	addi	r16 r0 0
	jump	L_cont.22281
L_else.22283 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else.22327
	addi	r16 r0 0
	jump	L_cont.22281
L_else.22327 : 
	addi	r16 r0 1
L_cont.22281 : 
	bne	r16 r0 L_else.22285
	addi	r8 r0 -1
	add	r1 r10 r6
	sti	r8 r1 0
	bne	r6 r0 L_else.22287
	return
L_else.22287 : 
	fldi	f2 r7 0
	fldi	f3 r0 1039
	fmul	f3 f2 f3
	fldi	f4 r7 1
	fldi	f2 r0 1040
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r7 2
	fldi	f2 r0 1041
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsub	f3 f0 f2
	fbgt	f3 f0 L_else.22289
	return
L_else.22289 : 
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
L_else.22285 : 
	ldi	r21 r0 1045
	muli	r19 r21 11
	ldi	r23 r19 1928
	ldi	r20 r19 1927
	ldi	r16 r19 1926
	ldi	r25 r19 1925
	ldi	r22 r19 1924
	ldi	r18 r19 1923
	ldi	r24 r19 1922
	ldi	r17 r19 1921
	ldi	r26 r19 1920
	ldi	r19 r19 1919
	fldi	f2 r16 0
	fmul	f17 f2 f18
	bne	r26 r4 L_else.22292
	ldi	r23 r0 1074
	addi	r24 r0 1046
	fsti	f0 r0 1046
	fsti	f0 r0 1047
	fsti	f0 r0 1048
	addi	r23 r23 -1
	add	r1 r7 r23
	fldi	f2 r1 0
	fbne	f2 f0 L_else.22313
	fldi	f2 r0 30
	jump	L_cont.22311
L_else.22313 : 
	fbgt	f2 f0 L_else.22315
	fldi	f2 r0 31
	jump	L_cont.22311
L_else.22315 : 
	fldi	f2 r0 12
L_cont.22311 : 
	fsub	f2 f0 f2
	add	r1 r24 r23
	fsti	f2 r1 0
	jump	L_cont.22290
L_else.22292 : 
	addi	r27 r0 2
	bne	r26 r27 L_else.22317
	fldi	f2 r18 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	fldi	f2 r18 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	fldi	f2 r18 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	jump	L_cont.22290
L_else.22317 : 
	fldi	f2 r0 1042
	fldi	f3 r22 0
	fsub	f9 f2 f3
	fldi	f3 r0 1043
	fldi	f2 r22 1
	fsub	f8 f3 f2
	fldi	f2 r0 1044
	fldi	f3 r22 2
	fsub	f7 f2 f3
	fldi	f2 r18 0
	fmul	f6 f9 f2
	fldi	f2 r18 1
	fmul	f5 f8 f2
	fldi	f2 r18 2
	fmul	f4 f7 f2
	bne	r24 r0 L_else.22320
	fsti	f6 r0 1046
	fsti	f5 r0 1047
	fsti	f4 r0 1048
	jump	L_cont.22318
L_else.22320 : 
	fldi	f2 r23 2
	fmul	f3 f8 f2
	fldi	f2 r23 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r0 1046
	fldi	f2 r23 2
	fmul	f3 f9 f2
	fldi	f2 r23 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 29
	fdiv	f2 f2 f3
	fadd	f2 f5 f2
	fsti	f2 r0 1047
	fldi	f2 r23 1
	fmul	f3 f9 f2
	fldi	f2 r23 0
	fmul	f2 f8 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont.22318 : 
	fldi	f4 r0 1046
	fmul	f3 f4 f4
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else.22323
	fldi	f3 r0 12
	jump	L_cont.22321
L_else.22323 : 
	bne	r25 r0 L_else.22325
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont.22321
L_else.22325 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont.22321 : 
	fmul	f2 f4 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont.22290 : 
	addi	r23 r0 1042
	fldi	f2 r0 1042
	fsti	f2 r0 1063
	fldi	f2 r0 1043
	fsti	f2 r0 1064
	fldi	f2 r0 1044
	fsti	f2 r0 1065
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r8 r2 3
	sti	r9 r2 4
	add	r6 r0 r19
	add	r7 r0 r18
	add	r8 r0 r22
	add	r9 r0 r20
	add	r10 r0 r23
	addi	r2 r2 5
	call	L_utexture.2289
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
	ldi	r9 r2 4
	muli	r18 r21 4
	ldi	r19 r0 1074
	add	r18 r18 r19
	add	r1 r10 r6
	sti	r18 r1 0
	add	r1 r9 r6
	ldi	r18 r1 0
	fldi	f2 r0 1042
	fsti	f2 r18 0
	fldi	f2 r0 1043
	fsti	f2 r18 1
	fldi	f2 r0 1044
	fsti	f2 r18 2
	fldi	f3 r16 0
	fldi	f2 r0 11
	fbgt	f2 f3 L_else.22295
	addi	r18 r0 1
	add	r1 r11 r6
	sti	r18 r1 0
	add	r1 r12 r6
	ldi	r18 r1 0
	fldi	f2 r0 1049
	fsti	f2 r18 0
	fldi	f2 r0 1050
	fsti	f2 r18 1
	fldi	f2 r0 1051
	fsti	f2 r18 2
	add	r1 r12 r6
	ldi	r18 r1 0
	fldi	f2 r0 48
	fmul	f3 f2 f17
	fldi	f2 r18 0
	fmul	f2 f2 f3
	fsti	f2 r18 0
	fldi	f2 r18 1
	fmul	f2 f2 f3
	fsti	f2 r18 1
	fldi	f2 r18 2
	fmul	f2 f2 f3
	fsti	f2 r18 2
	add	r1 r15 r6
	ldi	r18 r1 0
	fldi	f2 r0 1046
	fsti	f2 r18 0
	fldi	f2 r0 1047
	fsti	f2 r18 1
	fldi	f2 r0 1048
	fsti	f2 r18 2
	jump	L_cont.22293
L_else.22295 : 
	addi	r18 r0 0
	add	r1 r11 r6
	sti	r18 r1 0
L_cont.22293 : 
	fldi	f7 r0 49
	fldi	f6 r7 0
	fldi	f5 r0 1046
	fmul	f4 f6 f5
	fldi	f3 r7 1
	fldi	f2 r0 1047
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r7 2
	fldi	f2 r0 1048
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fmul	f4 f7 f2
	fmul	f2 f4 f5
	fadd	f2 f6 f2
	fsti	f2 r7 0
	fldi	f3 r7 1
	fldi	f2 r0 1047
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r7 1
	fldi	f3 r7 2
	fldi	f2 r0 1048
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r7 2
	fldi	f2 r16 1
	fmul	f16 f18 f2
	ldi	r20 r0 1133
	sti	r15 r2 0
	sti	r14 r2 1
	sti	r13 r2 2
	sti	r12 r2 3
	sti	r11 r2 4
	sti	r10 r2 5
	sti	r9 r2 6
	sti	r8 r2 7
	sti	r16 r2 8
	sti	r17 r2 9
	sti	r6 r2 10
	sti	r7 r2 11
	add	r21 r0 r20
	addi	r2 r2 12
	call	L_shadow_check_one_or_matrix.2249
	addi	r2 r2 -12
	add	r18 r0 r6
	ldi	r15 r2 0
	ldi	r14 r2 1
	ldi	r13 r2 2
	ldi	r12 r2 3
	ldi	r11 r2 4
	ldi	r10 r2 5
	ldi	r9 r2 6
	ldi	r8 r2 7
	ldi	r16 r2 8
	ldi	r17 r2 9
	ldi	r6 r2 10
	ldi	r7 r2 11
	bne	r18 r0 L_else.22298
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
	fmul	f5 f2 f17
	fldi	f2 r7 0
	fldi	f3 r0 1039
	fmul	f3 f2 f3
	fldi	f4 r7 1
	fldi	f2 r0 1040
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r7 2
	fldi	f2 r0 1041
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsub	f4 f0 f2
	fbgt	f5 f0 L_else.22308
	jump	L_cont.22306
L_else.22308 : 
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
L_cont.22306 : 
	fbgt	f4 f0 L_else.22310
	jump	L_cont.22296
L_else.22310 : 
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
	jump	L_cont.22296
L_else.22298 : 
L_cont.22296 : 
	fldi	f2 r0 1042
	fsti	f2 r0 1066
	fldi	f2 r0 1043
	fsti	f2 r0 1067
	fldi	f2 r0 1044
	fsti	f2 r0 1068
	ldi	r18 r0 1072
	addi	r18 r18 -1
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r11 r2 4
	sti	r12 r2 5
	sti	r13 r2 6
	sti	r7 r2 7
	add	r6 r0 r23
	add	r7 r0 r18
	addi	r2 r2 8
	call	L_setup_startp_constants.2212
	addi	r2 r2 -8
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r11 r2 4
	ldi	r12 r2 5
	ldi	r13 r2 6
	ldi	r7 r2 7
	ldi	r18 r0 1075
	addi	r28 r18 -1
	sti	r15 r2 0
	sti	r14 r2 1
	sti	r13 r2 2
	sti	r12 r2 3
	sti	r11 r2 4
	sti	r10 r2 5
	sti	r9 r2 6
	sti	r8 r2 7
	sti	r7 r2 8
	sti	r16 r2 9
	sti	r17 r2 10
	sti	r6 r2 11
	add	r29 r0 r7
	fadd	f15 f0 f17
	addi	r2 r2 12
	call	L_trace_reflections.2296
	addi	r2 r2 -12
	ldi	r15 r2 0
	ldi	r14 r2 1
	ldi	r13 r2 2
	ldi	r12 r2 3
	ldi	r11 r2 4
	ldi	r10 r2 5
	ldi	r9 r2 6
	ldi	r8 r2 7
	ldi	r7 r2 8
	ldi	r16 r2 9
	ldi	r17 r2 10
	ldi	r6 r2 11
	fldi	f2 r0 50
	fbgt	f18 f2 L_else.22300
	return
L_else.22300 : 
	addi	r18 r0 4
	bgt	r18 r6 L_else.22303
	jump	L_cont.22301
L_else.22303 : 
	addi	r19 r6 1
	addi	r18 r0 -1
	add	r1 r10 r19
	sti	r18 r1 0
L_cont.22301 : 
	addi	r18 r0 2
	bne	r17 r18 L_else.22305
	fldi	f2 r0 12
	fldi	f3 r16 0
	fsub	f2 f2 f3
	fmul	f18 f18 f2
	addi	r6 r6 1
	fldi	f2 r0 1082
	fadd	f19 f19 f2
	jump	L_trace_ray.2301
L_else.22305 : 
	return
L_else.22280 : 
	return
L_trace_diffuse_ray.2307 : 
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r24 r0 0
	ldi	r25 r0 1133
	add	r26 r0 r28
	call	L_trace_or_matrix_fast.2274
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else.22331
	addi	r6 r0 0
	jump	L_cont.22329
L_else.22331 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else.22358
	addi	r6 r0 0
	jump	L_cont.22329
L_else.22358 : 
	addi	r6 r0 1
L_cont.22329 : 
	bne	r6 r0 L_else.22333
	return
L_else.22333 : 
	ldi	r6 r0 1045
	muli	r6 r6 11
	ldi	r11 r6 1928
	ldi	r9 r6 1927
	ldi	r23 r6 1926
	ldi	r10 r6 1925
	ldi	r8 r6 1924
	ldi	r7 r6 1923
	ldi	r13 r6 1922
	ldi	r12 r6 1920
	ldi	r6 r6 1919
	bne	r12 r4 L_else.22336
	ldi	r10 r0 1074
	addi	r11 r0 1046
	fsti	f0 r0 1046
	fsti	f0 r0 1047
	fsti	f0 r0 1048
	addi	r10 r10 -1
	add	r1 r28 r10
	fldi	f2 r1 0
	fbne	f2 f0 L_else.22344
	fldi	f2 r0 30
	jump	L_cont.22342
L_else.22344 : 
	fbgt	f2 f0 L_else.22346
	fldi	f2 r0 31
	jump	L_cont.22342
L_else.22346 : 
	fldi	f2 r0 12
L_cont.22342 : 
	fsub	f2 f0 f2
	add	r1 r11 r10
	fsti	f2 r1 0
	jump	L_cont.22334
L_else.22336 : 
	addi	r14 r0 2
	bne	r12 r14 L_else.22348
	fldi	f2 r7 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	fldi	f2 r7 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	fldi	f2 r7 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	jump	L_cont.22334
L_else.22348 : 
	fldi	f2 r0 1042
	fldi	f3 r8 0
	fsub	f8 f2 f3
	fldi	f3 r0 1043
	fldi	f2 r8 1
	fsub	f9 f3 f2
	fldi	f2 r0 1044
	fldi	f3 r8 2
	fsub	f7 f2 f3
	fldi	f2 r7 0
	fmul	f6 f8 f2
	fldi	f2 r7 1
	fmul	f5 f9 f2
	fldi	f2 r7 2
	fmul	f4 f7 f2
	bne	r13 r0 L_else.22351
	fsti	f6 r0 1046
	fsti	f5 r0 1047
	fsti	f4 r0 1048
	jump	L_cont.22349
L_else.22351 : 
	fldi	f2 r11 2
	fmul	f3 f9 f2
	fldi	f2 r11 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r0 1046
	fldi	f2 r11 2
	fmul	f3 f8 f2
	fldi	f2 r11 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 29
	fdiv	f2 f2 f3
	fadd	f2 f5 f2
	fsti	f2 r0 1047
	fldi	f2 r11 1
	fmul	f3 f8 f2
	fldi	f2 r11 0
	fmul	f2 f9 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont.22349 : 
	fldi	f4 r0 1046
	fmul	f3 f4 f4
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else.22354
	fldi	f3 r0 12
	jump	L_cont.22352
L_else.22354 : 
	bne	r10 r0 L_else.22356
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont.22352
L_else.22356 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont.22352 : 
	fmul	f2 f4 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont.22334 : 
	addi	r10 r0 1042
	call	L_utexture.2289
	ldi	r20 r0 1133
	add	r21 r0 r20
	call	L_shadow_check_one_or_matrix.2249
	bne	r6 r0 L_else.22338
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
	fbgt	f2 f0 L_else.22341
	fldi	f2 r0 30
	jump	L_cont.22339
L_else.22341 : 
L_cont.22339 : 
	fmul	f2 f17 f2
	fldi	f3 r23 0
	fmul	f4 f2 f3
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
L_else.22338 : 
	return
L_iter_trace_diffuse_rays.2310 : 
	bgt	r0 r6 L_else.22361
	muli	r9 r6 2
	addi	r8 r9 1
	add	r1 r29 r9
	ldi	r7 r1 0
	fldi	f3 r7 0
	fldi	f2 r30 0
	fmul	f4 f3 f2
	fldi	f3 r7 1
	fldi	f2 r30 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r7 2
	fldi	f2 r30 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else.22364
	add	r1 r29 r8
	ldi	r27 r1 0
	add	r1 r29 r9
	ldi	r28 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_trace_diffuse_ray.2307
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont.22362
L_else.22364 : 
	addi	r7 r6 1
	muli	r8 r7 2
	addi	r7 r8 1
	add	r1 r29 r7
	ldi	r27 r1 0
	add	r1 r29 r8
	ldi	r28 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_trace_diffuse_ray.2307
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont.22362 : 
	addi	r6 r6 -2
	jump	L_iter_trace_diffuse_rays.2310
L_else.22361 : 
	return
L_calc_diffuse_using_1point.2323 : 
	add	r1 r8 r11
	ldi	r8 r1 0
	fldi	f2 r8 0
	fsti	f2 r0 1052
	fldi	f2 r8 1
	fsti	f2 r0 1053
	fldi	f2 r8 2
	fsti	f2 r0 1054
	ldi	r9 r9 0
	add	r1 r10 r11
	ldi	r8 r1 0
	add	r1 r6 r11
	ldi	r6 r1 0
	bne	r9 r0 L_else.22368
	jump	L_cont.22366
L_else.22368 : 
	ldi	r29 r0 1076
	fldi	f2 r6 0
	fsti	f2 r0 1066
	fldi	f2 r6 1
	fsti	f2 r0 1067
	fldi	f2 r6 2
	fsti	f2 r0 1068
	ldi	r10 r0 1072
	addi	r10 r10 -1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	add	r7 r0 r10
	addi	r2 r2 5
	call	L_setup_startp_constants.2212
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
	addi	r10 r0 118
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	sti	r11 r2 3
	sti	r9 r2 4
	add	r30 r0 r8
	add	r31 r0 r6
	add	r6 r0 r10
	addi	r2 r2 5
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r11 r2 3
	ldi	r9 r2 4
L_cont.22366 : 
	bne	r9 r4 L_else.22371
	jump	L_cont.22369
L_else.22371 : 
	ldi	r29 r0 1077
	fldi	f2 r6 0
	fsti	f2 r0 1066
	fldi	f2 r6 1
	fsti	f2 r0 1067
	fldi	f2 r6 2
	fsti	f2 r0 1068
	ldi	r10 r0 1072
	addi	r10 r10 -1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	add	r7 r0 r10
	addi	r2 r2 5
	call	L_setup_startp_constants.2212
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	addi	r10 r0 118
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r7 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	add	r30 r0 r8
	add	r31 r0 r6
	add	r6 r0 r10
	addi	r2 r2 5
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
L_cont.22369 : 
	addi	r10 r0 2
	bne	r9 r10 L_else.22374
	jump	L_cont.22372
L_else.22374 : 
	ldi	r29 r0 1078
	fldi	f2 r6 0
	fsti	f2 r0 1066
	fldi	f2 r6 1
	fsti	f2 r0 1067
	fldi	f2 r6 2
	fsti	f2 r0 1068
	ldi	r10 r0 1072
	addi	r10 r10 -1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	add	r7 r0 r10
	addi	r2 r2 5
	call	L_setup_startp_constants.2212
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	addi	r10 r0 118
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r7 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	add	r30 r0 r8
	add	r31 r0 r6
	add	r6 r0 r10
	addi	r2 r2 5
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
L_cont.22372 : 
	addi	r10 r0 3
	bne	r9 r10 L_else.22377
	jump	L_cont.22375
L_else.22377 : 
	ldi	r29 r0 1079
	fldi	f2 r6 0
	fsti	f2 r0 1066
	fldi	f2 r6 1
	fsti	f2 r0 1067
	fldi	f2 r6 2
	fsti	f2 r0 1068
	ldi	r10 r0 1072
	addi	r10 r10 -1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r9 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	add	r7 r0 r10
	addi	r2 r2 5
	call	L_setup_startp_constants.2212
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r9 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	addi	r10 r0 118
	sti	r9 r2 0
	sti	r11 r2 1
	sti	r7 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	add	r30 r0 r8
	add	r31 r0 r6
	add	r6 r0 r10
	addi	r2 r2 5
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r11 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
L_cont.22375 : 
	addi	r10 r0 4
	bne	r9 r10 L_else.22380
	jump	L_cont.22378
L_else.22380 : 
	ldi	r29 r0 1080
	fldi	f2 r6 0
	fsti	f2 r0 1066
	fldi	f2 r6 1
	fsti	f2 r0 1067
	fldi	f2 r6 2
	fsti	f2 r0 1068
	ldi	r9 r0 1072
	addi	r9 r9 -1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	sti	r7 r2 3
	add	r7 r0 r9
	addi	r2 r2 4
	call	L_setup_startp_constants.2212
	addi	r2 r2 -4
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	ldi	r7 r2 3
	addi	r9 r0 118
	sti	r11 r2 0
	sti	r7 r2 1
	add	r30 r0 r8
	add	r31 r0 r6
	add	r6 r0 r9
	addi	r2 r2 2
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -2
	ldi	r11 r2 0
	ldi	r7 r2 1
L_cont.22378 : 
	add	r1 r7 r11
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
	return
L_do_without_neighbors.2332 : 
	addi	r15 r0 4
	bgt	r14 r15 L_else.22383
	add	r1 r8 r14
	ldi	r15 r1 0
	bgt	r0 r15 L_else.22385
	add	r1 r9 r14
	ldi	r15 r1 0
	bne	r15 r0 L_else.22388
	jump	L_cont.22386
L_else.22388 : 
	add	r1 r11 r14
	ldi	r15 r1 0
	fldi	f2 r15 0
	fsti	f2 r0 1052
	fldi	f2 r15 1
	fsti	f2 r0 1053
	fldi	f2 r15 2
	fsti	f2 r0 1054
	ldi	r17 r12 0
	add	r1 r13 r14
	ldi	r15 r1 0
	add	r1 r7 r14
	ldi	r16 r1 0
	bne	r17 r0 L_else.22398
	jump	L_cont.22396
L_else.22398 : 
	ldi	r29 r0 1076
	fldi	f2 r16 0
	fsti	f2 r0 1066
	fldi	f2 r16 1
	fsti	f2 r0 1067
	fldi	f2 r16 2
	fsti	f2 r0 1068
	ldi	r18 r0 1072
	addi	r18 r18 -1
	sti	r10 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r13 r2 3
	sti	r12 r2 4
	sti	r11 r2 5
	sti	r7 r2 6
	sti	r6 r2 7
	add	r6 r0 r16
	add	r7 r0 r18
	addi	r2 r2 8
	call	L_setup_startp_constants.2212
	addi	r2 r2 -8
	ldi	r10 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r13 r2 3
	ldi	r12 r2 4
	ldi	r11 r2 5
	ldi	r7 r2 6
	ldi	r6 r2 7
	addi	r18 r0 118
	sti	r16 r2 0
	sti	r15 r2 1
	sti	r10 r2 2
	sti	r14 r2 3
	sti	r8 r2 4
	sti	r9 r2 5
	sti	r13 r2 6
	sti	r12 r2 7
	sti	r11 r2 8
	sti	r7 r2 9
	sti	r6 r2 10
	sti	r17 r2 11
	add	r30 r0 r15
	add	r31 r0 r16
	add	r6 r0 r18
	addi	r2 r2 12
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -12
	ldi	r16 r2 0
	ldi	r15 r2 1
	ldi	r10 r2 2
	ldi	r14 r2 3
	ldi	r8 r2 4
	ldi	r9 r2 5
	ldi	r13 r2 6
	ldi	r12 r2 7
	ldi	r11 r2 8
	ldi	r7 r2 9
	ldi	r6 r2 10
	ldi	r17 r2 11
L_cont.22396 : 
	bne	r17 r4 L_else.22401
	jump	L_cont.22399
L_else.22401 : 
	ldi	r29 r0 1077
	fldi	f2 r16 0
	fsti	f2 r0 1066
	fldi	f2 r16 1
	fsti	f2 r0 1067
	fldi	f2 r16 2
	fsti	f2 r0 1068
	ldi	r18 r0 1072
	addi	r18 r18 -1
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r8 r2 6
	sti	r10 r2 7
	add	r6 r0 r16
	add	r7 r0 r18
	addi	r2 r2 8
	call	L_setup_startp_constants.2212
	addi	r2 r2 -8
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r8 r2 6
	ldi	r10 r2 7
	addi	r18 r0 118
	sti	r17 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r11 r2 3
	sti	r12 r2 4
	sti	r13 r2 5
	sti	r9 r2 6
	sti	r8 r2 7
	sti	r14 r2 8
	sti	r10 r2 9
	sti	r15 r2 10
	sti	r16 r2 11
	add	r30 r0 r15
	add	r31 r0 r16
	add	r6 r0 r18
	addi	r2 r2 12
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -12
	ldi	r17 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r11 r2 3
	ldi	r12 r2 4
	ldi	r13 r2 5
	ldi	r9 r2 6
	ldi	r8 r2 7
	ldi	r14 r2 8
	ldi	r10 r2 9
	ldi	r15 r2 10
	ldi	r16 r2 11
L_cont.22399 : 
	addi	r18 r0 2
	bne	r17 r18 L_else.22404
	jump	L_cont.22402
L_else.22404 : 
	ldi	r29 r0 1078
	fldi	f2 r16 0
	fsti	f2 r0 1066
	fldi	f2 r16 1
	fsti	f2 r0 1067
	fldi	f2 r16 2
	fsti	f2 r0 1068
	ldi	r18 r0 1072
	addi	r18 r18 -1
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r8 r2 6
	sti	r10 r2 7
	add	r6 r0 r16
	add	r7 r0 r18
	addi	r2 r2 8
	call	L_setup_startp_constants.2212
	addi	r2 r2 -8
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r8 r2 6
	ldi	r10 r2 7
	addi	r18 r0 118
	sti	r17 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r11 r2 3
	sti	r12 r2 4
	sti	r13 r2 5
	sti	r9 r2 6
	sti	r8 r2 7
	sti	r14 r2 8
	sti	r10 r2 9
	sti	r15 r2 10
	sti	r16 r2 11
	add	r30 r0 r15
	add	r31 r0 r16
	add	r6 r0 r18
	addi	r2 r2 12
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -12
	ldi	r17 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r11 r2 3
	ldi	r12 r2 4
	ldi	r13 r2 5
	ldi	r9 r2 6
	ldi	r8 r2 7
	ldi	r14 r2 8
	ldi	r10 r2 9
	ldi	r15 r2 10
	ldi	r16 r2 11
L_cont.22402 : 
	addi	r18 r0 3
	bne	r17 r18 L_else.22407
	jump	L_cont.22405
L_else.22407 : 
	ldi	r29 r0 1079
	fldi	f2 r16 0
	fsti	f2 r0 1066
	fldi	f2 r16 1
	fsti	f2 r0 1067
	fldi	f2 r16 2
	fsti	f2 r0 1068
	ldi	r18 r0 1072
	addi	r18 r18 -1
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r8 r2 6
	sti	r10 r2 7
	add	r6 r0 r16
	add	r7 r0 r18
	addi	r2 r2 8
	call	L_setup_startp_constants.2212
	addi	r2 r2 -8
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r8 r2 6
	ldi	r10 r2 7
	addi	r18 r0 118
	sti	r17 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r11 r2 3
	sti	r12 r2 4
	sti	r13 r2 5
	sti	r9 r2 6
	sti	r8 r2 7
	sti	r14 r2 8
	sti	r10 r2 9
	sti	r15 r2 10
	sti	r16 r2 11
	add	r30 r0 r15
	add	r31 r0 r16
	add	r6 r0 r18
	addi	r2 r2 12
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -12
	ldi	r17 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r11 r2 3
	ldi	r12 r2 4
	ldi	r13 r2 5
	ldi	r9 r2 6
	ldi	r8 r2 7
	ldi	r14 r2 8
	ldi	r10 r2 9
	ldi	r15 r2 10
	ldi	r16 r2 11
L_cont.22405 : 
	addi	r18 r0 4
	bne	r17 r18 L_else.22410
	jump	L_cont.22408
L_else.22410 : 
	ldi	r29 r0 1080
	fldi	f2 r16 0
	fsti	f2 r0 1066
	fldi	f2 r16 1
	fsti	f2 r0 1067
	fldi	f2 r16 2
	fsti	f2 r0 1068
	ldi	r17 r0 1072
	addi	r17 r17 -1
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r8 r2 6
	sti	r10 r2 7
	add	r6 r0 r16
	add	r7 r0 r17
	addi	r2 r2 8
	call	L_setup_startp_constants.2212
	addi	r2 r2 -8
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r8 r2 6
	ldi	r10 r2 7
	addi	r17 r0 118
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r11 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r8 r2 6
	sti	r14 r2 7
	sti	r10 r2 8
	add	r30 r0 r15
	add	r31 r0 r16
	add	r6 r0 r17
	addi	r2 r2 9
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -9
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r8 r2 6
	ldi	r14 r2 7
	ldi	r10 r2 8
L_cont.22408 : 
	add	r1 r10 r14
	ldi	r15 r1 0
	fldi	f4 r0 1055
	fldi	f2 r15 0
	fldi	f3 r0 1052
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1055
	fldi	f3 r0 1056
	fldi	f4 r15 1
	fldi	f2 r0 1053
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1056
	fldi	f4 r0 1057
	fldi	f2 r15 2
	fldi	f3 r0 1054
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1057
L_cont.22386 : 
	addi	r14 r14 1
	addi	r15 r0 4
	bgt	r14 r15 L_else.22390
	add	r1 r8 r14
	ldi	r15 r1 0
	bgt	r0 r15 L_else.22392
	add	r1 r9 r14
	ldi	r15 r1 0
	bne	r15 r0 L_else.22395
	jump	L_cont.22393
L_else.22395 : 
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	sti	r11 r2 5
	sti	r12 r2 6
	sti	r13 r2 7
	sti	r14 r2 8
	add	r6 r0 r7
	add	r8 r0 r11
	add	r9 r0 r12
	add	r7 r0 r10
	add	r11 r0 r14
	add	r10 r0 r13
	addi	r2 r2 9
	call	L_calc_diffuse_using_1point.2323
	addi	r2 r2 -9
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	ldi	r11 r2 5
	ldi	r12 r2 6
	ldi	r13 r2 7
	ldi	r14 r2 8
L_cont.22393 : 
	addi	r14 r14 1
	jump	L_do_without_neighbors.2332
L_else.22392 : 
	return
L_else.22390 : 
	return
L_else.22385 : 
	return
L_else.22383 : 
	return
L_try_exploit_neighbors.2348 : 
	muli	r14 r6 8
	addi	r12 r14 7
	add	r1 r9 r12
	ldi	r17 r1 0
	addi	r12 r14 6
	add	r1 r9 r12
	ldi	r16 r1 0
	addi	r24 r14 5
	add	r1 r9 r24
	ldi	r18 r1 0
	addi	r23 r14 4
	add	r1 r9 r23
	ldi	r15 r1 0
	addi	r12 r14 3
	add	r1 r9 r12
	ldi	r20 r1 0
	addi	r25 r14 2
	add	r1 r9 r25
	ldi	r12 r1 0
	addi	r13 r14 1
	add	r1 r9 r13
	ldi	r13 r1 0
	add	r1 r9 r14
	ldi	r14 r1 0
	addi	r22 r0 4
	bgt	r11 r22 L_else.22413
	add	r1 r12 r11
	ldi	r19 r1 0
	bgt	r0 r19 L_else.22415
	add	r19 r0 r20
	add	r1 r12 r11
	ldi	r26 r1 0
	add	r1 r8 r25
	ldi	r21 r1 0
	add	r1 r21 r11
	ldi	r21 r1 0
	bne	r21 r26 L_else.22418
	add	r1 r10 r25
	ldi	r21 r1 0
	add	r1 r21 r11
	ldi	r21 r1 0
	bne	r21 r26 L_else.22432
	addi	r21 r6 -1
	muli	r21 r21 8
	addi	r21 r21 2
	add	r1 r9 r21
	ldi	r21 r1 0
	add	r1 r21 r11
	ldi	r21 r1 0
	bne	r21 r26 L_else.22434
	addi	r21 r6 1
	muli	r21 r21 8
	addi	r21 r21 2
	add	r1 r9 r21
	ldi	r21 r1 0
	add	r1 r21 r11
	ldi	r21 r1 0
	bne	r21 r26 L_else.22436
	addi	r21 r0 1
	jump	L_cont.22416
L_else.22436 : 
	addi	r21 r0 0
	jump	L_cont.22416
L_else.22434 : 
	addi	r21 r0 0
	jump	L_cont.22416
L_else.22432 : 
	addi	r21 r0 0
	jump	L_cont.22416
L_else.22418 : 
	addi	r21 r0 0
L_cont.22416 : 
	bne	r21 r0 L_else.22420
	add	r10 r0 r19
	add	r9 r0 r15
	add	r8 r0 r18
	add	r7 r0 r16
	add	r6 r0 r17
	bgt	r11 r22 L_else.22422
	add	r1 r12 r11
	ldi	r15 r1 0
	bgt	r0 r15 L_else.22424
	add	r1 r10 r11
	ldi	r15 r1 0
	bne	r15 r0 L_else.22427
	jump	L_cont.22425
L_else.22427 : 
	sti	r14 r2 0
	sti	r13 r2 1
	sti	r12 r2 2
	sti	r10 r2 3
	sti	r9 r2 4
	sti	r8 r2 5
	sti	r7 r2 6
	sti	r6 r2 7
	sti	r11 r2 8
	add	r10 r0 r6
	add	r6 r0 r13
	add	r1 r0 r7
	add	r7 r0 r9
	add	r9 r0 r1
	addi	r2 r2 9
	call	L_calc_diffuse_using_1point.2323
	addi	r2 r2 -9
	ldi	r14 r2 0
	ldi	r13 r2 1
	ldi	r12 r2 2
	ldi	r10 r2 3
	ldi	r9 r2 4
	ldi	r8 r2 5
	ldi	r7 r2 6
	ldi	r6 r2 7
	ldi	r11 r2 8
L_cont.22425 : 
	addi	r11 r11 1
	add	r1 r0 r6
	add	r6 r0 r14
	add	r14 r0 r11
	add	r11 r0 r8
	add	r8 r0 r12
	add	r12 r0 r7
	add	r7 r0 r13
	add	r13 r0 r1
	add	r1 r0 r9
	add	r9 r0 r10
	add	r10 r0 r1
	jump	L_do_without_neighbors.2332
L_else.22424 : 
	return
L_else.22422 : 
	return
L_else.22420 : 
	add	r1 r20 r11
	ldi	r12 r1 0
	bne	r12 r0 L_else.22430
	jump	L_cont.22428
L_else.22430 : 
	add	r1 r8 r24
	ldi	r14 r1 0
	addi	r12 r6 -1
	muli	r12 r12 8
	addi	r12 r12 5
	add	r1 r9 r12
	ldi	r12 r1 0
	add	r16 r0 r12
	add	r1 r9 r24
	ldi	r12 r1 0
	add	r15 r0 r12
	addi	r12 r6 1
	muli	r12 r12 8
	addi	r12 r12 5
	add	r1 r9 r12
	ldi	r12 r1 0
	add	r1 r10 r24
	ldi	r13 r1 0
	add	r1 r14 r11
	ldi	r14 r1 0
	fldi	f2 r14 0
	fsti	f2 r0 1052
	fldi	f2 r14 1
	fsti	f2 r0 1053
	fldi	f2 r14 2
	fsti	f2 r0 1054
	add	r1 r16 r11
	ldi	r14 r1 0
	fldi	f3 r0 1052
	fldi	f2 r14 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r14 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r14 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r15 r11
	ldi	r14 r1 0
	fldi	f2 r0 1052
	fldi	f3 r14 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r14 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r14 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	add	r1 r12 r11
	ldi	r12 r1 0
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
	add	r1 r13 r11
	ldi	r12 r1 0
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
	add	r1 r9 r23
	ldi	r12 r1 0
	add	r1 r12 r11
	ldi	r12 r1 0
	fldi	f4 r0 1055
	fldi	f2 r12 0
	fldi	f3 r0 1052
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1055
	fldi	f3 r0 1056
	fldi	f4 r12 1
	fldi	f2 r0 1053
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1056
	fldi	f4 r0 1057
	fldi	f2 r12 2
	fldi	f3 r0 1054
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1057
L_cont.22428 : 
	addi	r11 r11 1
	jump	L_try_exploit_neighbors.2348
L_else.22415 : 
	return
L_else.22413 : 
	return
L_write_ppm_header.2355 : 
	addi	r6 r0 80
	call	min_caml_print_char
	addi	r6 r0 54
	call	min_caml_print_char
	addi	r6 r0 10
	call	min_caml_print_char
	ldi	r9 r0 1058
	call	L_print_int.1964
	addi	r6 r0 32
	call	min_caml_print_char
	ldi	r9 r0 1059
	call	L_print_int.1964
	addi	r6 r0 32
	call	min_caml_print_char
	addi	r9 r0 255
	call	L_print_int.1964
	addi	r6 r0 10
	jump	min_caml_print_char
L_write_rgb_element.2357 : 
	jump	min_caml_print_float
L_pretrace_diffuse_rays.2361 : 
	addi	r15 r0 4
	bgt	r14 r15 L_else.22441
	add	r1 r8 r14
	ldi	r15 r1 0
	bgt	r0 r15 L_else.22443
	add	r1 r9 r14
	ldi	r15 r1 0
	bne	r15 r0 L_else.22446
	jump	L_cont.22444
L_else.22446 : 
	ldi	r15 r12 0
	fsti	f0 r0 1052
	fsti	f0 r0 1053
	fsti	f0 r0 1054
	ldi	r29 r15 1076
	add	r1 r13 r14
	ldi	r30 r1 0
	add	r1 r7 r14
	ldi	r31 r1 0
	fldi	f2 r31 0
	fsti	f2 r0 1066
	fldi	f2 r31 1
	fsti	f2 r0 1067
	fldi	f2 r31 2
	fsti	f2 r0 1068
	ldi	r15 r0 1072
	addi	r15 r15 -1
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r8 r2 6
	sti	r11 r2 7
	add	r6 r0 r31
	add	r7 r0 r15
	addi	r2 r2 8
	call	L_setup_startp_constants.2212
	addi	r2 r2 -8
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r8 r2 6
	ldi	r11 r2 7
	addi	r15 r0 118
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r10 r2 2
	sti	r12 r2 3
	sti	r13 r2 4
	sti	r9 r2 5
	sti	r8 r2 6
	sti	r14 r2 7
	sti	r11 r2 8
	add	r6 r0 r15
	addi	r2 r2 9
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -9
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r10 r2 2
	ldi	r12 r2 3
	ldi	r13 r2 4
	ldi	r9 r2 5
	ldi	r8 r2 6
	ldi	r14 r2 7
	ldi	r11 r2 8
	add	r1 r11 r14
	ldi	r15 r1 0
	fldi	f2 r0 1052
	fsti	f2 r15 0
	fldi	f2 r0 1053
	fsti	f2 r15 1
	fldi	f2 r0 1054
	fsti	f2 r15 2
L_cont.22444 : 
	addi	r14 r14 1
	addi	r15 r0 4
	bgt	r14 r15 L_else.22448
	add	r1 r8 r14
	ldi	r15 r1 0
	bgt	r0 r15 L_else.22450
	add	r1 r9 r14
	ldi	r15 r1 0
	bne	r15 r0 L_else.22453
	jump	L_cont.22451
L_else.22453 : 
	ldi	r15 r12 0
	fsti	f0 r0 1052
	fsti	f0 r0 1053
	fsti	f0 r0 1054
	ldi	r29 r15 1076
	add	r1 r13 r14
	ldi	r30 r1 0
	add	r1 r7 r14
	ldi	r31 r1 0
	fldi	f2 r31 0
	fsti	f2 r0 1066
	fldi	f2 r31 1
	fsti	f2 r0 1067
	fldi	f2 r31 2
	fsti	f2 r0 1068
	ldi	r15 r0 1072
	addi	r15 r15 -1
	sti	r13 r2 0
	sti	r12 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r8 r2 4
	sti	r7 r2 5
	sti	r6 r2 6
	sti	r11 r2 7
	add	r6 r0 r31
	add	r7 r0 r15
	addi	r2 r2 8
	call	L_setup_startp_constants.2212
	addi	r2 r2 -8
	ldi	r13 r2 0
	ldi	r12 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r8 r2 4
	ldi	r7 r2 5
	ldi	r6 r2 6
	ldi	r11 r2 7
	addi	r15 r0 118
	sti	r13 r2 0
	sti	r12 r2 1
	sti	r10 r2 2
	sti	r9 r2 3
	sti	r8 r2 4
	sti	r7 r2 5
	sti	r6 r2 6
	sti	r14 r2 7
	sti	r11 r2 8
	add	r6 r0 r15
	addi	r2 r2 9
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -9
	ldi	r13 r2 0
	ldi	r12 r2 1
	ldi	r10 r2 2
	ldi	r9 r2 3
	ldi	r8 r2 4
	ldi	r7 r2 5
	ldi	r6 r2 6
	ldi	r14 r2 7
	ldi	r11 r2 8
	add	r1 r11 r14
	ldi	r15 r1 0
	fldi	f2 r0 1052
	fsti	f2 r15 0
	fldi	f2 r0 1053
	fsti	f2 r15 1
	fldi	f2 r0 1054
	fsti	f2 r15 2
L_cont.22451 : 
	addi	r14 r14 1
	jump	L_pretrace_diffuse_rays.2361
L_else.22450 : 
	return
L_else.22448 : 
	return
L_else.22443 : 
	return
L_else.22441 : 
	return
L_pretrace_pixels.2364 : 
	bgt	r0 r7 L_else.22456
	fldi	f3 r0 1062
	ldi	r9 r0 1060
	sub	r9 r7 r9
	foi	f2 r9
	fmul	f3 f3 f2
	addi	r26 r0 1069
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
	fldi	f4 r0 1069
	fmul	f3 f4 f4
	fldi	f2 r0 1070
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1071
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f2 f2
	fbne	f2 f0 L_else.22459
	fldi	f3 r0 12
	jump	L_cont.22457
L_else.22459 : 
	fldi	f3 r0 12
	fdiv	f3 f3 f2
L_cont.22457 : 
	fmul	f2 f4 f3
	fsti	f2 r0 1069
	fldi	f2 r0 1070
	fmul	f2 f2 f3
	fsti	f2 r0 1070
	fldi	f2 r0 1071
	fmul	f2 f2 f3
	fsti	f2 r0 1071
	fsti	f0 r0 1055
	fsti	f0 r0 1056
	fsti	f0 r0 1057
	fldi	f2 r0 1036
	fsti	f2 r0 1063
	fldi	f2 r0 1037
	fsti	f2 r0 1064
	fldi	f2 r0 1038
	fsti	f2 r0 1065
	addi	r25 r0 0
	fldi	f18 r0 12
	muli	r24 r7 8
	addi	r17 r24 7
	add	r1 r6 r17
	ldi	r15 r1 0
	addi	r18 r24 6
	add	r1 r6 r18
	ldi	r14 r1 0
	addi	r19 r24 5
	add	r1 r6 r19
	ldi	r13 r1 0
	addi	r20 r24 4
	add	r1 r6 r20
	ldi	r12 r1 0
	addi	r21 r24 3
	add	r1 r6 r21
	ldi	r11 r1 0
	addi	r22 r24 2
	add	r1 r6 r22
	ldi	r10 r1 0
	addi	r23 r24 1
	add	r1 r6 r23
	ldi	r16 r1 0
	add	r1 r6 r24
	ldi	r9 r1 0
	fldi	f19 r0 30
	sti	r17 r2 0
	sti	r19 r2 1
	sti	r21 r2 2
	sti	r23 r2 3
	sti	r7 r2 4
	sti	r22 r2 5
	sti	r20 r2 6
	sti	r8 r2 7
	sti	r18 r2 8
	sti	r24 r2 9
	sti	r6 r2 10
	add	r6 r0 r25
	add	r7 r0 r26
	add	r8 r0 r9
	add	r9 r0 r16
	addi	r2 r2 11
	call	L_trace_ray.2301
	addi	r2 r2 -11
	ldi	r17 r2 0
	ldi	r19 r2 1
	ldi	r21 r2 2
	ldi	r23 r2 3
	ldi	r7 r2 4
	ldi	r22 r2 5
	ldi	r20 r2 6
	ldi	r8 r2 7
	ldi	r18 r2 8
	ldi	r24 r2 9
	ldi	r6 r2 10
	add	r1 r6 r24
	ldi	r9 r1 0
	fldi	f2 r0 1055
	fsti	f2 r9 0
	fldi	f2 r0 1056
	fsti	f2 r9 1
	fldi	f2 r0 1057
	fsti	f2 r9 2
	add	r1 r6 r18
	ldi	r9 r1 0
	sti	r8 r9 0
	add	r1 r6 r17
	ldi	r10 r1 0
	add	r1 r6 r18
	ldi	r9 r1 0
	add	r1 r6 r19
	ldi	r12 r1 0
	add	r1 r6 r20
	ldi	r11 r1 0
	add	r1 r6 r21
	ldi	r14 r1 0
	add	r1 r6 r22
	ldi	r13 r1 0
	add	r1 r6 r23
	ldi	r16 r1 0
	add	r1 r6 r24
	ldi	r15 r1 0
	ldi	r17 r13 0
	bgt	r0 r17 L_else.22462
	ldi	r17 r14 0
	bne	r17 r0 L_else.22468
	jump	L_cont.22466
L_else.22468 : 
	ldi	r17 r9 0
	fsti	f0 r0 1052
	fsti	f0 r0 1053
	fsti	f0 r0 1054
	ldi	r29 r17 1076
	ldi	r30 r10 0
	ldi	r31 r16 0
	fldi	f2 r31 0
	fsti	f2 r0 1066
	fldi	f2 r31 1
	fsti	f2 r0 1067
	fldi	f2 r31 2
	fsti	f2 r0 1068
	ldi	r17 r0 1072
	addi	r17 r17 -1
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r9 r2 4
	sti	r11 r2 5
	sti	r13 r2 6
	sti	r12 r2 7
	add	r6 r0 r31
	add	r7 r0 r17
	addi	r2 r2 8
	call	L_setup_startp_constants.2212
	addi	r2 r2 -8
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r9 r2 4
	ldi	r11 r2 5
	ldi	r13 r2 6
	ldi	r12 r2 7
	addi	r17 r0 118
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r9 r2 4
	sti	r11 r2 5
	sti	r14 r2 6
	sti	r13 r2 7
	sti	r16 r2 8
	sti	r15 r2 9
	sti	r12 r2 10
	add	r6 r0 r17
	addi	r2 r2 11
	call	L_iter_trace_diffuse_rays.2310
	addi	r2 r2 -11
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r9 r2 4
	ldi	r11 r2 5
	ldi	r14 r2 6
	ldi	r13 r2 7
	ldi	r16 r2 8
	ldi	r15 r2 9
	ldi	r12 r2 10
	ldi	r17 r12 0
	fldi	f2 r0 1052
	fsti	f2 r17 0
	fldi	f2 r0 1053
	fsti	f2 r17 1
	fldi	f2 r0 1054
	fsti	f2 r17 2
L_cont.22466 : 
	addi	r17 r0 1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r6 r0 r15
	add	r7 r0 r16
	add	r8 r0 r13
	add	r13 r0 r10
	add	r10 r0 r11
	add	r11 r0 r12
	add	r12 r0 r9
	add	r9 r0 r14
	add	r14 r0 r17
	addi	r2 r2 3
	call	L_pretrace_diffuse_rays.2361
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	jump	L_cont.22460
L_else.22462 : 
L_cont.22460 : 
	addi	r9 r7 -1
	addi	r8 r8 1
	addi	r7 r0 5
	bgt	r7 r8 L_else.22465
	addi	r8 r8 -5
	jump	L_cont.22463
L_else.22465 : 
L_cont.22463 : 
	add	r7 r0 r9
	jump	L_pretrace_pixels.2364
L_else.22456 : 
	return
L_scan_pixel.2375 : 
	ldi	r11 r0 1058
	bgt	r11 r6 L_else.22471
	return
L_else.22471 : 
	muli	r20 r6 8
	addi	r18 r20 7
	addi	r19 r20 6
	addi	r13 r20 5
	addi	r14 r20 4
	addi	r15 r20 3
	addi	r16 r20 2
	addi	r17 r20 1
	add	r1 r9 r20
	ldi	r11 r1 0
	fldi	f2 r11 0
	fsti	f2 r0 1055
	fldi	f2 r11 1
	fsti	f2 r0 1056
	fldi	f2 r11 2
	fsti	f2 r0 1057
	ldi	r12 r0 1059
	addi	r11 r7 1
	bgt	r12 r11 L_else.22474
	addi	r11 r0 0
	jump	L_cont.22472
L_else.22474 : 
	bgt	r7 r0 L_else.22484
	addi	r11 r0 0
	jump	L_cont.22472
L_else.22484 : 
	ldi	r12 r0 1058
	addi	r11 r6 1
	bgt	r12 r11 L_else.22486
	addi	r11 r0 0
	jump	L_cont.22472
L_else.22486 : 
	bgt	r6 r0 L_else.22488
	addi	r11 r0 0
	jump	L_cont.22472
L_else.22488 : 
	addi	r11 r0 1
L_cont.22472 : 
	bne	r11 r0 L_else.22477
	add	r1 r9 r18
	ldi	r11 r1 0
	add	r1 r9 r19
	ldi	r12 r1 0
	add	r1 r9 r13
	ldi	r13 r1 0
	add	r1 r9 r14
	ldi	r14 r1 0
	add	r1 r9 r15
	ldi	r15 r1 0
	add	r1 r9 r16
	ldi	r16 r1 0
	add	r1 r9 r17
	ldi	r17 r1 0
	add	r1 r9 r20
	ldi	r18 r1 0
	addi	r19 r0 0
	ldi	r20 r16 0
	bgt	r0 r20 L_else.22479
	ldi	r20 r15 0
	bne	r20 r0 L_else.22482
	jump	L_cont.22480
L_else.22482 : 
	sti	r18 r2 0
	sti	r17 r2 1
	sti	r16 r2 2
	sti	r15 r2 3
	sti	r14 r2 4
	sti	r13 r2 5
	sti	r12 r2 6
	sti	r11 r2 7
	sti	r7 r2 8
	sti	r8 r2 9
	sti	r9 r2 10
	sti	r10 r2 11
	sti	r6 r2 12
	add	r6 r0 r17
	add	r7 r0 r14
	add	r8 r0 r13
	add	r9 r0 r12
	add	r10 r0 r11
	add	r11 r0 r19
	addi	r2 r2 13
	call	L_calc_diffuse_using_1point.2323
	addi	r2 r2 -13
	ldi	r18 r2 0
	ldi	r17 r2 1
	ldi	r16 r2 2
	ldi	r15 r2 3
	ldi	r14 r2 4
	ldi	r13 r2 5
	ldi	r12 r2 6
	ldi	r11 r2 7
	ldi	r7 r2 8
	ldi	r8 r2 9
	ldi	r9 r2 10
	ldi	r10 r2 11
	ldi	r6 r2 12
L_cont.22480 : 
	addi	r19 r0 1
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r6 r0 r18
	add	r7 r0 r17
	add	r8 r0 r16
	add	r9 r0 r15
	add	r10 r0 r14
	add	r14 r0 r19
	add	r1 r0 r11
	add	r11 r0 r13
	add	r13 r0 r1
	addi	r2 r2 5
	call	L_do_without_neighbors.2332
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont.22475
L_else.22479 : 
	jump	L_cont.22475
L_else.22477 : 
	addi	r11 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_try_exploit_neighbors.2348
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
L_cont.22475 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element.2357
	fldi	f2 r0 1056
	call	L_write_rgb_element.2357
	fldi	f2 r0 1057
	call	L_write_rgb_element.2357
	addi	r6 r6 1
	jump	L_scan_pixel.2375
L_scan_line.2381 : 
	ldi	r11 r0 1059
	bgt	r11 r6 L_else.22491
	return
L_else.22491 : 
	addi	r11 r11 -1
	bgt	r11 r6 L_else.22494
	jump	L_cont.22492
L_else.22494 : 
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
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r6 r0 r9
	add	r7 r0 r11
	add	r8 r0 r10
	addi	r2 r2 5
	call	L_pretrace_pixels.2364
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
L_cont.22492 : 
	addi	r11 r0 0
	sti	r10 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	sti	r6 r2 4
	add	r10 r0 r9
	add	r9 r0 r8
	add	r8 r0 r7
	add	r7 r0 r6
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_scan_pixel.2375
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	ldi	r6 r2 4
	addi	r11 r6 1
	addi	r6 r10 2
	addi	r10 r0 5
	bgt	r10 r6 L_else.22497
	addi	r6 r6 -5
	jump	L_cont.22495
L_else.22497 : 
L_cont.22495 : 
	ldi	r10 r0 1059
	bgt	r10 r11 L_else.22499
	return
L_else.22499 : 
	addi	r10 r10 -1
	bgt	r10 r11 L_else.22502
	jump	L_cont.22500
L_else.22502 : 
	addi	r12 r11 1
	fldi	f2 r0 1062
	ldi	r10 r0 1061
	sub	r10 r12 r10
	foi	f3 r10
	fmul	f4 f2 f3
	fldi	f2 r0 1033
	fmul	f2 f4 f2
	fldi	f3 r0 1027
	fadd	f20 f2 f3
	fldi	f2 r0 1034
	fmul	f2 f4 f2
	fldi	f3 r0 1028
	fadd	f21 f2 f3
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
	call	L_pretrace_pixels.2364
	addi	r2 r2 -5
	ldi	r11 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	ldi	r6 r2 4
L_cont.22500 : 
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
	call	L_scan_pixel.2375
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
	ldi	r11 r2 4
	addi	r10 r11 1
	addi	r6 r6 2
	addi	r11 r0 5
	bgt	r11 r6 L_else.22505
	addi	r6 r6 -5
	jump	L_cont.22503
L_else.22505 : 
L_cont.22503 : 
	ldi	r11 r0 1059
	bgt	r11 r10 L_else.22507
	return
L_else.22507 : 
	addi	r11 r11 -1
	bgt	r11 r10 L_else.22510
	jump	L_cont.22508
L_else.22510 : 
	addi	r12 r10 1
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
	sti	r10 r2 0
	sti	r9 r2 1
	sti	r7 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	add	r7 r0 r11
	add	r1 r0 r6
	add	r6 r0 r8
	add	r8 r0 r1
	addi	r2 r2 5
	call	L_pretrace_pixels.2364
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r9 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
L_cont.22508 : 
	addi	r11 r0 0
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r6 r0 r11
	add	r1 r0 r7
	add	r7 r0 r10
	add	r10 r0 r8
	add	r8 r0 r9
	add	r9 r0 r1
	addi	r2 r2 5
	call	L_scan_pixel.2375
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	addi	r10 r10 1
	addi	r6 r6 2
	addi	r11 r0 5
	bgt	r11 r6 L_else.22513
	addi	r6 r6 -5
	jump	L_cont.22511
L_else.22513 : 
L_cont.22511 : 
	ldi	r11 r0 1059
	bgt	r11 r10 L_else.22515
	return
L_else.22515 : 
	addi	r11 r11 -1
	bgt	r11 r10 L_else.22518
	jump	L_cont.22516
L_else.22518 : 
	addi	r12 r10 1
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
	fmul	f2 f4 f2
	fldi	f3 r0 1028
	fadd	f21 f2 f3
	fldi	f2 r0 1035
	fmul	f3 f4 f2
	fldi	f2 r0 1029
	fadd	f22 f3 f2
	ldi	r11 r0 1058
	addi	r11 r11 -1
	sti	r10 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r6 r2 4
	add	r7 r0 r11
	add	r8 r0 r6
	add	r6 r0 r9
	addi	r2 r2 5
	call	L_pretrace_pixels.2364
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r6 r2 4
L_cont.22516 : 
	addi	r11 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r7 r2 3
	sti	r10 r2 4
	add	r6 r0 r11
	add	r1 r0 r7
	add	r7 r0 r10
	add	r10 r0 r9
	add	r9 r0 r8
	add	r8 r0 r1
	addi	r2 r2 5
	call	L_scan_pixel.2375
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	ldi	r10 r2 4
	addi	r11 r10 1
	addi	r10 r6 2
	addi	r6 r0 5
	bgt	r6 r10 L_else.22521
	addi	r10 r10 -5
	jump	L_cont.22519
L_else.22521 : 
L_cont.22519 : 
	add	r6 r0 r11
	add	r1 r0 r7
	add	r7 r0 r8
	add	r8 r0 r9
	add	r9 r0 r1
	jump	L_scan_line.2381
L_create_float5x3array.2387 : 
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r12 r0 r6
	addi	r14 r0 5
	addi	r13 r0 1
	addi	r7 r0 0
	add	r6 r0 r14
	call	min_caml_create_array
	add	r11 r0 r6
	addi	r10 r0 0
	add	r6 r0 r11
	add	r7 r0 r14
	add	r8 r0 r12
	add	r9 r0 r13
	call	min_caml_init_array
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r6 r11 1
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r6 r11 2
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r6 r11 3
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	sti	r6 r11 4
	add	r6 r0 r11
	return
L_create_pixel.2389 : 
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r15 r0 r6
	call	L_create_float5x3array.2387
	add	r16 r0 r6
	addi	r13 r0 5
	addi	r12 r0 0
	addi	r11 r0 1
	add	r6 r0 r13
	add	r7 r0 r12
	call	min_caml_create_array
	add	r17 r0 r6
	addi	r10 r0 0
	add	r6 r0 r17
	add	r7 r0 r13
	add	r8 r0 r12
	add	r9 r0 r11
	call	min_caml_init_array
	addi	r12 r0 5
	addi	r13 r0 0
	addi	r11 r0 1
	add	r6 r0 r12
	add	r7 r0 r13
	call	min_caml_create_array
	add	r18 r0 r6
	addi	r10 r0 0
	add	r6 r0 r18
	add	r7 r0 r12
	add	r8 r0 r13
	add	r9 r0 r11
	call	min_caml_init_array
	call	L_create_float5x3array.2387
	add	r19 r0 r6
	call	L_create_float5x3array.2387
	add	r20 r0 r6
	addi	r11 r0 1
	addi	r12 r0 0
	add	r6 r0 r11
	add	r7 r0 r12
	call	min_caml_create_array
	add	r21 r0 r6
	addi	r10 r0 0
	add	r6 r0 r21
	add	r7 r0 r11
	add	r8 r0 r12
	add	r9 r0 r11
	call	min_caml_init_array
	call	L_create_float5x3array.2387
	add	r13 r0 r6
	add	r12 r0 r21
	add	r11 r0 r20
	add	r10 r0 r19
	add	r9 r0 r18
	add	r8 r0 r17
	add	r7 r0 r16
	add	r6 r0 r15
	return
L_init_line_elements.2391 : 
	bgt	r0 r23 L_else.22533
	call	L_create_pixel.2389
	muli	r15 r23 8
	addi	r14 r15 7
	add	r1 r22 r14
	sti	r13 r1 0
	addi	r13 r15 6
	add	r1 r22 r13
	sti	r12 r1 0
	addi	r12 r15 5
	add	r1 r22 r12
	sti	r11 r1 0
	addi	r11 r15 4
	add	r1 r22 r11
	sti	r10 r1 0
	addi	r10 r15 3
	add	r1 r22 r10
	sti	r9 r1 0
	addi	r9 r15 2
	add	r1 r22 r9
	sti	r8 r1 0
	addi	r8 r15 1
	add	r1 r22 r8
	sti	r7 r1 0
	add	r1 r22 r15
	sti	r6 r1 0
	addi	r23 r23 -1
	bgt	r0 r23 L_else.22535
	call	L_create_pixel.2389
	muli	r14 r23 8
	addi	r15 r14 7
	add	r1 r22 r15
	sti	r13 r1 0
	addi	r13 r14 6
	add	r1 r22 r13
	sti	r12 r1 0
	addi	r12 r14 5
	add	r1 r22 r12
	sti	r11 r1 0
	addi	r11 r14 4
	add	r1 r22 r11
	sti	r10 r1 0
	addi	r10 r14 3
	add	r1 r22 r10
	sti	r9 r1 0
	addi	r9 r14 2
	add	r1 r22 r9
	sti	r8 r1 0
	addi	r8 r14 1
	add	r1 r22 r8
	sti	r7 r1 0
	add	r1 r22 r14
	sti	r6 r1 0
	addi	r23 r23 -1
	jump	L_init_line_elements.2391
L_else.22535 : 
	add	r6 r0 r22
	return
L_else.22533 : 
	add	r6 r0 r22
	return
L_create_pixelline.2394 : 
	ldi	r23 r0 1058
	call	L_create_pixel.2389
	add	r19 r0 r13
	add	r18 r0 r12
	add	r17 r0 r11
	add	r16 r0 r10
	add	r15 r0 r9
	add	r14 r0 r8
	add	r13 r0 r7
	add	r11 r0 r6
	addi	r12 r0 8
	muli	r6 r23 8
	addi	r7 r0 0
	call	min_caml_create_array
	add	r22 r0 r6
	addi	r10 r0 7
	add	r6 r0 r22
	add	r7 r0 r23
	add	r8 r0 r19
	add	r9 r0 r12
	call	min_caml_init_array
	addi	r10 r0 6
	add	r6 r0 r22
	add	r7 r0 r23
	add	r8 r0 r18
	add	r9 r0 r12
	call	min_caml_init_array
	addi	r10 r0 5
	add	r6 r0 r22
	add	r7 r0 r23
	add	r8 r0 r17
	add	r9 r0 r12
	call	min_caml_init_array
	addi	r10 r0 4
	add	r6 r0 r22
	add	r7 r0 r23
	add	r8 r0 r16
	add	r9 r0 r12
	call	min_caml_init_array
	addi	r10 r0 3
	add	r6 r0 r22
	add	r7 r0 r23
	add	r8 r0 r15
	add	r9 r0 r12
	call	min_caml_init_array
	addi	r10 r0 2
	add	r6 r0 r22
	add	r7 r0 r23
	add	r8 r0 r14
	add	r9 r0 r12
	call	min_caml_init_array
	addi	r10 r0 1
	add	r6 r0 r22
	add	r7 r0 r23
	add	r8 r0 r13
	add	r9 r0 r12
	call	min_caml_init_array
	addi	r10 r0 0
	add	r6 r0 r22
	add	r7 r0 r23
	add	r8 r0 r11
	add	r9 r0 r12
	call	min_caml_init_array
	ldi	r6 r0 1058
	addi	r23 r6 -2
	bgt	r0 r23 L_else.22538
	call	L_create_pixel.2389
	muli	r14 r23 8
	addi	r15 r14 7
	add	r1 r22 r15
	sti	r13 r1 0
	addi	r13 r14 6
	add	r1 r22 r13
	sti	r12 r1 0
	addi	r12 r14 5
	add	r1 r22 r12
	sti	r11 r1 0
	addi	r11 r14 4
	add	r1 r22 r11
	sti	r10 r1 0
	addi	r10 r14 3
	add	r1 r22 r10
	sti	r9 r1 0
	addi	r9 r14 2
	add	r1 r22 r9
	sti	r8 r1 0
	addi	r8 r14 1
	add	r1 r22 r8
	sti	r7 r1 0
	add	r1 r22 r14
	sti	r6 r1 0
	addi	r23 r23 -1
	jump	L_init_line_elements.2391
L_else.22538 : 
	add	r6 r0 r22
	return
L_tan.2396 : 
	fadd	f2 f0 f10
	call	L_sin.1942
	fadd	f11 f0 f2
	fadd	f2 f0 f10
	call	L_cos.1944
	fdiv	f2 f11 f2
	return
L_adjust_position.2398 : 
	fmul	f2 f2 f2
	fldi	f3 r0 50
	fadd	f2 f2 f3
	fsqrt	f16 f2
	fldi	f2 r0 12
	fdiv	f2 f2 f16
	call	L_atan.1946
	fmul	f10 f2 f15
	call	L_tan.2396
	fmul	f2 f2 f16
	return
L_calc_dirvec.2401 : 
	addi	r9 r0 5
	bgt	r9 r6 L_else.22543
	fmul	f4 f2 f2
	fmul	f5 f3 f3
	fadd	f4 f4 f5
	fldi	f7 r0 12
	fadd	f4 f4 f7
	fsqrt	f4 f4
	fdiv	f5 f2 f4
	fdiv	f6 f3 f4
	fdiv	f4 f7 f4
	ldi	r7 r7 1076
	muli	r6 r8 2
	add	r1 r7 r6
	ldi	r6 r1 0
	fsti	f5 r6 0
	fsti	f6 r6 1
	fsti	f4 r6 2
	addi	r6 r8 40
	muli	r6 r6 2
	add	r1 r7 r6
	ldi	r6 r1 0
	fsub	f2 f0 f6
	fsti	f5 r6 0
	fsti	f4 r6 1
	fsti	f2 r6 2
	addi	r6 r8 80
	muli	r6 r6 2
	add	r1 r7 r6
	ldi	r6 r1 0
	fsub	f3 f0 f5
	fsti	f4 r6 0
	fsti	f3 r6 1
	fsti	f2 r6 2
	addi	r6 r8 1
	muli	r6 r6 2
	add	r1 r7 r6
	ldi	r6 r1 0
	fsub	f4 f0 f4
	fsti	f3 r6 0
	fsti	f2 r6 1
	fsti	f4 r6 2
	addi	r6 r8 41
	muli	r6 r6 2
	add	r1 r7 r6
	ldi	r6 r1 0
	fsti	f3 r6 0
	fsti	f4 r6 1
	fsti	f6 r6 2
	addi	r6 r8 81
	muli	r6 r6 2
	add	r1 r7 r6
	ldi	r6 r1 0
	fsti	f4 r6 0
	fsti	f5 r6 1
	fsti	f6 r6 2
	return
L_else.22543 : 
	fadd	f2 f0 f3
	fadd	f15 f0 f17
	call	L_adjust_position.2398
	fadd	f19 f0 f2
	addi	r6 r6 1
	fadd	f2 f0 f19
	fadd	f15 f0 f18
	call	L_adjust_position.2398
	fadd	f3 f0 f2
	fadd	f2 f0 f19
	jump	L_calc_dirvec.2401
L_calc_dirvecs.2409 : 
	bgt	r0 r10 L_else.22546
	foi	f21 r10
	fldi	f2 r0 53
	fmul	f3 f21 f2
	fldi	f2 r0 54
	fsub	f17 f3 f2
	addi	r6 r0 0
	fldi	f2 r0 30
	add	r7 r0 r11
	add	r8 r0 r12
	fadd	f3 f0 f2
	fadd	f18 f0 f20
	call	L_calc_dirvec.2401
	fldi	f2 r0 53
	fmul	f2 f21 f2
	fldi	f3 r0 50
	fadd	f17 f2 f3
	addi	r6 r0 0
	fldi	f2 r0 30
	addi	r13 r12 2
	add	r7 r0 r11
	add	r8 r0 r13
	fadd	f3 f0 f2
	fadd	f18 f0 f20
	call	L_calc_dirvec.2401
	addi	r14 r10 -1
	addi	r10 r11 1
	addi	r6 r0 5
	bgt	r6 r10 L_else.22549
	addi	r10 r10 -5
	jump	L_cont.22547
L_else.22549 : 
L_cont.22547 : 
	bgt	r0 r14 L_else.22551
	foi	f21 r14
	fldi	f2 r0 53
	fmul	f3 f21 f2
	fldi	f2 r0 54
	fsub	f17 f3 f2
	addi	r6 r0 0
	fldi	f2 r0 30
	add	r7 r0 r10
	add	r8 r0 r12
	fadd	f3 f0 f2
	fadd	f18 f0 f20
	call	L_calc_dirvec.2401
	fldi	f2 r0 53
	fmul	f2 f21 f2
	fldi	f3 r0 50
	fadd	f17 f2 f3
	addi	r6 r0 0
	fldi	f2 r0 30
	add	r7 r0 r10
	add	r8 r0 r13
	fadd	f3 f0 f2
	fadd	f18 f0 f20
	call	L_calc_dirvec.2401
	addi	r7 r14 -1
	addi	r11 r10 1
	addi	r6 r0 5
	bgt	r6 r11 L_else.22554
	addi	r11 r11 -5
	jump	L_cont.22552
L_else.22554 : 
L_cont.22552 : 
	add	r10 r0 r7
	jump	L_calc_dirvecs.2409
L_else.22551 : 
	return
L_else.22546 : 
	return
L_calc_dirvec_rows.2414 : 
	bgt	r0 r15 L_else.22557
	foi	f2 r15
	fldi	f4 r0 53
	fmul	f2 f2 f4
	fldi	f3 r0 54
	fsub	f20 f2 f3
	addi	r6 r0 4
	foi	f21 r6
	fmul	f2 f21 f4
	fsub	f17 f2 f3
	addi	r6 r0 0
	fldi	f2 r0 30
	add	r7 r0 r16
	add	r8 r0 r17
	fadd	f3 f0 f2
	fadd	f18 f0 f20
	call	L_calc_dirvec.2401
	fldi	f2 r0 53
	fmul	f2 f21 f2
	fldi	f3 r0 50
	fadd	f17 f2 f3
	addi	r6 r0 0
	fldi	f2 r0 30
	addi	r8 r17 2
	add	r7 r0 r16
	fadd	f3 f0 f2
	fadd	f18 f0 f20
	call	L_calc_dirvec.2401
	addi	r10 r0 3
	addi	r11 r16 1
	addi	r6 r0 5
	bgt	r6 r11 L_else.22560
	addi	r11 r11 -5
	jump	L_cont.22558
L_else.22560 : 
L_cont.22558 : 
	add	r12 r0 r17
	call	L_calc_dirvecs.2409
	addi	r18 r15 -1
	addi	r15 r16 2
	addi	r6 r0 5
	bgt	r6 r15 L_else.22563
	addi	r15 r15 -5
	jump	L_cont.22561
L_else.22563 : 
L_cont.22561 : 
	addi	r16 r17 4
	bgt	r0 r18 L_else.22565
	foi	f3 r18
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f20 f3 f2
	addi	r10 r0 4
	add	r11 r0 r15
	add	r12 r0 r16
	call	L_calc_dirvecs.2409
	addi	r8 r18 -1
	addi	r6 r15 2
	addi	r7 r0 5
	bgt	r7 r6 L_else.22568
	addi	r6 r6 -5
	jump	L_cont.22566
L_else.22568 : 
L_cont.22566 : 
	addi	r17 r16 4
	add	r15 r0 r8
	add	r16 r0 r6
	jump	L_calc_dirvec_rows.2414
L_else.22565 : 
	return
L_else.22557 : 
	return
L_create_dirvec.2418 : 
	addi	r6 r0 3
	fldi	f2 r0 30
	call	min_caml_create_float_array
	add	r11 r0 r6
	ldi	r13 r0 1072
	addi	r14 r0 1
	addi	r7 r0 0
	add	r6 r0 r13
	call	min_caml_create_array
	add	r12 r0 r6
	addi	r10 r0 0
	add	r6 r0 r12
	add	r7 r0 r13
	add	r8 r0 r11
	add	r9 r0 r14
	call	min_caml_init_array
	add	r7 r0 r12
	add	r6 r0 r11
	return
L_create_dirvec_elements.2420 : 
	bgt	r0 r16 L_else.22573
	call	L_create_dirvec.2418
	muli	r9 r16 2
	addi	r8 r9 1
	add	r1 r15 r8
	sti	r7 r1 0
	add	r1 r15 r9
	sti	r6 r1 0
	addi	r16 r16 -1
	bgt	r0 r16 L_else.22575
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r16 -1
	bgt	r0 r16 L_else.22577
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r16 -1
	bgt	r0 r16 L_else.22579
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r16 -1
	bgt	r0 r16 L_else.22581
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r16 -1
	bgt	r0 r16 L_else.22583
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r16 -1
	bgt	r0 r16 L_else.22585
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r16 -1
	bgt	r0 r16 L_else.22587
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r16 -1
	jump	L_create_dirvec_elements.2420
L_else.22587 : 
	return
L_else.22585 : 
	return
L_else.22583 : 
	return
L_else.22581 : 
	return
L_else.22579 : 
	return
L_else.22577 : 
	return
L_else.22575 : 
	return
L_else.22573 : 
	return
L_create_dirvecs.2423 : 
	bgt	r0 r17 L_else.22590
	addi	r15 r0 1076
	addi	r16 r0 120
	call	L_create_dirvec.2418
	add	r14 r0 r7
	add	r11 r0 r6
	addi	r13 r0 2
	muli	r6 r16 2
	addi	r7 r0 0
	call	min_caml_create_array
	add	r12 r0 r6
	addi	r10 r0 1
	add	r6 r0 r12
	add	r7 r0 r16
	add	r8 r0 r14
	add	r9 r0 r13
	call	min_caml_init_array
	addi	r10 r0 0
	add	r6 r0 r12
	add	r7 r0 r16
	add	r8 r0 r11
	add	r9 r0 r13
	call	min_caml_init_array
	add	r1 r15 r17
	sti	r12 r1 0
	ldi	r15 r17 1076
	addi	r16 r0 118
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r0 117
	call	L_create_dirvec.2418
	muli	r9 r16 2
	addi	r8 r9 1
	add	r1 r15 r8
	sti	r7 r1 0
	add	r1 r15 r9
	sti	r6 r1 0
	addi	r16 r0 116
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r0 115
	call	L_create_dirvec.2418
	muli	r9 r16 2
	addi	r8 r9 1
	add	r1 r15 r8
	sti	r7 r1 0
	add	r1 r15 r9
	sti	r6 r1 0
	addi	r16 r0 114
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r0 113
	call	L_create_dirvec.2418
	muli	r9 r16 2
	addi	r8 r9 1
	add	r1 r15 r8
	sti	r7 r1 0
	add	r1 r15 r9
	sti	r6 r1 0
	addi	r16 r0 112
	call	L_create_dirvec.2418
	muli	r8 r16 2
	addi	r9 r8 1
	add	r1 r15 r9
	sti	r7 r1 0
	add	r1 r15 r8
	sti	r6 r1 0
	addi	r16 r0 111
	call	L_create_dirvec_elements.2420
	addi	r17 r17 -1
	jump	L_create_dirvecs.2423
L_else.22590 : 
	return
L_init_dirvec_constants.2425 : 
	bgt	r0 r18 L_else.22593
	muli	r7 r18 2
	addi	r6 r7 1
	add	r1 r17 r6
	ldi	r15 r1 0
	add	r1 r17 r7
	ldi	r14 r1 0
	ldi	r6 r0 1072
	addi	r16 r6 -1
	bgt	r0 r16 L_else.22596
	muli	r6 r16 11
	ldi	r13 r6 1928
	ldi	r12 r6 1925
	ldi	r11 r6 1923
	ldi	r8 r6 1922
	ldi	r6 r6 1920
	add	r7 r0 r6
	add	r6 r0 r8
	bne	r7 r4 L_else.22621
	add	r10 r0 r14
	call	L_setup_rect_table.2198
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22619
L_else.22621 : 
	addi	r8 r0 2
	bne	r7 r8 L_else.22623
	add	r10 r0 r14
	call	L_setup_surface_table.2201
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22619
L_else.22623 : 
	add	r10 r0 r14
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_setup_second_table.2204
	add	r1 r15 r16
	sti	r6 r1 0
L_cont.22619 : 
	addi	r16 r16 -1
	call	L_iter_setup_dirvec_constants.2207
	jump	L_cont.22594
L_else.22596 : 
L_cont.22594 : 
	addi	r18 r18 -1
	bgt	r0 r18 L_else.22598
	muli	r6 r18 2
	addi	r7 r6 1
	add	r1 r17 r7
	ldi	r15 r1 0
	add	r1 r17 r6
	ldi	r14 r1 0
	ldi	r6 r0 1072
	addi	r16 r6 -1
	bgt	r0 r16 L_else.22601
	muli	r6 r16 11
	ldi	r13 r6 1928
	ldi	r12 r6 1925
	ldi	r11 r6 1923
	ldi	r8 r6 1922
	ldi	r6 r6 1920
	add	r7 r0 r6
	add	r6 r0 r8
	bne	r7 r4 L_else.22616
	add	r10 r0 r14
	call	L_setup_rect_table.2198
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22614
L_else.22616 : 
	addi	r8 r0 2
	bne	r7 r8 L_else.22618
	add	r10 r0 r14
	call	L_setup_surface_table.2201
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22614
L_else.22618 : 
	add	r10 r0 r14
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_setup_second_table.2204
	add	r1 r15 r16
	sti	r6 r1 0
L_cont.22614 : 
	addi	r16 r16 -1
	call	L_iter_setup_dirvec_constants.2207
	jump	L_cont.22599
L_else.22601 : 
L_cont.22599 : 
	addi	r18 r18 -1
	bgt	r0 r18 L_else.22603
	muli	r7 r18 2
	addi	r6 r7 1
	add	r1 r17 r6
	ldi	r15 r1 0
	add	r1 r17 r7
	ldi	r14 r1 0
	ldi	r6 r0 1072
	addi	r16 r6 -1
	bgt	r0 r16 L_else.22606
	muli	r6 r16 11
	ldi	r13 r6 1928
	ldi	r12 r6 1925
	ldi	r11 r6 1923
	ldi	r8 r6 1922
	ldi	r6 r6 1920
	add	r7 r0 r6
	add	r6 r0 r8
	bne	r7 r4 L_else.22611
	add	r10 r0 r14
	call	L_setup_rect_table.2198
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22609
L_else.22611 : 
	addi	r8 r0 2
	bne	r7 r8 L_else.22613
	add	r10 r0 r14
	call	L_setup_surface_table.2201
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22609
L_else.22613 : 
	add	r10 r0 r14
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_setup_second_table.2204
	add	r1 r15 r16
	sti	r6 r1 0
L_cont.22609 : 
	addi	r16 r16 -1
	call	L_iter_setup_dirvec_constants.2207
	jump	L_cont.22604
L_else.22606 : 
L_cont.22604 : 
	addi	r18 r18 -1
	bgt	r0 r18 L_else.22608
	muli	r6 r18 2
	addi	r7 r6 1
	add	r1 r17 r7
	ldi	r15 r1 0
	add	r1 r17 r6
	ldi	r14 r1 0
	ldi	r6 r0 1072
	addi	r16 r6 -1
	call	L_iter_setup_dirvec_constants.2207
	addi	r18 r18 -1
	jump	L_init_dirvec_constants.2425
L_else.22608 : 
	return
L_else.22603 : 
	return
L_else.22598 : 
	return
L_else.22593 : 
	return
L_init_vecset_constants.2428 : 
	bgt	r0 r19 L_else.22626
	ldi	r17 r19 1076
	addi	r6 r0 119
	muli	r7 r6 2
	addi	r6 r7 1
	add	r1 r17 r6
	ldi	r15 r1 0
	add	r1 r17 r7
	ldi	r14 r1 0
	ldi	r6 r0 1072
	addi	r16 r6 -1
	bgt	r0 r16 L_else.22629
	muli	r7 r16 11
	ldi	r13 r7 1928
	ldi	r12 r7 1925
	ldi	r11 r7 1923
	ldi	r6 r7 1922
	ldi	r7 r7 1920
	bne	r7 r4 L_else.22654
	add	r10 r0 r14
	call	L_setup_rect_table.2198
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22652
L_else.22654 : 
	addi	r8 r0 2
	bne	r7 r8 L_else.22656
	add	r10 r0 r14
	call	L_setup_surface_table.2201
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22652
L_else.22656 : 
	add	r10 r0 r14
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_setup_second_table.2204
	add	r1 r15 r16
	sti	r6 r1 0
L_cont.22652 : 
	addi	r16 r16 -1
	call	L_iter_setup_dirvec_constants.2207
	jump	L_cont.22627
L_else.22629 : 
L_cont.22627 : 
	addi	r6 r0 118
	muli	r6 r6 2
	addi	r7 r6 1
	add	r1 r17 r7
	ldi	r15 r1 0
	add	r1 r17 r6
	ldi	r14 r1 0
	ldi	r6 r0 1072
	addi	r16 r6 -1
	bgt	r0 r16 L_else.22632
	muli	r6 r16 11
	ldi	r13 r6 1928
	ldi	r12 r6 1925
	ldi	r11 r6 1923
	ldi	r8 r6 1922
	ldi	r6 r6 1920
	add	r7 r0 r6
	add	r6 r0 r8
	bne	r7 r4 L_else.22649
	add	r10 r0 r14
	call	L_setup_rect_table.2198
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22647
L_else.22649 : 
	addi	r8 r0 2
	bne	r7 r8 L_else.22651
	add	r10 r0 r14
	call	L_setup_surface_table.2201
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22647
L_else.22651 : 
	add	r10 r0 r14
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_setup_second_table.2204
	add	r1 r15 r16
	sti	r6 r1 0
L_cont.22647 : 
	addi	r16 r16 -1
	call	L_iter_setup_dirvec_constants.2207
	jump	L_cont.22630
L_else.22632 : 
L_cont.22630 : 
	addi	r6 r0 117
	muli	r7 r6 2
	addi	r6 r7 1
	add	r1 r17 r6
	ldi	r15 r1 0
	add	r1 r17 r7
	ldi	r14 r1 0
	ldi	r6 r0 1072
	addi	r16 r6 -1
	call	L_iter_setup_dirvec_constants.2207
	addi	r18 r0 116
	call	L_init_dirvec_constants.2425
	addi	r20 r19 -1
	bgt	r0 r20 L_else.22634
	ldi	r17 r19 1075
	addi	r6 r0 119
	muli	r7 r6 2
	addi	r6 r7 1
	add	r1 r17 r6
	ldi	r15 r1 0
	add	r1 r17 r7
	ldi	r14 r1 0
	ldi	r6 r0 1072
	addi	r16 r6 -1
	bgt	r0 r16 L_else.22637
	muli	r6 r16 11
	ldi	r13 r6 1928
	ldi	r12 r6 1925
	ldi	r11 r6 1923
	ldi	r8 r6 1922
	ldi	r6 r6 1920
	add	r7 r0 r6
	add	r6 r0 r8
	bne	r7 r4 L_else.22644
	add	r10 r0 r14
	call	L_setup_rect_table.2198
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22642
L_else.22644 : 
	addi	r8 r0 2
	bne	r7 r8 L_else.22646
	add	r10 r0 r14
	call	L_setup_surface_table.2201
	add	r1 r15 r16
	sti	r6 r1 0
	jump	L_cont.22642
L_else.22646 : 
	add	r10 r0 r14
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_setup_second_table.2204
	add	r1 r15 r16
	sti	r6 r1 0
L_cont.22642 : 
	addi	r16 r16 -1
	call	L_iter_setup_dirvec_constants.2207
	jump	L_cont.22635
L_else.22637 : 
L_cont.22635 : 
	addi	r6 r0 118
	muli	r6 r6 2
	addi	r7 r6 1
	add	r1 r17 r7
	ldi	r15 r1 0
	add	r1 r17 r6
	ldi	r14 r1 0
	ldi	r6 r0 1072
	addi	r16 r6 -1
	call	L_iter_setup_dirvec_constants.2207
	addi	r18 r0 117
	call	L_init_dirvec_constants.2425
	addi	r20 r20 -1
	bgt	r0 r20 L_else.22639
	ldi	r17 r19 1074
	addi	r6 r0 119
	muli	r7 r6 2
	addi	r6 r7 1
	add	r1 r17 r6
	ldi	r15 r1 0
	add	r1 r17 r7
	ldi	r14 r1 0
	ldi	r6 r0 1072
	addi	r16 r6 -1
	call	L_iter_setup_dirvec_constants.2207
	addi	r18 r0 118
	call	L_init_dirvec_constants.2425
	addi	r20 r20 -1
	bgt	r0 r20 L_else.22641
	ldi	r17 r19 1073
	addi	r18 r0 119
	call	L_init_dirvec_constants.2425
	addi	r19 r20 -1
	jump	L_init_vecset_constants.2428
L_else.22641 : 
	return
L_else.22639 : 
	return
L_else.22634 : 
	return
L_else.22626 : 
	return
min_caml_start : 
	addi	r7 r0 128
	sti	r7 r0 1058
	sti	r7 r0 1059
	addi	r6 r0 64
	sti	r6 r0 1060
	addi	r6 r0 64
	sti	r6 r0 1061
	fldi	f3 r0 55
	foi	f2 r7
	fdiv	f2 f3 f2
	fsti	f2 r0 1062
	call	L_create_pixelline.2394
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_create_pixelline.2394
	addi	r2 r2 -1
	add	r7 r0 r6
	ldi	r6 r2 0
	sti	r6 r2 0
	sti	r7 r2 1
	addi	r2 r2 2
	call	L_create_pixelline.2394
	addi	r2 r2 -2
	add	r8 r0 r6
	ldi	r6 r2 0
	ldi	r7 r2 1
	call	L_read_screen_settings.2093
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_read_light.2095
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r10 r0 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_read_nth_object.2100
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	bne	r9 r0 L_else.22659
	sti	r0 r0 1072
	jump	L_cont.22657
L_else.22659 : 
	addi	r10 r0 1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_read_nth_object.2100
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	bne	r9 r0 L_else.22702
	sti	r4 r0 1072
	jump	L_cont.22657
L_else.22702 : 
	addi	r25 r0 2
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r10 r0 r25
	addi	r2 r2 3
	call	L_read_nth_object.2100
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	bne	r9 r0 L_else.22704
	sti	r25 r0 1072
	jump	L_cont.22657
L_else.22704 : 
	addi	r25 r0 3
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r10 r0 r25
	addi	r2 r2 3
	call	L_read_nth_object.2100
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	bne	r9 r0 L_else.22706
	sti	r25 r0 1072
	jump	L_cont.22657
L_else.22706 : 
	addi	r25 r0 4
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_read_object.2102
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
L_cont.22657 : 
	addi	r16 r0 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r7 r0 r16
	addi	r2 r2 3
	call	L_read_net_item.2106
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r10 r9 0
	bne	r10 r5 L_else.22662
	jump	L_cont.22660
L_else.22662 : 
	addi	r15 r0 1083
	add	r1 r15 r16
	sti	r9 r1 0
	addi	r16 r0 1
	addi	r9 r0 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item.2106
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r10 r9 0
	bne	r10 r5 L_else.22694
	jump	L_cont.22660
L_else.22694 : 
	add	r1 r15 r16
	sti	r9 r1 0
	addi	r16 r0 2
	addi	r9 r0 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item.2106
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r10 r9 0
	bne	r10 r5 L_else.22696
	jump	L_cont.22660
L_else.22696 : 
	add	r1 r15 r16
	sti	r9 r1 0
	addi	r16 r0 3
	addi	r9 r0 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item.2106
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r10 r9 0
	bne	r10 r5 L_else.22698
	jump	L_cont.22660
L_else.22698 : 
	add	r1 r15 r16
	sti	r9 r1 0
	addi	r16 r0 4
	addi	r9 r0 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item.2106
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r10 r9 0
	bne	r10 r5 L_else.22700
	jump	L_cont.22660
L_else.22700 : 
	add	r1 r15 r16
	sti	r9 r1 0
	addi	r15 r0 5
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_read_and_network.2110
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
L_cont.22660 : 
	addi	r15 r0 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_read_or_network.2108
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	sti	r9 r0 1133
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_write_ppm_header.2355
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	addi	r17 r0 4
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_create_dirvecs.2423
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	addi	r9 r0 9
	addi	r11 r0 0
	foi	f2 r9
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f20 f2 f3
	addi	r10 r0 4
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	add	r12 r0 r11
	addi	r2 r2 3
	call	L_calc_dirvecs.2409
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	addi	r15 r0 8
	addi	r16 r0 2
	addi	r17 r0 4
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	addi	r2 r2 3
	call	L_calc_dirvec_rows.2414
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	ldi	r17 r0 1080
	addi	r18 r0 119
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_init_dirvec_constants.2425
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	addi	r19 r0 3
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_init_vecset_constants.2428
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r9 r0 1854
	fldi	f2 r0 1039
	fsti	f2 r9 0
	fldi	f2 r0 1040
	fsti	f2 r9 1
	fldi	f2 r0 1041
	fsti	f2 r9 2
	ldi	r15 r0 1855
	ldi	r14 r0 1854
	ldi	r9 r0 1072
	addi	r16 r9 -1
	bgt	r0 r16 L_else.22665
	muli	r9 r16 11
	ldi	r13 r9 1928
	ldi	r17 r9 1925
	ldi	r11 r9 1923
	ldi	r12 r9 1922
	ldi	r9 r9 1920
	add	r10 r0 r9
	add	r9 r0 r12
	add	r12 r0 r17
	bne	r10 r4 L_else.22690
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r10 r0 r14
	addi	r2 r2 3
	call	L_setup_rect_table.2198
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	add	r1 r15 r16
	sti	r9 r1 0
	jump	L_cont.22688
L_else.22690 : 
	addi	r12 r0 2
	bne	r10 r12 L_else.22692
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r10 r0 r14
	addi	r2 r2 3
	call	L_setup_surface_table.2201
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	add	r1 r15 r16
	sti	r9 r1 0
	jump	L_cont.22688
L_else.22692 : 
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r10 r0 r14
	add	r12 r0 r11
	add	r11 r0 r9
	addi	r2 r2 3
	call	L_setup_second_table.2204
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	add	r1 r15 r16
	sti	r9 r1 0
L_cont.22688 : 
	addi	r16 r16 -1
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants.2207
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	jump	L_cont.22663
L_else.22665 : 
L_cont.22663 : 
	ldi	r9 r0 1072
	addi	r14 r9 -1
	bgt	r0 r14 L_else.22668
	muli	r11 r14 11
	ldi	r10 r11 1926
	ldi	r9 r11 1923
	ldi	r12 r11 1921
	ldi	r11 r11 1920
	addi	r13 r0 2
	bne	r12 r13 L_else.22681
	fldi	f2 r10 0
	fldi	f3 r0 12
	fbgt	f3 f2 L_else.22683
	jump	L_cont.22666
L_else.22683 : 
	bne	r11 r4 L_else.22685
	muli	r18 r14 4
	ldi	r17 r0 1075
	fldi	f2 r10 0
	fsub	f11 f3 f2
	fldi	f2 r0 1039
	fsub	f12 f0 f2
	fldi	f2 r0 1040
	fsub	f13 f0 f2
	fldi	f2 r0 1041
	fsub	f14 f0 f2
	addi	r20 r18 1
	fldi	f3 r0 1039
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	addi	r2 r2 3
	call	L_create_dirvec.2418
	addi	r2 r2 -3
	add	r21 r0 r7
	add	r22 r0 r6
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	fsti	f3 r22 0
	fsti	f13 r22 1
	fsti	f14 r22 2
	ldi	r9 r0 1072
	addi	r16 r9 -1
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	add	r14 r0 r22
	add	r15 r0 r21
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants.2207
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	addi	r19 r0 1134
	fadd	f2 f0 f11
	muli	r9 r17 4
	addi	r10 r9 3
	add	r1 r19 r10
	fsti	f2 r1 0
	addi	r10 r9 2
	add	r1 r19 r10
	sti	r21 r1 0
	addi	r10 r9 1
	add	r1 r19 r10
	sti	r22 r1 0
	add	r1 r19 r9
	sti	r20 r1 0
	addi	r21 r17 1
	addi	r20 r18 2
	fldi	f3 r0 1040
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_create_dirvec.2418
	addi	r2 r2 -3
	add	r22 r0 r7
	add	r23 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	fsti	f12 r23 0
	fsti	f3 r23 1
	fsti	f14 r23 2
	ldi	r9 r0 1072
	addi	r16 r9 -1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r14 r0 r23
	add	r15 r0 r22
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants.2207
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	fadd	f2 f0 f11
	muli	r10 r21 4
	addi	r9 r10 3
	add	r1 r19 r9
	fsti	f2 r1 0
	addi	r9 r10 2
	add	r1 r19 r9
	sti	r22 r1 0
	addi	r9 r10 1
	add	r1 r19 r9
	sti	r23 r1 0
	add	r1 r19 r10
	sti	r20 r1 0
	addi	r21 r17 2
	addi	r18 r18 3
	fldi	f3 r0 1041
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_create_dirvec.2418
	addi	r2 r2 -3
	add	r20 r0 r7
	add	r22 r0 r6
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	fsti	f12 r22 0
	fsti	f13 r22 1
	fsti	f3 r22 2
	ldi	r9 r0 1072
	addi	r16 r9 -1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r14 r0 r22
	add	r15 r0 r20
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants.2207
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	muli	r10 r21 4
	addi	r9 r10 3
	add	r1 r19 r9
	fsti	f11 r1 0
	addi	r9 r10 2
	add	r1 r19 r9
	sti	r20 r1 0
	addi	r9 r10 1
	add	r1 r19 r9
	sti	r22 r1 0
	add	r1 r19 r10
	sti	r18 r1 0
	addi	r9 r17 3
	sti	r9 r0 1075
	jump	L_cont.22666
L_else.22685 : 
	bne	r11 r13 L_else.22687
	muli	r11 r14 4
	addi	r17 r11 1
	ldi	r20 r0 1075
	fldi	f2 r10 0
	fsub	f11 f3 f2
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
	fldi	f2 r0 29
	fldi	f3 r9 0
	fmul	f2 f2 f3
	fmul	f3 f2 f6
	fldi	f2 r0 1039
	fsub	f5 f3 f2
	fldi	f2 r0 29
	fldi	f3 r9 1
	fmul	f2 f2 f3
	fmul	f3 f2 f6
	fldi	f2 r0 1040
	fsub	f3 f3 f2
	fldi	f2 r0 29
	fldi	f4 r9 2
	fmul	f2 f2 f4
	fmul	f4 f2 f6
	fldi	f2 r0 1041
	fsub	f4 f4 f2
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	addi	r2 r2 3
	call	L_create_dirvec.2418
	addi	r2 r2 -3
	add	r19 r0 r7
	add	r18 r0 r6
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	fsti	f5 r18 0
	fsti	f3 r18 1
	fsti	f4 r18 2
	ldi	r9 r0 1072
	addi	r16 r9 -1
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	add	r14 r0 r18
	add	r15 r0 r19
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants.2207
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	addi	r10 r0 1134
	muli	r11 r20 4
	addi	r9 r11 3
	add	r1 r10 r9
	fsti	f11 r1 0
	addi	r9 r11 2
	add	r1 r10 r9
	sti	r19 r1 0
	addi	r9 r11 1
	add	r1 r10 r9
	sti	r18 r1 0
	add	r1 r10 r11
	sti	r17 r1 0
	addi	r9 r20 1
	sti	r9 r0 1075
	jump	L_cont.22666
L_else.22687 : 
	jump	L_cont.22666
L_else.22681 : 
	jump	L_cont.22666
L_else.22668 : 
L_cont.22666 : 
	addi	r10 r0 0
	fldi	f2 r0 1062
	ldi	r9 r0 1061
	sub	r9 r10 r9
	foi	f3 r9
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
	ldi	r9 r0 1058
	addi	r9 r9 -1
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	add	r6 r0 r7
	add	r8 r0 r10
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_pretrace_pixels.2364
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	addi	r9 r0 0
	addi	r11 r0 2
	ldi	r10 r0 1059
	bgt	r10 r0 L_else.22671
	jump	L_cont.22669
L_else.22671 : 
	ldi	r10 r0 1059
	addi	r10 r10 -1
	bgt	r10 r0 L_else.22674
	jump	L_cont.22672
L_else.22674 : 
	fldi	f3 r0 1062
	ldi	r10 r0 1061
	sub	r10 r4 r10
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
	sti	r9 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r8 r2 3
	add	r6 r0 r8
	add	r7 r0 r10
	add	r8 r0 r11
	addi	r2 r2 4
	call	L_pretrace_pixels.2364
	addi	r2 r2 -4
	ldi	r9 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
L_cont.22672 : 
	addi	r10 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r1 r0 r6
	add	r6 r0 r10
	add	r10 r0 r8
	add	r8 r0 r1
	add	r1 r0 r7
	add	r7 r0 r9
	add	r9 r0 r1
	addi	r2 r2 3
	call	L_scan_pixel.2375
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r9 r0 1
	addi	r10 r0 4
	ldi	r11 r0 1059
	bgt	r11 r9 L_else.22676
	jump	L_cont.22669
L_else.22676 : 
	ldi	r11 r0 1059
	addi	r11 r11 -1
	bgt	r11 r9 L_else.22679
	jump	L_cont.22677
L_else.22679 : 
	addi	r12 r0 2
	fldi	f3 r0 1062
	ldi	r11 r0 1061
	sub	r11 r12 r11
	foi	f2 r11
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
	ldi	r11 r0 1058
	addi	r11 r11 -1
	sti	r9 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	add	r7 r0 r11
	add	r8 r0 r10
	addi	r2 r2 4
	call	L_pretrace_pixels.2364
	addi	r2 r2 -4
	ldi	r9 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r6 r2 3
L_cont.22677 : 
	addi	r10 r0 0
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	add	r1 r0 r6
	add	r6 r0 r10
	add	r10 r0 r1
	add	r1 r0 r7
	add	r7 r0 r9
	add	r9 r0 r8
	add	r8 r0 r1
	addi	r2 r2 3
	call	L_scan_pixel.2375
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	addi	r9 r0 2
	addi	r10 r0 1
	add	r1 r0 r6
	add	r6 r0 r9
	add	r9 r0 r7
	add	r7 r0 r8
	add	r8 r0 r1
	call	L_scan_line.2381
L_cont.22669 : 
	return
min_caml_end : 
	call	min_caml_start
