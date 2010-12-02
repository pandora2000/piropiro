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
	bne	r0 r5 L_else_23508
	return
L_else_23508 : 
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
	bne	r0 r5 L_else_23509
	return
L_else_23509 : 
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
L_sin_1878 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_20862
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_20864
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_20866
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_20868
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
L_else_20868 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_20870
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
L_else_20870 : 
	fadd	f7 f5 f9
	fmul	f2 f7 f7
	fmul	f5 f7 f2
	fmul	f9 f5 f2
	fmul	f4 f9 f2
	fmul	f8 f4 f2
	fmul	f3 f8 f2
	fmul	f6 f3 f2
	fldi	f2 r0 7
	fmul	f6 f2 f6
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f6 f2
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
	fadd	f2 f2 f7
	fsub	f2 f0 f2
	return
L_else_20866 : 
	fbgt	f9 f4 L_else_20872
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
	fadd	f2 f2 f9
	return
L_else_20872 : 
	fbgt	f9 f2 L_else_20874
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
L_else_20874 : 
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
L_else_20864 : 
	fadd	f9 f9 f3
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_20876
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_20878
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_20880
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_20882
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
	fadd	f2 f2 f9
	return
L_else_20882 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_20884
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
L_else_20884 : 
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
L_else_20880 : 
	fbgt	f9 f5 L_else_20886
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
L_else_20886 : 
	fbgt	f9 f2 L_else_20888
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
L_else_20888 : 
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
L_else_20878 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1878
L_else_20876 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1878
L_else_20862 : 
	fsub	f9 f9 f3
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_20890
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_20892
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_20894
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_20896
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
L_else_20896 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_20898
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
L_else_20898 : 
	fadd	f7 f5 f9
	fmul	f2 f7 f7
	fmul	f5 f7 f2
	fmul	f9 f5 f2
	fmul	f4 f9 f2
	fmul	f8 f4 f2
	fmul	f3 f8 f2
	fmul	f6 f3 f2
	fldi	f2 r0 7
	fmul	f6 f2 f6
	fldi	f2 r0 8
	fmul	f2 f2 f3
	fsub	f3 f6 f2
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
	fadd	f2 f2 f7
	fsub	f2 f0 f2
	return
L_else_20894 : 
	fbgt	f9 f4 L_else_20900
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
	fadd	f2 f2 f9
	return
L_else_20900 : 
	fbgt	f9 f2 L_else_20902
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
L_else_20902 : 
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
L_else_20892 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1878
L_else_20890 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1878
L_cos_1880 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_20905
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_20907
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_20909
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_20911
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
L_else_20911 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_20913
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
L_else_20913 : 
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
L_else_20909 : 
	fbgt	f6 f4 L_else_20915
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
L_else_20915 : 
	fbgt	f6 f2 L_else_20917
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
L_else_20917 : 
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
L_else_20907 : 
	fadd	f5 f6 f3
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f5 f4 L_else_20919
	fldi	f2 r0 2
	fbgt	f2 f5 L_else_20921
	fldi	f6 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f5 f0 L_else_20923
	fldi	f2 r0 6
	fbgt	f2 f5 L_else_20925
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
L_else_20925 : 
	fldi	f2 r0 13
	fbgt	f2 f5 L_else_20927
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
L_else_20927 : 
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
L_else_20923 : 
	fbgt	f5 f6 L_else_20929
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
L_else_20929 : 
	fbgt	f5 f2 L_else_20931
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
L_else_20931 : 
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
L_else_20921 : 
	fadd	f2 f5 f3
	fadd	f6 f0 f2
	jump	L_cos_1880
L_else_20919 : 
	fsub	f2 f5 f3
	fadd	f6 f0 f2
	jump	L_cos_1880
L_else_20905 : 
	fsub	f6 f6 f3
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_20933
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_20935
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_20937
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_20939
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
L_else_20939 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_20941
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
L_else_20941 : 
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
L_else_20937 : 
	fbgt	f6 f4 L_else_20943
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
L_else_20943 : 
	fbgt	f6 f2 L_else_20945
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
L_else_20945 : 
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
L_else_20935 : 
	fadd	f2 f6 f3
	fadd	f6 f0 f2
	jump	L_cos_1880
L_else_20933 : 
	fsub	f2 f6 f3
	fadd	f6 f0 f2
	jump	L_cos_1880
L_atan_1882 : 
	fmul	f2 f13 f13
	fldi	f3 r0 20
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
	bne	r5 r0 L_else_20949
	return
L_else_20949 : 
	addi	r5 r5 -1
	addi	r6 r0 10
	mul	r4 r4 r6
	bne	r5 r0 L_else_20951
	return
L_else_20951 : 
	addi	r6 r5 -1
	addi	r5 r0 10
	mul	r4 r4 r5
	bne	r6 r0 L_else_20953
	return
L_else_20953 : 
	addi	r5 r6 -1
	addi	r6 r0 10
	mul	r4 r4 r6
	bne	r5 r0 L_else_20955
	return
L_else_20955 : 
	addi	r6 r5 -1
	addi	r5 r0 10
	mul	r4 r4 r5
	bne	r6 r0 L_else_20957
	return
L_else_20957 : 
	addi	r5 r6 -1
	addi	r6 r0 10
	mul	r4 r4 r6
	bne	r5 r0 L_else_20959
	return
L_else_20959 : 
	addi	r6 r5 -1
	addi	r5 r0 10
	mul	r4 r4 r5
	bne	r6 r0 L_else_20961
	return
L_else_20961 : 
	addi	r5 r6 -1
	addi	r6 r0 10
	mul	r4 r4 r6
	bne	r5 r0 L_else_20963
	return
L_else_20963 : 
	addi	r6 r5 -1
	addi	r5 r0 10
	mul	r4 r4 r5
	add	r5 r0 r6
	jump	L_spow10_1884
L_sdivn_1889 : 
	sub	r6 r5 r7
	bgt	r0 r6 L_else_20966
	sub	r6 r5 r7
	addi	r4 r4 1
	sub	r5 r6 r7
	bgt	r0 r5 L_else_20968
	sub	r6 r6 r7
	addi	r4 r4 1
	sub	r5 r6 r7
	bgt	r0 r5 L_else_20970
	sub	r6 r6 r7
	addi	r4 r4 1
	sub	r5 r6 r7
	bgt	r0 r5 L_else_20972
	sub	r6 r6 r7
	addi	r4 r4 1
	sub	r5 r6 r7
	bgt	r0 r5 L_else_20974
	sub	r6 r6 r7
	addi	r4 r4 1
	sub	r5 r6 r7
	bgt	r0 r5 L_else_20976
	sub	r6 r6 r7
	addi	r4 r4 1
	sub	r5 r6 r7
	bgt	r0 r5 L_else_20978
	sub	r6 r6 r7
	addi	r4 r4 1
	sub	r5 r6 r7
	bgt	r0 r5 L_else_20980
	sub	r5 r6 r7
	addi	r4 r4 1
	jump	L_sdivn_1889
L_else_20980 : 
	return
L_else_20978 : 
	return
L_else_20976 : 
	return
L_else_20974 : 
	return
L_else_20972 : 
	return
L_else_20970 : 
	return
L_else_20968 : 
	return
L_else_20966 : 
	return
L_sprint_int_1896 : 
	bne	r9 r0 L_else_20983
	addi	r4 r8 48
	jump	min_caml_print_char
L_else_20983 : 
	bne	r10 r0 L_else_20985
	bne	r9 r0 L_else_20988
	addi	r4 r0 1
	jump	L_cont_20986
L_else_20988 : 
	addi	r4 r9 -1
	bne	r4 r0 L_else_21049
	addi	r4 r0 10
	jump	L_cont_20986
L_else_21049 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21051
	addi	r4 r0 100
	jump	L_cont_20986
L_else_21051 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21053
	addi	r4 r0 1000
	jump	L_cont_20986
L_else_21053 : 
	addi	r4 r4 -1
	addi	r6 r0 10000
	bne	r4 r0 L_else_21055
	addi	r4 r0 10000
	jump	L_cont_20986
L_else_21055 : 
	addi	r5 r4 -1
	addi	r4 r0 10
	mul	r4 r6 r4
	call	L_spow10_1884
L_cont_20986 : 
	sub	r5 r8 r4
	bgt	r0 r5 L_else_20991
	sub	r6 r8 r4
	sub	r5 r6 r4
	bgt	r0 r5 L_else_21039
	sub	r6 r6 r4
	sub	r5 r6 r4
	bgt	r0 r5 L_else_21041
	sub	r6 r6 r4
	sub	r5 r6 r4
	bgt	r0 r5 L_else_21043
	sub	r6 r6 r4
	sub	r5 r6 r4
	bgt	r0 r5 L_else_21045
	sub	r6 r6 r4
	sub	r5 r6 r4
	bgt	r0 r5 L_else_21047
	sub	r5 r6 r4
	addi	r6 r0 6
	add	r7 r0 r4
	add	r4 r0 r6
	call	L_sdivn_1889
	add	r7 r0 r4
	jump	L_cont_20989
L_else_21047 : 
	addi	r7 r0 5
	jump	L_cont_20989
L_else_21045 : 
	addi	r7 r0 4
	jump	L_cont_20989
L_else_21043 : 
	addi	r7 r0 3
	jump	L_cont_20989
L_else_21041 : 
	addi	r7 r0 2
	jump	L_cont_20989
L_else_21039 : 
	addi	r7 r0 1
	jump	L_cont_20989
L_else_20991 : 
	addi	r7 r0 0
L_cont_20989 : 
	addi	r4 r7 48
	call	min_caml_print_char
	bne	r9 r0 L_else_20994
	addi	r4 r0 1
	jump	L_cont_20992
L_else_20994 : 
	addi	r4 r9 -1
	bne	r4 r0 L_else_21029
	addi	r4 r0 10
	jump	L_cont_20992
L_else_21029 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21031
	addi	r4 r0 100
	jump	L_cont_20992
L_else_21031 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21033
	addi	r4 r0 1000
	jump	L_cont_20992
L_else_21033 : 
	addi	r4 r4 -1
	addi	r6 r0 10000
	bne	r4 r0 L_else_21035
	addi	r4 r0 10000
	jump	L_cont_20992
L_else_21035 : 
	addi	r5 r4 -1
	addi	r4 r0 10
	mul	r4 r6 r4
	bne	r5 r0 L_else_21037
	jump	L_cont_20992
L_else_21037 : 
	addi	r5 r5 -1
	addi	r6 r0 10
	mul	r4 r4 r6
	call	L_spow10_1884
L_cont_20992 : 
	mul	r4 r7 r4
	sub	r10 r8 r4
	addi	r8 r9 -1
	bne	r8 r0 L_else_20996
	addi	r4 r10 48
	jump	min_caml_print_char
L_else_20996 : 
	bne	r8 r0 L_else_20999
	addi	r4 r0 1
	jump	L_cont_20997
L_else_20999 : 
	addi	r4 r8 -1
	bne	r4 r0 L_else_21023
	addi	r4 r0 10
	jump	L_cont_20997
L_else_21023 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21025
	addi	r4 r0 100
	jump	L_cont_20997
L_else_21025 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21027
	addi	r4 r0 1000
	jump	L_cont_20997
L_else_21027 : 
	addi	r5 r4 -1
	addi	r4 r0 10000
	call	L_spow10_1884
L_cont_20997 : 
	sub	r5 r10 r4
	bgt	r0 r5 L_else_21002
	sub	r5 r10 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21015
	sub	r5 r5 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21017
	sub	r5 r5 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21019
	sub	r5 r5 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21021
	sub	r6 r5 r4
	addi	r5 r0 5
	add	r7 r0 r4
	add	r4 r0 r5
	add	r5 r0 r6
	call	L_sdivn_1889
	add	r7 r0 r4
	jump	L_cont_21000
L_else_21021 : 
	addi	r7 r0 4
	jump	L_cont_21000
L_else_21019 : 
	addi	r7 r0 3
	jump	L_cont_21000
L_else_21017 : 
	addi	r7 r0 2
	jump	L_cont_21000
L_else_21015 : 
	addi	r7 r0 1
	jump	L_cont_21000
L_else_21002 : 
	addi	r7 r0 0
L_cont_21000 : 
	addi	r4 r7 48
	call	min_caml_print_char
	bne	r8 r0 L_else_21005
	addi	r4 r0 1
	jump	L_cont_21003
L_else_21005 : 
	addi	r4 r8 -1
	bne	r4 r0 L_else_21007
	addi	r4 r0 10
	jump	L_cont_21003
L_else_21007 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21009
	addi	r4 r0 100
	jump	L_cont_21003
L_else_21009 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21011
	addi	r4 r0 1000
	jump	L_cont_21003
L_else_21011 : 
	addi	r5 r4 -1
	addi	r4 r0 10000
	bne	r5 r0 L_else_21013
	addi	r4 r0 10000
	jump	L_cont_21003
L_else_21013 : 
	addi	r5 r5 -1
	addi	r6 r0 10
	mul	r4 r4 r6
	call	L_spow10_1884
L_cont_21003 : 
	mul	r4 r7 r4
	sub	r5 r10 r4
	addi	r6 r8 -1
	addi	r4 r0 0
	add	r8 r0 r5
	add	r9 r0 r6
	add	r10 r0 r4
	jump	L_sprint_int_1896
L_else_20985 : 
	bne	r9 r0 L_else_21058
	addi	r4 r0 1
	jump	L_cont_21056
L_else_21058 : 
	addi	r4 r9 -1
	bne	r4 r0 L_else_21189
	addi	r4 r0 10
	jump	L_cont_21056
L_else_21189 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21191
	addi	r4 r0 100
	jump	L_cont_21056
L_else_21191 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21193
	addi	r4 r0 1000
	jump	L_cont_21056
L_else_21193 : 
	addi	r4 r4 -1
	addi	r6 r0 10000
	bne	r4 r0 L_else_21195
	addi	r4 r0 10000
	jump	L_cont_21056
L_else_21195 : 
	addi	r5 r4 -1
	addi	r4 r0 10
	mul	r4 r6 r4
	call	L_spow10_1884
L_cont_21056 : 
	sub	r5 r8 r4
	bgt	r0 r5 L_else_21061
	sub	r5 r8 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21179
	sub	r6 r5 r4
	sub	r5 r6 r4
	bgt	r0 r5 L_else_21181
	sub	r5 r6 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21183
	sub	r6 r5 r4
	sub	r5 r6 r4
	bgt	r0 r5 L_else_21185
	sub	r6 r6 r4
	sub	r5 r6 r4
	bgt	r0 r5 L_else_21187
	sub	r5 r6 r4
	addi	r6 r0 6
	add	r7 r0 r4
	add	r4 r0 r6
	call	L_sdivn_1889
	add	r7 r0 r4
	jump	L_cont_21059
L_else_21187 : 
	addi	r7 r0 5
	jump	L_cont_21059
L_else_21185 : 
	addi	r7 r0 4
	jump	L_cont_21059
L_else_21183 : 
	addi	r7 r0 3
	jump	L_cont_21059
L_else_21181 : 
	addi	r7 r0 2
	jump	L_cont_21059
L_else_21179 : 
	addi	r7 r0 1
	jump	L_cont_21059
L_else_21061 : 
	addi	r7 r0 0
L_cont_21059 : 
	bne	r7 r0 L_else_21063
	addi	r9 r9 -1
	bne	r9 r0 L_else_21065
	addi	r4 r8 48
	jump	min_caml_print_char
L_else_21065 : 
	bne	r10 r0 L_else_21067
	bne	r9 r0 L_else_21070
	addi	r4 r0 1
	jump	L_cont_21068
L_else_21070 : 
	addi	r4 r9 -1
	bne	r4 r0 L_else_21094
	addi	r4 r0 10
	jump	L_cont_21068
L_else_21094 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21096
	addi	r4 r0 100
	jump	L_cont_21068
L_else_21096 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21098
	addi	r4 r0 1000
	jump	L_cont_21068
L_else_21098 : 
	addi	r5 r4 -1
	addi	r4 r0 10000
	call	L_spow10_1884
L_cont_21068 : 
	sub	r5 r8 r4
	bgt	r0 r5 L_else_21073
	sub	r5 r8 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21086
	sub	r5 r5 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21088
	sub	r5 r5 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21090
	sub	r5 r5 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21092
	sub	r6 r5 r4
	addi	r5 r0 5
	add	r7 r0 r4
	add	r4 r0 r5
	add	r5 r0 r6
	call	L_sdivn_1889
	add	r7 r0 r4
	jump	L_cont_21071
L_else_21092 : 
	addi	r7 r0 4
	jump	L_cont_21071
L_else_21090 : 
	addi	r7 r0 3
	jump	L_cont_21071
L_else_21088 : 
	addi	r7 r0 2
	jump	L_cont_21071
L_else_21086 : 
	addi	r7 r0 1
	jump	L_cont_21071
L_else_21073 : 
	addi	r7 r0 0
L_cont_21071 : 
	addi	r4 r7 48
	call	min_caml_print_char
	bne	r9 r0 L_else_21076
	addi	r4 r0 1
	jump	L_cont_21074
L_else_21076 : 
	addi	r4 r9 -1
	bne	r4 r0 L_else_21078
	addi	r4 r0 10
	jump	L_cont_21074
L_else_21078 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21080
	addi	r4 r0 100
	jump	L_cont_21074
L_else_21080 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21082
	addi	r4 r0 1000
	jump	L_cont_21074
L_else_21082 : 
	addi	r4 r4 -1
	addi	r6 r0 10000
	bne	r4 r0 L_else_21084
	addi	r4 r0 10000
	jump	L_cont_21074
L_else_21084 : 
	addi	r5 r4 -1
	addi	r4 r0 10
	mul	r4 r6 r4
	call	L_spow10_1884
L_cont_21074 : 
	mul	r4 r7 r4
	sub	r6 r8 r4
	addi	r4 r9 -1
	addi	r5 r0 0
	add	r8 r0 r6
	add	r9 r0 r4
	add	r10 r0 r5
	jump	L_sprint_int_1896
L_else_21067 : 
	bne	r9 r0 L_else_21101
	addi	r4 r0 1
	jump	L_cont_21099
L_else_21101 : 
	addi	r4 r9 -1
	bne	r4 r0 L_else_21127
	addi	r4 r0 10
	jump	L_cont_21099
L_else_21127 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21129
	addi	r4 r0 100
	jump	L_cont_21099
L_else_21129 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21131
	addi	r4 r0 1000
	jump	L_cont_21099
L_else_21131 : 
	addi	r5 r4 -1
	addi	r4 r0 10000
	call	L_spow10_1884
L_cont_21099 : 
	sub	r5 r8 r4
	bgt	r0 r5 L_else_21104
	sub	r6 r8 r4
	sub	r5 r6 r4
	bgt	r0 r5 L_else_21119
	sub	r6 r6 r4
	sub	r5 r6 r4
	bgt	r0 r5 L_else_21121
	sub	r5 r6 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21123
	sub	r5 r5 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21125
	sub	r6 r5 r4
	addi	r5 r0 5
	add	r7 r0 r4
	add	r4 r0 r5
	add	r5 r0 r6
	call	L_sdivn_1889
	add	r7 r0 r4
	jump	L_cont_21102
L_else_21125 : 
	addi	r7 r0 4
	jump	L_cont_21102
L_else_21123 : 
	addi	r7 r0 3
	jump	L_cont_21102
L_else_21121 : 
	addi	r7 r0 2
	jump	L_cont_21102
L_else_21119 : 
	addi	r7 r0 1
	jump	L_cont_21102
L_else_21104 : 
	addi	r7 r0 0
L_cont_21102 : 
	bne	r7 r0 L_else_21106
	addi	r4 r9 -1
	add	r9 r0 r4
	jump	L_sprint_int_1896
L_else_21106 : 
	addi	r4 r7 48
	call	min_caml_print_char
	bne	r9 r0 L_else_21109
	addi	r4 r0 1
	jump	L_cont_21107
L_else_21109 : 
	addi	r4 r9 -1
	bne	r4 r0 L_else_21111
	addi	r4 r0 10
	jump	L_cont_21107
L_else_21111 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21113
	addi	r4 r0 100
	jump	L_cont_21107
L_else_21113 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21115
	addi	r4 r0 1000
	jump	L_cont_21107
L_else_21115 : 
	addi	r5 r4 -1
	addi	r4 r0 10000
	bne	r5 r0 L_else_21117
	addi	r4 r0 10000
	jump	L_cont_21107
L_else_21117 : 
	addi	r5 r5 -1
	addi	r6 r0 10
	mul	r4 r4 r6
	call	L_spow10_1884
L_cont_21107 : 
	mul	r4 r7 r4
	sub	r6 r8 r4
	addi	r5 r9 -1
	addi	r4 r0 0
	add	r8 r0 r6
	add	r9 r0 r5
	add	r10 r0 r4
	jump	L_sprint_int_1896
L_else_21063 : 
	addi	r4 r7 48
	call	min_caml_print_char
	bne	r9 r0 L_else_21134
	addi	r4 r0 1
	jump	L_cont_21132
L_else_21134 : 
	addi	r4 r9 -1
	bne	r4 r0 L_else_21169
	addi	r4 r0 10
	jump	L_cont_21132
L_else_21169 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21171
	addi	r4 r0 100
	jump	L_cont_21132
L_else_21171 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21173
	addi	r4 r0 1000
	jump	L_cont_21132
L_else_21173 : 
	addi	r4 r4 -1
	addi	r6 r0 10000
	bne	r4 r0 L_else_21175
	addi	r4 r0 10000
	jump	L_cont_21132
L_else_21175 : 
	addi	r5 r4 -1
	addi	r4 r0 10
	mul	r4 r6 r4
	bne	r5 r0 L_else_21177
	jump	L_cont_21132
L_else_21177 : 
	addi	r5 r5 -1
	addi	r6 r0 10
	mul	r4 r4 r6
	call	L_spow10_1884
L_cont_21132 : 
	mul	r4 r7 r4
	sub	r8 r8 r4
	addi	r9 r9 -1
	bne	r9 r0 L_else_21136
	addi	r4 r8 48
	jump	min_caml_print_char
L_else_21136 : 
	bne	r9 r0 L_else_21139
	addi	r4 r0 1
	jump	L_cont_21137
L_else_21139 : 
	addi	r4 r9 -1
	bne	r4 r0 L_else_21163
	addi	r4 r0 10
	jump	L_cont_21137
L_else_21163 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21165
	addi	r4 r0 100
	jump	L_cont_21137
L_else_21165 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21167
	addi	r4 r0 1000
	jump	L_cont_21137
L_else_21167 : 
	addi	r5 r4 -1
	addi	r4 r0 10000
	call	L_spow10_1884
L_cont_21137 : 
	sub	r5 r8 r4
	bgt	r0 r5 L_else_21142
	sub	r5 r8 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21155
	sub	r5 r5 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21157
	sub	r5 r5 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21159
	sub	r5 r5 r4
	sub	r6 r5 r4
	bgt	r0 r6 L_else_21161
	sub	r5 r5 r4
	addi	r6 r0 5
	add	r7 r0 r4
	add	r4 r0 r6
	call	L_sdivn_1889
	add	r7 r0 r4
	jump	L_cont_21140
L_else_21161 : 
	addi	r7 r0 4
	jump	L_cont_21140
L_else_21159 : 
	addi	r7 r0 3
	jump	L_cont_21140
L_else_21157 : 
	addi	r7 r0 2
	jump	L_cont_21140
L_else_21155 : 
	addi	r7 r0 1
	jump	L_cont_21140
L_else_21142 : 
	addi	r7 r0 0
L_cont_21140 : 
	addi	r4 r7 48
	call	min_caml_print_char
	bne	r9 r0 L_else_21145
	addi	r4 r0 1
	jump	L_cont_21143
L_else_21145 : 
	addi	r4 r9 -1
	bne	r4 r0 L_else_21147
	addi	r4 r0 10
	jump	L_cont_21143
L_else_21147 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21149
	addi	r4 r0 100
	jump	L_cont_21143
L_else_21149 : 
	addi	r4 r4 -1
	bne	r4 r0 L_else_21151
	addi	r4 r0 1000
	jump	L_cont_21143
L_else_21151 : 
	addi	r4 r4 -1
	addi	r6 r0 10000
	bne	r4 r0 L_else_21153
	addi	r4 r0 10000
	jump	L_cont_21143
L_else_21153 : 
	addi	r5 r4 -1
	addi	r4 r0 10
	mul	r4 r6 r4
	call	L_spow10_1884
L_cont_21143 : 
	mul	r4 r7 r4
	sub	r6 r8 r4
	addi	r4 r9 -1
	addi	r5 r0 0
	add	r8 r0 r6
	add	r9 r0 r4
	add	r10 r0 r5
	jump	L_sprint_int_1896
L_read_object_2038 : 
	addi	r4 r0 60
	bgt	r4 r6 L_else_21198
	return
L_else_21198 : 
	call	min_caml_read_int
	add	r9 r0 r4
	addi	r4 r0 -1
	bne	r9 r4 L_else_21201
	addi	r4 r0 0
	jump	L_cont_21199
L_else_21201 : 
	call	min_caml_read_int
	add	r10 r0 r4
	call	min_caml_read_int
	add	r11 r0 r4
	call	min_caml_read_int
	add	r12 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r8 r0 r4
	call	min_caml_read_float
	fsti	f2 r8 0
	call	min_caml_read_float
	fsti	f2 r8 1
	call	min_caml_read_float
	fsti	f2 r8 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r13 r0 r4
	call	min_caml_read_float
	fsti	f2 r13 0
	call	min_caml_read_float
	fsti	f2 r13 1
	call	min_caml_read_float
	fsti	f2 r13 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_21289
	addi	r15 r0 0
	jump	L_cont_21287
L_else_21289 : 
	addi	r15 r0 1
L_cont_21287 : 
	addi	r4 r0 2
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r16 r0 r4
	call	min_caml_read_float
	fsti	f2 r16 0
	call	min_caml_read_float
	fsti	f2 r16 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r17 r0 r4
	call	min_caml_read_float
	fsti	f2 r17 0
	call	min_caml_read_float
	fsti	f2 r17 1
	call	min_caml_read_float
	fsti	f2 r17 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r14 r0 r4
	bne	r12 r0 L_else_21292
	jump	L_cont_21290
L_else_21292 : 
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r14 0
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r14 1
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r14 2
L_cont_21290 : 
	addi	r4 r0 2
	bne	r10 r4 L_else_21295
	addi	r18 r0 1
	jump	L_cont_21293
L_else_21295 : 
	add	r18 r0 r15
L_cont_21293 : 
	addi	r4 r0 4
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r9 r3 0
	sti	r10 r3 1
	sti	r11 r3 2
	sti	r12 r3 3
	sti	r8 r3 4
	sti	r13 r3 5
	sti	r18 r3 6
	sti	r16 r3 7
	sti	r17 r3 8
	sti	r14 r3 9
	sti	r4 r3 10
	add	r5 r0 r3
	addi	r3 r3 11
	addi	r4 r0 1970
	add	r1 r4 r6
	sti	r5 r1 0
	addi	r4 r0 3
	bne	r10 r4 L_else_21298
	fldi	f3 r8 0
	fbne	f3 f0 L_else_21394
	addi	r4 r0 1
	jump	L_cont_21392
L_else_21394 : 
	addi	r4 r0 0
L_cont_21392 : 
	bne	r4 r0 L_else_21397
	fbne	f3 f0 L_else_21434
	addi	r4 r0 1
	jump	L_cont_21432
L_else_21434 : 
	addi	r4 r0 0
L_cont_21432 : 
	bne	r4 r0 L_else_21437
	fbgt	f3 f0 L_else_21440
	addi	r4 r0 0
	jump	L_cont_21438
L_else_21440 : 
	addi	r4 r0 1
L_cont_21438 : 
	bne	r4 r0 L_else_21442
	fldi	f2 r0 28
	jump	L_cont_21435
L_else_21442 : 
	fldi	f2 r0 20
	jump	L_cont_21435
L_else_21437 : 
	fldi	f2 r0 26
L_cont_21435 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21395
L_else_21397 : 
	fldi	f2 r0 26
L_cont_21395 : 
	fsti	f2 r8 0
	fldi	f3 r8 1
	fbne	f3 f0 L_else_21400
	addi	r4 r0 1
	jump	L_cont_21398
L_else_21400 : 
	addi	r4 r0 0
L_cont_21398 : 
	bne	r4 r0 L_else_21403
	fbne	f3 f0 L_else_21423
	addi	r4 r0 1
	jump	L_cont_21421
L_else_21423 : 
	addi	r4 r0 0
L_cont_21421 : 
	bne	r4 r0 L_else_21426
	fbgt	f3 f0 L_else_21429
	addi	r4 r0 0
	jump	L_cont_21427
L_else_21429 : 
	addi	r4 r0 1
L_cont_21427 : 
	bne	r4 r0 L_else_21431
	fldi	f2 r0 28
	jump	L_cont_21424
L_else_21431 : 
	fldi	f2 r0 20
	jump	L_cont_21424
L_else_21426 : 
	fldi	f2 r0 26
L_cont_21424 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21401
L_else_21403 : 
	fldi	f2 r0 26
L_cont_21401 : 
	fsti	f2 r8 1
	fldi	f2 r8 2
	fbne	f2 f0 L_else_21406
	addi	r4 r0 1
	jump	L_cont_21404
L_else_21406 : 
	addi	r4 r0 0
L_cont_21404 : 
	bne	r4 r0 L_else_21409
	fbne	f2 f0 L_else_21412
	addi	r4 r0 1
	jump	L_cont_21410
L_else_21412 : 
	addi	r4 r0 0
L_cont_21410 : 
	bne	r4 r0 L_else_21415
	fbgt	f2 f0 L_else_21418
	addi	r4 r0 0
	jump	L_cont_21416
L_else_21418 : 
	addi	r4 r0 1
L_cont_21416 : 
	bne	r4 r0 L_else_21420
	fldi	f3 r0 28
	jump	L_cont_21413
L_else_21420 : 
	fldi	f3 r0 20
	jump	L_cont_21413
L_else_21415 : 
	fldi	f3 r0 26
L_cont_21413 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21407
L_else_21409 : 
	fldi	f2 r0 26
L_cont_21407 : 
	fsti	f2 r8 2
	jump	L_cont_21296
L_else_21298 : 
	addi	r4 r0 2
	bne	r10 r4 L_else_21444
	addi	r4 r0 1
	sub	r4 r4 r15
	fldi	f2 r8 0
	fmul	f3 f2 f2
	fldi	f2 r8 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r8 2
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_21447
	addi	r5 r0 1
	jump	L_cont_21445
L_else_21447 : 
	addi	r5 r0 0
L_cont_21445 : 
	bne	r5 r0 L_else_21450
	bne	r4 r0 L_else_21452
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_21448
L_else_21452 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_21448
L_else_21450 : 
	fldi	f3 r0 20
L_cont_21448 : 
	fldi	f2 r8 0
	fmul	f2 f2 f3
	fsti	f2 r8 0
	fldi	f2 r8 1
	fmul	f2 f2 f3
	fsti	f2 r8 1
	fldi	f2 r8 2
	fmul	f2 f2 f3
	fsti	f2 r8 2
	jump	L_cont_21296
L_else_21444 : 
L_cont_21296 : 
	bne	r12 r0 L_else_21301
	jump	L_cont_21299
L_else_21301 : 
	fldi	f6 r14 0
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f6 f4 L_else_21304
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_21381
	fldi	f3 r0 3
	fldi	f5 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_21383
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_21385
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
	fadd	f10 f2 f3
	jump	L_cont_21302
