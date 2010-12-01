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
	bp	2 0
	add	r7 r0 r3
	add	r3 r4 r3
	sub	r4 r3 r4
	add	r6 r0 r5
	sub	r5 r3 r4
	call	min_caml_init_array
	add	r4 r0 r7
	return
min_caml_init_array : 
	bne	r0 r5 L_else_23318
	return
L_else_23318 : 
	sti	r6 r4 0
	addi	r5 r5 -1
	addi	r4 r4 1
	jump	min_caml_init_array
min_caml_create_float_array : 
	bp	1 1
	add	r7 r0 r3
	add	r3 r4 r3
	sub	r4 r3 r4
	sub	r5 r3 r4
	call	min_caml_init_float_array
	add	r4 r0 r7
	return
min_caml_init_float_array : 
	bne	r0 r5 L_else_23319
	return
L_else_23319 : 
	fsti	f2 r4 0
	addi	r5 r5 -1
	addi	r4 r4 1
	jump	min_caml_init_float_array
min_caml_read_int : 
	bp	0 0
	rdi	r4
	return
min_caml_read_float : 
	bp	0 0
	rdf	f2
	return
min_caml_print_char : 
	bp	1 0
	ptc	r4
	return
min_caml_print_float : 
	bp	0 1
	ptf	f2
	return
L_sin_1870 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_20799
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_20801
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_20803
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_20805
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
L_else_20805 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_20807
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
L_else_20807 : 
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
L_else_20803 : 
	fbgt	f9 f4 L_else_20809
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
L_else_20809 : 
	fbgt	f9 f2 L_else_20811
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
L_else_20811 : 
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
L_else_20801 : 
	fadd	f9 f9 f3
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_20813
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_20815
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_20817
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_20819
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
L_else_20819 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_20821
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
L_else_20821 : 
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
L_else_20817 : 
	fbgt	f9 f5 L_else_20823
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
L_else_20823 : 
	fbgt	f9 f2 L_else_20825
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
L_else_20825 : 
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
L_else_20815 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1870
L_else_20813 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1870
L_else_20799 : 
	fsub	f9 f9 f3
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_20827
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_20829
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_20831
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_20833
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
L_else_20833 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_20835
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
L_else_20835 : 
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
L_else_20831 : 
	fbgt	f9 f4 L_else_20837
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
L_else_20837 : 
	fbgt	f9 f2 L_else_20839
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
L_else_20839 : 
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
L_else_20829 : 
	fadd	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1870
L_else_20827 : 
	fsub	f2 f9 f3
	fadd	f9 f0 f2
	jump	L_sin_1870
L_cos_1872 : 
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f6 f4 L_else_20842
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_20844
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_20846
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_20848
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
L_else_20848 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_20850
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
L_else_20850 : 
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
L_else_20846 : 
	fbgt	f6 f5 L_else_20852
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
L_else_20852 : 
	fbgt	f6 f2 L_else_20854
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
L_else_20854 : 
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
L_else_20844 : 
	fadd	f5 f6 f3
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f5 f4 L_else_20856
	fldi	f2 r0 2
	fbgt	f2 f5 L_else_20858
	fldi	f6 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f5 f0 L_else_20860
	fldi	f2 r0 6
	fbgt	f2 f5 L_else_20862
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
L_else_20862 : 
	fldi	f2 r0 13
	fbgt	f2 f5 L_else_20864
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
L_else_20864 : 
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
L_else_20860 : 
	fbgt	f5 f6 L_else_20866
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
L_else_20866 : 
	fbgt	f5 f2 L_else_20868
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
L_else_20868 : 
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
L_else_20858 : 
	fadd	f2 f5 f3
	fadd	f6 f0 f2
	jump	L_cos_1872
L_else_20856 : 
	fsub	f2 f5 f3
	fadd	f6 f0 f2
	jump	L_cos_1872
L_else_20842 : 
	fsub	f6 f6 f3
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_20870
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_20872
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_20874
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_20876
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
L_else_20876 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_20878
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
L_else_20878 : 
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
L_else_20874 : 
	fbgt	f6 f4 L_else_20880
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
L_else_20880 : 
	fbgt	f6 f2 L_else_20882
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
L_else_20882 : 
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
L_else_20872 : 
	fadd	f2 f6 f3
	fadd	f6 f0 f2
	jump	L_cos_1872
L_else_20870 : 
	fsub	f2 f6 f3
	fadd	f6 f0 f2
	jump	L_cos_1872
L_atan_1874 : 
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
L_sdiv10_1876 : 
	addi	r6 r4 -10
	bgt	r0 r6 L_else_20886
	addi	r6 r4 -10
	addi	r4 r5 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_20888
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_20890
	addi	r6 r5 -10
	addi	r4 r7 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_20892
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_20894
	addi	r6 r5 -10
	addi	r4 r7 1
	addi	r5 r6 -10
	bgt	r0 r5 L_else_20896
	addi	r5 r6 -10
	addi	r7 r4 1
	addi	r4 r5 -10
	bgt	r0 r4 L_else_20898
	addi	r6 r5 -10
	addi	r5 r7 1
	addi	r4 r6 -10
	bgt	r0 r4 L_else_20900
	addi	r4 r6 -10
	addi	r5 r5 1
	jump	L_sdiv10_1876
L_else_20900 : 
	add	r4 r0 r5
	return
L_else_20898 : 
	add	r4 r0 r7
	return
L_else_20896 : 
	add	r4 r0 r4
	return
L_else_20894 : 
	add	r4 r0 r7
	return
L_else_20892 : 
	add	r4 r0 r4
	return
L_else_20890 : 
	add	r4 r0 r7
	return
L_else_20888 : 
	add	r4 r0 r4
	return
L_else_20886 : 
	add	r4 r0 r5
	return
L_read_object_2019 : 
	addi	r4 r0 60
	bgt	r4 r13 L_else_20903
	return
L_else_20903 : 
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_20906
	addi	r4 r0 0
	jump	L_cont_20904
L_else_20906 : 
	call	min_caml_read_int
	add	r17 r0 r4
	call	min_caml_read_int
	add	r16 r0 r4
	call	min_caml_read_int
	add	r12 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r11 r0 r4
	call	min_caml_read_float
	fsti	f2 r11 0
	call	min_caml_read_float
	fsti	f2 r11 1
	call	min_caml_read_float
	fsti	f2 r11 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r15 r0 r4
	call	min_caml_read_float
	fsti	f2 r15 0
	call	min_caml_read_float
	fsti	f2 r15 1
	call	min_caml_read_float
	fsti	f2 r15 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_20994
	addi	r14 r0 0
	jump	L_cont_20992
L_else_20994 : 
	addi	r14 r0 1
L_cont_20992 : 
	addi	r4 r0 2
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	call	min_caml_read_float
	fsti	f2 r10 0
	call	min_caml_read_float
	fsti	f2 r10 1
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
	add	r9 r0 r4
	bne	r12 r0 L_else_20997
	jump	L_cont_20995
L_else_20997 : 
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r9 0
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r9 1
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 27
	fmul	f2 f3 f2
	fsti	f2 r9 2
L_cont_20995 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_21000
	addi	r6 r0 1
	jump	L_cont_20998
L_else_21000 : 
	add	r6 r0 r14
L_cont_20998 : 
	addi	r4 r0 4
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r18 r3 0
	sti	r17 r3 1
	sti	r16 r3 2
	sti	r12 r3 3
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
	bne	r17 r4 L_else_21003
	fldi	f3 r11 0
	fbne	f3 f0 L_else_21099
	addi	r4 r0 1
	jump	L_cont_21097
L_else_21099 : 
	addi	r4 r0 0
L_cont_21097 : 
	bne	r4 r0 L_else_21102
	fbne	f3 f0 L_else_21139
	addi	r4 r0 1
	jump	L_cont_21137
L_else_21139 : 
	addi	r4 r0 0
L_cont_21137 : 
	bne	r4 r0 L_else_21142
	fbgt	f3 f0 L_else_21145
	addi	r4 r0 0
	jump	L_cont_21143
L_else_21145 : 
	addi	r4 r0 1
L_cont_21143 : 
	bne	r4 r0 L_else_21147
	fldi	f2 r0 28
	jump	L_cont_21140
L_else_21147 : 
	fldi	f2 r0 20
	jump	L_cont_21140
L_else_21142 : 
	fldi	f2 r0 26
L_cont_21140 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21100
L_else_21102 : 
	fldi	f2 r0 26
L_cont_21100 : 
	fsti	f2 r11 0
	fldi	f3 r11 1
	fbne	f3 f0 L_else_21105
	addi	r4 r0 1
	jump	L_cont_21103
L_else_21105 : 
	addi	r4 r0 0
L_cont_21103 : 
	bne	r4 r0 L_else_21108
	fbne	f3 f0 L_else_21128
	addi	r4 r0 1
	jump	L_cont_21126
L_else_21128 : 
	addi	r4 r0 0
L_cont_21126 : 
	bne	r4 r0 L_else_21131
	fbgt	f3 f0 L_else_21134
	addi	r4 r0 0
	jump	L_cont_21132
L_else_21134 : 
	addi	r4 r0 1
L_cont_21132 : 
	bne	r4 r0 L_else_21136
	fldi	f2 r0 28
	jump	L_cont_21129
L_else_21136 : 
	fldi	f2 r0 20
	jump	L_cont_21129
L_else_21131 : 
	fldi	f2 r0 26
L_cont_21129 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_21106
L_else_21108 : 
	fldi	f2 r0 26
L_cont_21106 : 
	fsti	f2 r11 1
	fldi	f2 r11 2
	fbne	f2 f0 L_else_21111
	addi	r4 r0 1
	jump	L_cont_21109
L_else_21111 : 
	addi	r4 r0 0
L_cont_21109 : 
	bne	r4 r0 L_else_21114
	fbne	f2 f0 L_else_21117
	addi	r4 r0 1
	jump	L_cont_21115
L_else_21117 : 
	addi	r4 r0 0
L_cont_21115 : 
	bne	r4 r0 L_else_21120
	fbgt	f2 f0 L_else_21123
	addi	r4 r0 0
	jump	L_cont_21121
L_else_21123 : 
	addi	r4 r0 1
L_cont_21121 : 
	bne	r4 r0 L_else_21125
	fldi	f3 r0 28
	jump	L_cont_21118
L_else_21125 : 
	fldi	f3 r0 20
	jump	L_cont_21118
L_else_21120 : 
	fldi	f3 r0 26
L_cont_21118 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_21112
L_else_21114 : 
	fldi	f2 r0 26
L_cont_21112 : 
	fsti	f2 r11 2
	jump	L_cont_21001
L_else_21003 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_21149
	addi	r4 r0 1
	sub	r4 r4 r14
	fldi	f2 r11 0
	fmul	f3 f2 f2
	fldi	f2 r11 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r11 2
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_21152
	addi	r5 r0 1
	jump	L_cont_21150
L_else_21152 : 
	addi	r5 r0 0
L_cont_21150 : 
	bne	r5 r0 L_else_21155
	bne	r4 r0 L_else_21157
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_21153
L_else_21157 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_21153
L_else_21155 : 
	fldi	f3 r0 20
L_cont_21153 : 
	fldi	f2 r11 0
	fmul	f2 f2 f3
	fsti	f2 r11 0
	fldi	f2 r11 1
	fmul	f2 f2 f3
	fsti	f2 r11 1
	fldi	f2 r11 2
	fmul	f2 f2 f3
	fsti	f2 r11 2
	jump	L_cont_21001
L_else_21149 : 
L_cont_21001 : 
	bne	r12 r0 L_else_21006
	jump	L_cont_21004
L_else_21006 : 
	fldi	f6 r9 0
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f6 f4 L_else_21009
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_21086
	fldi	f3 r0 3
	fldi	f5 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_21088
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_21090
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
	fadd	f14 f2 f3
	jump	L_cont_21007
L_else_21090 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_21092
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
	fadd	f14 f2 f9
	jump	L_cont_21007
L_else_21092 : 
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
	fsub	f14 f0 f2
	jump	L_cont_21007
L_else_21088 : 
	fbgt	f6 f3 L_else_21094
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
	fadd	f14 f3 f2
	jump	L_cont_21007
L_else_21094 : 
	fbgt	f6 f2 L_else_21096
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
	fsub	f14 f0 f2
	jump	L_cont_21007
L_else_21096 : 
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
	fsub	f14 f0 f2
	jump	L_cont_21007
L_else_21086 : 
	fadd	f6 f6 f3
	call	L_cos_1872
	fadd	f14 f0 f2
	jump	L_cont_21007
L_else_21009 : 
	fsub	f6 f6 f3
	call	L_cos_1872
	fadd	f14 f0 f2
L_cont_21007 : 
	fldi	f9 r9 0
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_21012
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21074
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21076
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21078
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
	fadd	f17 f2 f9
	jump	L_cont_21010
L_else_21078 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21080
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
	jump	L_cont_21010
L_else_21080 : 
	fadd	f7 f4 f9
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
	fsub	f17 f0 f2
	jump	L_cont_21010
L_else_21076 : 
	fbgt	f9 f5 L_else_21082
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
	jump	L_cont_21010
L_else_21082 : 
	fbgt	f9 f2 L_else_21084
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
	jump	L_cont_21010
L_else_21084 : 
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
	jump	L_cont_21010
L_else_21074 : 
	fadd	f9 f9 f3
	call	L_sin_1870
	fadd	f17 f0 f2
	jump	L_cont_21010
L_else_21012 : 
	fsub	f9 f9 f3
	call	L_sin_1870
	fadd	f17 f0 f2
L_cont_21010 : 
	fldi	f5 r9 1
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f5 f4 L_else_21015
	fldi	f2 r0 2
	fbgt	f2 f5 L_else_21062
	fldi	f6 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f5 f0 L_else_21064
	fldi	f2 r0 6
	fbgt	f2 f5 L_else_21066
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
	jump	L_cont_21013
L_else_21066 : 
	fldi	f2 r0 13
	fbgt	f2 f5 L_else_21068
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
	jump	L_cont_21013
L_else_21068 : 
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
	jump	L_cont_21013
L_else_21064 : 
	fbgt	f5 f6 L_else_21070
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
	jump	L_cont_21013
L_else_21070 : 
	fbgt	f5 f2 L_else_21072
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
	jump	L_cont_21013
L_else_21072 : 
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
	jump	L_cont_21013
L_else_21062 : 
	fadd	f6 f5 f3
	call	L_cos_1872
	fadd	f13 f0 f2
	jump	L_cont_21013
L_else_21015 : 
	fsub	f6 f5 f3
	call	L_cos_1872
	fadd	f13 f0 f2
L_cont_21013 : 
	fldi	f9 r9 1
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_21018
	fldi	f3 r0 2
	fbgt	f3 f9 L_else_21050
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21052
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21054
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
	jump	L_cont_21016
L_else_21054 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21056
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
	jump	L_cont_21016
L_else_21056 : 
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
	jump	L_cont_21016
L_else_21052 : 
	fbgt	f9 f3 L_else_21058
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
	jump	L_cont_21016
L_else_21058 : 
	fbgt	f9 f2 L_else_21060
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
	jump	L_cont_21016
L_else_21060 : 
	fsub	f7 f5 f9
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
	fadd	f18 f2 f7
	jump	L_cont_21016
L_else_21050 : 
	fadd	f9 f9 f2
	call	L_sin_1870
	fadd	f18 f0 f2
	jump	L_cont_21016
L_else_21018 : 
	fsub	f9 f9 f2
	call	L_sin_1870
	fadd	f18 f0 f2
L_cont_21016 : 
	fldi	f6 r9 2
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_21021
	fldi	f3 r0 2
	fbgt	f3 f6 L_else_21038
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_21040
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_21042
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
	jump	L_cont_21019
L_else_21042 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_21044
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
	jump	L_cont_21019
L_else_21044 : 
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
	jump	L_cont_21019
L_else_21040 : 
	fbgt	f6 f3 L_else_21046
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
	jump	L_cont_21019
L_else_21046 : 
	fbgt	f6 f2 L_else_21048
	fsub	f7 f6 f4
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
	fsub	f15 f0 f2
	jump	L_cont_21019
L_else_21048 : 
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
	jump	L_cont_21019
L_else_21038 : 
	fadd	f6 f6 f2
	call	L_cos_1872
	fadd	f15 f0 f2
	jump	L_cont_21019
L_else_21021 : 
	fsub	f6 f6 f2
	call	L_cos_1872
	fadd	f15 f0 f2
L_cont_21019 : 
	fldi	f9 r9 2
	fldi	f3 r0 0
	fldi	f4 r0 1
	fbgt	f9 f4 L_else_21024
	fldi	f2 r0 2
	fbgt	f2 f9 L_else_21026
	fldi	f5 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_21028
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_21030
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
	jump	L_cont_21022
L_else_21030 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_21032
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
	jump	L_cont_21022
L_else_21032 : 
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
	jump	L_cont_21022
L_else_21028 : 
	fbgt	f9 f5 L_else_21034
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
	jump	L_cont_21022
L_else_21034 : 
	fbgt	f9 f2 L_else_21036
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
	jump	L_cont_21022
L_else_21036 : 
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
	jump	L_cont_21022
L_else_21026 : 
	fadd	f9 f9 f3
	call	L_sin_1870
	fadd	f4 f0 f2
	jump	L_cont_21022
L_else_21024 : 
	fsub	f9 f9 f3
	call	L_sin_1870
	fadd	f4 f0 f2
L_cont_21022 : 
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
	fldi	f4 r0 29
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
	fldi	f4 r0 29
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
	fldi	f4 r0 29
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
L_cont_21004 : 
	addi	r4 r0 1
L_cont_20904 : 
	bne	r4 r0 L_else_20908
	sti	r13 r0 1072
	return
L_else_20908 : 
	addi	r12 r13 1
	addi	r4 r0 60
	bgt	r4 r12 L_else_20910
	return
L_else_20910 : 
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_20913
	addi	r4 r0 0
	jump	L_cont_20911
L_else_20913 : 
	call	min_caml_read_int
	add	r17 r0 r4
	call	min_caml_read_int
	add	r15 r0 r4
	call	min_caml_read_int
	add	r11 r0 r4
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
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r16 r0 r4
	call	min_caml_read_float
	fsti	f2 r16 0
	call	min_caml_read_float
	fsti	f2 r16 1
	call	min_caml_read_float
	fsti	f2 r16 2
	call	min_caml_read_float
	fbgt	f0 f2 L_else_20918
	addi	r14 r0 0
	jump	L_cont_20916
L_else_20918 : 
	addi	r14 r0 1
L_cont_20916 : 
	addi	r4 r0 2
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r10 r0 r4
	call	min_caml_read_float
	fsti	f2 r10 0
	call	min_caml_read_float
	fsti	f2 r10 1
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
	add	r9 r0 r4
	bne	r11 r0 L_else_20921
	jump	L_cont_20919
L_else_20921 : 
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 27
	fmul	f2 f3 f2
	fsti	f2 r9 0
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 27
	fmul	f2 f3 f2
	fsti	f2 r9 1
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f2 f2 f3
	fsti	f2 r9 2
L_cont_20919 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_20924
	addi	r6 r0 1
	jump	L_cont_20922
L_else_20924 : 
	add	r6 r0 r14
L_cont_20922 : 
	addi	r4 r0 4
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r18 r3 0
	sti	r17 r3 1
	sti	r15 r3 2
	sti	r11 r3 3
	sti	r13 r3 4
	sti	r16 r3 5
	sti	r6 r3 6
	sti	r10 r3 7
	sti	r8 r3 8
	sti	r9 r3 9
	sti	r4 r3 10
	add	r5 r0 r3
	addi	r3 r3 11
	addi	r4 r0 1970
	add	r1 r4 r12
	sti	r5 r1 0
	addi	r4 r0 3
	bne	r17 r4 L_else_20927
	fldi	f2 r13 0
	fbne	f2 f0 L_else_20933
	addi	r4 r0 1
	jump	L_cont_20931
L_else_20933 : 
	addi	r4 r0 0
L_cont_20931 : 
	bne	r4 r0 L_else_20936
	fbne	f2 f0 L_else_20973
	addi	r4 r0 1
	jump	L_cont_20971
L_else_20973 : 
	addi	r4 r0 0
L_cont_20971 : 
	bne	r4 r0 L_else_20976
	fbgt	f2 f0 L_else_20979
	addi	r4 r0 0
	jump	L_cont_20977
L_else_20979 : 
	addi	r4 r0 1
L_cont_20977 : 
	bne	r4 r0 L_else_20981
	fldi	f3 r0 28
	jump	L_cont_20974
L_else_20981 : 
	fldi	f3 r0 20
	jump	L_cont_20974
L_else_20976 : 
	fldi	f3 r0 26
L_cont_20974 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_20934
L_else_20936 : 
	fldi	f2 r0 26
L_cont_20934 : 
	fsti	f2 r13 0
	fldi	f3 r13 1
	fbne	f3 f0 L_else_20939
	addi	r4 r0 1
	jump	L_cont_20937
L_else_20939 : 
	addi	r4 r0 0
L_cont_20937 : 
	bne	r4 r0 L_else_20942
	fbne	f3 f0 L_else_20962
	addi	r4 r0 1
	jump	L_cont_20960
L_else_20962 : 
	addi	r4 r0 0
L_cont_20960 : 
	bne	r4 r0 L_else_20965
	fbgt	f3 f0 L_else_20968
	addi	r4 r0 0
	jump	L_cont_20966
L_else_20968 : 
	addi	r4 r0 1
L_cont_20966 : 
	bne	r4 r0 L_else_20970
	fldi	f2 r0 28
	jump	L_cont_20963
L_else_20970 : 
	fldi	f2 r0 20
	jump	L_cont_20963
L_else_20965 : 
	fldi	f2 r0 26
L_cont_20963 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_20940
L_else_20942 : 
	fldi	f2 r0 26
L_cont_20940 : 
	fsti	f2 r13 1
	fldi	f2 r13 2
	fbne	f2 f0 L_else_20945
	addi	r4 r0 1
	jump	L_cont_20943
L_else_20945 : 
	addi	r4 r0 0
L_cont_20943 : 
	bne	r4 r0 L_else_20948
	fbne	f2 f0 L_else_20951
	addi	r4 r0 1
	jump	L_cont_20949
L_else_20951 : 
	addi	r4 r0 0
L_cont_20949 : 
	bne	r4 r0 L_else_20954
	fbgt	f2 f0 L_else_20957
	addi	r4 r0 0
	jump	L_cont_20955
L_else_20957 : 
	addi	r4 r0 1
L_cont_20955 : 
	bne	r4 r0 L_else_20959
	fldi	f3 r0 28
	jump	L_cont_20952
L_else_20959 : 
	fldi	f3 r0 20
	jump	L_cont_20952
L_else_20954 : 
	fldi	f3 r0 26
L_cont_20952 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_20946
L_else_20948 : 
	fldi	f2 r0 26
L_cont_20946 : 
	fsti	f2 r13 2
	jump	L_cont_20925
L_else_20927 : 
	addi	r4 r0 2
	bne	r17 r4 L_else_20983
	addi	r4 r0 1
	sub	r4 r4 r14
	fldi	f2 r13 0
	fmul	f3 f2 f2
	fldi	f2 r13 1
	fmul	f2 f2 f2
	fadd	f3 f3 f2
	fldi	f2 r13 2
	fmul	f2 f2 f2
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fbne	f3 f0 L_else_20986
	addi	r5 r0 1
	jump	L_cont_20984
L_else_20986 : 
	addi	r5 r0 0
L_cont_20984 : 
	bne	r5 r0 L_else_20989
	bne	r4 r0 L_else_20991
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_20987
L_else_20991 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_20987
L_else_20989 : 
	fldi	f3 r0 20
L_cont_20987 : 
	fldi	f2 r13 0
	fmul	f2 f2 f3
	fsti	f2 r13 0
	fldi	f2 r13 1
	fmul	f2 f2 f3
	fsti	f2 r13 1
	fldi	f2 r13 2
	fmul	f2 f2 f3
	fsti	f2 r13 2
	jump	L_cont_20925
L_else_20983 : 
L_cont_20925 : 
	bne	r11 r0 L_else_20930
	jump	L_cont_20928