L_else_21385 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_21387
	fadd	f9 f6 f5
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
	fadd	f10 f2 f9
	jump	L_cont_21302
L_else_21387 : 
	fadd	f2 f4 f6
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
	fsub	f10 f0 f2
	jump	L_cont_21302
L_else_21383 : 
	fbgt	f6 f3 L_else_21389
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
	fadd	f10 f3 f2
	jump	L_cont_21302
L_else_21389 : 
	fbgt	f6 f2 L_else_21391
	fsub	f7 f6 f5
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
	fsub	f10 f0 f2
	jump	L_cont_21302
L_else_21391 : 
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
	fsub	f10 f0 f2
	jump	L_cont_21302
L_else_21381 : 
	fadd	f6 f6 f3
	call	L_cos_1880
	fadd	f10 f0 f2
	jump	L_cont_21302
L_else_21304 : 
	fsub	f6 f6 f3
	call	L_cos_1880
	fadd	f10 f0 f2
L_cont_21302 : 
	fldi	f9 r14 0
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_21307
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21369
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21371
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21373
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
	fadd	f11 f2 f9
	jump	L_cont_21305
L_else_21373 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21375
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
	fsub	f11 f0 f2
	jump	L_cont_21305
L_else_21375 : 
	fadd	f8 f4 f9
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
	fsub	f11 f0 f2
	jump	L_cont_21305
L_else_21371 : 
	fbgt	f9 f5 L_else_21377
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
	fadd	f11 f2 f9
	jump	L_cont_21305
L_else_21377 : 
	fbgt	f9 f2 L_else_21379
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
	fadd	f11 f3 f2
	jump	L_cont_21305
L_else_21379 : 
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
	fadd	f11 f2 f9
	jump	L_cont_21305
L_else_21369 : 
	fadd	f9 f9 f3
	call	L_sin_1878
	fadd	f11 f0 f2
	jump	L_cont_21305
L_else_21307 : 
	fsub	f9 f9 f3
	call	L_sin_1878
	fadd	f11 f0 f2
L_cont_21305 : 
	fldi	f5 r14 1
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f5 f4 L_else_21310
	fldi	f2 r0 2
	fbgt	f2 f5 L_else_21357
	fldi	f6 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f5 f0 L_else_21359
	fldi	f2 r0 6
	fbgt	f2 f5 L_else_21361
	fmul	f8 f5 f5
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
	fadd	f12 f3 f2
	jump	L_cont_21308
L_else_21361 : 
	fldi	f2 r0 13
	fbgt	f2 f5 L_else_21363
	fadd	f7 f5 f3
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
	fadd	f12 f2 f7
	jump	L_cont_21308
L_else_21363 : 
	fadd	f2 f4 f5
	fmul	f6 f2 f2
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
	fsub	f12 f0 f2
	jump	L_cont_21308
L_else_21359 : 
	fbgt	f5 f6 L_else_21365
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
	fadd	f12 f2 f3
	jump	L_cont_21308
L_else_21365 : 
	fbgt	f5 f2 L_else_21367
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
	fsub	f12 f0 f2
	jump	L_cont_21308
L_else_21367 : 
	fsub	f2 f4 f5
	fmul	f6 f2 f2
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
	fsub	f12 f0 f2
	jump	L_cont_21308
L_else_21357 : 
	fadd	f6 f5 f3
	call	L_cos_1880
	fadd	f12 f0 f2
	jump	L_cont_21308
L_else_21310 : 
	fsub	f6 f5 f3
	call	L_cos_1880
	fadd	f12 f0 f2
L_cont_21308 : 
	fldi	f9 r14 1
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_21313
	fldi	f3 r0 2
	fbgt	f3 f9 L_else_21345
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21347
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21349
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
	jump	L_cont_21311
L_else_21349 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21351
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
	fsub	f13 f0 f2
	jump	L_cont_21311
L_else_21351 : 
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
	fsub	f13 f0 f2
	jump	L_cont_21311
L_else_21347 : 
	fbgt	f9 f3 L_else_21353
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
	jump	L_cont_21311
L_else_21353 : 
	fbgt	f9 f2 L_else_21355
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
	fadd	f13 f2 f3
	jump	L_cont_21311
L_else_21355 : 
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
	fadd	f13 f2 f8
	jump	L_cont_21311
L_else_21345 : 
	fadd	f9 f9 f2
	call	L_sin_1878
	fadd	f13 f0 f2
	jump	L_cont_21311
L_else_21313 : 
	fsub	f9 f9 f2
	call	L_sin_1878
	fadd	f13 f0 f2
L_cont_21311 : 
	fldi	f6 r14 2
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_21316
	fldi	f3 r0 2
	fbgt	f3 f6 L_else_21333
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_21335
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_21337
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
	fadd	f14 f2 f3
	jump	L_cont_21314
L_else_21337 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_21339
	fadd	f9 f6 f4
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
	fadd	f14 f2 f9
	jump	L_cont_21314
L_else_21339 : 
	fadd	f2 f5 f6
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
	fsub	f14 f0 f2
	jump	L_cont_21314
L_else_21335 : 
	fbgt	f6 f3 L_else_21341
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
	fadd	f14 f3 f2
	jump	L_cont_21314
L_else_21341 : 
	fbgt	f6 f2 L_else_21343
	fsub	f9 f6 f4
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
	fsub	f14 f0 f2
	jump	L_cont_21314
L_else_21343 : 
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
	fsub	f14 f0 f2
	jump	L_cont_21314
L_else_21333 : 
	fadd	f6 f6 f2
	call	L_cos_1880
	fadd	f14 f0 f2
	jump	L_cont_21314
L_else_21316 : 
	fsub	f6 f6 f2
	call	L_cos_1880
	fadd	f14 f0 f2
L_cont_21314 : 
	fldi	f9 r14 2
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_21319
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21321
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21323
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21325
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
	jump	L_cont_21317
L_else_21325 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21327
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
	jump	L_cont_21317
L_else_21327 : 
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
	jump	L_cont_21317
L_else_21323 : 
	fbgt	f9 f4 L_else_21329
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
	jump	L_cont_21317
L_else_21329 : 
	fbgt	f9 f2 L_else_21331
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
	jump	L_cont_21317
L_else_21331 : 
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
	jump	L_cont_21317
L_else_21321 : 
	fadd	f9 f9 f3
	call	L_sin_1878
	jump	L_cont_21317
L_else_21319 : 
	fsub	f9 f9 f3
	call	L_sin_1878
L_cont_21317 : 
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
	fmul	f2 f3 f2
	fmul	f3 f11 f14
	fsub	f14 f2 f3
	fsub	f5 f0 f13
	fmul	f6 f11 f12
	fmul	f13 f10 f12
	fldi	f12 r8 0
	fldi	f11 r8 1
	fldi	f10 r8 2
	fmul	f2 f15 f15
	fmul	f3 f12 f2
	fmul	f2 f8 f8
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f5 f5
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r8 0
	fmul	f2 f9 f9
	fmul	f3 f12 f2
	fmul	f2 f7 f7
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f6 f6
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r8 1
	fmul	f2 f16 f16
	fmul	f3 f12 f2
	fmul	f2 f14 f14
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f13 f13
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r8 2
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
	fsti	f2 r14 0
	fldi	f4 r0 29
	fmul	f2 f12 f15
	fmul	f3 f2 f16
	fmul	f2 f11 f8
	fmul	f2 f2 f14
	fadd	f3 f3 f2
	fmul	f2 f10 f5
	fmul	f2 f2 f13
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r14 1
	fldi	f4 r0 29
	fmul	f2 f12 f15
	fmul	f3 f2 f9
	fmul	f2 f11 f8
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fmul	f2 f10 f5
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r14 2
L_cont_21299 : 
	addi	r4 r0 1
L_cont_21199 : 
	bne	r4 r0 L_else_21203
	sti	r6 r0 1072
	return
L_else_21203 : 
	addi	r6 r6 1
	addi	r4 r0 60
	bgt	r4 r6 L_else_21205
	return
L_else_21205 : 
	call	min_caml_read_int
	add	r9 r0 r4
	addi	r4 r0 -1
	bne	r9 r4 L_else_21208
	addi	r4 r0 0
	jump	L_cont_21206
L_else_21208 : 
	call	min_caml_read_int
	add	r10 r0 r4
	call	min_caml_read_int
	add	r11 r0 r4
	call	min_caml_read_int
	add	r12 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r8 r0 r4
	call	min_caml_read_float
	fsti	f2 r8 0
	call	min_caml_read_float
	fsti	f2 r8 1
	call	min_caml_read_float
	fsti	f2 r8 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r13 r0 r4
	call	min_caml_read_float
	fsti	f2 r13 0
	call	min_caml_read_float
	fsti	f2 r13 1
	call	min_caml_read_float
	fsti	f2 r13 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_21213
	addi	r14 r0 0
	jump	L_cont_21211
L_else_21213 : 
	addi	r14 r0 1
L_cont_21211 : 
	addi	r4 r0 2
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r15 r0 r4
	call	min_caml_read_float
	fsti	f2 r15 0
	call	min_caml_read_float
	fsti	f2 r15 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r17 r0 r4
	call	min_caml_read_float
	fsti	f2 r17 0
	call	min_caml_read_float
	fsti	f2 r17 1
	call	min_caml_read_float
	fsti	f2 r17 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r16 r0 r4
	bne	r12 r0 L_else_21216
	jump	L_cont_21214
L_else_21216 : 
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r16 0
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r16 1
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r16 2
L_cont_21214 : 
	addi	r4 r0 2
	bne	r10 r4 L_else_21219
	addi	r18 r0 1
	jump	L_cont_21217
L_else_21219 : 
	add	r18 r0 r14
L_cont_21217 : 
	addi	r4 r0 4
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r9 r3 0
	sti	r10 r3 1
	sti	r11 r3 2
	sti	r12 r3 3
	sti	r8 r3 4
	sti	r13 r3 5
	sti	r18 r3 6
	sti	r15 r3 7
	sti	r17 r3 8
	sti	r16 r3 9
	sti	r4 r3 10
	add	r5 r0 r3
	addi	r3 r3 11
	addi	r4 r0 1970
	add	r1 r4 r6
	sti	r5 r1 0
	addi	r4 r0 3
	bne	r10 r4 L_else_21222
	fldi	f3 r8 0
	fbne	f3 f0 L_else_21228
	addi	r4 r0 1
	jump	L_cont_21226
L_else_21228 : 
	addi	r4 r0 0
L_cont_21226 : 
	bne	r4 r0 L_else_21231
	fbne	f3 f0 L_else_21268
	addi	r4 r0 1
	jump	L_cont_21266
L_else_21268 : 
	addi	r4 r0 0
L_cont_21266 : 
	bne	r4 r0 L_else_21271
	fbgt	f3 f0 L_else_21274
	addi	r4 r0 0
	jump	L_cont_21272
L_else_21274 : 
	addi	r4 r0 1
L_cont_21272 : 
	bne	r4 r0 L_else_21276
	fldi	f2 r0 28
	jump	L_cont_21269
L_else_21276 : 
	fldi	f2 r0 20
	jump	L_cont_21269
L_else_21271 : 
	fldi	f2 r0 26
L_cont_21269 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21229
L_else_21231 : 
	fldi	f2 r0 26
L_cont_21229 : 
	fsti	f2 r8 0
	fldi	f3 r8 1
	fbne	f3 f0 L_else_21234
	addi	r4 r0 1
	jump	L_cont_21232
L_else_21234 : 
	addi	r4 r0 0
L_cont_21232 : 
	bne	r4 r0 L_else_21237
	fbne	f3 f0 L_else_21257
	addi	r4 r0 1
	jump	L_cont_21255
L_else_21257 : 
	addi	r4 r0 0
L_cont_21255 : 
	bne	r4 r0 L_else_21260
	fbgt	f3 f0 L_else_21263
	addi	r4 r0 0
	jump	L_cont_21261
L_else_21263 : 
	addi	r4 r0 1
L_cont_21261 : 
	bne	r4 r0 L_else_21265
	fldi	f2 r0 28
	jump	L_cont_21258
L_else_21265 : 
	fldi	f2 r0 20
	jump	L_cont_21258
L_else_21260 : 
	fldi	f2 r0 26
L_cont_21258 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21235
L_else_21237 : 
	fldi	f2 r0 26
L_cont_21235 : 
	fsti	f2 r8 1
	fldi	f2 r8 2
	fbne	f2 f0 L_else_21240
	addi	r4 r0 1
	jump	L_cont_21238
L_else_21240 : 
	addi	r4 r0 0
L_cont_21238 : 
	bne	r4 r0 L_else_21243
	fbne	f2 f0 L_else_21246
	addi	r4 r0 1
	jump	L_cont_21244
L_else_21246 : 
	addi	r4 r0 0
L_cont_21244 : 
	bne	r4 r0 L_else_21249
	fbgt	f2 f0 L_else_21252
	addi	r4 r0 0
	jump	L_cont_21250
L_else_21252 : 
	addi	r4 r0 1
L_cont_21250 : 
	bne	r4 r0 L_else_21254
	fldi	f3 r0 28
	jump	L_cont_21247
L_else_21254 : 
	fldi	f3 r0 20
	jump	L_cont_21247
L_else_21249 : 
	fldi	f3 r0 26
L_cont_21247 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21241
L_else_21243 : 
	fldi	f2 r0 26
L_cont_21241 : 
	fsti	f2 r8 2
	jump	L_cont_21220
L_else_21222 : 
	addi	r4 r0 2
	bne	r10 r4 L_else_21278
	addi	r4 r0 1
	sub	r5 r4 r14
	fldi	f2 r8 0
	fmul	f3 f2 f2
	fldi	f2 r8 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r8 2
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_21281
	addi	r4 r0 1
	jump	L_cont_21279
L_else_21281 : 
	addi	r4 r0 0
L_cont_21279 : 
	bne	r4 r0 L_else_21284
	bne	r5 r0 L_else_21286
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_21282
L_else_21286 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_21282
L_else_21284 : 
	fldi	f3 r0 20
L_cont_21282 : 
	fldi	f2 r8 0
	fmul	f2 f2 f3
	fsti	f2 r8 0
	fldi	f2 r8 1
	fmul	f2 f2 f3
	fsti	f2 r8 1
	fldi	f2 r8 2
	fmul	f2 f2 f3
	fsti	f2 r8 2
	jump	L_cont_21220
L_else_21278 : 
L_cont_21220 : 
	bne	r12 r0 L_else_21225
	jump	L_cont_21223
L_else_21225 : 
	fldi	f6 r16 0
	call	L_cos_1880
	fadd	f10 f0 f2
	fldi	f9 r16 0
	call	L_sin_1878
	fadd	f11 f0 f2
	fldi	f6 r16 1
	call	L_cos_1880
	fadd	f12 f0 f2
	fldi	f9 r16 1
	call	L_sin_1878
	fadd	f13 f0 f2
	fldi	f6 r16 2
	call	L_cos_1880
	fadd	f14 f0 f2
	fldi	f9 r16 2
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
	fldi	f12 r8 0
	fldi	f11 r8 1
	fldi	f10 r8 2
	fmul	f2 f15 f15
	fmul	f3 f12 f2
	fmul	f2 f5 f5
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f8 f8
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r8 0
	fmul	f2 f9 f9
	fmul	f3 f12 f2
	fmul	f2 f7 f7
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f6 f6
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r8 1
	fmul	f2 f16 f16
	fmul	f3 f12 f2
	fmul	f2 f14 f14
	fmul	f2 f11 f2
	fadd	f3 f3 f2
	fmul	f2 f13 f13
	fmul	f2 f10 f2
	fadd	f2 f3 f2
	fsti	f2 r8 2
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
	fsti	f2 r16 0
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
	fsti	f2 r16 1
	fldi	f4 r0 29
	fmul	f2 f12 f15
	fmul	f3 f2 f9
	fmul	f2 f11 f5
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	fmul	f3 f10 f8
	fmul	f3 f3 f6
	fadd	f2 f2 f3
	fmul	f2 f4 f2
	fsti	f2 r16 2
L_cont_21223 : 
	addi	r4 r0 1
L_cont_21206 : 
	bne	r4 r0 L_else_21210
	sti	r6 r0 1072
	return
L_else_21210 : 
	addi	r4 r6 1
	add	r6 r0 r4
	jump	L_read_object_2038
L_read_net_item_2042 : 
	call	min_caml_read_int
	add	r9 r0 r4
	addi	r4 r0 -1
	bne	r9 r4 L_else_21455
	addi	r4 r8 1
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_21455 : 
	addi	r10 r8 1
	call	min_caml_read_int
	add	r11 r0 r4
	addi	r4 r0 -1
	bne	r11 r4 L_else_21458
	addi	r4 r10 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21456
L_else_21458 : 
	addi	r12 r10 1
	call	min_caml_read_int
	add	r13 r0 r4
	addi	r4 r0 -1
	bne	r13 r4 L_else_21461
	addi	r4 r12 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21459
L_else_21461 : 
	addi	r5 r12 1
	call	min_caml_read_int
	add	r6 r0 r4
	addi	r4 r0 -1
	bne	r6 r4 L_else_21464
	addi	r4 r5 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21462
L_else_21464 : 
	addi	r4 r5 1
	sti	r9 r2 0
	sti	r8 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r13 r2 4
	sti	r12 r2 5
	sti	r6 r2 6
	sti	r5 r2 7
	add	r8 r0 r4
	addi	r2 r2 8
	call	L_read_net_item_2042
	addi	r2 r2 -8
	ldi	r9 r2 0
	ldi	r8 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r13 r2 4
	ldi	r12 r2 5
	ldi	r6 r2 6
	ldi	r5 r2 7
	add	r1 r4 r5
	sti	r6 r1 0
L_cont_21462 : 
	add	r1 r4 r12
	sti	r13 r1 0
L_cont_21459 : 
	add	r1 r4 r10
	sti	r11 r1 0
L_cont_21456 : 
	add	r1 r4 r8
	sti	r9 r1 0
	return
L_read_or_network_2044 : 
	addi	r15 r0 0
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21468
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r15 r0 r4
	jump	L_cont_21466
L_else_21468 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21491
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21489
L_else_21491 : 
	addi	r19 r0 2
	call	min_caml_read_int
	add	r20 r0 r4
	addi	r4 r0 -1
	bne	r20 r4 L_else_21494
	addi	r4 r0 3
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21492
L_else_21494 : 
	addi	r8 r0 3
	call	L_read_net_item_2042
	add	r1 r4 r19
	sti	r20 r1 0
L_cont_21492 : 
	add	r1 r4 r17
	sti	r18 r1 0
L_cont_21489 : 
	add	r1 r4 r15
	sti	r16 r1 0
	add	r15 r0 r4
L_cont_21466 : 
	ldi	r4 r15 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21470
	addi	r4 r14 1
	add	r5 r0 r15
	jump	min_caml_create_array
L_else_21470 : 
	addi	r16 r14 1
	addi	r17 r0 0
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21473
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r17 r0 r4
	jump	L_cont_21471
L_else_21473 : 
	addi	r19 r0 1
	call	min_caml_read_int
	add	r20 r0 r4
	addi	r4 r0 -1
	bne	r20 r4 L_else_21488
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21486
L_else_21488 : 
	addi	r8 r0 2
	call	L_read_net_item_2042
	add	r1 r4 r19
	sti	r20 r1 0
L_cont_21486 : 
	add	r1 r4 r17
	sti	r18 r1 0
	add	r17 r0 r4
L_cont_21471 : 
	ldi	r4 r17 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21476
	addi	r4 r16 1
	add	r5 r0 r17
	call	min_caml_create_array
	jump	L_cont_21474
L_else_21476 : 
	addi	r18 r16 1
	addi	r19 r0 0
	call	min_caml_read_int
	add	r20 r0 r4
	addi	r4 r0 -1
	bne	r20 r4 L_else_21479
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r19 r0 r4
	jump	L_cont_21477
L_else_21479 : 
	addi	r8 r0 1
	call	L_read_net_item_2042
	add	r1 r4 r19
	sti	r20 r1 0
	add	r19 r0 r4
L_cont_21477 : 
	ldi	r4 r19 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21482
	addi	r4 r18 1
	add	r5 r0 r19
	call	min_caml_create_array
	jump	L_cont_21480
L_else_21482 : 
	addi	r20 r18 1
	addi	r8 r0 0
	call	L_read_net_item_2042
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_21485
	addi	r5 r20 1
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	jump	L_cont_21483
L_else_21485 : 
	addi	r5 r20 1
	sti	r15 r2 0
	sti	r14 r2 1
	sti	r17 r2 2
	sti	r16 r2 3
	sti	r19 r2 4
	sti	r18 r2 5
	sti	r4 r2 6
	sti	r20 r2 7
	add	r14 r0 r5
	addi	r2 r2 8
	call	L_read_or_network_2044
	addi	r2 r2 -8
	add	r5 r0 r4
	ldi	r15 r2 0
	ldi	r14 r2 1
	ldi	r17 r2 2
	ldi	r16 r2 3
	ldi	r19 r2 4
	ldi	r18 r2 5
	ldi	r4 r2 6
	ldi	r20 r2 7
	add	r1 r5 r20
	sti	r4 r1 0
	add	r4 r0 r5
L_cont_21483 : 
	add	r1 r4 r18
	sti	r19 r1 0
L_cont_21480 : 
	add	r1 r4 r16
	sti	r17 r1 0
L_cont_21474 : 
	add	r1 r4 r14
	sti	r15 r1 0
	return
L_read_and_network_2046 : 
	addi	r15 r0 0
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21498
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21496
L_else_21498 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21518
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21516
L_else_21518 : 
	addi	r19 r0 2
	call	min_caml_read_int
	add	r20 r0 r4
	addi	r4 r0 -1
	bne	r20 r4 L_else_21521
	addi	r4 r0 3
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21519
L_else_21521 : 
	addi	r8 r0 3
	call	L_read_net_item_2042
	add	r1 r4 r19
	sti	r20 r1 0
L_cont_21519 : 
	add	r1 r4 r17
	sti	r18 r1 0
L_cont_21516 : 
	add	r1 r4 r15
	sti	r16 r1 0
L_cont_21496 : 
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_21500
	return
L_else_21500 : 
	addi	r5 r0 1083
	add	r1 r5 r14
	sti	r4 r1 0
	addi	r14 r14 1
	addi	r15 r0 0
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21503
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21501
L_else_21503 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21515
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21513
L_else_21515 : 
	addi	r8 r0 2
	call	L_read_net_item_2042
	add	r1 r4 r17
	sti	r18 r1 0
L_cont_21513 : 
	add	r1 r4 r15
	sti	r16 r1 0
L_cont_21501 : 
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_21505
	return
L_else_21505 : 
	addi	r5 r0 1083
	add	r1 r5 r14
	sti	r4 r1 0
	addi	r14 r14 1
	addi	r15 r0 0
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21508
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21506
L_else_21508 : 
	addi	r8 r0 1
	call	L_read_net_item_2042
	add	r1 r4 r15
	sti	r16 r1 0
L_cont_21506 : 
	ldi	r6 r4 0
	addi	r5 r0 -1
	bne	r6 r5 L_else_21510
	return
L_else_21510 : 
	addi	r5 r0 1083
	add	r1 r5 r14
	sti	r4 r1 0
	addi	r14 r14 1
	addi	r8 r0 0
	call	L_read_net_item_2042
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_21512
	return
L_else_21512 : 
	addi	r5 r0 1083
	add	r1 r5 r14
	sti	r4 r1 0
	addi	r4 r14 1
	add	r14 r0 r4
	jump	L_read_and_network_2046
L_solver_rect_surface_2050 : 
	add	r1 r6 r7
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21525
	addi	r5 r0 1
	jump	L_cont_21523
L_else_21525 : 
	addi	r5 r0 0
L_cont_21523 : 
	bne	r5 r0 L_else_21527
	ldi	r5 r4 4
	ldi	r8 r4 6
	add	r1 r6 r7
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21530
	addi	r4 r0 0
	jump	L_cont_21528
L_else_21530 : 
	addi	r4 r0 1
L_cont_21528 : 
	xor	r4 r8 r4
	add	r1 r5 r7
	fldi	f2 r1 0
	bne	r4 r0 L_else_21533
	fsub	f2 f0 f2
	jump	L_cont_21531
L_else_21533 : 
L_cont_21531 : 
	fsub	f4 f2 f4
	add	r1 r6 r7
	fldi	f2 r1 0
	fdiv	f4 f4 f2
	add	r1 r6 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_21536
	jump	L_cont_21534
L_else_21536 : 
	fsub	f2 f0 f2
L_cont_21534 : 
	add	r1 r5 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21539
	addi	r4 r0 0
	jump	L_cont_21537
L_else_21539 : 
	addi	r4 r0 1
L_cont_21537 : 
	bne	r4 r0 L_else_21541
	addi	r4 r0 0
	return
L_else_21541 : 
	add	r1 r6 r10
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21544
	jump	L_cont_21542
L_else_21544 : 
	fsub	f2 f0 f2
L_cont_21542 : 
	add	r1 r5 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21547
	addi	r4 r0 0
	jump	L_cont_21545
L_else_21547 : 
	addi	r4 r0 1
L_cont_21545 : 
	bne	r4 r0 L_else_21549
	addi	r4 r0 0
	return
L_else_21549 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	return
L_else_21527 : 
	addi	r4 r0 0
	return
L_solver_rect_2059 : 
	addi	r8 r0 0
	addi	r9 r0 1
	addi	r5 r0 2
	add	r1 r10 r8
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21553
	addi	r4 r0 1
	jump	L_cont_21551
L_else_21553 : 
	addi	r4 r0 0
L_cont_21551 : 
	bne	r4 r0 L_else_21556
	ldi	r7 r11 4
	ldi	r4 r11 6
	add	r1 r10 r8
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21621
	addi	r6 r0 0
	jump	L_cont_21619
L_else_21621 : 
	addi	r6 r0 1
L_cont_21619 : 
	xor	r4 r4 r6
	add	r1 r7 r8
	fldi	f2 r1 0
	bne	r4 r0 L_else_21624
	fsub	f2 f0 f2
	jump	L_cont_21622
L_else_21624 : 
L_cont_21622 : 
	fsub	f3 f2 f6
	add	r1 r10 r8
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r10 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21627
	jump	L_cont_21625
L_else_21627 : 
	fsub	f2 f0 f2
L_cont_21625 : 
	add	r1 r7 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21630
	addi	r4 r0 0
	jump	L_cont_21628
L_else_21630 : 
	addi	r4 r0 1
L_cont_21628 : 
	bne	r4 r0 L_else_21632
	addi	r4 r0 0
	jump	L_cont_21554
L_else_21632 : 
	add	r1 r10 r5
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21635
	jump	L_cont_21633
L_else_21635 : 
	fsub	f2 f0 f2
L_cont_21633 : 
	add	r1 r7 r5
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21638
	addi	r4 r0 0
	jump	L_cont_21636
L_else_21638 : 
	addi	r4 r0 1
L_cont_21636 : 
	bne	r4 r0 L_else_21640
	addi	r4 r0 0
	jump	L_cont_21554
L_else_21640 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21554
L_else_21556 : 
	addi	r4 r0 0
L_cont_21554 : 
	bne	r4 r0 L_else_21558
	addi	r9 r0 1
	addi	r7 r0 2
	addi	r8 r0 0
	add	r1 r10 r9
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21561
	addi	r4 r0 1
	jump	L_cont_21559
L_else_21561 : 
	addi	r4 r0 0
L_cont_21559 : 
	bne	r4 r0 L_else_21564
	ldi	r5 r11 4
	ldi	r6 r11 6
	add	r1 r10 r9
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21599
	addi	r4 r0 0
	jump	L_cont_21597
L_else_21599 : 
	addi	r4 r0 1
L_cont_21597 : 
	xor	r4 r6 r4
	add	r1 r5 r9
	fldi	f2 r1 0
	bne	r4 r0 L_else_21602
	fsub	f2 f0 f2
	jump	L_cont_21600
L_else_21602 : 
L_cont_21600 : 
	fsub	f3 f2 f5
	add	r1 r10 r9
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r10 r7
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21605
	jump	L_cont_21603
L_else_21605 : 
	fsub	f2 f0 f2
L_cont_21603 : 
	add	r1 r5 r7
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21608
	addi	r4 r0 0
	jump	L_cont_21606
L_else_21608 : 
	addi	r4 r0 1
L_cont_21606 : 
	bne	r4 r0 L_else_21610
	addi	r4 r0 0
	jump	L_cont_21562
L_else_21610 : 
	add	r1 r10 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21613
	jump	L_cont_21611
L_else_21613 : 
	fsub	f2 f0 f2
L_cont_21611 : 
	add	r1 r5 r8
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21616
	addi	r4 r0 0
	jump	L_cont_21614
L_else_21616 : 
	addi	r4 r0 1
L_cont_21614 : 
	bne	r4 r0 L_else_21618
	addi	r4 r0 0
	jump	L_cont_21562
L_else_21618 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21562
L_else_21564 : 
	addi	r4 r0 0
L_cont_21562 : 
	bne	r4 r0 L_else_21566
	addi	r7 r0 2
	addi	r9 r0 0
	addi	r6 r0 1
	add	r1 r10 r7
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21569
	addi	r4 r0 1
	jump	L_cont_21567
L_else_21569 : 
	addi	r4 r0 0
L_cont_21567 : 
	bne	r4 r0 L_else_21572
	ldi	r5 r11 4
	ldi	r8 r11 6
	add	r1 r10 r7
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21577
	addi	r4 r0 0
	jump	L_cont_21575
L_else_21577 : 
	addi	r4 r0 1
L_cont_21575 : 
	xor	r4 r8 r4
	add	r1 r5 r7
	fldi	f2 r1 0
	bne	r4 r0 L_else_21580
	fsub	f2 f0 f2
	jump	L_cont_21578
L_else_21580 : 
L_cont_21578 : 
	fsub	f3 f2 f7
	add	r1 r10 r7
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r10 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21583
	jump	L_cont_21581
L_else_21583 : 
	fsub	f2 f0 f2
L_cont_21581 : 
	add	r1 r5 r9
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21586
	addi	r4 r0 0
	jump	L_cont_21584
L_else_21586 : 
	addi	r4 r0 1
L_cont_21584 : 
	bne	r4 r0 L_else_21588
	addi	r4 r0 0
	jump	L_cont_21570
L_else_21588 : 
	add	r1 r10 r6
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21591
	jump	L_cont_21589
L_else_21591 : 
	fsub	f2 f0 f2
L_cont_21589 : 
	add	r1 r5 r6
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21594
	addi	r4 r0 0
	jump	L_cont_21592
L_else_21594 : 
	addi	r4 r0 1
L_cont_21592 : 
	bne	r4 r0 L_else_21596
	addi	r4 r0 0
	jump	L_cont_21570
L_else_21596 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21570
L_else_21572 : 
	addi	r4 r0 0
L_cont_21570 : 
	bne	r4 r0 L_else_21574
	addi	r4 r0 0
	return
L_else_21574 : 
	addi	r4 r0 3
	return
L_else_21566 : 
	addi	r4 r0 2
	return
L_else_21558 : 
	addi	r4 r0 1
	return
L_solver_second_2084 : 
	fldi	f6 r5 0
	fldi	f10 r5 1
	fldi	f5 r5 2
	fmul	f3 f6 f6
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f10 f10
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f5
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21644
	fadd	f3 f0 f2
	jump	L_cont_21642