L_else_20930 : 
	fldi	f6 r9 0
	call	L_cos_1872
	fadd	f19 f0 f2
	fldi	f9 r9 0
	call	L_sin_1870
	fadd	f18 f0 f2
	fldi	f6 r9 1
	call	L_cos_1872
	fadd	f17 f0 f2
	fldi	f9 r9 1
	call	L_sin_1870
	fadd	f14 f0 f2
	fldi	f6 r9 2
	call	L_cos_1872
	fadd	f13 f0 f2
	fldi	f9 r9 2
	call	L_sin_1870
	fadd	f4 f0 f2
	fmul	f12 f17 f13
	fmul	f2 f18 f14
	fmul	f3 f2 f13
	fmul	f2 f19 f4
	fsub	f10 f3 f2
	fmul	f2 f19 f14
	fmul	f3 f2 f13
	fmul	f2 f18 f4
	fadd	f16 f3 f2
	fmul	f11 f17 f4
	fmul	f2 f18 f14
	fmul	f2 f2 f4
	fmul	f3 f19 f13
	fadd	f9 f2 f3
	fmul	f2 f19 f14
	fmul	f2 f2 f4
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
	fldi	f4 r0 29
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
	fldi	f4 r0 29
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
	fldi	f4 r0 29
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
L_cont_20928 : 
	addi	r4 r0 1
L_cont_20911 : 
	bne	r4 r0 L_else_20915
	sti	r12 r0 1072
	return
L_else_20915 : 
	addi	r4 r12 1
	add	r13 r0 r4
	jump	L_read_object_2019
L_read_net_item_2023 : 
	call	min_caml_read_int
	add	r13 r0 r4
	addi	r4 r0 -1
	bne	r13 r4 L_else_21160
	addi	r4 r12 1
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_21160 : 
	addi	r11 r12 1
	call	min_caml_read_int
	add	r10 r0 r4
	addi	r4 r0 -1
	bne	r10 r4 L_else_21163
	addi	r4 r11 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21161
L_else_21163 : 
	addi	r9 r11 1
	call	min_caml_read_int
	add	r8 r0 r4
	addi	r4 r0 -1
	bne	r8 r4 L_else_21166
	addi	r4 r9 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21164
L_else_21166 : 
	addi	r6 r9 1
	call	min_caml_read_int
	add	r5 r0 r4
	addi	r4 r0 -1
	bne	r5 r4 L_else_21169
	addi	r4 r6 1
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21167
L_else_21169 : 
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
	call	L_read_net_item_2023
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
L_cont_21167 : 
	add	r1 r4 r9
	sti	r8 r1 0
	add	r4 r0 r4
L_cont_21164 : 
	add	r1 r4 r11
	sti	r10 r1 0
	add	r4 r0 r4
L_cont_21161 : 
	add	r1 r4 r12
	sti	r13 r1 0
	add	r4 r0 r4
	return
L_read_or_network_2025 : 
	addi	r20 r0 0
	call	min_caml_read_int
	add	r19 r0 r4
	addi	r4 r0 -1
	bne	r19 r4 L_else_21173
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r17 r0 r4
	jump	L_cont_21171
L_else_21173 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21196
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21194
L_else_21196 : 
	addi	r15 r0 2
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21199
	addi	r4 r0 3
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21197
L_else_21199 : 
	addi	r12 r0 3
	call	L_read_net_item_2023
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21197 : 
	add	r1 r4 r17
	sti	r16 r1 0
	add	r4 r0 r4
L_cont_21194 : 
	add	r1 r4 r20
	sti	r19 r1 0
	add	r17 r0 r4
L_cont_21171 : 
	ldi	r4 r17 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21175
	addi	r4 r18 1
	add	r5 r0 r17
	jump	min_caml_create_array
L_else_21175 : 
	addi	r20 r18 1
	addi	r19 r0 0
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21178
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r19 r0 r4
	jump	L_cont_21176
L_else_21178 : 
	addi	r15 r0 1
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21193
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21191
L_else_21193 : 
	addi	r12 r0 2
	call	L_read_net_item_2023
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21191 : 
	add	r1 r4 r19
	sti	r16 r1 0
	add	r19 r0 r4
L_cont_21176 : 
	ldi	r5 r19 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21181
	addi	r4 r20 1
	add	r5 r0 r19
	call	min_caml_create_array
	jump	L_cont_21179
L_else_21181 : 
	addi	r16 r20 1
	addi	r15 r0 0
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21184
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r15 r0 r4
	jump	L_cont_21182
L_else_21184 : 
	addi	r12 r0 1
	call	L_read_net_item_2023
	add	r1 r4 r15
	sti	r14 r1 0
	add	r15 r0 r4
L_cont_21182 : 
	ldi	r5 r15 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21187
	addi	r4 r16 1
	add	r5 r0 r15
	call	min_caml_create_array
	jump	L_cont_21185
L_else_21187 : 
	addi	r14 r16 1
	addi	r12 r0 0
	call	L_read_net_item_2023
	add	r5 r0 r4
	ldi	r6 r5 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_21190
	addi	r4 r14 1
	call	min_caml_create_array
	jump	L_cont_21188
L_else_21190 : 
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
	call	L_read_or_network_2025
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
L_cont_21188 : 
	add	r1 r4 r16
	sti	r15 r1 0
	add	r4 r0 r4
L_cont_21185 : 
	add	r1 r4 r20
	sti	r19 r1 0
	add	r4 r0 r4
L_cont_21179 : 
	add	r1 r4 r18
	sti	r17 r1 0
	add	r4 r0 r4
	return
L_read_and_network_2027 : 
	addi	r20 r0 0
	call	min_caml_read_int
	add	r18 r0 r4
	addi	r4 r0 -1
	bne	r18 r4 L_else_21203
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_21201
L_else_21203 : 
	addi	r17 r0 1
	call	min_caml_read_int
	add	r16 r0 r4
	addi	r4 r0 -1
	bne	r16 r4 L_else_21223
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21221
L_else_21223 : 
	addi	r15 r0 2
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21226
	addi	r4 r0 3
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21224
L_else_21226 : 
	addi	r12 r0 3
	call	L_read_net_item_2023
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21224 : 
	add	r1 r4 r17
	sti	r16 r1 0
	add	r4 r0 r4
L_cont_21221 : 
	add	r1 r4 r20
	sti	r18 r1 0
	add	r6 r0 r4
L_cont_21201 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21205
	return
L_else_21205 : 
	addi	r4 r0 1083
	add	r1 r4 r19
	sti	r6 r1 0
	addi	r18 r19 1
	addi	r16 r0 0
	call	min_caml_read_int
	add	r17 r0 r4
	addi	r4 r0 -1
	bne	r17 r4 L_else_21208
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_21206
L_else_21208 : 
	addi	r15 r0 1
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21220
	addi	r4 r0 2
	addi	r5 r0 -1
	call	min_caml_create_array
	jump	L_cont_21218
L_else_21220 : 
	addi	r12 r0 2
	call	L_read_net_item_2023
	add	r1 r4 r15
	sti	r14 r1 0
	add	r4 r0 r4
L_cont_21218 : 
	add	r1 r4 r16
	sti	r17 r1 0
	add	r6 r0 r4
L_cont_21206 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21210
	return
L_else_21210 : 
	addi	r4 r0 1083
	add	r1 r4 r18
	sti	r6 r1 0
	addi	r16 r18 1
	addi	r15 r0 0
	call	min_caml_read_int
	add	r14 r0 r4
	addi	r4 r0 -1
	bne	r14 r4 L_else_21213
	addi	r4 r0 1
	addi	r5 r0 -1
	call	min_caml_create_array
	add	r6 r0 r4
	jump	L_cont_21211
L_else_21213 : 
	addi	r12 r0 1
	call	L_read_net_item_2023
	add	r1 r4 r15
	sti	r14 r1 0
	add	r6 r0 r4
L_cont_21211 : 
	ldi	r4 r6 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21215
	return
L_else_21215 : 
	addi	r4 r0 1083
	add	r1 r4 r16
	sti	r6 r1 0
	addi	r14 r16 1
	addi	r12 r0 0
	call	L_read_net_item_2023
	add	r5 r0 r4
	ldi	r6 r5 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_21217
	return
L_else_21217 : 
	addi	r4 r0 1083
	add	r1 r4 r14
	sti	r5 r1 0
	addi	r4 r14 1
	add	r19 r0 r4
	jump	L_read_and_network_2027
L_solver_rect_surface_2031 : 
	add	r1 r6 r7
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21230
	addi	r5 r0 1
	jump	L_cont_21228
L_else_21230 : 
	addi	r5 r0 0
L_cont_21228 : 
	bne	r5 r0 L_else_21232
	ldi	r5 r4 4
	ldi	r9 r4 6
	add	r1 r6 r7
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21235
	addi	r4 r0 0
	jump	L_cont_21233
L_else_21235 : 
	addi	r4 r0 1
L_cont_21233 : 
	xor	r4 r9 r4
	add	r1 r5 r7
	fldi	f2 r1 0
	bne	r4 r0 L_else_21238
	fsub	f2 f0 f2
	jump	L_cont_21236
L_else_21238 : 
	fadd	f2 f0 f2
L_cont_21236 : 
	fsub	f4 f2 f4
	add	r1 r6 r7
	fldi	f2 r1 0
	fdiv	f4 f4 f2
	add	r1 r6 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fbgt	f0 f2 L_else_21241
	fadd	f2 f0 f2
	jump	L_cont_21239
L_else_21241 : 
	fsub	f2 f0 f2
L_cont_21239 : 
	add	r1 r5 r8
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21244
	addi	r4 r0 0
	jump	L_cont_21242
L_else_21244 : 
	addi	r4 r0 1
L_cont_21242 : 
	bne	r4 r0 L_else_21246
	addi	r4 r0 0
	return
L_else_21246 : 
	add	r1 r6 r10
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21249
	fadd	f2 f0 f2
	jump	L_cont_21247
L_else_21249 : 
	fsub	f2 f0 f2
L_cont_21247 : 
	add	r1 r5 r10
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21252
	addi	r4 r0 0
	jump	L_cont_21250
L_else_21252 : 
	addi	r4 r0 1
L_cont_21250 : 
	bne	r4 r0 L_else_21254
	addi	r4 r0 0
	return
L_else_21254 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	return
L_else_21232 : 
	addi	r4 r0 0
	return
L_solver_rect_2040 : 
	addi	r9 r0 0
	addi	r7 r0 1
	addi	r8 r0 2
	add	r1 r10 r9
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21258
	addi	r4 r0 1
	jump	L_cont_21256
L_else_21258 : 
	addi	r4 r0 0
L_cont_21256 : 
	bne	r4 r0 L_else_21261
	ldi	r5 r11 4
	ldi	r6 r11 6
	add	r1 r10 r9
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21326
	addi	r4 r0 0
	jump	L_cont_21324
L_else_21326 : 
	addi	r4 r0 1
L_cont_21324 : 
	xor	r4 r6 r4
	add	r1 r5 r9
	fldi	f2 r1 0
	bne	r4 r0 L_else_21329
	fsub	f2 f0 f2
	jump	L_cont_21327
L_else_21329 : 
	fadd	f2 f0 f2
L_cont_21327 : 
	fsub	f3 f2 f6
	add	r1 r10 r9
	fldi	f2 r1 0
	fdiv	f4 f3 f2
	add	r1 r10 r7
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21332
	fadd	f2 f0 f2
	jump	L_cont_21330
L_else_21332 : 
	fsub	f2 f0 f2
L_cont_21330 : 
	add	r1 r5 r7
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21335
	addi	r4 r0 0
	jump	L_cont_21333
L_else_21335 : 
	addi	r4 r0 1
L_cont_21333 : 
	bne	r4 r0 L_else_21337
	addi	r4 r0 0
	jump	L_cont_21259
L_else_21337 : 
	add	r1 r10 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21340
	fadd	f3 f0 f2
	jump	L_cont_21338
L_else_21340 : 
	fsub	f3 f0 f2
L_cont_21338 : 
	add	r1 r5 r8
	fldi	f2 r1 0
	fbgt	f2 f3 L_else_21343
	addi	r4 r0 0
	jump	L_cont_21341
L_else_21343 : 
	addi	r4 r0 1
L_cont_21341 : 
	bne	r4 r0 L_else_21345
	addi	r4 r0 0
	jump	L_cont_21259
L_else_21345 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21259
L_else_21261 : 
	addi	r4 r0 0
L_cont_21259 : 
	bne	r4 r0 L_else_21263
	addi	r6 r0 1
	addi	r9 r0 2
	addi	r5 r0 0
	add	r1 r10 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21266
	addi	r4 r0 1
	jump	L_cont_21264
L_else_21266 : 
	addi	r4 r0 0
L_cont_21264 : 
	bne	r4 r0 L_else_21269
	ldi	r8 r11 4
	ldi	r4 r11 6
	add	r1 r10 r6
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21304
	addi	r7 r0 0
	jump	L_cont_21302
L_else_21304 : 
	addi	r7 r0 1
L_cont_21302 : 
	xor	r4 r4 r7
	add	r1 r8 r6
	fldi	f2 r1 0
	bne	r4 r0 L_else_21307
	fsub	f2 f0 f2
	jump	L_cont_21305
L_else_21307 : 
	fadd	f2 f0 f2
L_cont_21305 : 
	fsub	f2 f2 f5
	add	r1 r10 r6
	fldi	f3 r1 0
	fdiv	f4 f2 f3
	add	r1 r10 r9
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21310
	fadd	f3 f0 f2
	jump	L_cont_21308
L_else_21310 : 
	fsub	f3 f0 f2
L_cont_21308 : 
	add	r1 r8 r9
	fldi	f2 r1 0
	fbgt	f2 f3 L_else_21313
	addi	r4 r0 0
	jump	L_cont_21311
L_else_21313 : 
	addi	r4 r0 1
L_cont_21311 : 
	bne	r4 r0 L_else_21315
	addi	r4 r0 0
	jump	L_cont_21267
L_else_21315 : 
	add	r1 r10 r5
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21318
	fadd	f2 f0 f2
	jump	L_cont_21316
L_else_21318 : 
	fsub	f2 f0 f2
L_cont_21316 : 
	add	r1 r8 r5
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21321
	addi	r4 r0 0
	jump	L_cont_21319
L_else_21321 : 
	addi	r4 r0 1
L_cont_21319 : 
	bne	r4 r0 L_else_21323
	addi	r4 r0 0
	jump	L_cont_21267
L_else_21323 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21267
L_else_21269 : 
	addi	r4 r0 0
L_cont_21267 : 
	bne	r4 r0 L_else_21271
	addi	r9 r0 2
	addi	r6 r0 0
	addi	r8 r0 1
	add	r1 r10 r9
	fldi	f2 r1 0
	fbne	f2 f0 L_else_21274
	addi	r4 r0 1
	jump	L_cont_21272
L_else_21274 : 
	addi	r4 r0 0
L_cont_21272 : 
	bne	r4 r0 L_else_21277
	ldi	r7 r11 4
	ldi	r4 r11 6
	add	r1 r10 r9
	fldi	f2 r1 0
	fbgt	f0 f2 L_else_21282
	addi	r5 r0 0
	jump	L_cont_21280
L_else_21282 : 
	addi	r5 r0 1
L_cont_21280 : 
	xor	r4 r4 r5
	add	r1 r7 r9
	fldi	f2 r1 0
	bne	r4 r0 L_else_21285
	fsub	f2 f0 f2
	jump	L_cont_21283
L_else_21285 : 
	fadd	f2 f0 f2
L_cont_21283 : 
	fsub	f2 f2 f7
	add	r1 r10 r9
	fldi	f3 r1 0
	fdiv	f4 f2 f3
	add	r1 r10 r6
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21288
	fadd	f3 f0 f2
	jump	L_cont_21286
L_else_21288 : 
	fsub	f3 f0 f2
L_cont_21286 : 
	add	r1 r7 r6
	fldi	f2 r1 0
	fbgt	f2 f3 L_else_21291
	addi	r4 r0 0
	jump	L_cont_21289
L_else_21291 : 
	addi	r4 r0 1
L_cont_21289 : 
	bne	r4 r0 L_else_21293
	addi	r4 r0 0
	jump	L_cont_21275
L_else_21293 : 
	add	r1 r10 r8
	fldi	f2 r1 0
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21296
	fadd	f2 f0 f2
	jump	L_cont_21294
L_else_21296 : 
	fsub	f2 f0 f2
L_cont_21294 : 
	add	r1 r7 r8
	fldi	f3 r1 0
	fbgt	f3 f2 L_else_21299
	addi	r4 r0 0
	jump	L_cont_21297
L_else_21299 : 
	addi	r4 r0 1
L_cont_21297 : 
	bne	r4 r0 L_else_21301
	addi	r4 r0 0
	jump	L_cont_21275
L_else_21301 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	jump	L_cont_21275
L_else_21277 : 
	addi	r4 r0 0
L_cont_21275 : 
	bne	r4 r0 L_else_21279
	addi	r4 r0 0
	return
L_else_21279 : 
	addi	r4 r0 3
	return
L_else_21271 : 
	addi	r4 r0 2
	return
L_else_21263 : 
	addi	r4 r0 1
	return
L_solver_second_2065 : 
	fldi	f10 r5 0
	fldi	f6 r5 1
	fldi	f5 r5 2
	fmul	f3 f10 f10
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f6 f6
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f5
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21349
	fadd	f5 f0 f4
	jump	L_cont_21347
L_else_21349 : 
	fmul	f3 f6 f5
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f10
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f10 f6
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f5 f4 f2
L_cont_21347 : 
	fbne	f5 f0 L_else_21352
	addi	r4 r0 1
	jump	L_cont_21350
L_else_21352 : 
	addi	r4 r0 0
L_cont_21350 : 
	bne	r4 r0 L_else_21354
	fldi	f11 r5 0
	fldi	f12 r5 1
	fldi	f10 r5 2
	fmul	f3 f11 f7
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f12 f8
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f10 f9
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f6 f3 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21357
	fadd	f6 f0 f6
	jump	L_cont_21355
L_else_21357 : 
	fmul	f2 f10 f8
	fmul	f3 f12 f9
	fadd	f3 f2 f3
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f2 f11 f9
	fmul	f3 f10 f7
	fadd	f3 f2 f3
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f11 f8
	fmul	f2 f12 f7
	fadd	f4 f4 f2
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fldi	f3 r0 29
	fdiv	f2 f2 f3
	fadd	f6 f6 f2
L_cont_21355 : 
	fmul	f3 f7 f7
	ldi	r4 r6 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f8 f8
	ldi	r4 r6 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f9 f9
	ldi	r4 r6 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	ldi	r4 r6 3
	bne	r4 r0 L_else_21360
	fadd	f3 f0 f4
	jump	L_cont_21358
L_else_21360 : 
	fmul	f3 f8 f9
	ldi	r4 r6 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f7
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f7 f8
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
L_cont_21358 : 
	ldi	r4 r6 1
	addi	r5 r0 3
	bne	r4 r5 L_else_21363
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_21361
L_else_21363 : 
	fadd	f2 f0 f3
L_cont_21361 : 
	fmul	f3 f6 f6
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_21366
	addi	r4 r0 0
	jump	L_cont_21364
L_else_21366 : 
	addi	r4 r0 1
L_cont_21364 : 
	bne	r4 r0 L_else_21368
	addi	r4 r0 0
	return
L_else_21368 : 
	fsqrt	f2 f2
	ldi	r4 r6 6
	bne	r4 r0 L_else_21371
	fsub	f2 f0 f2
	jump	L_cont_21369
L_else_21371 : 
	fadd	f2 f0 f2
L_cont_21369 : 
	fsub	f2 f2 f6
	fdiv	f2 f2 f5
	fsti	f2 r0 1073
	addi	r4 r0 1
	return
L_else_21354 : 
	addi	r4 r0 0
	return
L_solver_rect_fast_2075 : 
	fldi	f2 r6 0
	fsub	f3 f2 f6
	fldi	f2 r6 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21375
	fadd	f3 f0 f2
	jump	L_cont_21373
L_else_21375 : 
	fsub	f3 f0 f2
L_cont_21373 : 
	ldi	r4 r8 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_21378
	addi	r4 r0 0
	jump	L_cont_21376
L_else_21378 : 
	addi	r4 r0 1
L_cont_21376 : 
	bne	r4 r0 L_else_21381
	addi	r4 r0 0
	jump	L_cont_21379
L_else_21381 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21430
	fadd	f3 f0 f2
	jump	L_cont_21428
L_else_21430 : 
	fsub	f3 f0 f2
L_cont_21428 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_21433
	addi	r4 r0 0
	jump	L_cont_21431
L_else_21433 : 
	addi	r4 r0 1
L_cont_21431 : 
	bne	r4 r0 L_else_21435
	addi	r4 r0 0
	jump	L_cont_21379
L_else_21435 : 
	addi	r5 r0 1
	fldi	f2 r6 1
	fbne	f2 f0 L_else_21438
	addi	r4 r0 1
	jump	L_cont_21436
L_else_21438 : 
	addi	r4 r0 0
L_cont_21436 : 
	sub	r4 r5 r4
L_cont_21379 : 
	bne	r4 r0 L_else_21383
	fldi	f2 r6 2
	fsub	f3 f2 f5
	fldi	f2 r6 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21386
	fadd	f3 f0 f2
	jump	L_cont_21384
L_else_21386 : 
	fsub	f3 f0 f2
L_cont_21384 : 
	ldi	r4 r8 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_21389
	addi	r4 r0 0
	jump	L_cont_21387
L_else_21389 : 
	addi	r4 r0 1
L_cont_21387 : 
	bne	r4 r0 L_else_21392
	addi	r4 r0 0
	jump	L_cont_21390
L_else_21392 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else_21419
	fadd	f3 f0 f2
	jump	L_cont_21417
L_else_21419 : 
	fsub	f3 f0 f2
L_cont_21417 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_21422
	addi	r4 r0 0
	jump	L_cont_21420
L_else_21422 : 
	addi	r4 r0 1
L_cont_21420 : 
	bne	r4 r0 L_else_21424
	addi	r4 r0 0
	jump	L_cont_21390
L_else_21424 : 
	addi	r5 r0 1
	fldi	f2 r6 3
	fbne	f2 f0 L_else_21427
	addi	r4 r0 1
	jump	L_cont_21425
L_else_21427 : 
	addi	r4 r0 0
L_cont_21425 : 
	sub	r4 r5 r4
L_cont_21390 : 
	bne	r4 r0 L_else_21394
	fldi	f2 r6 4
	fsub	f3 f2 f7
	fldi	f2 r6 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else_21397
	fadd	f2 f0 f2
	jump	L_cont_21395
L_else_21397 : 
	fsub	f2 f0 f2
L_cont_21395 : 
	ldi	r4 r8 4
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_21400
	addi	r4 r0 0
	jump	L_cont_21398
L_else_21400 : 
	addi	r4 r0 1
L_cont_21398 : 
	bne	r4 r0 L_else_21403
	addi	r4 r0 0
	jump	L_cont_21401
L_else_21403 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else_21408
	fadd	f2 f0 f2
	jump	L_cont_21406
L_else_21408 : 
	fsub	f2 f0 f2
L_cont_21406 : 
	ldi	r4 r8 4
	fldi	f3 r4 1
	fbgt	f3 f2 L_else_21411
	addi	r4 r0 0
	jump	L_cont_21409
L_else_21411 : 
	addi	r4 r0 1
L_cont_21409 : 
	bne	r4 r0 L_else_21413
	addi	r4 r0 0
	jump	L_cont_21401
L_else_21413 : 
	addi	r4 r0 1
	fldi	f2 r6 5
	fbne	f2 f0 L_else_21416
	addi	r5 r0 1
	jump	L_cont_21414
L_else_21416 : 
	addi	r5 r0 0
L_cont_21414 : 
	sub	r4 r4 r5
L_cont_21401 : 
	bne	r4 r0 L_else_21405
	addi	r4 r0 0
	return
L_else_21405 : 
	fsti	f4 r0 1073
	addi	r4 r0 3
	return
L_else_21394 : 
	fsti	f4 r0 1073
	addi	r4 r0 2
	return
L_else_21383 : 
	fsti	f4 r0 1073
	addi	r4 r0 1
	return
L_solver_second_fast_2088 : 
	fldi	f6 r6 0
	fbne	f6 f0 L_else_21442
	addi	r4 r0 1
	jump	L_cont_21440
L_else_21442 : 
	addi	r4 r0 0
L_cont_21440 : 
	bne	r4 r0 L_else_21444
	fldi	f2 r6 1
	fmul	f3 f2 f9
	fldi	f2 r6 2
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f5 f3 f2
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
	bne	r4 r0 L_else_21447
	fadd	f3 f0 f4
	jump	L_cont_21445
L_else_21447 : 
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
L_cont_21445 : 
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_21450
	fldi	f2 r0 20
	fsub	f3 f3 f2
	jump	L_cont_21448
L_else_21450 : 
	fadd	f3 f0 f3
L_cont_21448 : 
	fmul	f2 f5 f5
	fmul	f3 f6 f3
	fsub	f2 f2 f3
	fbgt	f2 f0 L_else_21453
	addi	r4 r0 0
	jump	L_cont_21451