L_else_21644 : 
	fmul	f4 f10 f5
	ldi	r4 r6 9
	fldi	f3 r4 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f5 f6
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f10
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
L_cont_21642 : 
	fbne	f3 f0 L_else_21647
	addi	r4 r0 1
	jump	L_cont_21645
L_else_21647 : 
	addi	r4 r0 0
L_cont_21645 : 
	bne	r4 r0 L_else_21649
	fldi	f11 r5 0
	fldi	f12 r5 1
	fldi	f10 r5 2
	fmul	f4 f11 f7
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f5 f4 f2
	fmul	f4 f12 f8
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f5 f2
	fmul	f5 f10 f9
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f5 f2
	fadd	f2 f4 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21652
	fadd	f4 f0 f2
	jump	L_cont_21650
L_else_21652 : 
	fmul	f5 f10 f8
	fmul	f4 f12 f9
	fadd	f5 f5 f4
	ldi	r4 r6 9
	fldi	f4 r4 0
	fmul	f6 f5 f4
	fmul	f4 f11 f9
	fmul	f5 f10 f7
	fadd	f5 f4 f5
	ldi	r4 r6 9
	fldi	f4 r4 1
	fmul	f4 f5 f4
	fadd	f6 f6 f4
	fmul	f5 f11 f8
	fmul	f4 f12 f7
	fadd	f5 f5 f4
	ldi	r4 r6 9
	fldi	f4 r4 2
	fmul	f4 f5 f4
	fadd	f4 f6 f4
	fldi	f5 r0 29
	fdiv	f4 f4 f5
	fadd	f4 f2 f4
L_cont_21650 : 
	fmul	f5 f7 f7
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f5 f5 f2
	fmul	f6 f8 f8
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f6 f2
	fadd	f6 f5 f2
	fmul	f5 f9 f9
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f5 f2
	fadd	f2 f6 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21655
	jump	L_cont_21653
L_else_21655 : 
	fmul	f6 f8 f9
	ldi	r4 r6 9
	fldi	f5 r4 0
	fmul	f5 f6 f5
	fadd	f5 f2 f5
	fmul	f6 f9 f7
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f6 f2
	fadd	f6 f5 f2
	fmul	f5 f7 f8
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f5 f2
	fadd	f2 f6 f2
L_cont_21653 : 
	ldi	r4 r6 1
	addi	r5 r0 3
	bne	r4 r5 L_else_21658
	fldi	f5 r0 20
	fsub	f2 f2 f5
	jump	L_cont_21656
L_else_21658 : 
L_cont_21656 : 
	fmul	f5 f4 f4
	fmul	f2 f3 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_21661
	addi	r4 r0 0
	jump	L_cont_21659
L_else_21661 : 
	addi	r4 r0 1
L_cont_21659 : 
	bne	r4 r0 L_else_21663
	addi	r4 r0 0
	return
L_else_21663 : 
	fsqrt	f2 f2
	ldi	r4 r6 6
	bne	r4 r0 L_else_21666
	fsub	f2 f0 f2
	jump	L_cont_21664
L_else_21666 : 
L_cont_21664 : 
	fsub	f2 f2 f4
	fdiv	f2 f2 f3
	fsti	f2 r0 1073
	addi	r4 r0 1
	return
L_else_21649 : 
	addi	r4 r0 0
	return
L_solver_rect_fast_2094 : 
	fldi	f2 r6 0
	fsub	f3 f2 f6
	fldi	f2 r6 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21670
	jump	L_cont_21668
L_else_21670 : 
	fsub	f2 f0 f2
L_cont_21668 : 
	ldi	r4 r8 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_21673
	addi	r4 r0 0
	jump	L_cont_21671
L_else_21673 : 
	addi	r4 r0 1
L_cont_21671 : 
	bne	r4 r0 L_else_21676
	addi	r4 r0 0
	jump	L_cont_21674
L_else_21676 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21725
	jump	L_cont_21723
L_else_21725 : 
	fsub	f2 f0 f2
L_cont_21723 : 
	ldi	r4 r8 4
	fldi	f3 r4 2
	fbgt	f3 f2 L_else_21728
	addi	r4 r0 0
	jump	L_cont_21726
L_else_21728 : 
	addi	r4 r0 1
L_cont_21726 : 
	bne	r4 r0 L_else_21730
	addi	r4 r0 0
	jump	L_cont_21674
L_else_21730 : 
	addi	r5 r0 1
	fldi	f2 r6 1
	fbne	f2 f0 L_else_21733
	addi	r4 r0 1
	jump	L_cont_21731
L_else_21733 : 
	addi	r4 r0 0
L_cont_21731 : 
	sub	r4 r5 r4
L_cont_21674 : 
	bne	r4 r0 L_else_21678
	fldi	f2 r6 2
	fsub	f3 f2 f5
	fldi	f2 r6 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21681
	jump	L_cont_21679
L_else_21681 : 
	fsub	f2 f0 f2
L_cont_21679 : 
	ldi	r4 r8 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_21684
	addi	r4 r0 0
	jump	L_cont_21682
L_else_21684 : 
	addi	r4 r0 1
L_cont_21682 : 
	bne	r4 r0 L_else_21687
	addi	r4 r0 0
	jump	L_cont_21685
L_else_21687 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21714
	jump	L_cont_21712
L_else_21714 : 
	fsub	f2 f0 f2
L_cont_21712 : 
	ldi	r4 r8 4
	fldi	f3 r4 2
	fbgt	f3 f2 L_else_21717
	addi	r4 r0 0
	jump	L_cont_21715
L_else_21717 : 
	addi	r4 r0 1
L_cont_21715 : 
	bne	r4 r0 L_else_21719
	addi	r4 r0 0
	jump	L_cont_21685
L_else_21719 : 
	addi	r5 r0 1
	fldi	f2 r6 3
	fbne	f2 f0 L_else_21722
	addi	r4 r0 1
	jump	L_cont_21720
L_else_21722 : 
	addi	r4 r0 0
L_cont_21720 : 
	sub	r4 r5 r4
L_cont_21685 : 
	bne	r4 r0 L_else_21689
	fldi	f2 r6 4
	fsub	f3 f2 f7
	fldi	f2 r6 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21692
	jump	L_cont_21690
L_else_21692 : 
	fsub	f2 f0 f2
L_cont_21690 : 
	ldi	r4 r8 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_21695
	addi	r4 r0 0
	jump	L_cont_21693
L_else_21695 : 
	addi	r4 r0 1
L_cont_21693 : 
	bne	r4 r0 L_else_21698
	addi	r4 r0 0
	jump	L_cont_21696
L_else_21698 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21703
	jump	L_cont_21701
L_else_21703 : 
	fsub	f2 f0 f2
L_cont_21701 : 
	ldi	r4 r8 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_21706
	addi	r4 r0 0
	jump	L_cont_21704
L_else_21706 : 
	addi	r4 r0 1
L_cont_21704 : 
	bne	r4 r0 L_else_21708
	addi	r4 r0 0
	jump	L_cont_21696
L_else_21708 : 
	addi	r4 r0 1
	fldi	f2 r6 5
	fbne	f2 f0 L_else_21711
	addi	r5 r0 1
	jump	L_cont_21709
L_else_21711 : 
	addi	r5 r0 0
L_cont_21709 : 
	sub	r4 r4 r5
L_cont_21696 : 
	bne	r4 r0 L_else_21700
	addi	r4 r0 0
	return
L_else_21700 : 
	fsti	f4 r0 1073
	addi	r4 r0 3
	return
L_else_21689 : 
	fsti	f4 r0 1073
	addi	r4 r0 2
	return
L_else_21678 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	return
L_solver_second_fast_2107 : 
	fldi	f6 r6 0
	fbne	f6 f0 L_else_21737
	addi	r4 r0 1
	jump	L_cont_21735
L_else_21737 : 
	addi	r4 r0 0
L_cont_21735 : 
	bne	r4 r0 L_else_21739
	fldi	f2 r6 1
	fmul	f3 f2 f8
	fldi	f2 r6 2
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f9
	fadd	f5 f3 f2
	fmul	f3 f8 f8
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f7 f7
	ldi	r4 r7 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r4 r7 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r4 r7 3
	bne	r4 r0 L_else_21742
	jump	L_cont_21740
L_else_21742 : 
	fmul	f4 f7 f9
	ldi	r4 r7 9
	fldi	f3 r4 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f8
	ldi	r4 r7 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f8 f7
	ldi	r4 r7 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_21740 : 
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_21745
	fldi	f3 r0 20
	fsub	f2 f2 f3
	jump	L_cont_21743
L_else_21745 : 
L_cont_21743 : 
	fmul	f3 f5 f5
	fmul	f2 f6 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_21748
	addi	r4 r0 0
	jump	L_cont_21746
L_else_21748 : 
	addi	r4 r0 1
L_cont_21746 : 
	bne	r4 r0 L_else_21750
	addi	r4 r0 0
	return
L_else_21750 : 
	ldi	r4 r7 6
	bne	r4 r0 L_else_21753
	fsqrt	f2 f2
	fsub	f2 f5 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_21751
L_else_21753 : 
	fsqrt	f2 f2
	fadd	f2 f5 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_21751 : 
	addi	r4 r0 1
	return
L_else_21739 : 
	addi	r4 r0 0
	return
L_solver_fast_2113 : 
	addi	r4 r0 1970
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
	bne	r5 r4 L_else_21756
	ldi	r7 r7 0
	jump	L_solver_rect_fast_2094
L_else_21756 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21758
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_21761
	addi	r4 r0 0
	jump	L_cont_21759
L_else_21761 : 
	addi	r4 r0 1
L_cont_21759 : 
	bne	r4 r0 L_else_21763
	addi	r4 r0 0
	return
L_else_21763 : 
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
	return
L_else_21758 : 
	fldi	f9 r6 0
	fbne	f9 f0 L_else_21766
	addi	r4 r0 1
	jump	L_cont_21764
L_else_21766 : 
	addi	r4 r0 0
L_cont_21764 : 
	bne	r4 r0 L_else_21768
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f8 f3 f2
	fmul	f3 f6 f6
	ldi	r4 r8 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r4 r8 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f7
	ldi	r4 r8 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r4 r8 3
	bne	r4 r0 L_else_21771
	jump	L_cont_21769
L_else_21771 : 
	fmul	f4 f5 f7
	ldi	r4 r8 9
	fldi	f3 r4 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f7 f6
	ldi	r4 r8 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f6 f5
	ldi	r4 r8 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_21769 : 
	ldi	r4 r8 1
	addi	r5 r0 3
	bne	r4 r5 L_else_21774
	fldi	f3 r0 20
	fsub	f2 f2 f3
	jump	L_cont_21772
L_else_21774 : 
L_cont_21772 : 
	fmul	f3 f8 f8
	fmul	f2 f9 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_21777
	addi	r4 r0 0
	jump	L_cont_21775
L_else_21777 : 
	addi	r4 r0 1
L_cont_21775 : 
	bne	r4 r0 L_else_21779
	addi	r4 r0 0
	return
L_else_21779 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_21782
	fsqrt	f2 f2
	fsub	f2 f8 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_21780
L_else_21782 : 
	fsqrt	f2 f2
	fadd	f2 f8 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_21780 : 
	addi	r4 r0 1
	return
L_else_21768 : 
	addi	r4 r0 0
	return
L_solver_fast2_2131 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r8 r1 0
	ldi	r7 r8 10
	fldi	f6 r7 0
	fldi	f5 r7 1
	fldi	f7 r7 2
	ldi	r4 r9 1
	add	r1 r4 r5
	ldi	r6 r1 0
	ldi	r4 r8 1
	addi	r5 r0 1
	bne	r4 r5 L_else_21785
	ldi	r7 r9 0
	jump	L_solver_rect_fast_2094
L_else_21785 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_21787
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_21790
	addi	r4 r0 0
	jump	L_cont_21788
L_else_21790 : 
	addi	r4 r0 1
L_cont_21788 : 
	bne	r4 r0 L_else_21792
	addi	r4 r0 0
	return
L_else_21792 : 
	fldi	f2 r6 0
	fldi	f3 r7 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r4 r0 1
	return
L_else_21787 : 
	fldi	f8 r6 0
	fbne	f8 f0 L_else_21795
	addi	r4 r0 1
	jump	L_cont_21793
L_else_21795 : 
	addi	r4 r0 0
L_cont_21793 : 
	bne	r4 r0 L_else_21797
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r7 3
	fmul	f3 f4 f4
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_21800
	addi	r4 r0 0
	jump	L_cont_21798
L_else_21800 : 
	addi	r4 r0 1
L_cont_21798 : 
	bne	r4 r0 L_else_21802
	addi	r4 r0 0
	return
L_else_21802 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_21805
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_21803
L_else_21805 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_21803 : 
	addi	r4 r0 1
	return
L_else_21797 : 
	addi	r4 r0 0
	return
L_setup_rect_table_2134 : 
	addi	r4 r0 6
	fldi	f2 r0 26
	call	min_caml_create_float_array
	fldi	f2 r8 0
	fbne	f2 f0 L_else_21809
	addi	r5 r0 1
	jump	L_cont_21807
L_else_21809 : 
	addi	r5 r0 0
L_cont_21807 : 
	bne	r5 r0 L_else_21812
	ldi	r7 r6 6
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_21839
	addi	r5 r0 0
	jump	L_cont_21837
L_else_21839 : 
	addi	r5 r0 1
L_cont_21837 : 
	xor	r7 r7 r5
	ldi	r5 r6 4
	fldi	f2 r5 0
	bne	r7 r0 L_else_21842
	fsub	f2 f0 f2
	jump	L_cont_21840
L_else_21842 : 
L_cont_21840 : 
	fsti	f2 r4 0
	fldi	f2 r0 20
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	fsti	f2 r4 1
	jump	L_cont_21810
L_else_21812 : 
	fldi	f2 r0 26
	fsti	f2 r4 1
L_cont_21810 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_21815
	addi	r5 r0 1
	jump	L_cont_21813
L_else_21815 : 
	addi	r5 r0 0
L_cont_21813 : 
	bne	r5 r0 L_else_21818
	ldi	r7 r6 6
	fldi	f2 r8 1
	fbgt	f0 f2 L_else_21833
	addi	r5 r0 0
	jump	L_cont_21831
L_else_21833 : 
	addi	r5 r0 1
L_cont_21831 : 
	xor	r7 r7 r5
	ldi	r5 r6 4
	fldi	f2 r5 1
	bne	r7 r0 L_else_21836
	fsub	f2 f0 f2
	jump	L_cont_21834
L_else_21836 : 
L_cont_21834 : 
	fsti	f2 r4 2
	fldi	f3 r0 20
	fldi	f2 r8 1
	fdiv	f2 f3 f2
	fsti	f2 r4 3
	jump	L_cont_21816
L_else_21818 : 
	fldi	f2 r0 26
	fsti	f2 r4 3
L_cont_21816 : 
	fldi	f2 r8 2
	fbne	f2 f0 L_else_21821
	addi	r5 r0 1
	jump	L_cont_21819
L_else_21821 : 
	addi	r5 r0 0
L_cont_21819 : 
	bne	r5 r0 L_else_21824
	ldi	r7 r6 6
	fldi	f2 r8 2
	fbgt	f0 f2 L_else_21827
	addi	r5 r0 0
	jump	L_cont_21825
L_else_21827 : 
	addi	r5 r0 1
L_cont_21825 : 
	xor	r7 r7 r5
	ldi	r5 r6 4
	fldi	f2 r5 2
	bne	r7 r0 L_else_21830
	fsub	f2 f0 f2
	jump	L_cont_21828
L_else_21830 : 
L_cont_21828 : 
	fsti	f2 r4 4
	fldi	f3 r0 20
	fldi	f2 r8 2
	fdiv	f2 f3 f2
	fsti	f2 r4 5
	jump	L_cont_21822
L_else_21824 : 
	fldi	f2 r0 26
	fsti	f2 r4 5
L_cont_21822 : 
	return
L_setup_surface_table_2137 : 
	addi	r4 r0 4
	fldi	f2 r0 26
	call	min_caml_create_float_array
	fldi	f3 r8 0
	ldi	r5 r6 4
	fldi	f2 r5 0
	fmul	f4 f3 f2
	fldi	f3 r8 1
	ldi	r5 r6 4
	fldi	f2 r5 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fldi	f4 r8 2
	ldi	r5 r6 4
	fldi	f2 r5 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f3 f0 L_else_21846
	addi	r5 r0 0
	jump	L_cont_21844
L_else_21846 : 
	addi	r5 r0 1
L_cont_21844 : 
	bne	r5 r0 L_else_21849
	fldi	f2 r0 26
	fsti	f2 r4 0
	jump	L_cont_21847
L_else_21849 : 
	fldi	f2 r0 28
	fdiv	f2 f2 f3
	fsti	f2 r4 0
	ldi	r5 r6 4
	fldi	f2 r5 0
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r4 1
	ldi	r5 r6 4
	fldi	f2 r5 1
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r4 2
	ldi	r5 r6 4
	fldi	f2 r5 2
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r4 3
L_cont_21847 : 
	return
L_setup_second_table_2140 : 
	addi	r4 r0 5
	fldi	f2 r0 26
	call	min_caml_create_float_array
	fldi	f7 r8 0
	fldi	f6 r8 1
	fldi	f5 r8 2
	fmul	f3 f7 f7
	ldi	r5 r6 4
	fldi	f2 r5 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r5 r6 4
	fldi	f2 r5 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f5
	ldi	r5 r6 4
	fldi	f2 r5 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r5 r6 3
	bne	r5 r0 L_else_21853
	jump	L_cont_21851
L_else_21853 : 
	fmul	f4 f6 f5
	ldi	r5 r6 9
	fldi	f3 r5 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f5 f7
	ldi	r5 r6 9
	fldi	f2 r5 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f6
	ldi	r5 r6 9
	fldi	f2 r5 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont_21851 : 
	fldi	f4 r8 0
	ldi	r5 r6 4
	fldi	f3 r5 0
	fmul	f3 f4 f3
	fsub	f8 f0 f3
	fldi	f4 r8 1
	ldi	r5 r6 4
	fldi	f3 r5 1
	fmul	f3 f4 f3
	fsub	f7 f0 f3
	fldi	f4 r8 2
	ldi	r5 r6 4
	fldi	f3 r5 2
	fmul	f3 f4 f3
	fsub	f6 f0 f3
	fsti	f2 r4 0
	ldi	r5 r6 3
	bne	r5 r0 L_else_21856
	fsti	f8 r4 1
	fsti	f7 r4 2
	fsti	f6 r4 3
	jump	L_cont_21854
L_else_21856 : 
	fldi	f4 r8 2
	ldi	r5 r6 9
	fldi	f3 r5 1
	fmul	f5 f4 f3
	fldi	f4 r8 1
	ldi	r5 r6 9
	fldi	f3 r5 2
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f8 f3
	fsti	f3 r4 1
	fldi	f4 r8 2
	ldi	r5 r6 9
	fldi	f3 r5 0
	fmul	f4 f4 f3
	fldi	f5 r8 0
	ldi	r5 r6 9
	fldi	f3 r5 2
	fmul	f3 f5 f3
	fadd	f4 f4 f3
	fldi	f3 r0 29
	fdiv	f3 f4 f3
	fsub	f3 f7 f3
	fsti	f3 r4 2
	fldi	f4 r8 1
	ldi	r5 r6 9
	fldi	f3 r5 0
	fmul	f5 f4 f3
	fldi	f4 r8 0
	ldi	r5 r6 9
	fldi	f3 r5 1
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f6 f3
	fsti	f3 r4 3
L_cont_21854 : 
	fbne	f2 f0 L_else_21859
	addi	r5 r0 1
	jump	L_cont_21857
L_else_21859 : 
	addi	r5 r0 0
L_cont_21857 : 
	bne	r5 r0 L_else_21862
	fldi	f3 r0 20
	fdiv	f2 f3 f2
	fsti	f2 r4 4
	jump	L_cont_21860
L_else_21862 : 
L_cont_21860 : 
	return
L_iter_setup_dirvec_constants_2143 : 
	bgt	r0 r10 L_else_21865
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r11 r1 0
	ldi	r6 r9 1
	ldi	r8 r9 0
	ldi	r5 r11 1
	addi	r4 r0 1
	bne	r5 r4 L_else_21868
	addi	r4 r0 6
	fldi	f2 r0 26
	call	min_caml_create_float_array
	fldi	f2 r8 0
	fbne	f2 f0 L_else_21878
	addi	r5 r0 1
	jump	L_cont_21876
L_else_21878 : 
	addi	r5 r0 0
L_cont_21876 : 
	bne	r5 r0 L_else_21881
	ldi	r7 r11 6
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_21908
	addi	r5 r0 0
	jump	L_cont_21906
L_else_21908 : 
	addi	r5 r0 1
L_cont_21906 : 
	xor	r7 r7 r5
	ldi	r5 r11 4
	fldi	f2 r5 0
	bne	r7 r0 L_else_21911
	fsub	f2 f0 f2
	jump	L_cont_21909
L_else_21911 : 
L_cont_21909 : 
	fsti	f2 r4 0
	fldi	f3 r0 20
	fldi	f2 r8 0
	fdiv	f2 f3 f2
	fsti	f2 r4 1
	jump	L_cont_21879
L_else_21881 : 
	fldi	f2 r0 26
	fsti	f2 r4 1
L_cont_21879 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_21884
	addi	r5 r0 1
	jump	L_cont_21882
L_else_21884 : 
	addi	r5 r0 0
L_cont_21882 : 
	bne	r5 r0 L_else_21887
	ldi	r5 r11 6
	fldi	f2 r8 1
	fbgt	f0 f2 L_else_21902
	addi	r7 r0 0
	jump	L_cont_21900
L_else_21902 : 
	addi	r7 r0 1
L_cont_21900 : 
	xor	r5 r5 r7
	ldi	r7 r11 4
	fldi	f2 r7 1
	bne	r5 r0 L_else_21905
	fsub	f2 f0 f2
	jump	L_cont_21903
L_else_21905 : 
L_cont_21903 : 
	fsti	f2 r4 2
	fldi	f3 r0 20
	fldi	f2 r8 1
	fdiv	f2 f3 f2
	fsti	f2 r4 3
	jump	L_cont_21885
L_else_21887 : 
	fldi	f2 r0 26
	fsti	f2 r4 3
L_cont_21885 : 
	fldi	f2 r8 2
	fbne	f2 f0 L_else_21890
	addi	r5 r0 1
	jump	L_cont_21888
L_else_21890 : 
	addi	r5 r0 0
L_cont_21888 : 
	bne	r5 r0 L_else_21893
	ldi	r7 r11 6
	fldi	f2 r8 2
	fbgt	f0 f2 L_else_21896
	addi	r5 r0 0
	jump	L_cont_21894
L_else_21896 : 
	addi	r5 r0 1
L_cont_21894 : 
	xor	r7 r7 r5
	ldi	r5 r11 4
	fldi	f2 r5 2
	bne	r7 r0 L_else_21899
	fsub	f2 f0 f2
	jump	L_cont_21897
L_else_21899 : 
L_cont_21897 : 
	fsti	f2 r4 4
	fldi	f3 r0 20
	fldi	f2 r8 2
	fdiv	f2 f3 f2
	fsti	f2 r4 5
	jump	L_cont_21891
L_else_21893 : 
	fldi	f2 r0 26
	fsti	f2 r4 5
L_cont_21891 : 
	add	r1 r6 r10
	sti	r4 r1 0
	jump	L_cont_21866
L_else_21868 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21913
	addi	r4 r0 4
	fldi	f2 r0 26
	call	min_caml_create_float_array
	fldi	f3 r8 0
	ldi	r5 r11 4
	fldi	f2 r5 0
	fmul	f4 f3 f2
	fldi	f3 r8 1
	ldi	r5 r11 4
	fldi	f2 r5 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fldi	f4 r8 2
	ldi	r5 r11 4
	fldi	f2 r5 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f3 f0 L_else_21916
	addi	r5 r0 0
	jump	L_cont_21914
L_else_21916 : 
	addi	r5 r0 1
L_cont_21914 : 
	bne	r5 r0 L_else_21919
	fldi	f2 r0 26
	fsti	f2 r4 0
	jump	L_cont_21917
L_else_21919 : 
	fldi	f2 r0 28
	fdiv	f2 f2 f3
	fsti	f2 r4 0
	ldi	r5 r11 4
	fldi	f2 r5 0
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r4 1
	ldi	r5 r11 4
	fldi	f2 r5 1
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r4 2
	ldi	r5 r11 4
	fldi	f2 r5 2
	fdiv	f2 f2 f3
	fsub	f2 f0 f2
	fsti	f2 r4 3
L_cont_21917 : 
	add	r1 r6 r10
	sti	r4 r1 0
	jump	L_cont_21866
L_else_21913 : 
	addi	r4 r0 5
	fldi	f2 r0 26
	call	min_caml_create_float_array
	fldi	f6 r8 0
	fldi	f7 r8 1
	fldi	f5 r8 2
	fmul	f3 f6 f6
	ldi	r5 r11 4
	fldi	f2 r5 0
	fmul	f4 f3 f2
	fmul	f3 f7 f7
	ldi	r5 r11 4
	fldi	f2 r5 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f5
	ldi	r5 r11 4
	fldi	f2 r5 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r5 r11 3
	bne	r5 r0 L_else_21922
	jump	L_cont_21920
L_else_21922 : 
	fmul	f4 f7 f5
	ldi	r5 r11 9
	fldi	f3 r5 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f5 f6
	ldi	r5 r11 9
	fldi	f2 r5 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f7
	ldi	r5 r11 9
	fldi	f2 r5 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_21920 : 
	fldi	f4 r8 0
	ldi	r5 r11 4
	fldi	f3 r5 0
	fmul	f3 f4 f3
	fsub	f8 f0 f3
	fldi	f4 r8 1
	ldi	r5 r11 4
	fldi	f3 r5 1
	fmul	f3 f4 f3
	fsub	f7 f0 f3
	fldi	f4 r8 2
	ldi	r5 r11 4
	fldi	f3 r5 2
	fmul	f3 f4 f3
	fsub	f6 f0 f3
	fsti	f2 r4 0
	ldi	r5 r11 3
	bne	r5 r0 L_else_21925
	fsti	f8 r4 1
	fsti	f7 r4 2
	fsti	f6 r4 3
	jump	L_cont_21923
L_else_21925 : 
	fldi	f4 r8 2
	ldi	r5 r11 9
	fldi	f3 r5 1
	fmul	f5 f4 f3
	fldi	f4 r8 1
	ldi	r5 r11 9
	fldi	f3 r5 2
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f8 f3
	fsti	f3 r4 1
	fldi	f4 r8 2
	ldi	r5 r11 9
	fldi	f3 r5 0
	fmul	f4 f4 f3
	fldi	f5 r8 0
	ldi	r5 r11 9
	fldi	f3 r5 2
	fmul	f3 f5 f3
	fadd	f4 f4 f3
	fldi	f3 r0 29
	fdiv	f3 f4 f3
	fsub	f3 f7 f3
	fsti	f3 r4 2
	fldi	f4 r8 1
	ldi	r5 r11 9
	fldi	f3 r5 0
	fmul	f5 f4 f3
	fldi	f4 r8 0
	ldi	r5 r11 9
	fldi	f3 r5 1
	fmul	f3 f4 f3
	fadd	f3 f5 f3
	fldi	f4 r0 29
	fdiv	f3 f3 f4
	fsub	f3 f6 f3
	fsti	f3 r4 3
L_cont_21923 : 
	fbne	f2 f0 L_else_21928
	addi	r5 r0 1
	jump	L_cont_21926
L_else_21928 : 
	addi	r5 r0 0
L_cont_21926 : 
	bne	r5 r0 L_else_21931
	fldi	f3 r0 20
	fdiv	f2 f3 f2
	fsti	f2 r4 4
	jump	L_cont_21929
L_else_21931 : 
L_cont_21929 : 
	add	r1 r6 r10
	sti	r4 r1 0
L_cont_21866 : 
	addi	r10 r10 -1
	bgt	r0 r10 L_else_21870
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r11 r9 1
	ldi	r8 r9 0
	ldi	r4 r6 1
	addi	r5 r0 1
	bne	r4 r5 L_else_21873
	call	L_setup_rect_table_2134
	add	r1 r11 r10
	sti	r4 r1 0
	jump	L_cont_21871
L_else_21873 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_21875
	call	L_setup_surface_table_2137
	add	r1 r11 r10
	sti	r4 r1 0
	jump	L_cont_21871
L_else_21875 : 
	call	L_setup_second_table_2140
	add	r1 r11 r10
	sti	r4 r1 0
L_cont_21871 : 
	addi	r4 r10 -1
	add	r10 r0 r4
	jump	L_iter_setup_dirvec_constants_2143
L_else_21870 : 
	return
L_else_21865 : 
	return
L_setup_startp_constants_2148 : 
	bgt	r0 r8 L_else_21934
	addi	r4 r0 1970
	add	r1 r4 r8
	ldi	r6 r1 0
	ldi	r7 r6 10
	ldi	r5 r6 1
	fldi	f3 r9 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f2 f3 f2
	fsti	f2 r7 0
	fldi	f3 r9 1
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f2 f3 f2
	fsti	f2 r7 1
	fldi	f3 r9 2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f2 f3 f2
	fsti	f2 r7 2
	addi	r4 r0 2
	bne	r5 r4 L_else_21937
	ldi	r4 r6 4
	fldi	f3 r7 0
	fldi	f5 r7 1
	fldi	f4 r7 2
	fldi	f2 r4 0
	fmul	f3 f2 f3
	fldi	f2 r4 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r7 3
	jump	L_cont_21935
L_else_21937 : 
	addi	r4 r0 2
	bgt	r5 r4 L_else_21939
	jump	L_cont_21935
L_else_21939 : 
	fldi	f6 r7 0
	fldi	f7 r7 1
	fldi	f5 r7 2
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
	fadd	f2 f4 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21942
	jump	L_cont_21940
L_else_21942 : 
	fmul	f4 f7 f5
	ldi	r4 r6 9
	fldi	f3 r4 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f5 f6
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f7
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_21940 : 
	addi	r4 r0 3
	bne	r5 r4 L_else_21945
	fldi	f3 r0 20
	fsub	f2 f2 f3
	jump	L_cont_21943
L_else_21945 : 
L_cont_21943 : 
	fsti	f2 r7 3
L_cont_21935 : 
	addi	r4 r8 -1
	add	r8 r0 r4
	jump	L_setup_startp_constants_2148
L_else_21934 : 
	return
L_is_second_outside_2163 : 
	fmul	f3 f5 f5
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f6 f6
	ldi	r4 r7 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f7
	ldi	r4 r7 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	ldi	r4 r7 3
	bne	r4 r0 L_else_21949
	jump	L_cont_21947
L_else_21949 : 
	fmul	f4 f6 f7
	ldi	r4 r7 9
	fldi	f3 r4 0
	fmul	f3 f4 f3
	fadd	f3 f2 f3
	fmul	f4 f7 f5
	ldi	r4 r7 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f5 f6
	ldi	r4 r7 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_21947 : 
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_21952
	fldi	f3 r0 20
	fsub	f2 f2 f3
	jump	L_cont_21950
L_else_21952 : 
L_cont_21950 : 
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_21955
	addi	r4 r0 0
	jump	L_cont_21953
L_else_21955 : 
	addi	r4 r0 1
L_cont_21953 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	return
L_is_outside_2168 : 
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f5 f3 f2
	ldi	r4 r7 5
	fldi	f2 r4 1
	fsub	f4 f4 f2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f3 f6 f2
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_21958
	fbgt	f0 f5 L_else_21961
	fadd	f2 f0 f5
	jump	L_cont_21959
L_else_21961 : 
	fsub	f2 f0 f5
L_cont_21959 : 
	ldi	r4 r7 4
	fldi	f5 r4 0
	fbgt	f5 f2 L_else_21964
	addi	r4 r0 0
	jump	L_cont_21962
L_else_21964 : 
	addi	r4 r0 1
L_cont_21962 : 
	bne	r4 r0 L_else_21967
	addi	r4 r0 0
	jump	L_cont_21965
L_else_21967 : 
	fbgt	f0 f4 L_else_21972
	fadd	f2 f0 f4
	jump	L_cont_21970
L_else_21972 : 
	fsub	f2 f0 f4
L_cont_21970 : 
	ldi	r4 r7 4
	fldi	f4 r4 1
	fbgt	f4 f2 L_else_21975
	addi	r4 r0 0
	jump	L_cont_21973
L_else_21975 : 
	addi	r4 r0 1
L_cont_21973 : 
	bne	r4 r0 L_else_21977
	addi	r4 r0 0
	jump	L_cont_21965
L_else_21977 : 
	fbgt	f0 f3 L_else_21980
	fadd	f2 f0 f3
	jump	L_cont_21978
L_else_21980 : 
	fsub	f2 f0 f3
L_cont_21978 : 
	ldi	r4 r7 4
	fldi	f3 r4 2
	fbgt	f3 f2 L_else_21982
	addi	r4 r0 0
	jump	L_cont_21965
L_else_21982 : 
	addi	r4 r0 1
L_cont_21965 : 
	bne	r4 r0 L_else_21969
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	return
L_else_21969 : 
	ldi	r4 r7 6
	return
L_else_21958 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21984
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f5 f2 f5
	fldi	f2 r4 1
	fmul	f2 f2 f4
	fadd	f4 f5 f2
	fldi	f2 r4 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_21987
	addi	r4 r0 0
	jump	L_cont_21985
L_else_21987 : 
	addi	r4 r0 1
L_cont_21985 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	return
L_else_21984 : 
	fmul	f6 f5 f5
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f6 f6 f2
	fmul	f7 f4 f4
	ldi	r4 r7 4
	fldi	f2 r4 1
	fmul	f2 f7 f2
	fadd	f7 f6 f2
	fmul	f6 f3 f3
	ldi	r4 r7 4
	fldi	f2 r4 2
	fmul	f2 f6 f2
	fadd	f2 f7 f2
	ldi	r4 r7 3
	bne	r4 r0 L_else_21990
	jump	L_cont_21988
L_else_21990 : 
	fmul	f7 f4 f3
	ldi	r4 r7 9
	fldi	f6 r4 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f3 f3 f5
	ldi	r4 r7 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f6 f6 f2
	fmul	f2 f5 f4
	ldi	r4 r7 9
	fldi	f3 r4 2
	fmul	f2 f2 f3
	fadd	f2 f6 f2
L_cont_21988 : 
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_21993
	fldi	f3 r0 20
	fsub	f2 f2 f3
	jump	L_cont_21991
L_else_21993 : 
L_cont_21991 : 
	addi	r6 r0 1
	ldi	r4 r7 6
	fbgt	f0 f2 L_else_21996
	addi	r5 r0 0
	jump	L_cont_21994
L_else_21996 : 
	addi	r5 r0 1
L_cont_21994 : 
	xor	r4 r4 r5
	sub	r4 r6 r4
	return
L_check_all_inside_2173 : 
	add	r1 r8 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21999
	addi	r4 r0 1
	return
L_else_21999 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r9 r1 0
	ldi	r4 r9 5
	fldi	f2 r4 0
	fsub	f3 f10 f2
	ldi	r4 r9 5
	fldi	f2 r4 1
	fsub	f5 f9 f2
	ldi	r4 r9 5
	fldi	f2 r4 2
	fsub	f4 f8 f2
	ldi	r5 r9 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22002
	fbgt	f0 f3 L_else_22051
	fadd	f2 f0 f3
	jump	L_cont_22049
L_else_22051 : 
	fsub	f2 f0 f3
L_cont_22049 : 
	ldi	r4 r9 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_22054
	addi	r4 r0 0
	jump	L_cont_22052
L_else_22054 : 
	addi	r4 r0 1
L_cont_22052 : 
	bne	r4 r0 L_else_22057
	addi	r4 r0 0
	jump	L_cont_22055
L_else_22057 : 
	fbgt	f0 f5 L_else_22062
	fadd	f2 f0 f5
	jump	L_cont_22060
L_else_22062 : 
	fsub	f2 f0 f5
L_cont_22060 : 
	ldi	r4 r9 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_22065
	addi	r4 r0 0
	jump	L_cont_22063
L_else_22065 : 
	addi	r4 r0 1
L_cont_22063 : 
	bne	r4 r0 L_else_22067
	addi	r4 r0 0
	jump	L_cont_22055
L_else_22067 : 
	fbgt	f0 f4 L_else_22070
	fadd	f2 f0 f4
	jump	L_cont_22068
L_else_22070 : 
	fsub	f2 f0 f4
L_cont_22068 : 
	ldi	r4 r9 4
	fldi	f3 r4 2
	fbgt	f3 f2 L_else_22072
	addi	r4 r0 0
	jump	L_cont_22055
L_else_22072 : 
	addi	r4 r0 1
L_cont_22055 : 
	bne	r4 r0 L_else_22059
	addi	r5 r0 1
	ldi	r4 r9 6
	sub	r4 r5 r4
	jump	L_cont_22000
L_else_22059 : 
	ldi	r4 r9 6
	jump	L_cont_22000
L_else_22002 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22074
	ldi	r4 r9 4
	fldi	f2 r4 0
	fmul	f3 f2 f3
	fldi	f2 r4 1
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	addi	r5 r0 1
	ldi	r6 r9 6
	fbgt	f0 f2 L_else_22077
	addi	r4 r0 0
	jump	L_cont_22075
L_else_22077 : 
	addi	r4 r0 1
L_cont_22075 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_22000
L_else_22074 : 
	fmul	f6 f3 f3
	ldi	r4 r9 4
	fldi	f2 r4 0
	fmul	f7 f6 f2
	fmul	f6 f5 f5
	ldi	r4 r9 4
	fldi	f2 r4 1
	fmul	f2 f6 f2
	fadd	f6 f7 f2
	fmul	f7 f4 f4
	ldi	r4 r9 4
	fldi	f2 r4 2
	fmul	f2 f7 f2
	fadd	f2 f6 f2
	ldi	r4 r9 3
	bne	r4 r0 L_else_22080
	jump	L_cont_22078
L_else_22080 : 
	fmul	f7 f5 f4
	ldi	r4 r9 9
	fldi	f6 r4 0
	fmul	f6 f7 f6
	fadd	f6 f2 f6
	fmul	f4 f4 f3
	ldi	r4 r9 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f6 f2
	fmul	f3 f3 f5
	ldi	r4 r9 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
L_cont_22078 : 
	ldi	r4 r9 1
	addi	r5 r0 3
	bne	r4 r5 L_else_22083
	fldi	f3 r0 20
	fsub	f2 f2 f3
	jump	L_cont_22081
L_else_22083 : 
L_cont_22081 : 
	addi	r6 r0 1
	ldi	r5 r9 6
	fbgt	f0 f2 L_else_22086
	addi	r4 r0 0
	jump	L_cont_22084
L_else_22086 : 
	addi	r4 r0 1
L_cont_22084 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
L_cont_22000 : 
	bne	r4 r0 L_else_22004
	addi	r9 r7 1
	add	r1 r8 r9
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22006
	addi	r4 r0 1
	return
L_else_22006 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f10
	fadd	f4 f0 f9
	fadd	f6 f0 f8
	call	L_is_outside_2168
	bne	r4 r0 L_else_22008
	addi	r9 r9 1
	add	r1 r8 r9
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22010
	addi	r4 r0 1
	return
L_else_22010 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f5 f10 f2
	ldi	r4 r7 5
	fldi	f2 r4 1
	fsub	f6 f9 f2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f7 f8 f2
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22013
	fbgt	f0 f5 L_else_22022
	jump	L_cont_22020
L_else_22022 : 
	fsub	f5 f0 f5
L_cont_22020 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f5 L_else_22025
	addi	r4 r0 0
	jump	L_cont_22023
L_else_22025 : 
	addi	r4 r0 1
L_cont_22023 : 
	bne	r4 r0 L_else_22028
	addi	r4 r0 0
	jump	L_cont_22026
L_else_22028 : 
	fbgt	f0 f6 L_else_22033
	jump	L_cont_22031
L_else_22033 : 
	fsub	f6 f0 f6
L_cont_22031 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f6 L_else_22036
	addi	r4 r0 0
	jump	L_cont_22034
L_else_22036 : 
	addi	r4 r0 1
L_cont_22034 : 
	bne	r4 r0 L_else_22038
	addi	r4 r0 0
	jump	L_cont_22026
L_else_22038 : 
	fbgt	f0 f7 L_else_22041
	jump	L_cont_22039
L_else_22041 : 
	fsub	f7 f0 f7
L_cont_22039 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f7 L_else_22043
	addi	r4 r0 0
	jump	L_cont_22026
L_else_22043 : 
	addi	r4 r0 1
L_cont_22026 : 
	bne	r4 r0 L_else_22030
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	jump	L_cont_22011
L_else_22030 : 
	ldi	r4 r7 6
	jump	L_cont_22011
L_else_22013 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22045
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f2 f5
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fldi	f3 r4 2
	fmul	f3 f3 f7
	fadd	f2 f2 f3
	addi	r5 r0 1
	ldi	r6 r7 6
	fbgt	f0 f2 L_else_22048
	addi	r4 r0 0
	jump	L_cont_22046
L_else_22048 : 
	addi	r4 r0 1
L_cont_22046 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_22011
L_else_22045 : 
	call	L_is_second_outside_2163
L_cont_22011 : 
	bne	r4 r0 L_else_22015
	addi	r9 r9 1
	add	r1 r8 r9
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22017
	addi	r4 r0 1
	return
L_else_22017 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f10
	fadd	f4 f0 f9
	fadd	f6 f0 f8
	call	L_is_outside_2168
	bne	r4 r0 L_else_22019
	addi	r4 r9 1
	add	r7 r0 r4
	jump	L_check_all_inside_2173
L_else_22019 : 
	addi	r4 r0 0
	return
L_else_22015 : 
	addi	r4 r0 0
	return
L_else_22008 : 
	addi	r4 r0 0
	return
L_else_22004 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2179 : 
	add	r1 r10 r11
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22089
	addi	r4 r0 0
	return
L_else_22089 : 
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
	bne	r5 r4 L_else_22092
	ldi	r7 r7 0
	call	L_solver_rect_fast_2094
	jump	L_cont_22090
L_else_22092 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22150
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22153
	addi	r4 r0 0
	jump	L_cont_22151
L_else_22153 : 
	addi	r4 r0 1
L_cont_22151 : 
	bne	r4 r0 L_else_22155
	addi	r4 r0 0
	jump	L_cont_22090
L_else_22155 : 
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
	jump	L_cont_22090
L_else_22150 : 
	add	r7 r0 r8
	fadd	f8 f0 f6
	fadd	f9 f0 f7
	fadd	f7 f0 f5
	call	L_solver_second_fast_2107
L_cont_22090 : 
	fldi	f3 r0 1073
	bne	r4 r0 L_else_22095
	addi	r4 r0 0
	jump	L_cont_22093
L_else_22095 : 
	fldi	f2 r0 30
	fbgt	f2 f3 L_else_22148
	addi	r4 r0 0
	jump	L_cont_22093
L_else_22148 : 
	addi	r4 r0 1
L_cont_22093 : 
	bne	r4 r0 L_else_22097
	addi	r4 r0 1970
	add	r1 r4 r9
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22099
	addi	r4 r0 0
	return
L_else_22099 : 
	addi	r4 r11 1
	add	r11 r0 r4
	jump	L_shadow_check_and_group_2179
L_else_22097 : 
	fldi	f2 r0 31
	fadd	f4 f3 f2
	fldi	f2 r0 1039
	fmul	f3 f2 f4
	fldi	f2 r0 1042
	fadd	f10 f3 f2
	fldi	f2 r0 1040
	fmul	f3 f2 f4
	fldi	f2 r0 1043
	fadd	f9 f3 f2
	fldi	f2 r0 1041
	fmul	f3 f2 f4
	fldi	f2 r0 1044
	fadd	f8 f3 f2
	addi	r4 r0 0
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22102
	addi	r4 r0 1
	jump	L_cont_22100
L_else_22102 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f10
	fadd	f4 f0 f9
	fadd	f6 f0 f8
	call	L_is_outside_2168
	bne	r4 r0 L_else_22106
	addi	r4 r0 1
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22108
	addi	r4 r0 1
	jump	L_cont_22100
L_else_22108 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	ldi	r4 r7 5
	fldi	f2 r4 0
	fsub	f5 f10 f2
	ldi	r4 r7 5
	fldi	f2 r4 1
	fsub	f6 f9 f2
	ldi	r4 r7 5
	fldi	f2 r4 2
	fsub	f7 f8 f2
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22111
	fbgt	f0 f5 L_else_22120
	jump	L_cont_22118
L_else_22120 : 
	fsub	f5 f0 f5
L_cont_22118 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f5 L_else_22123
	addi	r4 r0 0
	jump	L_cont_22121
L_else_22123 : 
	addi	r4 r0 1
L_cont_22121 : 
	bne	r4 r0 L_else_22126
	addi	r4 r0 0
	jump	L_cont_22124
L_else_22126 : 
	fbgt	f0 f6 L_else_22131
	jump	L_cont_22129
L_else_22131 : 
	fsub	f6 f0 f6
L_cont_22129 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f6 L_else_22134
	addi	r4 r0 0
	jump	L_cont_22132
L_else_22134 : 
	addi	r4 r0 1
L_cont_22132 : 
	bne	r4 r0 L_else_22136
	addi	r4 r0 0
	jump	L_cont_22124
L_else_22136 : 
	fbgt	f0 f7 L_else_22139
	jump	L_cont_22137
L_else_22139 : 
	fsub	f7 f0 f7
L_cont_22137 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f7 L_else_22141
	addi	r4 r0 0
	jump	L_cont_22124
L_else_22141 : 
	addi	r4 r0 1
L_cont_22124 : 
	bne	r4 r0 L_else_22128
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	jump	L_cont_22109
L_else_22128 : 
	ldi	r4 r7 6
	jump	L_cont_22109
L_else_22111 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22143
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f2 f2 f5
	fldi	f3 r4 1
	fmul	f3 f3 f6
	fadd	f3 f2 f3
	fldi	f2 r4 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	addi	r4 r0 1
	ldi	r6 r7 6
	fbgt	f0 f2 L_else_22146
	addi	r5 r0 0
	jump	L_cont_22144
L_else_22146 : 
	addi	r5 r0 1
L_cont_22144 : 
	xor	r5 r6 r5
	sub	r4 r4 r5
	jump	L_cont_22109
L_else_22143 : 
	call	L_is_second_outside_2163
L_cont_22109 : 
	bne	r4 r0 L_else_22113
	addi	r4 r0 2
	add	r1 r10 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22115
	addi	r4 r0 1
	jump	L_cont_22100
L_else_22115 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r7 r1 0
	fadd	f3 f0 f10
	fadd	f4 f0 f9
	fadd	f6 f0 f8
	call	L_is_outside_2168
	bne	r4 r0 L_else_22117
	addi	r7 r0 3
	add	r8 r0 r10
	call	L_check_all_inside_2173
	jump	L_cont_22100
L_else_22117 : 
	addi	r4 r0 0
	jump	L_cont_22100
L_else_22113 : 
	addi	r4 r0 0
	jump	L_cont_22100
L_else_22106 : 
	addi	r4 r0 0
L_cont_22100 : 
	bne	r4 r0 L_else_22104
	addi	r4 r11 1
	add	r11 r0 r4
	jump	L_shadow_check_and_group_2179
L_else_22104 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2182 : 
	add	r1 r12 r13
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22158
	addi	r4 r0 0
	return
L_else_22158 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22160
	addi	r13 r13 1
	add	r1 r12 r13
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22162
	addi	r4 r0 0
	return
L_else_22162 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22164
	addi	r13 r13 1
	add	r1 r12 r13
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22166
	addi	r4 r0 0
	return
L_else_22166 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22168
	addi	r13 r13 1
	add	r1 r12 r13
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22170
	addi	r4 r0 0
	return
L_else_22170 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22172
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_shadow_check_one_or_group_2182
L_else_22172 : 
	addi	r4 r0 1
	return
L_else_22168 : 
	addi	r4 r0 1
	return
L_else_22164 : 
	addi	r4 r0 1
	return
L_else_22160 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2185 : 
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22175
	addi	r4 r0 0
	return
L_else_22175 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22178
	addi	r4 r0 1
	jump	L_cont_22176
L_else_22178 : 
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
	bne	r5 r4 L_else_22270
	ldi	r7 r7 0
	call	L_solver_rect_fast_2094
	jump	L_cont_22268
L_else_22270 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22294
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22297
	addi	r4 r0 0
	jump	L_cont_22295
L_else_22297 : 
	addi	r4 r0 1
L_cont_22295 : 
	bne	r4 r0 L_else_22299
	addi	r4 r0 0
	jump	L_cont_22268
L_else_22299 : 
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
	jump	L_cont_22268
L_else_22294 : 
	add	r7 r0 r8
	fadd	f8 f0 f6
	fadd	f9 f0 f7
	fadd	f7 f0 f5
	call	L_solver_second_fast_2107
L_cont_22268 : 
	bne	r4 r0 L_else_22272
	addi	r4 r0 0
	jump	L_cont_22176
L_else_22272 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_22275
	addi	r4 r0 0
	jump	L_cont_22273
L_else_22275 : 
	addi	r4 r0 1
L_cont_22273 : 
	bne	r4 r0 L_else_22277
	addi	r4 r0 0
	jump	L_cont_22176
L_else_22277 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22280
	addi	r4 r0 0
	jump	L_cont_22278
L_else_22280 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22284
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22286
	addi	r4 r0 0
	jump	L_cont_22278
L_else_22286 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22288
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22290
	addi	r4 r0 0
	jump	L_cont_22278
L_else_22290 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22292
	addi	r13 r0 4
	add	r12 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22278
L_else_22292 : 
	addi	r4 r0 1
	jump	L_cont_22278
L_else_22288 : 
	addi	r4 r0 1
	jump	L_cont_22278
L_else_22284 : 
	addi	r4 r0 1
L_cont_22278 : 
	bne	r4 r0 L_else_22282
	addi	r4 r0 0
	jump	L_cont_22176
L_else_22282 : 
	addi	r4 r0 1
L_cont_22176 : 
	bne	r4 r0 L_else_22180
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r6 r16 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22182
	addi	r4 r0 0
	return
L_else_22182 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22185
	addi	r4 r0 1
	jump	L_cont_22183
L_else_22185 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2113
	bne	r4 r0 L_else_22200
	addi	r4 r0 0
	jump	L_cont_22183
L_else_22200 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_22203
	addi	r4 r0 0
	jump	L_cont_22201
L_else_22203 : 
	addi	r4 r0 1
L_cont_22201 : 
	bne	r4 r0 L_else_22205
	addi	r4 r0 0
	jump	L_cont_22183
L_else_22205 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22208
	addi	r4 r0 0
	jump	L_cont_22206
L_else_22208 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22212
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22214
	addi	r4 r0 0
	jump	L_cont_22206
L_else_22214 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22216
	addi	r13 r0 3
	add	r12 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22206
L_else_22216 : 
	addi	r4 r0 1
	jump	L_cont_22206
L_else_22212 : 
	addi	r4 r0 1
L_cont_22206 : 
	bne	r4 r0 L_else_22210
	addi	r4 r0 0
	jump	L_cont_22183
L_else_22210 : 
	addi	r4 r0 1
L_cont_22183 : 
	bne	r4 r0 L_else_22187
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2185
L_else_22187 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22190
	addi	r4 r0 0
	jump	L_cont_22188
L_else_22190 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22194
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22196
	addi	r4 r0 0
	jump	L_cont_22188
L_else_22196 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22198
	addi	r13 r0 3
	add	r12 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22188
L_else_22198 : 
	addi	r4 r0 1
	jump	L_cont_22188
L_else_22194 : 
	addi	r4 r0 1
L_cont_22188 : 
	bne	r4 r0 L_else_22192
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2185
L_else_22192 : 
	addi	r4 r0 1
	return
L_else_22180 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22219
	addi	r4 r0 0
	jump	L_cont_22217
L_else_22219 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22259
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22261
	addi	r4 r0 0
	jump	L_cont_22217
L_else_22261 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22263
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22265
	addi	r4 r0 0
	jump	L_cont_22217
L_else_22265 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22267
	addi	r13 r0 4
	add	r12 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22217
L_else_22267 : 
	addi	r4 r0 1
	jump	L_cont_22217
L_else_22263 : 
	addi	r4 r0 1
	jump	L_cont_22217
L_else_22259 : 
	addi	r4 r0 1
L_cont_22217 : 
	bne	r4 r0 L_else_22221
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r6 r16 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22223
	addi	r4 r0 0
	return
L_else_22223 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22226
	addi	r4 r0 1
	jump	L_cont_22224
L_else_22226 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2113
	bne	r4 r0 L_else_22241
	addi	r4 r0 0
	jump	L_cont_22224
L_else_22241 : 
	fldi	f3 r0 1073
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_22244
	addi	r4 r0 0
	jump	L_cont_22242
L_else_22244 : 
	addi	r4 r0 1
L_cont_22242 : 
	bne	r4 r0 L_else_22246
	addi	r4 r0 0
	jump	L_cont_22224
L_else_22246 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22249
	addi	r4 r0 0
	jump	L_cont_22247
L_else_22249 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22253
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22255
	addi	r4 r0 0
	jump	L_cont_22247
L_else_22255 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22257
	addi	r13 r0 3
	add	r12 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22247
L_else_22257 : 
	addi	r4 r0 1
	jump	L_cont_22247
L_else_22253 : 
	addi	r4 r0 1
L_cont_22247 : 
	bne	r4 r0 L_else_22251
	addi	r4 r0 0
	jump	L_cont_22224
L_else_22251 : 
	addi	r4 r0 1
L_cont_22224 : 
	bne	r4 r0 L_else_22228
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2185
L_else_22228 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22231
	addi	r4 r0 0
	jump	L_cont_22229
L_else_22231 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22235
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22237
	addi	r4 r0 0
	jump	L_cont_22229
L_else_22237 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22239
	addi	r13 r0 3
	add	r12 r0 r16
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22229
L_else_22239 : 
	addi	r4 r0 1
	jump	L_cont_22229
L_else_22235 : 
	addi	r4 r0 1
L_cont_22229 : 
	bne	r4 r0 L_else_22233
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2185
L_else_22233 : 
	addi	r4 r0 1
	return
L_else_22221 : 
	addi	r4 r0 1
	return
L_solve_each_element_2188 : 
	add	r1 r13 r14
	ldi	r12 r1 0
	addi	r4 r0 -1
	bne	r12 r4 L_else_22302
	return
L_else_22302 : 
	addi	r4 r0 1970
	add	r1 r4 r12
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
	bne	r5 r4 L_else_22305
	add	r10 r0 r15
	call	L_solver_rect_2059
	add	r10 r0 r4
	jump	L_cont_22303
L_else_22305 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22369
	ldi	r4 r11 4
	fldi	f2 r15 0
	fldi	f3 r4 0
	fmul	f3 f2 f3
	fldi	f4 r15 1
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r15 2
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fbgt	f4 f0 L_else_22372
	addi	r5 r0 0
	jump	L_cont_22370
L_else_22372 : 
	addi	r5 r0 1
L_cont_22370 : 
	bne	r5 r0 L_else_22374
	addi	r10 r0 0
	jump	L_cont_22303
L_else_22374 : 
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
	jump	L_cont_22303
L_else_22369 : 
	add	r6 r0 r11
	add	r5 r0 r15
	fadd	f8 f0 f5
	fadd	f9 f0 f7
	fadd	f7 f0 f6
	call	L_solver_second_2084
	add	r10 r0 r4
L_cont_22303 : 
	bne	r10 r0 L_else_22307
	addi	r4 r0 1970
	add	r1 r4 r12
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22309
	return
L_else_22309 : 
	addi	r4 r14 1
	add	r14 r0 r4
	jump	L_solve_each_element_2188
L_else_22307 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_22312
	addi	r4 r0 0
	jump	L_cont_22310
L_else_22312 : 
	addi	r4 r0 1
L_cont_22310 : 
	bne	r4 r0 L_else_22315
	jump	L_cont_22313
L_else_22315 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22318
	addi	r4 r0 0
	jump	L_cont_22316
L_else_22318 : 
	addi	r4 r0 1
L_cont_22316 : 
	bne	r4 r0 L_else_22320
	jump	L_cont_22313
L_else_22320 : 
	fldi	f2 r0 31
	fadd	f13 f3 f2
	fldi	f2 r15 0
	fmul	f3 f2 f13
	fldi	f2 r0 1063
	fadd	f14 f3 f2
	fldi	f2 r15 1
	fmul	f3 f2 f13
	fldi	f2 r0 1064
	fadd	f12 f3 f2
	fldi	f2 r15 2
	fmul	f3 f2 f13
	fldi	f2 r0 1065
	fadd	f11 f3 f2
	addi	r4 r0 0
	add	r1 r13 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22323
	addi	r4 r0 1
	jump	L_cont_22321
L_else_22323 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f4 f0 f12
	fadd	f6 f0 f11
	call	L_is_outside_2168
	bne	r4 r0 L_else_22327
	addi	r4 r0 1
	add	r1 r13 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22329
	addi	r4 r0 1
	jump	L_cont_22321
L_else_22329 : 
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
	bne	r5 r4 L_else_22332
	fbgt	f0 f5 L_else_22341
	jump	L_cont_22339
L_else_22341 : 
	fsub	f5 f0 f5
L_cont_22339 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f5 L_else_22344
	addi	r4 r0 0
	jump	L_cont_22342
L_else_22344 : 
	addi	r4 r0 1
L_cont_22342 : 
	bne	r4 r0 L_else_22347
	addi	r4 r0 0
	jump	L_cont_22345
L_else_22347 : 
	fbgt	f0 f6 L_else_22352
	jump	L_cont_22350
L_else_22352 : 
	fsub	f6 f0 f6
L_cont_22350 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f6 L_else_22355
	addi	r4 r0 0
	jump	L_cont_22353
L_else_22355 : 
	addi	r4 r0 1
L_cont_22353 : 
	bne	r4 r0 L_else_22357
	addi	r4 r0 0
	jump	L_cont_22345
L_else_22357 : 
	fbgt	f0 f7 L_else_22360
	jump	L_cont_22358
L_else_22360 : 
	fsub	f7 f0 f7
L_cont_22358 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f7 L_else_22362
	addi	r4 r0 0
	jump	L_cont_22345
L_else_22362 : 
	addi	r4 r0 1
L_cont_22345 : 
	bne	r4 r0 L_else_22349
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	jump	L_cont_22330
L_else_22349 : 
	ldi	r4 r7 6
	jump	L_cont_22330
L_else_22332 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22364
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f2 f5
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f2 f3 f2
	fldi	f3 r4 2
	fmul	f3 f3 f7
	fadd	f2 f2 f3
	addi	r6 r0 1
	ldi	r5 r7 6
	fbgt	f0 f2 L_else_22367
	addi	r4 r0 0
	jump	L_cont_22365
L_else_22367 : 
	addi	r4 r0 1
L_cont_22365 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	jump	L_cont_22330
L_else_22364 : 
	call	L_is_second_outside_2163
L_cont_22330 : 
	bne	r4 r0 L_else_22334
	addi	r4 r0 2
	add	r1 r13 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22336
	addi	r4 r0 1
	jump	L_cont_22321
L_else_22336 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f4 f0 f12
	fadd	f6 f0 f11
	call	L_is_outside_2168
	bne	r4 r0 L_else_22338
	addi	r7 r0 3
	add	r8 r0 r13
	fadd	f10 f0 f14
	fadd	f9 f0 f12
	fadd	f8 f0 f11
	call	L_check_all_inside_2173
	jump	L_cont_22321
L_else_22338 : 
	addi	r4 r0 0
	jump	L_cont_22321
L_else_22334 : 
	addi	r4 r0 0
	jump	L_cont_22321
L_else_22327 : 
	addi	r4 r0 0
L_cont_22321 : 
	bne	r4 r0 L_else_22325
	jump	L_cont_22313
L_else_22325 : 
	fsti	f13 r0 1082
	fsti	f14 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r12 r0 1045
	sti	r10 r0 1074
L_cont_22313 : 
	addi	r4 r14 1
	add	r14 r0 r4
	jump	L_solve_each_element_2188
L_solve_one_or_network_2192 : 
	add	r1 r17 r18
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22377
	return
L_else_22377 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r16
	call	L_solve_each_element_2188
	addi	r18 r18 1
	add	r1 r17 r18
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22379
	return
L_else_22379 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r16
	call	L_solve_each_element_2188
	addi	r18 r18 1
	add	r1 r17 r18
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22381
	return
L_else_22381 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r16
	call	L_solve_each_element_2188
	addi	r18 r18 1
	add	r1 r17 r18
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22383
	return
L_else_22383 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r16
	call	L_solve_each_element_2188
	addi	r4 r18 1
	add	r18 r0 r4
	jump	L_solve_one_or_network_2192
L_trace_or_matrix_2196 : 
	add	r1 r19 r21
	ldi	r17 r1 0
	ldi	r5 r17 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22386
	return
L_else_22386 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22389
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22452
	jump	L_cont_22387
L_else_22452 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r20
	call	L_solve_each_element_2188
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22454
	jump	L_cont_22387
L_else_22454 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r20
	call	L_solve_each_element_2188
	addi	r4 r0 3
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22456
	jump	L_cont_22387
L_else_22456 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r20
	call	L_solve_each_element_2188
	addi	r18 r0 4
	add	r16 r0 r20
	call	L_solve_one_or_network_2192
	jump	L_cont_22387
L_else_22389 : 
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
	bne	r5 r4 L_else_22459
	add	r10 r0 r20
	call	L_solver_rect_2059
	jump	L_cont_22457
L_else_22459 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22474
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
	fbgt	f4 f0 L_else_22477
	addi	r5 r0 0
	jump	L_cont_22475
L_else_22477 : 
	addi	r5 r0 1
L_cont_22475 : 
	bne	r5 r0 L_else_22479
	addi	r4 r0 0
	jump	L_cont_22457
L_else_22479 : 
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
	jump	L_cont_22457
L_else_22474 : 
	add	r6 r0 r11
	add	r5 r0 r20
	fadd	f8 f0 f5
	fadd	f9 f0 f7
	fadd	f7 f0 f6
	call	L_solver_second_2084
L_cont_22457 : 
	bne	r4 r0 L_else_22461
	jump	L_cont_22387
L_else_22461 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22464
	addi	r4 r0 0
	jump	L_cont_22462
L_else_22464 : 
	addi	r4 r0 1
L_cont_22462 : 
	bne	r4 r0 L_else_22466
	jump	L_cont_22387
L_else_22466 : 
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22468
	jump	L_cont_22387