L_else_21453 : 
	addi	r4 r0 1
L_cont_21451 : 
	bne	r4 r0 L_else_21455
	addi	r4 r0 0
	return
L_else_21455 : 
	ldi	r4 r7 6
	bne	r4 r0 L_else_21458
	fsqrt	f2 f2
	fsub	f2 f5 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_21456
L_else_21458 : 
	fsqrt	f2 f2
	fadd	f2 f5 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_21456 : 
	addi	r4 r0 1
	return
L_else_21444 : 
	addi	r4 r0 0
	return
L_solver_fast_2094 : 
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
	fsub	f7 f3 f2
	fldi	f3 r5 2
	ldi	r4 r8 5
	fldi	f2 r4 2
	fsub	f9 f3 f2
	ldi	r4 r7 1
	add	r1 r4 r6
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_21461
	ldi	r7 r7 0
	fadd	f6 f0 f8
	fadd	f5 f0 f7
	fadd	f7 f0 f9
	jump	L_solver_rect_fast_2075
L_else_21461 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21463
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_21466
	addi	r4 r0 0
	jump	L_cont_21464
L_else_21466 : 
	addi	r4 r0 1
L_cont_21464 : 
	bne	r4 r0 L_else_21468
	addi	r4 r0 0
	return
L_else_21468 : 
	fldi	f2 r6 1
	fmul	f3 f2 f8
	fldi	f2 r6 2
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r4 r0 1
	return
L_else_21463 : 
	fldi	f6 r6 0
	fbne	f6 f0 L_else_21471
	addi	r4 r0 1
	jump	L_cont_21469
L_else_21471 : 
	addi	r4 r0 0
L_cont_21469 : 
	bne	r4 r0 L_else_21473
	fldi	f2 r6 1
	fmul	f3 f2 f8
	fldi	f2 r6 2
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f9
	fadd	f5 f3 f2
	fmul	f3 f8 f8
	ldi	r4 r8 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f7 f7
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
	bne	r4 r0 L_else_21476
	fadd	f3 f0 f4
	jump	L_cont_21474
L_else_21476 : 
	fmul	f3 f7 f9
	ldi	r4 r8 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fmul	f3 f9 f8
	ldi	r4 r8 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f8 f7
	ldi	r4 r8 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
L_cont_21474 : 
	ldi	r4 r8 1
	addi	r5 r0 3
	bne	r4 r5 L_else_21479
	fldi	f2 r0 20
	fsub	f3 f3 f2
	jump	L_cont_21477
L_else_21479 : 
	fadd	f3 f0 f3
L_cont_21477 : 
	fmul	f2 f5 f5
	fmul	f3 f6 f3
	fsub	f2 f2 f3
	fbgt	f2 f0 L_else_21482
	addi	r4 r0 0
	jump	L_cont_21480
L_else_21482 : 
	addi	r4 r0 1
L_cont_21480 : 
	bne	r4 r0 L_else_21484
	addi	r4 r0 0
	return
L_else_21484 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_21487
	fsqrt	f2 f2
	fsub	f2 f5 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont_21485
L_else_21487 : 
	fsqrt	f2 f2
	fadd	f2 f5 f2
	fldi	f3 r6 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont_21485 : 
	addi	r4 r0 1
	return
L_else_21473 : 
	addi	r4 r0 0
	return
L_solver_fast2_2112 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r8 r1 0
	ldi	r9 r8 10
	fldi	f6 r9 0
	fldi	f4 r9 1
	fldi	f7 r9 2
	ldi	r4 r7 1
	add	r1 r4 r5
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_21490
	ldi	r7 r7 0
	fadd	f5 f0 f4
	jump	L_solver_rect_fast_2075
L_else_21490 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21492
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_21495
	addi	r4 r0 0
	jump	L_cont_21493
L_else_21495 : 
	addi	r4 r0 1
L_cont_21493 : 
	bne	r4 r0 L_else_21497
	addi	r4 r0 0
	return
L_else_21497 : 
	fldi	f2 r6 0
	fldi	f3 r9 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r4 r0 1
	return
L_else_21492 : 
	fldi	f5 r6 0
	fbne	f5 f0 L_else_21500
	addi	r4 r0 1
	jump	L_cont_21498
L_else_21500 : 
	addi	r4 r0 0
L_cont_21498 : 
	bne	r4 r0 L_else_21502
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r9 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_21505
	addi	r4 r0 0
	jump	L_cont_21503
L_else_21505 : 
	addi	r4 r0 1
L_cont_21503 : 
	bne	r4 r0 L_else_21507
	addi	r4 r0 0
	return
L_else_21507 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_21510
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_21508
L_else_21510 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_21508 : 
	addi	r4 r0 1
	return
L_else_21502 : 
	addi	r4 r0 0
	return
L_setup_rect_table_2115 : 
	addi	r4 r0 6
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r7 r0 r4
	fldi	f2 r8 0
	fbne	f2 f0 L_else_21514
	addi	r4 r0 1
	jump	L_cont_21512
L_else_21514 : 
	addi	r4 r0 0
L_cont_21512 : 
	bne	r4 r0 L_else_21517
	ldi	r5 r6 6
	fldi	f2 r8 0
	fbgt	f0 f2 L_else_21544
	addi	r4 r0 0
	jump	L_cont_21542
L_else_21544 : 
	addi	r4 r0 1
L_cont_21542 : 
	xor	r5 r5 r4
	ldi	r4 r6 4
	fldi	f2 r4 0
	bne	r5 r0 L_else_21547
	fsub	f2 f0 f2
	jump	L_cont_21545
L_else_21547 : 
	fadd	f2 f0 f2
L_cont_21545 : 
	fsti	f2 r7 0
	fldi	f2 r0 20
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	fsti	f2 r7 1
	jump	L_cont_21515
L_else_21517 : 
	fldi	f2 r0 26
	fsti	f2 r7 1
L_cont_21515 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else_21520
	addi	r4 r0 1
	jump	L_cont_21518
L_else_21520 : 
	addi	r4 r0 0
L_cont_21518 : 
	bne	r4 r0 L_else_21523
	ldi	r4 r6 6
	fldi	f2 r8 1
	fbgt	f0 f2 L_else_21538
	addi	r5 r0 0
	jump	L_cont_21536
L_else_21538 : 
	addi	r5 r0 1
L_cont_21536 : 
	xor	r4 r4 r5
	ldi	r5 r6 4
	fldi	f2 r5 1
	bne	r4 r0 L_else_21541
	fsub	f2 f0 f2
	jump	L_cont_21539
L_else_21541 : 
	fadd	f2 f0 f2
L_cont_21539 : 
	fsti	f2 r7 2
	fldi	f3 r0 20
	fldi	f2 r8 1
	fdiv	f2 f3 f2
	fsti	f2 r7 3
	jump	L_cont_21521
L_else_21523 : 
	fldi	f2 r0 26
	fsti	f2 r7 3
L_cont_21521 : 
	fldi	f2 r8 2
	fbne	f2 f0 L_else_21526
	addi	r4 r0 1
	jump	L_cont_21524
L_else_21526 : 
	addi	r4 r0 0
L_cont_21524 : 
	bne	r4 r0 L_else_21529
	ldi	r5 r6 6
	fldi	f2 r8 2
	fbgt	f0 f2 L_else_21532
	addi	r4 r0 0
	jump	L_cont_21530
L_else_21532 : 
	addi	r4 r0 1
L_cont_21530 : 
	xor	r5 r5 r4
	ldi	r4 r6 4
	fldi	f2 r4 2
	bne	r5 r0 L_else_21535
	fsub	f2 f0 f2
	jump	L_cont_21533
L_else_21535 : 
	fadd	f2 f0 f2
L_cont_21533 : 
	fsti	f2 r7 4
	fldi	f3 r0 20
	fldi	f2 r8 2
	fdiv	f2 f3 f2
	fsti	f2 r7 5
	jump	L_cont_21527
L_else_21529 : 
	fldi	f2 r0 26
	fsti	f2 r7 5
L_cont_21527 : 
	add	r4 r0 r7
	return
L_setup_surface_table_2118 : 
	addi	r4 r0 4
	fldi	f2 r0 26
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
	fbgt	f3 f0 L_else_21551
	addi	r4 r0 0
	jump	L_cont_21549
L_else_21551 : 
	addi	r4 r0 1
L_cont_21549 : 
	bne	r4 r0 L_else_21554
	fldi	f2 r0 26
	fsti	f2 r5 0
	jump	L_cont_21552
L_else_21554 : 
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
L_cont_21552 : 
	add	r4 r0 r5
	return
L_setup_second_table_2121 : 
	addi	r4 r0 5
	fldi	f2 r0 26
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
	bne	r4 r0 L_else_21558
	fadd	f6 f0 f4
	jump	L_cont_21556
L_else_21558 : 
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
L_cont_21556 : 
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
	bne	r4 r0 L_else_21561
	fsti	f7 r5 1
	fsti	f8 r5 2
	fsti	f5 r5 3
	jump	L_cont_21559
L_else_21561 : 
	fldi	f3 r8 2
	ldi	r4 r6 9
	fldi	f2 r4 1
	fmul	f4 f3 f2
	fldi	f3 r8 1
	ldi	r4 r6 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fldi	f3 r0 29
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
	fldi	f2 r0 29
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
	fldi	f3 r0 29
	fdiv	f2 f2 f3
	fsub	f2 f5 f2
	fsti	f2 r5 3
L_cont_21559 : 
	fbne	f6 f0 L_else_21564
	addi	r4 r0 1
	jump	L_cont_21562
L_else_21564 : 
	addi	r4 r0 0
L_cont_21562 : 
	bne	r4 r0 L_else_21567
	fldi	f2 r0 20
	fdiv	f2 f2 f6
	fsti	f2 r5 4
	jump	L_cont_21565
L_else_21567 : 
L_cont_21565 : 
	add	r4 r0 r5
	return
L_iter_setup_dirvec_constants_2124 : 
	bgt	r0 r8 L_else_21570
	addi	r4 r0 1970
	add	r1 r4 r8
	ldi	r9 r1 0
	ldi	r6 r11 1
	ldi	r10 r11 0
	ldi	r5 r9 1
	addi	r4 r0 1
	bne	r5 r4 L_else_21573
	addi	r4 r0 6
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r7 r0 r4
	fldi	f2 r10 0
	fbne	f2 f0 L_else_21583
	addi	r4 r0 1
	jump	L_cont_21581
L_else_21583 : 
	addi	r4 r0 0
L_cont_21581 : 
	bne	r4 r0 L_else_21586
	ldi	r4 r9 6
	fldi	f2 r10 0
	fbgt	f0 f2 L_else_21613
	addi	r5 r0 0
	jump	L_cont_21611
L_else_21613 : 
	addi	r5 r0 1
L_cont_21611 : 
	xor	r4 r4 r5
	ldi	r5 r9 4
	fldi	f2 r5 0
	bne	r4 r0 L_else_21616
	fsub	f2 f0 f2
	jump	L_cont_21614
L_else_21616 : 
	fadd	f2 f0 f2
L_cont_21614 : 
	fsti	f2 r7 0
	fldi	f3 r0 20
	fldi	f2 r10 0
	fdiv	f2 f3 f2
	fsti	f2 r7 1
	jump	L_cont_21584
L_else_21586 : 
	fldi	f2 r0 26
	fsti	f2 r7 1
L_cont_21584 : 
	fldi	f2 r10 1
	fbne	f2 f0 L_else_21589
	addi	r4 r0 1
	jump	L_cont_21587
L_else_21589 : 
	addi	r4 r0 0
L_cont_21587 : 
	bne	r4 r0 L_else_21592
	ldi	r5 r9 6
	fldi	f2 r10 1
	fbgt	f0 f2 L_else_21607
	addi	r4 r0 0
	jump	L_cont_21605
L_else_21607 : 
	addi	r4 r0 1
L_cont_21605 : 
	xor	r5 r5 r4
	ldi	r4 r9 4
	fldi	f2 r4 1
	bne	r5 r0 L_else_21610
	fsub	f2 f0 f2
	jump	L_cont_21608
L_else_21610 : 
	fadd	f2 f0 f2
L_cont_21608 : 
	fsti	f2 r7 2
	fldi	f3 r0 20
	fldi	f2 r10 1
	fdiv	f2 f3 f2
	fsti	f2 r7 3
	jump	L_cont_21590
L_else_21592 : 
	fldi	f2 r0 26
	fsti	f2 r7 3
L_cont_21590 : 
	fldi	f2 r10 2
	fbne	f2 f0 L_else_21595
	addi	r4 r0 1
	jump	L_cont_21593
L_else_21595 : 
	addi	r4 r0 0
L_cont_21593 : 
	bne	r4 r0 L_else_21598
	ldi	r4 r9 6
	fldi	f2 r10 2
	fbgt	f0 f2 L_else_21601
	addi	r5 r0 0
	jump	L_cont_21599
L_else_21601 : 
	addi	r5 r0 1
L_cont_21599 : 
	xor	r4 r4 r5
	ldi	r5 r9 4
	fldi	f2 r5 2
	bne	r4 r0 L_else_21604
	fsub	f2 f0 f2
	jump	L_cont_21602
L_else_21604 : 
	fadd	f2 f0 f2
L_cont_21602 : 
	fsti	f2 r7 4
	fldi	f2 r0 20
	fldi	f3 r10 2
	fdiv	f2 f2 f3
	fsti	f2 r7 5
	jump	L_cont_21596
L_else_21598 : 
	fldi	f2 r0 26
	fsti	f2 r7 5
L_cont_21596 : 
	add	r1 r6 r8
	sti	r7 r1 0
	jump	L_cont_21571
L_else_21573 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21618
	addi	r4 r0 4
	fldi	f2 r0 26
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
	fbgt	f3 f0 L_else_21621
	addi	r4 r0 0
	jump	L_cont_21619
L_else_21621 : 
	addi	r4 r0 1
L_cont_21619 : 
	bne	r4 r0 L_else_21624
	fldi	f2 r0 26
	fsti	f2 r5 0
	jump	L_cont_21622
L_else_21624 : 
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
L_cont_21622 : 
	add	r1 r6 r8
	sti	r5 r1 0
	jump	L_cont_21571
L_else_21618 : 
	addi	r4 r0 5
	fldi	f2 r0 26
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
	bne	r4 r0 L_else_21627
	fadd	f6 f0 f4
	jump	L_cont_21625
L_else_21627 : 
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
L_cont_21625 : 
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
	bne	r4 r0 L_else_21630
	fsti	f4 r5 1
	fsti	f8 r5 2
	fsti	f5 r5 3
	jump	L_cont_21628
L_else_21630 : 
	fldi	f3 r10 2
	ldi	r4 r9 9
	fldi	f2 r4 1
	fmul	f7 f3 f2
	fldi	f3 r10 1
	ldi	r4 r9 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f2 f7 f2
	fldi	f3 r0 29
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
	fldi	f2 r0 29
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
	fldi	f3 r0 29
	fdiv	f2 f2 f3
	fsub	f2 f5 f2
	fsti	f2 r5 3
L_cont_21628 : 
	fbne	f6 f0 L_else_21633
	addi	r4 r0 1
	jump	L_cont_21631
L_else_21633 : 
	addi	r4 r0 0
L_cont_21631 : 
	bne	r4 r0 L_else_21636
	fldi	f2 r0 20
	fdiv	f2 f2 f6
	fsti	f2 r5 4
	jump	L_cont_21634
L_else_21636 : 
L_cont_21634 : 
	add	r1 r6 r8
	sti	r5 r1 0
L_cont_21571 : 
	addi	r10 r8 -1
	bgt	r0 r10 L_else_21575
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_21578
	call	L_setup_rect_table_2115
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_21576
L_else_21578 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21580
	call	L_setup_surface_table_2118
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_21576
L_else_21580 : 
	call	L_setup_second_table_2121
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_21576 : 
	addi	r4 r10 -1
	add	r8 r0 r4
	jump	L_iter_setup_dirvec_constants_2124
L_else_21575 : 
	return
L_else_21570 : 
	return
L_setup_startp_constants_2129 : 
	bgt	r0 r7 L_else_21639
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
	bne	r5 r4 L_else_21642
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
	jump	L_cont_21640
L_else_21642 : 
	addi	r4 r0 2
	bgt	r5 r4 L_else_21644
	jump	L_cont_21640
L_else_21644 : 
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
	bne	r4 r0 L_else_21647
	fadd	f3 f0 f3
	jump	L_cont_21645
L_else_21647 : 
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
L_cont_21645 : 
	addi	r4 r0 3
	bne	r5 r4 L_else_21650
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_21648
L_else_21650 : 
	fadd	f2 f0 f3
L_cont_21648 : 
	fsti	f2 r8 3
L_cont_21640 : 
	addi	r4 r7 -1
	add	r7 r0 r4
	jump	L_setup_startp_constants_2129
L_else_21639 : 
	return
L_is_second_outside_2144 : 
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
	bne	r4 r0 L_else_21654
	fadd	f3 f0 f4
	jump	L_cont_21652
L_else_21654 : 
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
L_cont_21652 : 
	ldi	r4 r6 1
	addi	r5 r0 3
	bne	r4 r5 L_else_21657
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_21655
L_else_21657 : 
	fadd	f2 f0 f3
L_cont_21655 : 
	addi	r5 r0 1
	ldi	r6 r6 6
	fbgt	f0 f2 L_else_21660
	addi	r4 r0 0
	jump	L_cont_21658
L_else_21660 : 
	addi	r4 r0 1
L_cont_21658 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	return
L_is_outside_2149 : 
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
	bne	r5 r4 L_else_21663
	fbgt	f0 f7 L_else_21666
	fadd	f3 f0 f7
	jump	L_cont_21664
L_else_21666 : 
	fsub	f3 f0 f7
L_cont_21664 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_21669
	addi	r4 r0 0
	jump	L_cont_21667
L_else_21669 : 
	addi	r4 r0 1
L_cont_21667 : 
	bne	r4 r0 L_else_21672
	addi	r4 r0 0
	jump	L_cont_21670
L_else_21672 : 
	fbgt	f0 f5 L_else_21677
	fadd	f3 f0 f5
	jump	L_cont_21675
L_else_21677 : 
	fsub	f3 f0 f5
L_cont_21675 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_21680
	addi	r4 r0 0
	jump	L_cont_21678
L_else_21680 : 
	addi	r4 r0 1
L_cont_21678 : 
	bne	r4 r0 L_else_21682
	addi	r4 r0 0
	jump	L_cont_21670
L_else_21682 : 
	fbgt	f0 f6 L_else_21685
	fadd	f3 f0 f6
	jump	L_cont_21683
L_else_21685 : 
	fsub	f3 f0 f6
L_cont_21683 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_21687
	addi	r4 r0 0
	jump	L_cont_21670
L_else_21687 : 
	addi	r4 r0 1
L_cont_21670 : 
	bne	r4 r0 L_else_21674
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	return
L_else_21674 : 
	ldi	r4 r7 6
	add	r4 r0 r4
	return
L_else_21663 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21689
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
	fbgt	f0 f2 L_else_21692
	addi	r4 r0 0
	jump	L_cont_21690
L_else_21692 : 
	addi	r4 r0 1
L_cont_21690 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	return
L_else_21689 : 
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
	bne	r4 r0 L_else_21695
	fadd	f3 f0 f4
	jump	L_cont_21693
L_else_21695 : 
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
L_cont_21693 : 
	ldi	r5 r7 1
	addi	r4 r0 3
	bne	r5 r4 L_else_21698
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_21696
L_else_21698 : 
	fadd	f2 f0 f3
L_cont_21696 : 
	addi	r6 r0 1
	ldi	r4 r7 6
	fbgt	f0 f2 L_else_21701
	addi	r5 r0 0
	jump	L_cont_21699
L_else_21701 : 
	addi	r5 r0 1
L_cont_21699 : 
	xor	r4 r4 r5
	sub	r4 r6 r4
	return
L_check_all_inside_2154 : 
	add	r1 r9 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21704
	addi	r4 r0 1
	return
L_else_21704 : 
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
	bne	r5 r4 L_else_21707
	fbgt	f0 f7 L_else_21756
	fadd	f3 f0 f7
	jump	L_cont_21754
L_else_21756 : 
	fsub	f3 f0 f7
L_cont_21754 : 
	ldi	r4 r8 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_21759
	addi	r4 r0 0
	jump	L_cont_21757
L_else_21759 : 
	addi	r4 r0 1
L_cont_21757 : 
	bne	r4 r0 L_else_21762
	addi	r4 r0 0
	jump	L_cont_21760
L_else_21762 : 
	fbgt	f0 f6 L_else_21767
	fadd	f3 f0 f6
	jump	L_cont_21765
L_else_21767 : 
	fsub	f3 f0 f6
L_cont_21765 : 
	ldi	r4 r8 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_21770
	addi	r4 r0 0
	jump	L_cont_21768
L_else_21770 : 
	addi	r4 r0 1
L_cont_21768 : 
	bne	r4 r0 L_else_21772
	addi	r4 r0 0
	jump	L_cont_21760
L_else_21772 : 
	fbgt	f0 f5 L_else_21775
	fadd	f3 f0 f5
	jump	L_cont_21773
L_else_21775 : 
	fsub	f3 f0 f5
L_cont_21773 : 
	ldi	r4 r8 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_21777
	addi	r4 r0 0
	jump	L_cont_21760
L_else_21777 : 
	addi	r4 r0 1
L_cont_21760 : 
	bne	r4 r0 L_else_21764
	addi	r5 r0 1
	ldi	r4 r8 6
	sub	r4 r5 r4
	jump	L_cont_21705
L_else_21764 : 
	ldi	r4 r8 6
	add	r4 r0 r4
	jump	L_cont_21705
L_else_21707 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21779
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
	fbgt	f0 f2 L_else_21782
	addi	r4 r0 0
	jump	L_cont_21780
L_else_21782 : 
	addi	r4 r0 1
L_cont_21780 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_21705
L_else_21779 : 
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
	bne	r4 r0 L_else_21785
	fadd	f3 f0 f4
	jump	L_cont_21783
L_else_21785 : 
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
L_cont_21783 : 
	ldi	r4 r8 1
	addi	r5 r0 3
	bne	r4 r5 L_else_21788
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_21786
L_else_21788 : 
	fadd	f2 f0 f3
L_cont_21786 : 
	addi	r6 r0 1
	ldi	r5 r8 6
	fbgt	f0 f2 L_else_21791
	addi	r4 r0 0
	jump	L_cont_21789
L_else_21791 : 
	addi	r4 r0 1
L_cont_21789 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
L_cont_21705 : 
	bne	r4 r0 L_else_21709
	addi	r8 r7 1
	add	r1 r9 r8
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21711
	addi	r4 r0 1
	return
L_else_21711 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2149
	bne	r4 r0 L_else_21713
	addi	r7 r8 1
	add	r1 r9 r7
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21715
	addi	r4 r0 1
	return
L_else_21715 : 
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
	bne	r5 r4 L_else_21718
	fbgt	f0 f5 L_else_21727
	fadd	f3 f0 f5
	jump	L_cont_21725
L_else_21727 : 
	fsub	f3 f0 f5
L_cont_21725 : 
	ldi	r4 r6 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_21730
	addi	r4 r0 0
	jump	L_cont_21728
L_else_21730 : 
	addi	r4 r0 1
L_cont_21728 : 
	bne	r4 r0 L_else_21733
	addi	r4 r0 0
	jump	L_cont_21731
L_else_21733 : 
	fbgt	f0 f6 L_else_21738
	fadd	f3 f0 f6
	jump	L_cont_21736
L_else_21738 : 
	fsub	f3 f0 f6
L_cont_21736 : 
	ldi	r4 r6 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_21741
	addi	r4 r0 0
	jump	L_cont_21739
L_else_21741 : 
	addi	r4 r0 1
L_cont_21739 : 
	bne	r4 r0 L_else_21743
	addi	r4 r0 0
	jump	L_cont_21731
L_else_21743 : 
	fbgt	f0 f7 L_else_21746
	fadd	f3 f0 f7
	jump	L_cont_21744
L_else_21746 : 
	fsub	f3 f0 f7
L_cont_21744 : 
	ldi	r4 r6 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_21748
	addi	r4 r0 0
	jump	L_cont_21731
L_else_21748 : 
	addi	r4 r0 1
L_cont_21731 : 
	bne	r4 r0 L_else_21735
	addi	r5 r0 1
	ldi	r4 r6 6
	sub	r4 r5 r4
	jump	L_cont_21716
L_else_21735 : 
	ldi	r4 r6 6
	add	r4 r0 r4
	jump	L_cont_21716