L_else_22468 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r20
	call	L_solve_each_element_2188
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22470
	jump	L_cont_22387
L_else_22470 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r20
	call	L_solve_each_element_2188
	addi	r4 r0 3
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22472
	jump	L_cont_22387
L_else_22472 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r20
	call	L_solve_each_element_2188
	addi	r18 r0 4
	add	r16 r0 r20
	call	L_solve_one_or_network_2192
L_cont_22387 : 
	addi	r21 r21 1
	add	r1 r19 r21
	ldi	r17 r1 0
	ldi	r5 r17 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22391
	return
L_else_22391 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22394
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22396
	jump	L_cont_22392
L_else_22396 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r20
	call	L_solve_each_element_2188
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22398
	jump	L_cont_22392
L_else_22398 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r20
	call	L_solve_each_element_2188
	addi	r18 r0 3
	add	r16 r0 r20
	call	L_solve_one_or_network_2192
	jump	L_cont_22392
L_else_22394 : 
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
	fsub	f7 f3 f2
	fldi	f3 r0 1065
	ldi	r4 r11 5
	fldi	f2 r4 2
	fsub	f8 f3 f2
	ldi	r5 r11 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22401
	addi	r7 r0 0
	addi	r9 r0 1
	addi	r10 r0 2
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f6
	fadd	f3 f0 f7
	fadd	f5 f0 f8
	call	L_solver_rect_surface_2050
	bne	r4 r0 L_else_22414
	addi	r7 r0 1
	addi	r9 r0 2
	addi	r10 r0 0
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f7
	fadd	f3 f0 f8
	fadd	f5 f0 f6
	call	L_solver_rect_surface_2050
	bne	r4 r0 L_else_22416
	addi	r7 r0 2
	addi	r9 r0 0
	addi	r10 r0 1
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f8
	fadd	f3 f0 f6
	fadd	f5 f0 f7
	call	L_solver_rect_surface_2050
	bne	r4 r0 L_else_22418
	addi	r4 r0 0
	jump	L_cont_22399
L_else_22418 : 
	addi	r4 r0 3
	jump	L_cont_22399
L_else_22416 : 
	addi	r4 r0 2
	jump	L_cont_22399
L_else_22414 : 
	addi	r4 r0 1
	jump	L_cont_22399
L_else_22401 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22420
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
	fbgt	f4 f0 L_else_22423
	addi	r5 r0 0
	jump	L_cont_22421
L_else_22423 : 
	addi	r5 r0 1
L_cont_22421 : 
	bne	r5 r0 L_else_22425
	addi	r4 r0 0
	jump	L_cont_22399
L_else_22425 : 
	fldi	f2 r4 0
	fmul	f3 f2 f6
	fldi	f2 r4 1
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f8
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22399
L_else_22420 : 
	fldi	f10 r20 0
	fldi	f5 r20 1
	fldi	f9 r20 2
	fmul	f3 f10 f10
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f5 f5
	ldi	r4 r11 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r4 r11 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	ldi	r4 r11 3
	bne	r4 r0 L_else_22428
	fadd	f4 f0 f2
	jump	L_cont_22426
L_else_22428 : 
	fmul	f4 f5 f9
	ldi	r4 r11 9
	fldi	f3 r4 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f10
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f10 f5
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
L_cont_22426 : 
	fbne	f4 f0 L_else_22431
	addi	r4 r0 1
	jump	L_cont_22429
L_else_22431 : 
	addi	r4 r0 0
L_cont_22429 : 
	bne	r4 r0 L_else_22433
	fldi	f12 r20 0
	fldi	f10 r20 1
	fldi	f11 r20 2
	fmul	f3 f12 f6
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f5 f3 f2
	fmul	f3 f10 f7
	ldi	r4 r11 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f5 f2
	fmul	f5 f11 f8
	ldi	r4 r11 4
	fldi	f2 r4 2
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	ldi	r4 r11 3
	bne	r4 r0 L_else_22436
	fadd	f3 f0 f2
	jump	L_cont_22434
L_else_22436 : 
	fmul	f5 f11 f7
	fmul	f3 f10 f8
	fadd	f5 f5 f3
	ldi	r4 r11 9
	fldi	f3 r4 0
	fmul	f5 f5 f3
	fmul	f9 f12 f8
	fmul	f3 f11 f6
	fadd	f9 f9 f3
	ldi	r4 r11 9
	fldi	f3 r4 1
	fmul	f3 f9 f3
	fadd	f9 f5 f3
	fmul	f3 f12 f7
	fmul	f5 f10 f6
	fadd	f5 f3 f5
	ldi	r4 r11 9
	fldi	f3 r4 2
	fmul	f3 f5 f3
	fadd	f3 f9 f3
	fldi	f5 r0 29
	fdiv	f3 f3 f5
	fadd	f3 f2 f3
L_cont_22434 : 
	fmul	f5 f6 f6
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f5 f5 f2
	fmul	f9 f7 f7
	ldi	r4 r11 4
	fldi	f2 r4 1
	fmul	f2 f9 f2
	fadd	f9 f5 f2
	fmul	f5 f8 f8
	ldi	r4 r11 4
	fldi	f2 r4 2
	fmul	f2 f5 f2
	fadd	f2 f9 f2
	ldi	r4 r11 3
	bne	r4 r0 L_else_22439
	jump	L_cont_22437
L_else_22439 : 
	fmul	f9 f7 f8
	ldi	r4 r11 9
	fldi	f5 r4 0
	fmul	f5 f9 f5
	fadd	f5 f2 f5
	fmul	f8 f8 f6
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f8 f2
	fadd	f8 f5 f2
	fmul	f5 f6 f7
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f5 f2
	fadd	f2 f8 f2
L_cont_22437 : 
	ldi	r5 r11 1
	addi	r4 r0 3
	bne	r5 r4 L_else_22442
	fldi	f5 r0 20
	fsub	f2 f2 f5
	jump	L_cont_22440
L_else_22442 : 
L_cont_22440 : 
	fmul	f5 f3 f3
	fmul	f2 f4 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else_22445
	addi	r4 r0 0
	jump	L_cont_22443
L_else_22445 : 
	addi	r4 r0 1
L_cont_22443 : 
	bne	r4 r0 L_else_22447
	addi	r4 r0 0
	jump	L_cont_22399
L_else_22447 : 
	fsqrt	f2 f2
	ldi	r4 r11 6
	bne	r4 r0 L_else_22450
	fsub	f2 f0 f2
	jump	L_cont_22448
L_else_22450 : 
L_cont_22448 : 
	fsub	f2 f2 f3
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22399
L_else_22433 : 
	addi	r4 r0 0
L_cont_22399 : 
	bne	r4 r0 L_else_22403
	jump	L_cont_22392
L_else_22403 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22406
	addi	r4 r0 0
	jump	L_cont_22404
L_else_22406 : 
	addi	r4 r0 1
L_cont_22404 : 
	bne	r4 r0 L_else_22408
	jump	L_cont_22392
L_else_22408 : 
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22410
	jump	L_cont_22392
L_else_22410 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r20
	call	L_solve_each_element_2188
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22412
	jump	L_cont_22392
L_else_22412 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r14 r0 0
	add	r15 r0 r20
	call	L_solve_each_element_2188
	addi	r18 r0 3
	add	r16 r0 r20
	call	L_solve_one_or_network_2192
L_cont_22392 : 
	addi	r4 r21 1
	add	r21 r0 r4
	jump	L_trace_or_matrix_2196
L_solve_each_element_fast_2202 : 
	ldi	r9 r11 0
	add	r1 r13 r12
	ldi	r10 r1 0
	addi	r4 r0 -1
	bne	r10 r4 L_else_22482
	return
L_else_22482 : 
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r8 r1 0
	ldi	r7 r8 10
	fldi	f6 r7 0
	fldi	f5 r7 1
	fldi	f7 r7 2
	ldi	r4 r11 1
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r4 r8 1
	addi	r5 r0 1
	bne	r4 r5 L_else_22485
	ldi	r7 r11 0
	call	L_solver_rect_fast_2094
	add	r14 r0 r4
	jump	L_cont_22483
L_else_22485 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_22549
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22552
	addi	r4 r0 0
	jump	L_cont_22550
L_else_22552 : 
	addi	r4 r0 1
L_cont_22550 : 
	bne	r4 r0 L_else_22554
	addi	r14 r0 0
	jump	L_cont_22483
L_else_22554 : 
	fldi	f3 r6 0
	fldi	f2 r7 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r14 r0 1
	jump	L_cont_22483
L_else_22549 : 
	fldi	f8 r6 0
	fbne	f8 f0 L_else_22557
	addi	r4 r0 1
	jump	L_cont_22555
L_else_22557 : 
	addi	r4 r0 0
L_cont_22555 : 
	bne	r4 r0 L_else_22559
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r7 3
	fmul	f3 f4 f4
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_22562
	addi	r4 r0 0
	jump	L_cont_22560
L_else_22562 : 
	addi	r4 r0 1
L_cont_22560 : 
	bne	r4 r0 L_else_22564
	addi	r14 r0 0
	jump	L_cont_22483
L_else_22564 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_22567
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_22565
L_else_22567 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_22565 : 
	addi	r14 r0 1
	jump	L_cont_22483
L_else_22559 : 
	addi	r14 r0 0
L_cont_22483 : 
	bne	r14 r0 L_else_22487
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22489
	return
L_else_22489 : 
	addi	r4 r12 1
	add	r12 r0 r4
	jump	L_solve_each_element_fast_2202
L_else_22487 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_22492
	addi	r4 r0 0
	jump	L_cont_22490
L_else_22492 : 
	addi	r4 r0 1
L_cont_22490 : 
	bne	r4 r0 L_else_22495
	jump	L_cont_22493
L_else_22495 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22498
	addi	r4 r0 0
	jump	L_cont_22496
L_else_22498 : 
	addi	r4 r0 1
L_cont_22496 : 
	bne	r4 r0 L_else_22500
	jump	L_cont_22493
L_else_22500 : 
	fldi	f2 r0 31
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
	bne	r5 r4 L_else_22503
	addi	r4 r0 1
	jump	L_cont_22501
L_else_22503 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f4 f0 f12
	fadd	f6 f0 f11
	call	L_is_outside_2168
	bne	r4 r0 L_else_22507
	addi	r4 r0 1
	add	r1 r13 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22509
	addi	r4 r0 1
	jump	L_cont_22501
L_else_22509 : 
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
	bne	r5 r4 L_else_22512
	fbgt	f0 f5 L_else_22521
	jump	L_cont_22519
L_else_22521 : 
	fsub	f5 f0 f5
L_cont_22519 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f5 L_else_22524
	addi	r4 r0 0
	jump	L_cont_22522
L_else_22524 : 
	addi	r4 r0 1
L_cont_22522 : 
	bne	r4 r0 L_else_22527
	addi	r4 r0 0
	jump	L_cont_22525
L_else_22527 : 
	fbgt	f0 f6 L_else_22532
	jump	L_cont_22530
L_else_22532 : 
	fsub	f6 f0 f6
L_cont_22530 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f6 L_else_22535
	addi	r4 r0 0
	jump	L_cont_22533
L_else_22535 : 
	addi	r4 r0 1
L_cont_22533 : 
	bne	r4 r0 L_else_22537
	addi	r4 r0 0
	jump	L_cont_22525
L_else_22537 : 
	fbgt	f0 f7 L_else_22540
	jump	L_cont_22538
L_else_22540 : 
	fsub	f7 f0 f7
L_cont_22538 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f7 L_else_22542
	addi	r4 r0 0
	jump	L_cont_22525
L_else_22542 : 
	addi	r4 r0 1
L_cont_22525 : 
	bne	r4 r0 L_else_22529
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	jump	L_cont_22510
L_else_22529 : 
	ldi	r4 r7 6
	jump	L_cont_22510
L_else_22512 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22544
	ldi	r4 r7 4
	fldi	f2 r4 0
	fmul	f3 f2 f5
	fldi	f2 r4 1
	fmul	f2 f2 f6
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f7
	fadd	f2 f3 f2
	addi	r5 r0 1
	ldi	r6 r7 6
	fbgt	f0 f2 L_else_22547
	addi	r4 r0 0
	jump	L_cont_22545
L_else_22547 : 
	addi	r4 r0 1
L_cont_22545 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_22510
L_else_22544 : 
	call	L_is_second_outside_2163
L_cont_22510 : 
	bne	r4 r0 L_else_22514
	addi	r4 r0 2
	add	r1 r13 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22516
	addi	r4 r0 1
	jump	L_cont_22501
L_else_22516 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f4 f0 f12
	fadd	f6 f0 f11
	call	L_is_outside_2168
	bne	r4 r0 L_else_22518
	addi	r7 r0 3
	add	r8 r0 r13
	fadd	f10 f0 f14
	fadd	f9 f0 f12
	fadd	f8 f0 f11
	call	L_check_all_inside_2173
	jump	L_cont_22501
L_else_22518 : 
	addi	r4 r0 0
	jump	L_cont_22501
L_else_22514 : 
	addi	r4 r0 0
	jump	L_cont_22501
L_else_22507 : 
	addi	r4 r0 0
L_cont_22501 : 
	bne	r4 r0 L_else_22505
	jump	L_cont_22493
L_else_22505 : 
	fsti	f13 r0 1082
	fsti	f14 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r10 r0 1045
	sti	r14 r0 1074
L_cont_22493 : 
	addi	r4 r12 1
	add	r12 r0 r4
	jump	L_solve_each_element_fast_2202
L_solve_one_or_network_fast_2206 : 
	add	r1 r16 r17
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22570
	return
L_else_22570 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r15
	call	L_solve_each_element_fast_2202
	addi	r17 r17 1
	add	r1 r16 r17
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22572
	return
L_else_22572 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r15
	call	L_solve_each_element_fast_2202
	addi	r17 r17 1
	add	r1 r16 r17
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22574
	return
L_else_22574 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r15
	call	L_solve_each_element_fast_2202
	addi	r17 r17 1
	add	r1 r16 r17
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22576
	return
L_else_22576 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r15
	call	L_solve_each_element_fast_2202
	addi	r4 r17 1
	add	r17 r0 r4
	jump	L_solve_one_or_network_fast_2206
L_trace_or_matrix_fast_2210 : 
	add	r1 r18 r20
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22579
	return
L_else_22579 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22582
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22604
	jump	L_cont_22580
L_else_22604 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r19
	call	L_solve_each_element_fast_2202
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22606
	jump	L_cont_22580
L_else_22606 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r19
	call	L_solve_each_element_fast_2202
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22608
	jump	L_cont_22580
L_else_22608 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r19
	call	L_solve_each_element_fast_2202
	addi	r17 r0 4
	add	r15 r0 r19
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_22580
L_else_22582 : 
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
	bne	r5 r4 L_else_22611
	ldi	r7 r19 0
	call	L_solver_rect_fast_2094
	jump	L_cont_22609
L_else_22611 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22626
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22629
	addi	r4 r0 0
	jump	L_cont_22627
L_else_22629 : 
	addi	r4 r0 1
L_cont_22627 : 
	bne	r4 r0 L_else_22631
	addi	r4 r0 0
	jump	L_cont_22609
L_else_22631 : 
	fldi	f3 r6 0
	fldi	f2 r7 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22609
L_else_22626 : 
	fldi	f8 r6 0
	fbne	f8 f0 L_else_22634
	addi	r4 r0 1
	jump	L_cont_22632
L_else_22634 : 
	addi	r4 r0 0
L_cont_22632 : 
	bne	r4 r0 L_else_22636
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r7 3
	fmul	f3 f4 f4
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_22639
	addi	r4 r0 0
	jump	L_cont_22637
L_else_22639 : 
	addi	r4 r0 1
L_cont_22637 : 
	bne	r4 r0 L_else_22641
	addi	r4 r0 0
	jump	L_cont_22609
L_else_22641 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_22644
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_22642
L_else_22644 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_22642 : 
	addi	r4 r0 1
	jump	L_cont_22609
L_else_22636 : 
	addi	r4 r0 0
L_cont_22609 : 
	bne	r4 r0 L_else_22613
	jump	L_cont_22580
L_else_22613 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_22616
	addi	r4 r0 0
	jump	L_cont_22614
L_else_22616 : 
	addi	r4 r0 1
L_cont_22614 : 
	bne	r4 r0 L_else_22618
	jump	L_cont_22580
L_else_22618 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22620
	jump	L_cont_22580
L_else_22620 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r19
	call	L_solve_each_element_fast_2202
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22622
	jump	L_cont_22580
L_else_22622 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r19
	call	L_solve_each_element_fast_2202
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22624
	jump	L_cont_22580
L_else_22624 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r19
	call	L_solve_each_element_fast_2202
	addi	r17 r0 4
	add	r15 r0 r19
	call	L_solve_one_or_network_fast_2206
L_cont_22580 : 
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22584
	return
L_else_22584 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22587
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22589
	jump	L_cont_22585
L_else_22589 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r19
	call	L_solve_each_element_fast_2202
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22591
	jump	L_cont_22585
L_else_22591 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r19
	call	L_solve_each_element_fast_2202
	addi	r17 r0 3
	add	r15 r0 r19
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_22585
L_else_22587 : 
	add	r9 r0 r19
	call	L_solver_fast2_2131
	bne	r4 r0 L_else_22593
	jump	L_cont_22585
L_else_22593 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22596
	addi	r4 r0 0
	jump	L_cont_22594
L_else_22596 : 
	addi	r4 r0 1
L_cont_22594 : 
	bne	r4 r0 L_else_22598
	jump	L_cont_22585
L_else_22598 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22600
	jump	L_cont_22585
L_else_22600 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r19
	call	L_solve_each_element_fast_2202
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22602
	jump	L_cont_22585
L_else_22602 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r13 r1 0
	addi	r12 r0 0
	add	r11 r0 r19
	call	L_solve_each_element_fast_2202
	addi	r17 r0 3
	add	r15 r0 r19
	call	L_solve_one_or_network_fast_2206
L_cont_22585 : 
	addi	r4 r20 1
	add	r20 r0 r4
	jump	L_trace_or_matrix_fast_2210
L_get_nvector_second_2220 : 
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
	bne	r4 r0 L_else_22648
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_22646
L_else_22648 : 
	ldi	r4 r5 9
	fldi	f2 r4 2
	fmul	f3 f8 f2
	ldi	r4 r5 9
	fldi	f2 r4 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
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
	fldi	f3 r0 29
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
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_22646 : 
	ldi	r4 r5 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_22651
	addi	r5 r0 1
	jump	L_cont_22649
L_else_22651 : 
	addi	r5 r0 0
L_cont_22649 : 
	bne	r5 r0 L_else_22654
	bne	r4 r0 L_else_22656
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_22652
L_else_22656 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_22652
L_else_22654 : 
	fldi	f3 r0 20
L_cont_22652 : 
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
	ldi	r6 r5 1
	addi	r4 r0 1
	bne	r6 r4 L_else_22659
	ldi	r4 r0 1074
	fldi	f2 r0 26
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r6 r0 1046
	addi	r5 r4 -1
	addi	r4 r4 -1
	add	r1 r7 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_22662
	addi	r4 r0 1
	jump	L_cont_22660
L_else_22662 : 
	addi	r4 r0 0
L_cont_22660 : 
	bne	r4 r0 L_else_22665
	fbgt	f2 f0 L_else_22668
	addi	r4 r0 0
	jump	L_cont_22666
L_else_22668 : 
	addi	r4 r0 1
L_cont_22666 : 
	bne	r4 r0 L_else_22670
	fldi	f2 r0 28
	jump	L_cont_22663
L_else_22670 : 
	fldi	f2 r0 20
	jump	L_cont_22663
L_else_22665 : 
	fldi	f2 r0 26
L_cont_22663 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	return
L_else_22659 : 
	addi	r4 r0 2
	bne	r6 r4 L_else_22672
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
L_else_22672 : 
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
	bne	r4 r0 L_else_22675
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_22673
L_else_22675 : 
	ldi	r4 r5 9
	fldi	f2 r4 2
	fmul	f3 f8 f2
	ldi	r4 r5 9
	fldi	f2 r4 1
	fmul	f2 f7 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
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
	fldi	f3 r0 29
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
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont_22673 : 
	ldi	r4 r5 6
	fldi	f2 r0 1046
	fmul	f3 f2 f2
	fldi	f2 r0 1047
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r0 1048
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_22678
	addi	r5 r0 1
	jump	L_cont_22676
L_else_22678 : 
	addi	r5 r0 0
L_cont_22676 : 
	bne	r5 r0 L_else_22681
	bne	r4 r0 L_else_22683
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_22679
L_else_22683 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_22679
L_else_22681 : 
	fldi	f3 r0 20
L_cont_22679 : 
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
	ldi	r7 r5 0
	ldi	r6 r5 8
	fldi	f2 r6 0
	fsti	f2 r0 1049
	ldi	r6 r5 8
	fldi	f2 r6 1
	fsti	f2 r0 1050
	ldi	r6 r5 8
	fldi	f2 r6 2
	fsti	f2 r0 1051
	addi	r6 r0 1
	bne	r7 r6 L_else_22686
	fldi	f3 r4 0
	ldi	r6 r5 5
	fldi	f2 r6 0
	fsub	f4 f3 f2
	fldi	f2 r0 33
	fmul	f2 f4 f2
	flr	f2 f2
	fldi	f3 r0 34
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 35
	fbgt	f2 f3 L_else_22689
	addi	r6 r0 0
	jump	L_cont_22687
L_else_22689 : 
	addi	r6 r0 1
L_cont_22687 : 
	fldi	f3 r4 2
	ldi	r4 r5 5
	fldi	f2 r4 2
	fsub	f4 f3 f2
	fldi	f2 r0 33
	fmul	f2 f4 f2
	flr	f3 f2
	fldi	f2 r0 34
	fmul	f2 f3 f2
	fsub	f2 f4 f2
	fldi	f3 r0 35
	fbgt	f3 f2 L_else_22692
	addi	r4 r0 0
	jump	L_cont_22690
L_else_22692 : 
	addi	r4 r0 1
L_cont_22690 : 
	bne	r6 r0 L_else_22695
	bne	r4 r0 L_else_22697
	fldi	f2 r0 36
	jump	L_cont_22693
L_else_22697 : 
	fldi	f2 r0 26
	jump	L_cont_22693
L_else_22695 : 
	bne	r4 r0 L_else_22699
	fldi	f2 r0 26
	jump	L_cont_22693
L_else_22699 : 
	fldi	f2 r0 36
L_cont_22693 : 
	fsti	f2 r0 1050
	return
L_else_22686 : 
	addi	r6 r0 2
	bne	r7 r6 L_else_22701
	fldi	f3 r4 1
	fldi	f2 r0 37
	fmul	f9 f3 f2
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_22704
	fldi	f3 r0 2
	fbgt	f3 f9 L_else_22706
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_22708
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_22710
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
	jump	L_cont_22702
L_else_22710 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_22712
	fadd	f2 f4 f9
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
	jump	L_cont_22702
L_else_22712 : 
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
	jump	L_cont_22702
L_else_22708 : 
	fbgt	f9 f3 L_else_22714
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
	jump	L_cont_22702
L_else_22714 : 
	fbgt	f9 f2 L_else_22716
	fsub	f2 f9 f4
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
	jump	L_cont_22702
L_else_22716 : 
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
	jump	L_cont_22702
L_else_22706 : 
	fadd	f9 f9 f2
	call	L_sin_1878
	jump	L_cont_22702
L_else_22704 : 
	fsub	f9 f9 f2
	call	L_sin_1878
L_cont_22702 : 
	fmul	f4 f2 f2
	fldi	f2 r0 36
	fmul	f2 f2 f4
	fsti	f2 r0 1049
	fldi	f3 r0 36
	fldi	f2 r0 20
	fsub	f2 f2 f4
	fmul	f2 f3 f2
	fsti	f2 r0 1050
	return
L_else_22701 : 
	addi	r6 r0 3
	bne	r7 r6 L_else_22718
	fldi	f3 r4 0
	ldi	r6 r5 5
	fldi	f2 r6 0
	fsub	f4 f3 f2
	fldi	f3 r4 2
	ldi	r4 r5 5
	fldi	f2 r4 2
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
	fmul	f6 f3 f2
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_22721
	fldi	f3 r0 2
	fbgt	f3 f6 L_else_22723
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_22725
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_22727
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
	fadd	f2 f2 f3
	jump	L_cont_22719
L_else_22727 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_22729
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
	jump	L_cont_22719
L_else_22729 : 
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
	jump	L_cont_22719
L_else_22725 : 
	fbgt	f6 f3 L_else_22731
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
	jump	L_cont_22719
L_else_22731 : 
	fbgt	f6 f2 L_else_22733
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
	jump	L_cont_22719
L_else_22733 : 
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
	jump	L_cont_22719
L_else_22723 : 
	fadd	f6 f6 f2
	call	L_cos_1880
	jump	L_cont_22719
L_else_22721 : 
	fsub	f6 f6 f2
	call	L_cos_1880
L_cont_22719 : 
	fmul	f3 f2 f2
	fldi	f2 r0 36
	fmul	f2 f3 f2
	fsti	f2 r0 1050
	fldi	f2 r0 20
	fsub	f3 f2 f3
	fldi	f2 r0 36
	fmul	f2 f3 f2
	fsti	f2 r0 1051
	return
L_else_22718 : 
	addi	r6 r0 4
	bne	r7 r6 L_else_22735
	fldi	f3 r4 0
	ldi	r6 r5 5
	fldi	f2 r6 0
	fsub	f3 f3 f2
	ldi	r6 r5 4
	fldi	f2 r6 0
	fsqrt	f2 f2
	fmul	f2 f3 f2
	fldi	f4 r4 2
	ldi	r6 r5 5
	fldi	f3 r6 2
	fsub	f4 f4 f3
	ldi	r6 r5 4
	fldi	f3 r6 2
	fsqrt	f3 f3
	fmul	f5 f4 f3
	fmul	f3 f2 f2
	fmul	f4 f5 f5
	fadd	f15 f3 f4
	fbgt	f0 f2 L_else_22738
	fadd	f3 f0 f2
	jump	L_cont_22736
L_else_22738 : 
	fsub	f3 f0 f2
L_cont_22736 : 
	fldi	f4 r0 39
	fbgt	f4 f3 L_else_22741
	addi	r6 r0 0
	jump	L_cont_22739
L_else_22741 : 
	addi	r6 r0 1
L_cont_22739 : 
	bne	r6 r0 L_else_22744
	fdiv	f13 f5 f2
	fbgt	f0 f13 L_else_22765
	jump	L_cont_22763
L_else_22765 : 
	fsub	f13 f0 f13
L_cont_22763 : 
	call	L_atan_1882
	fldi	f3 r0 40
	fmul	f3 f2 f3
	fldi	f2 r0 38
	fdiv	f3 f3 f2
	jump	L_cont_22742
L_else_22744 : 
	fldi	f3 r0 41
L_cont_22742 : 
	flr	f2 f3
	fsub	f16 f3 f2
	fldi	f3 r4 1
	ldi	r4 r5 5
	fldi	f2 r4 1
	fsub	f3 f3 f2
	ldi	r4 r5 4
	fldi	f2 r4 1
	fsqrt	f2 f2
	fmul	f4 f3 f2
	fbgt	f0 f15 L_else_22747
	fadd	f2 f0 f15
	jump	L_cont_22745
L_else_22747 : 
	fsub	f2 f0 f15
L_cont_22745 : 
	fldi	f3 r0 39
	fbgt	f3 f2 L_else_22750
	addi	r4 r0 0
	jump	L_cont_22748
L_else_22750 : 
	addi	r4 r0 1
L_cont_22748 : 
	bne	r4 r0 L_else_22753
	fdiv	f13 f4 f15
	fbgt	f0 f13 L_else_22762
	jump	L_cont_22760
L_else_22762 : 
	fsub	f13 f0 f13
L_cont_22760 : 
	call	L_atan_1882
	fldi	f3 r0 40
	fmul	f3 f2 f3
	fldi	f2 r0 38
	fdiv	f3 f3 f2
	jump	L_cont_22751
L_else_22753 : 
	fldi	f3 r0 41
L_cont_22751 : 
	flr	f2 f3
	fsub	f4 f3 f2
	fldi	f3 r0 42
	fldi	f2 r0 19
	fsub	f2 f2 f16
	fmul	f2 f2 f2
	fsub	f3 f3 f2
	fldi	f2 r0 19
	fsub	f2 f2 f4
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fbgt	f0 f2 L_else_22756
	addi	r4 r0 0
	jump	L_cont_22754
L_else_22756 : 
	addi	r4 r0 1
L_cont_22754 : 
	bne	r4 r0 L_else_22759
	jump	L_cont_22757
L_else_22759 : 
	fldi	f2 r0 26
L_cont_22757 : 
	fldi	f3 r0 36
	fmul	f2 f3 f2
	fldi	f3 r0 43
	fdiv	f2 f2 f3
	fsti	f2 r0 1051
	return
L_else_22735 : 
	return
L_trace_reflections_2232 : 
	bgt	r0 r22 L_else_22768
	addi	r4 r0 1185
	add	r1 r4 r22
	ldi	r21 r1 0
	ldi	r23 r21 1
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r20 r0 0
	ldi	r18 r0 1183
	add	r19 r0 r23
	call	L_trace_or_matrix_fast_2210
	fldi	f3 r0 1082
	fldi	f2 r0 32
	fbgt	f3 f2 L_else_22771
	addi	r4 r0 0
	jump	L_cont_22769
L_else_22771 : 
	addi	r4 r0 1
L_cont_22769 : 
	bne	r4 r0 L_else_22774
	addi	r4 r0 0
	jump	L_cont_22772
L_else_22774 : 
	fldi	f2 r0 45
	fbgt	f2 f3 L_else_22831
	addi	r4 r0 0
	jump	L_cont_22772
L_else_22831 : 
	addi	r4 r0 1
L_cont_22772 : 
	bne	r4 r0 L_else_22777
	jump	L_cont_22775
L_else_22777 : 
	ldi	r4 r0 1045
	addi	r5 r0 4
	mul	r4 r4 r5
	ldi	r5 r0 1074
	add	r4 r4 r5
	ldi	r5 r21 0
	bne	r4 r5 L_else_22779
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22782
	addi	r4 r0 0
	jump	L_cont_22780
L_else_22782 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22798
	addi	r4 r0 1
	jump	L_cont_22796
L_else_22798 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2113
	bne	r4 r0 L_else_22813
	addi	r4 r0 0
	jump	L_cont_22796
L_else_22813 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_22816
	addi	r4 r0 0
	jump	L_cont_22814
L_else_22816 : 
	addi	r4 r0 1
L_cont_22814 : 
	bne	r4 r0 L_else_22818
	addi	r4 r0 0
	jump	L_cont_22796
L_else_22818 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22821
	addi	r4 r0 0
	jump	L_cont_22819
L_else_22821 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22825
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22827
	addi	r4 r0 0
	jump	L_cont_22819
L_else_22827 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22829
	addi	r13 r0 3
	add	r12 r0 r15
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22819
L_else_22829 : 
	addi	r4 r0 1
	jump	L_cont_22819
L_else_22825 : 
	addi	r4 r0 1
L_cont_22819 : 
	bne	r4 r0 L_else_22823
	addi	r4 r0 0
	jump	L_cont_22796
L_else_22823 : 
	addi	r4 r0 1
L_cont_22796 : 
	bne	r4 r0 L_else_22800
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_22780
L_else_22800 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22803
	addi	r4 r0 0
	jump	L_cont_22801