L_else_21718 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21750
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
	fbgt	f0 f2 L_else_21753
	addi	r4 r0 0
	jump	L_cont_21751
L_else_21753 : 
	addi	r4 r0 1
L_cont_21751 : 
	xor	r4 r6 r4
	sub	r4 r5 r4
	jump	L_cont_21716
L_else_21750 : 
	call	L_is_second_outside_2144
L_cont_21716 : 
	bne	r4 r0 L_else_21720
	addi	r8 r7 1
	add	r1 r9 r8
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21722
	addi	r4 r0 1
	return
L_else_21722 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2149
	bne	r4 r0 L_else_21724
	addi	r4 r8 1
	add	r7 r0 r4
	jump	L_check_all_inside_2154
L_else_21724 : 
	addi	r4 r0 0
	return
L_else_21720 : 
	addi	r4 r0 0
	return
L_else_21713 : 
	addi	r4 r0 0
	return
L_else_21709 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2160 : 
	add	r1 r10 r11
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21794
	addi	r4 r0 0
	return
L_else_21794 : 
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
	bne	r5 r4 L_else_21797
	ldi	r7 r7 0
	call	L_solver_rect_fast_2075
	jump	L_cont_21795
L_else_21797 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21855
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_21858
	addi	r4 r0 0
	jump	L_cont_21856
L_else_21858 : 
	addi	r4 r0 1
L_cont_21856 : 
	bne	r4 r0 L_else_21860
	addi	r4 r0 0
	jump	L_cont_21795
L_else_21860 : 
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
	jump	L_cont_21795
L_else_21855 : 
	add	r7 r0 r8
	fadd	f9 f0 f6
	fadd	f8 f0 f5
	call	L_solver_second_fast_2088
L_cont_21795 : 
	fldi	f3 r0 1073
	bne	r4 r0 L_else_21800
	addi	r4 r0 0
	jump	L_cont_21798
L_else_21800 : 
	fldi	f2 r0 30
	fbgt	f2 f3 L_else_21853
	addi	r4 r0 0
	jump	L_cont_21798
L_else_21853 : 
	addi	r4 r0 1
L_cont_21798 : 
	bne	r4 r0 L_else_21802
	addi	r4 r0 1970
	add	r1 r4 r9
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_21804
	addi	r4 r0 0
	return
L_else_21804 : 
	addi	r4 r11 1
	add	r11 r0 r4
	jump	L_shadow_check_and_group_2160
L_else_21802 : 
	fldi	f2 r0 31
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
	bne	r5 r4 L_else_21807
	addi	r4 r0 1
	jump	L_cont_21805
L_else_21807 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2149
	bne	r4 r0 L_else_21811
	addi	r4 r0 1
	add	r1 r10 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21813
	addi	r4 r0 1
	jump	L_cont_21805
L_else_21813 : 
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
	bne	r5 r4 L_else_21816
	fbgt	f0 f5 L_else_21825
	fadd	f3 f0 f5
	jump	L_cont_21823
L_else_21825 : 
	fsub	f3 f0 f5
L_cont_21823 : 
	ldi	r4 r6 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_21828
	addi	r4 r0 0
	jump	L_cont_21826
L_else_21828 : 
	addi	r4 r0 1
L_cont_21826 : 
	bne	r4 r0 L_else_21831
	addi	r4 r0 0
	jump	L_cont_21829
L_else_21831 : 
	fbgt	f0 f6 L_else_21836
	fadd	f3 f0 f6
	jump	L_cont_21834
L_else_21836 : 
	fsub	f3 f0 f6
L_cont_21834 : 
	ldi	r4 r6 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_21839
	addi	r4 r0 0
	jump	L_cont_21837
L_else_21839 : 
	addi	r4 r0 1
L_cont_21837 : 
	bne	r4 r0 L_else_21841
	addi	r4 r0 0
	jump	L_cont_21829
L_else_21841 : 
	fbgt	f0 f7 L_else_21844
	fadd	f3 f0 f7
	jump	L_cont_21842
L_else_21844 : 
	fsub	f3 f0 f7
L_cont_21842 : 
	ldi	r4 r6 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_21846
	addi	r4 r0 0
	jump	L_cont_21829
L_else_21846 : 
	addi	r4 r0 1
L_cont_21829 : 
	bne	r4 r0 L_else_21833
	addi	r5 r0 1
	ldi	r4 r6 6
	sub	r4 r5 r4
	jump	L_cont_21814
L_else_21833 : 
	ldi	r4 r6 6
	add	r4 r0 r4
	jump	L_cont_21814
L_else_21816 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21848
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
	fbgt	f0 f2 L_else_21851
	addi	r5 r0 0
	jump	L_cont_21849
L_else_21851 : 
	addi	r5 r0 1
L_cont_21849 : 
	xor	r5 r6 r5
	sub	r4 r4 r5
	jump	L_cont_21814
L_else_21848 : 
	call	L_is_second_outside_2144
L_cont_21814 : 
	bne	r4 r0 L_else_21818
	addi	r4 r0 2
	add	r1 r10 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21820
	addi	r4 r0 1
	jump	L_cont_21805
L_else_21820 : 
	addi	r5 r0 1970
	add	r1 r5 r4
	ldi	r7 r1 0
	fadd	f3 f0 f8
	fadd	f5 f0 f10
	fadd	f4 f0 f9
	call	L_is_outside_2149
	bne	r4 r0 L_else_21822
	addi	r7 r0 3
	add	r9 r0 r10
	call	L_check_all_inside_2154
	jump	L_cont_21805
L_else_21822 : 
	addi	r4 r0 0
	jump	L_cont_21805
L_else_21818 : 
	addi	r4 r0 0
	jump	L_cont_21805
L_else_21811 : 
	addi	r4 r0 0
L_cont_21805 : 
	bne	r4 r0 L_else_21809
	addi	r4 r11 1
	add	r11 r0 r4
	jump	L_shadow_check_and_group_2160
L_else_21809 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2163 : 
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21863
	addi	r4 r0 0
	return
L_else_21863 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21865
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21867
	addi	r4 r0 0
	return
L_else_21867 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21869
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21871
	addi	r4 r0 0
	return
L_else_21871 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21873
	addi	r12 r12 1
	add	r1 r13 r12
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21875
	addi	r4 r0 0
	return
L_else_21875 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21877
	addi	r4 r12 1
	add	r12 r0 r4
	jump	L_shadow_check_one_or_group_2163
L_else_21877 : 
	addi	r4 r0 1
	return
L_else_21873 : 
	addi	r4 r0 1
	return
L_else_21869 : 
	addi	r4 r0 1
	return
L_else_21865 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2166 : 
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21880
	addi	r4 r0 0
	return
L_else_21880 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_21883
	addi	r4 r0 1
	jump	L_cont_21881
L_else_21883 : 
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
	bne	r5 r4 L_else_21975
	ldi	r7 r7 0
	call	L_solver_rect_fast_2075
	jump	L_cont_21973
L_else_21975 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_21999
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22002
	addi	r4 r0 0
	jump	L_cont_22000
L_else_22002 : 
	addi	r4 r0 1
L_cont_22000 : 
	bne	r4 r0 L_else_22004
	addi	r4 r0 0
	jump	L_cont_21973
L_else_22004 : 
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
	jump	L_cont_21973
L_else_21999 : 
	add	r7 r0 r8
	fadd	f9 f0 f6
	fadd	f8 f0 f5
	call	L_solver_second_fast_2088
L_cont_21973 : 
	bne	r4 r0 L_else_21977
	addi	r4 r0 0
	jump	L_cont_21881
L_else_21977 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_21980
	addi	r4 r0 0
	jump	L_cont_21978
L_else_21980 : 
	addi	r4 r0 1
L_cont_21978 : 
	bne	r4 r0 L_else_21982
	addi	r4 r0 0
	jump	L_cont_21881
L_else_21982 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21985
	addi	r4 r0 0
	jump	L_cont_21983
L_else_21985 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21989
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21991
	addi	r4 r0 0
	jump	L_cont_21983
L_else_21991 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21993
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21995
	addi	r4 r0 0
	jump	L_cont_21983
L_else_21995 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21997
	addi	r12 r0 4
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_21983
L_else_21997 : 
	addi	r4 r0 1
	jump	L_cont_21983
L_else_21993 : 
	addi	r4 r0 1
	jump	L_cont_21983
L_else_21989 : 
	addi	r4 r0 1
L_cont_21983 : 
	bne	r4 r0 L_else_21987
	addi	r4 r0 0
	jump	L_cont_21881
L_else_21987 : 
	addi	r4 r0 1
L_cont_21881 : 
	bne	r4 r0 L_else_21885
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r6 r16 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_21887
	addi	r4 r0 0
	return
L_else_21887 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_21890
	addi	r4 r0 1
	jump	L_cont_21888
L_else_21890 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2094
	bne	r4 r0 L_else_21905
	addi	r4 r0 0
	jump	L_cont_21888
L_else_21905 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_21908
	addi	r4 r0 0
	jump	L_cont_21906
L_else_21908 : 
	addi	r4 r0 1
L_cont_21906 : 
	bne	r4 r0 L_else_21910
	addi	r4 r0 0
	jump	L_cont_21888
L_else_21910 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21913
	addi	r4 r0 0
	jump	L_cont_21911
L_else_21913 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21917
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21919
	addi	r4 r0 0
	jump	L_cont_21911
L_else_21919 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21921
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_21911
L_else_21921 : 
	addi	r4 r0 1
	jump	L_cont_21911
L_else_21917 : 
	addi	r4 r0 1
L_cont_21911 : 
	bne	r4 r0 L_else_21915
	addi	r4 r0 0
	jump	L_cont_21888
L_else_21915 : 
	addi	r4 r0 1
L_cont_21888 : 
	bne	r4 r0 L_else_21892
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2166
L_else_21892 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21895
	addi	r4 r0 0
	jump	L_cont_21893
L_else_21895 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21899
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21901
	addi	r4 r0 0
	jump	L_cont_21893
L_else_21901 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21903
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_21893
L_else_21903 : 
	addi	r4 r0 1
	jump	L_cont_21893
L_else_21899 : 
	addi	r4 r0 1
L_cont_21893 : 
	bne	r4 r0 L_else_21897
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2166
L_else_21897 : 
	addi	r4 r0 1
	return
L_else_21885 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21924
	addi	r4 r0 0
	jump	L_cont_21922
L_else_21924 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21964
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21966
	addi	r4 r0 0
	jump	L_cont_21922
L_else_21966 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21968
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21970
	addi	r4 r0 0
	jump	L_cont_21922
L_else_21970 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21972
	addi	r12 r0 4
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_21922
L_else_21972 : 
	addi	r4 r0 1
	jump	L_cont_21922
L_else_21968 : 
	addi	r4 r0 1
	jump	L_cont_21922
L_else_21964 : 
	addi	r4 r0 1
L_cont_21922 : 
	bne	r4 r0 L_else_21926
	addi	r15 r15 1
	add	r1 r14 r15
	ldi	r16 r1 0
	ldi	r6 r16 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_21928
	addi	r4 r0 0
	return
L_else_21928 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_21931
	addi	r4 r0 1
	jump	L_cont_21929
L_else_21931 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2094
	bne	r4 r0 L_else_21946
	addi	r4 r0 0
	jump	L_cont_21929
L_else_21946 : 
	fldi	f3 r0 1073
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_21949
	addi	r4 r0 0
	jump	L_cont_21947
L_else_21949 : 
	addi	r4 r0 1
L_cont_21947 : 
	bne	r4 r0 L_else_21951
	addi	r4 r0 0
	jump	L_cont_21929
L_else_21951 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21954
	addi	r4 r0 0
	jump	L_cont_21952
L_else_21954 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21958
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21960
	addi	r4 r0 0
	jump	L_cont_21952
L_else_21960 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21962
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_21952
L_else_21962 : 
	addi	r4 r0 1
	jump	L_cont_21952
L_else_21958 : 
	addi	r4 r0 1
L_cont_21952 : 
	bne	r4 r0 L_else_21956
	addi	r4 r0 0
	jump	L_cont_21929
L_else_21956 : 
	addi	r4 r0 1
L_cont_21929 : 
	bne	r4 r0 L_else_21933
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2166
L_else_21933 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_21936
	addi	r4 r0 0
	jump	L_cont_21934
L_else_21936 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21940
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_21942
	addi	r4 r0 0
	jump	L_cont_21934
L_else_21942 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_21944
	addi	r12 r0 3
	add	r13 r0 r16
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_21934
L_else_21944 : 
	addi	r4 r0 1
	jump	L_cont_21934
L_else_21940 : 
	addi	r4 r0 1
L_cont_21934 : 
	bne	r4 r0 L_else_21938
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_shadow_check_one_or_matrix_2166
L_else_21938 : 
	addi	r4 r0 1
	return
L_else_21926 : 
	addi	r4 r0 1
	return
L_solve_each_element_2169 : 
	add	r1 r12 r13
	ldi	r15 r1 0
	addi	r4 r0 -1
	bne	r15 r4 L_else_22007
	return
L_else_22007 : 
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
	bne	r5 r4 L_else_22010
	add	r10 r0 r14
	call	L_solver_rect_2040
	add	r10 r0 r4
	jump	L_cont_22008
L_else_22010 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22074
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
	fbgt	f4 f0 L_else_22077
	addi	r5 r0 0
	jump	L_cont_22075
L_else_22077 : 
	addi	r5 r0 1
L_cont_22075 : 
	bne	r5 r0 L_else_22079
	addi	r10 r0 0
	jump	L_cont_22008
L_else_22079 : 
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
	jump	L_cont_22008
L_else_22074 : 
	add	r6 r0 r11
	add	r5 r0 r14
	fadd	f8 f0 f5
	fadd	f9 f0 f7
	fadd	f7 f0 f6
	call	L_solver_second_2065
	add	r10 r0 r4
L_cont_22008 : 
	bne	r10 r0 L_else_22012
	addi	r4 r0 1970
	add	r1 r4 r15
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22014
	return
L_else_22014 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_solve_each_element_2169
L_else_22012 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_22017
	addi	r4 r0 0
	jump	L_cont_22015
L_else_22017 : 
	addi	r4 r0 1
L_cont_22015 : 
	bne	r4 r0 L_else_22020
	jump	L_cont_22018
L_else_22020 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22023
	addi	r4 r0 0
	jump	L_cont_22021
L_else_22023 : 
	addi	r4 r0 1
L_cont_22021 : 
	bne	r4 r0 L_else_22025
	jump	L_cont_22018
L_else_22025 : 
	fldi	f2 r0 31
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
	bne	r5 r4 L_else_22028
	addi	r4 r0 1
	jump	L_cont_22026
L_else_22028 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2149
	bne	r4 r0 L_else_22032
	addi	r4 r0 1
	add	r1 r12 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22034
	addi	r4 r0 1
	jump	L_cont_22026
L_else_22034 : 
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
	bne	r5 r4 L_else_22037
	fbgt	f0 f5 L_else_22046
	fadd	f3 f0 f5
	jump	L_cont_22044
L_else_22046 : 
	fsub	f3 f0 f5
L_cont_22044 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22049
	addi	r4 r0 0
	jump	L_cont_22047
L_else_22049 : 
	addi	r4 r0 1
L_cont_22047 : 
	bne	r4 r0 L_else_22052
	addi	r4 r0 0
	jump	L_cont_22050
L_else_22052 : 
	fbgt	f0 f6 L_else_22057
	fadd	f3 f0 f6
	jump	L_cont_22055
L_else_22057 : 
	fsub	f3 f0 f6
L_cont_22055 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22060
	addi	r4 r0 0
	jump	L_cont_22058
L_else_22060 : 
	addi	r4 r0 1
L_cont_22058 : 
	bne	r4 r0 L_else_22062
	addi	r4 r0 0
	jump	L_cont_22050
L_else_22062 : 
	fbgt	f0 f7 L_else_22065
	fadd	f3 f0 f7
	jump	L_cont_22063
L_else_22065 : 
	fsub	f3 f0 f7
L_cont_22063 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22067
	addi	r4 r0 0
	jump	L_cont_22050
L_else_22067 : 
	addi	r4 r0 1
L_cont_22050 : 
	bne	r4 r0 L_else_22054
	addi	r4 r0 1
	ldi	r5 r7 6
	sub	r4 r4 r5
	jump	L_cont_22035
L_else_22054 : 
	ldi	r4 r7 6
	add	r4 r0 r4
	jump	L_cont_22035
L_else_22037 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22069
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
	fbgt	f0 f2 L_else_22072
	addi	r4 r0 0
	jump	L_cont_22070
L_else_22072 : 
	addi	r4 r0 1
L_cont_22070 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	jump	L_cont_22035
L_else_22069 : 
	add	r6 r0 r7
	call	L_is_second_outside_2144
L_cont_22035 : 
	bne	r4 r0 L_else_22039
	addi	r4 r0 2
	add	r1 r12 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22041
	addi	r4 r0 1
	jump	L_cont_22026
L_else_22041 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2149
	bne	r4 r0 L_else_22043
	addi	r7 r0 3
	add	r9 r0 r12
	fadd	f8 f0 f14
	fadd	f10 f0 f12
	fadd	f9 f0 f11
	call	L_check_all_inside_2154
	jump	L_cont_22026
L_else_22043 : 
	addi	r4 r0 0
	jump	L_cont_22026
L_else_22039 : 
	addi	r4 r0 0
	jump	L_cont_22026
L_else_22032 : 
	addi	r4 r0 0
L_cont_22026 : 
	bne	r4 r0 L_else_22030
	jump	L_cont_22018
L_else_22030 : 
	fsti	f13 r0 1082
	fsti	f14 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r15 r0 1045
	sti	r10 r0 1074
L_cont_22018 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_solve_each_element_2169
L_solve_one_or_network_2173 : 
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22082
	return
L_else_22082 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2169
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22084
	return
L_else_22084 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2169
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22086
	return
L_else_22086 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2169
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22088
	return
L_else_22088 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r18
	call	L_solve_each_element_2169
	addi	r4 r16 1
	add	r16 r0 r4
	jump	L_solve_one_or_network_2173
L_trace_or_matrix_2177 : 
	add	r1 r19 r21
	ldi	r17 r1 0
	ldi	r5 r17 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22091
	return
L_else_22091 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22094
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22157
	jump	L_cont_22092
L_else_22157 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2169
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22159
	jump	L_cont_22092
L_else_22159 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2169
	addi	r4 r0 3
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22161
	jump	L_cont_22092
L_else_22161 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2169
	addi	r16 r0 4
	add	r18 r0 r20
	call	L_solve_one_or_network_2173
	jump	L_cont_22092
L_else_22094 : 
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
	bne	r5 r4 L_else_22164
	add	r10 r0 r20
	call	L_solver_rect_2040
	jump	L_cont_22162
L_else_22164 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22179
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
	fbgt	f4 f0 L_else_22182
	addi	r5 r0 0
	jump	L_cont_22180
L_else_22182 : 
	addi	r5 r0 1
L_cont_22180 : 
	bne	r5 r0 L_else_22184
	addi	r4 r0 0
	jump	L_cont_22162
L_else_22184 : 
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
	jump	L_cont_22162
L_else_22179 : 
	add	r6 r0 r11
	add	r5 r0 r20
	fadd	f8 f0 f5
	fadd	f9 f0 f7
	fadd	f7 f0 f6
	call	L_solver_second_2065
L_cont_22162 : 
	bne	r4 r0 L_else_22166
	jump	L_cont_22092
L_else_22166 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22169
	addi	r4 r0 0
	jump	L_cont_22167
L_else_22169 : 
	addi	r4 r0 1
L_cont_22167 : 
	bne	r4 r0 L_else_22171
	jump	L_cont_22092
L_else_22171 : 
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22173
	jump	L_cont_22092
L_else_22173 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2169
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22175
	jump	L_cont_22092
L_else_22175 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2169
	addi	r4 r0 3
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22177
	jump	L_cont_22092
L_else_22177 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2169
	addi	r16 r0 4
	add	r18 r0 r20
	call	L_solve_one_or_network_2173
L_cont_22092 : 
	addi	r21 r21 1
	add	r1 r19 r21
	ldi	r17 r1 0
	ldi	r5 r17 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22096
	return
L_else_22096 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22099
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22101
	jump	L_cont_22097
L_else_22101 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2169
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22103
	jump	L_cont_22097
L_else_22103 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2169
	addi	r16 r0 3
	add	r18 r0 r20
	call	L_solve_one_or_network_2173
	jump	L_cont_22097
L_else_22099 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r11 r1 0
	fldi	f3 r0 1063
	ldi	r4 r11 5
	fldi	f2 r4 0
	fsub	f8 f3 f2
	fldi	f3 r0 1064
	ldi	r4 r11 5
	fldi	f2 r4 1
	fsub	f7 f3 f2
	fldi	f3 r0 1065
	ldi	r4 r11 5
	fldi	f2 r4 2
	fsub	f9 f3 f2
	ldi	r5 r11 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22106
	addi	r7 r0 0
	addi	r8 r0 1
	addi	r10 r0 2
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f8
	fadd	f3 f0 f7
	fadd	f5 f0 f9
	call	L_solver_rect_surface_2031
	bne	r4 r0 L_else_22119
	addi	r7 r0 1
	addi	r8 r0 2
	addi	r10 r0 0
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f7
	fadd	f3 f0 f9
	fadd	f5 f0 f8
	call	L_solver_rect_surface_2031
	bne	r4 r0 L_else_22121
	addi	r7 r0 2
	addi	r8 r0 0
	addi	r10 r0 1
	add	r4 r0 r11
	add	r6 r0 r20
	fadd	f4 f0 f9
	fadd	f3 f0 f8
	fadd	f5 f0 f7
	call	L_solver_rect_surface_2031
	bne	r4 r0 L_else_22123
	addi	r4 r0 0
	jump	L_cont_22104
L_else_22123 : 
	addi	r4 r0 3
	jump	L_cont_22104
L_else_22121 : 
	addi	r4 r0 2
	jump	L_cont_22104
L_else_22119 : 
	addi	r4 r0 1
	jump	L_cont_22104
L_else_22106 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22125
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
	fbgt	f4 f0 L_else_22128
	addi	r5 r0 0
	jump	L_cont_22126
L_else_22128 : 
	addi	r5 r0 1
L_cont_22126 : 
	bne	r5 r0 L_else_22130
	addi	r4 r0 0
	jump	L_cont_22104
L_else_22130 : 
	fldi	f2 r4 0
	fmul	f3 f2 f8
	fldi	f2 r4 1
	fmul	f2 f2 f7
	fadd	f3 f3 f2
	fldi	f2 r4 2
	fmul	f2 f2 f9
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22104
L_else_22125 : 
	fldi	f6 r20 0
	fldi	f10 r20 1
	fldi	f5 r20 2
	fmul	f3 f6 f6
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f10 f10
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
	bne	r4 r0 L_else_22133
	fadd	f5 f0 f4
	jump	L_cont_22131
L_else_22133 : 
	fmul	f3 f10 f5
	ldi	r4 r11 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f5 f6
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f6 f10
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f5 f4 f2
L_cont_22131 : 
	fbne	f5 f0 L_else_22136
	addi	r4 r0 1
	jump	L_cont_22134
L_else_22136 : 
	addi	r4 r0 0
L_cont_22134 : 
	bne	r4 r0 L_else_22138
	fldi	f11 r20 0
	fldi	f12 r20 1
	fldi	f10 r20 2
	fmul	f3 f11 f8
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f3 f3 f2
	fmul	f4 f12 f7
	ldi	r4 r11 4
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f10 f9
	ldi	r4 r11 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f6 f4 f2
	ldi	r4 r11 3
	bne	r4 r0 L_else_22141
	fadd	f6 f0 f6
	jump	L_cont_22139
L_else_22141 : 
	fmul	f2 f10 f7
	fmul	f3 f12 f9
	fadd	f3 f2 f3
	ldi	r4 r11 9
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f2 f11 f9
	fmul	f3 f10 f8
	fadd	f3 f2 f3
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f11 f7
	fmul	f2 f12 f8
	fadd	f4 f4 f2
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f2 r0 29
	fdiv	f2 f3 f2
	fadd	f6 f6 f2
L_cont_22139 : 
	fmul	f3 f8 f8
	ldi	r4 r11 4
	fldi	f2 r4 0
	fmul	f4 f3 f2
	fmul	f3 f7 f7
	ldi	r4 r11 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f9
	ldi	r4 r11 4
	fldi	f2 r4 2
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	ldi	r4 r11 3
	bne	r4 r0 L_else_22144
	fadd	f3 f0 f4
	jump	L_cont_22142
L_else_22144 : 
	fmul	f3 f7 f9
	ldi	r4 r11 9
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f9 f8
	ldi	r4 r11 9
	fldi	f2 r4 1
	fmul	f2 f4 f2
	fadd	f4 f3 f2
	fmul	f3 f8 f7
	ldi	r4 r11 9
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fadd	f3 f4 f2
L_cont_22142 : 
	ldi	r5 r11 1
	addi	r4 r0 3
	bne	r5 r4 L_else_22147
	fldi	f2 r0 20
	fsub	f2 f3 f2
	jump	L_cont_22145
L_else_22147 : 
	fadd	f2 f0 f3
L_cont_22145 : 
	fmul	f3 f6 f6
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_22150
	addi	r4 r0 0
	jump	L_cont_22148
L_else_22150 : 
	addi	r4 r0 1
L_cont_22148 : 
	bne	r4 r0 L_else_22152
	addi	r4 r0 0
	jump	L_cont_22104
L_else_22152 : 
	fsqrt	f2 f2
	ldi	r4 r11 6
	bne	r4 r0 L_else_22155
	fsub	f2 f0 f2
	jump	L_cont_22153
L_else_22155 : 
	fadd	f2 f0 f2
L_cont_22153 : 
	fsub	f2 f2 f6
	fdiv	f2 f2 f5
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22104
L_else_22138 : 
	addi	r4 r0 0
L_cont_22104 : 
	bne	r4 r0 L_else_22108
	jump	L_cont_22097
L_else_22108 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22111
	addi	r4 r0 0
	jump	L_cont_22109
L_else_22111 : 
	addi	r4 r0 1
L_cont_22109 : 
	bne	r4 r0 L_else_22113
	jump	L_cont_22097
L_else_22113 : 
	addi	r4 r0 1
	add	r1 r17 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22115
	jump	L_cont_22097
L_else_22115 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2169
	addi	r4 r0 2
	add	r1 r17 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22117
	jump	L_cont_22097
L_else_22117 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r12 r1 0
	addi	r13 r0 0
	add	r14 r0 r20
	call	L_solve_each_element_2169
	addi	r16 r0 3
	add	r18 r0 r20
	call	L_solve_one_or_network_2173
L_cont_22097 : 
	addi	r4 r21 1
	add	r21 r0 r4
	jump	L_trace_or_matrix_2177
L_solve_each_element_fast_2183 : 
	ldi	r9 r12 0
	add	r1 r14 r13
	ldi	r11 r1 0
	addi	r4 r0 -1
	bne	r11 r4 L_else_22187
	return
L_else_22187 : 
	addi	r4 r0 1970
	add	r1 r4 r11
	ldi	r8 r1 0
	ldi	r7 r8 10
	fldi	f6 r7 0
	fldi	f4 r7 1
	fldi	f7 r7 2
	ldi	r4 r12 1
	add	r1 r4 r11
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22190
	ldi	r7 r12 0
	fadd	f5 f0 f4
	call	L_solver_rect_fast_2075
	add	r10 r0 r4
	jump	L_cont_22188
L_else_22190 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22254
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22257
	addi	r4 r0 0
	jump	L_cont_22255
L_else_22257 : 
	addi	r4 r0 1
L_cont_22255 : 
	bne	r4 r0 L_else_22259
	addi	r10 r0 0
	jump	L_cont_22188
L_else_22259 : 
	fldi	f3 r6 0
	fldi	f2 r7 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r10 r0 1
	jump	L_cont_22188
L_else_22254 : 
	fldi	f5 r6 0
	fbne	f5 f0 L_else_22262
	addi	r4 r0 1
	jump	L_cont_22260
L_else_22262 : 
	addi	r4 r0 0
L_cont_22260 : 
	bne	r4 r0 L_else_22264
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r7 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_22267
	addi	r4 r0 0
	jump	L_cont_22265
L_else_22267 : 
	addi	r4 r0 1
L_cont_22265 : 
	bne	r4 r0 L_else_22269
	addi	r10 r0 0
	jump	L_cont_22188
L_else_22269 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_22272
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_22270
L_else_22272 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_22270 : 
	addi	r10 r0 1
	jump	L_cont_22188
L_else_22264 : 
	addi	r10 r0 0
L_cont_22188 : 
	bne	r10 r0 L_else_22192
	addi	r4 r0 1970
	add	r1 r4 r11
	ldi	r4 r1 0
	ldi	r4 r4 6
	bne	r4 r0 L_else_22194
	return
L_else_22194 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_solve_each_element_fast_2183
L_else_22192 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else_22197
	addi	r4 r0 0
	jump	L_cont_22195
L_else_22197 : 
	addi	r4 r0 1
L_cont_22195 : 
	bne	r4 r0 L_else_22200
	jump	L_cont_22198
L_else_22200 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22203
	addi	r4 r0 0
	jump	L_cont_22201
L_else_22203 : 
	addi	r4 r0 1
L_cont_22201 : 
	bne	r4 r0 L_else_22205
	jump	L_cont_22198
L_else_22205 : 
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
	add	r1 r14 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22208
	addi	r4 r0 1
	jump	L_cont_22206
L_else_22208 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2149
	bne	r4 r0 L_else_22212
	addi	r4 r0 1
	add	r1 r14 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22214
	addi	r4 r0 1
	jump	L_cont_22206
L_else_22214 : 
	addi	r4 r0 1970
	add	r1 r4 r5
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
	bne	r5 r4 L_else_22217
	fbgt	f0 f5 L_else_22226
	fadd	f3 f0 f5
	jump	L_cont_22224
L_else_22226 : 
	fsub	f3 f0 f5
L_cont_22224 : 
	ldi	r4 r7 4
	fldi	f2 r4 0
	fbgt	f2 f3 L_else_22229
	addi	r4 r0 0
	jump	L_cont_22227
L_else_22229 : 
	addi	r4 r0 1
L_cont_22227 : 
	bne	r4 r0 L_else_22232
	addi	r4 r0 0
	jump	L_cont_22230
L_else_22232 : 
	fbgt	f0 f6 L_else_22237
	fadd	f3 f0 f6
	jump	L_cont_22235
L_else_22237 : 
	fsub	f3 f0 f6
L_cont_22235 : 
	ldi	r4 r7 4
	fldi	f2 r4 1
	fbgt	f2 f3 L_else_22240
	addi	r4 r0 0
	jump	L_cont_22238
L_else_22240 : 
	addi	r4 r0 1
L_cont_22238 : 
	bne	r4 r0 L_else_22242
	addi	r4 r0 0
	jump	L_cont_22230
L_else_22242 : 
	fbgt	f0 f7 L_else_22245
	fadd	f3 f0 f7
	jump	L_cont_22243
L_else_22245 : 
	fsub	f3 f0 f7
L_cont_22243 : 
	ldi	r4 r7 4
	fldi	f2 r4 2
	fbgt	f2 f3 L_else_22247
	addi	r4 r0 0
	jump	L_cont_22230
L_else_22247 : 
	addi	r4 r0 1
L_cont_22230 : 
	bne	r4 r0 L_else_22234
	addi	r5 r0 1
	ldi	r4 r7 6
	sub	r4 r5 r4
	jump	L_cont_22215
L_else_22234 : 
	ldi	r4 r7 6
	add	r4 r0 r4
	jump	L_cont_22215
L_else_22217 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22249
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
	fbgt	f0 f2 L_else_22252
	addi	r4 r0 0
	jump	L_cont_22250
L_else_22252 : 
	addi	r4 r0 1
L_cont_22250 : 
	xor	r4 r5 r4
	sub	r4 r6 r4
	jump	L_cont_22215
L_else_22249 : 
	add	r6 r0 r7
	call	L_is_second_outside_2144
L_cont_22215 : 
	bne	r4 r0 L_else_22219
	addi	r4 r0 2
	add	r1 r14 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22221
	addi	r4 r0 1
	jump	L_cont_22206
L_else_22221 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r7 r1 0
	fadd	f3 f0 f14
	fadd	f5 f0 f12
	fadd	f4 f0 f11
	call	L_is_outside_2149
	bne	r4 r0 L_else_22223
	addi	r7 r0 3
	add	r9 r0 r14
	fadd	f8 f0 f14
	fadd	f10 f0 f12
	fadd	f9 f0 f11
	call	L_check_all_inside_2154
	jump	L_cont_22206
L_else_22223 : 
	addi	r4 r0 0
	jump	L_cont_22206
L_else_22219 : 
	addi	r4 r0 0
	jump	L_cont_22206
L_else_22212 : 
	addi	r4 r0 0
L_cont_22206 : 
	bne	r4 r0 L_else_22210
	jump	L_cont_22198
L_else_22210 : 
	fsti	f13 r0 1082
	fsti	f14 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r11 r0 1045
	sti	r10 r0 1074
L_cont_22198 : 
	addi	r4 r13 1
	add	r13 r0 r4
	jump	L_solve_each_element_fast_2183
L_solve_one_or_network_fast_2187 : 
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22275
	return
L_else_22275 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2183
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22277
	return
L_else_22277 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2183
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22279
	return
L_else_22279 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2183
	addi	r15 r15 1
	add	r1 r16 r15
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22281
	return
L_else_22281 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r17
	call	L_solve_each_element_fast_2183
	addi	r4 r15 1
	add	r15 r0 r4
	jump	L_solve_one_or_network_fast_2187
L_trace_or_matrix_fast_2191 : 
	add	r1 r18 r20
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22284
	return
L_else_22284 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22287
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22309
	jump	L_cont_22285
L_else_22309 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2183
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22311
	jump	L_cont_22285
L_else_22311 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2183
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22313
	jump	L_cont_22285
L_else_22313 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2183
	addi	r15 r0 4
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2187
	jump	L_cont_22285
L_else_22287 : 
	addi	r4 r0 1970
	add	r1 r4 r5
	ldi	r8 r1 0
	ldi	r7 r8 10
	fldi	f6 r7 0
	fldi	f4 r7 1
	fldi	f7 r7 2
	ldi	r4 r19 1
	add	r1 r4 r5
	ldi	r6 r1 0
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22316
	ldi	r7 r19 0
	fadd	f5 f0 f4
	call	L_solver_rect_fast_2075
	jump	L_cont_22314
L_else_22316 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22331
	fldi	f2 r6 0
	fbgt	f0 f2 L_else_22334
	addi	r4 r0 0
	jump	L_cont_22332
L_else_22334 : 
	addi	r4 r0 1
L_cont_22332 : 
	bne	r4 r0 L_else_22336
	addi	r4 r0 0
	jump	L_cont_22314
L_else_22336 : 
	fldi	f3 r6 0
	fldi	f2 r7 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r4 r0 1
	jump	L_cont_22314
L_else_22331 : 
	fldi	f5 r6 0
	fbne	f5 f0 L_else_22339
	addi	r4 r0 1
	jump	L_cont_22337
L_else_22339 : 
	addi	r4 r0 0
L_cont_22337 : 
	bne	r4 r0 L_else_22341
	fldi	f2 r6 1
	fmul	f3 f2 f6
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r6 3
	fmul	f2 f2 f7
	fadd	f4 f3 f2
	fldi	f2 r7 3
	fmul	f3 f4 f4
	fmul	f2 f5 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else_22344
	addi	r4 r0 0
	jump	L_cont_22342
L_else_22344 : 
	addi	r4 r0 1
L_cont_22342 : 
	bne	r4 r0 L_else_22346
	addi	r4 r0 0
	jump	L_cont_22314
L_else_22346 : 
	ldi	r4 r8 6
	bne	r4 r0 L_else_22349
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_22347
L_else_22349 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r6 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_22347 : 
	addi	r4 r0 1
	jump	L_cont_22314
L_else_22341 : 
	addi	r4 r0 0
L_cont_22314 : 
	bne	r4 r0 L_else_22318
	jump	L_cont_22285
L_else_22318 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else_22321
	addi	r4 r0 0
	jump	L_cont_22319
L_else_22321 : 
	addi	r4 r0 1
L_cont_22319 : 
	bne	r4 r0 L_else_22323
	jump	L_cont_22285
L_else_22323 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22325
	jump	L_cont_22285
L_else_22325 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2183
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22327
	jump	L_cont_22285
L_else_22327 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2183
	addi	r4 r0 3
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22329
	jump	L_cont_22285
L_else_22329 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2183
	addi	r15 r0 4
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2187
L_cont_22285 : 
	addi	r20 r20 1
	add	r1 r18 r20
	ldi	r16 r1 0
	ldi	r5 r16 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22289
	return
L_else_22289 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22292
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22294
	jump	L_cont_22290
L_else_22294 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2183
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22296
	jump	L_cont_22290
L_else_22296 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2183
	addi	r15 r0 3
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2187
	jump	L_cont_22290
L_else_22292 : 
	add	r7 r0 r19
	call	L_solver_fast2_2112
	bne	r4 r0 L_else_22298
	jump	L_cont_22290
L_else_22298 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22301
	addi	r4 r0 0
	jump	L_cont_22299
L_else_22301 : 
	addi	r4 r0 1
L_cont_22299 : 
	bne	r4 r0 L_else_22303
	jump	L_cont_22290
L_else_22303 : 
	addi	r4 r0 1
	add	r1 r16 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22305
	jump	L_cont_22290
L_else_22305 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2183
	addi	r4 r0 2
	add	r1 r16 r4
	ldi	r4 r1 0
	addi	r5 r0 -1
	bne	r4 r5 L_else_22307
	jump	L_cont_22290
L_else_22307 : 
	addi	r5 r0 1083
	add	r1 r5 r4
	ldi	r14 r1 0
	addi	r13 r0 0
	add	r12 r0 r19
	call	L_solve_each_element_fast_2183
	addi	r15 r0 3
	add	r17 r0 r19
	call	L_solve_one_or_network_fast_2187
L_cont_22290 : 
	addi	r4 r20 1
	add	r20 r0 r4
	jump	L_trace_or_matrix_fast_2191
L_get_nvector_second_2201 : 
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
	bne	r4 r0 L_else_22353
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_22351
L_else_22353 : 
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
L_cont_22351 : 
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
	fbne	f3 f0 L_else_22356
	addi	r5 r0 1
	jump	L_cont_22354
L_else_22356 : 
	addi	r5 r0 0
L_cont_22354 : 
	bne	r5 r0 L_else_22359
	bne	r4 r0 L_else_22361
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_22357
L_else_22361 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_22357
L_else_22359 : 
	fldi	f3 r0 20
L_cont_22357 : 
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
L_get_nvector_2203 : 
	ldi	r6 r5 1
	addi	r4 r0 1
	bne	r6 r4 L_else_22364
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
	fbne	f2 f0 L_else_22367
	addi	r4 r0 1
	jump	L_cont_22365
L_else_22367 : 
	addi	r4 r0 0
L_cont_22365 : 
	bne	r4 r0 L_else_22370
	fbgt	f2 f0 L_else_22373
	addi	r4 r0 0
	jump	L_cont_22371
L_else_22373 : 
	addi	r4 r0 1
L_cont_22371 : 
	bne	r4 r0 L_else_22375
	fldi	f2 r0 28
	jump	L_cont_22368
L_else_22375 : 
	fldi	f2 r0 20
	jump	L_cont_22368
L_else_22370 : 
	fldi	f2 r0 26
L_cont_22368 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	return
L_else_22364 : 
	addi	r4 r0 2
	bne	r6 r4 L_else_22377
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
L_else_22377 : 
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
	bne	r4 r0 L_else_22380
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont_22378
L_else_22380 : 
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
L_cont_22378 : 
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
	fbne	f3 f0 L_else_22383
	addi	r5 r0 1
	jump	L_cont_22381
L_else_22383 : 
	addi	r5 r0 0
L_cont_22381 : 
	bne	r5 r0 L_else_22386
	bne	r4 r0 L_else_22388
	fldi	f2 r0 20
	fdiv	f3 f2 f3
	jump	L_cont_22384
L_else_22388 : 
	fldi	f2 r0 28
	fdiv	f3 f2 f3
	jump	L_cont_22384
L_else_22386 : 
	fldi	f3 r0 20
L_cont_22384 : 
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
L_utexture_2206 : 
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
	bne	r5 r4 L_else_22391
	fldi	f3 r7 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f4 f3 f2
	fldi	f2 r0 33
	fmul	f2 f4 f2
	flr	f2 f2
	fldi	f3 r0 34
	fmul	f2 f2 f3
	fsub	f3 f4 f2
	fldi	f2 r0 35
	fbgt	f2 f3 L_else_22394
	addi	r5 r0 0
	jump	L_cont_22392
L_else_22394 : 
	addi	r5 r0 1
L_cont_22392 : 
	fldi	f3 r7 2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f3 f3 f2
	fldi	f2 r0 33
	fmul	f2 f3 f2
	flr	f4 f2
	fldi	f2 r0 34
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 35
	fbgt	f3 f2 L_else_22397
	addi	r4 r0 0
	jump	L_cont_22395
L_else_22397 : 
	addi	r4 r0 1
L_cont_22395 : 
	bne	r5 r0 L_else_22400
	bne	r4 r0 L_else_22402
	fldi	f2 r0 36
	jump	L_cont_22398
L_else_22402 : 
	fldi	f2 r0 26
	jump	L_cont_22398
L_else_22400 : 
	bne	r4 r0 L_else_22404
	fldi	f2 r0 26
	jump	L_cont_22398
L_else_22404 : 
	fldi	f2 r0 36
L_cont_22398 : 
	fsti	f2 r0 1050
	return
L_else_22391 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22406
	fldi	f3 r7 1
	fldi	f2 r0 37
	fmul	f9 f3 f2
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f9 f5 L_else_22409
	fldi	f3 r0 2
	fbgt	f3 f9 L_else_22411
	fldi	f3 r0 3
	fldi	f4 r0 4
	fldi	f2 r0 5
	fbgt	f9 f0 L_else_22413
	fldi	f2 r0 6
	fbgt	f2 f9 L_else_22415
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
	jump	L_cont_22407
L_else_22415 : 
	fldi	f2 r0 13
	fbgt	f2 f9 L_else_22417
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
	jump	L_cont_22407
L_else_22417 : 
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
	jump	L_cont_22407
L_else_22413 : 
	fbgt	f9 f3 L_else_22419
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
	jump	L_cont_22407
L_else_22419 : 
	fbgt	f9 f2 L_else_22421
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
	jump	L_cont_22407
L_else_22421 : 
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
	jump	L_cont_22407
L_else_22411 : 
	fadd	f9 f9 f2
	call	L_sin_1870
	jump	L_cont_22407
L_else_22409 : 
	fsub	f9 f9 f2
	call	L_sin_1870
L_cont_22407 : 
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
L_else_22406 : 
	addi	r4 r0 3
	bne	r5 r4 L_else_22423
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
	fadd	f2 f2 f3
	fsqrt	f3 f2
	fldi	f2 r0 35
	fdiv	f3 f3 f2
	flr	f2 f3
	fsub	f3 f3 f2
	fldi	f2 r0 38
	fmul	f6 f3 f2
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f6 f5 L_else_22426
	fldi	f2 r0 2
	fbgt	f2 f6 L_else_22428
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f6 f0 L_else_22430
	fldi	f2 r0 6
	fbgt	f2 f6 L_else_22432
	fmul	f6 f6 f6
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
	jump	L_cont_22424
L_else_22432 : 
	fldi	f2 r0 13
	fbgt	f2 f6 L_else_22434
	fadd	f9 f6 f3
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
	jump	L_cont_22424
L_else_22434 : 
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
	fsub	f2 f0 f2
	jump	L_cont_22424
L_else_22430 : 
	fbgt	f6 f4 L_else_22436
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
	jump	L_cont_22424
L_else_22436 : 
	fbgt	f6 f2 L_else_22438
	fsub	f9 f6 f3
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
	jump	L_cont_22424
L_else_22438 : 
	fsub	f2 f5 f6
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
	jump	L_cont_22424
L_else_22428 : 
	fadd	f6 f6 f3
	call	L_cos_1872
	jump	L_cont_22424
L_else_22426 : 
	fsub	f6 f6 f3
	call	L_cos_1872
L_cont_22424 : 
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
L_else_22423 : 
	addi	r4 r0 4
	bne	r5 r4 L_else_22440
	fldi	f3 r7 0
	ldi	r4 r6 5
	fldi	f2 r4 0
	fsub	f3 f3 f2
	ldi	r4 r6 4
	fldi	f2 r4 0
	fsqrt	f2 f2
	fmul	f5 f3 f2
	fldi	f3 r7 2
	ldi	r4 r6 5
	fldi	f2 r4 2
	fsub	f3 f3 f2
	ldi	r4 r6 4
	fldi	f2 r4 2
	fsqrt	f2 f2
	fmul	f4 f3 f2
	fmul	f2 f5 f5
	fmul	f3 f4 f4
	fadd	f16 f2 f3
	fbgt	f0 f5 L_else_22443
	fadd	f2 f0 f5
	jump	L_cont_22441
L_else_22443 : 
	fsub	f2 f0 f5
L_cont_22441 : 
	fldi	f3 r0 39
	fbgt	f3 f2 L_else_22446
	addi	r4 r0 0
	jump	L_cont_22444
L_else_22446 : 
	addi	r4 r0 1
L_cont_22444 : 
	bne	r4 r0 L_else_22449
	fdiv	f2 f4 f5
	fbgt	f0 f2 L_else_22470
	fadd	f13 f0 f2
	jump	L_cont_22468
L_else_22470 : 
	fsub	f13 f0 f2
L_cont_22468 : 
	call	L_atan_1874
	fadd	f3 f0 f2
	fldi	f2 r0 40
	fmul	f3 f3 f2
	fldi	f2 r0 38
	fdiv	f3 f3 f2
	jump	L_cont_22447
L_else_22449 : 
	fldi	f3 r0 41
L_cont_22447 : 
	flr	f2 f3
	fsub	f15 f3 f2
	fldi	f3 r7 1
	ldi	r4 r6 5
	fldi	f2 r4 1
	fsub	f3 f3 f2
	ldi	r4 r6 4
	fldi	f2 r4 1
	fsqrt	f2 f2
	fmul	f4 f3 f2
	fbgt	f0 f16 L_else_22452
	fadd	f3 f0 f16
	jump	L_cont_22450
L_else_22452 : 
	fsub	f3 f0 f16
L_cont_22450 : 
	fldi	f2 r0 39
	fbgt	f2 f3 L_else_22455
	addi	r4 r0 0
	jump	L_cont_22453
L_else_22455 : 
	addi	r4 r0 1
L_cont_22453 : 
	bne	r4 r0 L_else_22458
	fdiv	f2 f4 f16
	fbgt	f0 f2 L_else_22467
	fadd	f13 f0 f2
	jump	L_cont_22465
L_else_22467 : 
	fsub	f13 f0 f2
L_cont_22465 : 
	call	L_atan_1874
	fadd	f3 f0 f2
	fldi	f2 r0 40
	fmul	f3 f3 f2
	fldi	f2 r0 38
	fdiv	f3 f3 f2
	jump	L_cont_22456
L_else_22458 : 
	fldi	f3 r0 41
L_cont_22456 : 
	flr	f2 f3
	fsub	f4 f3 f2
	fldi	f3 r0 42
	fldi	f2 r0 19
	fsub	f2 f2 f15
	fmul	f2 f2 f2
	fsub	f3 f3 f2
	fldi	f2 r0 19
	fsub	f2 f2 f4
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fbgt	f0 f2 L_else_22461
	addi	r4 r0 0
	jump	L_cont_22459
L_else_22461 : 
	addi	r4 r0 1
L_cont_22459 : 
	bne	r4 r0 L_else_22464
	fadd	f2 f0 f2
	jump	L_cont_22462
L_else_22464 : 
	fldi	f2 r0 26
L_cont_22462 : 
	fldi	f3 r0 36
	fmul	f2 f3 f2
	fldi	f3 r0 43
	fdiv	f2 f2 f3
	fsti	f2 r0 1051
	return
L_else_22440 : 
	return
L_trace_reflections_2213 : 
	bgt	r0 r22 L_else_22473
	addi	r4 r0 1185
	add	r1 r4 r22
	ldi	r23 r1 0
	ldi	r24 r23 1
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r20 r0 0
	ldi	r18 r0 1183
	add	r19 r0 r24
	call	L_trace_or_matrix_fast_2191
	fldi	f2 r0 1082
	fldi	f3 r0 32
	fbgt	f2 f3 L_else_22476
	addi	r4 r0 0
	jump	L_cont_22474
L_else_22476 : 
	addi	r4 r0 1
L_cont_22474 : 
	bne	r4 r0 L_else_22479
	addi	r4 r0 0
	jump	L_cont_22477
L_else_22479 : 
	fldi	f3 r0 45
	fbgt	f3 f2 L_else_22536
	addi	r4 r0 0
	jump	L_cont_22477