L_else_22803 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22807
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22809
	addi	r4 r0 0
	jump	L_cont_22801
L_else_22809 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22811
	addi	r13 r0 3
	add	r12 r0 r15
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22801
L_else_22811 : 
	addi	r4 r0 1
	jump	L_cont_22801
L_else_22807 : 
	addi	r4 r0 1
L_cont_22801 : 
	bne	r4 r0 L_else_22805
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_22780
L_else_22805 : 
	addi	r4 r0 1
L_cont_22780 : 
	bne	r4 r0 L_else_22784
	ldi	r4 r23 0
	fldi	f2 r0 1046
	fldi	f3 r4 0
	fmul	f3 f2 f3
	fldi	f4 r0 1047
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r0 1048
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f6 r21 2
	fmul	f2 f6 f16
	fmul	f5 f2 f3
	ldi	r4 r23 0
	fldi	f3 r24 0
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fldi	f3 r24 1
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r24 2
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fmul	f4 f6 f2
	fbgt	f5 f0 L_else_22787
	addi	r4 r0 0
	jump	L_cont_22785
L_else_22787 : 
	addi	r4 r0 1
L_cont_22785 : 
	bne	r4 r0 L_else_22790
	jump	L_cont_22788
L_else_22790 : 
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
L_cont_22788 : 
	fbgt	f4 f0 L_else_22793
	addi	r4 r0 0
	jump	L_cont_22791
L_else_22793 : 
	addi	r4 r0 1
L_cont_22791 : 
	bne	r4 r0 L_else_22795
	jump	L_cont_22775
L_else_22795 : 
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
	jump	L_cont_22775
L_else_22784 : 
	jump	L_cont_22775
L_else_22779 : 
L_cont_22775 : 
	addi	r4 r22 -1
	add	r22 r0 r4
	jump	L_trace_reflections_2232
L_else_22768 : 
	return
L_trace_ray_2237 : 
	addi	r4 r0 4
	bgt	r28 r4 L_else_22834
	ldi	r27 r25 2
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r21 r0 0
	ldi	r19 r0 1183
	add	r20 r0 r26
	call	L_trace_or_matrix_2196
	fldi	f3 r0 1082
	fldi	f2 r0 32
	fbgt	f3 f2 L_else_22837
	addi	r4 r0 0
	jump	L_cont_22835
L_else_22837 : 
	addi	r4 r0 1
L_cont_22835 : 
	bne	r4 r0 L_else_22840
	addi	r4 r0 0
	jump	L_cont_22838
L_else_22840 : 
	fldi	f2 r0 45
	fbgt	f2 f3 L_else_22934
	addi	r4 r0 0
	jump	L_cont_22838
L_else_22934 : 
	addi	r4 r0 1
L_cont_22838 : 
	bne	r4 r0 L_else_22842
	addi	r4 r0 -1
	add	r1 r27 r28
	sti	r4 r1 0
	bne	r28 r0 L_else_22844
	return
L_else_22844 : 
	fldi	f2 r26 0
	fldi	f3 r0 1039
	fmul	f3 f2 f3
	fldi	f4 r26 1
	fldi	f2 r0 1040
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r26 2
	fldi	f2 r0 1041
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsub	f3 f0 f2
	fbgt	f3 f0 L_else_22847
	addi	r4 r0 0
	jump	L_cont_22845
L_else_22847 : 
	addi	r4 r0 1
L_cont_22845 : 
	bne	r4 r0 L_else_22849
	return
L_else_22849 : 
	fmul	f2 f3 f3
	fmul	f2 f2 f3
	fmul	f2 f2 f18
	fldi	f3 r0 1081
	fmul	f3 f2 f3
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
L_else_22842 : 
	ldi	r8 r0 1045
	addi	r4 r0 1970
	add	r1 r4 r8
	ldi	r30 r1 0
	ldi	r29 r30 2
	ldi	r4 r30 7
	fldi	f2 r4 0
	fmul	f19 f2 f18
	ldi	r5 r30 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22852
	ldi	r4 r0 1074
	fldi	f2 r0 26
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r5 r0 1046
	addi	r6 r4 -1
	addi	r4 r4 -1
	add	r1 r26 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_22922
	addi	r4 r0 1
	jump	L_cont_22920
L_else_22922 : 
	addi	r4 r0 0
L_cont_22920 : 
	bne	r4 r0 L_else_22925
	fbgt	f2 f0 L_else_22928
	addi	r4 r0 0
	jump	L_cont_22926
L_else_22928 : 
	addi	r4 r0 1
L_cont_22926 : 
	bne	r4 r0 L_else_22930
	fldi	f2 r0 28
	jump	L_cont_22923
L_else_22930 : 
	fldi	f2 r0 20
	jump	L_cont_22923
L_else_22925 : 
	fldi	f2 r0 26
L_cont_22923 : 
	fsub	f2 f0 f2
	add	r1 r5 r6
	fsti	f2 r1 0
	jump	L_cont_22850
L_else_22852 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22932
	ldi	r4 r30 4
	fldi	f2 r4 0
	fsub	f2 f0 f2
	fsti	f2 r0 1046
	ldi	r4 r30 4
	fldi	f2 r4 1
	fsub	f2 f0 f2
	fsti	f2 r0 1047
	ldi	r4 r30 4
	fldi	f2 r4 2
	fsub	f2 f0 f2
	fsti	f2 r0 1048
	jump	L_cont_22850
L_else_22932 : 
	add	r5 r0 r30
	call	L_get_nvector_second_2220
L_cont_22850 : 
	fldi	f2 r0 1042
	fsti	f2 r0 1063
	fldi	f2 r0 1043
	fsti	f2 r0 1064
	fldi	f2 r0 1044
	fsti	f2 r0 1065
	addi	r4 r0 1042
	add	r5 r0 r30
	call	L_utexture_2225
	addi	r4 r0 4
	mul	r4 r8 r4
	ldi	r5 r0 1074
	add	r4 r4 r5
	add	r1 r27 r28
	sti	r4 r1 0
	ldi	r4 r25 1
	add	r1 r4 r28
	ldi	r4 r1 0
	fldi	f2 r0 1042
	fsti	f2 r4 0
	fldi	f2 r0 1043
	fsti	f2 r4 1
	fldi	f2 r0 1044
	fsti	f2 r4 2
	ldi	r5 r25 3
	ldi	r4 r30 7
	fldi	f3 r4 0
	fldi	f2 r0 19
	fbgt	f2 f3 L_else_22855
	addi	r4 r0 0
	jump	L_cont_22853
L_else_22855 : 
	addi	r4 r0 1
L_cont_22853 : 
	bne	r4 r0 L_else_22858
	addi	r4 r0 1
	add	r1 r5 r28
	sti	r4 r1 0
	ldi	r4 r25 4
	add	r1 r4 r28
	ldi	r5 r1 0
	fldi	f2 r0 1049
	fsti	f2 r5 0
	fldi	f2 r0 1050
	fsti	f2 r5 1
	fldi	f2 r0 1051
	fsti	f2 r5 2
	add	r1 r4 r28
	ldi	r4 r1 0
	fldi	f2 r0 46
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
	add	r1 r4 r28
	ldi	r4 r1 0
	fldi	f2 r0 1046
	fsti	f2 r4 0
	fldi	f2 r0 1047
	fsti	f2 r4 1
	fldi	f2 r0 1048
	fsti	f2 r4 2
	jump	L_cont_22856
L_else_22858 : 
	addi	r4 r0 0
	add	r1 r5 r28
	sti	r4 r1 0
L_cont_22856 : 
	fldi	f5 r0 47
	fldi	f3 r26 0
	fldi	f2 r0 1046
	fmul	f4 f3 f2
	fldi	f3 r26 1
	fldi	f2 r0 1047
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r26 2
	fldi	f2 r0 1048
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fmul	f4 f5 f2
	fldi	f3 r26 0
	fldi	f2 r0 1046
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r26 0
	fldi	f3 r26 1
	fldi	f2 r0 1047
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r26 1
	fldi	f3 r26 2
	fldi	f2 r0 1048
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r26 2
	ldi	r4 r30 7
	fldi	f2 r4 1
	fmul	f15 f18 f2
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22861
	addi	r4 r0 0
	jump	L_cont_22859
L_else_22861 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22888
	addi	r4 r0 1
	jump	L_cont_22886
L_else_22888 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2113
	bne	r4 r0 L_else_22903
	addi	r4 r0 0
	jump	L_cont_22886
L_else_22903 : 
	fldi	f3 r0 1073
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_22906
	addi	r4 r0 0
	jump	L_cont_22904
L_else_22906 : 
	addi	r4 r0 1
L_cont_22904 : 
	bne	r4 r0 L_else_22908
	addi	r4 r0 0
	jump	L_cont_22886
L_else_22908 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22911
	addi	r4 r0 0
	jump	L_cont_22909
L_else_22911 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22915
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22917
	addi	r4 r0 0
	jump	L_cont_22909
L_else_22917 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22919
	addi	r13 r0 3
	add	r12 r0 r15
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22909
L_else_22919 : 
	addi	r4 r0 1
	jump	L_cont_22909
L_else_22915 : 
	addi	r4 r0 1
L_cont_22909 : 
	bne	r4 r0 L_else_22913
	addi	r4 r0 0
	jump	L_cont_22886
L_else_22913 : 
	addi	r4 r0 1
L_cont_22886 : 
	bne	r4 r0 L_else_22890
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_22859
L_else_22890 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22893
	addi	r4 r0 0
	jump	L_cont_22891
L_else_22893 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22897
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22899
	addi	r4 r0 0
	jump	L_cont_22891
L_else_22899 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22901
	addi	r13 r0 3
	add	r12 r0 r15
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22891
L_else_22901 : 
	addi	r4 r0 1
	jump	L_cont_22891
L_else_22897 : 
	addi	r4 r0 1
L_cont_22891 : 
	bne	r4 r0 L_else_22895
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_22859
L_else_22895 : 
	addi	r4 r0 1
L_cont_22859 : 
	bne	r4 r0 L_else_22864
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
	fldi	f2 r26 0
	fldi	f3 r0 1039
	fmul	f3 f2 f3
	fldi	f4 r26 1
	fldi	f2 r0 1040
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r26 2
	fldi	f2 r0 1041
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsub	f4 f0 f2
	fbgt	f5 f0 L_else_22877
	addi	r4 r0 0
	jump	L_cont_22875
L_else_22877 : 
	addi	r4 r0 1
L_cont_22875 : 
	bne	r4 r0 L_else_22880
	jump	L_cont_22878
L_else_22880 : 
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
L_cont_22878 : 
	fbgt	f4 f0 L_else_22883
	addi	r4 r0 0
	jump	L_cont_22881
L_else_22883 : 
	addi	r4 r0 1
L_cont_22881 : 
	bne	r4 r0 L_else_22885
	jump	L_cont_22862
L_else_22885 : 
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
	jump	L_cont_22862
L_else_22864 : 
L_cont_22862 : 
	addi	r9 r0 1042
	fldi	f2 r0 1042
	fsti	f2 r0 1066
	fldi	f2 r0 1043
	fsti	f2 r0 1067
	fldi	f2 r0 1044
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_setup_startp_constants_2148
	ldi	r4 r0 1075
	addi	r22 r4 -1
	add	r24 r0 r26
	fadd	f16 f0 f19
	call	L_trace_reflections_2232
	fldi	f2 r0 48
	fbgt	f18 f2 L_else_22867
	addi	r4 r0 0
	jump	L_cont_22865
L_else_22867 : 
	addi	r4 r0 1
L_cont_22865 : 
	bne	r4 r0 L_else_22869
	return
L_else_22869 : 
	addi	r4 r0 4
	bgt	r4 r28 L_else_22872
	jump	L_cont_22870
L_else_22872 : 
	addi	r4 r28 1
	addi	r5 r0 -1
	add	r1 r27 r4
	sti	r5 r1 0
L_cont_22870 : 
	addi	r4 r0 2
	bne	r29 r4 L_else_22874
	fldi	f3 r0 20
	ldi	r4 r30 7
	fldi	f2 r4 0
	fsub	f2 f3 f2
	fmul	f2 f18 f2
	addi	r4 r28 1
	fldi	f3 r0 1082
	fadd	f3 f17 f3
	add	r28 r0 r4
	fadd	f18 f0 f2
	fadd	f17 f0 f3
	jump	L_trace_ray_2237
L_else_22874 : 
	return
L_else_22834 : 
	return
L_trace_diffuse_ray_2243 : 
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r20 r0 0
	ldi	r18 r0 1183
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2210
	fldi	f2 r0 1082
	fldi	f3 r0 32
	fbgt	f2 f3 L_else_22938
	addi	r4 r0 0
	jump	L_cont_22936
L_else_22938 : 
	addi	r4 r0 1
L_cont_22936 : 
	bne	r4 r0 L_else_22941
	addi	r4 r0 0
	jump	L_cont_22939
L_else_22941 : 
	fldi	f3 r0 45
	fbgt	f3 f2 L_else_23006
	addi	r4 r0 0
	jump	L_cont_22939
L_else_23006 : 
	addi	r4 r0 1
L_cont_22939 : 
	bne	r4 r0 L_else_22943
	return
L_else_22943 : 
	addi	r5 r0 1970
	ldi	r4 r0 1045
	add	r1 r5 r4
	ldi	r17 r1 0
	ldi	r7 r21 0
	ldi	r5 r17 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22946
	ldi	r4 r0 1074
	fldi	f2 r0 26
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r6 r0 1046
	addi	r5 r4 -1
	addi	r4 r4 -1
	add	r1 r7 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_22994
	addi	r4 r0 1
	jump	L_cont_22992
L_else_22994 : 
	addi	r4 r0 0
L_cont_22992 : 
	bne	r4 r0 L_else_22997
	fbgt	f2 f0 L_else_23000
	addi	r4 r0 0
	jump	L_cont_22998
L_else_23000 : 
	addi	r4 r0 1
L_cont_22998 : 
	bne	r4 r0 L_else_23002
	fldi	f2 r0 28
	jump	L_cont_22995
L_else_23002 : 
	fldi	f2 r0 20
	jump	L_cont_22995
L_else_22997 : 
	fldi	f2 r0 26
L_cont_22995 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	jump	L_cont_22944
L_else_22946 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23004
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
	jump	L_cont_22944
L_else_23004 : 
	add	r5 r0 r17
	call	L_get_nvector_second_2220
L_cont_22944 : 
	addi	r4 r0 1042
	add	r5 r0 r17
	call	L_utexture_2225
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22949
	addi	r4 r0 0
	jump	L_cont_22947
L_else_22949 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22960
	addi	r4 r0 1
	jump	L_cont_22958
L_else_22960 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2113
	bne	r4 r0 L_else_22975
	addi	r4 r0 0
	jump	L_cont_22958
L_else_22975 : 
	fldi	f3 r0 1073
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_22978
	addi	r4 r0 0
	jump	L_cont_22976
L_else_22978 : 
	addi	r4 r0 1
L_cont_22976 : 
	bne	r4 r0 L_else_22980
	addi	r4 r0 0
	jump	L_cont_22958
L_else_22980 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22983
	addi	r4 r0 0
	jump	L_cont_22981
L_else_22983 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22987
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22989
	addi	r4 r0 0
	jump	L_cont_22981
L_else_22989 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22991
	addi	r13 r0 3
	add	r12 r0 r15
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22981
L_else_22991 : 
	addi	r4 r0 1
	jump	L_cont_22981
L_else_22987 : 
	addi	r4 r0 1
L_cont_22981 : 
	bne	r4 r0 L_else_22985
	addi	r4 r0 0
	jump	L_cont_22958
L_else_22985 : 
	addi	r4 r0 1
L_cont_22958 : 
	bne	r4 r0 L_else_22962
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_22947
L_else_22962 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22965
	addi	r4 r0 0
	jump	L_cont_22963
L_else_22965 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22969
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22971
	addi	r4 r0 0
	jump	L_cont_22963
L_else_22971 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2179
	bne	r4 r0 L_else_22973
	addi	r13 r0 3
	add	r12 r0 r15
	call	L_shadow_check_one_or_group_2182
	jump	L_cont_22963
L_else_22973 : 
	addi	r4 r0 1
	jump	L_cont_22963
L_else_22969 : 
	addi	r4 r0 1
L_cont_22963 : 
	bne	r4 r0 L_else_22967
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2185
	jump	L_cont_22947
L_else_22967 : 
	addi	r4 r0 1
L_cont_22947 : 
	bne	r4 r0 L_else_22951
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
	fbgt	f2 f0 L_else_22954
	addi	r4 r0 0
	jump	L_cont_22952
L_else_22954 : 
	addi	r4 r0 1
L_cont_22952 : 
	bne	r4 r0 L_else_22957
	fldi	f2 r0 26
	jump	L_cont_22955
L_else_22957 : 
L_cont_22955 : 
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
L_else_22951 : 
	return
L_iter_trace_diffuse_rays_2246 : 
	bgt	r0 r21 L_else_23009
	add	r1 r23 r21
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r24 0
	fmul	f4 f3 f2
	fldi	f3 r4 1
	fldi	f2 r24 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r4 2
	fldi	f2 r24 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_23012
	addi	r4 r0 0
	jump	L_cont_23010
L_else_23012 : 
	addi	r4 r0 1
L_cont_23010 : 
	bne	r4 r0 L_else_23015
	add	r1 r23 r21
	ldi	r25 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r4 r0 0
	ldi	r18 r0 1183
	add	r1 r18 r4
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23026
	jump	L_cont_23024
L_else_23026 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_23047
	addi	r17 r0 1
	add	r15 r0 r25
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_23045
L_else_23047 : 
	add	r9 r0 r25
	call	L_solver_fast2_2131
	bne	r4 r0 L_else_23049
	jump	L_cont_23045
L_else_23049 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_23052
	addi	r4 r0 0
	jump	L_cont_23050
L_else_23052 : 
	addi	r4 r0 1
L_cont_23050 : 
	bne	r4 r0 L_else_23054
	jump	L_cont_23045
L_else_23054 : 
	addi	r17 r0 1
	add	r15 r0 r25
	call	L_solve_one_or_network_fast_2206
L_cont_23045 : 
	addi	r20 r0 1
	add	r19 r0 r25
	call	L_trace_or_matrix_fast_2210
L_cont_23024 : 
	fldi	f2 r0 1082
	fldi	f3 r0 32
	fbgt	f2 f3 L_else_23029
	addi	r4 r0 0
	jump	L_cont_23027
L_else_23029 : 
	addi	r4 r0 1
L_cont_23027 : 
	bne	r4 r0 L_else_23032
	addi	r4 r0 0
	jump	L_cont_23030
L_else_23032 : 
	fldi	f3 r0 45
	fbgt	f3 f2 L_else_23044
	addi	r4 r0 0
	jump	L_cont_23030
L_else_23044 : 
	addi	r4 r0 1
L_cont_23030 : 
	bne	r4 r0 L_else_23034
	jump	L_cont_23013
L_else_23034 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r25 0
	add	r5 r0 r17
	call	L_get_nvector_2222
	addi	r4 r0 1042
	add	r5 r0 r17
	call	L_utexture_2225
	addi	r15 r0 0
	ldi	r14 r0 1183
	call	L_shadow_check_one_or_matrix_2185
	bne	r4 r0 L_else_23036
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
	fbgt	f2 f0 L_else_23039
	addi	r4 r0 0
	jump	L_cont_23037
L_else_23039 : 
	addi	r4 r0 1
L_cont_23037 : 
	bne	r4 r0 L_else_23042
	fldi	f2 r0 26
	jump	L_cont_23040
L_else_23042 : 
L_cont_23040 : 
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
	jump	L_cont_23013
L_else_23036 : 
	jump	L_cont_23013
L_else_23015 : 
	addi	r4 r21 1
	add	r1 r23 r4
	ldi	r25 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r4 r0 0
	ldi	r18 r0 1183
	add	r1 r18 r4
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23057
	jump	L_cont_23055
L_else_23057 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_23078
	addi	r17 r0 1
	add	r15 r0 r25
	call	L_solve_one_or_network_fast_2206
	jump	L_cont_23076
L_else_23078 : 
	add	r9 r0 r25
	call	L_solver_fast2_2131
	bne	r4 r0 L_else_23080
	jump	L_cont_23076
L_else_23080 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_23083
	addi	r4 r0 0
	jump	L_cont_23081
L_else_23083 : 
	addi	r4 r0 1
L_cont_23081 : 
	bne	r4 r0 L_else_23085
	jump	L_cont_23076
L_else_23085 : 
	addi	r17 r0 1
	add	r15 r0 r25
	call	L_solve_one_or_network_fast_2206
L_cont_23076 : 
	addi	r20 r0 1
	add	r19 r0 r25
	call	L_trace_or_matrix_fast_2210
L_cont_23055 : 
	fldi	f2 r0 1082
	fldi	f3 r0 32
	fbgt	f2 f3 L_else_23060
	addi	r4 r0 0
	jump	L_cont_23058
L_else_23060 : 
	addi	r4 r0 1
L_cont_23058 : 
	bne	r4 r0 L_else_23063
	addi	r4 r0 0
	jump	L_cont_23061
L_else_23063 : 
	fldi	f3 r0 45
	fbgt	f3 f2 L_else_23075
	addi	r4 r0 0
	jump	L_cont_23061
L_else_23075 : 
	addi	r4 r0 1
L_cont_23061 : 
	bne	r4 r0 L_else_23065
	jump	L_cont_23013
L_else_23065 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r25 0
	add	r5 r0 r17
	call	L_get_nvector_2222
	addi	r4 r0 1042
	add	r5 r0 r17
	call	L_utexture_2225
	addi	r15 r0 0
	ldi	r14 r0 1183
	call	L_shadow_check_one_or_matrix_2185
	bne	r4 r0 L_else_23067
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
	fbgt	f2 f0 L_else_23070
	addi	r4 r0 0
	jump	L_cont_23068
L_else_23070 : 
	addi	r4 r0 1
L_cont_23068 : 
	bne	r4 r0 L_else_23073
	fldi	f2 r0 26
	jump	L_cont_23071
L_else_23073 : 
L_cont_23071 : 
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
	jump	L_cont_23013
L_else_23067 : 
L_cont_23013 : 
	addi	r25 r21 -2
	bgt	r0 r25 L_else_23017
	add	r1 r23 r25
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r24 0
	fmul	f4 f3 f2
	fldi	f2 r4 1
	fldi	f3 r24 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r4 2
	fldi	f3 r24 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_23020
	addi	r4 r0 0
	jump	L_cont_23018
L_else_23020 : 
	addi	r4 r0 1
L_cont_23018 : 
	bne	r4 r0 L_else_23023
	add	r1 r23 r25
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_23021
L_else_23023 : 
	addi	r4 r25 1
	add	r1 r23 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_23021 : 
	addi	r4 r25 -2
	add	r21 r0 r4
	jump	L_iter_trace_diffuse_rays_2246
L_else_23017 : 
	return
L_else_23009 : 
	return
L_calc_diffuse_using_1point_2259 : 
	ldi	r4 r7 5
	ldi	r6 r7 7
	ldi	r5 r7 1
	ldi	r26 r7 4
	add	r1 r4 r27
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r0 1052
	fldi	f2 r4 1
	fsti	f2 r0 1053
	fldi	f2 r4 2
	fsti	f2 r0 1054
	ldi	r4 r7 6
	ldi	r30 r4 0
	add	r1 r6 r27
	ldi	r29 r1 0
	add	r1 r5 r27
	ldi	r28 r1 0
	bne	r30 r0 L_else_23089
	jump	L_cont_23087
L_else_23089 : 
	ldi	r23 r0 1076
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r28
	call	L_setup_startp_constants_2148
	addi	r5 r0 118
	add	r1 r23 r5
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
	fbgt	f0 f3 L_else_23128
	addi	r4 r0 0
	jump	L_cont_23126
L_else_23128 : 
	addi	r4 r0 1
L_cont_23126 : 
	bne	r4 r0 L_else_23131
	add	r1 r23 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_23129
L_else_23131 : 
	addi	r4 r0 119
	add	r1 r23 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_23129 : 
	addi	r21 r0 116
	add	r24 r0 r29
	add	r22 r0 r28
	call	L_iter_trace_diffuse_rays_2246
L_cont_23087 : 
	addi	r4 r0 1
	bne	r30 r4 L_else_23092
	jump	L_cont_23090
L_else_23092 : 
	ldi	r23 r0 1077
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r28
	call	L_setup_startp_constants_2148
	addi	r5 r0 118
	add	r1 r23 r5
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
	fbgt	f0 f3 L_else_23122
	addi	r4 r0 0
	jump	L_cont_23120
L_else_23122 : 
	addi	r4 r0 1
L_cont_23120 : 
	bne	r4 r0 L_else_23125
	add	r1 r23 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_23123
L_else_23125 : 
	addi	r4 r0 119
	add	r1 r23 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_23123 : 
	addi	r21 r0 116
	add	r24 r0 r29
	add	r22 r0 r28
	call	L_iter_trace_diffuse_rays_2246
L_cont_23090 : 
	addi	r4 r0 2
	bne	r30 r4 L_else_23095
	jump	L_cont_23093
L_else_23095 : 
	ldi	r23 r0 1078
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r28
	call	L_setup_startp_constants_2148
	addi	r5 r0 118
	add	r1 r23 r5
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
	fbgt	f0 f3 L_else_23116
	addi	r4 r0 0
	jump	L_cont_23114
L_else_23116 : 
	addi	r4 r0 1
L_cont_23114 : 
	bne	r4 r0 L_else_23119
	add	r1 r23 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_23117
L_else_23119 : 
	addi	r4 r0 119
	add	r1 r23 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_23117 : 
	addi	r21 r0 116
	add	r24 r0 r29
	add	r22 r0 r28
	call	L_iter_trace_diffuse_rays_2246
L_cont_23093 : 
	addi	r4 r0 3
	bne	r30 r4 L_else_23098
	jump	L_cont_23096
L_else_23098 : 
	ldi	r23 r0 1079
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r28
	call	L_setup_startp_constants_2148
	addi	r5 r0 118
	add	r1 r23 r5
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
	fbgt	f0 f3 L_else_23110
	addi	r4 r0 0
	jump	L_cont_23108
L_else_23110 : 
	addi	r4 r0 1
L_cont_23108 : 
	bne	r4 r0 L_else_23113
	add	r1 r23 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_23111
L_else_23113 : 
	addi	r4 r0 119
	add	r1 r23 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_23111 : 
	addi	r21 r0 116
	add	r24 r0 r29
	add	r22 r0 r28
	call	L_iter_trace_diffuse_rays_2246
L_cont_23096 : 
	addi	r4 r0 4
	bne	r30 r4 L_else_23101
	jump	L_cont_23099
L_else_23101 : 
	ldi	r23 r0 1080
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r28
	call	L_setup_startp_constants_2148
	addi	r5 r0 118
	add	r1 r23 r5
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
	fbgt	f0 f3 L_else_23104
	addi	r4 r0 0
	jump	L_cont_23102
L_else_23104 : 
	addi	r4 r0 1
L_cont_23102 : 
	bne	r4 r0 L_else_23107
	add	r1 r23 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_23105
L_else_23107 : 
	addi	r4 r0 119
	add	r1 r23 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_23105 : 
	addi	r21 r0 116
	add	r24 r0 r29
	add	r22 r0 r28
	call	L_iter_trace_diffuse_rays_2246
L_cont_23099 : 
	add	r1 r26 r27
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
L_calc_diffuse_using_5points_2262 : 
	add	r1 r4 r9
	ldi	r4 r1 0
	ldi	r7 r4 5
	addi	r4 r9 -1
	add	r1 r12 r4
	ldi	r4 r1 0
	ldi	r10 r4 5
	add	r1 r12 r9
	ldi	r4 r1 0
	ldi	r8 r4 5
	addi	r4 r9 1
	add	r1 r12 r4
	ldi	r4 r1 0
	ldi	r6 r4 5
	add	r1 r5 r9
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
	fldi	f3 r0 1053
	fldi	f2 r4 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r4 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r8 r11
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
	add	r1 r6 r11
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
	add	r1 r5 r11
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
	add	r1 r12 r9
	ldi	r4 r1 0
	ldi	r4 r4 4
	add	r1 r4 r11
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
	return
L_do_without_neighbors_2268 : 
	addi	r4 r0 4
	bgt	r27 r4 L_else_23135
	ldi	r4 r31 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23137
	ldi	r4 r31 3
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r0 L_else_23140
	jump	L_cont_23138
L_else_23140 : 
	ldi	r4 r31 5
	ldi	r6 r31 7
	ldi	r5 r31 1
	ldi	r26 r31 4
	add	r1 r4 r27
	ldi	r4 r1 0
	fldi	f2 r4 0
	fsti	f2 r0 1052
	fldi	f2 r4 1
	fsti	f2 r0 1053
	fldi	f2 r4 2
	fsti	f2 r0 1054
	ldi	r4 r31 6
	ldi	r30 r4 0
	add	r1 r6 r27
	ldi	r29 r1 0
	add	r1 r5 r27
	ldi	r28 r1 0
	bne	r30 r0 L_else_23150
	jump	L_cont_23148
L_else_23150 : 
	ldi	r23 r0 1076
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r28
	call	L_setup_startp_constants_2148
	addi	r21 r0 118
	add	r24 r0 r29
	add	r22 r0 r28
	call	L_iter_trace_diffuse_rays_2246
L_cont_23148 : 
	addi	r4 r0 1
	bne	r30 r4 L_else_23153
	jump	L_cont_23151
L_else_23153 : 
	ldi	r23 r0 1077
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r28
	call	L_setup_startp_constants_2148
	addi	r21 r0 118
	add	r24 r0 r29
	add	r22 r0 r28
	call	L_iter_trace_diffuse_rays_2246
L_cont_23151 : 
	addi	r4 r0 2
	bne	r30 r4 L_else_23156
	jump	L_cont_23154
L_else_23156 : 
	ldi	r23 r0 1078
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r28
	call	L_setup_startp_constants_2148
	addi	r21 r0 118
	add	r24 r0 r29
	add	r22 r0 r28
	call	L_iter_trace_diffuse_rays_2246
L_cont_23154 : 
	addi	r4 r0 3
	bne	r30 r4 L_else_23159
	jump	L_cont_23157
L_else_23159 : 
	ldi	r23 r0 1079
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r28
	call	L_setup_startp_constants_2148
	addi	r21 r0 118
	add	r24 r0 r29
	add	r22 r0 r28
	call	L_iter_trace_diffuse_rays_2246
L_cont_23157 : 
	addi	r4 r0 4
	bne	r30 r4 L_else_23162
	jump	L_cont_23160
L_else_23162 : 
	ldi	r23 r0 1080
	fldi	f2 r28 0
	fsti	f2 r0 1066
	fldi	f2 r28 1
	fsti	f2 r0 1067
	fldi	f2 r28 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r28
	call	L_setup_startp_constants_2148
	addi	r21 r0 118
	add	r24 r0 r29
	add	r22 r0 r28
	call	L_iter_trace_diffuse_rays_2246
L_cont_23160 : 
	add	r1 r26 r27
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
L_cont_23138 : 
	addi	r4 r27 1
	addi	r5 r0 4
	bgt	r4 r5 L_else_23142
	ldi	r5 r31 2
	add	r1 r5 r4
	ldi	r5 r1 0
	bgt	r0 r5 L_else_23144
	ldi	r5 r31 3
	add	r1 r5 r4
	ldi	r5 r1 0
	bne	r5 r0 L_else_23147
	jump	L_cont_23145