L_else_22536 : 
	addi	r4 r0 1
L_cont_22477 : 
	bne	r4 r0 L_else_22482
	jump	L_cont_22480
L_else_22482 : 
	ldi	r4 r0 1045
	addi	r5 r0 4
	mul	r4 r4 r5
	ldi	r5 r0 1074
	add	r4 r4 r5
	ldi	r5 r23 0
	bne	r4 r5 L_else_22484
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22487
	addi	r4 r0 0
	jump	L_cont_22485
L_else_22487 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22503
	addi	r4 r0 1
	jump	L_cont_22501
L_else_22503 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2094
	bne	r4 r0 L_else_22518
	addi	r4 r0 0
	jump	L_cont_22501
L_else_22518 : 
	fldi	f3 r0 1073
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_22521
	addi	r4 r0 0
	jump	L_cont_22519
L_else_22521 : 
	addi	r4 r0 1
L_cont_22519 : 
	bne	r4 r0 L_else_22523
	addi	r4 r0 0
	jump	L_cont_22501
L_else_22523 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22526
	addi	r4 r0 0
	jump	L_cont_22524
L_else_22526 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22530
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22532
	addi	r4 r0 0
	jump	L_cont_22524
L_else_22532 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22534
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_22524
L_else_22534 : 
	addi	r4 r0 1
	jump	L_cont_22524
L_else_22530 : 
	addi	r4 r0 1
L_cont_22524 : 
	bne	r4 r0 L_else_22528
	addi	r4 r0 0
	jump	L_cont_22501
L_else_22528 : 
	addi	r4 r0 1
L_cont_22501 : 
	bne	r4 r0 L_else_22505
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2166
	jump	L_cont_22485
L_else_22505 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22508
	addi	r4 r0 0
	jump	L_cont_22506
L_else_22508 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22512
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22514
	addi	r4 r0 0
	jump	L_cont_22506
L_else_22514 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22516
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_22506
L_else_22516 : 
	addi	r4 r0 1
	jump	L_cont_22506
L_else_22512 : 
	addi	r4 r0 1
L_cont_22506 : 
	bne	r4 r0 L_else_22510
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2166
	jump	L_cont_22485
L_else_22510 : 
	addi	r4 r0 1
L_cont_22485 : 
	bne	r4 r0 L_else_22489
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
	fbgt	f5 f0 L_else_22492
	addi	r4 r0 0
	jump	L_cont_22490
L_else_22492 : 
	addi	r4 r0 1
L_cont_22490 : 
	bne	r4 r0 L_else_22495
	jump	L_cont_22493
L_else_22495 : 
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
L_cont_22493 : 
	fbgt	f4 f0 L_else_22498
	addi	r4 r0 0
	jump	L_cont_22496
L_else_22498 : 
	addi	r4 r0 1
L_cont_22496 : 
	bne	r4 r0 L_else_22500
	jump	L_cont_22480
L_else_22500 : 
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
	jump	L_cont_22480
L_else_22489 : 
	jump	L_cont_22480
L_else_22484 : 
L_cont_22480 : 
	addi	r4 r22 -1
	add	r22 r0 r4
	jump	L_trace_reflections_2213
L_else_22473 : 
	return
L_trace_ray_2218 : 
	addi	r4 r0 4
	bgt	r29 r4 L_else_22539
	ldi	r30 r26 2
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r21 r0 0
	ldi	r19 r0 1183
	add	r20 r0 r27
	call	L_trace_or_matrix_2177
	fldi	f2 r0 1082
	fldi	f3 r0 32
	fbgt	f2 f3 L_else_22542
	addi	r4 r0 0
	jump	L_cont_22540
L_else_22542 : 
	addi	r4 r0 1
L_cont_22540 : 
	bne	r4 r0 L_else_22545
	addi	r4 r0 0
	jump	L_cont_22543
L_else_22545 : 
	fldi	f3 r0 45
	fbgt	f3 f2 L_else_22639
	addi	r4 r0 0
	jump	L_cont_22543
L_else_22639 : 
	addi	r4 r0 1
L_cont_22543 : 
	bne	r4 r0 L_else_22547
	addi	r4 r0 -1
	add	r1 r30 r29
	sti	r4 r1 0
	bne	r29 r0 L_else_22549
	return
L_else_22549 : 
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
	fbgt	f3 f0 L_else_22552
	addi	r4 r0 0
	jump	L_cont_22550
L_else_22552 : 
	addi	r4 r0 1
L_cont_22550 : 
	bne	r4 r0 L_else_22554
	return
L_else_22554 : 
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
L_else_22547 : 
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
	bne	r5 r4 L_else_22557
	ldi	r4 r0 1074
	fldi	f2 r0 26
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r6 r0 1046
	addi	r5 r4 -1
	addi	r4 r4 -1
	add	r1 r27 r4
	fldi	f2 r1 0
	fbne	f2 f0 L_else_22627
	addi	r4 r0 1
	jump	L_cont_22625
L_else_22627 : 
	addi	r4 r0 0
L_cont_22625 : 
	bne	r4 r0 L_else_22630
	fbgt	f2 f0 L_else_22633
	addi	r4 r0 0
	jump	L_cont_22631
L_else_22633 : 
	addi	r4 r0 1
L_cont_22631 : 
	bne	r4 r0 L_else_22635
	fldi	f2 r0 28
	jump	L_cont_22628
L_else_22635 : 
	fldi	f2 r0 20
	jump	L_cont_22628
L_else_22630 : 
	fldi	f2 r0 26
L_cont_22628 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	jump	L_cont_22555
L_else_22557 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22637
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
	jump	L_cont_22555
L_else_22637 : 
	add	r5 r0 r25
	call	L_get_nvector_second_2201
L_cont_22555 : 
	fldi	f2 r0 1042
	fsti	f2 r0 1063
	fldi	f2 r0 1043
	fsti	f2 r0 1064
	fldi	f2 r0 1044
	fsti	f2 r0 1065
	addi	r7 r0 1042
	add	r6 r0 r25
	call	L_utexture_2206
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
	fbgt	f3 f2 L_else_22560
	addi	r4 r0 0
	jump	L_cont_22558
L_else_22560 : 
	addi	r4 r0 1
L_cont_22558 : 
	bne	r4 r0 L_else_22563
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
	ldi	r4 r26 7
	add	r1 r4 r29
	ldi	r4 r1 0
	fldi	f2 r0 1046
	fsti	f2 r4 0
	fldi	f2 r0 1047
	fsti	f2 r4 1
	fldi	f2 r0 1048
	fsti	f2 r4 2
	jump	L_cont_22561
L_else_22563 : 
	addi	r4 r0 0
	add	r1 r5 r29
	sti	r4 r1 0
L_cont_22561 : 
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
	ldi	r4 r25 7
	fldi	f2 r4 1
	fmul	f15 f18 f2
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22566
	addi	r4 r0 0
	jump	L_cont_22564
L_else_22566 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22593
	addi	r4 r0 1
	jump	L_cont_22591
L_else_22593 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2094
	bne	r4 r0 L_else_22608
	addi	r4 r0 0
	jump	L_cont_22591
L_else_22608 : 
	fldi	f3 r0 1073
	fldi	f2 r0 32
	fbgt	f2 f3 L_else_22611
	addi	r4 r0 0
	jump	L_cont_22609
L_else_22611 : 
	addi	r4 r0 1
L_cont_22609 : 
	bne	r4 r0 L_else_22613
	addi	r4 r0 0
	jump	L_cont_22591
L_else_22613 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22616
	addi	r4 r0 0
	jump	L_cont_22614
L_else_22616 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22620
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22622
	addi	r4 r0 0
	jump	L_cont_22614
L_else_22622 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22624
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_22614
L_else_22624 : 
	addi	r4 r0 1
	jump	L_cont_22614
L_else_22620 : 
	addi	r4 r0 1
L_cont_22614 : 
	bne	r4 r0 L_else_22618
	addi	r4 r0 0
	jump	L_cont_22591
L_else_22618 : 
	addi	r4 r0 1
L_cont_22591 : 
	bne	r4 r0 L_else_22595
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2166
	jump	L_cont_22564
L_else_22595 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22598
	addi	r4 r0 0
	jump	L_cont_22596
L_else_22598 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22602
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22604
	addi	r4 r0 0
	jump	L_cont_22596
L_else_22604 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22606
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_22596
L_else_22606 : 
	addi	r4 r0 1
	jump	L_cont_22596
L_else_22602 : 
	addi	r4 r0 1
L_cont_22596 : 
	bne	r4 r0 L_else_22600
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2166
	jump	L_cont_22564
L_else_22600 : 
	addi	r4 r0 1
L_cont_22564 : 
	bne	r4 r0 L_else_22569
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
	fbgt	f5 f0 L_else_22582
	addi	r4 r0 0
	jump	L_cont_22580
L_else_22582 : 
	addi	r4 r0 1
L_cont_22580 : 
	bne	r4 r0 L_else_22585
	jump	L_cont_22583
L_else_22585 : 
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
L_cont_22583 : 
	fbgt	f4 f0 L_else_22588
	addi	r4 r0 0
	jump	L_cont_22586
L_else_22588 : 
	addi	r4 r0 1
L_cont_22586 : 
	bne	r4 r0 L_else_22590
	jump	L_cont_22567
L_else_22590 : 
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
	jump	L_cont_22567
L_else_22569 : 
L_cont_22567 : 
	addi	r9 r0 1042
	fldi	f2 r0 1042
	fsti	f2 r0 1066
	fldi	f2 r0 1043
	fsti	f2 r0 1067
	fldi	f2 r0 1044
	fsti	f2 r0 1068
	ldi	r4 r0 1072
	addi	r7 r4 -1
	call	L_setup_startp_constants_2129
	ldi	r4 r0 1075
	addi	r22 r4 -1
	add	r21 r0 r27
	fadd	f16 f0 f19
	call	L_trace_reflections_2213
	fldi	f2 r0 48
	fbgt	f18 f2 L_else_22572
	addi	r4 r0 0
	jump	L_cont_22570
L_else_22572 : 
	addi	r4 r0 1
L_cont_22570 : 
	bne	r4 r0 L_else_22574
	return
L_else_22574 : 
	addi	r4 r0 4
	bgt	r4 r29 L_else_22577
	jump	L_cont_22575
L_else_22577 : 
	addi	r4 r29 1
	addi	r5 r0 -1
	add	r1 r30 r4
	sti	r5 r1 0
L_cont_22575 : 
	addi	r4 r0 2
	bne	r28 r4 L_else_22579
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
	jump	L_trace_ray_2218
L_else_22579 : 
	return
L_else_22539 : 
	return
L_trace_diffuse_ray_2224 : 
	fldi	f2 r0 44
	fsti	f2 r0 1082
	addi	r20 r0 0
	ldi	r18 r0 1183
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2191
	fldi	f3 r0 1082
	fldi	f2 r0 32
	fbgt	f3 f2 L_else_22643
	addi	r4 r0 0
	jump	L_cont_22641
L_else_22643 : 
	addi	r4 r0 1
L_cont_22641 : 
	bne	r4 r0 L_else_22646
	addi	r4 r0 0
	jump	L_cont_22644
L_else_22646 : 
	fldi	f2 r0 45
	fbgt	f2 f3 L_else_22711
	addi	r4 r0 0
	jump	L_cont_22644
L_else_22711 : 
	addi	r4 r0 1
L_cont_22644 : 
	bne	r4 r0 L_else_22648
	return
L_else_22648 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r21 0
	ldi	r5 r17 1
	addi	r4 r0 1
	bne	r5 r4 L_else_22651
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
	fbne	f2 f0 L_else_22699
	addi	r4 r0 1
	jump	L_cont_22697
L_else_22699 : 
	addi	r4 r0 0
L_cont_22697 : 
	bne	r4 r0 L_else_22702
	fbgt	f2 f0 L_else_22705
	addi	r4 r0 0
	jump	L_cont_22703
L_else_22705 : 
	addi	r4 r0 1
L_cont_22703 : 
	bne	r4 r0 L_else_22707
	fldi	f2 r0 28
	jump	L_cont_22700
L_else_22707 : 
	fldi	f2 r0 20
	jump	L_cont_22700
L_else_22702 : 
	fldi	f2 r0 26
L_cont_22700 : 
	fsub	f2 f0 f2
	add	r1 r6 r5
	fsti	f2 r1 0
	jump	L_cont_22649
L_else_22651 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_22709
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
	jump	L_cont_22649
L_else_22709 : 
	add	r5 r0 r17
	call	L_get_nvector_second_2201
L_cont_22649 : 
	addi	r7 r0 1042
	add	r6 r0 r17
	call	L_utexture_2206
	addi	r4 r0 0
	ldi	r14 r0 1183
	add	r1 r14 r4
	ldi	r15 r1 0
	ldi	r6 r15 0
	addi	r4 r0 -1
	bne	r6 r4 L_else_22654
	addi	r4 r0 0
	jump	L_cont_22652
L_else_22654 : 
	addi	r4 r0 99
	bne	r6 r4 L_else_22665
	addi	r4 r0 1
	jump	L_cont_22663
L_else_22665 : 
	addi	r7 r0 1905
	addi	r5 r0 1042
	call	L_solver_fast_2094
	bne	r4 r0 L_else_22680
	addi	r4 r0 0
	jump	L_cont_22663
L_else_22680 : 
	fldi	f2 r0 1073
	fldi	f3 r0 32
	fbgt	f3 f2 L_else_22683
	addi	r4 r0 0
	jump	L_cont_22681
L_else_22683 : 
	addi	r4 r0 1
L_cont_22681 : 
	bne	r4 r0 L_else_22685
	addi	r4 r0 0
	jump	L_cont_22663
L_else_22685 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22688
	addi	r4 r0 0
	jump	L_cont_22686
L_else_22688 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22692
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22694
	addi	r4 r0 0
	jump	L_cont_22686
L_else_22694 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22696
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_22686
L_else_22696 : 
	addi	r4 r0 1
	jump	L_cont_22686
L_else_22692 : 
	addi	r4 r0 1
L_cont_22686 : 
	bne	r4 r0 L_else_22690
	addi	r4 r0 0
	jump	L_cont_22663
L_else_22690 : 
	addi	r4 r0 1
L_cont_22663 : 
	bne	r4 r0 L_else_22667
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2166
	jump	L_cont_22652
L_else_22667 : 
	addi	r4 r0 1
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22670
	addi	r4 r0 0
	jump	L_cont_22668
L_else_22670 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22674
	addi	r4 r0 2
	add	r1 r15 r4
	ldi	r5 r1 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_22676
	addi	r4 r0 0
	jump	L_cont_22668
L_else_22676 : 
	addi	r4 r0 1083
	add	r1 r4 r5
	ldi	r10 r1 0
	addi	r11 r0 0
	call	L_shadow_check_and_group_2160
	bne	r4 r0 L_else_22678
	addi	r12 r0 3
	add	r13 r0 r15
	call	L_shadow_check_one_or_group_2163
	jump	L_cont_22668
L_else_22678 : 
	addi	r4 r0 1
	jump	L_cont_22668
L_else_22674 : 
	addi	r4 r0 1
L_cont_22668 : 
	bne	r4 r0 L_else_22672
	addi	r15 r0 1
	call	L_shadow_check_one_or_matrix_2166
	jump	L_cont_22652
L_else_22672 : 
	addi	r4 r0 1
L_cont_22652 : 
	bne	r4 r0 L_else_22656
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
	fbgt	f2 f0 L_else_22659
	addi	r4 r0 0
	jump	L_cont_22657
L_else_22659 : 
	addi	r4 r0 1
L_cont_22657 : 
	bne	r4 r0 L_else_22662
	fldi	f2 r0 26
	jump	L_cont_22660
L_else_22662 : 
	fadd	f2 f0 f2
L_cont_22660 : 
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
L_else_22656 : 
	return
L_iter_trace_diffuse_rays_2227 : 
	bgt	r0 r22 L_else_22714
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
	fbgt	f0 f3 L_else_22717
	addi	r4 r0 0
	jump	L_cont_22715
L_else_22717 : 
	addi	r4 r0 1
L_cont_22715 : 
	bne	r4 r0 L_else_22720
	add	r1 r25 r22
	ldi	r21 r1 0
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
	bne	r5 r4 L_else_22731
	jump	L_cont_22729
L_else_22731 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22752
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2187
	jump	L_cont_22750
L_else_22752 : 
	add	r7 r0 r21
	call	L_solver_fast2_2112
	bne	r4 r0 L_else_22754
	jump	L_cont_22750
L_else_22754 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22757
	addi	r4 r0 0
	jump	L_cont_22755
L_else_22757 : 
	addi	r4 r0 1
L_cont_22755 : 
	bne	r4 r0 L_else_22759
	jump	L_cont_22750
L_else_22759 : 
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2187
L_cont_22750 : 
	addi	r20 r0 1
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2191
L_cont_22729 : 
	fldi	f2 r0 1082
	fldi	f3 r0 32
	fbgt	f2 f3 L_else_22734
	addi	r4 r0 0
	jump	L_cont_22732
L_else_22734 : 
	addi	r4 r0 1
L_cont_22732 : 
	bne	r4 r0 L_else_22737
	addi	r4 r0 0
	jump	L_cont_22735
L_else_22737 : 
	fldi	f3 r0 45
	fbgt	f3 f2 L_else_22749
	addi	r4 r0 0
	jump	L_cont_22735
L_else_22749 : 
	addi	r4 r0 1
L_cont_22735 : 
	bne	r4 r0 L_else_22739
	jump	L_cont_22718
L_else_22739 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r21 0
	add	r5 r0 r17
	call	L_get_nvector_2203
	addi	r7 r0 1042
	add	r6 r0 r17
	call	L_utexture_2206
	addi	r15 r0 0
	ldi	r14 r0 1183
	call	L_shadow_check_one_or_matrix_2166
	bne	r4 r0 L_else_22741
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
	fbgt	f2 f0 L_else_22744
	addi	r4 r0 0
	jump	L_cont_22742
L_else_22744 : 
	addi	r4 r0 1
L_cont_22742 : 
	bne	r4 r0 L_else_22747
	fldi	f2 r0 26
	jump	L_cont_22745
L_else_22747 : 
	fadd	f2 f0 f2
L_cont_22745 : 
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
	jump	L_cont_22718
L_else_22741 : 
	jump	L_cont_22718
L_else_22720 : 
	addi	r4 r22 1
	add	r1 r25 r4
	ldi	r21 r1 0
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
	bne	r5 r4 L_else_22762
	jump	L_cont_22760
L_else_22762 : 
	addi	r4 r0 99
	bne	r5 r4 L_else_22783
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2187
	jump	L_cont_22781
L_else_22783 : 
	add	r7 r0 r21
	call	L_solver_fast2_2112
	bne	r4 r0 L_else_22785
	jump	L_cont_22781
L_else_22785 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else_22788
	addi	r4 r0 0
	jump	L_cont_22786
L_else_22788 : 
	addi	r4 r0 1
L_cont_22786 : 
	bne	r4 r0 L_else_22790
	jump	L_cont_22781
L_else_22790 : 
	addi	r15 r0 1
	add	r17 r0 r21
	call	L_solve_one_or_network_fast_2187
L_cont_22781 : 
	addi	r20 r0 1
	add	r19 r0 r21
	call	L_trace_or_matrix_fast_2191
L_cont_22760 : 
	fldi	f2 r0 1082
	fldi	f3 r0 32
	fbgt	f2 f3 L_else_22765
	addi	r4 r0 0
	jump	L_cont_22763
L_else_22765 : 
	addi	r4 r0 1
L_cont_22763 : 
	bne	r4 r0 L_else_22768
	addi	r4 r0 0
	jump	L_cont_22766
L_else_22768 : 
	fldi	f3 r0 45
	fbgt	f3 f2 L_else_22780
	addi	r4 r0 0
	jump	L_cont_22766
L_else_22780 : 
	addi	r4 r0 1
L_cont_22766 : 
	bne	r4 r0 L_else_22770
	jump	L_cont_22718
L_else_22770 : 
	addi	r4 r0 1970
	ldi	r5 r0 1045
	add	r1 r4 r5
	ldi	r17 r1 0
	ldi	r7 r21 0
	add	r5 r0 r17
	call	L_get_nvector_2203
	addi	r7 r0 1042
	add	r6 r0 r17
	call	L_utexture_2206
	addi	r15 r0 0
	ldi	r14 r0 1183
	call	L_shadow_check_one_or_matrix_2166
	bne	r4 r0 L_else_22772
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
	fbgt	f2 f0 L_else_22775
	addi	r4 r0 0
	jump	L_cont_22773
L_else_22775 : 
	addi	r4 r0 1
L_cont_22773 : 
	bne	r4 r0 L_else_22778
	fldi	f2 r0 26
	jump	L_cont_22776
L_else_22778 : 
	fadd	f2 f0 f2
L_cont_22776 : 
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
	jump	L_cont_22718
L_else_22772 : 
L_cont_22718 : 
	addi	r22 r22 -2
	bgt	r0 r22 L_else_22722
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
	fbgt	f0 f3 L_else_22725
	addi	r4 r0 0
	jump	L_cont_22723
L_else_22725 : 
	addi	r4 r0 1
L_cont_22723 : 
	bne	r4 r0 L_else_22728
	add	r1 r25 r22
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
	jump	L_cont_22726
L_else_22728 : 
	addi	r4 r22 1
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
L_cont_22726 : 
	addi	r4 r22 -2
	add	r22 r0 r4
	jump	L_iter_trace_diffuse_rays_2227
L_else_22722 : 
	return
L_else_22714 : 
	return
L_calc_diffuse_using_1point_2240 : 
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
	bne	r30 r0 L_else_22794
	jump	L_cont_22792
L_else_22794 : 
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
	call	L_setup_startp_constants_2129
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
	fbgt	f0 f3 L_else_22833
	addi	r4 r0 0
	jump	L_cont_22831
L_else_22833 : 
	addi	r4 r0 1
L_cont_22831 : 
	bne	r4 r0 L_else_22836
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
	jump	L_cont_22834
L_else_22836 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
L_cont_22834 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2227
L_cont_22792 : 
	addi	r4 r0 1
	bne	r30 r4 L_else_22797
	jump	L_cont_22795
L_else_22797 : 
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
	call	L_setup_startp_constants_2129
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
	fbgt	f0 f3 L_else_22827
	addi	r4 r0 0
	jump	L_cont_22825
L_else_22827 : 
	addi	r4 r0 1
L_cont_22825 : 
	bne	r4 r0 L_else_22830
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
	jump	L_cont_22828
L_else_22830 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
L_cont_22828 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2227
L_cont_22795 : 
	addi	r4 r0 2
	bne	r30 r4 L_else_22800
	jump	L_cont_22798
L_else_22800 : 
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
	call	L_setup_startp_constants_2129
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
	fbgt	f0 f3 L_else_22821
	addi	r4 r0 0
	jump	L_cont_22819
L_else_22821 : 
	addi	r4 r0 1
L_cont_22819 : 
	bne	r4 r0 L_else_22824
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
	jump	L_cont_22822
L_else_22824 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
L_cont_22822 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2227
L_cont_22798 : 
	addi	r4 r0 3
	bne	r30 r4 L_else_22803
	jump	L_cont_22801
L_else_22803 : 
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
	call	L_setup_startp_constants_2129
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
	fbgt	f0 f3 L_else_22815
	addi	r4 r0 0
	jump	L_cont_22813
L_else_22815 : 
	addi	r4 r0 1
L_cont_22813 : 
	bne	r4 r0 L_else_22818
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
	jump	L_cont_22816
L_else_22818 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
L_cont_22816 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2227
L_cont_22801 : 
	addi	r4 r0 4
	bne	r30 r4 L_else_22806
	jump	L_cont_22804
L_else_22806 : 
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
	call	L_setup_startp_constants_2129
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
	fbgt	f0 f3 L_else_22809
	addi	r4 r0 0
	jump	L_cont_22807
L_else_22809 : 
	addi	r4 r0 1
L_cont_22807 : 
	bne	r4 r0 L_else_22812
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
	jump	L_cont_22810
L_else_22812 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
L_cont_22810 : 
	addi	r22 r0 116
	add	r23 r0 r26
	add	r24 r0 r29
	call	L_iter_trace_diffuse_rays_2227
L_cont_22804 : 
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
L_calc_diffuse_using_5points_2243 : 
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
L_do_without_neighbors_2249 : 
	addi	r4 r0 4
	bgt	r29 r4 L_else_22840
	ldi	r4 r5 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bgt	r0 r4 L_else_22842
	ldi	r4 r5 3
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r0 L_else_22845
	jump	L_cont_22843