L_else_23147 : 
	sti	r4 r2 0
	add	r7 r0 r31
	add	r27 r0 r4
	addi	r2 r2 1
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -1
	ldi	r4 r2 0
L_cont_23145 : 
	addi	r4 r4 1
	add	r27 r0 r4
	jump	L_do_without_neighbors_2268
L_else_23144 : 
	return
L_else_23142 : 
	return
L_else_23137 : 
	return
L_else_23135 : 
	return
L_try_exploit_neighbors_2284 : 
	add	r1 r16 r14
	ldi	r7 r1 0
	addi	r5 r0 4
	bgt	r4 r5 L_else_23165
	ldi	r5 r7 2
	add	r1 r5 r4
	ldi	r5 r1 0
	bgt	r0 r5 L_else_23167
	add	r1 r16 r14
	ldi	r5 r1 0
	ldi	r5 r5 2
	add	r1 r5 r4
	ldi	r6 r1 0
	add	r1 r17 r14
	ldi	r5 r1 0
	ldi	r5 r5 2
	add	r1 r5 r4
	ldi	r5 r1 0
	bne	r5 r6 L_else_23170
	add	r1 r15 r14
	ldi	r5 r1 0
	ldi	r5 r5 2
	add	r1 r5 r4
	ldi	r5 r1 0
	bne	r5 r6 L_else_23202
	addi	r5 r14 -1
	add	r1 r16 r5
	ldi	r5 r1 0
	ldi	r5 r5 2
	add	r1 r5 r4
	ldi	r5 r1 0
	bne	r5 r6 L_else_23204
	addi	r5 r14 1
	add	r1 r16 r5
	ldi	r5 r1 0
	ldi	r5 r5 2
	add	r1 r5 r4
	ldi	r5 r1 0
	bne	r5 r6 L_else_23206
	addi	r5 r0 1
	jump	L_cont_23168
L_else_23206 : 
	addi	r5 r0 0
	jump	L_cont_23168
L_else_23204 : 
	addi	r5 r0 0
	jump	L_cont_23168
L_else_23202 : 
	addi	r5 r0 0
	jump	L_cont_23168
L_else_23170 : 
	addi	r5 r0 0
L_cont_23168 : 
	bne	r5 r0 L_else_23172
	add	r1 r16 r14
	ldi	r31 r1 0
	addi	r5 r0 4
	bgt	r4 r5 L_else_23174
	ldi	r5 r31 2
	add	r1 r5 r4
	ldi	r5 r1 0
	bgt	r0 r5 L_else_23176
	ldi	r5 r31 3
	add	r1 r5 r4
	ldi	r5 r1 0
	bne	r5 r0 L_else_23179
	jump	L_cont_23177
L_else_23179 : 
	sti	r4 r2 0
	add	r7 r0 r31
	add	r27 r0 r4
	addi	r2 r2 1
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -1
	ldi	r4 r2 0
L_cont_23177 : 
	addi	r27 r4 1
	jump	L_do_without_neighbors_2268
L_else_23176 : 
	return
L_else_23174 : 
	return
L_else_23172 : 
	ldi	r5 r7 3
	add	r1 r5 r4
	ldi	r5 r1 0
	bne	r5 r0 L_else_23182
	jump	L_cont_23180
L_else_23182 : 
	add	r1 r17 r14
	ldi	r5 r1 0
	ldi	r8 r5 5
	addi	r5 r14 -1
	add	r1 r16 r5
	ldi	r5 r1 0
	ldi	r10 r5 5
	add	r1 r16 r14
	ldi	r5 r1 0
	ldi	r9 r5 5
	addi	r5 r14 1
	add	r1 r16 r5
	ldi	r5 r1 0
	ldi	r7 r5 5
	add	r1 r15 r14
	ldi	r5 r1 0
	ldi	r6 r5 5
	add	r1 r8 r4
	ldi	r5 r1 0
	fldi	f2 r5 0
	fsti	f2 r0 1052
	fldi	f2 r5 1
	fsti	f2 r0 1053
	fldi	f2 r5 2
	fsti	f2 r0 1054
	add	r1 r10 r4
	ldi	r5 r1 0
	fldi	f3 r0 1052
	fldi	f2 r5 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r5 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r5 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r9 r4
	ldi	r5 r1 0
	fldi	f2 r0 1052
	fldi	f3 r5 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r5 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r5 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	add	r1 r7 r4
	ldi	r5 r1 0
	fldi	f3 r0 1052
	fldi	f2 r5 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f2 r0 1053
	fldi	f3 r5 1
	fadd	f2 f2 f3
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r5 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r6 r4
	ldi	r5 r1 0
	fldi	f2 r0 1052
	fldi	f3 r5 0
	fadd	f2 f2 f3
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r5 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f2 r0 1054
	fldi	f3 r5 2
	fadd	f2 f2 f3
	fsti	f2 r0 1054
	add	r1 r16 r14
	ldi	r5 r1 0
	ldi	r5 r5 4
	add	r1 r5 r4
	ldi	r5 r1 0
	fldi	f4 r0 1055
	fldi	f2 r5 0
	fldi	f3 r0 1052
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1055
	fldi	f3 r0 1056
	fldi	f4 r5 1
	fldi	f2 r0 1053
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1056
	fldi	f4 r0 1057
	fldi	f2 r5 2
	fldi	f3 r0 1054
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1057
L_cont_23180 : 
	addi	r27 r4 1
	add	r1 r16 r14
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r27 r4 L_else_23184
	ldi	r4 r6 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23186
	add	r1 r16 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r5 r1 0
	add	r1 r17 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_23189
	add	r1 r15 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_23196
	addi	r4 r14 -1
	add	r1 r16 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_23198
	addi	r4 r14 1
	add	r1 r16 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r5 L_else_23200
	addi	r4 r0 1
	jump	L_cont_23187
L_else_23200 : 
	addi	r4 r0 0
	jump	L_cont_23187
L_else_23198 : 
	addi	r4 r0 0
	jump	L_cont_23187
L_else_23196 : 
	addi	r4 r0 0
	jump	L_cont_23187
L_else_23189 : 
	addi	r4 r0 0
L_cont_23187 : 
	bne	r4 r0 L_else_23191
	add	r1 r16 r14
	ldi	r31 r1 0
	jump	L_do_without_neighbors_2268
L_else_23191 : 
	ldi	r4 r6 3
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r0 L_else_23194
	jump	L_cont_23192
L_else_23194 : 
	add	r9 r0 r14
	add	r4 r0 r17
	add	r12 r0 r16
	add	r5 r0 r15
	add	r11 r0 r27
	call	L_calc_diffuse_using_5points_2262
L_cont_23192 : 
	addi	r4 r27 1
	jump	L_try_exploit_neighbors_2284
L_else_23186 : 
	return
L_else_23184 : 
	return
L_else_23167 : 
	return
L_else_23165 : 
	return
L_pretrace_diffuse_rays_2297 : 
	addi	r4 r0 4
	bgt	r27 r4 L_else_23209
	ldi	r4 r26 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23211
	ldi	r4 r26 3
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r0 L_else_23214
	jump	L_cont_23212
L_else_23214 : 
	ldi	r4 r26 6
	ldi	r7 r4 0
	fldi	f2 r0 26
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r5 r26 7
	ldi	r6 r26 1
	addi	r4 r0 1076
	add	r1 r4 r7
	ldi	r23 r1 0
	add	r1 r5 r27
	ldi	r24 r1 0
	add	r1 r6 r27
	ldi	r22 r1 0
	fldi	f2 r22 0
	fsti	f2 r0 1066
	fldi	f2 r22 1
	fsti	f2 r0 1067
	fldi	f2 r22 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r22
	call	L_setup_startp_constants_2148
	addi	r21 r0 118
	call	L_iter_trace_diffuse_rays_2246
	ldi	r4 r26 5
	add	r1 r4 r27
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_23212 : 
	addi	r27 r27 1
	addi	r4 r0 4
	bgt	r27 r4 L_else_23216
	ldi	r4 r26 2
	add	r1 r4 r27
	ldi	r4 r1 0
	bgt	r0 r4 L_else_23218
	ldi	r4 r26 3
	add	r1 r4 r27
	ldi	r4 r1 0
	bne	r4 r0 L_else_23221
	jump	L_cont_23219
L_else_23221 : 
	ldi	r4 r26 6
	ldi	r7 r4 0
	fldi	f2 r0 26
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r6 r26 7
	ldi	r5 r26 1
	addi	r4 r0 1076
	add	r1 r4 r7
	ldi	r23 r1 0
	add	r1 r6 r27
	ldi	r24 r1 0
	add	r1 r5 r27
	ldi	r22 r1 0
	fldi	f2 r22 0
	fsti	f2 r0 1066
	fldi	f2 r22 1
	fsti	f2 r0 1067
	fldi	f2 r22 2
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r8 r4 -1
	add	r9 r0 r22
	call	L_setup_startp_constants_2148
	addi	r5 r0 118
	add	r1 r23 r5
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f3 r4 0
	fldi	f2 r24 0
	fmul	f4 f3 f2
	fldi	f3 r4 1
	fldi	f2 r24 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r4 2
	fldi	f2 r24 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else_23224
	addi	r4 r0 0
	jump	L_cont_23222
L_else_23224 : 
	addi	r4 r0 1
L_cont_23222 : 
	bne	r4 r0 L_else_23227
	add	r1 r23 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
	jump	L_cont_23225
L_else_23227 : 
	addi	r4 r0 119
	add	r1 r23 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2243
L_cont_23225 : 
	addi	r21 r0 116
	call	L_iter_trace_diffuse_rays_2246
	ldi	r4 r26 5
	add	r1 r4 r27
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_23219 : 
	addi	r4 r27 1
	add	r27 r0 r4
	jump	L_pretrace_diffuse_rays_2297
L_else_23218 : 
	return
L_else_23216 : 
	return
L_else_23211 : 
	return
L_else_23209 : 
	return
L_pretrace_pixels_2300 : 
	bgt	r0 r31 L_else_23230
	fldi	f3 r0 1062
	ldi	r6 r0 1060
	sub	r6 r31 r6
	foi	f2 r6
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
	fbne	f2 f0 L_else_23233
	addi	r6 r0 1
	jump	L_cont_23231
L_else_23233 : 
	addi	r6 r0 0
L_cont_23231 : 
	bne	r6 r0 L_else_23236
	fldi	f3 r0 20
	fdiv	f3 f3 f2
	jump	L_cont_23234
L_else_23236 : 
	fldi	f3 r0 20
L_cont_23234 : 
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
	addi	r28 r0 0
	fldi	f18 r0 20
	addi	r26 r0 1069
	add	r1 r4 r31
	ldi	r25 r1 0
	fldi	f17 r0 26
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 2
	call	L_trace_ray_2237
	addi	r2 r2 -2
	ldi	r5 r2 0
	ldi	r4 r2 1
	add	r1 r4 r31
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f2 r0 1055
	fsti	f2 r6 0
	fldi	f2 r0 1056
	fsti	f2 r6 1
	fldi	f2 r0 1057
	fsti	f2 r6 2
	add	r1 r4 r31
	ldi	r6 r1 0
	ldi	r6 r6 6
	sti	r5 r6 0
	add	r1 r4 r31
	ldi	r26 r1 0
	addi	r27 r0 0
	ldi	r6 r26 2
	add	r1 r6 r27
	ldi	r6 r1 0
	bgt	r0 r6 L_else_23239
	ldi	r6 r26 3
	add	r1 r6 r27
	ldi	r6 r1 0
	bne	r6 r0 L_else_23245
	jump	L_cont_23243
L_else_23245 : 
	ldi	r6 r26 6
	ldi	r8 r6 0
	fldi	f2 r0 26
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r9 r26 7
	ldi	r6 r26 1
	addi	r7 r0 1076
	add	r1 r7 r8
	ldi	r23 r1 0
	add	r1 r9 r27
	ldi	r24 r1 0
	add	r1 r6 r27
	ldi	r22 r1 0
	fldi	f2 r22 0
	fsti	f2 r0 1066
	fldi	f2 r22 1
	fsti	f2 r0 1067
	fldi	f2 r22 2
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r8 r6 -1
	sti	r4 r2 0
	sti	r5 r2 1
	add	r9 r0 r22
	addi	r2 r2 2
	call	L_setup_startp_constants_2148
	addi	r2 r2 -2
	ldi	r4 r2 0
	ldi	r5 r2 1
	addi	r7 r0 118
	add	r1 r23 r7
	ldi	r6 r1 0
	ldi	r6 r6 0
	fldi	f2 r6 0
	fldi	f3 r24 0
	fmul	f3 f2 f3
	fldi	f4 r6 1
	fldi	f2 r24 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r6 2
	fldi	f2 r24 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fbgt	f0 f3 L_else_23248
	addi	r6 r0 0
	jump	L_cont_23246
L_else_23248 : 
	addi	r6 r0 1
L_cont_23246 : 
	bne	r6 r0 L_else_23251
	add	r1 r23 r7
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 2
	call	L_trace_diffuse_ray_2243
	addi	r2 r2 -2
	ldi	r5 r2 0
	ldi	r4 r2 1
	jump	L_cont_23249
L_else_23251 : 
	addi	r6 r0 119
	add	r1 r23 r6
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 2
	call	L_trace_diffuse_ray_2243
	addi	r2 r2 -2
	ldi	r5 r2 0
	ldi	r4 r2 1
L_cont_23249 : 
	addi	r21 r0 116
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 2
	call	L_iter_trace_diffuse_rays_2246
	addi	r2 r2 -2
	ldi	r5 r2 0
	ldi	r4 r2 1
	ldi	r6 r26 5
	add	r1 r6 r27
	ldi	r6 r1 0
	fldi	f2 r0 1052
	fsti	f2 r6 0
	fldi	f2 r0 1053
	fsti	f2 r6 1
	fldi	f2 r0 1054
	fsti	f2 r6 2
L_cont_23243 : 
	addi	r27 r0 1
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 2
	call	L_pretrace_diffuse_rays_2297
	addi	r2 r2 -2
	ldi	r5 r2 0
	ldi	r4 r2 1
	jump	L_cont_23237
L_else_23239 : 
L_cont_23237 : 
	addi	r6 r31 -1
	addi	r5 r5 1
	addi	r7 r0 5
	bgt	r7 r5 L_else_23242
	addi	r5 r5 -5
	jump	L_cont_23240
L_else_23242 : 
L_cont_23240 : 
	add	r31 r0 r6
	jump	L_pretrace_pixels_2300
L_else_23230 : 
	return
L_scan_pixel_2311 : 
	ldi	r9 r0 1058
	bgt	r9 r8 L_else_23254
	return
L_else_23254 : 
	add	r1 r7 r8
	ldi	r9 r1 0
	ldi	r9 r9 0
	fldi	f2 r9 0
	fsti	f2 r0 1055
	fldi	f2 r9 1
	fsti	f2 r0 1056
	fldi	f2 r9 2
	fsti	f2 r0 1057
	ldi	r9 r0 1059
	addi	r10 r6 1
	bgt	r9 r10 L_else_23257
	addi	r9 r0 0
	jump	L_cont_23255
L_else_23257 : 
	bgt	r6 r0 L_else_23297
	addi	r9 r0 0
	jump	L_cont_23255
L_else_23297 : 
	ldi	r9 r0 1058
	addi	r10 r8 1
	bgt	r9 r10 L_else_23299
	addi	r9 r0 0
	jump	L_cont_23255
L_else_23299 : 
	bgt	r8 r0 L_else_23301
	addi	r9 r0 0
	jump	L_cont_23255
L_else_23301 : 
	addi	r9 r0 1
L_cont_23255 : 
	bne	r9 r0 L_else_23260
	add	r1 r7 r8
	ldi	r31 r1 0
	addi	r27 r0 0
	ldi	r9 r31 2
	add	r1 r9 r27
	ldi	r9 r1 0
	bgt	r0 r9 L_else_23276
	ldi	r9 r31 3
	add	r1 r9 r27
	ldi	r9 r1 0
	bne	r9 r0 L_else_23279
	jump	L_cont_23277
L_else_23279 : 
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	sti	r8 r2 4
	add	r7 r0 r31
	addi	r2 r2 5
	call	L_calc_diffuse_using_1point_2259
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r5 r2 1
	ldi	r4 r2 2
	ldi	r7 r2 3
	ldi	r8 r2 4
L_cont_23277 : 
	addi	r27 r0 1
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	sti	r8 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r5 r2 1
	ldi	r4 r2 2
	ldi	r7 r2 3
	ldi	r8 r2 4
	jump	L_cont_23258
L_else_23276 : 
	jump	L_cont_23258
L_else_23260 : 
	addi	r27 r0 0
	add	r1 r7 r8
	ldi	r11 r1 0
	ldi	r9 r11 2
	add	r1 r9 r27
	ldi	r9 r1 0
	bgt	r0 r9 L_else_23281
	add	r1 r7 r8
	ldi	r9 r1 0
	ldi	r9 r9 2
	add	r1 r9 r27
	ldi	r10 r1 0
	add	r1 r5 r8
	ldi	r9 r1 0
	ldi	r9 r9 2
	add	r1 r9 r27
	ldi	r9 r1 0
	bne	r9 r10 L_else_23284
	add	r1 r4 r8
	ldi	r9 r1 0
	ldi	r9 r9 2
	add	r1 r9 r27
	ldi	r9 r1 0
	bne	r9 r10 L_else_23291
	addi	r9 r8 -1
	add	r1 r7 r9
	ldi	r9 r1 0
	ldi	r9 r9 2
	add	r1 r9 r27
	ldi	r9 r1 0
	bne	r9 r10 L_else_23293
	addi	r9 r8 1
	add	r1 r7 r9
	ldi	r9 r1 0
	ldi	r9 r9 2
	add	r1 r9 r27
	ldi	r9 r1 0
	bne	r9 r10 L_else_23295
	addi	r9 r0 1
	jump	L_cont_23282
L_else_23295 : 
	addi	r9 r0 0
	jump	L_cont_23282
L_else_23293 : 
	addi	r9 r0 0
	jump	L_cont_23282
L_else_23291 : 
	addi	r9 r0 0
	jump	L_cont_23282
L_else_23284 : 
	addi	r9 r0 0
L_cont_23282 : 
	bne	r9 r0 L_else_23286
	add	r1 r7 r8
	ldi	r31 r1 0
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	sti	r8 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r5 r2 1
	ldi	r4 r2 2
	ldi	r7 r2 3
	ldi	r8 r2 4
	jump	L_cont_23258
L_else_23286 : 
	ldi	r9 r11 3
	add	r1 r9 r27
	ldi	r9 r1 0
	bne	r9 r0 L_else_23289
	jump	L_cont_23287
L_else_23289 : 
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	sti	r7 r2 3
	sti	r4 r2 4
	add	r9 r0 r8
	add	r12 r0 r7
	add	r11 r0 r27
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	addi	r2 r2 5
	call	L_calc_diffuse_using_5points_2262
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	ldi	r7 r2 3
	ldi	r4 r2 4
L_cont_23287 : 
	addi	r9 r0 1
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	sti	r8 r2 4
	add	r14 r0 r8
	add	r13 r0 r6
	add	r17 r0 r5
	add	r16 r0 r7
	add	r15 r0 r4
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r5 r2 1
	ldi	r4 r2 2
	ldi	r7 r2 3
	ldi	r8 r2 4
	jump	L_cont_23258
L_else_23281 : 
L_cont_23258 : 
	fldi	f2 r0 1055
	call	min_caml_print_float
	fldi	f2 r0 1056
	call	min_caml_print_float
	fldi	f2 r0 1057
	call	min_caml_print_float
	addi	r8 r8 1
	ldi	r9 r0 1058
	bgt	r9 r8 L_else_23262
	return
L_else_23262 : 
	add	r1 r7 r8
	ldi	r9 r1 0
	ldi	r9 r9 0
	fldi	f2 r9 0
	fsti	f2 r0 1055
	fldi	f2 r9 1
	fsti	f2 r0 1056
	fldi	f2 r9 2
	fsti	f2 r0 1057
	ldi	r10 r0 1059
	addi	r9 r6 1
	bgt	r10 r9 L_else_23265
	addi	r9 r0 0
	jump	L_cont_23263
L_else_23265 : 
	bgt	r6 r0 L_else_23270
	addi	r9 r0 0
	jump	L_cont_23263
L_else_23270 : 
	ldi	r10 r0 1058
	addi	r9 r8 1
	bgt	r10 r9 L_else_23272
	addi	r9 r0 0
	jump	L_cont_23263
L_else_23272 : 
	bgt	r8 r0 L_else_23274
	addi	r9 r0 0
	jump	L_cont_23263
L_else_23274 : 
	addi	r9 r0 1
L_cont_23263 : 
	bne	r9 r0 L_else_23268
	add	r1 r7 r8
	ldi	r31 r1 0
	addi	r27 r0 0
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r7 r2 2
	sti	r4 r2 3
	sti	r8 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r5 r2 1
	ldi	r7 r2 2
	ldi	r4 r2 3
	ldi	r8 r2 4
	jump	L_cont_23266
L_else_23268 : 
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r7 r2 2
	sti	r4 r2 3
	sti	r8 r2 4
	add	r14 r0 r8
	add	r13 r0 r6
	add	r17 r0 r5
	add	r16 r0 r7
	add	r15 r0 r4
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r5 r2 1
	ldi	r7 r2 2
	ldi	r4 r2 3
	ldi	r8 r2 4
L_cont_23266 : 
	fldi	f2 r0 1055
	call	min_caml_print_float
	fldi	f2 r0 1056
	call	min_caml_print_float
	fldi	f2 r0 1057
	call	min_caml_print_float
	addi	r8 r8 1
	jump	L_scan_pixel_2311
L_scan_line_2317 : 
	ldi	r9 r0 1059
	bgt	r9 r8 L_else_23304
	return
L_else_23304 : 
	ldi	r9 r0 1059
	addi	r9 r9 -1
	bgt	r9 r8 L_else_23307
	jump	L_cont_23305
L_else_23307 : 
	addi	r10 r8 1
	fldi	f2 r0 1062
	ldi	r9 r0 1061
	sub	r9 r10 r9
	foi	f3 r9
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
	ldi	r9 r0 1058
	addi	r31 r9 -1
	sti	r8 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r6 r2 3
	sti	r7 r2 4
	add	r5 r0 r7
	addi	r2 r2 5
	call	L_pretrace_pixels_2300
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r5 r2 1
	ldi	r4 r2 2
	ldi	r6 r2 3
	ldi	r7 r2 4
L_cont_23305 : 
	addi	r14 r0 0
	ldi	r9 r0 1058
	bgt	r9 r0 L_else_23310
	jump	L_cont_23308
L_else_23310 : 
	add	r1 r5 r14
	ldi	r9 r1 0
	ldi	r9 r9 0
	fldi	f2 r9 0
	fsti	f2 r0 1055
	fldi	f2 r9 1
	fsti	f2 r0 1056
	fldi	f2 r9 2
	fsti	f2 r0 1057
	ldi	r10 r0 1059
	addi	r9 r8 1
	bgt	r10 r9 L_else_23324
	addi	r9 r0 0
	jump	L_cont_23322
L_else_23324 : 
	bgt	r8 r0 L_else_23329
	addi	r9 r0 0
	jump	L_cont_23322
L_else_23329 : 
	ldi	r10 r0 1058
	addi	r9 r0 1
	bgt	r10 r9 L_else_23331
	addi	r9 r0 0
	jump	L_cont_23322
L_else_23331 : 
	addi	r9 r0 0
L_cont_23322 : 
	bne	r9 r0 L_else_23327
	add	r1 r5 r14
	ldi	r31 r1 0
	addi	r27 r0 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	sti	r4 r2 3
	sti	r7 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2268
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	ldi	r4 r2 3
	ldi	r7 r2 4
	jump	L_cont_23325
L_else_23327 : 
	addi	r9 r0 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	sti	r4 r2 3
	sti	r7 r2 4
	add	r13 r0 r8
	add	r17 r0 r6
	add	r16 r0 r5
	add	r15 r0 r4
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2284
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	ldi	r4 r2 3
	ldi	r7 r2 4
L_cont_23325 : 
	fldi	f2 r0 1055
	call	min_caml_print_float
	fldi	f2 r0 1056
	call	min_caml_print_float
	fldi	f2 r0 1057
	call	min_caml_print_float
	addi	r9 r0 1
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	sti	r5 r2 3
	sti	r8 r2 4
	add	r7 r0 r5
	add	r5 r0 r6
	add	r6 r0 r8
	add	r8 r0 r9
	addi	r2 r2 5
	call	L_scan_pixel_2311
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	ldi	r5 r2 3
	ldi	r8 r2 4
L_cont_23308 : 
	addi	r8 r8 1
	addi	r7 r7 2
	addi	r9 r0 5
	bgt	r9 r7 L_else_23313
	addi	r7 r7 -5
	jump	L_cont_23311
L_else_23313 : 
L_cont_23311 : 
	ldi	r9 r0 1059
	bgt	r9 r8 L_else_23315
	return
L_else_23315 : 
	ldi	r9 r0 1059
	addi	r9 r9 -1
	bgt	r9 r8 L_else_23318
	jump	L_cont_23316
L_else_23318 : 
	addi	r10 r8 1
	fldi	f3 r0 1062
	ldi	r9 r0 1061
	sub	r9 r10 r9
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
	addi	r31 r9 -1
	sti	r8 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r6 r2 3
	sti	r7 r2 4
	add	r4 r0 r6
	add	r5 r0 r7
	addi	r2 r2 5
	call	L_pretrace_pixels_2300
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r5 r2 1
	ldi	r4 r2 2
	ldi	r6 r2 3
	ldi	r7 r2 4
L_cont_23316 : 
	addi	r9 r0 0
	sti	r7 r2 0
	sti	r4 r2 1
	sti	r6 r2 2
	sti	r5 r2 3
	sti	r8 r2 4
	add	r7 r0 r4
	add	r4 r0 r6
	add	r6 r0 r8
	add	r8 r0 r9
	addi	r2 r2 5
	call	L_scan_pixel_2311
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r4 r2 1
	ldi	r6 r2 2
	ldi	r5 r2 3
	ldi	r8 r2 4
	addi	r8 r8 1
	addi	r7 r7 2
	addi	r9 r0 5
	bgt	r9 r7 L_else_23321
	addi	r7 r7 -5
	jump	L_cont_23319
L_else_23321 : 
L_cont_23319 : 
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	jump	L_scan_line_2317
L_create_pixel_2325 : 
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r8 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r9 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r9 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r9 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r9 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r9 4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r10 r0 r4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r11 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r12 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r12 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r12 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r12 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r12 4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r13 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 4
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r6 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 4
	sti	r8 r3 0
	sti	r9 r3 1
	sti	r10 r3 2
	sti	r11 r3 3
	sti	r12 r3 4
	sti	r13 r3 5
	sti	r14 r3 6
	sti	r6 r3 7
	add	r4 r0 r3
	addi	r3 r3 8
	return
L_init_line_elements_2327 : 
	bgt	r0 r8 L_else_23335
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r9 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r10 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r10 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r10 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r10 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r10 4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r11 r0 r4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r12 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r13 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r14 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r14 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r14 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r14 4
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r16 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r6 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 4
	sti	r9 r3 0
	sti	r10 r3 1
	sti	r11 r3 2
	sti	r12 r3 3
	sti	r13 r3 4
	sti	r14 r3 5
	sti	r16 r3 6
	sti	r6 r3 7
	add	r4 r0 r3
	addi	r3 r3 8
	add	r1 r15 r8
	sti	r4 r1 0
	addi	r16 r8 -1
	bgt	r0 r16 L_else_23337
	call	L_create_pixel_2325
	add	r1 r15 r16
	sti	r4 r1 0
	addi	r4 r16 -1
	add	r8 r0 r4
	jump	L_init_line_elements_2327
L_else_23337 : 
	add	r4 r0 r15
	return
L_else_23335 : 
	add	r4 r0 r15
	return
L_create_pixelline_2330 : 
	ldi	r8 r0 1058
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r9 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r10 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r10 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r10 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r10 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r10 4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r11 r0 r4
	addi	r4 r0 5
	addi	r5 r0 0
	call	min_caml_create_array
	add	r12 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r13 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r13 4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r14 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r14 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r14 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r14 4
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r15 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r6 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r6 4
	sti	r9 r3 0
	sti	r10 r3 1
	sti	r11 r3 2
	sti	r12 r3 3
	sti	r13 r3 4
	sti	r14 r3 5
	sti	r15 r3 6
	sti	r6 r3 7
	add	r5 r0 r3
	addi	r3 r3 8
	add	r4 r0 r8
	call	min_caml_create_array
	add	r15 r0 r4
	ldi	r4 r0 1058
	addi	r16 r4 -2
	bgt	r0 r16 L_else_23340
	call	L_create_pixel_2325
	add	r1 r15 r16
	sti	r4 r1 0
	addi	r8 r16 -1
	jump	L_init_line_elements_2327
L_else_23340 : 
	add	r4 r0 r15
	return
L_tan_2332 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f11 f5 L_else_23344
	fldi	f2 r0 2
	fbgt	f2 f11 L_else_23361
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f11 f0 L_else_23363
	fldi	f2 r0 6
	fbgt	f2 f11 L_else_23365
	fmul	f2 f11 f11
	fmul	f8 f11 f2
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
	fadd	f10 f2 f11
	jump	L_cont_23342
L_else_23365 : 
	fldi	f2 r0 13
	fbgt	f2 f11 L_else_23367
	fadd	f2 f3 f11
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
	fsub	f10 f0 f2
	jump	L_cont_23342
L_else_23367 : 
	fadd	f9 f5 f11
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
	fsub	f10 f0 f2
	jump	L_cont_23342
L_else_23363 : 
	fbgt	f11 f4 L_else_23369
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
	jump	L_cont_23342
L_else_23369 : 
	fbgt	f11 f2 L_else_23371
	fsub	f2 f11 f3
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
	fadd	f10 f3 f2
	jump	L_cont_23342
L_else_23371 : 
	fsub	f9 f5 f11
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
	fadd	f10 f2 f9
	jump	L_cont_23342
L_else_23361 : 
	fadd	f9 f11 f3
	call	L_sin_1878
	fadd	f10 f0 f2
	jump	L_cont_23342
L_else_23344 : 
	fsub	f9 f11 f3
	call	L_sin_1878
	fadd	f10 f0 f2
L_cont_23342 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f11 f5 L_else_23347
	fldi	f2 r0 2
	fbgt	f2 f11 L_else_23349
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f11 f0 L_else_23351
	fldi	f2 r0 6
	fbgt	f2 f11 L_else_23353
	fmul	f5 f11 f11
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
	jump	L_cont_23345
L_else_23353 : 
	fldi	f2 r0 13
	fbgt	f2 f11 L_else_23355
	fadd	f9 f11 f4
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
	jump	L_cont_23345
L_else_23355 : 
	fadd	f2 f5 f11
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
	jump	L_cont_23345
L_else_23351 : 
	fbgt	f11 f3 L_else_23357
	fmul	f8 f11 f11
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
	jump	L_cont_23345
L_else_23357 : 
	fbgt	f11 f2 L_else_23359
	fsub	f9 f11 f4
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
	jump	L_cont_23345
L_else_23359 : 
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
	jump	L_cont_23345
L_else_23349 : 
	fadd	f6 f11 f3
	call	L_cos_1880
	jump	L_cont_23345