L_else_22845 : 
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
	bne	r30 r0 L_else_22855
	jump	L_cont_22853
L_else_22855 : 
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
	call	L_setup_startp_constants_2129
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2227
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_22853 : 
	addi	r4 r0 1
	bne	r30 r4 L_else_22858
	jump	L_cont_22856
L_else_22858 : 
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
	call	L_setup_startp_constants_2129
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2227
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_22856 : 
	addi	r4 r0 2
	bne	r30 r4 L_else_22861
	jump	L_cont_22859
L_else_22861 : 
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
	call	L_setup_startp_constants_2129
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2227
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_22859 : 
	addi	r4 r0 3
	bne	r30 r4 L_else_22864
	jump	L_cont_22862
L_else_22864 : 
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
	call	L_setup_startp_constants_2129
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2227
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_22862 : 
	addi	r4 r0 4
	bne	r30 r4 L_else_22867
	jump	L_cont_22865
L_else_22867 : 
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
	call	L_setup_startp_constants_2129
	addi	r2 r2 -1
	ldi	r5 r2 0
	addi	r22 r0 118
	sti	r5 r2 0
	add	r23 r0 r26
	add	r24 r0 r28
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays_2227
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_22865 : 
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
L_cont_22843 : 
	addi	r31 r29 1
	addi	r4 r0 4
	bgt	r31 r4 L_else_22847
	ldi	r4 r5 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_22849
	ldi	r4 r5 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_22852
	jump	L_cont_22850
L_else_22852 : 
	sti	r5 r2 0
	add	r7 r0 r5
	add	r28 r0 r31
	addi	r2 r2 1
	call	L_calc_diffuse_using_1point_2240
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_22850 : 
	addi	r4 r31 1
	add	r29 r0 r4
	jump	L_do_without_neighbors_2249
L_else_22849 : 
	return
L_else_22847 : 
	return
L_else_22842 : 
	return
L_else_22840 : 
	return
L_try_exploit_neighbors_2265 : 
	add	r1 r13 r14
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r31 r4 L_else_22870
	ldi	r4 r6 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_22872
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
	bne	r4 r5 L_else_22875
	add	r1 r16 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_22907
	addi	r4 r14 -1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_22909
	addi	r4 r14 1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r5 L_else_22911
	addi	r4 r0 1
	jump	L_cont_22873
L_else_22911 : 
	addi	r4 r0 0
	jump	L_cont_22873
L_else_22909 : 
	addi	r4 r0 0
	jump	L_cont_22873
L_else_22907 : 
	addi	r4 r0 0
	jump	L_cont_22873
L_else_22875 : 
	addi	r4 r0 0
L_cont_22873 : 
	bne	r4 r0 L_else_22877
	add	r1 r13 r14
	ldi	r5 r1 0
	addi	r4 r0 4
	bgt	r31 r4 L_else_22879
	ldi	r4 r5 2
	add	r1 r4 r31
	ldi	r4 r1 0
	bgt	r0 r4 L_else_22881
	ldi	r4 r5 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_22884
	jump	L_cont_22882
L_else_22884 : 
	sti	r5 r2 0
	add	r7 r0 r5
	add	r28 r0 r31
	addi	r2 r2 1
	call	L_calc_diffuse_using_1point_2240
	addi	r2 r2 -1
	ldi	r5 r2 0
L_cont_22882 : 
	addi	r29 r31 1
	jump	L_do_without_neighbors_2249
L_else_22881 : 
	return
L_else_22879 : 
	return
L_else_22877 : 
	ldi	r4 r6 3
	add	r1 r4 r31
	ldi	r4 r1 0
	bne	r4 r0 L_else_22887
	jump	L_cont_22885
L_else_22887 : 
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
L_cont_22885 : 
	addi	r29 r31 1
	add	r1 r13 r14
	ldi	r6 r1 0
	addi	r4 r0 4
	bgt	r29 r4 L_else_22889
	ldi	r4 r6 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bgt	r0 r4 L_else_22891
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
	bne	r4 r5 L_else_22894
	add	r1 r16 r14
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_22901
	addi	r4 r14 -1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_22903
	addi	r4 r14 1
	add	r1 r13 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_22905
	addi	r4 r0 1
	jump	L_cont_22892
L_else_22905 : 
	addi	r4 r0 0
	jump	L_cont_22892
L_else_22903 : 
	addi	r4 r0 0
	jump	L_cont_22892
L_else_22901 : 
	addi	r4 r0 0
	jump	L_cont_22892
L_else_22894 : 
	addi	r4 r0 0
L_cont_22892 : 
	bne	r4 r0 L_else_22896
	add	r1 r13 r14
	ldi	r5 r1 0
	jump	L_do_without_neighbors_2249
L_else_22896 : 
	ldi	r4 r6 3
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r0 L_else_22899
	jump	L_cont_22897
L_else_22899 : 
	add	r8 r0 r14
	add	r4 r0 r17
	add	r12 r0 r13
	add	r5 r0 r16
	add	r11 r0 r29
	call	L_calc_diffuse_using_5points_2243
L_cont_22897 : 
	addi	r4 r29 1
	add	r31 r0 r4
	jump	L_try_exploit_neighbors_2265
L_else_22891 : 
	return
L_else_22889 : 
	return
L_else_22872 : 
	return
L_else_22870 : 
	return
L_pretrace_diffuse_rays_2278 : 
	addi	r4 r0 4
	bgt	r26 r4 L_else_22914
	ldi	r4 r27 2
	add	r1 r4 r26
	ldi	r4 r1 0
	bgt	r0 r4 L_else_22916
	ldi	r4 r27 3
	add	r1 r4 r26
	ldi	r4 r1 0
	bne	r4 r0 L_else_22919
	jump	L_cont_22917
L_else_22919 : 
	ldi	r4 r27 6
	ldi	r7 r4 0
	fldi	f2 r0 26
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
	call	L_setup_startp_constants_2129
	addi	r22 r0 118
	call	L_iter_trace_diffuse_rays_2227
	ldi	r4 r27 5
	add	r1 r4 r26
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_22917 : 
	addi	r26 r26 1
	addi	r4 r0 4
	bgt	r26 r4 L_else_22921
	ldi	r4 r27 2
	add	r1 r4 r26
	ldi	r4 r1 0
	bgt	r0 r4 L_else_22923
	ldi	r4 r27 3
	add	r1 r4 r26
	ldi	r4 r1 0
	bne	r4 r0 L_else_22926
	jump	L_cont_22924
L_else_22926 : 
	ldi	r4 r27 6
	ldi	r7 r4 0
	fldi	f2 r0 26
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
	call	L_setup_startp_constants_2129
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
	fbgt	f0 f3 L_else_22929
	addi	r4 r0 0
	jump	L_cont_22927
L_else_22929 : 
	addi	r4 r0 1
L_cont_22927 : 
	bne	r4 r0 L_else_22932
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
	jump	L_cont_22930
L_else_22932 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2224
L_cont_22930 : 
	addi	r22 r0 116
	call	L_iter_trace_diffuse_rays_2227
	ldi	r4 r27 5
	add	r1 r4 r26
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_22924 : 
	addi	r4 r26 1
	add	r26 r0 r4
	jump	L_pretrace_diffuse_rays_2278
L_else_22923 : 
	return
L_else_22921 : 
	return
L_else_22916 : 
	return
L_else_22914 : 
	return
L_pretrace_pixels_2281 : 
	bgt	r0 r8 L_else_22935
	fldi	f2 r0 1062
	ldi	r4 r0 1060
	sub	r4 r8 r4
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
	fadd	f2 f3 f2
	fsqrt	f2 f2
	fbne	f2 f0 L_else_22938
	addi	r4 r0 1
	jump	L_cont_22936
L_else_22938 : 
	addi	r4 r0 0
L_cont_22936 : 
	bne	r4 r0 L_else_22941
	fldi	f3 r0 20
	fdiv	f3 f3 f2
	jump	L_cont_22939
L_else_22941 : 
	fldi	f3 r0 20
L_cont_22939 : 
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
	fldi	f18 r0 20
	addi	r27 r0 1069
	add	r1 r31 r8
	ldi	r26 r1 0
	fldi	f17 r0 26
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_trace_ray_2218
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
	add	r1 r31 r8
	ldi	r4 r1 0
	ldi	r4 r4 0
	fldi	f2 r0 1055
	fsti	f2 r4 0
	fldi	f2 r0 1056
	fsti	f2 r4 1
	fldi	f2 r0 1057
	fsti	f2 r4 2
	add	r1 r31 r8
	ldi	r4 r1 0
	ldi	r4 r4 6
	sti	r9 r4 0
	add	r1 r31 r8
	ldi	r27 r1 0
	addi	r26 r0 0
	ldi	r4 r27 2
	add	r1 r4 r26
	ldi	r4 r1 0
	bgt	r0 r4 L_else_22944
	ldi	r4 r27 3
	add	r1 r4 r26
	ldi	r4 r1 0
	bne	r4 r0 L_else_22950
	jump	L_cont_22948
L_else_22950 : 
	ldi	r4 r27 6
	ldi	r7 r4 0
	fldi	f2 r0 26
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
	sti	r8 r2 0
	sti	r9 r2 1
	add	r9 r0 r24
	addi	r2 r2 2
	call	L_setup_startp_constants_2129
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
	fbgt	f0 f3 L_else_22953
	addi	r4 r0 0
	jump	L_cont_22951
L_else_22953 : 
	addi	r4 r0 1
L_cont_22951 : 
	bne	r4 r0 L_else_22956
	add	r1 r25 r5
	ldi	r21 r1 0
	fldi	f2 r0 49
	fdiv	f17 f3 f2
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_trace_diffuse_ray_2224
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
	jump	L_cont_22954
L_else_22956 : 
	addi	r4 r0 119
	add	r1 r25 r4
	ldi	r21 r1 0
	fldi	f2 r0 50
	fdiv	f17 f3 f2
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_trace_diffuse_ray_2224
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
L_cont_22954 : 
	addi	r22 r0 116
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_iter_trace_diffuse_rays_2227
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
	ldi	r4 r27 5
	add	r1 r4 r26
	ldi	r4 r1 0
	fldi	f2 r0 1052
	fsti	f2 r4 0
	fldi	f2 r0 1053
	fsti	f2 r4 1
	fldi	f2 r0 1054
	fsti	f2 r4 2
L_cont_22948 : 
	addi	r26 r0 1
	sti	r9 r2 0
	sti	r8 r2 1
	addi	r2 r2 2
	call	L_pretrace_diffuse_rays_2278
	addi	r2 r2 -2
	ldi	r9 r2 0
	ldi	r8 r2 1
	jump	L_cont_22942
L_else_22944 : 
L_cont_22942 : 
	addi	r6 r8 -1
	addi	r4 r9 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_22947
	addi	r4 r4 -5
	jump	L_cont_22945
L_else_22947 : 
	add	r4 r0 r4
L_cont_22945 : 
	add	r8 r0 r6
	add	r9 r0 r4
	jump	L_pretrace_pixels_2281
L_else_22935 : 
	return
L_scan_pixel_2292 : 
	ldi	r4 r0 1058
	bgt	r4 r6 L_else_22959
	return
L_else_22959 : 
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
	bgt	r4 r5 L_else_22962
	addi	r4 r0 0
	jump	L_cont_22960
L_else_22962 : 
	bgt	r7 r0 L_else_23002
	addi	r4 r0 0
	jump	L_cont_22960
L_else_23002 : 
	ldi	r5 r0 1058
	addi	r4 r6 1
	bgt	r5 r4 L_else_23004
	addi	r4 r0 0
	jump	L_cont_22960
L_else_23004 : 
	bgt	r6 r0 L_else_23006
	addi	r4 r0 0
	jump	L_cont_22960
L_else_23006 : 
	addi	r4 r0 1
L_cont_22960 : 
	bne	r4 r0 L_else_22965
	add	r1 r10 r6
	ldi	r31 r1 0
	addi	r28 r0 0
	ldi	r4 r31 2
	add	r1 r4 r28
	ldi	r4 r1 0
	bgt	r0 r4 L_else_22981
	ldi	r4 r31 3
	add	r1 r4 r28
	ldi	r4 r1 0
	bne	r4 r0 L_else_22984
	jump	L_cont_22982
L_else_22984 : 
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r7 r0 r31
	addi	r2 r2 5
	call	L_calc_diffuse_using_1point_2240
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
L_cont_22982 : 
	addi	r29 r0 1
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r5 r0 r31
	addi	r2 r2 5
	call	L_do_without_neighbors_2249
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont_22963
L_else_22981 : 
	jump	L_cont_22963
L_else_22965 : 
	addi	r29 r0 0
	add	r1 r10 r6
	ldi	r11 r1 0
	ldi	r4 r11 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bgt	r0 r4 L_else_22986
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
	bne	r4 r5 L_else_22989
	add	r1 r8 r6
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_22996
	addi	r4 r6 -1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_22998
	addi	r4 r6 1
	add	r1 r10 r4
	ldi	r4 r1 0
	ldi	r4 r4 2
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r5 L_else_23000
	addi	r4 r0 1
	jump	L_cont_22987
L_else_23000 : 
	addi	r4 r0 0
	jump	L_cont_22987
L_else_22998 : 
	addi	r4 r0 0
	jump	L_cont_22987
L_else_22996 : 
	addi	r4 r0 0
	jump	L_cont_22987
L_else_22989 : 
	addi	r4 r0 0
L_cont_22987 : 
	bne	r4 r0 L_else_22991
	add	r1 r10 r6
	ldi	r5 r1 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r8 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2249
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont_22963
L_else_22991 : 
	ldi	r4 r11 3
	add	r1 r4 r29
	ldi	r4 r1 0
	bne	r4 r0 L_else_22994
	jump	L_cont_22992
L_else_22994 : 
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
	call	L_calc_diffuse_using_5points_2243
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r8 r2 4
L_cont_22992 : 
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
	call	L_try_exploit_neighbors_2265
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r8 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont_22963
L_else_22986 : 
L_cont_22963 : 
	fldi	f2 r0 1055
	call	min_caml_print_float
	fldi	f2 r0 1056
	call	min_caml_print_float
	fldi	f2 r0 1057
	call	min_caml_print_float
	addi	r6 r6 1
	ldi	r4 r0 1058
	bgt	r4 r6 L_else_22967
	return
L_else_22967 : 
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
	bgt	r4 r5 L_else_22970
	addi	r4 r0 0
	jump	L_cont_22968
L_else_22970 : 
	bgt	r7 r0 L_else_22975
	addi	r4 r0 0
	jump	L_cont_22968
L_else_22975 : 
	ldi	r4 r0 1058
	addi	r5 r6 1
	bgt	r4 r5 L_else_22977
	addi	r4 r0 0
	jump	L_cont_22968
L_else_22977 : 
	bgt	r6 r0 L_else_22979
	addi	r4 r0 0
	jump	L_cont_22968
L_else_22979 : 
	addi	r4 r0 1
L_cont_22968 : 
	bne	r4 r0 L_else_22973
	add	r1 r10 r6
	ldi	r5 r1 0
	addi	r29 r0 0
	sti	r7 r2 0
	sti	r9 r2 1
	sti	r10 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2249
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
	jump	L_cont_22971
L_else_22973 : 
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
	call	L_try_exploit_neighbors_2265
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r9 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
L_cont_22971 : 
	fldi	f2 r0 1055
	call	min_caml_print_float
	fldi	f2 r0 1056
	call	min_caml_print_float
	fldi	f2 r0 1057
	call	min_caml_print_float
	addi	r4 r6 1
	add	r6 r0 r4
	jump	L_scan_pixel_2292
L_scan_line_2298 : 
	ldi	r4 r0 1059
	bgt	r4 r9 L_else_23009
	return
L_else_23009 : 
	ldi	r4 r0 1059
	addi	r4 r4 -1
	bgt	r4 r9 L_else_23012
	jump	L_cont_23010
L_else_23012 : 
	addi	r5 r9 1
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
	addi	r8 r4 -1
	sti	r9 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r7 r2 4
	add	r31 r0 r11
	add	r9 r0 r7
	addi	r2 r2 5
	call	L_pretrace_pixels_2281
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r7 r2 4
L_cont_23010 : 
	addi	r14 r0 0
	ldi	r4 r0 1058
	bgt	r4 r0 L_else_23015
	jump	L_cont_23013
L_else_23015 : 
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
	addi	r5 r9 1
	bgt	r4 r5 L_else_23029
	addi	r4 r0 0
	jump	L_cont_23027
L_else_23029 : 
	bgt	r9 r0 L_else_23034
	addi	r4 r0 0
	jump	L_cont_23027
L_else_23034 : 
	ldi	r4 r0 1058
	addi	r5 r0 1
	bgt	r4 r5 L_else_23036
	addi	r4 r0 0
	jump	L_cont_23027
L_else_23036 : 
	addi	r4 r0 0
L_cont_23027 : 
	bne	r4 r0 L_else_23032
	add	r1 r12 r14
	ldi	r5 r1 0
	addi	r29 r0 0
	sti	r9 r2 0
	sti	r10 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	addi	r2 r2 5
	call	L_do_without_neighbors_2249
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r10 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
	jump	L_cont_23030
L_else_23032 : 
	addi	r31 r0 0
	sti	r9 r2 0
	sti	r10 r2 1
	sti	r12 r2 2
	sti	r11 r2 3
	sti	r7 r2 4
	add	r15 r0 r9
	add	r17 r0 r10
	add	r13 r0 r12
	add	r16 r0 r11
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2265
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r10 r2 1
	ldi	r12 r2 2
	ldi	r11 r2 3
	ldi	r7 r2 4
L_cont_23030 : 
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
	sti	r9 r2 4
	add	r7 r0 r9
	add	r8 r0 r11
	add	r9 r0 r10
	add	r10 r0 r12
	addi	r2 r2 5
	call	L_scan_pixel_2292
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	ldi	r12 r2 3
	ldi	r9 r2 4
L_cont_23013 : 
	addi	r9 r9 1
	addi	r5 r7 2
	addi	r4 r0 5
	bgt	r4 r5 L_else_23018
	addi	r7 r5 -5
	jump	L_cont_23016
L_else_23018 : 
	add	r7 r0 r5
L_cont_23016 : 
	ldi	r4 r0 1059
	bgt	r4 r9 L_else_23020
	return
L_else_23020 : 
	ldi	r4 r0 1059
	addi	r4 r4 -1
	bgt	r4 r9 L_else_23023
	jump	L_cont_23021
L_else_23023 : 
	addi	r5 r9 1
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
	addi	r8 r4 -1
	sti	r9 r2 0
	sti	r12 r2 1
	sti	r11 r2 2
	sti	r10 r2 3
	sti	r7 r2 4
	add	r31 r0 r10
	add	r9 r0 r7
	addi	r2 r2 5
	call	L_pretrace_pixels_2281
	addi	r2 r2 -5
	ldi	r9 r2 0
	ldi	r12 r2 1
	ldi	r11 r2 2
	ldi	r10 r2 3
	ldi	r7 r2 4
L_cont_23021 : 
	addi	r6 r0 0
	sti	r7 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r12 r2 3
	sti	r9 r2 4
	add	r7 r0 r9
	add	r8 r0 r10
	add	r9 r0 r12
	add	r10 r0 r11
	addi	r2 r2 5
	call	L_scan_pixel_2292
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r12 r2 3
	ldi	r9 r2 4
	addi	r4 r9 1
	addi	r6 r7 2
	addi	r5 r0 5
	bgt	r5 r6 L_else_23026
	addi	r5 r6 -5
	jump	L_cont_23024
L_else_23026 : 
	add	r5 r0 r6
L_cont_23024 : 
	add	r9 r0 r4
	add	r7 r0 r5
	add	r1 r0 r10
	add	r10 r0 r11
	add	r11 r0 r12
	add	r12 r0 r1
	jump	L_scan_line_2298
L_create_pixel_2306 : 
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r13 r0 r4
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
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r8 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
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
L_init_line_elements_2308 : 
	bgt	r0 r13 L_else_23040
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r15 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r15 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r15 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r15 3
	addi	r4 r0 3
	fldi	f2 r0 26
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
	fldi	f2 r0 26
	call	min_caml_create_float_array
	addi	r5 r0 5
	add	r1 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	call	min_caml_create_array
	add	r11 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r11 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r11 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r11 3
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r11 4
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
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r8 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
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
	bgt	r0 r15 L_else_23042
	call	L_create_pixel_2306
	add	r1 r16 r15
	sti	r4 r1 0
	addi	r4 r15 -1
	add	r13 r0 r4
	jump	L_init_line_elements_2308
L_else_23042 : 
	add	r4 r0 r16
	return
L_else_23040 : 
	add	r4 r0 r16
	return
L_create_pixelline_2311 : 
	ldi	r13 r0 1058
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r14 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
	call	min_caml_create_array
	add	r15 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r15 1
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r15 2
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	sti	r4 r15 3
	addi	r4 r0 3
	fldi	f2 r0 26
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
	addi	r4 r0 1
	addi	r5 r0 0
	call	min_caml_create_array
	add	r8 r0 r4
	addi	r4 r0 3
	fldi	f2 r0 26
	call	min_caml_create_float_array
	add	r5 r0 r4
	addi	r4 r0 5
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
	bgt	r0 r15 L_else_23045
	call	L_create_pixel_2306
	add	r1 r16 r15
	sti	r4 r1 0
	addi	r13 r15 -1
	jump	L_init_line_elements_2308
L_else_23045 : 
	add	r4 r0 r16
	return
L_tan_2313 : 
	fldi	f3 r0 0
	fldi	f5 r0 1
	fbgt	f11 f5 L_else_23049
	fldi	f2 r0 2
	fbgt	f2 f11 L_else_23066
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f11 f0 L_else_23068
	fldi	f2 r0 6
	fbgt	f2 f11 L_else_23070
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
	jump	L_cont_23047
L_else_23070 : 
	fldi	f2 r0 13
	fbgt	f2 f11 L_else_23072
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
	jump	L_cont_23047
L_else_23072 : 
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
	jump	L_cont_23047
L_else_23068 : 
	fbgt	f11 f4 L_else_23074
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
	jump	L_cont_23047
L_else_23074 : 
	fbgt	f11 f2 L_else_23076
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
	jump	L_cont_23047
L_else_23076 : 
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
	jump	L_cont_23047
L_else_23066 : 
	fadd	f9 f11 f3
	call	L_sin_1870
	fadd	f10 f0 f2
	jump	L_cont_23047
L_else_23049 : 
	fsub	f9 f11 f3
	call	L_sin_1870
	fadd	f10 f0 f2
L_cont_23047 : 
	fldi	f2 r0 0
	fldi	f5 r0 1
	fbgt	f11 f5 L_else_23052
	fldi	f3 r0 2
	fbgt	f3 f11 L_else_23054
	fldi	f4 r0 3
	fldi	f3 r0 4
	fldi	f2 r0 5
	fbgt	f11 f0 L_else_23056
	fldi	f2 r0 6
	fbgt	f2 f11 L_else_23058
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
	jump	L_cont_23050
L_else_23058 : 
	fldi	f2 r0 13
	fbgt	f2 f11 L_else_23060
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
	jump	L_cont_23050
L_else_23060 : 
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
	jump	L_cont_23050
L_else_23056 : 
	fbgt	f11 f4 L_else_23062
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
	jump	L_cont_23050
L_else_23062 : 
	fbgt	f11 f2 L_else_23064
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
	jump	L_cont_23050
L_else_23064 : 
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
	jump	L_cont_23050
L_else_23054 : 
	fadd	f6 f11 f2
	call	L_cos_1872
	jump	L_cont_23050
L_else_23052 : 
	fsub	f6 f11 f2
	call	L_cos_1872
L_cont_23050 : 
	fdiv	f2 f10 f2
	return
L_calc_dirvec_2318 : 
	addi	r7 r0 5
	bgt	r7 r4 L_else_23079
	fmul	f4 f3 f3
	fmul	f2 f5 f5
	fadd	f4 f4 f2
	fldi	f2 r0 20
	fadd	f2 f4 f2
	fsqrt	f2 f2
	fdiv	f7 f3 f2
	fdiv	f5 f5 f2
	fldi	f3 r0 20
	fdiv	f4 f3 f2
	addi	r4 r0 1076
	add	r1 r4 r5
	ldi	r5 r1 0
	add	r1 r5 r6
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsti	f7 r4 0
	fsti	f5 r4 1
	fsti	f4 r4 2
	addi	r4 r6 40
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f5
	fsti	f7 r4 0
	fsti	f4 r4 1
	fsti	f2 r4 2
	addi	r4 r6 80
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f7
	fsub	f3 f0 f5
	fsti	f4 r4 0
	fsti	f2 r4 1
	fsti	f3 r4 2
	addi	r4 r6 1
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f6 f0 f7
	fsub	f2 f0 f5
	fsub	f3 f0 f4
	fsti	f6 r4 0
	fsti	f2 r4 1
	fsti	f3 r4 2
	addi	r4 r6 41
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f7
	fsub	f3 f0 f4
	fsti	f2 r4 0
	fsti	f3 r4 1
	fsti	f5 r4 2
	addi	r4 r6 81
	add	r1 r5 r4
	ldi	r4 r1 0
	ldi	r4 r4 0
	fsub	f2 f0 f4
	fsti	f2 r4 0
	fsti	f7 r4 1
	fsti	f5 r4 2
	return
L_else_23079 : 
	fmul	f2 f5 f5
	fldi	f3 r0 48
	fadd	f2 f2 f3
	fsqrt	f15 f2
	fldi	f2 r0 20
	fdiv	f13 f2 f15
	call	L_atan_1874
	fmul	f11 f2 f17
	call	L_tan_2313
	fmul	f16 f2 f15
	addi	r4 r4 1
	fmul	f3 f16 f16
	fldi	f2 r0 48
	fadd	f2 f3 f2
	fsqrt	f15 f2
	fldi	f2 r0 20
	fdiv	f13 f2 f15
	call	L_atan_1874
	fmul	f11 f2 f18
	call	L_tan_2313
	fmul	f2 f2 f15
	fadd	f3 f0 f16
	fadd	f5 f0 f2
	jump	L_calc_dirvec_2318
L_calc_dirvecs_2326 : 
	bgt	r0 r8 L_else_23082
	foi	f2 r8
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 52
	fsub	f17 f2 f3
	addi	r4 r0 0
	fldi	f3 r0 26
	fldi	f5 r0 26
	add	r5 r0 r11
	add	r6 r0 r10
	fadd	f18 f0 f19
	call	L_calc_dirvec_2318
	foi	f3 r8
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 48
	fadd	f17 f3 f2
	addi	r4 r0 0
	fldi	f3 r0 26
	fldi	f5 r0 26
	addi	r6 r10 2
	add	r5 r0 r11
	fadd	f18 f0 f19
	call	L_calc_dirvec_2318
	addi	r9 r8 -1
	addi	r4 r11 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_23085
	addi	r8 r4 -5
	jump	L_cont_23083
L_else_23085 : 
	add	r8 r0 r4
L_cont_23083 : 
	bgt	r0 r9 L_else_23087
	foi	f3 r9
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 52
	fsub	f17 f3 f2
	addi	r4 r0 0
	fldi	f3 r0 26
	fldi	f5 r0 26
	add	r5 r0 r8
	add	r6 r0 r10
	fadd	f18 f0 f19
	call	L_calc_dirvec_2318
	foi	f3 r9
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 48
	fadd	f17 f3 f2
	addi	r4 r0 0
	fldi	f3 r0 26
	fldi	f5 r0 26
	addi	r6 r10 2
	add	r5 r0 r8
	fadd	f18 f0 f19
	call	L_calc_dirvec_2318
	addi	r6 r9 -1
	addi	r4 r8 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_23090
	addi	r4 r4 -5
	jump	L_cont_23088
L_else_23090 : 
	add	r4 r0 r4
L_cont_23088 : 
	add	r8 r0 r6
	add	r11 r0 r4
	jump	L_calc_dirvecs_2326
L_else_23087 : 
	return
L_else_23082 : 
	return
L_calc_dirvec_rows_2331 : 
	bgt	r0 r12 L_else_23093
	foi	f2 r12
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 52
	fsub	f19 f2 f3
	addi	r8 r0 4
	foi	f2 r8
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 52
	fsub	f17 f2 f3
	addi	r4 r0 0
	fldi	f3 r0 26
	fldi	f5 r0 26
	add	r5 r0 r15
	add	r6 r0 r13
	fadd	f18 f0 f19
	call	L_calc_dirvec_2318
	foi	f3 r8
	fldi	f2 r0 51
	fmul	f3 f3 f2
	fldi	f2 r0 48
	fadd	f17 f3 f2
	addi	r4 r0 0
	fldi	f3 r0 26
	fldi	f5 r0 26
	addi	r6 r13 2
	add	r5 r0 r15
	fadd	f18 f0 f19
	call	L_calc_dirvec_2318
	addi	r8 r0 3
	addi	r4 r15 1
	addi	r5 r0 5
	bgt	r5 r4 L_else_23096
	addi	r11 r4 -5
	jump	L_cont_23094
L_else_23096 : 
	add	r11 r0 r4
L_cont_23094 : 
	add	r10 r0 r13
	call	L_calc_dirvecs_2326
	addi	r14 r12 -1
	addi	r5 r15 2
	addi	r4 r0 5
	bgt	r4 r5 L_else_23099
	addi	r12 r5 -5
	jump	L_cont_23097
L_else_23099 : 
	add	r12 r0 r5
L_cont_23097 : 
	addi	r13 r13 4
	bgt	r0 r14 L_else_23101
	foi	f2 r14
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 52
	fsub	f19 f2 f3
	addi	r8 r0 4
	add	r11 r0 r12
	add	r10 r0 r13
	call	L_calc_dirvecs_2326
	addi	r6 r14 -1
	addi	r4 r12 2
	addi	r5 r0 5
	bgt	r5 r4 L_else_23104
	addi	r5 r4 -5
	jump	L_cont_23102
L_else_23104 : 
	add	r5 r0 r4
L_cont_23102 : 
	addi	r4 r13 4
	add	r12 r0 r6
	add	r15 r0 r5
	add	r13 r0 r4
	jump	L_calc_dirvec_rows_2331
L_else_23101 : 
	return
L_else_23093 : 
	return
L_create_dirvec_elements_2337 : 
	bgt	r0 r9 L_else_23107
	addi	r4 r0 3
	fldi	f2 r0 26
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
	bgt	r0 r8 L_else_23109
	addi	r4 r0 3
	fldi	f2 r0 26
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
	bgt	r0 r8 L_else_23111
	addi	r4 r0 3
	fldi	f2 r0 26
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
	bgt	r0 r8 L_else_23113
	addi	r4 r0 3
	fldi	f2 r0 26
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
	jump	L_create_dirvec_elements_2337
L_else_23113 : 
	return
L_else_23111 : 
	return
L_else_23109 : 
	return
L_else_23107 : 
	return
L_create_dirvecs_2340 : 
	bgt	r0 r11 L_else_23116
	addi	r10 r0 1076
	addi	r9 r0 120
	addi	r4 r0 3
	fldi	f2 r0 26
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
	fldi	f2 r0 26
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
	fldi	f2 r0 26
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
	fldi	f2 r0 26
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
	call	L_create_dirvec_elements_2337
	addi	r11 r11 -1
	bgt	r0 r11 L_else_23118
	addi	r9 r0 1076
	addi	r10 r0 120
	addi	r4 r0 3
	fldi	f2 r0 26
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
	fldi	f2 r0 26
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
	fldi	f2 r0 26
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
	call	L_create_dirvec_elements_2337
	addi	r4 r11 -1
	add	r11 r0 r4
	jump	L_create_dirvecs_2340
L_else_23118 : 
	return
L_else_23116 : 
	return
L_init_dirvec_constants_2342 : 
	bgt	r0 r12 L_else_23121
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2124
	addi	r12 r12 -1
	bgt	r0 r12 L_else_23123
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23126
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23141
	call	L_setup_rect_table_2115
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23139
L_else_23141 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23143
	call	L_setup_surface_table_2118
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23139
L_else_23143 : 
	call	L_setup_second_table_2121
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23139 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2124
	jump	L_cont_23124
L_else_23126 : 
L_cont_23124 : 
	addi	r12 r12 -1
	bgt	r0 r12 L_else_23128
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2124
	addi	r12 r12 -1
	bgt	r0 r12 L_else_23130
	add	r1 r13 r12
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23133
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23136
	call	L_setup_rect_table_2115
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23134
L_else_23136 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23138
	call	L_setup_surface_table_2118
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23134
L_else_23138 : 
	call	L_setup_second_table_2121
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23134 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2124
	jump	L_cont_23131
L_else_23133 : 
L_cont_23131 : 
	addi	r4 r12 -1
	add	r12 r0 r4
	jump	L_init_dirvec_constants_2342
L_else_23130 : 
	return
L_else_23128 : 
	return
L_else_23123 : 
	return
L_else_23121 : 
	return
L_init_vecset_constants_2345 : 
	bgt	r0 r14 L_else_23146
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r4 r0 119
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23149
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23182
	call	L_setup_rect_table_2115
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23180
L_else_23182 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23184
	call	L_setup_surface_table_2118
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23180
L_else_23184 : 
	call	L_setup_second_table_2121
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23180 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2124
	jump	L_cont_23147
L_else_23149 : 
L_cont_23147 : 
	addi	r4 r0 118
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2124
	addi	r4 r0 117
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23152
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23177
	call	L_setup_rect_table_2115
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23175
L_else_23177 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23179
	call	L_setup_surface_table_2118
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23175
L_else_23179 : 
	call	L_setup_second_table_2121
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23175 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2124
	jump	L_cont_23150
L_else_23152 : 
L_cont_23150 : 
	addi	r12 r0 116
	call	L_init_dirvec_constants_2342
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23154
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r4 r0 119
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r8 r4 -1
	call	L_iter_setup_dirvec_constants_2124
	addi	r4 r0 118
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23157
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23172
	call	L_setup_rect_table_2115
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23170
L_else_23172 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23174
	call	L_setup_surface_table_2118
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23170
L_else_23174 : 
	call	L_setup_second_table_2121
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23170 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2124
	jump	L_cont_23155
L_else_23157 : 
L_cont_23155 : 
	addi	r12 r0 117
	call	L_init_dirvec_constants_2342
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23159
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r4 r0 119
	add	r1 r13 r4
	ldi	r11 r1 0
	ldi	r4 r0 1072
	addi	r10 r4 -1
	bgt	r0 r10 L_else_23162
	addi	r4 r0 1970
	add	r1 r4 r10
	ldi	r6 r1 0
	ldi	r9 r11 1
	ldi	r8 r11 0
	ldi	r5 r6 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23167
	call	L_setup_rect_table_2115
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23165
L_else_23167 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23169
	call	L_setup_surface_table_2118
	add	r1 r9 r10
	sti	r4 r1 0
	jump	L_cont_23165
L_else_23169 : 
	call	L_setup_second_table_2121
	add	r1 r9 r10
	sti	r4 r1 0
L_cont_23165 : 
	addi	r8 r10 -1
	call	L_iter_setup_dirvec_constants_2124
	jump	L_cont_23160
L_else_23162 : 
L_cont_23160 : 
	addi	r12 r0 118
	call	L_init_dirvec_constants_2342
	addi	r14 r14 -1
	bgt	r0 r14 L_else_23164
	addi	r4 r0 1076
	add	r1 r4 r14
	ldi	r13 r1 0
	addi	r12 r0 119
	call	L_init_dirvec_constants_2342
	addi	r4 r14 -1
	add	r14 r0 r4
	jump	L_init_vecset_constants_2345
L_else_23164 : 
	return
L_else_23159 : 
	return
L_else_23154 : 
	return
L_else_23146 : 
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
	fldi	f2 r0 53
	foi	f3 r5
	fdiv	f2 f2 f3
	fsti	f2 r0 1062
	call	L_create_pixelline_2311
	add	r10 r0 r4
	sti	r10 r2 0
	addi	r2 r2 1
	call	L_create_pixelline_2311
	addi	r2 r2 -1
	add	r11 r0 r4
	ldi	r10 r2 0
	sti	r11 r2 0
	sti	r10 r2 1
	addi	r2 r2 2
	call	L_create_pixelline_2311
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
	fldi	f3 r0 27
	fmul	f10 f2 f3
	fadd	f6 f0 f10
	call	L_cos_1872
	fadd	f13 f0 f2
	fadd	f9 f0 f10
	call	L_sin_1870
	fadd	f12 f0 f2
	call	min_caml_read_float
	fadd	f3 f0 f2
	fldi	f2 r0 27
	fmul	f11 f3 f2
	fadd	f6 f0 f11
	call	L_cos_1872
	fadd	f10 f0 f2
	fadd	f9 f0 f11
	call	L_sin_1870
	fadd	f4 f0 f2
	fmul	f2 f13 f4
	fldi	f3 r0 54
	fmul	f2 f2 f3
	fsti	f2 r0 1027
	fldi	f2 r0 55
	fmul	f2 f12 f2
	fsti	f2 r0 1028
	fmul	f3 f13 f10
	fldi	f2 r0 54
	fmul	f2 f3 f2
	fsti	f2 r0 1029
	fsti	f10 r0 1030
	fldi	f2 r0 26
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
	fldi	f3 r0 27
	fmul	f11 f2 f3
	fadd	f9 f0 f11
	call	L_sin_1870
	fsub	f2 f0 f2
	fsti	f2 r0 1040
	call	min_caml_read_float
	fldi	f3 r0 27
	fmul	f10 f2 f3
	fadd	f6 f0 f11
	call	L_cos_1872
	fadd	f11 f0 f2
	fadd	f9 f0 f10
	call	L_sin_1870
	fmul	f2 f11 f2
	fsti	f2 r0 1039
	fadd	f6 f0 f10
	call	L_cos_1872
	fmul	f2 f11 f2
	fsti	f2 r0 1041
	call	min_caml_read_float
	fsti	f2 r0 1081
	addi	r13 r0 0
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_read_object_2019
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
	call	L_read_net_item_2023
	addi	r2 r2 -3
	add	r7 r0 r4
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	ldi	r5 r7 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23187
	jump	L_cont_23185
L_else_23187 : 
	addi	r4 r0 1083
	add	r1 r4 r14
	sti	r7 r1 0
	addi	r19 r0 1
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_read_and_network_2027
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r6 r2 2
L_cont_23185 : 
	addi	r22 r0 0
	addi	r12 r0 0
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_read_net_item_2023
	addi	r2 r2 -3
	add	r21 r0 r4
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r6 r2 2
	ldi	r5 r21 0
	addi	r4 r0 -1
	bne	r5 r4 L_else_23190
	addi	r4 r0 1
	sti	r6 r2 0
	add	r5 r0 r21
	addi	r2 r2 1
	call	min_caml_create_array
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23188
L_else_23190 : 
	addi	r18 r0 1
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_read_or_network_2025
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r11 r2 2
	add	r1 r4 r22
	sti	r21 r1 0
	add	r4 r0 r4
L_cont_23188 : 
	sti	r4 r0 1183
	addi	r4 r0 80
	call	min_caml_print_char
	addi	r4 r0 54
	call	min_caml_print_char
	addi	r4 r0 10
	call	min_caml_print_char
	ldi	r8 r0 1058
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23193
	addi	r4 r8 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23315
	addi	r5 r4 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23317
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23191
L_else_23317 : 
	addi	r5 r0 2
	jump	L_cont_23191
L_else_23315 : 
	addi	r5 r0 1
	jump	L_cont_23191
L_else_23193 : 
	addi	r5 r0 0
L_cont_23191 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23196
	addi	r4 r5 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23311
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23313
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23194
L_else_23313 : 
	addi	r4 r0 2
	jump	L_cont_23194
L_else_23311 : 
	addi	r4 r0 1
	jump	L_cont_23194
L_else_23196 : 
	addi	r4 r0 0
L_cont_23194 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23199
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23307
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23309
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23197
L_else_23309 : 
	addi	r5 r0 2
	jump	L_cont_23197
L_else_23307 : 
	addi	r5 r0 1
	jump	L_cont_23197
L_else_23199 : 
	addi	r5 r0 0
L_cont_23197 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23202
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23303
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23305
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23200
L_else_23305 : 
	addi	r5 r0 2
	jump	L_cont_23200
L_else_23303 : 
	addi	r5 r0 1
	jump	L_cont_23200
L_else_23202 : 
	addi	r5 r0 0
L_cont_23200 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23205
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23299
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23301
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23203
L_else_23301 : 
	addi	r4 r0 2
	jump	L_cont_23203
L_else_23299 : 
	addi	r4 r0 1
	jump	L_cont_23203
L_else_23205 : 
	addi	r4 r0 0
L_cont_23203 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23208
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23295
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23297
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23206
L_else_23297 : 
	addi	r5 r0 2
	jump	L_cont_23206
L_else_23295 : 
	addi	r5 r0 1
	jump	L_cont_23206
L_else_23208 : 
	addi	r5 r0 0
L_cont_23206 : 
	addi	r4 r0 10
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 32
	call	min_caml_print_char
	ldi	r8 r0 1059
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23211
	addi	r5 r8 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23291
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23293
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23209
L_else_23293 : 
	addi	r5 r0 2
	jump	L_cont_23209
L_else_23291 : 
	addi	r5 r0 1
	jump	L_cont_23209
L_else_23211 : 
	addi	r5 r0 0
L_cont_23209 : 
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23214
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23287
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23289
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23212
L_else_23289 : 
	addi	r4 r0 2
	jump	L_cont_23212
L_else_23287 : 
	addi	r4 r0 1
	jump	L_cont_23212
L_else_23214 : 
	addi	r4 r0 0
L_cont_23212 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23217
	addi	r4 r8 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23283
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23285
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23215
L_else_23285 : 
	addi	r4 r0 2
	jump	L_cont_23215
L_else_23283 : 
	addi	r4 r0 1
	jump	L_cont_23215
L_else_23217 : 
	addi	r4 r0 0
L_cont_23215 : 
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23220
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23279
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23281
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23218
L_else_23281 : 
	addi	r4 r0 2
	jump	L_cont_23218
L_else_23279 : 
	addi	r4 r0 1
	jump	L_cont_23218
L_else_23220 : 
	addi	r4 r0 0
L_cont_23218 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	sub	r5 r8 r4
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23223
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23275
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23277
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23221
L_else_23277 : 
	addi	r4 r0 2
	jump	L_cont_23221
L_else_23275 : 
	addi	r4 r0 1
	jump	L_cont_23221
L_else_23223 : 
	addi	r4 r0 0
L_cont_23221 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r8 -10
	bgt	r0 r4 L_else_23226
	addi	r4 r8 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23271
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23273
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23224
L_else_23273 : 
	addi	r4 r0 2
	jump	L_cont_23224
L_else_23271 : 
	addi	r4 r0 1
	jump	L_cont_23224
L_else_23226 : 
	addi	r4 r0 0
L_cont_23224 : 
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
	call	L_sdiv10_1876
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23229
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23267
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23269
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23227
L_else_23269 : 
	addi	r4 r0 2
	jump	L_cont_23227
L_else_23267 : 
	addi	r4 r0 1
	jump	L_cont_23227
L_else_23229 : 
	addi	r4 r0 0
L_cont_23227 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 225
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23232
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23263
	addi	r5 r5 -10
	addi	r4 r5 -10
	bgt	r0 r4 L_else_23265
	addi	r4 r5 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	add	r5 r0 r4
	ldi	r6 r2 0
	jump	L_cont_23230
L_else_23265 : 
	addi	r5 r0 2
	jump	L_cont_23230
L_else_23263 : 
	addi	r5 r0 1
	jump	L_cont_23230
L_else_23232 : 
	addi	r5 r0 0
L_cont_23230 : 
	addi	r4 r0 100
	mul	r4 r5 r4
	sub	r4 r8 r4
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23235
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23259
	addi	r4 r4 -10
	addi	r5 r4 -10
	bgt	r0 r5 L_else_23261
	addi	r4 r4 -10
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_23233
L_else_23261 : 
	addi	r4 r0 2
	jump	L_cont_23233
L_else_23259 : 
	addi	r4 r0 1
	jump	L_cont_23233
L_else_23235 : 
	addi	r4 r0 0
L_cont_23233 : 
	addi	r4 r4 48
	call	min_caml_print_char
	addi	r4 r0 225
	addi	r5 r0 3
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_sdiv10_1876
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
	fldi	f2 r0 26
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
	call	L_create_dirvec_elements_2337
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r10 r2 1
	addi	r4 r0 3
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	add	r11 r0 r4
	addi	r2 r2 3
	call	L_create_dirvecs_2340
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	addi	r5 r0 9
	addi	r7 r0 0
	addi	r4 r0 0
	foi	f2 r5
	fldi	f3 r0 51
	fmul	f2 f2 f3
	fldi	f3 r0 52
	fsub	f19 f2 f3
	addi	r8 r0 4
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	add	r11 r0 r7
	add	r10 r0 r4
	addi	r2 r2 3
	call	L_calc_dirvecs_2326
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
	call	L_calc_dirvec_rows_2331
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
	call	L_init_dirvec_constants_2342
	addi	r2 r2 -3
	ldi	r10 r2 0
	ldi	r6 r2 1
	ldi	r11 r2 2
	addi	r14 r0 3
	sti	r10 r2 0
	sti	r6 r2 1
	sti	r11 r2 2
	addi	r2 r2 3
	call	L_init_vecset_constants_2345
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
	bgt	r0 r12 L_else_23238
	addi	r4 r0 1970
	add	r1 r4 r12
	ldi	r7 r1 0
	ldi	r9 r13 1
	ldi	r8 r13 0
	ldi	r5 r7 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23255
	sti	r6 r2 0
	add	r6 r0 r7
	addi	r2 r2 1
	call	L_setup_rect_table_2115
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r9 r12
	sti	r4 r1 0
	jump	L_cont_23253
L_else_23255 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23257
	sti	r6 r2 0
	add	r6 r0 r7
	addi	r2 r2 1
	call	L_setup_surface_table_2118
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r9 r12
	sti	r4 r1 0
	jump	L_cont_23253
L_else_23257 : 
	sti	r6 r2 0
	add	r6 r0 r7
	addi	r2 r2 1
	call	L_setup_second_table_2121
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r9 r12
	sti	r4 r1 0
L_cont_23253 : 
	addi	r8 r12 -1
	sti	r11 r2 0
	sti	r6 r2 1
	sti	r10 r2 2
	add	r11 r0 r13
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2124
	addi	r2 r2 -3
	ldi	r11 r2 0
	ldi	r6 r2 1
	ldi	r10 r2 2
	jump	L_cont_23236
L_else_23238 : 
L_cont_23236 : 
	ldi	r4 r0 1072
	addi	r7 r4 -1
	bgt	r0 r7 L_else_23241
	addi	r4 r0 1970
	add	r1 r4 r7
	ldi	r8 r1 0
	ldi	r4 r8 2
	addi	r5 r0 2
	bne	r4 r5 L_else_23243
	ldi	r4 r8 7
	fldi	f3 r4 0
	fldi	f2 r0 20
	fbgt	f2 f3 L_else_23246
	addi	r4 r0 0
	jump	L_cont_23244
L_else_23246 : 
	addi	r4 r0 1
L_cont_23244 : 
	bne	r4 r0 L_else_23248
	jump	L_cont_23239
L_else_23248 : 
	ldi	r5 r8 1
	addi	r4 r0 1
	bne	r5 r4 L_else_23250
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
	fldi	f2 r0 26
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
	call	L_iter_setup_dirvec_constants_2124
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
	fldi	f2 r0 26
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
	call	L_iter_setup_dirvec_constants_2124
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
	fldi	f2 r0 26
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
	call	L_iter_setup_dirvec_constants_2124
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
	jump	L_cont_23239
L_else_23250 : 
	addi	r4 r0 2
	bne	r5 r4 L_else_23252
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
	fldi	f3 r0 29
	ldi	r4 r8 4
	fldi	f2 r4 0
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	fldi	f3 r0 1039
	fsub	f4 f2 f3
	fldi	f3 r0 29
	ldi	r4 r8 4
	fldi	f2 r4 1
	fmul	f2 f3 f2
	fmul	f3 f2 f6
	fldi	f2 r0 1040
	fsub	f5 f3 f2
	fldi	f3 r0 29
	ldi	r4 r8 4
	fldi	f2 r4 2
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	fldi	f3 r0 1041
	fsub	f3 f2 f3
	addi	r4 r0 3
	fldi	f2 r0 26
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
	call	L_iter_setup_dirvec_constants_2124
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
	jump	L_cont_23239
L_else_23252 : 
	jump	L_cont_23239
L_else_23243 : 
	jump	L_cont_23239
L_else_23241 : 
L_cont_23239 : 
	addi	r5 r0 0
	addi	r9 r0 0
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
	addi	r8 r4 -1
	sti	r6 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	add	r31 r0 r11
	addi	r2 r2 3
	call	L_pretrace_pixels_2281
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	addi	r9 r0 0
	addi	r7 r0 2
	add	r12 r0 r11
	add	r11 r0 r6
	call	L_scan_line_2298
	return
min_caml_end : 
	call	min_caml_start