L_else_23347 : 
	fsub	f6 f11 f3
	call	L_cos_1880
L_cont_23345 : 
	fdiv	f2 f10 f2
	return
L_calc_dirvec_2337 : 
	addi	r7 r0 5
	bgt	r7 r6 L_else_23374
	fmul	f3 f4 f4
	fmul	f2 f5 f5
	fadd	f3 f3 f2
	fldi	f2 r0 20
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fdiv	f7 f4 f3
	fdiv	f6 f5 f3
	fldi	f2 r0 20
	fdiv	f5 f2 f3
	addi	r6 r0 1076
	add	r1 r6 r5
	ldi	r6 r1 0
	add	r1 r6 r4
	ldi	r5 r1 0
	ldi	r5 r5 0
	fsti	f7 r5 0
	fsti	f6 r5 1
	fsti	f5 r5 2
	addi	r5 r4 40
	add	r1 r6 r5
	ldi	r5 r1 0
	ldi	r5 r5 0
	fsub	f2 f0 f6
	fsti	f7 r5 0
	fsti	f5 r5 1
	fsti	f2 r5 2
	addi	r5 r4 80
	add	r1 r6 r5
	ldi	r5 r1 0
	ldi	r5 r5 0
	fsub	f2 f0 f7
	fsub	f3 f0 f6
	fsti	f5 r5 0
	fsti	f2 r5 1
	fsti	f3 r5 2
	addi	r5 r4 1
	add	r1 r6 r5
	ldi	r5 r1 0
	ldi	r5 r5 0
	fsub	f4 f0 f7
	fsub	f3 f0 f6
	fsub	f2 f0 f5
	fsti	f4 r5 0
	fsti	f3 r5 1
	fsti	f2 r5 2
	addi	r5 r4 41
	add	r1 r6 r5
	ldi	r5 r1 0
	ldi	r5 r5 0
	fsub	f3 f0 f7
	fsub	f2 f0 f5
	fsti	f3 r5 0
	fsti	f2 r5 1
	fsti	f6 r5 2
	addi	r4 r4 81
	add	r1 r6 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f5
	fsti	f2 r4 0
	fsti	f7 r4 1
	fsti	f6 r4 2
	return
L_else_23374 : 
	fmul	f2 f5 f5
	fldi	f3 r0 48
	fadd	f2 f2 f3
	fsqrt	f17 f2
	fldi	f2 r0 20
	fdiv	f13 f2 f17
	call	L_atan_1882
	fmul	f11 f2 f16
	call	L_tan_2332
	fmul	f17 f2 f17
	addi	r6 r6 1
	fmul	f3 f17 f17
	fldi	f2 r0 48
	fadd	f2 f3 f2
	fsqrt	f18 f2
	fldi	f2 r0 20
	fdiv	f13 f2 f18
	call	L_atan_1882
	fmul	f11 f2 f15
	call	L_tan_2332
	fmul	f2 f2 f18
	fadd	f4 f0 f17
	fadd	f5 f0 f2
	jump	L_calc_dirvec_2337
L_calc_dirvecs_2345 : 
	bgt	r0 r9 L_else_23377
	foi	f3 r9
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
	fsub	f16 f3 f2
	addi	r6 r0 0
	fldi	f4 r0 26
	fldi	f5 r0 26
	add	r5 r0 r11
	add	r4 r0 r8
	fadd	f15 f0 f19
	call	L_calc_dirvec_2337
	foi	f2 r9
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 48
	fadd	f16 f2 f3
	addi	r6 r0 0
	fldi	f4 r0 26
	fldi	f5 r0 26
	addi	r4 r8 2
	add	r5 r0 r11
	fadd	f15 f0 f19
	call	L_calc_dirvec_2337
	addi	r10 r9 -1
	addi	r9 r11 1
	addi	r4 r0 5
	bgt	r4 r9 L_else_23380
	addi	r9 r9 -5
	jump	L_cont_23378
L_else_23380 : 
L_cont_23378 : 
	bgt	r0 r10 L_else_23382
	foi	f2 r10
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 52
	fsub	f16 f2 f3
	addi	r6 r0 0
	fldi	f4 r0 26
	fldi	f5 r0 26
	add	r5 r0 r9
	add	r4 r0 r8
	fadd	f15 f0 f19
	call	L_calc_dirvec_2337
	foi	f2 r10
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 48
	fadd	f16 f2 f3
	addi	r6 r0 0
	fldi	f4 r0 26
	fldi	f5 r0 26
	addi	r4 r8 2
	add	r5 r0 r9
	fadd	f15 f0 f19
	call	L_calc_dirvec_2337
	addi	r5 r10 -1
	addi	r4 r9 1
	addi	r6 r0 5
	bgt	r6 r4 L_else_23385
	addi	r4 r4 -5
	jump	L_cont_23383
L_else_23385 : 
L_cont_23383 : 
	add	r9 r0 r5
	add	r11 r0 r4
	jump	L_calc_dirvecs_2345
L_else_23382 : 
	return
L_else_23377 : 
	return
L_calc_dirvec_rows_2350 : 
	bgt	r0 r14 L_else_23388
	foi	f3 r14
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
	fsub	f19 f3 f2
	addi	r8 r0 4
	foi	f3 r8
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
	fsub	f16 f3 f2
	addi	r6 r0 0
	fldi	f4 r0 26
	fldi	f5 r0 26
	add	r5 r0 r13
	add	r4 r0 r12
	fadd	f15 f0 f19
	call	L_calc_dirvec_2337
	foi	f2 r8
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 48
	fadd	f16 f2 f3
	addi	r6 r0 0
	fldi	f4 r0 26
	fldi	f5 r0 26
	addi	r4 r12 2
	add	r5 r0 r13
	fadd	f15 f0 f19
	call	L_calc_dirvec_2337
	addi	r9 r0 3
	addi	r11 r13 1
	addi	r4 r0 5
	bgt	r4 r11 L_else_23391
	addi	r11 r11 -5
	jump	L_cont_23389
L_else_23391 : 
L_cont_23389 : 
	add	r8 r0 r12
	call	L_calc_dirvecs_2345
	addi	r14 r14 -1
	addi	r13 r13 2
	addi	r4 r0 5
	bgt	r4 r13 L_else_23394
	addi	r13 r13 -5
	jump	L_cont_23392
L_else_23394 : 
L_cont_23392 : 
	addi	r12 r12 4
	bgt	r0 r14 L_else_23396
	foi	f3 r14
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
	fsub	f19 f3 f2
	addi	r9 r0 4
	add	r11 r0 r13
	add	r8 r0 r12
	call	L_calc_dirvecs_2345
	addi	r6 r14 -1
	addi	r4 r13 2
	addi	r5 r0 5
	bgt	r5 r4 L_else_23399
	addi	r4 r4 -5
	jump	L_cont_23397
L_else_23399 : 
L_cont_23397 : 
	addi	r5 r12 4
	add	r14 r0 r6
	add	r13 r0 r4
	add	r12 r0 r5
	jump	L_calc_dirvec_rows_2350
L_else_23396 : 
	return
L_else_23388 : 
	return
L_create_dirvec_elements_2356 : 
	bgt	r0 r9 L_else_23402
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r8 r9
	sti	r4 r1 0
	addi	r9 r9 -1
	bgt	r0 r9 L_else_23404
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r8 r9
	sti	r4 r1 0
	addi	r9 r9 -1
	bgt	r0 r9 L_else_23406
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r8 r9
	sti	r4 r1 0
	addi	r9 r9 -1
	bgt	r0 r9 L_else_23408
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r8 r9
	sti	r4 r1 0
	addi	r4 r9 -1
	add	r9 r0 r4
	jump	L_create_dirvec_elements_2356
L_else_23408 : 
	return
L_else_23406 : 
	return
L_else_23404 : 
	return
L_else_23402 : 
	return
L_create_dirvecs_2359 : 
	bgt	r0 r11 L_else_23411
	addi	r8 r0 1076
	addi	r9 r0 120
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r5 r0 r3
	addi	r3 r3 2
	add	r4 r0 r9
	call	min_caml_create_array
	add	r1 r8 r11
	sti	r4 r1 0
	addi	r4 r0 1076
	add	r1 r4 r11
	ldi	r8 r1 0
	addi	r9 r0 118
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r8 r9
	sti	r4 r1 0
	addi	r9 r0 117
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r8 r9
	sti	r4 r1 0
	addi	r9 r0 116
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r8 r9
	sti	r4 r1 0
	addi	r9 r0 115
	call	L_create_dirvec_elements_2356
	addi	r11 r11 -1
	bgt	r0 r11 L_else_23413
	addi	r8 r0 1076
	addi	r9 r0 120
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r5 r0 r3
	addi	r3 r3 2
	add	r4 r0 r9
	call	min_caml_create_array
	add	r1 r8 r11
	sti	r4 r1 0
	addi	r4 r0 1076
	add	r1 r4 r11
	ldi	r8 r1 0
	addi	r9 r0 118
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r8 r9
	sti	r4 r1 0
	addi	r9 r0 117
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	ldi	r4 r0 1072
	add	r5 r0 r10
	call	min_caml_create_array
	sti	r10 r3 0
	sti	r4 r3 1
	add	r4 r0 r3
	addi	r3 r3 2
	add	r1 r8 r9
	sti	r4 r1 0
	addi	r9 r0 116
	call	L_create_dirvec_elements_2356
	addi	r4 r11 -1
	add	r11 r0 r4
	jump	L_create_dirvecs_2359
L_else_23413 : 
	return
L_else_23411 : 
	return
L_init_dirvec_constants_2361 : 
	bgt	r0 r13 L_else_23416
	add	r1 r12 r13
	ldi	r9 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	call	L_iter_setup_dirvec_constants_2143
	addi	r13 r13 -1
	bgt	r0 r13 L_else_23418
	add	r1 r12 r13
	ldi	r9 r1 0
	ldi	r4 r0 1072
	addi	r11 r4 -1
	bgt	r0 r11 L_else_23421
	addi	r4 r0 1970
	add	r1 r4 r11
	ldi	r6 r1 0
	ldi	r10 r9 1
	ldi	r8 r9 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23436
	call	L_setup_rect_table_2134
	add	r1 r10 r11
	sti	r4 r1 0
	jump	L_cont_23434
L_else_23436 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23438
	call	L_setup_surface_table_2137
	add	r1 r10 r11
	sti	r4 r1 0
	jump	L_cont_23434
L_else_23438 : 
	call	L_setup_second_table_2140
	add	r1 r10 r11
	sti	r4 r1 0
L_cont_23434 : 
	addi	r10 r11 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_23419
L_else_23421 : 
L_cont_23419 : 
	addi	r13 r13 -1
	bgt	r0 r13 L_else_23423
	add	r1 r12 r13
	ldi	r9 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	call	L_iter_setup_dirvec_constants_2143
	addi	r13 r13 -1
	bgt	r0 r13 L_else_23425
	add	r1 r12 r13
	ldi	r9 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23428
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r11 r9 1
	ldi	r8 r9 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23431
	call	L_setup_rect_table_2134
	add	r1 r11 r10
	sti	r4 r1 0
	jump	L_cont_23429
L_else_23431 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23433
	call	L_setup_surface_table_2137
	add	r1 r11 r10
	sti	r4 r1 0
	jump	L_cont_23429
L_else_23433 : 
	call	L_setup_second_table_2140
	add	r1 r11 r10
	sti	r4 r1 0
L_cont_23429 : 
	addi	r10 r10 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_23426
L_else_23428 : 
L_cont_23426 : 
	addi	r4 r13 -1
	add	r13 r0 r4
	jump	L_init_dirvec_constants_2361
L_else_23425 : 
	return
L_else_23423 : 
	return
L_else_23418 : 
	return
L_else_23416 : 
	return
L_init_vecset_constants_2364 : 
	bgt	r0 r14 L_else_23441
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r12 r1 0
	addi	r4 r0 119
	add	r1 r12 r4
	ldi	r9 r1 0
	ldi	r4 r0 1072
	addi	r11 r4 -1
	bgt	r0 r11 L_else_23444
	addi	r4 r0 1970
	add	r1 r4 r11
	ldi	r6 r1 0
	ldi	r10 r9 1
	ldi	r8 r9 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23477
	call	L_setup_rect_table_2134
	add	r1 r10 r11
	sti	r4 r1 0
	jump	L_cont_23475
L_else_23477 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23479
	call	L_setup_surface_table_2137
	add	r1 r10 r11
	sti	r4 r1 0
	jump	L_cont_23475
L_else_23479 : 
	call	L_setup_second_table_2140
	add	r1 r10 r11
	sti	r4 r1 0
L_cont_23475 : 
	addi	r10 r11 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_23442
L_else_23444 : 
L_cont_23442 : 
	addi	r4 r0 118
	add	r1 r12 r4
	ldi	r9 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	call	L_iter_setup_dirvec_constants_2143
	addi	r4 r0 117
	add	r1 r12 r4
	ldi	r9 r1 0
	ldi	r4 r0 1072
	addi	r11 r4 -1
	bgt	r0 r11 L_else_23447
	addi	r4 r0 1970
	add	r1 r4 r11
	ldi	r6 r1 0
	ldi	r10 r9 1
	ldi	r8 r9 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23472
	call	L_setup_rect_table_2134
	add	r1 r10 r11
	sti	r4 r1 0
	jump	L_cont_23470
L_else_23472 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23474
	call	L_setup_surface_table_2137
	add	r1 r10 r11
	sti	r4 r1 0
	jump	L_cont_23470
L_else_23474 : 
	call	L_setup_second_table_2140
	add	r1 r10 r11
	sti	r4 r1 0
L_cont_23470 : 
	addi	r10 r11 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_23445
L_else_23447 : 
L_cont_23445 : 
	addi	r13 r0 116
	call	L_init_dirvec_constants_2361
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23449
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r12 r1 0
	addi	r4 r0 119
	add	r1 r12 r4
	ldi	r9 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	call	L_iter_setup_dirvec_constants_2143
	addi	r4 r0 118
	add	r1 r12 r4
	ldi	r9 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23452
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r11 r9 1
	ldi	r8 r9 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23467
	call	L_setup_rect_table_2134
	add	r1 r11 r10
	sti	r4 r1 0
	jump	L_cont_23465
L_else_23467 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23469
	call	L_setup_surface_table_2137
	add	r1 r11 r10
	sti	r4 r1 0
	jump	L_cont_23465
L_else_23469 : 
	call	L_setup_second_table_2140
	add	r1 r11 r10
	sti	r4 r1 0
L_cont_23465 : 
	addi	r10 r10 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_23450
L_else_23452 : 
L_cont_23450 : 
	addi	r13 r0 117
	call	L_init_dirvec_constants_2361
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23454
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r12 r1 0
	addi	r4 r0 119
	add	r1 r12 r4
	ldi	r9 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23457
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r11 r9 1
	ldi	r8 r9 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23462
	call	L_setup_rect_table_2134
	add	r1 r11 r10
	sti	r4 r1 0
	jump	L_cont_23460
L_else_23462 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23464
	call	L_setup_surface_table_2137
	add	r1 r11 r10
	sti	r4 r1 0
	jump	L_cont_23460
L_else_23464 : 
	call	L_setup_second_table_2140
	add	r1 r11 r10
	sti	r4 r1 0
L_cont_23460 : 
	addi	r10 r10 -1
	call	L_iter_setup_dirvec_constants_2143
	jump	L_cont_23455
L_else_23457 : 
L_cont_23455 : 
	addi	r13 r0 118
	call	L_init_dirvec_constants_2361
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23459
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r12 r1 0
	addi	r13 r0 119
	call	L_init_dirvec_constants_2361
	addi	r4 r14 -1
	add	r14 r0 r4
	jump	L_init_vecset_constants_2364
L_else_23459 : 
	return
L_else_23454 : 
	return
L_else_23449 : 
	return
L_else_23441 : 
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
	fldi	f3 r0 53
	foi	f2 r5
	fdiv	f2 f3 f2
	fsti	f2 r0 1062
	call	L_create_pixelline_2330
	sti	r4 r2 0
	addi	r2 r2 1
	call	L_create_pixelline_2330
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r4 r2 0
	sti	r4 r2 0
	sti	r5 r2 1
	addi	r2 r2 2
	call	L_create_pixelline_2330
	addi	r2 r2 -2
	add	r6 r0 r4
	ldi	r4 r2 0
	ldi	r5 r2 1
	call	min_caml_read_float
	fsti	f2 r0 1024
	call	min_caml_read_float
	fsti	f2 r0 1025
	call	min_caml_read_float
	fsti	f2 r0 1026
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f11 f2 f3
	fadd	f6 f0 f11
	call	L_cos_1880
	fadd	f10 f0 f2
	fadd	f9 f0 f11
	call	L_sin_1878
	fadd	f11 f0 f2
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f13 f2 f3
	fadd	f6 f0 f13
	call	L_cos_1880
	fadd	f12 f0 f2
	fadd	f9 f0 f13
	call	L_sin_1878
	fmul	f3 f10 f2
	fldi	f4 r0 54
	fmul	f3 f3 f4
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
	fldi	f3 r0 1024
	fldi	f2 r0 1027
	fsub	f2 f3 f2
	fsti	f2 r0 1036
	fldi	f2 r0 1025
	fldi	f3 r0 1028
	fsub	f2 f2 f3
	fsti	f2 r0 1037
	fldi	f3 r0 1026
	fldi	f2 r0 1029
	fsub	f2 f3 f2
	fsti	f2 r0 1038
	sti	r4 r2 0
	addi	r2 r2 1
	call	min_caml_read_int
	addi	r2 r2 -1
	ldi	r4 r2 0
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
	fadd	f6 f0 f11
	call	L_cos_1880
	fadd	f11 f0 f2
	fadd	f9 f0 f10
	call	L_sin_1878
	fmul	f2 f11 f2
	fsti	f2 r0 1039
	fadd	f6 f0 f10
	call	L_cos_1880
	fmul	f2 f11 f2
	fsti	f2 r0 1041
	call	min_caml_read_float
	fsti	f2 r0 1081
	addi	r7 r0 0
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r6 r0 r7
	addi	r2 r2 3
	call	L_read_object_2038
	addi	r2 r2 -3
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	addi	r14 r0 0
	addi	r8 r0 0
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	ldi	r9 r7 0
	addi	r8 r0 -1
	bne	r9 r8 L_else_23482
	jump	L_cont_23480
L_else_23482 : 
	addi	r8 r0 1083
	add	r1 r8 r14
	sti	r7 r1 0
	addi	r14 r0 1
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	addi	r2 r2 3
	call	L_read_and_network_2046
	addi	r2 r2 -3
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
L_cont_23480 : 
	addi	r22 r0 0
	addi	r8 r0 0
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 3
	call	L_read_net_item_2042
	addi	r2 r2 -3
	add	r21 r0 r4
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	ldi	r8 r21 0
	addi	r7 r0 -1
	bne	r8 r7 L_else_23485
	addi	r7 r0 1
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r4 r0 r7
	add	r5 r0 r21
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	jump	L_cont_23483
L_else_23485 : 
	addi	r14 r0 1
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	addi	r2 r2 3
	call	L_read_or_network_2044
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	add	r1 r7 r22
	sti	r21 r1 0
L_cont_23483 : 
	sti	r7 r0 1183
	addi	r7 r0 80
	sti	r4 r2 0
	add	r4 r0 r7
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r4 r2 0
	addi	r7 r0 54
	sti	r4 r2 0
	add	r4 r0 r7
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r4 r2 0
	addi	r7 r0 10
	sti	r4 r2 0
	add	r4 r0 r7
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r4 r2 0
	ldi	r8 r0 1058
	addi	r9 r0 9
	addi	r10 r0 1
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 3
	call	L_sprint_int_1896
	addi	r2 r2 -3
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	addi	r7 r0 32
	sti	r4 r2 0
	add	r4 r0 r7
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r4 r2 0
	ldi	r8 r0 1059
	addi	r9 r0 9
	addi	r10 r0 1
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 3
	call	L_sprint_int_1896
	addi	r2 r2 -3
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	addi	r7 r0 32
	sti	r4 r2 0
	add	r4 r0 r7
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r4 r2 0
	addi	r8 r0 255
	addi	r9 r0 9
	addi	r10 r0 1
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 3
	call	L_sprint_int_1896
	addi	r2 r2 -3
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	addi	r7 r0 10
	sti	r4 r2 0
	add	r4 r0 r7
	addi	r2 r2 1
	call	min_caml_print_char
	addi	r2 r2 -1
	ldi	r4 r2 0
	addi	r8 r0 4
	addi	r9 r0 1076
	addi	r10 r0 120
	addi	r7 r0 3
	fldi	f2 r0 26
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r7
	addi	r2 r2 2
	call	min_caml_create_float_array
	addi	r2 r2 -2
	add	r11 r0 r4
	ldi	r5 r2 0
	ldi	r4 r2 1
	ldi	r7 r0 1072
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	add	r4 r0 r7
	add	r5 r0 r11
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	sti	r11 r3 0
	sti	r7 r3 1
	add	r7 r0 r3
	addi	r3 r3 2
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r4 r0 r10
	add	r5 r0 r7
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	add	r1 r9 r8
	sti	r7 r1 0
	addi	r7 r0 1076
	add	r1 r7 r8
	ldi	r8 r1 0
	addi	r9 r0 118
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 3
	call	L_create_dirvec_elements_2356
	addi	r2 r2 -3
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	addi	r11 r0 3
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 3
	call	L_create_dirvecs_2359
	addi	r2 r2 -3
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	addi	r7 r0 9
	addi	r11 r0 0
	addi	r8 r0 0
	foi	f3 r7
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
	fsub	f19 f3 f2
	addi	r9 r0 4
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 3
	call	L_calc_dirvecs_2345
	addi	r2 r2 -3
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	addi	r14 r0 8
	addi	r13 r0 2
	addi	r12 r0 4
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 3
	call	L_calc_dirvec_rows_2350
	addi	r2 r2 -3
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	addi	r7 r0 4
	addi	r8 r0 1076
	add	r1 r8 r7
	ldi	r12 r1 0
	addi	r13 r0 119
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	addi	r2 r2 3
	call	L_init_dirvec_constants_2361
	addi	r2 r2 -3
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	addi	r14 r0 3
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	addi	r2 r2 3
	call	L_init_vecset_constants_2364
	addi	r2 r2 -3
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	addi	r7 r0 1905
	ldi	r7 r7 0
	fldi	f2 r0 1039
	fsti	f2 r7 0
	fldi	f2 r0 1040
	fsti	f2 r7 1
	fldi	f2 r0 1041
	fsti	f2 r7 2
	addi	r9 r0 1905
	ldi	r7 r0 1072
	addi	r11 r7 -1
	bgt	r0 r11 L_else_23488
	addi	r7 r0 1970
	add	r1 r7 r11
	ldi	r7 r1 0
	ldi	r10 r9 1
	ldi	r8 r9 0
	ldi	r13 r7 1
	addi	r12 r0 1
	bne	r13 r12 L_else_23505
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r6 r0 r7
	addi	r2 r2 3
	call	L_setup_rect_table_2134
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	add	r1 r10 r11
	sti	r7 r1 0
	jump	L_cont_23503
L_else_23505 : 
	addi	r12 r0 2
	bne	r13 r12 L_else_23507
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r6 r0 r7
	addi	r2 r2 3
	call	L_setup_surface_table_2137
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	add	r1 r10 r11
	sti	r7 r1 0
	jump	L_cont_23503
L_else_23507 : 
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r6 r0 r7
	addi	r2 r2 3
	call	L_setup_second_table_2140
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	add	r1 r10 r11
	sti	r7 r1 0
L_cont_23503 : 
	addi	r10 r11 -1
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2143
	addi	r2 r2 -3
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	jump	L_cont_23486
L_else_23488 : 
L_cont_23486 : 
	ldi	r7 r0 1072
	addi	r9 r7 -1
	bgt	r0 r9 L_else_23491
	addi	r7 r0 1970
	add	r1 r7 r9
	ldi	r10 r1 0
	ldi	r7 r10 2
	addi	r8 r0 2
	bne	r7 r8 L_else_23493
	ldi	r7 r10 7
	fldi	f3 r7 0
	fldi	f2 r0 20
	fbgt	f2 f3 L_else_23496
	addi	r7 r0 0
	jump	L_cont_23494
L_else_23496 : 
	addi	r7 r0 1
L_cont_23494 : 
	bne	r7 r0 L_else_23498
	jump	L_cont_23489
L_else_23498 : 
	ldi	r8 r10 1
	addi	r7 r0 1
	bne	r8 r7 L_else_23500
	addi	r7 r0 4
	mul	r13 r9 r7
	ldi	r12 r0 1075
	fldi	f3 r0 20
	ldi	r7 r10 7
	fldi	f2 r7 0
	fsub	f9 f3 f2
	fldi	f2 r0 1039
	fsub	f10 f0 f2
	fldi	f2 r0 1040
	fsub	f11 f0 f2
	fldi	f2 r0 1041
	fsub	f12 f0 f2
	addi	r14 r13 1
	fldi	f3 r0 1039
	addi	r7 r0 3
	fldi	f2 r0 26
	sti	r4 r2 0
	sti	r5 r2 1
	add	r4 r0 r7
	addi	r2 r2 2
	call	min_caml_create_float_array
	addi	r2 r2 -2
	add	r8 r0 r4
	ldi	r4 r2 0
	ldi	r5 r2 1
	ldi	r7 r0 1072
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r4 r0 r7
	add	r5 r0 r8
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	sti	r8 r3 0
	sti	r7 r3 1
	add	r15 r0 r3
	addi	r3 r3 2
	fsti	f3 r8 0
	fsti	f11 r8 1
	fsti	f12 r8 2
	ldi	r7 r0 1072
	addi	r10 r7 -1
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r9 r0 r15
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2143
	addi	r2 r2 -3
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	addi	r8 r0 1185
	sti	r14 r3 0
	sti	r15 r3 1
	fsti	f9 r3 2
	add	r7 r0 r3
	addi	r3 r3 3
	add	r1 r8 r12
	sti	r7 r1 0
	addi	r14 r12 1
	addi	r15 r13 2
	fldi	f3 r0 1040
	addi	r7 r0 3
	fldi	f2 r0 26
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r7
	addi	r2 r2 2
	call	min_caml_create_float_array
	addi	r2 r2 -2
	add	r8 r0 r4
	ldi	r5 r2 0
	ldi	r4 r2 1
	ldi	r7 r0 1072
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	add	r4 r0 r7
	add	r5 r0 r8
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	sti	r8 r3 0
	sti	r7 r3 1
	add	r16 r0 r3
	addi	r3 r3 2
	fsti	f10 r8 0
	fsti	f3 r8 1
	fsti	f12 r8 2
	ldi	r7 r0 1072
	addi	r10 r7 -1
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	add	r9 r0 r16
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2143
	addi	r2 r2 -3
	ldi	r5 r2 0
	ldi	r6 r2 1
	ldi	r4 r2 2
	addi	r8 r0 1185
	sti	r15 r3 0
	sti	r16 r3 1
	fsti	f9 r3 2
	add	r7 r0 r3
	addi	r3 r3 3
	add	r1 r8 r14
	sti	r7 r1 0
	addi	r14 r12 2
	addi	r13 r13 3
	fldi	f3 r0 1041
	addi	r7 r0 3
	fldi	f2 r0 26
	sti	r4 r2 0
	sti	r5 r2 1
	add	r4 r0 r7
	addi	r2 r2 2
	call	min_caml_create_float_array
	addi	r2 r2 -2
	add	r8 r0 r4
	ldi	r4 r2 0
	ldi	r5 r2 1
	ldi	r7 r0 1072
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r4 r0 r7
	add	r5 r0 r8
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	sti	r8 r3 0
	sti	r7 r3 1
	add	r15 r0 r3
	addi	r3 r3 2
	fsti	f10 r8 0
	fsti	f11 r8 1
	fsti	f3 r8 2
	ldi	r7 r0 1072
	addi	r10 r7 -1
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r9 r0 r15
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2143
	addi	r2 r2 -3
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	addi	r8 r0 1185
	sti	r13 r3 0
	sti	r15 r3 1
	fsti	f9 r3 2
	add	r7 r0 r3
	addi	r3 r3 3
	add	r1 r8 r14
	sti	r7 r1 0
	addi	r7 r12 3
	sti	r7 r0 1075
	jump	L_cont_23489
L_else_23500 : 
	addi	r7 r0 2
	bne	r8 r7 L_else_23502
	addi	r7 r0 4
	mul	r7 r9 r7
	addi	r13 r7 1
	ldi	r12 r0 1075
	fldi	f3 r0 20
	ldi	r7 r10 7
	fldi	f2 r7 0
	fsub	f9 f3 f2
	ldi	r7 r10 4
	fldi	f2 r0 1039
	fldi	f3 r7 0
	fmul	f3 f2 f3
	fldi	f4 r0 1040
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r0 1041
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f6 f3 f2
	fldi	f3 r0 29
	ldi	r7 r10 4
	fldi	f2 r7 0
	fmul	f2 f3 f2
	fmul	f3 f2 f6
	fldi	f2 r0 1039
	fsub	f4 f3 f2
	fldi	f3 r0 29
	ldi	r7 r10 4
	fldi	f2 r7 1
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	fldi	f3 r0 1040
	fsub	f5 f2 f3
	fldi	f3 r0 29
	ldi	r7 r10 4
	fldi	f2 r7 2
	fmul	f2 f3 f2
	fmul	f3 f2 f6
	fldi	f2 r0 1041
	fsub	f3 f3 f2
	addi	r7 r0 3
	fldi	f2 r0 26
	sti	r4 r2 0
	sti	r5 r2 1
	add	r4 r0 r7
	addi	r2 r2 2
	call	min_caml_create_float_array
	addi	r2 r2 -2
	add	r8 r0 r4
	ldi	r4 r2 0
	ldi	r5 r2 1
	ldi	r7 r0 1072
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r4 r0 r7
	add	r5 r0 r8
	addi	r2 r2 3
	call	min_caml_create_array
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	sti	r8 r3 0
	sti	r7 r3 1
	add	r14 r0 r3
	addi	r3 r3 2
	fsti	f4 r8 0
	fsti	f5 r8 1
	fsti	f3 r8 2
	ldi	r7 r0 1072
	addi	r10 r7 -1
	sti	r4 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	add	r9 r0 r14
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2143
	addi	r2 r2 -3
	ldi	r4 r2 0
	ldi	r6 r2 1
	ldi	r5 r2 2
	addi	r8 r0 1185
	sti	r13 r3 0
	sti	r14 r3 1
	fsti	f9 r3 2
	add	r7 r0 r3
	addi	r3 r3 3
	add	r1 r8 r12
	sti	r7 r1 0
	addi	r7 r12 1
	sti	r7 r0 1075
	jump	L_cont_23489
L_else_23502 : 
	jump	L_cont_23489
L_else_23493 : 
	jump	L_cont_23489
L_else_23491 : 
L_cont_23489 : 
	addi	r9 r0 0
	addi	r7 r0 0
	fldi	f3 r0 1062
	ldi	r8 r0 1061
	sub	r8 r9 r8
	foi	f2 r8
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
	ldi	r8 r0 1058
	addi	r31 r8 -1
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	add	r4 r0 r5
	add	r5 r0 r7
	addi	r2 r2 3
	call	L_pretrace_pixels_2300
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r5 r2 1
	ldi	r4 r2 2
	addi	r8 r0 0
	addi	r7 r0 2
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r1
	call	L_scan_line_2317
	return
min_caml_end : 
	call	min_caml_start
