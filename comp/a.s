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
	jump	L_main_22655
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
	bne	r5 r0 L_else_22779
	return
L_else_22779 : 
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
	bne	r5 r0 L_else_22781
	return
L_else_22781 : 
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
L_sin_2493 : 
	fldi	f3 r0 57
	fldi	f4 r0 56
	fbgt	f2 f4 L_else_22783
	fldi	f5 r0 55
	fbgt	f5 f2 L_else_22784
	fldi	f3 r0 54
	fldi	f5 r0 53
	fldi	f6 r0 52
	fldi	f7 r0 51
	fbgt	f2 f7 L_else_22785
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_22786
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_22786 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_22787
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_22787 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_22785 : 
	fbgt	f2 f3 L_else_22788
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_22788 : 
	fbgt	f2 f6 L_else_22789
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	return
L_else_22789 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_22784 : 
	fadd	f2 f2 f3
	fldi	f3 r0 57
	fldi	f4 r0 56
	fbgt	f2 f4 L_else_22790
	fldi	f5 r0 55
	fbgt	f5 f2 L_else_22791
	fldi	f3 r0 54
	fldi	f5 r0 53
	fldi	f6 r0 52
	fldi	f7 r0 51
	fbgt	f2 f7 L_else_22792
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_22793
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_22793 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_22794
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_22794 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_22792 : 
	fbgt	f2 f3 L_else_22795
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_22795 : 
	fbgt	f2 f6 L_else_22796
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	return
L_else_22796 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_22791 : 
	fadd	f2 f2 f3
	jump	L_sin_2493
L_else_22790 : 
	fsub	f2 f2 f3
	jump	L_sin_2493
L_else_22783 : 
	fsub	f2 f2 f3
	fldi	f3 r0 57
	fldi	f4 r0 56
	fbgt	f2 f4 L_else_22797
	fldi	f5 r0 55
	fbgt	f5 f2 L_else_22798
	fldi	f3 r0 54
	fldi	f5 r0 53
	fldi	f6 r0 52
	fldi	f7 r0 51
	fbgt	f2 f7 L_else_22799
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_22800
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_22800 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_22801
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_22801 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_22799 : 
	fbgt	f2 f3 L_else_22802
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_22802 : 
	fbgt	f2 f6 L_else_22803
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	return
L_else_22803 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_22798 : 
	fadd	f2 f2 f3
	jump	L_sin_2493
L_else_22797 : 
	fsub	f2 f2 f3
	jump	L_sin_2493
L_cos_2495 : 
	fldi	f3 r0 57
	fldi	f4 r0 56
	fbgt	f2 f4 L_else_22804
	fldi	f5 r0 55
	fbgt	f5 f2 L_else_22805
	fldi	f3 r0 54
	fldi	f5 r0 53
	fldi	f6 r0 52
	fldi	f7 r0 51
	fbgt	f2 f7 L_else_22806
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_22807
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	return
L_else_22807 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_22808
	fadd	f2 f2 f5
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_else_22808 : 
	fadd	f2 f4 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_22806 : 
	fbgt	f2 f3 L_else_22809
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	return
L_else_22809 : 
	fbgt	f2 f6 L_else_22810
	fsub	f2 f2 f5
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
	return
L_else_22810 : 
	fsub	f2 f4 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	return
L_else_22805 : 
	fadd	f2 f2 f3
	jump	L_cos_2495
L_else_22804 : 
	fsub	f2 f2 f3
	jump	L_cos_2495
L_atan_2497 : 
	fmul	f3 f2 f2
	fldi	f4 r0 38
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
	fldi	f14 r0 35
	fmul	f3 f14 f3
	fdiv	f3 f3 f9
	fldi	f9 r0 34
	fmul	f9 f9 f13
	fdiv	f8 f9 f8
	fadd	f3 f3 f8
	fldi	f8 r0 33
	fmul	f8 f8 f12
	fdiv	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 32
	fmul	f7 f7 f11
	fdiv	f6 f7 f6
	fadd	f3 f3 f6
	fldi	f6 r0 31
	fmul	f6 f6 f10
	fdiv	f5 f6 f5
	fadd	f3 f3 f5
	fdiv	f2 f2 f4
	fadd	f2 f3 f2
	return
L_isqrt_2499 : 
	fldi	f5 r0 30
	fmul	f5 f5 f4
	fsub	f3 f4 f3
	fldi	f6 r0 51
	fbgt	f6 f3 L_else_22811
	fadd	f3 f0 f3
	jump	L_cont_22812
L_else_22811 : 
	fsub	f3 f0 f3
L_cont_22812 : 
	fbgt	f5 f3 L_else_22813
	fldi	f3 r0 29
	fmul	f5 f2 f4
	fmul	f5 f5 f4
	fsub	f3 f3 f5
	fmul	f3 f4 f3
	fldi	f5 r0 28
	fdiv	f3 f3 f5
	fldi	f5 r0 30
	fmul	f5 f5 f3
	fsub	f4 f3 f4
	fldi	f6 r0 51
	fbgt	f6 f4 L_else_22814
	fadd	f4 f0 f4
	jump	L_cont_22815
L_else_22814 : 
	fsub	f4 f0 f4
L_cont_22815 : 
	fbgt	f5 f4 L_else_22816
	fldi	f4 r0 29
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f4 f3 f4
	fldi	f5 r0 28
	fdiv	f4 f4 f5
	jump	L_isqrt_2499
L_else_22816 : 
	fadd	f2 f0 f3
	return
L_else_22813 : 
	fadd	f2 f0 f4
	return
L_sdiv10_2505 : 
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22817
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r5 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22818
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r5 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22819
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r5 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22820
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r5 r6
	jump	L_sdiv10_2505
L_else_22820 : 
	add	r4 r0 r5
	return
L_else_22819 : 
	add	r4 r0 r5
	return
L_else_22818 : 
	add	r4 r0 r5
	return
L_else_22817 : 
	add	r4 r0 r5
	return
L_vecunit_sgn_2538 : 
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
	fldi	f3 r0 28
	fldi	f4 r0 38
	fbgt	f2 f4 L_else_22821
	fldi	f4 r0 38
	jump	L_cont_22822
L_else_22821 : 
	fldi	f4 r0 38
	fdiv	f4 f4 f2
L_cont_22822 : 
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f2 r2 2
	addi	r2 r2 5
	call	L_isqrt_2499
	subi	r2 r2 5
	fldi	f3 r2 2
	fmul	f2 f3 f2
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22823
	addi	r4 r0 1
	jump	L_cont_22824
L_else_22823 : 
	addi	r4 r0 0
L_cont_22824 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_22825
	addi	r4 r0 0
	ldi	r5 r2 1
	bne	r5 r4 L_else_22827
	fldi	f3 r0 38
	fdiv	f2 f3 f2
	jump	L_cont_22828
L_else_22827 : 
	fldi	f3 r0 27
	fdiv	f2 f3 f2
L_cont_22828 : 
	jump	L_cont_22826
L_else_22825 : 
	fldi	f2 r0 38
L_cont_22826 : 
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
L_vecaccumv_2562 : 
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
L_read_object_2648 : 
	addi	r5 r0 60
	bgt	r5 r4 L_else_22831
	return
L_else_22831 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_22833
	addi	r4 r0 0
	jump	L_cont_22834
L_else_22833 : 
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_22835
	addi	r4 r0 0
	jump	L_cont_22836
L_else_22835 : 
	addi	r4 r0 1
L_cont_22836 : 
	addi	r5 r0 2
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
	addi	r2 r2 22
	call	min_caml_create_float_array
	subi	r2 r2 22
	addi	r5 r0 0
	ldi	r6 r2 4
	sti	r4 r2 21
	bne	r6 r5 L_else_22837
	jump	L_cont_22838
L_else_22837 : 
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
L_cont_22838 : 
	addi	r4 r0 2
	ldi	r5 r2 2
	bne	r5 r4 L_else_22839
	addi	r4 r0 1
	jump	L_cont_22840
L_else_22839 : 
	ldi	r4 r2 13
	add	r4 r0 r4
L_cont_22840 : 
	addi	r6 r0 4
	fldi	f2 r0 51
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
	bne	r8 r5 L_else_22841
	addi	r5 r0 0
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22843
	addi	r8 r0 1
	jump	L_cont_22844
L_else_22843 : 
	addi	r8 r0 0
L_cont_22844 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22845
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22847
	addi	r8 r0 1
	jump	L_cont_22848
L_else_22847 : 
	addi	r8 r0 0
L_cont_22848 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22849
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_22851
	addi	r8 r0 0
	jump	L_cont_22852
L_else_22851 : 
	addi	r8 r0 1
L_cont_22852 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22853
	fldi	f3 r0 27
	jump	L_cont_22854
L_else_22853 : 
	fldi	f3 r0 38
L_cont_22854 : 
	jump	L_cont_22850
L_else_22849 : 
	fldi	f3 r0 51
L_cont_22850 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_22846
L_else_22845 : 
	fldi	f2 r0 51
L_cont_22846 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 1
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22855
	addi	r8 r0 1
	jump	L_cont_22856
L_else_22855 : 
	addi	r8 r0 0
L_cont_22856 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22857
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22859
	addi	r8 r0 1
	jump	L_cont_22860
L_else_22859 : 
	addi	r8 r0 0
L_cont_22860 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22861
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_22863
	addi	r8 r0 0
	jump	L_cont_22864
L_else_22863 : 
	addi	r8 r0 1
L_cont_22864 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22865
	fldi	f3 r0 27
	jump	L_cont_22866
L_else_22865 : 
	fldi	f3 r0 38
L_cont_22866 : 
	jump	L_cont_22862
L_else_22861 : 
	fldi	f3 r0 51
L_cont_22862 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_22858
L_else_22857 : 
	fldi	f2 r0 51
L_cont_22858 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 2
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22867
	addi	r8 r0 1
	jump	L_cont_22868
L_else_22867 : 
	addi	r8 r0 0
L_cont_22868 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22869
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22871
	addi	r8 r0 1
	jump	L_cont_22872
L_else_22871 : 
	addi	r8 r0 0
L_cont_22872 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22873
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_22875
	addi	r8 r0 0
	jump	L_cont_22876
L_else_22875 : 
	addi	r8 r0 1
L_cont_22876 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22877
	fldi	f3 r0 27
	jump	L_cont_22878
L_else_22877 : 
	fldi	f3 r0 38
L_cont_22878 : 
	jump	L_cont_22874
L_else_22873 : 
	fldi	f3 r0 51
L_cont_22874 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_22870
L_else_22869 : 
	fldi	f2 r0 51
L_cont_22870 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	jump	L_cont_22842
L_else_22841 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_22879
	addi	r5 r0 1
	ldi	r8 r2 13
	sub	r5 r5 r8
	add	r4 r0 r6
	addi	r2 r2 27
	call	L_vecunit_sgn_2538
	subi	r2 r2 27
	jump	L_cont_22880
L_else_22879 : 
L_cont_22880 : 
L_cont_22842 : 
	addi	r4 r0 0
	ldi	r5 r2 4
	bne	r5 r4 L_else_22881
	jump	L_cont_22882
L_else_22881 : 
	addi	r4 r0 0
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r2 r2 27
	call	L_cos_2495
	subi	r2 r2 27
	addi	r4 r0 0
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fldi	f4 r0 57
	fldi	f5 r0 56
	fsti	f2 r2 26
	fbgt	f3 f5 L_else_22883
	fldi	f6 r0 55
	fbgt	f6 f3 L_else_22885
	fldi	f4 r0 54
	fldi	f6 r0 53
	fldi	f7 r0 52
	fldi	f8 r0 51
	fbgt	f3 f8 L_else_22887
	fldi	f4 r0 37
	fbgt	f4 f3 L_else_22889
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_22890
L_else_22889 : 
	fldi	f4 r0 36
	fbgt	f4 f3 L_else_22891
	fadd	f3 f6 f3
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f3 f3 f4
	fsub	f2 f0 f3
	jump	L_cont_22892
L_else_22891 : 
	fadd	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f3 f4 f3
	fsub	f2 f0 f3
L_cont_22892 : 
L_cont_22890 : 
	jump	L_cont_22888
L_else_22887 : 
	fbgt	f3 f4 L_else_22893
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_22894
L_else_22893 : 
	fbgt	f3 f7 L_else_22895
	fsub	f3 f3 f6
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f2 f3 f4
	jump	L_cont_22896
L_else_22895 : 
	fsub	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
L_cont_22896 : 
L_cont_22894 : 
L_cont_22888 : 
	jump	L_cont_22886
L_else_22885 : 
	fadd	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 29
	call	L_sin_2493
	subi	r2 r2 29
L_cont_22886 : 
	jump	L_cont_22884
L_else_22883 : 
	fsub	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 29
	call	L_sin_2493
	subi	r2 r2 29
L_cont_22884 : 
	addi	r4 r0 1
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 28
	fadd	f2 f0 f3
	addi	r2 r2 31
	call	L_cos_2495
	subi	r2 r2 31
	addi	r4 r0 1
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fldi	f4 r0 57
	fldi	f5 r0 56
	fsti	f2 r2 30
	fbgt	f3 f5 L_else_22897
	fldi	f6 r0 55
	fbgt	f6 f3 L_else_22899
	fldi	f4 r0 54
	fldi	f6 r0 53
	fldi	f7 r0 52
	fldi	f8 r0 51
	fbgt	f3 f8 L_else_22901
	fldi	f4 r0 37
	fbgt	f4 f3 L_else_22903
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_22904
L_else_22903 : 
	fldi	f4 r0 36
	fbgt	f4 f3 L_else_22905
	fadd	f3 f6 f3
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f3 f3 f4
	fsub	f2 f0 f3
	jump	L_cont_22906
L_else_22905 : 
	fadd	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f3 f4 f3
	fsub	f2 f0 f3
L_cont_22906 : 
L_cont_22904 : 
	jump	L_cont_22902
L_else_22901 : 
	fbgt	f3 f4 L_else_22907
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_22908
L_else_22907 : 
	fbgt	f3 f7 L_else_22909
	fsub	f3 f3 f6
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f2 f3 f4
	jump	L_cont_22910
L_else_22909 : 
	fsub	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
L_cont_22910 : 
L_cont_22908 : 
L_cont_22902 : 
	jump	L_cont_22900
L_else_22899 : 
	fadd	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 33
	call	L_sin_2493
	subi	r2 r2 33
L_cont_22900 : 
	jump	L_cont_22898
L_else_22897 : 
	fsub	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 33
	call	L_sin_2493
	subi	r2 r2 33
L_cont_22898 : 
	addi	r4 r0 2
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 32
	fadd	f2 f0 f3
	addi	r2 r2 35
	call	L_cos_2495
	subi	r2 r2 35
	addi	r4 r0 2
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fldi	f4 r0 57
	fldi	f5 r0 56
	fsti	f2 r2 34
	fbgt	f3 f5 L_else_22911
	fldi	f6 r0 55
	fbgt	f6 f3 L_else_22913
	fldi	f4 r0 54
	fldi	f6 r0 53
	fldi	f7 r0 52
	fldi	f8 r0 51
	fbgt	f3 f8 L_else_22915
	fldi	f4 r0 37
	fbgt	f4 f3 L_else_22917
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_22918
L_else_22917 : 
	fldi	f4 r0 36
	fbgt	f4 f3 L_else_22919
	fadd	f3 f6 f3
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f3 f3 f4
	fsub	f2 f0 f3
	jump	L_cont_22920
L_else_22919 : 
	fadd	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f3 f4 f3
	fsub	f2 f0 f3
L_cont_22920 : 
L_cont_22918 : 
	jump	L_cont_22916
L_else_22915 : 
	fbgt	f3 f4 L_else_22921
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
	jump	L_cont_22922
L_else_22921 : 
	fbgt	f3 f7 L_else_22923
	fsub	f3 f3 f6
	fmul	f3 f3 f3
	fmul	f4 f3 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fldi	f9 r0 44
	fmul	f8 f9 f8
	fldi	f9 r0 43
	fmul	f7 f9 f7
	fsub	f7 f8 f7
	fldi	f8 r0 42
	fmul	f6 f8 f6
	fadd	f6 f7 f6
	fldi	f7 r0 41
	fmul	f5 f7 f5
	fsub	f5 f6 f5
	fldi	f6 r0 40
	fmul	f4 f6 f4
	fadd	f4 f5 f4
	fldi	f5 r0 39
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 38
	fadd	f2 f3 f4
	jump	L_cont_22924
L_else_22923 : 
	fsub	f3 f5 f3
	fmul	f4 f3 f3
	fmul	f5 f3 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f3
L_cont_22924 : 
L_cont_22922 : 
L_cont_22916 : 
	jump	L_cont_22914
L_else_22913 : 
	fadd	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 37
	call	L_sin_2493
	subi	r2 r2 37
L_cont_22914 : 
	jump	L_cont_22912
L_else_22911 : 
	fsub	f3 f3 f4
	fadd	f2 f0 f3
	addi	r2 r2 37
	call	L_sin_2493
	subi	r2 r2 37
L_cont_22912 : 
	fldi	f3 r2 34
	fldi	f4 r2 30
	fmul	f5 f4 f3
	fldi	f6 r2 32
	fldi	f7 r2 28
	fmul	f8 f7 f6
	fmul	f8 f8 f3
	fldi	f9 r2 26
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
L_cont_22882 : 
	addi	r4 r0 1
L_cont_22834 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_22925
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 0
	sti	r5 r4 0
	return
L_else_22925 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	addi	r5 r0 60
	bgt	r5 r4 L_else_22927
	return
L_else_22927 : 
	sti	r4 r2 36
	addi	r2 r2 38
	call	min_caml_read_int
	subi	r2 r2 38
	addi	r5 r0 -1
	bne	r4 r5 L_else_22929
	addi	r4 r0 0
	jump	L_cont_22930
L_else_22929 : 
	sti	r4 r2 37
	addi	r2 r2 39
	call	min_caml_read_int
	subi	r2 r2 39
	sti	r4 r2 38
	addi	r2 r2 40
	call	min_caml_read_int
	subi	r2 r2 40
	sti	r4 r2 39
	addi	r2 r2 41
	call	min_caml_read_int
	subi	r2 r2 41
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 40
	add	r4 r0 r5
	addi	r2 r2 42
	call	min_caml_create_float_array
	subi	r2 r2 42
	addi	r5 r0 0
	sti	r5 r2 41
	sti	r4 r2 42
	addi	r2 r2 44
	call	min_caml_read_float
	subi	r2 r2 44
	ldi	r4 r2 41
	ldi	r5 r2 42
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 43
	addi	r2 r2 45
	call	min_caml_read_float
	subi	r2 r2 45
	ldi	r4 r2 43
	ldi	r5 r2 42
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 44
	addi	r2 r2 46
	call	min_caml_read_float
	subi	r2 r2 46
	ldi	r4 r2 44
	ldi	r5 r2 42
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 3
	fldi	f2 r0 51
	addi	r2 r2 46
	call	min_caml_create_float_array
	subi	r2 r2 46
	addi	r5 r0 0
	sti	r5 r2 45
	sti	r4 r2 46
	addi	r2 r2 48
	call	min_caml_read_float
	subi	r2 r2 48
	ldi	r4 r2 45
	ldi	r5 r2 46
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 47
	addi	r2 r2 49
	call	min_caml_read_float
	subi	r2 r2 49
	ldi	r4 r2 47
	ldi	r5 r2 46
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 48
	addi	r2 r2 50
	call	min_caml_read_float
	subi	r2 r2 50
	ldi	r4 r2 48
	ldi	r5 r2 46
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r2 r2 50
	call	min_caml_read_float
	subi	r2 r2 50
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_22931
	addi	r4 r0 0
	jump	L_cont_22932
L_else_22931 : 
	addi	r4 r0 1
L_cont_22932 : 
	addi	r5 r0 2
	fldi	f2 r0 51
	sti	r4 r2 49
	add	r4 r0 r5
	addi	r2 r2 51
	call	min_caml_create_float_array
	subi	r2 r2 51
	addi	r5 r0 0
	sti	r5 r2 50
	sti	r4 r2 51
	addi	r2 r2 53
	call	min_caml_read_float
	subi	r2 r2 53
	ldi	r4 r2 50
	ldi	r5 r2 51
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 52
	addi	r2 r2 54
	call	min_caml_read_float
	subi	r2 r2 54
	ldi	r4 r2 52
	ldi	r5 r2 51
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 3
	fldi	f2 r0 51
	addi	r2 r2 54
	call	min_caml_create_float_array
	subi	r2 r2 54
	addi	r5 r0 0
	sti	r5 r2 53
	sti	r4 r2 54
	addi	r2 r2 56
	call	min_caml_read_float
	subi	r2 r2 56
	ldi	r4 r2 53
	ldi	r5 r2 54
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 55
	addi	r2 r2 57
	call	min_caml_read_float
	subi	r2 r2 57
	ldi	r4 r2 55
	ldi	r5 r2 54
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 56
	addi	r2 r2 58
	call	min_caml_read_float
	subi	r2 r2 58
	ldi	r4 r2 56
	ldi	r5 r2 54
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 3
	fldi	f2 r0 51
	addi	r2 r2 58
	call	min_caml_create_float_array
	subi	r2 r2 58
	addi	r5 r0 0
	ldi	r6 r2 40
	sti	r4 r2 57
	bne	r6 r5 L_else_22933
	jump	L_cont_22934
L_else_22933 : 
	addi	r5 r0 0
	sti	r5 r2 58
	addi	r2 r2 60
	call	min_caml_read_float
	subi	r2 r2 60
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 58
	ldi	r5 r2 57
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 59
	addi	r2 r2 61
	call	min_caml_read_float
	subi	r2 r2 61
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 59
	ldi	r5 r2 57
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 60
	addi	r2 r2 62
	call	min_caml_read_float
	subi	r2 r2 62
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 60
	ldi	r5 r2 57
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_22934 : 
	addi	r4 r0 2
	ldi	r5 r2 38
	bne	r5 r4 L_else_22935
	addi	r4 r0 1
	jump	L_cont_22936
L_else_22935 : 
	ldi	r4 r2 49
	add	r4 r0 r4
L_cont_22936 : 
	addi	r6 r0 4
	fldi	f2 r0 51
	sti	r4 r2 61
	add	r4 r0 r6
	addi	r2 r2 63
	call	min_caml_create_float_array
	subi	r2 r2 63
	add	r5 r0 r3
	addi	r3 r3 11
	sti	r4 r5 10
	ldi	r4 r2 57
	sti	r4 r5 9
	ldi	r6 r2 54
	sti	r6 r5 8
	ldi	r6 r2 51
	sti	r6 r5 7
	ldi	r6 r2 61
	sti	r6 r5 6
	ldi	r6 r2 46
	sti	r6 r5 5
	ldi	r6 r2 42
	sti	r6 r5 4
	ldi	r7 r2 40
	sti	r7 r5 3
	ldi	r8 r2 39
	sti	r8 r5 2
	ldi	r8 r2 38
	sti	r8 r5 1
	ldi	r9 r2 37
	sti	r9 r5 0
	add	r5 r0 r5
	addi	r9 r0 5042
	ldi	r10 r2 36
	add	r9 r9 r10
	sti	r5 r9 0
	addi	r5 r0 3
	bne	r8 r5 L_else_22937
	addi	r5 r0 0
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22939
	addi	r8 r0 1
	jump	L_cont_22940
L_else_22939 : 
	addi	r8 r0 0
L_cont_22940 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22941
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22943
	addi	r8 r0 1
	jump	L_cont_22944
L_else_22943 : 
	addi	r8 r0 0
L_cont_22944 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22945
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_22947
	addi	r8 r0 0
	jump	L_cont_22948
L_else_22947 : 
	addi	r8 r0 1
L_cont_22948 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22949
	fldi	f3 r0 27
	jump	L_cont_22950
L_else_22949 : 
	fldi	f3 r0 38
L_cont_22950 : 
	jump	L_cont_22946
L_else_22945 : 
	fldi	f3 r0 51
L_cont_22946 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_22942
L_else_22941 : 
	fldi	f2 r0 51
L_cont_22942 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 1
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22951
	addi	r8 r0 1
	jump	L_cont_22952
L_else_22951 : 
	addi	r8 r0 0
L_cont_22952 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22953
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22955
	addi	r8 r0 1
	jump	L_cont_22956
L_else_22955 : 
	addi	r8 r0 0
L_cont_22956 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22957
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_22959
	addi	r8 r0 0
	jump	L_cont_22960
L_else_22959 : 
	addi	r8 r0 1
L_cont_22960 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22961
	fldi	f3 r0 27
	jump	L_cont_22962
L_else_22961 : 
	fldi	f3 r0 38
L_cont_22962 : 
	jump	L_cont_22958
L_else_22957 : 
	fldi	f3 r0 51
L_cont_22958 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_22954
L_else_22953 : 
	fldi	f2 r0 51
L_cont_22954 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 2
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22963
	addi	r8 r0 1
	jump	L_cont_22964
L_else_22963 : 
	addi	r8 r0 0
L_cont_22964 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22965
	fldi	f3 r0 51
	fbne	f2 f3 L_else_22967
	addi	r8 r0 1
	jump	L_cont_22968
L_else_22967 : 
	addi	r8 r0 0
L_cont_22968 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22969
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_22971
	addi	r8 r0 0
	jump	L_cont_22972
L_else_22971 : 
	addi	r8 r0 1
L_cont_22972 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_22973
	fldi	f3 r0 27
	jump	L_cont_22974
L_else_22973 : 
	fldi	f3 r0 38
L_cont_22974 : 
	jump	L_cont_22970
L_else_22969 : 
	fldi	f3 r0 51
L_cont_22970 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_22966
L_else_22965 : 
	fldi	f2 r0 51
L_cont_22966 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	jump	L_cont_22938
L_else_22937 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_22975
	addi	r5 r0 1
	ldi	r8 r2 49
	sub	r5 r5 r8
	add	r4 r0 r6
	addi	r2 r2 63
	call	L_vecunit_sgn_2538
	subi	r2 r2 63
	jump	L_cont_22976
L_else_22975 : 
L_cont_22976 : 
L_cont_22938 : 
	addi	r4 r0 0
	ldi	r5 r2 40
	bne	r5 r4 L_else_22977
	jump	L_cont_22978
L_else_22977 : 
	addi	r4 r0 0
	ldi	r5 r2 57
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r2 r2 63
	call	L_cos_2495
	subi	r2 r2 63
	addi	r4 r0 0
	ldi	r5 r2 57
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 62
	fadd	f2 f0 f3
	addi	r2 r2 65
	call	L_sin_2493
	subi	r2 r2 65
	addi	r4 r0 1
	ldi	r5 r2 57
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 64
	fadd	f2 f0 f3
	addi	r2 r2 67
	call	L_cos_2495
	subi	r2 r2 67
	addi	r4 r0 1
	ldi	r5 r2 57
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 66
	fadd	f2 f0 f3
	addi	r2 r2 69
	call	L_sin_2493
	subi	r2 r2 69
	addi	r4 r0 2
	ldi	r5 r2 57
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 68
	fadd	f2 f0 f3
	addi	r2 r2 71
	call	L_cos_2495
	subi	r2 r2 71
	addi	r4 r0 2
	ldi	r5 r2 57
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 70
	fadd	f2 f0 f3
	addi	r2 r2 73
	call	L_sin_2493
	subi	r2 r2 73
	fldi	f3 r2 70
	fldi	f4 r2 66
	fmul	f5 f4 f3
	fldi	f6 r2 68
	fldi	f7 r2 64
	fmul	f8 f7 f6
	fmul	f8 f8 f3
	fldi	f9 r2 62
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
	ldi	r5 r2 42
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
	ldi	r5 r2 57
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
L_cont_22978 : 
	addi	r4 r0 1
L_cont_22930 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_22979
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 36
	sti	r5 r4 0
	return
L_else_22979 : 
	addi	r4 r0 1
	ldi	r5 r2 36
	add	r4 r5 r4
	jump	L_read_object_2648
L_read_net_item_2652 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_22981
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_22981 : 
	addi	r5 r0 1
	ldi	r6 r2 0
	add	r5 r6 r5
	sti	r4 r2 1
	sti	r5 r2 2
	addi	r2 r2 4
	call	min_caml_read_int
	subi	r2 r2 4
	addi	r5 r0 -1
	bne	r4 r5 L_else_22982
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	addi	r5 r0 -1
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	jump	L_cont_22983
L_else_22982 : 
	addi	r5 r0 1
	ldi	r6 r2 2
	add	r5 r6 r5
	sti	r4 r2 3
	sti	r5 r2 4
	addi	r2 r2 6
	call	min_caml_read_int
	subi	r2 r2 6
	addi	r5 r0 -1
	bne	r4 r5 L_else_22984
	addi	r4 r0 1
	ldi	r5 r2 4
	add	r4 r5 r4
	addi	r5 r0 -1
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	jump	L_cont_22985
L_else_22984 : 
	addi	r5 r0 1
	ldi	r6 r2 4
	add	r5 r6 r5
	sti	r4 r2 5
	sti	r5 r2 6
	addi	r2 r2 8
	call	min_caml_read_int
	subi	r2 r2 8
	addi	r5 r0 -1
	bne	r4 r5 L_else_22986
	addi	r4 r0 1
	ldi	r5 r2 6
	add	r4 r5 r4
	addi	r5 r0 -1
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	jump	L_cont_22987
L_else_22986 : 
	addi	r5 r0 1
	ldi	r6 r2 6
	add	r5 r6 r5
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	L_read_net_item_2652
	subi	r2 r2 9
	ldi	r5 r2 6
	add	r5 r4 r5
	ldi	r6 r2 7
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_22987 : 
	ldi	r5 r2 4
	add	r5 r4 r5
	ldi	r6 r2 5
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_22985 : 
	ldi	r5 r2 2
	add	r5 r4 r5
	ldi	r6 r2 3
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_22983 : 
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 1
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_or_network_2654 : 
	addi	r5 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	addi	r2 r2 3
	call	min_caml_read_int
	subi	r2 r2 3
	addi	r5 r0 -1
	bne	r4 r5 L_else_22988
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 3
	call	min_caml_create_array
	subi	r2 r2 3
	add	r5 r0 r4
	jump	L_cont_22989
L_else_22988 : 
	addi	r5 r0 1
	sti	r4 r2 2
	sti	r5 r2 3
	addi	r2 r2 5
	call	min_caml_read_int
	subi	r2 r2 5
	addi	r5 r0 -1
	bne	r4 r5 L_else_22990
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	jump	L_cont_22991
L_else_22990 : 
	addi	r5 r0 2
	sti	r4 r2 4
	sti	r5 r2 5
	addi	r2 r2 7
	call	min_caml_read_int
	subi	r2 r2 7
	addi	r5 r0 -1
	bne	r4 r5 L_else_22992
	addi	r4 r0 3
	addi	r5 r0 -1
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	jump	L_cont_22993
L_else_22992 : 
	addi	r5 r0 3
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	L_read_net_item_2652
	subi	r2 r2 8
	ldi	r5 r2 5
	add	r5 r4 r5
	ldi	r6 r2 6
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_22993 : 
	ldi	r5 r2 3
	add	r5 r4 r5
	ldi	r6 r2 4
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_22991 : 
	ldi	r5 r2 1
	add	r5 r4 r5
	ldi	r6 r2 2
	sti	r6 r5 0
	add	r5 r0 r4
L_cont_22989 : 
	addi	r4 r0 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22994
	addi	r4 r0 1
	ldi	r6 r2 0
	add	r4 r6 r4
	jump	min_caml_create_array
L_else_22994 : 
	addi	r4 r0 1
	ldi	r6 r2 0
	add	r4 r6 r4
	addi	r7 r0 0
	sti	r5 r2 7
	sti	r4 r2 8
	sti	r7 r2 9
	addi	r2 r2 11
	call	min_caml_read_int
	subi	r2 r2 11
	addi	r5 r0 -1
	bne	r4 r5 L_else_22995
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 11
	call	min_caml_create_array
	subi	r2 r2 11
	add	r5 r0 r4
	jump	L_cont_22996
L_else_22995 : 
	addi	r5 r0 1
	sti	r4 r2 10
	sti	r5 r2 11
	addi	r2 r2 13
	call	min_caml_read_int
	subi	r2 r2 13
	addi	r5 r0 -1
	bne	r4 r5 L_else_22997
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 13
	call	min_caml_create_array
	subi	r2 r2 13
	jump	L_cont_22998
L_else_22997 : 
	addi	r5 r0 2
	sti	r4 r2 12
	add	r4 r0 r5
	addi	r2 r2 14
	call	L_read_net_item_2652
	subi	r2 r2 14
	ldi	r5 r2 11
	add	r5 r4 r5
	ldi	r6 r2 12
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_22998 : 
	ldi	r5 r2 9
	add	r5 r4 r5
	ldi	r6 r2 10
	sti	r6 r5 0
	add	r5 r0 r4
L_cont_22996 : 
	addi	r4 r0 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22999
	addi	r4 r0 1
	ldi	r6 r2 8
	add	r4 r6 r4
	addi	r2 r2 14
	call	min_caml_create_array
	subi	r2 r2 14
	jump	L_cont_23000
L_else_22999 : 
	addi	r4 r0 1
	ldi	r6 r2 8
	add	r4 r6 r4
	sti	r5 r2 13
	addi	r2 r2 15
	call	L_read_or_network_2654
	subi	r2 r2 15
	ldi	r5 r2 8
	add	r5 r4 r5
	ldi	r6 r2 13
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_23000 : 
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 7
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_and_network_2656 : 
	addi	r5 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	addi	r2 r2 3
	call	min_caml_read_int
	subi	r2 r2 3
	addi	r5 r0 -1
	bne	r4 r5 L_else_23001
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 3
	call	min_caml_create_array
	subi	r2 r2 3
	jump	L_cont_23002
L_else_23001 : 
	addi	r5 r0 1
	sti	r4 r2 2
	sti	r5 r2 3
	addi	r2 r2 5
	call	min_caml_read_int
	subi	r2 r2 5
	addi	r5 r0 -1
	bne	r4 r5 L_else_23003
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	jump	L_cont_23004
L_else_23003 : 
	addi	r5 r0 2
	sti	r4 r2 4
	sti	r5 r2 5
	addi	r2 r2 7
	call	min_caml_read_int
	subi	r2 r2 7
	addi	r5 r0 -1
	bne	r4 r5 L_else_23005
	addi	r4 r0 3
	addi	r5 r0 -1
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	jump	L_cont_23006
L_else_23005 : 
	addi	r5 r0 3
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	L_read_net_item_2652
	subi	r2 r2 8
	ldi	r5 r2 5
	add	r5 r4 r5
	ldi	r6 r2 6
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_23006 : 
	ldi	r5 r2 3
	add	r5 r4 r5
	ldi	r6 r2 4
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_23004 : 
	ldi	r5 r2 1
	add	r5 r4 r5
	ldi	r6 r2 2
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_23002 : 
	addi	r5 r0 0
	add	r5 r4 r5
	ldi	r5 r5 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_23007
	return
L_else_23007 : 
	addi	r5 r0 4155
	ldi	r6 r2 0
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r0 1
	add	r4 r6 r4
	addi	r5 r0 0
	sti	r4 r2 7
	sti	r5 r2 8
	addi	r2 r2 10
	call	min_caml_read_int
	subi	r2 r2 10
	addi	r5 r0 -1
	bne	r4 r5 L_else_23009
	addi	r4 r0 1
	addi	r5 r0 -1
	addi	r2 r2 10
	call	min_caml_create_array
	subi	r2 r2 10
	jump	L_cont_23010
L_else_23009 : 
	addi	r5 r0 1
	sti	r4 r2 9
	sti	r5 r2 10
	addi	r2 r2 12
	call	min_caml_read_int
	subi	r2 r2 12
	addi	r5 r0 -1
	bne	r4 r5 L_else_23011
	addi	r4 r0 2
	addi	r5 r0 -1
	addi	r2 r2 12
	call	min_caml_create_array
	subi	r2 r2 12
	jump	L_cont_23012
L_else_23011 : 
	addi	r5 r0 2
	sti	r4 r2 11
	add	r4 r0 r5
	addi	r2 r2 13
	call	L_read_net_item_2652
	subi	r2 r2 13
	ldi	r5 r2 10
	add	r5 r4 r5
	ldi	r6 r2 11
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_23012 : 
	ldi	r5 r2 8
	add	r5 r4 r5
	ldi	r6 r2 9
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_23010 : 
	addi	r5 r0 0
	add	r5 r4 r5
	ldi	r5 r5 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_23013
	return
L_else_23013 : 
	addi	r5 r0 4155
	ldi	r6 r2 7
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r0 1
	add	r4 r6 r4
	jump	L_read_and_network_2656
L_solver_rect_2669 : 
	addi	r6 r0 0
	addi	r7 r0 1
	addi	r8 r0 2
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 51
	fbne	f5 f6 L_else_23015
	addi	r9 r0 1
	jump	L_cont_23016
L_else_23015 : 
	addi	r9 r0 0
L_cont_23016 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_23017
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fldi	f6 r0 51
	fbgt	f6 f5 L_else_23019
	addi	r11 r0 0
	jump	L_cont_23020
L_else_23019 : 
	addi	r11 r0 1
L_cont_23020 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	addi	r11 r0 0
	bne	r10 r11 L_else_23021
	fsub	f5 f0 f5
	jump	L_cont_23022
L_else_23021 : 
	fadd	f5 f0 f5
L_cont_23022 : 
	fsub	f5 f5 f2
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fldi	f7 r0 51
	fbgt	f7 f6 L_else_23023
	fadd	f6 f0 f6
	jump	L_cont_23024
L_else_23023 : 
	fsub	f6 f0 f6
L_cont_23024 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_23025
	addi	r6 r0 0
	jump	L_cont_23026
L_else_23025 : 
	addi	r6 r0 1
L_cont_23026 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23027
	addi	r6 r0 0
	jump	L_cont_23028
L_else_23027 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 51
	fbgt	f7 f6 L_else_23029
	fadd	f6 f0 f6
	jump	L_cont_23030
L_else_23029 : 
	fsub	f6 f0 f6
L_cont_23030 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_23031
	addi	r6 r0 0
	jump	L_cont_23032
L_else_23031 : 
	addi	r6 r0 1
L_cont_23032 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23033
	addi	r6 r0 0
	jump	L_cont_23034
L_else_23033 : 
	addi	r6 r0 4145
	addi	r7 r0 0
	add	r6 r6 r7
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_23034 : 
L_cont_23028 : 
	jump	L_cont_23018
L_else_23017 : 
	addi	r6 r0 0
L_cont_23018 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23035
	addi	r6 r0 1
	addi	r7 r0 2
	addi	r8 r0 0
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 51
	fbne	f5 f6 L_else_23036
	addi	r9 r0 1
	jump	L_cont_23037
L_else_23036 : 
	addi	r9 r0 0
L_cont_23037 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_23038
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fldi	f6 r0 51
	fbgt	f6 f5 L_else_23040
	addi	r11 r0 0
	jump	L_cont_23041
L_else_23040 : 
	addi	r11 r0 1
L_cont_23041 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	addi	r11 r0 0
	bne	r10 r11 L_else_23042
	fsub	f5 f0 f5
	jump	L_cont_23043
L_else_23042 : 
	fadd	f5 f0 f5
L_cont_23043 : 
	fsub	f5 f5 f3
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 51
	fbgt	f7 f6 L_else_23044
	fadd	f6 f0 f6
	jump	L_cont_23045
L_else_23044 : 
	fsub	f6 f0 f6
L_cont_23045 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_23046
	addi	r6 r0 0
	jump	L_cont_23047
L_else_23046 : 
	addi	r6 r0 1
L_cont_23047 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23048
	addi	r6 r0 0
	jump	L_cont_23049
L_else_23048 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fldi	f7 r0 51
	fbgt	f7 f6 L_else_23050
	fadd	f6 f0 f6
	jump	L_cont_23051
L_else_23050 : 
	fsub	f6 f0 f6
L_cont_23051 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_23052
	addi	r6 r0 0
	jump	L_cont_23053
L_else_23052 : 
	addi	r6 r0 1
L_cont_23053 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23054
	addi	r6 r0 0
	jump	L_cont_23055
L_else_23054 : 
	addi	r6 r0 4145
	addi	r7 r0 0
	add	r6 r6 r7
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_23055 : 
L_cont_23049 : 
	jump	L_cont_23039
L_else_23038 : 
	addi	r6 r0 0
L_cont_23039 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23056
	addi	r6 r0 2
	addi	r7 r0 0
	addi	r8 r0 1
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 51
	fbne	f5 f6 L_else_23057
	addi	r9 r0 1
	jump	L_cont_23058
L_else_23057 : 
	addi	r9 r0 0
L_cont_23058 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_23059
	ldi	r9 r4 4
	ldi	r4 r4 6
	add	r10 r5 r6
	fldi	f5 r10 0
	fldi	f6 r0 51
	fbgt	f6 f5 L_else_23061
	addi	r10 r0 0
	jump	L_cont_23062
L_else_23061 : 
	addi	r10 r0 1
L_cont_23062 : 
	xor	r4 r4 r10
	add	r10 r9 r6
	fldi	f5 r10 0
	addi	r10 r0 0
	bne	r4 r10 L_else_23063
	fsub	f5 f0 f5
	jump	L_cont_23064
L_else_23063 : 
	fadd	f5 f0 f5
L_cont_23064 : 
	fsub	f4 f5 f4
	add	r4 r5 r6
	fldi	f5 r4 0
	fdiv	f4 f4 f5
	add	r4 r5 r7
	fldi	f5 r4 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fldi	f5 r0 51
	fbgt	f5 f2 L_else_23065
	fadd	f2 f0 f2
	jump	L_cont_23066
L_else_23065 : 
	fsub	f2 f0 f2
L_cont_23066 : 
	add	r4 r9 r7
	fldi	f5 r4 0
	fbgt	f5 f2 L_else_23067
	addi	r4 r0 0
	jump	L_cont_23068
L_else_23067 : 
	addi	r4 r0 1
L_cont_23068 : 
	addi	r6 r0 0
	bne	r4 r6 L_else_23069
	addi	r4 r0 0
	jump	L_cont_23070
L_else_23069 : 
	add	r4 r5 r8
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23071
	fadd	f2 f0 f2
	jump	L_cont_23072
L_else_23071 : 
	fsub	f2 f0 f2
L_cont_23072 : 
	add	r4 r9 r8
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_23073
	addi	r4 r0 0
	jump	L_cont_23074
L_else_23073 : 
	addi	r4 r0 1
L_cont_23074 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23075
	addi	r4 r0 0
	jump	L_cont_23076
L_else_23075 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 1
L_cont_23076 : 
L_cont_23070 : 
	jump	L_cont_23060
L_else_23059 : 
	addi	r4 r0 0
L_cont_23060 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23077
	addi	r4 r0 0
	return
L_else_23077 : 
	addi	r4 r0 3
	return
L_else_23056 : 
	addi	r4 r0 2
	return
L_else_23035 : 
	addi	r4 r0 1
	return
L_solver_surface_2675 : 
	ldi	r4 r4 4
	addi	r6 r0 0
	add	r6 r5 r6
	fldi	f5 r6 0
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f6 r6 0
	fmul	f5 f5 f6
	addi	r6 r0 1
	add	r6 r5 r6
	fldi	f6 r6 0
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f7 r6 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f6 r5 0
	addi	r5 r0 2
	add	r5 r4 r5
	fldi	f7 r5 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fldi	f6 r0 51
	fbgt	f5 f6 L_else_23078
	addi	r5 r0 0
	jump	L_cont_23079
L_else_23078 : 
	addi	r5 r0 1
L_cont_23079 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23080
	addi	r4 r0 0
	return
L_else_23080 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	addi	r7 r0 0
	add	r7 r4 r7
	fldi	f6 r7 0
	fmul	f2 f6 f2
	addi	r7 r0 1
	add	r7 r4 r7
	fldi	f6 r7 0
	fmul	f3 f6 f3
	fadd	f2 f2 f3
	addi	r7 r0 2
	add	r4 r4 r7
	fldi	f3 r4 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fdiv	f2 f2 f5
	add	r4 r5 r6
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_quadratic_2681 : 
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
	bne	r5 r6 L_else_23081
	fadd	f2 f0 f5
	return
L_else_23081 : 
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
L_solver_second_2694 : 
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
	sti	r4 r2 4
	fsti	f2 r2 6
	sti	r5 r2 8
	fadd	f4 f0 f7
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 10
	call	L_quadratic_2681
	subi	r2 r2 10
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23083
	addi	r4 r0 1
	jump	L_cont_23084
L_else_23083 : 
	addi	r4 r0 0
L_cont_23084 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23085
	addi	r4 r0 0
	ldi	r5 r2 8
	add	r4 r5 r4
	fldi	f3 r4 0
	addi	r4 r0 1
	add	r4 r5 r4
	fldi	f4 r4 0
	addi	r4 r0 2
	add	r4 r5 r4
	fldi	f5 r4 0
	fldi	f6 r2 6
	fmul	f7 f3 f6
	ldi	r4 r2 4
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
	bne	r5 r6 L_else_23086
	fadd	f3 f0 f7
	jump	L_cont_23087
L_else_23086 : 
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
L_cont_23087 : 
	fsti	f2 r2 10
	fsti	f3 r2 12
	fadd	f4 f0 f9
	fadd	f3 f0 f8
	fadd	f2 f0 f6
	addi	r2 r2 15
	call	L_quadratic_2681
	subi	r2 r2 15
	ldi	r4 r2 4
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_23089
	fldi	f3 r0 38
	fsub	f2 f2 f3
	jump	L_cont_23090
L_else_23089 : 
	fadd	f2 f0 f2
L_cont_23090 : 
	fldi	f3 r2 12
	fmul	f4 f3 f3
	fldi	f5 r2 10
	fmul	f2 f5 f2
	fsub	f2 f4 f2
	fldi	f4 r0 51
	fbgt	f2 f4 L_else_23091
	addi	r5 r0 0
	jump	L_cont_23092
L_else_23091 : 
	addi	r5 r0 1
L_cont_23092 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23093
	addi	r4 r0 0
	return
L_else_23093 : 
	fldi	f4 r0 28
	fldi	f6 r0 38
	fbgt	f2 f6 L_else_23094
	fldi	f6 r0 38
	jump	L_cont_23095
L_else_23094 : 
	fldi	f6 r0 38
	fdiv	f6 f6 f2
L_cont_23095 : 
	fsti	f2 r2 14
	fadd	f3 f0 f4
	fadd	f4 f0 f6
	addi	r2 r2 17
	call	L_isqrt_2499
	subi	r2 r2 17
	fldi	f3 r2 14
	fmul	f2 f3 f2
	ldi	r4 r2 4
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_23096
	fsub	f2 f0 f2
	jump	L_cont_23097
L_else_23096 : 
	fadd	f2 f0 f2
L_cont_23097 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	fldi	f3 r2 12
	fsub	f2 f2 f3
	fldi	f3 r2 10
	fdiv	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_23085 : 
	addi	r4 r0 0
	return
L_solver_rect_fast_2704 : 
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
	fldi	f7 r0 51
	fbgt	f7 f6 L_else_23098
	fadd	f6 f0 f6
	jump	L_cont_23099
L_else_23098 : 
	fsub	f6 f0 f6
L_cont_23099 : 
	ldi	r7 r4 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_23100
	addi	r7 r0 0
	jump	L_cont_23101
L_else_23100 : 
	addi	r7 r0 1
L_cont_23101 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23102
	addi	r7 r0 0
	jump	L_cont_23103
L_else_23102 : 
	addi	r7 r0 2
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 51
	fbgt	f7 f6 L_else_23104
	fadd	f6 f0 f6
	jump	L_cont_23105
L_else_23104 : 
	fsub	f6 f0 f6
L_cont_23105 : 
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_23106
	addi	r7 r0 0
	jump	L_cont_23107
L_else_23106 : 
	addi	r7 r0 1
L_cont_23107 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23108
	addi	r7 r0 0
	jump	L_cont_23109
L_else_23108 : 
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f6 r8 0
	fldi	f7 r0 51
	fbne	f6 f7 L_else_23110
	addi	r8 r0 1
	jump	L_cont_23111
L_else_23110 : 
	addi	r8 r0 0
L_cont_23111 : 
	sub	r7 r7 r8
L_cont_23109 : 
L_cont_23103 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23112
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
	fldi	f7 r0 51
	fbgt	f7 f6 L_else_23113
	fadd	f6 f0 f6
	jump	L_cont_23114
L_else_23113 : 
	fsub	f6 f0 f6
L_cont_23114 : 
	ldi	r7 r4 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_23115
	addi	r7 r0 0
	jump	L_cont_23116
L_else_23115 : 
	addi	r7 r0 1
L_cont_23116 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23117
	addi	r7 r0 0
	jump	L_cont_23118
L_else_23117 : 
	addi	r7 r0 2
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 51
	fbgt	f7 f6 L_else_23119
	fadd	f6 f0 f6
	jump	L_cont_23120
L_else_23119 : 
	fsub	f6 f0 f6
L_cont_23120 : 
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_23121
	addi	r7 r0 0
	jump	L_cont_23122
L_else_23121 : 
	addi	r7 r0 1
L_cont_23122 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23123
	addi	r7 r0 0
	jump	L_cont_23124
L_else_23123 : 
	addi	r7 r0 1
	addi	r8 r0 3
	add	r8 r6 r8
	fldi	f6 r8 0
	fldi	f7 r0 51
	fbne	f6 f7 L_else_23125
	addi	r8 r0 1
	jump	L_cont_23126
L_else_23125 : 
	addi	r8 r0 0
L_cont_23126 : 
	sub	r7 r7 r8
L_cont_23124 : 
L_cont_23118 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23127
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
	fldi	f5 r0 51
	fbgt	f5 f2 L_else_23128
	fadd	f2 f0 f2
	jump	L_cont_23129
L_else_23128 : 
	fsub	f2 f0 f2
L_cont_23129 : 
	ldi	r7 r4 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_23130
	addi	r7 r0 0
	jump	L_cont_23131
L_else_23130 : 
	addi	r7 r0 1
L_cont_23131 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23132
	addi	r4 r0 0
	jump	L_cont_23133
L_else_23132 : 
	addi	r7 r0 1
	add	r5 r5 r7
	fldi	f2 r5 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23134
	fadd	f2 f0 f2
	jump	L_cont_23135
L_else_23134 : 
	fsub	f2 f0 f2
L_cont_23135 : 
	ldi	r4 r4 4
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_23136
	addi	r4 r0 0
	jump	L_cont_23137
L_else_23136 : 
	addi	r4 r0 1
L_cont_23137 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23138
	addi	r4 r0 0
	jump	L_cont_23139
L_else_23138 : 
	addi	r4 r0 1
	addi	r5 r0 5
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23140
	addi	r5 r0 1
	jump	L_cont_23141
L_else_23140 : 
	addi	r5 r0 0
L_cont_23141 : 
	sub	r4 r4 r5
L_cont_23139 : 
L_cont_23133 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23142
	addi	r4 r0 0
	return
L_else_23142 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 3
	return
L_else_23127 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f5 r4 0
	addi	r4 r0 2
	return
L_else_23112 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f5 r4 0
	addi	r4 r0 1
	return
L_solver_second_fast_2717 : 
	addi	r6 r0 0
	add	r6 r5 r6
	fldi	f5 r6 0
	fldi	f6 r0 51
	fbne	f5 f6 L_else_23143
	addi	r6 r0 1
	jump	L_cont_23144
L_else_23143 : 
	addi	r6 r0 0
L_cont_23144 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23145
	addi	r6 r0 1
	add	r6 r5 r6
	fldi	f6 r6 0
	fmul	f6 f6 f2
	addi	r6 r0 2
	add	r6 r5 r6
	fldi	f7 r6 0
	fmul	f7 f7 f3
	fadd	f6 f6 f7
	addi	r6 r0 3
	add	r6 r5 r6
	fldi	f7 r6 0
	fmul	f7 f7 f4
	fadd	f6 f6 f7
	sti	r5 r2 0
	fsti	f5 r2 2
	fsti	f6 r2 4
	sti	r4 r2 6
	addi	r2 r2 8
	call	L_quadratic_2681
	subi	r2 r2 8
	ldi	r4 r2 6
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_23147
	fldi	f3 r0 38
	fsub	f2 f2 f3
	jump	L_cont_23148
L_else_23147 : 
	fadd	f2 f0 f2
L_cont_23148 : 
	fldi	f3 r2 4
	fmul	f4 f3 f3
	fldi	f5 r2 2
	fmul	f2 f5 f2
	fsub	f2 f4 f2
	fldi	f4 r0 51
	fbgt	f2 f4 L_else_23149
	addi	r5 r0 0
	jump	L_cont_23150
L_else_23149 : 
	addi	r5 r0 1
L_cont_23150 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23151
	addi	r4 r0 0
	return
L_else_23151 : 
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_23152
	addi	r4 r0 4145
	addi	r5 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 38
	fbgt	f2 f5 L_else_23154
	fldi	f5 r0 38
	jump	L_cont_23155
L_else_23154 : 
	fldi	f5 r0 38
	fdiv	f5 f5 f2
L_cont_23155 : 
	sti	r5 r2 7
	sti	r4 r2 8
	fsti	f2 r2 10
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 13
	call	L_isqrt_2499
	subi	r2 r2 13
	fldi	f3 r2 10
	fmul	f2 f3 f2
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
	jump	L_cont_23153
L_else_23152 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 38
	fbgt	f2 f5 L_else_23157
	fldi	f5 r0 38
	jump	L_cont_23158
L_else_23157 : 
	fldi	f5 r0 38
	fdiv	f5 f5 f2
L_cont_23158 : 
	sti	r5 r2 12
	sti	r4 r2 13
	fsti	f2 r2 10
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 15
	call	L_isqrt_2499
	subi	r2 r2 15
	fldi	f3 r2 10
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fadd	f2 f3 f2
	addi	r4 r0 4
	ldi	r5 r2 0
	add	r4 r5 r4
	fldi	f3 r4 0
	fmul	f2 f2 f3
	ldi	r4 r2 12
	ldi	r5 r2 13
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_23153 : 
	addi	r4 r0 1
	return
L_else_23145 : 
	addi	r4 r0 0
	return
L_solver_second_fast2_2734 : 
	addi	r7 r0 0
	add	r7 r5 r7
	fldi	f5 r7 0
	fldi	f6 r0 51
	fbne	f5 f6 L_else_23159
	addi	r7 r0 1
	jump	L_cont_23160
L_else_23159 : 
	addi	r7 r0 0
L_cont_23160 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23161
	addi	r7 r0 1
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f2 f6 f2
	addi	r7 r0 2
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f3 f6 f3
	fadd	f2 f2 f3
	addi	r7 r0 3
	add	r7 r5 r7
	fldi	f3 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r7 r0 3
	add	r6 r6 r7
	fldi	f3 r6 0
	fmul	f4 f2 f2
	fmul	f3 f5 f3
	fsub	f3 f4 f3
	fldi	f4 r0 51
	fbgt	f3 f4 L_else_23162
	addi	r6 r0 0
	jump	L_cont_23163
L_else_23162 : 
	addi	r6 r0 1
L_cont_23163 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23164
	addi	r4 r0 0
	return
L_else_23164 : 
	ldi	r4 r4 6
	addi	r6 r0 0
	bne	r4 r6 L_else_23165
	addi	r4 r0 4145
	addi	r6 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 38
	fbgt	f3 f5 L_else_23167
	fldi	f5 r0 38
	jump	L_cont_23168
L_else_23167 : 
	fldi	f5 r0 38
	fdiv	f5 f5 f3
L_cont_23168 : 
	sti	r6 r2 0
	sti	r4 r2 1
	sti	r5 r2 2
	fsti	f2 r2 4
	fsti	f3 r2 6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 9
	call	L_isqrt_2499
	subi	r2 r2 9
	fldi	f3 r2 6
	fmul	f2 f3 f2
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
	jump	L_cont_23166
L_else_23165 : 
	addi	r4 r0 4145
	addi	r6 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 38
	fbgt	f3 f5 L_else_23170
	fldi	f5 r0 38
	jump	L_cont_23171
L_else_23170 : 
	fldi	f5 r0 38
	fdiv	f5 f5 f3
L_cont_23171 : 
	sti	r6 r2 8
	sti	r4 r2 9
	sti	r5 r2 2
	fsti	f2 r2 4
	fsti	f3 r2 6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 11
	call	L_isqrt_2499
	subi	r2 r2 11
	fldi	f3 r2 6
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fadd	f2 f3 f2
	addi	r4 r0 4
	ldi	r5 r2 2
	add	r4 r5 r4
	fldi	f3 r4 0
	fmul	f2 f2 f3
	ldi	r4 r2 8
	ldi	r5 r2 9
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_23166 : 
	addi	r4 r0 1
	return
L_else_23161 : 
	addi	r4 r0 0
	return
L_setup_rect_table_2744 : 
	addi	r6 r0 6
	fldi	f2 r0 51
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	addi	r5 r0 0
	ldi	r6 r2 1
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23172
	addi	r5 r0 1
	jump	L_cont_23173
L_else_23172 : 
	addi	r5 r0 0
L_cont_23173 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_23174
	addi	r5 r0 0
	ldi	r7 r2 0
	ldi	r8 r7 6
	addi	r9 r0 0
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23176
	addi	r9 r0 0
	jump	L_cont_23177
L_else_23176 : 
	addi	r9 r0 1
L_cont_23177 : 
	xor	r8 r8 r9
	ldi	r9 r7 4
	addi	r10 r0 0
	add	r9 r9 r10
	fldi	f2 r9 0
	addi	r9 r0 0
	bne	r8 r9 L_else_23178
	fsub	f2 f0 f2
	jump	L_cont_23179
L_else_23178 : 
	fadd	f2 f0 f2
L_cont_23179 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	fldi	f2 r0 38
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_23175
L_else_23174 : 
	addi	r5 r0 1
	fldi	f2 r0 51
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_23175 : 
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23180
	addi	r5 r0 1
	jump	L_cont_23181
L_else_23180 : 
	addi	r5 r0 0
L_cont_23181 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_23182
	addi	r5 r0 2
	ldi	r7 r2 0
	ldi	r8 r7 6
	addi	r9 r0 1
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23184
	addi	r9 r0 0
	jump	L_cont_23185
L_else_23184 : 
	addi	r9 r0 1
L_cont_23185 : 
	xor	r8 r8 r9
	ldi	r9 r7 4
	addi	r10 r0 1
	add	r9 r9 r10
	fldi	f2 r9 0
	addi	r9 r0 0
	bne	r8 r9 L_else_23186
	fsub	f2 f0 f2
	jump	L_cont_23187
L_else_23186 : 
	fadd	f2 f0 f2
L_cont_23187 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 3
	fldi	f2 r0 38
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_23183
L_else_23182 : 
	addi	r5 r0 3
	fldi	f2 r0 51
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_23183 : 
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23188
	addi	r5 r0 1
	jump	L_cont_23189
L_else_23188 : 
	addi	r5 r0 0
L_cont_23189 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_23190
	addi	r5 r0 4
	ldi	r7 r2 0
	ldi	r8 r7 6
	addi	r9 r0 2
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23192
	addi	r9 r0 0
	jump	L_cont_23193
L_else_23192 : 
	addi	r9 r0 1
L_cont_23193 : 
	xor	r8 r8 r9
	ldi	r7 r7 4
	addi	r9 r0 2
	add	r7 r7 r9
	fldi	f2 r7 0
	addi	r7 r0 0
	bne	r8 r7 L_else_23194
	fsub	f2 f0 f2
	jump	L_cont_23195
L_else_23194 : 
	fadd	f2 f0 f2
L_cont_23195 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 5
	fldi	f2 r0 38
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_23191
L_else_23190 : 
	addi	r5 r0 5
	fldi	f2 r0 51
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_23191 : 
	add	r4 r0 r4
	return
L_setup_surface_table_2747 : 
	addi	r6 r0 4
	fldi	f2 r0 51
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	addi	r5 r0 0
	ldi	r6 r2 1
	add	r5 r6 r5
	fldi	f2 r5 0
	ldi	r5 r2 0
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
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23196
	addi	r6 r0 0
	jump	L_cont_23197
L_else_23196 : 
	addi	r6 r0 1
L_cont_23197 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23198
	addi	r5 r0 0
	fldi	f2 r0 51
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_23199
L_else_23198 : 
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
L_cont_23199 : 
	add	r4 r0 r4
	return
L_setup_second_table_2750 : 
	addi	r6 r0 5
	fldi	f2 r0 51
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	addi	r5 r0 0
	ldi	r6 r2 1
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f3 r5 0
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f4 r5 0
	ldi	r5 r2 0
	sti	r4 r2 2
	add	r4 r0 r5
	addi	r2 r2 4
	call	L_quadratic_2681
	subi	r2 r2 4
	addi	r4 r0 0
	ldi	r5 r2 1
	add	r4 r5 r4
	fldi	f3 r4 0
	ldi	r4 r2 0
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
	ldi	r7 r2 2
	add	r6 r7 r6
	fsti	f2 r6 0
	ldi	r6 r4 3
	addi	r8 r0 0
	bne	r6 r8 L_else_23200
	addi	r4 r0 1
	add	r4 r7 r4
	fsti	f3 r4 0
	addi	r4 r0 2
	add	r4 r7 r4
	fsti	f4 r4 0
	addi	r4 r0 3
	add	r4 r7 r4
	fsti	f5 r4 0
	jump	L_cont_23201
L_else_23200 : 
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
L_cont_23201 : 
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23202
	addi	r4 r0 1
	jump	L_cont_23203
L_else_23202 : 
	addi	r4 r0 0
L_cont_23203 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23204
	addi	r4 r0 4
	fldi	f3 r0 38
	fdiv	f2 f3 f2
	add	r4 r7 r4
	fsti	f2 r4 0
	jump	L_cont_23205
L_else_23204 : 
L_cont_23205 : 
	add	r4 r0 r7
	return
L_iter_setup_dirvec_constants_2753 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_23206
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r4 1
	ldi	r8 r4 0
	ldi	r9 r6 1
	addi	r10 r0 1
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r9 r10 L_else_23207
	addi	r9 r0 6
	fldi	f2 r0 51
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
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23209
	addi	r5 r0 1
	jump	L_cont_23210
L_else_23209 : 
	addi	r5 r0 0
L_cont_23210 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_23211
	addi	r5 r0 0
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 0
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23213
	addi	r9 r0 0
	jump	L_cont_23214
L_else_23213 : 
	addi	r9 r0 1
L_cont_23214 : 
	xor	r8 r8 r9
	ldi	r9 r7 4
	addi	r10 r0 0
	add	r9 r9 r10
	fldi	f2 r9 0
	addi	r9 r0 0
	bne	r8 r9 L_else_23215
	fsub	f2 f0 f2
	jump	L_cont_23216
L_else_23215 : 
	fadd	f2 f0 f2
L_cont_23216 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	fldi	f2 r0 38
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_23212
L_else_23211 : 
	addi	r5 r0 1
	fldi	f2 r0 51
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_23212 : 
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23217
	addi	r5 r0 1
	jump	L_cont_23218
L_else_23217 : 
	addi	r5 r0 0
L_cont_23218 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_23219
	addi	r5 r0 2
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 1
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23221
	addi	r9 r0 0
	jump	L_cont_23222
L_else_23221 : 
	addi	r9 r0 1
L_cont_23222 : 
	xor	r8 r8 r9
	ldi	r9 r7 4
	addi	r10 r0 1
	add	r9 r9 r10
	fldi	f2 r9 0
	addi	r9 r0 0
	bne	r8 r9 L_else_23223
	fsub	f2 f0 f2
	jump	L_cont_23224
L_else_23223 : 
	fadd	f2 f0 f2
L_cont_23224 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 3
	fldi	f2 r0 38
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_23220
L_else_23219 : 
	addi	r5 r0 3
	fldi	f2 r0 51
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_23220 : 
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23225
	addi	r5 r0 1
	jump	L_cont_23226
L_else_23225 : 
	addi	r5 r0 0
L_cont_23226 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_23227
	addi	r5 r0 4
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 2
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23229
	addi	r9 r0 0
	jump	L_cont_23230
L_else_23229 : 
	addi	r9 r0 1
L_cont_23230 : 
	xor	r8 r8 r9
	ldi	r7 r7 4
	addi	r9 r0 2
	add	r7 r7 r9
	fldi	f2 r7 0
	addi	r7 r0 0
	bne	r8 r7 L_else_23231
	fsub	f2 f0 f2
	jump	L_cont_23232
L_else_23231 : 
	fadd	f2 f0 f2
L_cont_23232 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 5
	fldi	f2 r0 38
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_23228
L_else_23227 : 
	addi	r5 r0 5
	fldi	f2 r0 51
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_23228 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_23208
L_else_23207 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_23233
	addi	r9 r0 4
	fldi	f2 r0 51
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
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23235
	addi	r6 r0 0
	jump	L_cont_23236
L_else_23235 : 
	addi	r6 r0 1
L_cont_23236 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23237
	addi	r5 r0 0
	fldi	f2 r0 51
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_23238
L_else_23237 : 
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
L_cont_23238 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_23234
L_else_23233 : 
	addi	r9 r0 5
	fldi	f2 r0 51
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
	call	L_quadratic_2681
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
	bne	r6 r8 L_else_23239
	addi	r4 r0 1
	add	r4 r7 r4
	fsti	f3 r4 0
	addi	r4 r0 2
	add	r4 r7 r4
	fsti	f4 r4 0
	addi	r4 r0 3
	add	r4 r7 r4
	fsti	f5 r4 0
	jump	L_cont_23240
L_else_23239 : 
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
L_cont_23240 : 
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23241
	addi	r4 r0 1
	jump	L_cont_23242
L_else_23241 : 
	addi	r4 r0 0
L_cont_23242 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23243
	addi	r4 r0 4
	fldi	f3 r0 38
	fdiv	f2 f3 f2
	add	r4 r7 r4
	fsti	f2 r4 0
	jump	L_cont_23244
L_else_23243 : 
L_cont_23244 : 
	ldi	r4 r2 1
	ldi	r5 r2 2
	add	r5 r5 r4
	sti	r7 r5 0
L_cont_23234 : 
L_cont_23208 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_23245
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r2 0
	ldi	r7 r6 1
	ldi	r8 r6 0
	ldi	r9 r5 1
	addi	r10 r0 1
	bne	r9 r10 L_else_23246
	sti	r4 r2 6
	sti	r7 r2 7
	add	r4 r0 r8
	addi	r2 r2 9
	call	L_setup_rect_table_2744
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_23247
L_else_23246 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_23248
	sti	r4 r2 6
	sti	r7 r2 7
	add	r4 r0 r8
	addi	r2 r2 9
	call	L_setup_surface_table_2747
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_23249
L_else_23248 : 
	sti	r4 r2 6
	sti	r7 r2 7
	add	r4 r0 r8
	addi	r2 r2 9
	call	L_setup_second_table_2750
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_23249 : 
L_cont_23247 : 
	addi	r4 r0 1
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_iter_setup_dirvec_constants_2753
L_else_23245 : 
	return
L_else_23206 : 
	return
L_setup_startp_constants_2758 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_23252
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
	bne	r8 r9 L_else_23253
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
	addi	r9 r0 0
	add	r9 r6 r9
	fldi	f5 r9 0
	fmul	f2 f5 f2
	addi	r9 r0 1
	add	r9 r6 r9
	fldi	f5 r9 0
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	addi	r9 r0 2
	add	r6 r6 r9
	fldi	f3 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	add	r6 r7 r8
	fsti	f2 r6 0
	jump	L_cont_23254
L_else_23253 : 
	addi	r9 r0 2
	bgt	r8 r9 L_else_23255
	jump	L_cont_23256
L_else_23255 : 
	addi	r9 r0 0
	add	r9 r7 r9
	fldi	f2 r9 0
	addi	r9 r0 1
	add	r9 r7 r9
	fldi	f3 r9 0
	addi	r9 r0 2
	add	r9 r7 r9
	fldi	f4 r9 0
	sti	r7 r2 2
	sti	r8 r2 3
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_quadratic_2681
	subi	r2 r2 5
	addi	r4 r0 3
	addi	r5 r0 3
	ldi	r6 r2 3
	bne	r6 r5 L_else_23257
	fldi	f3 r0 38
	fsub	f2 f2 f3
	jump	L_cont_23258
L_else_23257 : 
	fadd	f2 f0 f2
L_cont_23258 : 
	ldi	r5 r2 2
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_23256 : 
L_cont_23254 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_setup_startp_constants_2758
L_else_23252 : 
	return
L_is_outside_2778 : 
	ldi	r5 r4 5
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f5 r5 0
	fsub	f2 f2 f5
	ldi	r5 r4 5
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f5 r5 0
	fsub	f3 f3 f5
	ldi	r5 r4 5
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f5 r5 0
	fsub	f4 f4 f5
	ldi	r5 r4 1
	addi	r6 r0 1
	bne	r5 r6 L_else_23260
	fldi	f5 r0 51
	fbgt	f5 f2 L_else_23261
	fadd	f2 f0 f2
	jump	L_cont_23262
L_else_23261 : 
	fsub	f2 f0 f2
L_cont_23262 : 
	ldi	r5 r4 4
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f5 r5 0
	fbgt	f5 f2 L_else_23263
	addi	r5 r0 0
	jump	L_cont_23264
L_else_23263 : 
	addi	r5 r0 1
L_cont_23264 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23265
	addi	r5 r0 0
	jump	L_cont_23266
L_else_23265 : 
	fldi	f2 r0 51
	fbgt	f2 f3 L_else_23267
	fadd	f2 f0 f3
	jump	L_cont_23268
L_else_23267 : 
	fsub	f2 f0 f3
L_cont_23268 : 
	ldi	r5 r4 4
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_23269
	addi	r5 r0 0
	jump	L_cont_23270
L_else_23269 : 
	addi	r5 r0 1
L_cont_23270 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23271
	addi	r5 r0 0
	jump	L_cont_23272
L_else_23271 : 
	fldi	f2 r0 51
	fbgt	f2 f4 L_else_23273
	fadd	f2 f0 f4
	jump	L_cont_23274
L_else_23273 : 
	fsub	f2 f0 f4
L_cont_23274 : 
	ldi	r5 r4 4
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_23275
	addi	r5 r0 0
	jump	L_cont_23276
L_else_23275 : 
	addi	r5 r0 1
L_cont_23276 : 
L_cont_23272 : 
L_cont_23266 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23277
	addi	r5 r0 1
	ldi	r4 r4 6
	sub	r4 r5 r4
	return
L_else_23277 : 
	ldi	r4 r4 6
	add	r4 r0 r4
	return
L_else_23260 : 
	addi	r6 r0 2
	bne	r5 r6 L_else_23278
	ldi	r5 r4 4
	addi	r6 r0 0
	add	r6 r5 r6
	fldi	f5 r6 0
	fmul	f2 f5 f2
	addi	r6 r0 1
	add	r6 r5 r6
	fldi	f5 r6 0
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	addi	r6 r0 2
	add	r5 r5 r6
	fldi	f3 r5 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r5 r0 1
	ldi	r4 r4 6
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23279
	addi	r6 r0 0
	jump	L_cont_23280
L_else_23279 : 
	addi	r6 r0 1
L_cont_23280 : 
	xor	r4 r4 r6
	sub	r4 r5 r4
	return
L_else_23278 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	L_quadratic_2681
	subi	r2 r2 2
	ldi	r4 r2 0
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_23281
	fldi	f3 r0 38
	fsub	f2 f2 f3
	jump	L_cont_23282
L_else_23281 : 
	fadd	f2 f0 f2
L_cont_23282 : 
	addi	r5 r0 1
	ldi	r4 r4 6
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23283
	addi	r6 r0 0
	jump	L_cont_23284
L_else_23283 : 
	addi	r6 r0 1
L_cont_23284 : 
	xor	r4 r4 r6
	sub	r4 r5 r4
	return
L_check_all_inside_2783 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23285
	addi	r4 r0 1
	return
L_else_23285 : 
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
	bne	r7 r8 L_else_23286
	fldi	f8 r0 51
	fbgt	f8 f5 L_else_23288
	fadd	f5 f0 f5
	jump	L_cont_23289
L_else_23288 : 
	fsub	f5 f0 f5
L_cont_23289 : 
	ldi	r7 r6 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f8 r7 0
	fbgt	f8 f5 L_else_23290
	addi	r7 r0 0
	jump	L_cont_23291
L_else_23290 : 
	addi	r7 r0 1
L_cont_23291 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23292
	addi	r7 r0 0
	jump	L_cont_23293
L_else_23292 : 
	fldi	f5 r0 51
	fbgt	f5 f6 L_else_23294
	fadd	f5 f0 f6
	jump	L_cont_23295
L_else_23294 : 
	fsub	f5 f0 f6
L_cont_23295 : 
	ldi	r7 r6 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f6 r7 0
	fbgt	f6 f5 L_else_23296
	addi	r7 r0 0
	jump	L_cont_23297
L_else_23296 : 
	addi	r7 r0 1
L_cont_23297 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23298
	addi	r7 r0 0
	jump	L_cont_23299
L_else_23298 : 
	fldi	f5 r0 51
	fbgt	f5 f7 L_else_23300
	fadd	f5 f0 f7
	jump	L_cont_23301
L_else_23300 : 
	fsub	f5 f0 f7
L_cont_23301 : 
	ldi	r7 r6 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f6 r7 0
	fbgt	f6 f5 L_else_23302
	addi	r7 r0 0
	jump	L_cont_23303
L_else_23302 : 
	addi	r7 r0 1
L_cont_23303 : 
L_cont_23299 : 
L_cont_23293 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_23304
	addi	r7 r0 1
	ldi	r6 r6 6
	sub	r4 r7 r6
	jump	L_cont_23305
L_else_23304 : 
	ldi	r6 r6 6
	add	r4 r0 r6
L_cont_23305 : 
	jump	L_cont_23287
L_else_23286 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_23306
	ldi	r7 r6 4
	addi	r8 r0 0
	add	r8 r7 r8
	fldi	f8 r8 0
	fmul	f5 f8 f5
	addi	r8 r0 1
	add	r8 r7 r8
	fldi	f8 r8 0
	fmul	f6 f8 f6
	fadd	f5 f5 f6
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f6 r7 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	addi	r7 r0 1
	ldi	r6 r6 6
	fldi	f6 r0 51
	fbgt	f6 f5 L_else_23308
	addi	r8 r0 0
	jump	L_cont_23309
L_else_23308 : 
	addi	r8 r0 1
L_cont_23309 : 
	xor	r6 r6 r8
	sub	r4 r7 r6
	jump	L_cont_23307
L_else_23306 : 
	sti	r6 r2 8
	add	r4 r0 r6
	fadd	f4 f0 f7
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 10
	call	L_quadratic_2681
	subi	r2 r2 10
	ldi	r4 r2 8
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_23310
	fldi	f3 r0 38
	fsub	f2 f2 f3
	jump	L_cont_23311
L_else_23310 : 
	fadd	f2 f0 f2
L_cont_23311 : 
	addi	r5 r0 1
	ldi	r4 r4 6
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23312
	addi	r6 r0 0
	jump	L_cont_23313
L_else_23312 : 
	addi	r6 r0 1
L_cont_23313 : 
	xor	r4 r4 r6
	sub	r4 r5 r4
L_cont_23307 : 
L_cont_23287 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23314
	addi	r4 r0 1
	ldi	r5 r2 7
	add	r4 r5 r4
	ldi	r5 r2 6
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23315
	addi	r4 r0 1
	return
L_else_23315 : 
	addi	r7 r0 5042
	add	r6 r7 r6
	ldi	r6 r6 0
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	sti	r4 r2 9
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_is_outside_2778
	subi	r2 r2 11
	addi	r5 r0 0
	bne	r4 r5 L_else_23316
	addi	r4 r0 1
	ldi	r5 r2 9
	add	r4 r5 r4
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r5 r2 6
	jump	L_check_all_inside_2783
L_else_23316 : 
	addi	r4 r0 0
	return
L_else_23314 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2789 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23317
	addi	r4 r0 0
	return
L_else_23317 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4977
	addi	r8 r0 4114
	addi	r9 r0 5042
	add	r9 r9 r6
	ldi	r9 r9 0
	addi	r10 r0 0
	add	r10 r8 r10
	fldi	f2 r10 0
	ldi	r10 r9 5
	addi	r11 r0 0
	add	r10 r10 r11
	fldi	f3 r10 0
	fsub	f2 f2 f3
	addi	r10 r0 1
	add	r10 r8 r10
	fldi	f3 r10 0
	ldi	r10 r9 5
	addi	r11 r0 1
	add	r10 r10 r11
	fldi	f4 r10 0
	fsub	f3 f3 f4
	addi	r10 r0 2
	add	r8 r8 r10
	fldi	f4 r8 0
	ldi	r8 r9 5
	addi	r10 r0 2
	add	r8 r8 r10
	fldi	f5 r8 0
	fsub	f4 f4 f5
	ldi	r8 r7 1
	add	r8 r8 r6
	ldi	r8 r8 0
	ldi	r10 r9 1
	addi	r11 r0 1
	sti	r5 r2 0
	sti	r4 r2 1
	sti	r6 r2 2
	bne	r10 r11 L_else_23318
	ldi	r7 r7 0
	add	r6 r0 r8
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 4
	call	L_solver_rect_fast_2704
	subi	r2 r2 4
	jump	L_cont_23319
L_else_23318 : 
	addi	r7 r0 2
	bne	r10 r7 L_else_23320
	addi	r7 r0 0
	add	r7 r8 r7
	fldi	f5 r7 0
	fldi	f6 r0 51
	fbgt	f6 f5 L_else_23322
	addi	r7 r0 0
	jump	L_cont_23323
L_else_23322 : 
	addi	r7 r0 1
L_cont_23323 : 
	addi	r9 r0 0
	bne	r7 r9 L_else_23324
	addi	r4 r0 0
	jump	L_cont_23325
L_else_23324 : 
	addi	r7 r0 4145
	addi	r9 r0 0
	addi	r10 r0 1
	add	r10 r8 r10
	fldi	f5 r10 0
	fmul	f2 f5 f2
	addi	r10 r0 2
	add	r10 r8 r10
	fldi	f5 r10 0
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	addi	r10 r0 3
	add	r8 r8 r10
	fldi	f3 r8 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	add	r7 r7 r9
	fsti	f2 r7 0
	addi	r4 r0 1
L_cont_23325 : 
	jump	L_cont_23321
L_else_23320 : 
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 4
	call	L_solver_second_fast_2717
	subi	r2 r2 4
L_cont_23321 : 
L_cont_23319 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	addi	r5 r0 0
	bne	r4 r5 L_else_23326
	addi	r4 r0 0
	jump	L_cont_23327
L_else_23326 : 
	fldi	f3 r0 25
	fbgt	f3 f2 L_else_23328
	addi	r4 r0 0
	jump	L_cont_23329
L_else_23328 : 
	addi	r4 r0 1
L_cont_23329 : 
L_cont_23327 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23330
	addi	r4 r0 5042
	ldi	r5 r2 2
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_23331
	addi	r4 r0 0
	return
L_else_23331 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2789
L_else_23330 : 
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
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23332
	addi	r4 r0 1
	jump	L_cont_23333
L_else_23332 : 
	addi	r6 r0 5042
	add	r4 r6 r4
	ldi	r4 r4 0
	fsti	f2 r2 4
	fsti	f4 r2 6
	fsti	f3 r2 8
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 11
	call	L_is_outside_2778
	subi	r2 r2 11
	addi	r5 r0 0
	bne	r4 r5 L_else_23335
	addi	r4 r0 1
	fldi	f2 r2 8
	fldi	f3 r2 6
	fldi	f4 r2 4
	ldi	r5 r2 0
	addi	r2 r2 11
	call	L_check_all_inside_2783
	subi	r2 r2 11
	jump	L_cont_23336
L_else_23335 : 
	addi	r4 r0 0
L_cont_23336 : 
L_cont_23333 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23337
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2789
L_else_23337 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2792 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23338
	addi	r4 r0 0
	return
L_else_23338 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r5 r2 0
	sti	r4 r2 1
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 3
	call	L_shadow_check_and_group_2789
	subi	r2 r2 3
	addi	r5 r0 0
	bne	r4 r5 L_else_23339
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23340
	addi	r4 r0 0
	return
L_else_23340 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 2
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 4
	call	L_shadow_check_and_group_2789
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_23341
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23342
	addi	r4 r0 0
	return
L_else_23342 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 3
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 5
	call	L_shadow_check_and_group_2789
	subi	r2 r2 5
	addi	r5 r0 0
	bne	r4 r5 L_else_23343
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23344
	addi	r4 r0 0
	return
L_else_23344 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 4
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_shadow_check_and_group_2789
	subi	r2 r2 6
	addi	r5 r0 0
	bne	r4 r5 L_else_23345
	addi	r4 r0 1
	ldi	r5 r2 4
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_one_or_group_2792
L_else_23345 : 
	addi	r4 r0 1
	return
L_else_23343 : 
	addi	r4 r0 1
	return
L_else_23341 : 
	addi	r4 r0 1
	return
L_else_23339 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2795 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_23346
	addi	r4 r0 0
	return
L_else_23346 : 
	addi	r8 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r7 r8 L_else_23347
	addi	r4 r0 1
	jump	L_cont_23348
L_else_23347 : 
	addi	r8 r0 4977
	addi	r9 r0 4114
	addi	r10 r0 5042
	add	r10 r10 r7
	ldi	r10 r10 0
	addi	r11 r0 0
	add	r11 r9 r11
	fldi	f2 r11 0
	ldi	r11 r10 5
	addi	r12 r0 0
	add	r11 r11 r12
	fldi	f3 r11 0
	fsub	f2 f2 f3
	addi	r11 r0 1
	add	r11 r9 r11
	fldi	f3 r11 0
	ldi	r11 r10 5
	addi	r12 r0 1
	add	r11 r11 r12
	fldi	f4 r11 0
	fsub	f3 f3 f4
	addi	r11 r0 2
	add	r9 r9 r11
	fldi	f4 r9 0
	ldi	r9 r10 5
	addi	r11 r0 2
	add	r9 r9 r11
	fldi	f5 r9 0
	fsub	f4 f4 f5
	ldi	r9 r8 1
	add	r7 r9 r7
	ldi	r7 r7 0
	ldi	r9 r10 1
	addi	r11 r0 1
	bne	r9 r11 L_else_23349
	ldi	r8 r8 0
	add	r6 r0 r7
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 4
	call	L_solver_rect_fast_2704
	subi	r2 r2 4
	jump	L_cont_23350
L_else_23349 : 
	addi	r8 r0 2
	bne	r9 r8 L_else_23351
	addi	r8 r0 0
	add	r8 r7 r8
	fldi	f5 r8 0
	fldi	f6 r0 51
	fbgt	f6 f5 L_else_23353
	addi	r8 r0 0
	jump	L_cont_23354
L_else_23353 : 
	addi	r8 r0 1
L_cont_23354 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_23355
	addi	r4 r0 0
	jump	L_cont_23356
L_else_23355 : 
	addi	r8 r0 4145
	addi	r9 r0 0
	addi	r10 r0 1
	add	r10 r7 r10
	fldi	f5 r10 0
	fmul	f2 f5 f2
	addi	r10 r0 2
	add	r10 r7 r10
	fldi	f5 r10 0
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	addi	r10 r0 3
	add	r7 r7 r10
	fldi	f3 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	add	r7 r8 r9
	fsti	f2 r7 0
	addi	r4 r0 1
L_cont_23356 : 
	jump	L_cont_23352
L_else_23351 : 
	add	r5 r0 r7
	add	r4 r0 r10
	addi	r2 r2 4
	call	L_solver_second_fast_2717
	subi	r2 r2 4
L_cont_23352 : 
L_cont_23350 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23357
	addi	r4 r0 0
	jump	L_cont_23358
L_else_23357 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f3 f2 L_else_23359
	addi	r4 r0 0
	jump	L_cont_23360
L_else_23359 : 
	addi	r4 r0 1
L_cont_23360 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23361
	addi	r4 r0 0
	jump	L_cont_23362
L_else_23361 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23363
	addi	r4 r0 0
	jump	L_cont_23364
L_else_23363 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2789
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_23365
	addi	r4 r0 2
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23367
	addi	r4 r0 0
	jump	L_cont_23368
L_else_23367 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2789
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_23369
	addi	r4 r0 3
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23371
	addi	r4 r0 0
	jump	L_cont_23372
L_else_23371 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2789
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_23373
	addi	r4 r0 4
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2792
	subi	r2 r2 4
	jump	L_cont_23374
L_else_23373 : 
	addi	r4 r0 1
L_cont_23374 : 
L_cont_23372 : 
	jump	L_cont_23370
L_else_23369 : 
	addi	r4 r0 1
L_cont_23370 : 
L_cont_23368 : 
	jump	L_cont_23366
L_else_23365 : 
	addi	r4 r0 1
L_cont_23366 : 
L_cont_23364 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23375
	addi	r4 r0 0
	jump	L_cont_23376
L_else_23375 : 
	addi	r4 r0 1
L_cont_23376 : 
L_cont_23362 : 
L_cont_23358 : 
L_cont_23348 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23377
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2795
L_else_23377 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23378
	addi	r4 r0 0
	jump	L_cont_23379
L_else_23378 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2789
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_23380
	addi	r4 r0 2
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23382
	addi	r4 r0 0
	jump	L_cont_23383
L_else_23382 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2789
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_23384
	addi	r4 r0 3
	ldi	r5 r2 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23386
	addi	r4 r0 0
	jump	L_cont_23387
L_else_23386 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	add	r5 r0 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_shadow_check_and_group_2789
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_23388
	addi	r4 r0 4
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2792
	subi	r2 r2 4
	jump	L_cont_23389
L_else_23388 : 
	addi	r4 r0 1
L_cont_23389 : 
L_cont_23387 : 
	jump	L_cont_23385
L_else_23384 : 
	addi	r4 r0 1
L_cont_23385 : 
L_cont_23383 : 
	jump	L_cont_23381
L_else_23380 : 
	addi	r4 r0 1
L_cont_23381 : 
L_cont_23379 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23390
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2795
L_else_23390 : 
	addi	r4 r0 1
	return
L_solve_each_element_2798 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_23391
	return
L_else_23391 : 
	addi	r8 r0 4135
	addi	r9 r0 5042
	add	r9 r9 r7
	ldi	r9 r9 0
	addi	r10 r0 0
	add	r10 r8 r10
	fldi	f2 r10 0
	ldi	r10 r9 5
	addi	r11 r0 0
	add	r10 r10 r11
	fldi	f3 r10 0
	fsub	f2 f2 f3
	addi	r10 r0 1
	add	r10 r8 r10
	fldi	f3 r10 0
	ldi	r10 r9 5
	addi	r11 r0 1
	add	r10 r10 r11
	fldi	f4 r10 0
	fsub	f3 f3 f4
	addi	r10 r0 2
	add	r8 r8 r10
	fldi	f4 r8 0
	ldi	r8 r9 5
	addi	r10 r0 2
	add	r8 r8 r10
	fldi	f5 r8 0
	fsub	f4 f4 f5
	ldi	r8 r9 1
	addi	r10 r0 1
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	bne	r8 r10 L_else_23393
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_rect_2669
	subi	r2 r2 5
	jump	L_cont_23394
L_else_23393 : 
	addi	r10 r0 2
	bne	r8 r10 L_else_23395
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_surface_2675
	subi	r2 r2 5
	jump	L_cont_23396
L_else_23395 : 
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_second_2694
	subi	r2 r2 5
L_cont_23396 : 
L_cont_23394 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23397
	addi	r4 r0 5042
	ldi	r5 r2 3
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_23398
	return
L_else_23398 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2798
L_else_23397 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23400
	addi	r5 r0 0
	jump	L_cont_23401
L_else_23400 : 
	addi	r5 r0 1
L_cont_23401 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23402
	jump	L_cont_23403
L_else_23402 : 
	addi	r5 r0 4154
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_23404
	addi	r5 r0 0
	jump	L_cont_23405
L_else_23404 : 
	addi	r5 r0 1
L_cont_23405 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23406
	jump	L_cont_23407
L_else_23406 : 
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
	add	r5 r7 r5
	ldi	r5 r5 0
	addi	r8 r0 -1
	sti	r4 r2 4
	fsti	f5 r2 6
	fsti	f4 r2 8
	fsti	f3 r2 10
	fsti	f2 r2 12
	bne	r5 r8 L_else_23409
	addi	r4 r0 1
	jump	L_cont_23410
L_else_23409 : 
	addi	r8 r0 5042
	add	r5 r8 r5
	ldi	r5 r5 0
	add	r4 r0 r5
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 15
	call	L_is_outside_2778
	subi	r2 r2 15
	addi	r5 r0 0
	bne	r4 r5 L_else_23411
	addi	r4 r0 1
	fldi	f2 r2 10
	fldi	f3 r2 8
	fldi	f4 r2 6
	ldi	r5 r2 1
	addi	r2 r2 15
	call	L_check_all_inside_2783
	subi	r2 r2 15
	jump	L_cont_23412
L_else_23411 : 
	addi	r4 r0 0
L_cont_23412 : 
L_cont_23410 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23413
	jump	L_cont_23414
L_else_23413 : 
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r2 12
	fsti	f2 r4 0
	addi	r4 r0 4114
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f2 r2 10
	fsti	f2 r5 0
	addi	r5 r0 1
	add	r5 r4 r5
	fldi	f2 r2 8
	fsti	f2 r5 0
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f2 r2 6
	fsti	f2 r4 0
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
L_cont_23414 : 
L_cont_23407 : 
L_cont_23403 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2798
L_solve_one_or_network_2802 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_23415
	return
L_else_23415 : 
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
	call	L_solve_each_element_2798
	subi	r2 r2 4
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23417
	return
L_else_23417 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 3
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 5
	call	L_solve_each_element_2798
	subi	r2 r2 5
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23419
	return
L_else_23419 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 4
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 6
	call	L_solve_each_element_2798
	subi	r2 r2 6
	addi	r4 r0 1
	ldi	r5 r2 4
	add	r4 r5 r4
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23421
	return
L_else_23421 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 5
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 7
	call	L_solve_each_element_2798
	subi	r2 r2 7
	addi	r4 r0 1
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_one_or_network_2802
L_trace_or_matrix_2806 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 0
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_23423
	return
L_else_23423 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_23425
	addi	r8 r0 1
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_23427
	jump	L_cont_23428
L_else_23427 : 
	addi	r9 r0 4155
	add	r8 r9 r8
	ldi	r8 r8 0
	addi	r9 r0 0
	sti	r7 r2 3
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solve_each_element_2798
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23429
	jump	L_cont_23430
L_else_23429 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2798
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23431
	jump	L_cont_23432
L_else_23431 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2798
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_2802
	subi	r2 r2 5
L_cont_23432 : 
L_cont_23430 : 
L_cont_23428 : 
	jump	L_cont_23426
L_else_23425 : 
	addi	r9 r0 4135
	addi	r10 r0 5042
	add	r8 r10 r8
	ldi	r8 r8 0
	addi	r10 r0 0
	add	r10 r9 r10
	fldi	f2 r10 0
	ldi	r10 r8 5
	addi	r11 r0 0
	add	r10 r10 r11
	fldi	f3 r10 0
	fsub	f2 f2 f3
	addi	r10 r0 1
	add	r10 r9 r10
	fldi	f3 r10 0
	ldi	r10 r8 5
	addi	r11 r0 1
	add	r10 r10 r11
	fldi	f4 r10 0
	fsub	f3 f3 f4
	addi	r10 r0 2
	add	r9 r9 r10
	fldi	f4 r9 0
	ldi	r9 r8 5
	addi	r10 r0 2
	add	r9 r9 r10
	fldi	f5 r9 0
	fsub	f4 f4 f5
	ldi	r9 r8 1
	addi	r10 r0 1
	sti	r7 r2 3
	bne	r9 r10 L_else_23433
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_rect_2669
	subi	r2 r2 5
	jump	L_cont_23434
L_else_23433 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_23435
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_surface_2675
	subi	r2 r2 5
	jump	L_cont_23436
L_else_23435 : 
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_second_2694
	subi	r2 r2 5
L_cont_23436 : 
L_cont_23434 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23437
	jump	L_cont_23438
L_else_23437 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_23439
	addi	r4 r0 0
	jump	L_cont_23440
L_else_23439 : 
	addi	r4 r0 1
L_cont_23440 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23441
	jump	L_cont_23442
L_else_23441 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23443
	jump	L_cont_23444
L_else_23443 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2798
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23445
	jump	L_cont_23446
L_else_23445 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2798
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23447
	jump	L_cont_23448
L_else_23447 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_2798
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_2802
	subi	r2 r2 5
L_cont_23448 : 
L_cont_23446 : 
L_cont_23444 : 
L_cont_23442 : 
L_cont_23438 : 
L_cont_23426 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_2806
L_solve_each_element_fast_2812 : 
	ldi	r7 r6 0
	add	r8 r5 r4
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_23449
	return
L_else_23449 : 
	addi	r9 r0 5042
	add	r9 r9 r8
	ldi	r9 r9 0
	ldi	r10 r9 10
	addi	r11 r0 0
	add	r11 r10 r11
	fldi	f2 r11 0
	addi	r11 r0 1
	add	r11 r10 r11
	fldi	f3 r11 0
	addi	r11 r0 2
	add	r11 r10 r11
	fldi	f4 r11 0
	ldi	r11 r6 1
	add	r11 r11 r8
	ldi	r11 r11 0
	ldi	r12 r9 1
	addi	r13 r0 1
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	sti	r4 r2 3
	sti	r8 r2 4
	bne	r12 r13 L_else_23451
	ldi	r10 r6 0
	add	r6 r0 r11
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_solver_rect_fast_2704
	subi	r2 r2 6
	jump	L_cont_23452
L_else_23451 : 
	addi	r13 r0 2
	bne	r12 r13 L_else_23453
	addi	r9 r0 0
	add	r9 r11 r9
	fldi	f2 r9 0
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23455
	addi	r9 r0 0
	jump	L_cont_23456
L_else_23455 : 
	addi	r9 r0 1
L_cont_23456 : 
	addi	r12 r0 0
	bne	r9 r12 L_else_23457
	addi	r4 r0 0
	jump	L_cont_23458
L_else_23457 : 
	addi	r9 r0 4145
	addi	r12 r0 0
	addi	r13 r0 0
	add	r11 r11 r13
	fldi	f2 r11 0
	addi	r11 r0 3
	add	r10 r10 r11
	fldi	f3 r10 0
	fmul	f2 f2 f3
	add	r9 r9 r12
	fsti	f2 r9 0
	addi	r4 r0 1
L_cont_23458 : 
	jump	L_cont_23454
L_else_23453 : 
	add	r6 r0 r10
	add	r5 r0 r11
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_solver_second_fast2_2734
	subi	r2 r2 6
L_cont_23454 : 
L_cont_23452 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23459
	addi	r4 r0 5042
	ldi	r5 r2 4
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_23460
	return
L_else_23460 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r5 r2 2
	ldi	r6 r2 1
	jump	L_solve_each_element_fast_2812
L_else_23459 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23462
	addi	r5 r0 0
	jump	L_cont_23463
L_else_23462 : 
	addi	r5 r0 1
L_cont_23463 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23464
	jump	L_cont_23465
L_else_23464 : 
	addi	r5 r0 4154
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_23466
	addi	r5 r0 0
	jump	L_cont_23467
L_else_23466 : 
	addi	r5 r0 1
L_cont_23467 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23468
	jump	L_cont_23469
L_else_23468 : 
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
	add	r5 r6 r5
	ldi	r5 r5 0
	addi	r7 r0 -1
	sti	r4 r2 5
	fsti	f5 r2 6
	fsti	f4 r2 8
	fsti	f3 r2 10
	fsti	f2 r2 12
	bne	r5 r7 L_else_23470
	addi	r4 r0 1
	jump	L_cont_23471
L_else_23470 : 
	addi	r7 r0 5042
	add	r5 r7 r5
	ldi	r5 r5 0
	add	r4 r0 r5
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 15
	call	L_is_outside_2778
	subi	r2 r2 15
	addi	r5 r0 0
	bne	r4 r5 L_else_23472
	addi	r4 r0 1
	fldi	f2 r2 10
	fldi	f3 r2 8
	fldi	f4 r2 6
	ldi	r5 r2 2
	addi	r2 r2 15
	call	L_check_all_inside_2783
	subi	r2 r2 15
	jump	L_cont_23473
L_else_23472 : 
	addi	r4 r0 0
L_cont_23473 : 
L_cont_23471 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23474
	jump	L_cont_23475
L_else_23474 : 
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r2 12
	fsti	f2 r4 0
	addi	r4 r0 4114
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f2 r2 10
	fsti	f2 r5 0
	addi	r5 r0 1
	add	r5 r4 r5
	fldi	f2 r2 8
	fsti	f2 r5 0
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f2 r2 6
	fsti	f2 r4 0
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
L_cont_23475 : 
L_cont_23469 : 
L_cont_23465 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r5 r2 2
	ldi	r6 r2 1
	jump	L_solve_each_element_fast_2812
L_solve_one_or_network_fast_2816 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_23476
	return
L_else_23476 : 
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
	call	L_solve_each_element_fast_2812
	subi	r2 r2 4
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23478
	return
L_else_23478 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 3
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 5
	call	L_solve_each_element_fast_2812
	subi	r2 r2 5
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23480
	return
L_else_23480 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 4
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 6
	call	L_solve_each_element_fast_2812
	subi	r2 r2 6
	addi	r4 r0 1
	ldi	r5 r2 4
	add	r4 r5 r4
	ldi	r5 r2 1
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_23482
	return
L_else_23482 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	ldi	r8 r2 0
	sti	r4 r2 5
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 7
	call	L_solve_each_element_fast_2812
	subi	r2 r2 7
	addi	r4 r0 1
	ldi	r5 r2 5
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_one_or_network_fast_2816
L_trace_or_matrix_fast_2820 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 0
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_23484
	return
L_else_23484 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_23486
	addi	r8 r0 1
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_23488
	jump	L_cont_23489
L_else_23488 : 
	addi	r9 r0 4155
	add	r8 r9 r8
	ldi	r8 r8 0
	addi	r9 r0 0
	sti	r7 r2 3
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solve_each_element_fast_2812
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23490
	jump	L_cont_23491
L_else_23490 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2812
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23492
	jump	L_cont_23493
L_else_23492 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2812
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_fast_2816
	subi	r2 r2 5
L_cont_23493 : 
L_cont_23491 : 
L_cont_23489 : 
	jump	L_cont_23487
L_else_23486 : 
	addi	r9 r0 5042
	add	r9 r9 r8
	ldi	r9 r9 0
	ldi	r10 r9 10
	addi	r11 r0 0
	add	r11 r10 r11
	fldi	f2 r11 0
	addi	r11 r0 1
	add	r11 r10 r11
	fldi	f3 r11 0
	addi	r11 r0 2
	add	r11 r10 r11
	fldi	f4 r11 0
	ldi	r11 r6 1
	add	r8 r11 r8
	ldi	r8 r8 0
	ldi	r11 r9 1
	addi	r12 r0 1
	sti	r7 r2 3
	bne	r11 r12 L_else_23494
	ldi	r10 r6 0
	add	r6 r0 r8
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_rect_fast_2704
	subi	r2 r2 5
	jump	L_cont_23495
L_else_23494 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_23496
	addi	r9 r0 0
	add	r9 r8 r9
	fldi	f2 r9 0
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23498
	addi	r9 r0 0
	jump	L_cont_23499
L_else_23498 : 
	addi	r9 r0 1
L_cont_23499 : 
	addi	r11 r0 0
	bne	r9 r11 L_else_23500
	addi	r4 r0 0
	jump	L_cont_23501
L_else_23500 : 
	addi	r9 r0 4145
	addi	r11 r0 0
	addi	r12 r0 0
	add	r8 r8 r12
	fldi	f2 r8 0
	addi	r8 r0 3
	add	r8 r10 r8
	fldi	f3 r8 0
	fmul	f2 f2 f3
	add	r8 r9 r11
	fsti	f2 r8 0
	addi	r4 r0 1
L_cont_23501 : 
	jump	L_cont_23497
L_else_23496 : 
	add	r6 r0 r10
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 5
	call	L_solver_second_fast2_2734
	subi	r2 r2 5
L_cont_23497 : 
L_cont_23495 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23502
	jump	L_cont_23503
L_else_23502 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_23504
	addi	r4 r0 0
	jump	L_cont_23505
L_else_23504 : 
	addi	r4 r0 1
L_cont_23505 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23506
	jump	L_cont_23507
L_else_23506 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23508
	jump	L_cont_23509
L_else_23508 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2812
	subi	r2 r2 5
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23510
	jump	L_cont_23511
L_else_23510 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2812
	subi	r2 r2 5
	addi	r4 r0 3
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_23512
	jump	L_cont_23513
L_else_23512 : 
	addi	r6 r0 4155
	add	r4 r6 r4
	ldi	r4 r4 0
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r5 r0 r4
	add	r4 r0 r6
	add	r6 r0 r7
	addi	r2 r2 5
	call	L_solve_each_element_fast_2812
	subi	r2 r2 5
	addi	r4 r0 4
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_fast_2816
	subi	r2 r2 5
L_cont_23513 : 
L_cont_23511 : 
L_cont_23509 : 
L_cont_23507 : 
L_cont_23503 : 
L_cont_23487 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_fast_2820
L_get_nvector_second_2830 : 
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
	bne	r5 r6 L_else_23514
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
	jump	L_cont_23515
L_else_23514 : 
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
L_cont_23515 : 
	addi	r5 r0 4118
	ldi	r4 r4 6
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	jump	L_vecunit_sgn_2538
L_utexture_2835 : 
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
	bne	r6 r7 L_else_23516
	addi	r6 r0 0
	add	r6 r5 r6
	fldi	f2 r6 0
	ldi	r6 r4 5
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f3 r6 0
	fsub	f2 f2 f3
	fldi	f3 r0 13
	fmul	f3 f2 f3
	flr	f3 f3
	fldi	f4 r0 12
	fmul	f3 f3 f4
	fsub	f2 f2 f3
	fldi	f3 r0 15
	fbgt	f3 f2 L_else_23517
	addi	r6 r0 0
	jump	L_cont_23518
L_else_23517 : 
	addi	r6 r0 1
L_cont_23518 : 
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f2 r5 0
	ldi	r4 r4 5
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f3 r4 0
	fsub	f2 f2 f3
	fldi	f3 r0 13
	fmul	f3 f2 f3
	flr	f3 f3
	fldi	f4 r0 12
	fmul	f3 f3 f4
	fsub	f2 f2 f3
	fldi	f3 r0 15
	fbgt	f3 f2 L_else_23519
	addi	r4 r0 0
	jump	L_cont_23520
L_else_23519 : 
	addi	r4 r0 1
L_cont_23520 : 
	addi	r5 r0 4121
	addi	r7 r0 1
	addi	r8 r0 0
	bne	r6 r8 L_else_23521
	addi	r6 r0 0
	bne	r4 r6 L_else_23523
	fldi	f2 r0 17
	jump	L_cont_23524
L_else_23523 : 
	fldi	f2 r0 51
L_cont_23524 : 
	jump	L_cont_23522
L_else_23521 : 
	addi	r6 r0 0
	bne	r4 r6 L_else_23525
	fldi	f2 r0 51
	jump	L_cont_23526
L_else_23525 : 
	fldi	f2 r0 17
L_cont_23526 : 
L_cont_23522 : 
	add	r4 r5 r7
	fsti	f2 r4 0
	return
L_else_23516 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_23528
	addi	r4 r0 1
	add	r4 r5 r4
	fldi	f2 r4 0
	fldi	f3 r0 14
	fmul	f2 f2 f3
	fldi	f3 r0 57
	fldi	f4 r0 56
	fbgt	f2 f4 L_else_23529
	fldi	f5 r0 55
	fbgt	f5 f2 L_else_23531
	fldi	f3 r0 54
	fldi	f5 r0 53
	fldi	f6 r0 52
	fldi	f7 r0 51
	fbgt	f2 f7 L_else_23533
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_23535
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	jump	L_cont_23536
L_else_23535 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_23537
	fadd	f2 f5 f2
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	jump	L_cont_23538
L_else_23537 : 
	fadd	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	fsub	f2 f0 f2
L_cont_23538 : 
L_cont_23536 : 
	jump	L_cont_23534
L_else_23533 : 
	fbgt	f2 f3 L_else_23539
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	jump	L_cont_23540
L_else_23539 : 
	fbgt	f2 f6 L_else_23541
	fsub	f2 f2 f5
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 44
	fmul	f7 f8 f7
	fldi	f8 r0 43
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 42
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 41
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 40
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 39
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fadd	f2 f2 f3
	jump	L_cont_23542
L_else_23541 : 
	fsub	f2 f4 f2
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 50
	fmul	f3 f9 f3
	fldi	f9 r0 49
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 48
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 47
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 46
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 45
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
L_cont_23542 : 
L_cont_23540 : 
L_cont_23534 : 
	jump	L_cont_23532
L_else_23531 : 
	fadd	f2 f2 f3
	addi	r2 r2 1
	call	L_sin_2493
	subi	r2 r2 1
L_cont_23532 : 
	jump	L_cont_23530
L_else_23529 : 
	fsub	f2 f2 f3
	addi	r2 r2 1
	call	L_sin_2493
	subi	r2 r2 1
L_cont_23530 : 
	fmul	f2 f2 f2
	addi	r4 r0 4121
	addi	r5 r0 0
	fldi	f3 r0 17
	fmul	f3 f3 f2
	add	r4 r4 r5
	fsti	f3 r4 0
	addi	r4 r0 4121
	addi	r5 r0 1
	fldi	f3 r0 17
	fldi	f4 r0 38
	fsub	f2 f4 f2
	fmul	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_23528 : 
	addi	r7 r0 3
	bne	r6 r7 L_else_23544
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
	fldi	f3 r0 28
	fldi	f4 r0 38
	fbgt	f2 f4 L_else_23545
	fldi	f4 r0 38
	jump	L_cont_23546
L_else_23545 : 
	fldi	f4 r0 38
	fdiv	f4 f4 f2
L_cont_23546 : 
	fsti	f2 r2 0
	addi	r2 r2 3
	call	L_isqrt_2499
	subi	r2 r2 3
	fldi	f3 r2 0
	fmul	f2 f3 f2
	fldi	f3 r0 15
	fdiv	f2 f2 f3
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 19
	fmul	f2 f2 f3
	addi	r2 r2 3
	call	L_cos_2495
	subi	r2 r2 3
	fmul	f2 f2 f2
	addi	r4 r0 4121
	addi	r5 r0 1
	fldi	f3 r0 17
	fmul	f3 f2 f3
	add	r4 r4 r5
	fsti	f3 r4 0
	addi	r4 r0 4121
	addi	r5 r0 2
	fldi	f3 r0 38
	fsub	f2 f3 f2
	fldi	f3 r0 17
	fmul	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_23544 : 
	addi	r7 r0 4
	bne	r6 r7 L_else_23548
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
	fldi	f4 r0 28
	fldi	f5 r0 38
	fbgt	f3 f5 L_else_23549
	fldi	f5 r0 38
	jump	L_cont_23550
L_else_23549 : 
	fldi	f5 r0 38
	fdiv	f5 f5 f3
L_cont_23550 : 
	sti	r4 r2 2
	sti	r5 r2 3
	fsti	f2 r2 4
	fsti	f3 r2 6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 9
	call	L_isqrt_2499
	subi	r2 r2 9
	fldi	f3 r2 6
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fmul	f2 f3 f2
	addi	r4 r0 2
	ldi	r5 r2 3
	add	r4 r5 r4
	fldi	f3 r4 0
	ldi	r4 r2 2
	ldi	r6 r4 5
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f4 r6 0
	fsub	f3 f3 f4
	ldi	r6 r4 4
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f4 r6 0
	fldi	f5 r0 28
	fldi	f6 r0 38
	fbgt	f4 f6 L_else_23551
	fldi	f6 r0 38
	jump	L_cont_23552
L_else_23551 : 
	fldi	f6 r0 38
	fdiv	f6 f6 f4
L_cont_23552 : 
	fsti	f2 r2 8
	fsti	f3 r2 10
	fsti	f4 r2 12
	fadd	f3 f0 f5
	fadd	f2 f0 f4
	fadd	f4 f0 f6
	addi	r2 r2 15
	call	L_isqrt_2499
	subi	r2 r2 15
	fldi	f3 r2 12
	fmul	f2 f3 f2
	fldi	f3 r2 10
	fmul	f2 f3 f2
	fldi	f3 r2 8
	fmul	f4 f3 f3
	fmul	f5 f2 f2
	fadd	f4 f4 f5
	fldi	f5 r0 51
	fbgt	f5 f3 L_else_23553
	fadd	f5 f0 f3
	jump	L_cont_23554
L_else_23553 : 
	fsub	f5 f0 f3
L_cont_23554 : 
	fldi	f6 r0 22
	fbgt	f6 f5 L_else_23555
	addi	r4 r0 0
	jump	L_cont_23556
L_else_23555 : 
	addi	r4 r0 1
L_cont_23556 : 
	addi	r5 r0 0
	fsti	f4 r2 14
	bne	r4 r5 L_else_23557
	fdiv	f2 f2 f3
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23559
	fadd	f2 f0 f2
	jump	L_cont_23560
L_else_23559 : 
	fsub	f2 f0 f2
L_cont_23560 : 
	addi	r2 r2 17
	call	L_atan_2497
	subi	r2 r2 17
	fldi	f3 r0 20
	fmul	f2 f2 f3
	fldi	f3 r0 19
	fdiv	f2 f2 f3
	jump	L_cont_23558
L_else_23557 : 
	fldi	f2 r0 21
L_cont_23558 : 
	flr	f3 f2
	fsub	f2 f2 f3
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	fldi	f3 r4 0
	ldi	r4 r2 2
	ldi	r5 r4 5
	addi	r6 r0 1
	add	r5 r5 r6
	fldi	f4 r5 0
	fsub	f3 f3 f4
	ldi	r4 r4 4
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f4 r4 0
	fldi	f5 r0 28
	fldi	f6 r0 38
	fbgt	f4 f6 L_else_23561
	fldi	f6 r0 38
	jump	L_cont_23562
L_else_23561 : 
	fldi	f6 r0 38
	fdiv	f6 f6 f4
L_cont_23562 : 
	fsti	f2 r2 16
	fsti	f3 r2 18
	fsti	f4 r2 20
	fadd	f3 f0 f5
	fadd	f2 f0 f4
	fadd	f4 f0 f6
	addi	r2 r2 23
	call	L_isqrt_2499
	subi	r2 r2 23
	fldi	f3 r2 20
	fmul	f2 f3 f2
	fldi	f3 r2 18
	fmul	f2 f3 f2
	fldi	f3 r0 51
	fldi	f4 r2 14
	fbgt	f3 f4 L_else_23563
	fadd	f3 f0 f4
	jump	L_cont_23564
L_else_23563 : 
	fsub	f3 f0 f4
L_cont_23564 : 
	fldi	f5 r0 22
	fbgt	f5 f3 L_else_23565
	addi	r4 r0 0
	jump	L_cont_23566
L_else_23565 : 
	addi	r4 r0 1
L_cont_23566 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23567
	fdiv	f2 f2 f4
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23569
	fadd	f2 f0 f2
	jump	L_cont_23570
L_else_23569 : 
	fsub	f2 f0 f2
L_cont_23570 : 
	addi	r2 r2 23
	call	L_atan_2497
	subi	r2 r2 23
	fldi	f3 r0 20
	fmul	f2 f2 f3
	fldi	f3 r0 19
	fdiv	f2 f2 f3
	jump	L_cont_23568
L_else_23567 : 
	fldi	f2 r0 21
L_cont_23568 : 
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 18
	fldi	f4 r0 39
	fldi	f5 r2 16
	fsub	f4 f4 f5
	fmul	f4 f4 f4
	fsub	f3 f3 f4
	fldi	f4 r0 39
	fsub	f2 f4 f2
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23571
	addi	r4 r0 0
	jump	L_cont_23572
L_else_23571 : 
	addi	r4 r0 1
L_cont_23572 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23573
	fadd	f2 f0 f2
	jump	L_cont_23574
L_else_23573 : 
	fldi	f2 r0 51
L_cont_23574 : 
	addi	r4 r0 4121
	addi	r5 r0 2
	fldi	f3 r0 17
	fmul	f2 f3 f2
	fldi	f3 r0 16
	fdiv	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_23548 : 
	return
L_add_light_2838 : 
	fldi	f5 r0 51
	fbgt	f2 f5 L_else_23577
	addi	r4 r0 0
	jump	L_cont_23578
L_else_23577 : 
	addi	r4 r0 1
L_cont_23578 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23579
	jump	L_cont_23580
L_else_23579 : 
	addi	r4 r0 4127
	addi	r5 r0 4121
	addi	r6 r0 0
	addi	r7 r0 0
	add	r7 r4 r7
	fldi	f5 r7 0
	addi	r7 r0 0
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f2 f6
	fadd	f5 f5 f6
	add	r6 r4 r6
	fsti	f5 r6 0
	addi	r6 r0 1
	addi	r7 r0 1
	add	r7 r4 r7
	fldi	f5 r7 0
	addi	r7 r0 1
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f2 f6
	fadd	f5 f5 f6
	add	r6 r4 r6
	fsti	f5 r6 0
	addi	r6 r0 2
	addi	r7 r0 2
	add	r7 r4 r7
	fldi	f5 r7 0
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f6 r5 0
	fmul	f2 f2 f6
	fadd	f2 f5 f2
	add	r4 r4 r6
	fsti	f2 r4 0
L_cont_23580 : 
	fldi	f2 r0 51
	fbgt	f3 f2 L_else_23581
	addi	r4 r0 0
	jump	L_cont_23582
L_else_23581 : 
	addi	r4 r0 1
L_cont_23582 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23583
	return
L_else_23583 : 
	fmul	f2 f3 f3
	fmul	f2 f2 f2
	fmul	f2 f2 f4
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
L_trace_reflections_2842 : 
	addi	r6 r0 0
	bgt	r6 r4 L_else_23586
	addi	r6 r0 4257
	add	r6 r6 r4
	ldi	r6 r6 0
	ldi	r7 r6 1
	addi	r8 r0 4154
	addi	r9 r0 0
	fldi	f4 r0 11
	add	r8 r8 r9
	fsti	f4 r8 0
	addi	r8 r0 0
	addi	r9 r0 4255
	addi	r10 r0 0
	add	r9 r9 r10
	ldi	r9 r9 0
	sti	r4 r2 0
	fsti	f3 r2 2
	sti	r5 r2 4
	fsti	f2 r2 6
	sti	r7 r2 8
	sti	r6 r2 9
	add	r6 r0 r7
	add	r5 r0 r9
	add	r4 r0 r8
	addi	r2 r2 11
	call	L_trace_or_matrix_fast_2820
	subi	r2 r2 11
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_23589
	addi	r4 r0 0
	jump	L_cont_23590
L_else_23589 : 
	addi	r4 r0 1
L_cont_23590 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23591
	addi	r4 r0 0
	jump	L_cont_23592
L_else_23591 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_23593
	addi	r4 r0 0
	jump	L_cont_23594
L_else_23593 : 
	addi	r4 r0 1
L_cont_23594 : 
L_cont_23592 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23595
	jump	L_cont_23596
L_else_23595 : 
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
	bne	r4 r6 L_else_23597
	addi	r4 r0 0
	addi	r6 r0 4255
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_shadow_check_one_or_matrix_2795
	subi	r2 r2 11
	addi	r5 r0 0
	bne	r4 r5 L_else_23599
	addi	r4 r0 4118
	ldi	r5 r2 8
	ldi	r6 r5 0
	addi	r7 r0 0
	add	r7 r4 r7
	fldi	f2 r7 0
	addi	r7 r0 0
	add	r7 r6 r7
	fldi	f3 r7 0
	fmul	f2 f2 f3
	addi	r7 r0 1
	add	r7 r4 r7
	fldi	f3 r7 0
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r7 r0 2
	add	r4 r4 r7
	fldi	f3 r4 0
	addi	r4 r0 2
	add	r4 r6 r4
	fldi	f4 r4 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	ldi	r4 r2 9
	fldi	f3 r4 2
	fldi	f4 r2 6
	fmul	f5 f3 f4
	fmul	f2 f5 f2
	ldi	r4 r5 0
	addi	r5 r0 0
	ldi	r6 r2 4
	add	r5 r6 r5
	fldi	f5 r5 0
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f6 r5 0
	fmul	f5 f5 f6
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f6 r5 0
	addi	r5 r0 1
	add	r5 r4 r5
	fldi	f7 r5 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f6 r5 0
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f7 r4 0
	fmul	f6 f6 f7
	fadd	f5 f5 f6
	fmul	f3 f3 f5
	fldi	f5 r2 2
	fadd	f4 f0 f5
	addi	r2 r2 11
	call	L_add_light_2838
	subi	r2 r2 11
	jump	L_cont_23600
L_else_23599 : 
L_cont_23600 : 
	jump	L_cont_23598
L_else_23597 : 
L_cont_23598 : 
L_cont_23596 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	sub	r4 r5 r4
	fldi	f2 r2 6
	fldi	f3 r2 2
	ldi	r5 r2 4
	jump	L_trace_reflections_2842
L_else_23586 : 
	return
L_trace_ray_2847 : 
	addi	r7 r0 4
	bgt	r4 r7 L_else_23602
	ldi	r7 r6 2
	addi	r8 r0 4154
	addi	r9 r0 0
	fldi	f4 r0 11
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
	call	L_trace_or_matrix_2806
	subi	r2 r2 10
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_23604
	addi	r4 r0 0
	jump	L_cont_23605
L_else_23604 : 
	addi	r4 r0 1
L_cont_23605 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23606
	addi	r4 r0 0
	jump	L_cont_23607
L_else_23606 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_23608
	addi	r4 r0 0
	jump	L_cont_23609
L_else_23608 : 
	addi	r4 r0 1
L_cont_23609 : 
L_cont_23607 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23610
	addi	r4 r0 -1
	ldi	r5 r2 7
	ldi	r6 r2 8
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 0
	bne	r5 r4 L_else_23611
	return
L_else_23611 : 
	addi	r4 r0 4111
	addi	r5 r0 0
	ldi	r6 r2 6
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f3 r5 0
	fmul	f2 f2 f3
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f3 r5 0
	addi	r5 r0 1
	add	r5 r4 r5
	fldi	f4 r5 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f3 r5 0
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f4 r4 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsub	f2 f0 f2
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23613
	addi	r4 r0 0
	jump	L_cont_23614
L_else_23613 : 
	addi	r4 r0 1
L_cont_23614 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23615
	return
L_else_23615 : 
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
L_else_23610 : 
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
	ldi	r7 r5 1
	addi	r8 r0 1
	sti	r6 r2 9
	fsti	f2 r2 10
	sti	r4 r2 12
	sti	r5 r2 13
	bne	r7 r8 L_else_23618
	addi	r7 r0 4146
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r8 r0 4118
	fldi	f4 r0 51
	addi	r9 r0 0
	add	r9 r8 r9
	fsti	f4 r9 0
	addi	r9 r0 1
	add	r9 r8 r9
	fsti	f4 r9 0
	addi	r9 r0 2
	add	r8 r8 r9
	fsti	f4 r8 0
	addi	r8 r0 4118
	addi	r9 r0 1
	sub	r9 r7 r9
	addi	r10 r0 1
	sub	r7 r7 r10
	ldi	r10 r2 6
	add	r7 r10 r7
	fldi	f4 r7 0
	fldi	f5 r0 51
	fbne	f4 f5 L_else_23620
	addi	r7 r0 1
	jump	L_cont_23621
L_else_23620 : 
	addi	r7 r0 0
L_cont_23621 : 
	addi	r11 r0 0
	bne	r7 r11 L_else_23622
	fldi	f5 r0 51
	fbgt	f4 f5 L_else_23624
	addi	r7 r0 0
	jump	L_cont_23625
L_else_23624 : 
	addi	r7 r0 1
L_cont_23625 : 
	addi	r11 r0 0
	bne	r7 r11 L_else_23626
	fldi	f4 r0 27
	jump	L_cont_23627
L_else_23626 : 
	fldi	f4 r0 38
L_cont_23627 : 
	jump	L_cont_23623
L_else_23622 : 
	fldi	f4 r0 51
L_cont_23623 : 
	fsub	f4 f0 f4
	add	r7 r8 r9
	fsti	f4 r7 0
	jump	L_cont_23619
L_else_23618 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_23628
	addi	r7 r0 4118
	addi	r8 r0 0
	ldi	r9 r5 4
	addi	r10 r0 0
	add	r9 r9 r10
	fldi	f4 r9 0
	fsub	f4 f0 f4
	add	r7 r7 r8
	fsti	f4 r7 0
	addi	r7 r0 4118
	addi	r8 r0 1
	ldi	r9 r5 4
	addi	r10 r0 1
	add	r9 r9 r10
	fldi	f4 r9 0
	fsub	f4 f0 f4
	add	r7 r7 r8
	fsti	f4 r7 0
	addi	r7 r0 4118
	addi	r8 r0 2
	ldi	r9 r5 4
	addi	r10 r0 2
	add	r9 r9 r10
	fldi	f4 r9 0
	fsub	f4 f0 f4
	add	r7 r7 r8
	fsti	f4 r7 0
	jump	L_cont_23629
L_else_23628 : 
	add	r4 r0 r5
	addi	r2 r2 15
	call	L_get_nvector_second_2830
	subi	r2 r2 15
L_cont_23629 : 
L_cont_23619 : 
	addi	r4 r0 4135
	addi	r5 r0 4114
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
	addi	r5 r0 4114
	ldi	r4 r2 13
	addi	r2 r2 15
	call	L_utexture_2835
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
	addi	r9 r0 0
	addi	r10 r0 0
	add	r10 r8 r10
	fldi	f2 r10 0
	add	r9 r7 r9
	fsti	f2 r9 0
	addi	r9 r0 1
	addi	r10 r0 1
	add	r10 r8 r10
	fldi	f2 r10 0
	add	r9 r7 r9
	fsti	f2 r9 0
	addi	r9 r0 2
	addi	r10 r0 2
	add	r8 r8 r10
	fldi	f2 r8 0
	add	r7 r7 r9
	fsti	f2 r7 0
	ldi	r7 r4 3
	ldi	r8 r2 13
	ldi	r9 r8 7
	addi	r10 r0 0
	add	r9 r9 r10
	fldi	f2 r9 0
	fldi	f3 r0 39
	fbgt	f3 f2 L_else_23630
	addi	r9 r0 0
	jump	L_cont_23631
L_else_23630 : 
	addi	r9 r0 1
L_cont_23631 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_23632
	addi	r9 r0 1
	add	r7 r7 r5
	sti	r9 r7 0
	ldi	r7 r4 4
	add	r9 r7 r5
	ldi	r9 r9 0
	addi	r10 r0 4121
	addi	r11 r0 0
	addi	r12 r0 0
	add	r12 r10 r12
	fldi	f2 r12 0
	add	r11 r9 r11
	fsti	f2 r11 0
	addi	r11 r0 1
	addi	r12 r0 1
	add	r12 r10 r12
	fldi	f2 r12 0
	add	r11 r9 r11
	fsti	f2 r11 0
	addi	r11 r0 2
	addi	r12 r0 2
	add	r10 r10 r12
	fldi	f2 r10 0
	add	r9 r9 r11
	fsti	f2 r9 0
	add	r7 r7 r5
	ldi	r7 r7 0
	fldi	f2 r0 9
	fldi	f3 r2 10
	fmul	f2 f2 f3
	addi	r9 r0 0
	addi	r10 r0 0
	add	r10 r7 r10
	fldi	f4 r10 0
	fmul	f4 f4 f2
	add	r9 r7 r9
	fsti	f4 r9 0
	addi	r9 r0 1
	addi	r10 r0 1
	add	r10 r7 r10
	fldi	f4 r10 0
	fmul	f4 f4 f2
	add	r9 r7 r9
	fsti	f4 r9 0
	addi	r9 r0 2
	addi	r10 r0 2
	add	r10 r7 r10
	fldi	f4 r10 0
	fmul	f2 f4 f2
	add	r7 r7 r9
	fsti	f2 r7 0
	ldi	r7 r4 7
	add	r7 r7 r5
	ldi	r7 r7 0
	addi	r9 r0 4118
	addi	r10 r0 0
	addi	r11 r0 0
	add	r11 r9 r11
	fldi	f2 r11 0
	add	r10 r7 r10
	fsti	f2 r10 0
	addi	r10 r0 1
	addi	r11 r0 1
	add	r11 r9 r11
	fldi	f2 r11 0
	add	r10 r7 r10
	fsti	f2 r10 0
	addi	r10 r0 2
	addi	r11 r0 2
	add	r9 r9 r11
	fldi	f2 r9 0
	add	r7 r7 r10
	fsti	f2 r7 0
	jump	L_cont_23633
L_else_23632 : 
	addi	r9 r0 0
	add	r7 r7 r5
	sti	r9 r7 0
L_cont_23633 : 
	fldi	f2 r0 8
	addi	r7 r0 4118
	addi	r9 r0 0
	ldi	r10 r2 6
	add	r9 r10 r9
	fldi	f3 r9 0
	addi	r9 r0 0
	add	r9 r7 r9
	fldi	f4 r9 0
	fmul	f3 f3 f4
	addi	r9 r0 1
	add	r9 r10 r9
	fldi	f4 r9 0
	addi	r9 r0 1
	add	r9 r7 r9
	fldi	f5 r9 0
	fmul	f4 f4 f5
	fadd	f3 f3 f4
	addi	r9 r0 2
	add	r9 r10 r9
	fldi	f4 r9 0
	addi	r9 r0 2
	add	r7 r7 r9
	fldi	f5 r7 0
	fmul	f4 f4 f5
	fadd	f3 f3 f4
	fmul	f2 f2 f3
	addi	r7 r0 4118
	addi	r9 r0 0
	addi	r11 r0 0
	add	r11 r10 r11
	fldi	f3 r11 0
	addi	r11 r0 0
	add	r11 r7 r11
	fldi	f4 r11 0
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	add	r9 r10 r9
	fsti	f3 r9 0
	addi	r9 r0 1
	addi	r11 r0 1
	add	r11 r10 r11
	fldi	f3 r11 0
	addi	r11 r0 1
	add	r11 r7 r11
	fldi	f4 r11 0
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	add	r9 r10 r9
	fsti	f3 r9 0
	addi	r9 r0 2
	addi	r11 r0 2
	add	r11 r10 r11
	fldi	f3 r11 0
	addi	r11 r0 2
	add	r7 r7 r11
	fldi	f4 r7 0
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	add	r7 r10 r9
	fsti	f2 r7 0
	ldi	r7 r8 7
	addi	r9 r0 1
	add	r7 r7 r9
	fldi	f2 r7 0
	fldi	f3 r2 4
	fmul	f2 f3 f2
	addi	r7 r0 0
	addi	r9 r0 4255
	addi	r11 r0 0
	add	r9 r9 r11
	ldi	r9 r9 0
	fsti	f2 r2 14
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 17
	call	L_shadow_check_one_or_matrix_2795
	subi	r2 r2 17
	addi	r5 r0 0
	bne	r4 r5 L_else_23634
	addi	r4 r0 4118
	addi	r5 r0 4111
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
	fsub	f2 f0 f2
	fldi	f3 r2 10
	fmul	f2 f2 f3
	addi	r4 r0 4111
	addi	r5 r0 0
	ldi	r6 r2 6
	add	r5 r6 r5
	fldi	f4 r5 0
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f5 r5 0
	fmul	f4 f4 f5
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f5 r5 0
	addi	r5 r0 1
	add	r5 r4 r5
	fldi	f6 r5 0
	fmul	f5 f5 f6
	fadd	f4 f4 f5
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f5 r5 0
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f6 r4 0
	fmul	f5 f5 f6
	fadd	f4 f4 f5
	fsub	f4 f0 f4
	fldi	f5 r2 14
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 17
	call	L_add_light_2838
	subi	r2 r2 17
	jump	L_cont_23635
L_else_23634 : 
L_cont_23635 : 
	addi	r4 r0 4114
	addi	r5 r0 4138
	addi	r6 r0 0
	addi	r7 r0 0
	add	r7 r4 r7
	fldi	f2 r7 0
	add	r6 r5 r6
	fsti	f2 r6 0
	addi	r6 r0 1
	addi	r7 r0 1
	add	r7 r4 r7
	fldi	f2 r7 0
	add	r6 r5 r6
	fsti	f2 r6 0
	addi	r6 r0 2
	addi	r7 r0 2
	add	r7 r4 r7
	fldi	f2 r7 0
	add	r5 r5 r6
	fsti	f2 r5 0
	addi	r5 r0 4144
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 1
	sub	r5 r5 r6
	addi	r2 r2 17
	call	L_setup_startp_constants_2758
	subi	r2 r2 17
	addi	r4 r0 4147
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r4 r4 r5
	fldi	f2 r2 10
	fldi	f3 r2 14
	ldi	r5 r2 6
	addi	r2 r2 17
	call	L_trace_reflections_2842
	subi	r2 r2 17
	fldi	f2 r0 7
	fldi	f3 r2 4
	fbgt	f3 f2 L_else_23636
	addi	r4 r0 0
	jump	L_cont_23637
L_else_23636 : 
	addi	r4 r0 1
L_cont_23637 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23638
	return
L_else_23638 : 
	addi	r4 r0 4
	ldi	r5 r2 7
	bgt	r4 r5 L_else_23640
	jump	L_cont_23641
L_else_23640 : 
	addi	r4 r0 1
	add	r4 r5 r4
	addi	r6 r0 -1
	ldi	r7 r2 8
	add	r4 r7 r4
	sti	r6 r4 0
L_cont_23641 : 
	addi	r4 r0 2
	ldi	r6 r2 9
	bne	r6 r4 L_else_23642
	fldi	f2 r0 38
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
	jump	L_trace_ray_2847
L_else_23642 : 
	return
L_else_23602 : 
	return
L_trace_diffuse_ray_2853 : 
	addi	r5 r0 4154
	addi	r6 r0 0
	fldi	f3 r0 11
	add	r5 r5 r6
	fsti	f3 r5 0
	addi	r5 r0 0
	addi	r6 r0 4255
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	fsti	f2 r2 0
	sti	r4 r2 2
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	addi	r2 r2 4
	call	L_trace_or_matrix_fast_2820
	subi	r2 r2 4
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_23645
	addi	r4 r0 0
	jump	L_cont_23646
L_else_23645 : 
	addi	r4 r0 1
L_cont_23646 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23647
	addi	r4 r0 0
	jump	L_cont_23648
L_else_23647 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_23649
	addi	r4 r0 0
	jump	L_cont_23650
L_else_23649 : 
	addi	r4 r0 1
L_cont_23650 : 
L_cont_23648 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23651
	return
L_else_23651 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 2
	ldi	r5 r5 0
	ldi	r6 r4 1
	addi	r7 r0 1
	sti	r4 r2 3
	bne	r6 r7 L_else_23653
	addi	r6 r0 4146
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 4118
	fldi	f2 r0 51
	addi	r8 r0 0
	add	r8 r7 r8
	fsti	f2 r8 0
	addi	r8 r0 1
	add	r8 r7 r8
	fsti	f2 r8 0
	addi	r8 r0 2
	add	r7 r7 r8
	fsti	f2 r7 0
	addi	r7 r0 4118
	addi	r8 r0 1
	sub	r8 r6 r8
	addi	r9 r0 1
	sub	r6 r6 r9
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23655
	addi	r5 r0 1
	jump	L_cont_23656
L_else_23655 : 
	addi	r5 r0 0
L_cont_23656 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23657
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23659
	addi	r5 r0 0
	jump	L_cont_23660
L_else_23659 : 
	addi	r5 r0 1
L_cont_23660 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23661
	fldi	f2 r0 27
	jump	L_cont_23662
L_else_23661 : 
	fldi	f2 r0 38
L_cont_23662 : 
	jump	L_cont_23658
L_else_23657 : 
	fldi	f2 r0 51
L_cont_23658 : 
	fsub	f2 f0 f2
	add	r5 r7 r8
	fsti	f2 r5 0
	jump	L_cont_23654
L_else_23653 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_23663
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
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f2 r7 0
	fsub	f2 f0 f2
	add	r5 r5 r6
	fsti	f2 r5 0
	jump	L_cont_23664
L_else_23663 : 
	addi	r2 r2 5
	call	L_get_nvector_second_2830
	subi	r2 r2 5
L_cont_23664 : 
L_cont_23654 : 
	addi	r5 r0 4114
	ldi	r4 r2 3
	addi	r2 r2 5
	call	L_utexture_2835
	subi	r2 r2 5
	addi	r4 r0 0
	addi	r5 r0 4255
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r2 r2 5
	call	L_shadow_check_one_or_matrix_2795
	subi	r2 r2 5
	addi	r5 r0 0
	bne	r4 r5 L_else_23665
	addi	r4 r0 4118
	addi	r5 r0 4111
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
	fsub	f2 f0 f2
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23666
	addi	r4 r0 0
	jump	L_cont_23667
L_else_23666 : 
	addi	r4 r0 1
L_cont_23667 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23668
	fldi	f2 r0 51
	jump	L_cont_23669
L_else_23668 : 
	fadd	f2 f0 f2
L_cont_23669 : 
	addi	r4 r0 4124
	fldi	f3 r2 0
	fmul	f2 f3 f2
	ldi	r5 r2 3
	ldi	r5 r5 7
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fmul	f2 f2 f3
	addi	r5 r0 4121
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
L_else_23665 : 
	return
L_iter_trace_diffuse_rays_2856 : 
	addi	r8 r0 0
	bgt	r8 r7 L_else_23672
	add	r8 r4 r7
	ldi	r8 r8 0
	ldi	r8 r8 0
	addi	r9 r0 0
	add	r9 r8 r9
	fldi	f2 r9 0
	addi	r9 r0 0
	add	r9 r5 r9
	fldi	f3 r9 0
	fmul	f2 f2 f3
	addi	r9 r0 1
	add	r9 r8 r9
	fldi	f3 r9 0
	addi	r9 r0 1
	add	r9 r5 r9
	fldi	f4 r9 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r9 r0 2
	add	r8 r8 r9
	fldi	f3 r8 0
	addi	r8 r0 2
	add	r8 r5 r8
	fldi	f4 r8 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23673
	addi	r8 r0 0
	jump	L_cont_23674
L_else_23673 : 
	addi	r8 r0 1
L_cont_23674 : 
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	bne	r8 r9 L_else_23675
	add	r8 r4 r7
	ldi	r8 r8 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r9 r0 4154
	addi	r10 r0 0
	fldi	f3 r0 11
	add	r9 r9 r10
	fsti	f3 r9 0
	addi	r9 r0 0
	addi	r10 r0 4255
	addi	r11 r0 0
	add	r10 r10 r11
	ldi	r10 r10 0
	fsti	f2 r2 4
	sti	r8 r2 6
	add	r6 r0 r8
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 8
	call	L_trace_or_matrix_fast_2820
	subi	r2 r2 8
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_23677
	addi	r4 r0 0
	jump	L_cont_23678
L_else_23677 : 
	addi	r4 r0 1
L_cont_23678 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23679
	addi	r4 r0 0
	jump	L_cont_23680
L_else_23679 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_23681
	addi	r4 r0 0
	jump	L_cont_23682
L_else_23681 : 
	addi	r4 r0 1
L_cont_23682 : 
L_cont_23680 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23683
	jump	L_cont_23684
L_else_23683 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 6
	ldi	r5 r5 0
	ldi	r6 r4 1
	addi	r7 r0 1
	sti	r4 r2 7
	bne	r6 r7 L_else_23685
	addi	r6 r0 4146
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 4118
	fldi	f2 r0 51
	addi	r8 r0 0
	add	r8 r7 r8
	fsti	f2 r8 0
	addi	r8 r0 1
	add	r8 r7 r8
	fsti	f2 r8 0
	addi	r8 r0 2
	add	r7 r7 r8
	fsti	f2 r7 0
	addi	r7 r0 4118
	addi	r8 r0 1
	sub	r8 r6 r8
	addi	r9 r0 1
	sub	r6 r6 r9
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23687
	addi	r5 r0 1
	jump	L_cont_23688
L_else_23687 : 
	addi	r5 r0 0
L_cont_23688 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23689
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23691
	addi	r5 r0 0
	jump	L_cont_23692
L_else_23691 : 
	addi	r5 r0 1
L_cont_23692 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23693
	fldi	f2 r0 27
	jump	L_cont_23694
L_else_23693 : 
	fldi	f2 r0 38
L_cont_23694 : 
	jump	L_cont_23690
L_else_23689 : 
	fldi	f2 r0 51
L_cont_23690 : 
	fsub	f2 f0 f2
	add	r5 r7 r8
	fsti	f2 r5 0
	jump	L_cont_23686
L_else_23685 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_23695
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
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f2 r7 0
	fsub	f2 f0 f2
	add	r5 r5 r6
	fsti	f2 r5 0
	jump	L_cont_23696
L_else_23695 : 
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
	bne	r5 r6 L_else_23697
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
	jump	L_cont_23698
L_else_23697 : 
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
L_cont_23698 : 
	addi	r5 r0 4118
	ldi	r6 r4 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 9
	call	L_vecunit_sgn_2538
	subi	r2 r2 9
L_cont_23696 : 
L_cont_23686 : 
	addi	r5 r0 4114
	ldi	r4 r2 7
	addi	r2 r2 9
	call	L_utexture_2835
	subi	r2 r2 9
	addi	r4 r0 0
	addi	r5 r0 4255
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r2 r2 9
	call	L_shadow_check_one_or_matrix_2795
	subi	r2 r2 9
	addi	r5 r0 0
	bne	r4 r5 L_else_23699
	addi	r4 r0 4118
	addi	r5 r0 4111
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
	fsub	f2 f0 f2
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23701
	addi	r4 r0 0
	jump	L_cont_23702
L_else_23701 : 
	addi	r4 r0 1
L_cont_23702 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23703
	fldi	f2 r0 51
	jump	L_cont_23704
L_else_23703 : 
	fadd	f2 f0 f2
L_cont_23704 : 
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
	jump	L_cont_23700
L_else_23699 : 
L_cont_23700 : 
L_cont_23684 : 
	jump	L_cont_23676
L_else_23675 : 
	addi	r8 r0 1
	add	r8 r7 r8
	add	r8 r4 r8
	ldi	r8 r8 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r9 r0 4154
	addi	r10 r0 0
	fldi	f3 r0 11
	add	r9 r9 r10
	fsti	f3 r9 0
	addi	r9 r0 0
	addi	r10 r0 4255
	addi	r11 r0 0
	add	r10 r10 r11
	ldi	r10 r10 0
	fsti	f2 r2 8
	sti	r8 r2 10
	add	r6 r0 r8
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 12
	call	L_trace_or_matrix_fast_2820
	subi	r2 r2 12
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_23705
	addi	r4 r0 0
	jump	L_cont_23706
L_else_23705 : 
	addi	r4 r0 1
L_cont_23706 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23707
	addi	r4 r0 0
	jump	L_cont_23708
L_else_23707 : 
	fldi	f3 r0 10
	fbgt	f3 f2 L_else_23709
	addi	r4 r0 0
	jump	L_cont_23710
L_else_23709 : 
	addi	r4 r0 1
L_cont_23710 : 
L_cont_23708 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23711
	jump	L_cont_23712
L_else_23711 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 10
	ldi	r5 r5 0
	ldi	r6 r4 1
	addi	r7 r0 1
	sti	r4 r2 11
	bne	r6 r7 L_else_23713
	addi	r6 r0 4146
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 4118
	fldi	f2 r0 51
	addi	r8 r0 0
	add	r8 r7 r8
	fsti	f2 r8 0
	addi	r8 r0 1
	add	r8 r7 r8
	fsti	f2 r8 0
	addi	r8 r0 2
	add	r7 r7 r8
	fsti	f2 r7 0
	addi	r7 r0 4118
	addi	r8 r0 1
	sub	r8 r6 r8
	addi	r9 r0 1
	sub	r6 r6 r9
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 51
	fbne	f2 f3 L_else_23715
	addi	r5 r0 1
	jump	L_cont_23716
L_else_23715 : 
	addi	r5 r0 0
L_cont_23716 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23717
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23719
	addi	r5 r0 0
	jump	L_cont_23720
L_else_23719 : 
	addi	r5 r0 1
L_cont_23720 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23721
	fldi	f2 r0 27
	jump	L_cont_23722
L_else_23721 : 
	fldi	f2 r0 38
L_cont_23722 : 
	jump	L_cont_23718
L_else_23717 : 
	fldi	f2 r0 51
L_cont_23718 : 
	fsub	f2 f0 f2
	add	r5 r7 r8
	fsti	f2 r5 0
	jump	L_cont_23714
L_else_23713 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_23723
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
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f2 r7 0
	fsub	f2 f0 f2
	add	r5 r5 r6
	fsti	f2 r5 0
	jump	L_cont_23724
L_else_23723 : 
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
	bne	r5 r6 L_else_23725
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
	jump	L_cont_23726
L_else_23725 : 
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
L_cont_23726 : 
	addi	r5 r0 4118
	ldi	r6 r4 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 13
	call	L_vecunit_sgn_2538
	subi	r2 r2 13
L_cont_23724 : 
L_cont_23714 : 
	addi	r5 r0 4114
	ldi	r4 r2 11
	addi	r2 r2 13
	call	L_utexture_2835
	subi	r2 r2 13
	addi	r4 r0 0
	addi	r5 r0 4255
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r2 r2 13
	call	L_shadow_check_one_or_matrix_2795
	subi	r2 r2 13
	addi	r5 r0 0
	bne	r4 r5 L_else_23727
	addi	r4 r0 4118
	addi	r5 r0 4111
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
	fsub	f2 f0 f2
	fldi	f3 r0 51
	fbgt	f2 f3 L_else_23729
	addi	r4 r0 0
	jump	L_cont_23730
L_else_23729 : 
	addi	r4 r0 1
L_cont_23730 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_23731
	fldi	f2 r0 51
	jump	L_cont_23732
L_else_23731 : 
	fadd	f2 f0 f2
L_cont_23732 : 
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
	jump	L_cont_23728
L_else_23727 : 
L_cont_23728 : 
L_cont_23712 : 
L_cont_23676 : 
	addi	r4 r0 2
	ldi	r5 r2 3
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_23733
	ldi	r5 r2 2
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	fldi	f2 r7 0
	addi	r7 r0 0
	ldi	r8 r2 1
	add	r7 r8 r7
	fldi	f3 r7 0
	fmul	f2 f2 f3
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f3 r7 0
	addi	r7 r0 1
	add	r7 r8 r7
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	addi	r6 r0 2
	add	r6 r8 r6
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23734
	addi	r6 r0 0
	jump	L_cont_23735
L_else_23734 : 
	addi	r6 r0 1
L_cont_23735 : 
	addi	r7 r0 0
	sti	r4 r2 12
	bne	r6 r7 L_else_23736
	add	r6 r5 r4
	ldi	r6 r6 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	add	r4 r0 r6
	addi	r2 r2 14
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 14
	jump	L_cont_23737
L_else_23736 : 
	addi	r6 r0 1
	add	r6 r4 r6
	add	r6 r5 r6
	ldi	r6 r6 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	add	r4 r0 r6
	addi	r2 r2 14
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 14
L_cont_23737 : 
	addi	r4 r0 2
	ldi	r5 r2 12
	sub	r7 r5 r4
	ldi	r4 r2 2
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_iter_trace_diffuse_rays_2856
L_else_23733 : 
	return
L_else_23672 : 
	return
L_calc_diffuse_using_1point_2869 : 
	ldi	r6 r4 5
	ldi	r7 r4 7
	ldi	r8 r4 1
	ldi	r9 r4 4
	addi	r10 r0 4124
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r11 r0 0
	addi	r12 r0 0
	add	r12 r6 r12
	fldi	f2 r12 0
	add	r11 r10 r11
	fsti	f2 r11 0
	addi	r11 r0 1
	addi	r12 r0 1
	add	r12 r6 r12
	fldi	f2 r12 0
	add	r11 r10 r11
	fsti	f2 r11 0
	addi	r11 r0 2
	addi	r12 r0 2
	add	r6 r6 r12
	fldi	f2 r6 0
	add	r6 r10 r11
	fsti	f2 r6 0
	ldi	r4 r4 6
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	add	r6 r7 r5
	ldi	r6 r6 0
	add	r7 r8 r5
	ldi	r7 r7 0
	addi	r8 r0 0
	sti	r5 r2 0
	sti	r9 r2 1
	sti	r6 r2 2
	sti	r7 r2 3
	sti	r4 r2 4
	bne	r4 r8 L_else_23740
	jump	L_cont_23741
L_else_23740 : 
	addi	r8 r0 4148
	addi	r10 r0 0
	add	r8 r8 r10
	ldi	r8 r8 0
	addi	r10 r0 4138
	addi	r11 r0 0
	addi	r12 r0 0
	add	r12 r7 r12
	fldi	f2 r12 0
	add	r11 r10 r11
	fsti	f2 r11 0
	addi	r11 r0 1
	addi	r12 r0 1
	add	r12 r7 r12
	fldi	f2 r12 0
	add	r11 r10 r11
	fsti	f2 r11 0
	addi	r11 r0 2
	addi	r12 r0 2
	add	r12 r7 r12
	fldi	f2 r12 0
	add	r10 r10 r11
	fsti	f2 r10 0
	addi	r10 r0 4144
	addi	r11 r0 0
	add	r10 r10 r11
	ldi	r10 r10 0
	addi	r11 r0 1
	sub	r10 r10 r11
	sti	r8 r2 5
	add	r5 r0 r10
	add	r4 r0 r7
	addi	r2 r2 7
	call	L_setup_startp_constants_2758
	subi	r2 r2 7
	addi	r4 r0 118
	ldi	r5 r2 5
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	fldi	f2 r7 0
	addi	r7 r0 0
	ldi	r8 r2 2
	add	r7 r8 r7
	fldi	f3 r7 0
	fmul	f2 f2 f3
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f3 r7 0
	addi	r7 r0 1
	add	r7 r8 r7
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	addi	r6 r0 2
	add	r6 r8 r6
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23742
	addi	r6 r0 0
	jump	L_cont_23743
L_else_23742 : 
	addi	r6 r0 1
L_cont_23743 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23744
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 7
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 7
	jump	L_cont_23745
L_else_23744 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 7
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 7
L_cont_23745 : 
	addi	r7 r0 116
	ldi	r4 r2 5
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 7
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 7
L_cont_23741 : 
	addi	r4 r0 1
	ldi	r5 r2 4
	bne	r5 r4 L_else_23746
	jump	L_cont_23747
L_else_23746 : 
	addi	r4 r0 4148
	addi	r6 r0 1
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 4138
	addi	r7 r0 0
	addi	r8 r0 0
	ldi	r9 r2 3
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r6 r6 r7
	fsti	f2 r6 0
	addi	r6 r0 4144
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 1
	sub	r6 r6 r7
	sti	r4 r2 6
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 8
	call	L_setup_startp_constants_2758
	subi	r2 r2 8
	addi	r4 r0 118
	ldi	r5 r2 6
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	fldi	f2 r7 0
	addi	r7 r0 0
	ldi	r8 r2 2
	add	r7 r8 r7
	fldi	f3 r7 0
	fmul	f2 f2 f3
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f3 r7 0
	addi	r7 r0 1
	add	r7 r8 r7
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	addi	r6 r0 2
	add	r6 r8 r6
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23748
	addi	r6 r0 0
	jump	L_cont_23749
L_else_23748 : 
	addi	r6 r0 1
L_cont_23749 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23750
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 8
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 8
	jump	L_cont_23751
L_else_23750 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 8
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 8
L_cont_23751 : 
	addi	r7 r0 116
	ldi	r4 r2 6
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 8
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 8
L_cont_23747 : 
	addi	r4 r0 2
	ldi	r5 r2 4
	bne	r5 r4 L_else_23752
	jump	L_cont_23753
L_else_23752 : 
	addi	r4 r0 4148
	addi	r6 r0 2
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 4138
	addi	r7 r0 0
	addi	r8 r0 0
	ldi	r9 r2 3
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r6 r6 r7
	fsti	f2 r6 0
	addi	r6 r0 4144
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 1
	sub	r6 r6 r7
	sti	r4 r2 7
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_startp_constants_2758
	subi	r2 r2 9
	addi	r4 r0 118
	ldi	r5 r2 7
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	fldi	f2 r7 0
	addi	r7 r0 0
	ldi	r8 r2 2
	add	r7 r8 r7
	fldi	f3 r7 0
	fmul	f2 f2 f3
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f3 r7 0
	addi	r7 r0 1
	add	r7 r8 r7
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	addi	r6 r0 2
	add	r6 r8 r6
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23754
	addi	r6 r0 0
	jump	L_cont_23755
L_else_23754 : 
	addi	r6 r0 1
L_cont_23755 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23756
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 9
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 9
	jump	L_cont_23757
L_else_23756 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 9
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 9
L_cont_23757 : 
	addi	r7 r0 116
	ldi	r4 r2 7
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 9
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 9
L_cont_23753 : 
	addi	r4 r0 3
	ldi	r5 r2 4
	bne	r5 r4 L_else_23758
	jump	L_cont_23759
L_else_23758 : 
	addi	r4 r0 4148
	addi	r6 r0 3
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 4138
	addi	r7 r0 0
	addi	r8 r0 0
	ldi	r9 r2 3
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r6 r6 r7
	fsti	f2 r6 0
	addi	r6 r0 4144
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 1
	sub	r6 r6 r7
	sti	r4 r2 8
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 10
	call	L_setup_startp_constants_2758
	subi	r2 r2 10
	addi	r4 r0 118
	ldi	r5 r2 8
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	fldi	f2 r7 0
	addi	r7 r0 0
	ldi	r8 r2 2
	add	r7 r8 r7
	fldi	f3 r7 0
	fmul	f2 f2 f3
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f3 r7 0
	addi	r7 r0 1
	add	r7 r8 r7
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	addi	r6 r0 2
	add	r6 r8 r6
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23760
	addi	r6 r0 0
	jump	L_cont_23761
L_else_23760 : 
	addi	r6 r0 1
L_cont_23761 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23762
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 10
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 10
	jump	L_cont_23763
L_else_23762 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 10
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 10
L_cont_23763 : 
	addi	r7 r0 116
	ldi	r4 r2 8
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 10
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 10
L_cont_23759 : 
	addi	r4 r0 4
	ldi	r5 r2 4
	bne	r5 r4 L_else_23764
	jump	L_cont_23765
L_else_23764 : 
	addi	r4 r0 4148
	addi	r5 r0 4
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 4138
	addi	r6 r0 0
	addi	r7 r0 0
	ldi	r8 r2 3
	add	r7 r8 r7
	fldi	f2 r7 0
	add	r6 r5 r6
	fsti	f2 r6 0
	addi	r6 r0 1
	addi	r7 r0 1
	add	r7 r8 r7
	fldi	f2 r7 0
	add	r6 r5 r6
	fsti	f2 r6 0
	addi	r6 r0 2
	addi	r7 r0 2
	add	r7 r8 r7
	fldi	f2 r7 0
	add	r5 r5 r6
	fsti	f2 r5 0
	addi	r5 r0 4144
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 1
	sub	r5 r5 r6
	sti	r4 r2 9
	add	r4 r0 r8
	addi	r2 r2 11
	call	L_setup_startp_constants_2758
	subi	r2 r2 11
	addi	r4 r0 118
	ldi	r5 r2 9
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	fldi	f2 r7 0
	addi	r7 r0 0
	ldi	r8 r2 2
	add	r7 r8 r7
	fldi	f3 r7 0
	fmul	f2 f2 f3
	addi	r7 r0 1
	add	r7 r6 r7
	fldi	f3 r7 0
	addi	r7 r0 1
	add	r7 r8 r7
	fldi	f4 r7 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	addi	r6 r0 2
	add	r6 r8 r6
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r0 51
	fbgt	f3 f2 L_else_23766
	addi	r6 r0 0
	jump	L_cont_23767
L_else_23766 : 
	addi	r6 r0 1
L_cont_23767 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_23768
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 5
	fdiv	f2 f2 f3
	addi	r2 r2 11
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 11
	jump	L_cont_23769
L_else_23768 : 
	addi	r4 r0 119
	add	r4 r5 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	addi	r2 r2 11
	call	L_trace_diffuse_ray_2853
	subi	r2 r2 11
L_cont_23769 : 
	addi	r7 r0 116
	ldi	r4 r2 9
	ldi	r5 r2 2
	ldi	r6 r2 3
	addi	r2 r2 11
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 11
L_cont_23765 : 
	addi	r4 r0 4127
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r5 r6 r5
	ldi	r5 r5 0
	addi	r6 r0 4124
	jump	L_vecaccumv_2562
L_calc_diffuse_using_5points_2872 : 
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r5 r5 5
	addi	r9 r0 1
	sub	r9 r4 r9
	add	r9 r6 r9
	ldi	r9 r9 0
	ldi	r9 r9 5
	add	r10 r6 r4
	ldi	r10 r10 0
	ldi	r10 r10 5
	addi	r11 r0 1
	add	r11 r4 r11
	add	r11 r6 r11
	ldi	r11 r11 0
	ldi	r11 r11 5
	add	r7 r7 r4
	ldi	r7 r7 0
	ldi	r7 r7 5
	addi	r12 r0 4124
	add	r5 r5 r8
	ldi	r5 r5 0
	addi	r13 r0 0
	addi	r14 r0 0
	add	r14 r5 r14
	fldi	f2 r14 0
	add	r13 r12 r13
	fsti	f2 r13 0
	addi	r13 r0 1
	addi	r14 r0 1
	add	r14 r5 r14
	fldi	f2 r14 0
	add	r13 r12 r13
	fsti	f2 r13 0
	addi	r13 r0 2
	addi	r14 r0 2
	add	r5 r5 r14
	fldi	f2 r5 0
	add	r5 r12 r13
	fsti	f2 r5 0
	addi	r5 r0 4124
	add	r9 r9 r8
	ldi	r9 r9 0
	addi	r12 r0 0
	addi	r13 r0 0
	add	r13 r5 r13
	fldi	f2 r13 0
	addi	r13 r0 0
	add	r13 r9 r13
	fldi	f3 r13 0
	fadd	f2 f2 f3
	add	r12 r5 r12
	fsti	f2 r12 0
	addi	r12 r0 1
	addi	r13 r0 1
	add	r13 r5 r13
	fldi	f2 r13 0
	addi	r13 r0 1
	add	r13 r9 r13
	fldi	f3 r13 0
	fadd	f2 f2 f3
	add	r12 r5 r12
	fsti	f2 r12 0
	addi	r12 r0 2
	addi	r13 r0 2
	add	r13 r5 r13
	fldi	f2 r13 0
	addi	r13 r0 2
	add	r9 r9 r13
	fldi	f3 r9 0
	fadd	f2 f2 f3
	add	r5 r5 r12
	fsti	f2 r5 0
	addi	r5 r0 4124
	add	r9 r10 r8
	ldi	r9 r9 0
	addi	r10 r0 0
	addi	r12 r0 0
	add	r12 r5 r12
	fldi	f2 r12 0
	addi	r12 r0 0
	add	r12 r9 r12
	fldi	f3 r12 0
	fadd	f2 f2 f3
	add	r10 r5 r10
	fsti	f2 r10 0
	addi	r10 r0 1
	addi	r12 r0 1
	add	r12 r5 r12
	fldi	f2 r12 0
	addi	r12 r0 1
	add	r12 r9 r12
	fldi	f3 r12 0
	fadd	f2 f2 f3
	add	r10 r5 r10
	fsti	f2 r10 0
	addi	r10 r0 2
	addi	r12 r0 2
	add	r12 r5 r12
	fldi	f2 r12 0
	addi	r12 r0 2
	add	r9 r9 r12
	fldi	f3 r9 0
	fadd	f2 f2 f3
	add	r5 r5 r10
	fsti	f2 r5 0
	addi	r5 r0 4124
	add	r9 r11 r8
	ldi	r9 r9 0
	addi	r10 r0 0
	addi	r11 r0 0
	add	r11 r5 r11
	fldi	f2 r11 0
	addi	r11 r0 0
	add	r11 r9 r11
	fldi	f3 r11 0
	fadd	f2 f2 f3
	add	r10 r5 r10
	fsti	f2 r10 0
	addi	r10 r0 1
	addi	r11 r0 1
	add	r11 r5 r11
	fldi	f2 r11 0
	addi	r11 r0 1
	add	r11 r9 r11
	fldi	f3 r11 0
	fadd	f2 f2 f3
	add	r10 r5 r10
	fsti	f2 r10 0
	addi	r10 r0 2
	addi	r11 r0 2
	add	r11 r5 r11
	fldi	f2 r11 0
	addi	r11 r0 2
	add	r9 r9 r11
	fldi	f3 r9 0
	fadd	f2 f2 f3
	add	r5 r5 r10
	fsti	f2 r5 0
	addi	r5 r0 4124
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r9 r0 0
	addi	r10 r0 0
	add	r10 r5 r10
	fldi	f2 r10 0
	addi	r10 r0 0
	add	r10 r7 r10
	fldi	f3 r10 0
	fadd	f2 f2 f3
	add	r9 r5 r9
	fsti	f2 r9 0
	addi	r9 r0 1
	addi	r10 r0 1
	add	r10 r5 r10
	fldi	f2 r10 0
	addi	r10 r0 1
	add	r10 r7 r10
	fldi	f3 r10 0
	fadd	f2 f2 f3
	add	r9 r5 r9
	fsti	f2 r9 0
	addi	r9 r0 2
	addi	r10 r0 2
	add	r10 r5 r10
	fldi	f2 r10 0
	addi	r10 r0 2
	add	r7 r7 r10
	fldi	f3 r7 0
	fadd	f2 f2 f3
	add	r5 r5 r9
	fsti	f2 r5 0
	add	r4 r6 r4
	ldi	r4 r4 0
	ldi	r4 r4 4
	addi	r5 r0 4127
	add	r4 r4 r8
	ldi	r4 r4 0
	addi	r6 r0 4124
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	jump	L_vecaccumv_2562
L_do_without_neighbors_2878 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_23770
	ldi	r6 r4 2
	addi	r7 r0 0
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r7 r6 L_else_23771
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r6 r7 L_else_23772
	jump	L_cont_23773
L_else_23772 : 
	ldi	r6 r4 5
	ldi	r7 r4 7
	ldi	r8 r4 1
	ldi	r9 r4 4
	addi	r10 r0 4124
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r11 r0 0
	addi	r12 r0 0
	add	r12 r6 r12
	fldi	f2 r12 0
	add	r11 r10 r11
	fsti	f2 r11 0
	addi	r11 r0 1
	addi	r12 r0 1
	add	r12 r6 r12
	fldi	f2 r12 0
	add	r11 r10 r11
	fsti	f2 r11 0
	addi	r11 r0 2
	addi	r12 r0 2
	add	r6 r6 r12
	fldi	f2 r6 0
	add	r6 r10 r11
	fsti	f2 r6 0
	ldi	r6 r4 6
	addi	r10 r0 0
	add	r6 r6 r10
	ldi	r6 r6 0
	add	r7 r7 r5
	ldi	r7 r7 0
	add	r8 r8 r5
	ldi	r8 r8 0
	addi	r10 r0 0
	sti	r9 r2 2
	sti	r7 r2 3
	sti	r8 r2 4
	sti	r6 r2 5
	bne	r6 r10 L_else_23774
	jump	L_cont_23775
L_else_23774 : 
	addi	r10 r0 4148
	addi	r11 r0 0
	add	r10 r10 r11
	ldi	r10 r10 0
	addi	r11 r0 4138
	addi	r12 r0 0
	addi	r13 r0 0
	add	r13 r8 r13
	fldi	f2 r13 0
	add	r12 r11 r12
	fsti	f2 r12 0
	addi	r12 r0 1
	addi	r13 r0 1
	add	r13 r8 r13
	fldi	f2 r13 0
	add	r12 r11 r12
	fsti	f2 r12 0
	addi	r12 r0 2
	addi	r13 r0 2
	add	r13 r8 r13
	fldi	f2 r13 0
	add	r11 r11 r12
	fsti	f2 r11 0
	addi	r11 r0 4144
	addi	r12 r0 0
	add	r11 r11 r12
	ldi	r11 r11 0
	addi	r12 r0 1
	sub	r11 r11 r12
	sti	r10 r2 6
	add	r5 r0 r11
	add	r4 r0 r8
	addi	r2 r2 8
	call	L_setup_startp_constants_2758
	subi	r2 r2 8
	addi	r7 r0 118
	ldi	r4 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 8
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 8
L_cont_23775 : 
	addi	r4 r0 1
	ldi	r5 r2 5
	bne	r5 r4 L_else_23776
	jump	L_cont_23777
L_else_23776 : 
	addi	r4 r0 4148
	addi	r6 r0 1
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 4138
	addi	r7 r0 0
	addi	r8 r0 0
	ldi	r9 r2 4
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r6 r6 r7
	fsti	f2 r6 0
	addi	r6 r0 4144
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 1
	sub	r6 r6 r7
	sti	r4 r2 7
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_startp_constants_2758
	subi	r2 r2 9
	addi	r7 r0 118
	ldi	r4 r2 7
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 9
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 9
L_cont_23777 : 
	addi	r4 r0 2
	ldi	r5 r2 5
	bne	r5 r4 L_else_23778
	jump	L_cont_23779
L_else_23778 : 
	addi	r4 r0 4148
	addi	r6 r0 2
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 4138
	addi	r7 r0 0
	addi	r8 r0 0
	ldi	r9 r2 4
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r6 r6 r7
	fsti	f2 r6 0
	addi	r6 r0 4144
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 1
	sub	r6 r6 r7
	sti	r4 r2 8
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 10
	call	L_setup_startp_constants_2758
	subi	r2 r2 10
	addi	r7 r0 118
	ldi	r4 r2 8
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 10
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 10
L_cont_23779 : 
	addi	r4 r0 3
	ldi	r5 r2 5
	bne	r5 r4 L_else_23780
	jump	L_cont_23781
L_else_23780 : 
	addi	r4 r0 4148
	addi	r6 r0 3
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 4138
	addi	r7 r0 0
	addi	r8 r0 0
	ldi	r9 r2 4
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	addi	r8 r0 2
	add	r8 r9 r8
	fldi	f2 r8 0
	add	r6 r6 r7
	fsti	f2 r6 0
	addi	r6 r0 4144
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 1
	sub	r6 r6 r7
	sti	r4 r2 9
	add	r5 r0 r6
	add	r4 r0 r9
	addi	r2 r2 11
	call	L_setup_startp_constants_2758
	subi	r2 r2 11
	addi	r7 r0 118
	ldi	r4 r2 9
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 11
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 11
L_cont_23781 : 
	addi	r4 r0 4
	ldi	r5 r2 5
	bne	r5 r4 L_else_23782
	jump	L_cont_23783
L_else_23782 : 
	addi	r4 r0 4148
	addi	r5 r0 4
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 4138
	addi	r6 r0 0
	addi	r7 r0 0
	ldi	r8 r2 4
	add	r7 r8 r7
	fldi	f2 r7 0
	add	r6 r5 r6
	fsti	f2 r6 0
	addi	r6 r0 1
	addi	r7 r0 1
	add	r7 r8 r7
	fldi	f2 r7 0
	add	r6 r5 r6
	fsti	f2 r6 0
	addi	r6 r0 2
	addi	r7 r0 2
	add	r7 r8 r7
	fldi	f2 r7 0
	add	r5 r5 r6
	fsti	f2 r5 0
	addi	r5 r0 4144
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 1
	sub	r5 r5 r6
	sti	r4 r2 10
	add	r4 r0 r8
	addi	r2 r2 12
	call	L_setup_startp_constants_2758
	subi	r2 r2 12
	addi	r7 r0 118
	ldi	r4 r2 10
	ldi	r5 r2 3
	ldi	r6 r2 4
	addi	r2 r2 12
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 12
L_cont_23783 : 
	addi	r4 r0 4127
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 4124
	add	r5 r0 r6
	add	r6 r0 r7
	addi	r2 r2 12
	call	L_vecaccumv_2562
	subi	r2 r2 12
L_cont_23773 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r5 r5 r4
	addi	r4 r0 4
	bgt	r5 r4 L_else_23784
	ldi	r4 r2 0
	ldi	r6 r4 2
	addi	r7 r0 0
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r7 r6 L_else_23785
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r5 r2 11
	bne	r6 r7 L_else_23786
	jump	L_cont_23787
L_else_23786 : 
	addi	r2 r2 13
	call	L_calc_diffuse_using_1point_2869
	subi	r2 r2 13
L_cont_23787 : 
	addi	r4 r0 1
	ldi	r5 r2 11
	add	r5 r5 r4
	ldi	r4 r2 0
	jump	L_do_without_neighbors_2878
L_else_23785 : 
	return
L_else_23784 : 
	return
L_else_23771 : 
	return
L_else_23770 : 
	return
L_try_exploit_neighbors_2894 : 
	add	r10 r7 r4
	ldi	r10 r10 0
	addi	r11 r0 4
	bgt	r9 r11 L_else_23792
	addi	r11 r0 0
	ldi	r12 r10 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bgt	r11 r12 L_else_23793
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
	bne	r12 r11 L_else_23794
	add	r12 r8 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_23796
	addi	r12 r0 1
	sub	r12 r4 r12
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_23798
	addi	r12 r0 1
	add	r12 r4 r12
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_23800
	addi	r11 r0 1
	jump	L_cont_23801
L_else_23800 : 
	addi	r11 r0 0
L_cont_23801 : 
	jump	L_cont_23799
L_else_23798 : 
	addi	r11 r0 0
L_cont_23799 : 
	jump	L_cont_23797
L_else_23796 : 
	addi	r11 r0 0
L_cont_23797 : 
	jump	L_cont_23795
L_else_23794 : 
	addi	r11 r0 0
L_cont_23795 : 
	addi	r12 r0 0
	bne	r11 r12 L_else_23802
	add	r4 r7 r4
	ldi	r4 r4 0
	addi	r5 r0 4
	bgt	r9 r5 L_else_23803
	ldi	r5 r4 2
	addi	r6 r0 0
	add	r5 r5 r9
	ldi	r5 r5 0
	bgt	r6 r5 L_else_23804
	ldi	r5 r4 3
	add	r5 r5 r9
	ldi	r5 r5 0
	addi	r6 r0 0
	sti	r4 r2 0
	sti	r9 r2 1
	bne	r5 r6 L_else_23805
	jump	L_cont_23806
L_else_23805 : 
	add	r5 r0 r9
	addi	r2 r2 3
	call	L_calc_diffuse_using_1point_2869
	subi	r2 r2 3
L_cont_23806 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r5 r5 r4
	ldi	r4 r2 0
	jump	L_do_without_neighbors_2878
L_else_23804 : 
	return
L_else_23803 : 
	return
L_else_23802 : 
	ldi	r10 r10 3
	add	r10 r10 r9
	ldi	r10 r10 0
	addi	r11 r0 0
	sti	r5 r2 2
	sti	r8 r2 3
	sti	r6 r2 4
	sti	r4 r2 5
	sti	r7 r2 6
	sti	r9 r2 1
	bne	r10 r11 L_else_23809
	jump	L_cont_23810
L_else_23809 : 
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
	addi	r16 r0 0
	addi	r17 r0 0
	add	r17 r10 r17
	fldi	f2 r17 0
	add	r16 r15 r16
	fsti	f2 r16 0
	addi	r16 r0 1
	addi	r17 r0 1
	add	r17 r10 r17
	fldi	f2 r17 0
	add	r16 r15 r16
	fsti	f2 r16 0
	addi	r16 r0 2
	addi	r17 r0 2
	add	r10 r10 r17
	fldi	f2 r10 0
	add	r10 r15 r16
	fsti	f2 r10 0
	addi	r10 r0 4124
	add	r11 r11 r9
	ldi	r11 r11 0
	addi	r15 r0 0
	addi	r16 r0 0
	add	r16 r10 r16
	fldi	f2 r16 0
	addi	r16 r0 0
	add	r16 r11 r16
	fldi	f3 r16 0
	fadd	f2 f2 f3
	add	r15 r10 r15
	fsti	f2 r15 0
	addi	r15 r0 1
	addi	r16 r0 1
	add	r16 r10 r16
	fldi	f2 r16 0
	addi	r16 r0 1
	add	r16 r11 r16
	fldi	f3 r16 0
	fadd	f2 f2 f3
	add	r15 r10 r15
	fsti	f2 r15 0
	addi	r15 r0 2
	addi	r16 r0 2
	add	r16 r10 r16
	fldi	f2 r16 0
	addi	r16 r0 2
	add	r11 r11 r16
	fldi	f3 r11 0
	fadd	f2 f2 f3
	add	r10 r10 r15
	fsti	f2 r10 0
	addi	r10 r0 4124
	add	r11 r12 r9
	ldi	r11 r11 0
	addi	r12 r0 0
	addi	r15 r0 0
	add	r15 r10 r15
	fldi	f2 r15 0
	addi	r15 r0 0
	add	r15 r11 r15
	fldi	f3 r15 0
	fadd	f2 f2 f3
	add	r12 r10 r12
	fsti	f2 r12 0
	addi	r12 r0 1
	addi	r15 r0 1
	add	r15 r10 r15
	fldi	f2 r15 0
	addi	r15 r0 1
	add	r15 r11 r15
	fldi	f3 r15 0
	fadd	f2 f2 f3
	add	r12 r10 r12
	fsti	f2 r12 0
	addi	r12 r0 2
	addi	r15 r0 2
	add	r15 r10 r15
	fldi	f2 r15 0
	addi	r15 r0 2
	add	r11 r11 r15
	fldi	f3 r11 0
	fadd	f2 f2 f3
	add	r10 r10 r12
	fsti	f2 r10 0
	addi	r10 r0 4124
	add	r11 r13 r9
	ldi	r11 r11 0
	addi	r12 r0 0
	addi	r13 r0 0
	add	r13 r10 r13
	fldi	f2 r13 0
	addi	r13 r0 0
	add	r13 r11 r13
	fldi	f3 r13 0
	fadd	f2 f2 f3
	add	r12 r10 r12
	fsti	f2 r12 0
	addi	r12 r0 1
	addi	r13 r0 1
	add	r13 r10 r13
	fldi	f2 r13 0
	addi	r13 r0 1
	add	r13 r11 r13
	fldi	f3 r13 0
	fadd	f2 f2 f3
	add	r12 r10 r12
	fsti	f2 r12 0
	addi	r12 r0 2
	addi	r13 r0 2
	add	r13 r10 r13
	fldi	f2 r13 0
	addi	r13 r0 2
	add	r11 r11 r13
	fldi	f3 r11 0
	fadd	f2 f2 f3
	add	r10 r10 r12
	fsti	f2 r10 0
	addi	r10 r0 4124
	add	r11 r14 r9
	ldi	r11 r11 0
	addi	r12 r0 0
	addi	r13 r0 0
	add	r13 r10 r13
	fldi	f2 r13 0
	addi	r13 r0 0
	add	r13 r11 r13
	fldi	f3 r13 0
	fadd	f2 f2 f3
	add	r12 r10 r12
	fsti	f2 r12 0
	addi	r12 r0 1
	addi	r13 r0 1
	add	r13 r10 r13
	fldi	f2 r13 0
	addi	r13 r0 1
	add	r13 r11 r13
	fldi	f3 r13 0
	fadd	f2 f2 f3
	add	r12 r10 r12
	fsti	f2 r12 0
	addi	r12 r0 2
	addi	r13 r0 2
	add	r13 r10 r13
	fldi	f2 r13 0
	addi	r13 r0 2
	add	r11 r11 r13
	fldi	f3 r11 0
	fadd	f2 f2 f3
	add	r10 r10 r12
	fsti	f2 r10 0
	add	r10 r7 r4
	ldi	r10 r10 0
	ldi	r10 r10 4
	addi	r11 r0 4127
	add	r10 r10 r9
	ldi	r10 r10 0
	addi	r12 r0 4124
	add	r6 r0 r12
	add	r5 r0 r10
	add	r4 r0 r11
	addi	r2 r2 8
	call	L_vecaccumv_2562
	subi	r2 r2 8
L_cont_23810 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r5 r5 r4
	ldi	r4 r2 5
	ldi	r6 r2 6
	add	r7 r6 r4
	ldi	r7 r7 0
	addi	r8 r0 4
	bgt	r5 r8 L_else_23811
	addi	r8 r0 0
	ldi	r9 r7 2
	add	r9 r9 r5
	ldi	r9 r9 0
	bgt	r8 r9 L_else_23812
	add	r8 r6 r4
	ldi	r8 r8 0
	ldi	r8 r8 2
	add	r8 r8 r5
	ldi	r8 r8 0
	ldi	r9 r2 4
	add	r10 r9 r4
	ldi	r10 r10 0
	ldi	r10 r10 2
	add	r10 r10 r5
	ldi	r10 r10 0
	bne	r10 r8 L_else_23813
	ldi	r10 r2 3
	add	r11 r10 r4
	ldi	r11 r11 0
	ldi	r11 r11 2
	add	r11 r11 r5
	ldi	r11 r11 0
	bne	r11 r8 L_else_23815
	addi	r11 r0 1
	sub	r11 r4 r11
	add	r11 r6 r11
	ldi	r11 r11 0
	ldi	r11 r11 2
	add	r11 r11 r5
	ldi	r11 r11 0
	bne	r11 r8 L_else_23817
	addi	r11 r0 1
	add	r11 r4 r11
	add	r11 r6 r11
	ldi	r11 r11 0
	ldi	r11 r11 2
	add	r11 r11 r5
	ldi	r11 r11 0
	bne	r11 r8 L_else_23819
	addi	r8 r0 1
	jump	L_cont_23820
L_else_23819 : 
	addi	r8 r0 0
L_cont_23820 : 
	jump	L_cont_23818
L_else_23817 : 
	addi	r8 r0 0
L_cont_23818 : 
	jump	L_cont_23816
L_else_23815 : 
	addi	r8 r0 0
L_cont_23816 : 
	jump	L_cont_23814
L_else_23813 : 
	addi	r8 r0 0
L_cont_23814 : 
	addi	r10 r0 0
	bne	r8 r10 L_else_23821
	add	r4 r6 r4
	ldi	r4 r4 0
	jump	L_do_without_neighbors_2878
L_else_23821 : 
	ldi	r7 r7 3
	add	r7 r7 r5
	ldi	r7 r7 0
	addi	r8 r0 0
	sti	r5 r2 7
	bne	r7 r8 L_else_23822
	jump	L_cont_23823
L_else_23822 : 
	ldi	r7 r2 3
	add	r8 r0 r5
	add	r5 r0 r9
	addi	r2 r2 9
	call	L_calc_diffuse_using_5points_2872
	subi	r2 r2 9
L_cont_23823 : 
	addi	r4 r0 1
	ldi	r5 r2 7
	add	r9 r5 r4
	ldi	r4 r2 5
	ldi	r5 r2 2
	ldi	r6 r2 4
	ldi	r7 r2 6
	ldi	r8 r2 3
	jump	L_try_exploit_neighbors_2894
L_else_23812 : 
	return
L_else_23811 : 
	return
L_else_23793 : 
	return
L_else_23792 : 
	return
L_pretrace_diffuse_rays_2907 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_23828
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	bgt	r7 r6 L_else_23829
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r5 r2 0
	bne	r6 r7 L_else_23830
	jump	L_cont_23831
L_else_23830 : 
	ldi	r6 r4 6
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 4124
	fldi	f2 r0 51
	addi	r8 r0 0
	add	r8 r7 r8
	fsti	f2 r8 0
	addi	r8 r0 1
	add	r8 r7 r8
	fsti	f2 r8 0
	addi	r8 r0 2
	add	r7 r7 r8
	fsti	f2 r7 0
	ldi	r7 r4 7
	ldi	r8 r4 1
	addi	r9 r0 4148
	add	r6 r9 r6
	ldi	r6 r6 0
	add	r7 r7 r5
	ldi	r7 r7 0
	add	r8 r8 r5
	ldi	r8 r8 0
	addi	r9 r0 4138
	addi	r10 r0 0
	addi	r11 r0 0
	add	r11 r8 r11
	fldi	f2 r11 0
	add	r10 r9 r10
	fsti	f2 r10 0
	addi	r10 r0 1
	addi	r11 r0 1
	add	r11 r8 r11
	fldi	f2 r11 0
	add	r10 r9 r10
	fsti	f2 r10 0
	addi	r10 r0 2
	addi	r11 r0 2
	add	r11 r8 r11
	fldi	f2 r11 0
	add	r9 r9 r10
	fsti	f2 r9 0
	addi	r9 r0 4144
	addi	r10 r0 0
	add	r9 r9 r10
	ldi	r9 r9 0
	addi	r10 r0 1
	sub	r9 r9 r10
	sti	r4 r2 1
	sti	r8 r2 2
	sti	r7 r2 3
	sti	r6 r2 4
	add	r5 r0 r9
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_setup_startp_constants_2758
	subi	r2 r2 6
	addi	r7 r0 118
	ldi	r4 r2 4
	ldi	r5 r2 3
	ldi	r6 r2 2
	addi	r2 r2 6
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 6
	ldi	r4 r2 1
	ldi	r5 r4 5
	ldi	r6 r2 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r7 r0 4124
	addi	r8 r0 0
	addi	r9 r0 0
	add	r9 r7 r9
	fldi	f2 r9 0
	add	r8 r5 r8
	fsti	f2 r8 0
	addi	r8 r0 1
	addi	r9 r0 1
	add	r9 r7 r9
	fldi	f2 r9 0
	add	r8 r5 r8
	fsti	f2 r8 0
	addi	r8 r0 2
	addi	r9 r0 2
	add	r7 r7 r9
	fldi	f2 r7 0
	add	r5 r5 r8
	fsti	f2 r5 0
L_cont_23831 : 
	addi	r5 r0 1
	ldi	r6 r2 0
	add	r5 r6 r5
	jump	L_pretrace_diffuse_rays_2907
L_else_23829 : 
	return
L_else_23828 : 
	return
L_pretrace_pixels_2910 : 
	addi	r7 r0 0
	bgt	r7 r5 L_else_23834
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
	call	L_vecunit_sgn_2538
	subi	r2 r2 10
	addi	r4 r0 4127
	fldi	f2 r0 51
	addi	r5 r0 0
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 2
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 4135
	addi	r5 r0 4108
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
	addi	r4 r0 0
	fldi	f2 r0 38
	addi	r5 r0 4141
	ldi	r6 r2 7
	ldi	r7 r2 8
	add	r8 r7 r6
	ldi	r8 r8 0
	fldi	f3 r0 51
	add	r6 r0 r8
	addi	r2 r2 10
	call	L_trace_ray_2847
	subi	r2 r2 10
	ldi	r4 r2 7
	ldi	r5 r2 8
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r7 r0 4127
	addi	r8 r0 0
	addi	r9 r0 0
	add	r9 r7 r9
	fldi	f2 r9 0
	add	r8 r6 r8
	fsti	f2 r8 0
	addi	r8 r0 1
	addi	r9 r0 1
	add	r9 r7 r9
	fldi	f2 r9 0
	add	r8 r6 r8
	fsti	f2 r8 0
	addi	r8 r0 2
	addi	r9 r0 2
	add	r7 r7 r9
	fldi	f2 r7 0
	add	r6 r6 r8
	fsti	f2 r6 0
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
	call	L_pretrace_diffuse_rays_2907
	subi	r2 r2 10
	addi	r4 r0 1
	ldi	r5 r2 7
	sub	r5 r5 r4
	addi	r4 r0 1
	ldi	r6 r2 6
	add	r4 r6 r4
	addi	r6 r0 5
	bgt	r6 r4 L_else_23835
	addi	r6 r0 5
	sub	r6 r4 r6
	jump	L_cont_23836
L_else_23835 : 
	add	r6 r0 r4
L_cont_23836 : 
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r4 r2 8
	jump	L_pretrace_pixels_2910
L_else_23834 : 
	return
L_pretrace_line_2917 : 
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
	jump	L_pretrace_pixels_2910
L_scan_pixel_2921 : 
	addi	r9 r0 4130
	addi	r10 r0 0
	add	r9 r9 r10
	ldi	r9 r9 0
	bgt	r9 r4 L_else_23838
	return
L_else_23838 : 
	addi	r9 r0 4127
	add	r10 r7 r4
	ldi	r10 r10 0
	ldi	r10 r10 0
	addi	r11 r0 0
	addi	r12 r0 0
	add	r12 r10 r12
	fldi	f2 r12 0
	add	r11 r9 r11
	fsti	f2 r11 0
	addi	r11 r0 1
	addi	r12 r0 1
	add	r12 r10 r12
	fldi	f2 r12 0
	add	r11 r9 r11
	fsti	f2 r11 0
	addi	r11 r0 2
	addi	r12 r0 2
	add	r10 r10 r12
	fldi	f2 r10 0
	add	r9 r9 r11
	fsti	f2 r9 0
	addi	r9 r0 4130
	addi	r10 r0 1
	add	r9 r9 r10
	ldi	r9 r9 0
	addi	r10 r0 1
	add	r10 r5 r10
	bgt	r9 r10 L_else_23840
	addi	r9 r0 0
	jump	L_cont_23841
L_else_23840 : 
	addi	r9 r0 0
	bgt	r5 r9 L_else_23842
	addi	r9 r0 0
	jump	L_cont_23843
L_else_23842 : 
	addi	r9 r0 4130
	addi	r10 r0 0
	add	r9 r9 r10
	ldi	r9 r9 0
	addi	r10 r0 1
	add	r10 r4 r10
	bgt	r9 r10 L_else_23844
	addi	r9 r0 0
	jump	L_cont_23845
L_else_23844 : 
	addi	r9 r0 0
	bgt	r4 r9 L_else_23846
	addi	r9 r0 0
	jump	L_cont_23847
L_else_23846 : 
	addi	r9 r0 1
L_cont_23847 : 
L_cont_23845 : 
L_cont_23843 : 
L_cont_23841 : 
	addi	r10 r0 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	sti	r7 r2 3
	sti	r4 r2 4
	bne	r9 r10 L_else_23848
	add	r9 r7 r4
	ldi	r9 r9 0
	addi	r10 r0 0
	ldi	r11 r9 2
	addi	r12 r0 0
	add	r11 r11 r10
	ldi	r11 r11 0
	bgt	r12 r11 L_else_23850
	ldi	r11 r9 3
	add	r11 r11 r10
	ldi	r11 r11 0
	addi	r12 r0 0
	sti	r9 r2 5
	bne	r11 r12 L_else_23852
	jump	L_cont_23853
L_else_23852 : 
	add	r5 r0 r10
	add	r4 r0 r9
	addi	r2 r2 7
	call	L_calc_diffuse_using_1point_2869
	subi	r2 r2 7
L_cont_23853 : 
	addi	r5 r0 1
	ldi	r4 r2 5
	addi	r2 r2 7
	call	L_do_without_neighbors_2878
	subi	r2 r2 7
	jump	L_cont_23851
L_else_23850 : 
L_cont_23851 : 
	jump	L_cont_23849
L_else_23848 : 
	addi	r9 r0 0
	add	r10 r7 r4
	ldi	r10 r10 0
	addi	r11 r0 0
	ldi	r12 r10 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bgt	r11 r12 L_else_23854
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
	bne	r12 r11 L_else_23856
	add	r12 r8 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_23858
	addi	r12 r0 1
	sub	r12 r4 r12
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_23860
	addi	r12 r0 1
	add	r12 r4 r12
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_23862
	addi	r11 r0 1
	jump	L_cont_23863
L_else_23862 : 
	addi	r11 r0 0
L_cont_23863 : 
	jump	L_cont_23861
L_else_23860 : 
	addi	r11 r0 0
L_cont_23861 : 
	jump	L_cont_23859
L_else_23858 : 
	addi	r11 r0 0
L_cont_23859 : 
	jump	L_cont_23857
L_else_23856 : 
	addi	r11 r0 0
L_cont_23857 : 
	addi	r12 r0 0
	bne	r11 r12 L_else_23864
	add	r10 r7 r4
	ldi	r10 r10 0
	add	r5 r0 r9
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_do_without_neighbors_2878
	subi	r2 r2 7
	jump	L_cont_23865
L_else_23864 : 
	ldi	r10 r10 3
	add	r10 r10 r9
	ldi	r10 r10 0
	addi	r11 r0 0
	bne	r10 r11 L_else_23866
	jump	L_cont_23867
L_else_23866 : 
	add	r5 r0 r6
	add	r6 r0 r7
	add	r7 r0 r8
	add	r8 r0 r9
	addi	r2 r2 7
	call	L_calc_diffuse_using_5points_2872
	subi	r2 r2 7
L_cont_23867 : 
	addi	r9 r0 1
	ldi	r4 r2 4
	ldi	r5 r2 2
	ldi	r6 r2 1
	ldi	r7 r2 3
	ldi	r8 r2 0
	addi	r2 r2 7
	call	L_try_exploit_neighbors_2894
	subi	r2 r2 7
L_cont_23865 : 
	jump	L_cont_23855
L_else_23854 : 
L_cont_23855 : 
L_cont_23849 : 
	addi	r4 r0 4127
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r2 r2 7
	call	min_caml_print_float
	subi	r2 r2 7
	addi	r4 r0 4127
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r2 r2 7
	call	min_caml_print_float
	subi	r2 r2 7
	addi	r4 r0 4127
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r2 r2 7
	call	min_caml_print_float
	subi	r2 r2 7
	addi	r4 r0 1
	ldi	r5 r2 4
	add	r4 r5 r4
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	bgt	r5 r4 L_else_23868
	return
L_else_23868 : 
	addi	r5 r0 4127
	ldi	r7 r2 3
	add	r6 r7 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r8 r0 0
	addi	r9 r0 0
	add	r9 r6 r9
	fldi	f2 r9 0
	add	r8 r5 r8
	fsti	f2 r8 0
	addi	r8 r0 1
	addi	r9 r0 1
	add	r9 r6 r9
	fldi	f2 r9 0
	add	r8 r5 r8
	fsti	f2 r8 0
	addi	r8 r0 2
	addi	r9 r0 2
	add	r6 r6 r9
	fldi	f2 r6 0
	add	r5 r5 r8
	fsti	f2 r5 0
	addi	r5 r0 4130
	addi	r6 r0 1
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 1
	ldi	r8 r2 2
	add	r6 r8 r6
	bgt	r5 r6 L_else_23870
	addi	r5 r0 0
	jump	L_cont_23871
L_else_23870 : 
	addi	r5 r0 0
	bgt	r8 r5 L_else_23872
	addi	r5 r0 0
	jump	L_cont_23873
L_else_23872 : 
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 1
	add	r6 r4 r6
	bgt	r5 r6 L_else_23874
	addi	r5 r0 0
	jump	L_cont_23875
L_else_23874 : 
	addi	r5 r0 0
	bgt	r4 r5 L_else_23876
	addi	r5 r0 0
	jump	L_cont_23877
L_else_23876 : 
	addi	r5 r0 1
L_cont_23877 : 
L_cont_23875 : 
L_cont_23873 : 
L_cont_23871 : 
	addi	r6 r0 0
	sti	r4 r2 6
	bne	r5 r6 L_else_23878
	add	r5 r7 r4
	ldi	r5 r5 0
	addi	r6 r0 0
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 8
	call	L_do_without_neighbors_2878
	subi	r2 r2 8
	jump	L_cont_23879
L_else_23878 : 
	addi	r9 r0 0
	ldi	r6 r2 1
	ldi	r5 r2 0
	add	r1 r0 r8
	add	r8 r0 r5
	add	r5 r0 r1
	addi	r2 r2 8
	call	L_try_exploit_neighbors_2894
	subi	r2 r2 8
L_cont_23879 : 
	addi	r4 r0 4127
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r2 r2 8
	call	min_caml_print_float
	subi	r2 r2 8
	addi	r4 r0 4127
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r2 r2 8
	call	min_caml_print_float
	subi	r2 r2 8
	addi	r4 r0 4127
	addi	r5 r0 2
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r2 r2 8
	call	min_caml_print_float
	subi	r2 r2 8
	addi	r4 r0 1
	ldi	r5 r2 6
	add	r4 r5 r4
	ldi	r5 r2 2
	ldi	r6 r2 1
	ldi	r7 r2 3
	ldi	r8 r2 0
	jump	L_scan_pixel_2921
L_scan_line_2927 : 
	addi	r9 r0 4130
	addi	r10 r0 1
	add	r9 r9 r10
	ldi	r9 r9 0
	bgt	r9 r4 L_else_23880
	return
L_else_23880 : 
	addi	r9 r0 4130
	addi	r10 r0 1
	add	r9 r9 r10
	ldi	r9 r9 0
	addi	r10 r0 1
	sub	r9 r9 r10
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r5 r2 2
	sti	r4 r2 3
	sti	r6 r2 4
	bgt	r9 r4 L_else_23882
	jump	L_cont_23883
L_else_23882 : 
	addi	r9 r0 1
	add	r9 r4 r9
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_pretrace_line_2917
	subi	r2 r2 6
L_cont_23883 : 
	addi	r4 r0 0
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	bgt	r5 r4 L_else_23884
	jump	L_cont_23885
L_else_23884 : 
	addi	r5 r0 4127
	ldi	r7 r2 4
	add	r6 r7 r4
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r8 r0 0
	addi	r9 r0 0
	add	r9 r6 r9
	fldi	f2 r9 0
	add	r8 r5 r8
	fsti	f2 r8 0
	addi	r8 r0 1
	addi	r9 r0 1
	add	r9 r6 r9
	fldi	f2 r9 0
	add	r8 r5 r8
	fsti	f2 r8 0
	addi	r8 r0 2
	addi	r9 r0 2
	add	r6 r6 r9
	fldi	f2 r6 0
	add	r5 r5 r8
	fsti	f2 r5 0
	addi	r5 r0 4130
	addi	r6 r0 1
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 1
	ldi	r8 r2 3
	add	r6 r8 r6
	bgt	r5 r6 L_else_23886
	addi	r5 r0 0
	jump	L_cont_23887
L_else_23886 : 
	addi	r5 r0 0
	bgt	r8 r5 L_else_23888
	addi	r5 r0 0
	jump	L_cont_23889
L_else_23888 : 
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 1
	bgt	r5 r6 L_else_23890
	addi	r5 r0 0
	jump	L_cont_23891
L_else_23890 : 
	addi	r5 r0 0
L_cont_23891 : 
L_cont_23889 : 
L_cont_23887 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_23892
	add	r4 r7 r4
	ldi	r4 r4 0
	addi	r5 r0 0
	addi	r2 r2 6
	call	L_do_without_neighbors_2878
	subi	r2 r2 6
	jump	L_cont_23893
L_else_23892 : 
	addi	r9 r0 0
	ldi	r6 r2 2
	ldi	r5 r2 1
	add	r1 r0 r8
	add	r8 r0 r5
	add	r5 r0 r1
	addi	r2 r2 6
	call	L_try_exploit_neighbors_2894
	subi	r2 r2 6
L_cont_23893 : 
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
	ldi	r6 r2 2
	ldi	r7 r2 4
	ldi	r8 r2 1
	addi	r2 r2 6
	call	L_scan_pixel_2921
	subi	r2 r2 6
L_cont_23885 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r5 r5 r4
	addi	r4 r0 2
	ldi	r6 r2 0
	add	r4 r6 r4
	addi	r6 r0 5
	bgt	r6 r4 L_else_23894
	addi	r6 r0 5
	sub	r6 r4 r6
	jump	L_cont_23895
L_else_23894 : 
	add	r6 r0 r4
L_cont_23895 : 
	addi	r4 r0 4130
	addi	r7 r0 1
	add	r4 r4 r7
	ldi	r4 r4 0
	bgt	r4 r5 L_else_23896
	return
L_else_23896 : 
	addi	r4 r0 4130
	addi	r7 r0 1
	add	r4 r4 r7
	ldi	r4 r4 0
	addi	r7 r0 1
	sub	r4 r4 r7
	sti	r6 r2 5
	sti	r5 r2 6
	bgt	r4 r5 L_else_23898
	jump	L_cont_23899
L_else_23898 : 
	addi	r4 r0 1
	add	r4 r5 r4
	ldi	r7 r2 2
	add	r5 r0 r4
	add	r4 r0 r7
	addi	r2 r2 8
	call	L_pretrace_line_2917
	subi	r2 r2 8
L_cont_23899 : 
	addi	r4 r0 0
	ldi	r5 r2 6
	ldi	r6 r2 4
	ldi	r7 r2 1
	ldi	r8 r2 2
	addi	r2 r2 8
	call	L_scan_pixel_2921
	subi	r2 r2 8
	addi	r4 r0 1
	ldi	r5 r2 6
	add	r4 r5 r4
	addi	r5 r0 2
	ldi	r6 r2 5
	add	r5 r6 r5
	addi	r6 r0 5
	bgt	r6 r5 L_else_23900
	addi	r6 r0 5
	sub	r8 r5 r6
	jump	L_cont_23901
L_else_23900 : 
	add	r8 r0 r5
L_cont_23901 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	ldi	r7 r2 4
	jump	L_scan_line_2927
L_create_float5x3array_2933 : 
	addi	r4 r0 3
	fldi	f2 r0 51
	addi	r2 r2 1
	call	min_caml_create_float_array
	subi	r2 r2 1
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 1
	call	min_caml_create_array
	subi	r2 r2 1
	addi	r5 r0 1
	addi	r6 r0 3
	fldi	f2 r0 51
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 2
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 2
	add	r4 r0 r5
	addi	r2 r2 4
	call	min_caml_create_float_array
	subi	r2 r2 4
	ldi	r5 r2 2
	ldi	r6 r2 1
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 3
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	min_caml_create_float_array
	subi	r2 r2 5
	ldi	r5 r2 3
	ldi	r6 r2 1
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 4
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 4
	add	r4 r0 r5
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	ldi	r6 r2 1
	add	r5 r6 r5
	sti	r4 r5 0
	add	r4 r0 r6
	return
L_create_pixel_2935 : 
	addi	r4 r0 3
	fldi	f2 r0 51
	addi	r2 r2 1
	call	min_caml_create_float_array
	subi	r2 r2 1
	addi	r5 r0 3
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
	fldi	f2 r0 51
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
L_init_line_elements_2937 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_23902
	addi	r6 r0 3
	fldi	f2 r0 51
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	sti	r4 r2 2
	addi	r2 r2 4
	call	L_create_float5x3array_2933
	subi	r2 r2 4
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 4
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	sti	r4 r2 5
	addi	r2 r2 7
	call	L_create_float5x3array_2933
	subi	r2 r2 7
	sti	r4 r2 6
	addi	r2 r2 8
	call	L_create_float5x3array_2933
	subi	r2 r2 8
	addi	r5 r0 1
	addi	r6 r0 0
	sti	r4 r2 7
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 9
	call	min_caml_create_array
	subi	r2 r2 9
	sti	r4 r2 8
	addi	r2 r2 10
	call	L_create_float5x3array_2933
	subi	r2 r2 10
	add	r5 r0 r3
	addi	r3 r3 8
	sti	r4 r5 7
	ldi	r4 r2 8
	sti	r4 r5 6
	ldi	r4 r2 7
	sti	r4 r5 5
	ldi	r4 r2 6
	sti	r4 r5 4
	ldi	r4 r2 5
	sti	r4 r5 3
	ldi	r4 r2 4
	sti	r4 r5 2
	ldi	r4 r2 3
	sti	r4 r5 1
	ldi	r4 r2 2
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_23903
	sti	r4 r2 9
	addi	r2 r2 11
	call	L_create_pixel_2935
	subi	r2 r2 11
	ldi	r5 r2 9
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	jump	L_init_line_elements_2937
L_else_23903 : 
	add	r4 r0 r6
	return
L_else_23902 : 
	add	r4 r0 r4
	return
L_calc_dirvec_2947 : 
	addi	r7 r0 5
	bgt	r7 r4 L_else_23904
	fmul	f4 f2 f2
	fmul	f5 f3 f3
	fadd	f4 f4 f5
	fldi	f5 r0 38
	fadd	f4 f4 f5
	fldi	f5 r0 28
	fldi	f6 r0 38
	fbgt	f4 f6 L_else_23905
	fldi	f6 r0 38
	jump	L_cont_23906
L_else_23905 : 
	fldi	f6 r0 38
	fdiv	f6 f6 f4
L_cont_23906 : 
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f3 r2 2
	fsti	f2 r2 4
	fsti	f4 r2 6
	fadd	f3 f0 f5
	fadd	f2 f0 f4
	fadd	f4 f0 f6
	addi	r2 r2 9
	call	L_isqrt_2499
	subi	r2 r2 9
	fldi	f3 r2 6
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fdiv	f3 f3 f2
	fldi	f4 r2 2
	fdiv	f4 f4 f2
	fldi	f5 r0 38
	fdiv	f2 f5 f2
	addi	r4 r0 4148
	ldi	r5 r2 1
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 0
	add	r6 r4 r5
	ldi	r6 r6 0
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	fsti	f3 r7 0
	addi	r7 r0 1
	add	r7 r6 r7
	fsti	f4 r7 0
	addi	r7 r0 2
	add	r6 r6 r7
	fsti	f2 r6 0
	addi	r6 r0 40
	add	r6 r5 r6
	add	r6 r4 r6
	ldi	r6 r6 0
	ldi	r6 r6 0
	fsub	f5 f0 f4
	addi	r7 r0 0
	add	r7 r6 r7
	fsti	f3 r7 0
	addi	r7 r0 1
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 2
	add	r6 r6 r7
	fsti	f5 r6 0
	addi	r6 r0 80
	add	r6 r5 r6
	add	r6 r4 r6
	ldi	r6 r6 0
	ldi	r6 r6 0
	fsub	f5 f0 f3
	fsub	f6 f0 f4
	addi	r7 r0 0
	add	r7 r6 r7
	fsti	f2 r7 0
	addi	r7 r0 1
	add	r7 r6 r7
	fsti	f5 r7 0
	addi	r7 r0 2
	add	r6 r6 r7
	fsti	f6 r6 0
	addi	r6 r0 1
	add	r6 r5 r6
	add	r6 r4 r6
	ldi	r6 r6 0
	ldi	r6 r6 0
	fsub	f5 f0 f3
	fsub	f6 f0 f4
	fsub	f7 f0 f2
	addi	r7 r0 0
	add	r7 r6 r7
	fsti	f5 r7 0
	addi	r7 r0 1
	add	r7 r6 r7
	fsti	f6 r7 0
	addi	r7 r0 2
	add	r6 r6 r7
	fsti	f7 r6 0
	addi	r6 r0 41
	add	r6 r5 r6
	add	r6 r4 r6
	ldi	r6 r6 0
	ldi	r6 r6 0
	fsub	f5 f0 f3
	fsub	f6 f0 f2
	addi	r7 r0 0
	add	r7 r6 r7
	fsti	f5 r7 0
	addi	r7 r0 1
	add	r7 r6 r7
	fsti	f6 r7 0
	addi	r7 r0 2
	add	r6 r6 r7
	fsti	f4 r6 0
	addi	r6 r0 81
	add	r5 r5 r6
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 0
	fsub	f2 f0 f2
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
L_else_23904 : 
	fmul	f2 f3 f3
	fldi	f3 r0 7
	fadd	f2 f2 f3
	fldi	f3 r0 28
	fldi	f6 r0 38
	fbgt	f2 f6 L_else_23908
	fldi	f6 r0 38
	jump	L_cont_23909
L_else_23908 : 
	fldi	f6 r0 38
	fdiv	f6 f6 f2
L_cont_23909 : 
	fldi	f7 r0 30
	fmul	f7 f7 f6
	fsub	f3 f6 f3
	fldi	f8 r0 51
	fbgt	f8 f3 L_else_23910
	fadd	f3 f0 f3
	jump	L_cont_23911
L_else_23910 : 
	fsub	f3 f0 f3
L_cont_23911 : 
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f5 r2 8
	sti	r4 r2 10
	fsti	f4 r2 12
	fsti	f2 r2 14
	fbgt	f7 f3 L_else_23913
	fldi	f3 r0 29
	fmul	f7 f2 f6
	fmul	f7 f7 f6
	fsub	f3 f3 f7
	fmul	f3 f6 f3
	fldi	f7 r0 28
	fdiv	f3 f3 f7
	fadd	f4 f0 f3
	fadd	f3 f0 f6
	addi	r2 r2 17
	call	L_isqrt_2499
	subi	r2 r2 17
	jump	L_cont_23914
L_else_23913 : 
	fadd	f2 f0 f6
L_cont_23914 : 
	fldi	f3 r2 14
	fmul	f2 f3 f2
	fldi	f3 r0 38
	fdiv	f3 f3 f2
	fsti	f2 r2 16
	fadd	f2 f0 f3
	addi	r2 r2 19
	call	L_atan_2497
	subi	r2 r2 19
	fldi	f3 r2 12
	fmul	f2 f2 f3
	fldi	f4 r0 57
	fldi	f5 r0 56
	fsti	f2 r2 18
	fbgt	f2 f5 L_else_23915
	fldi	f6 r0 55
	fbgt	f6 f2 L_else_23917
	fldi	f4 r0 54
	fldi	f6 r0 53
	fldi	f7 r0 52
	fldi	f8 r0 51
	fbgt	f2 f8 L_else_23919
	fldi	f4 r0 37
	fbgt	f4 f2 L_else_23921
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_23922
L_else_23921 : 
	fldi	f4 r0 36
	fbgt	f4 f2 L_else_23923
	fadd	f4 f6 f2
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 44
	fmul	f9 f10 f9
	fldi	f10 r0 43
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 42
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 41
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 40
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 39
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 38
	fadd	f4 f4 f5
	fsub	f2 f0 f4
	jump	L_cont_23924
L_else_23923 : 
	fadd	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 50
	fmul	f5 f11 f5
	fldi	f11 r0 49
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 48
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 47
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 46
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 45
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f4 f5 f4
	fsub	f2 f0 f4
L_cont_23924 : 
L_cont_23922 : 
	jump	L_cont_23920
L_else_23919 : 
	fbgt	f2 f4 L_else_23925
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_23926
L_else_23925 : 
	fbgt	f2 f7 L_else_23927
	fsub	f4 f2 f6
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 44
	fmul	f9 f10 f9
	fldi	f10 r0 43
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 42
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 41
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 40
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 39
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 38
	fadd	f2 f4 f5
	jump	L_cont_23928
L_else_23927 : 
	fsub	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 50
	fmul	f5 f11 f5
	fldi	f11 r0 49
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 48
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 47
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 46
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 45
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f2 f5 f4
L_cont_23928 : 
L_cont_23926 : 
L_cont_23920 : 
	jump	L_cont_23918
L_else_23917 : 
	fadd	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 21
	call	L_sin_2493
	subi	r2 r2 21
L_cont_23918 : 
	jump	L_cont_23916
L_else_23915 : 
	fsub	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 21
	call	L_sin_2493
	subi	r2 r2 21
L_cont_23916 : 
	fldi	f3 r2 18
	fsti	f2 r2 20
	fadd	f2 f0 f3
	addi	r2 r2 23
	call	L_cos_2495
	subi	r2 r2 23
	fldi	f3 r2 20
	fdiv	f2 f3 f2
	fldi	f3 r2 16
	fmul	f2 f2 f3
	addi	r4 r0 1
	ldi	r5 r2 10
	add	r4 r5 r4
	fmul	f3 f2 f2
	fldi	f4 r0 7
	fadd	f3 f3 f4
	fldi	f4 r0 28
	fldi	f5 r0 38
	fbgt	f3 f5 L_else_23929
	fldi	f5 r0 38
	jump	L_cont_23930
L_else_23929 : 
	fldi	f5 r0 38
	fdiv	f5 f5 f3
L_cont_23930 : 
	fldi	f6 r0 30
	fmul	f6 f6 f5
	fsub	f4 f5 f4
	fldi	f7 r0 51
	fbgt	f7 f4 L_else_23931
	fadd	f4 f0 f4
	jump	L_cont_23932
L_else_23931 : 
	fsub	f4 f0 f4
L_cont_23932 : 
	fsti	f2 r2 22
	sti	r4 r2 24
	fsti	f3 r2 26
	fbgt	f6 f4 L_else_23934
	fldi	f4 r0 29
	fmul	f6 f3 f5
	fmul	f6 f6 f5
	fsub	f4 f4 f6
	fmul	f4 f5 f4
	fldi	f6 r0 28
	fdiv	f4 f4 f6
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	addi	r2 r2 29
	call	L_isqrt_2499
	subi	r2 r2 29
	jump	L_cont_23935
L_else_23934 : 
	fadd	f2 f0 f5
L_cont_23935 : 
	fldi	f3 r2 26
	fmul	f2 f3 f2
	fldi	f3 r0 38
	fdiv	f3 f3 f2
	fsti	f2 r2 28
	fadd	f2 f0 f3
	addi	r2 r2 31
	call	L_atan_2497
	subi	r2 r2 31
	fldi	f3 r2 8
	fmul	f2 f2 f3
	fldi	f4 r0 57
	fldi	f5 r0 56
	fsti	f2 r2 30
	fbgt	f2 f5 L_else_23936
	fldi	f6 r0 55
	fbgt	f6 f2 L_else_23938
	fldi	f4 r0 54
	fldi	f6 r0 53
	fldi	f7 r0 52
	fldi	f8 r0 51
	fbgt	f2 f8 L_else_23940
	fldi	f4 r0 37
	fbgt	f4 f2 L_else_23942
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_23943
L_else_23942 : 
	fldi	f4 r0 36
	fbgt	f4 f2 L_else_23944
	fadd	f4 f6 f2
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 44
	fmul	f9 f10 f9
	fldi	f10 r0 43
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 42
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 41
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 40
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 39
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 38
	fadd	f4 f4 f5
	fsub	f2 f0 f4
	jump	L_cont_23945
L_else_23944 : 
	fadd	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 50
	fmul	f5 f11 f5
	fldi	f11 r0 49
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 48
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 47
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 46
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 45
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f4 f5 f4
	fsub	f2 f0 f4
L_cont_23945 : 
L_cont_23943 : 
	jump	L_cont_23941
L_else_23940 : 
	fbgt	f2 f4 L_else_23946
	fmul	f4 f2 f2
	fmul	f5 f2 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fmul	f4 f9 f4
	fldi	f10 r0 50
	fmul	f4 f10 f4
	fldi	f10 r0 49
	fmul	f9 f10 f9
	fsub	f4 f4 f9
	fldi	f9 r0 48
	fmul	f8 f9 f8
	fadd	f4 f4 f8
	fldi	f8 r0 47
	fmul	f7 f8 f7
	fsub	f4 f4 f7
	fldi	f7 r0 46
	fmul	f6 f7 f6
	fadd	f4 f4 f6
	fldi	f6 r0 45
	fmul	f5 f6 f5
	fsub	f4 f4 f5
	fadd	f2 f4 f2
	jump	L_cont_23947
L_else_23946 : 
	fbgt	f2 f7 L_else_23948
	fsub	f4 f2 f6
	fmul	f4 f4 f4
	fmul	f5 f4 f4
	fmul	f6 f5 f4
	fmul	f7 f6 f4
	fmul	f8 f7 f4
	fmul	f9 f8 f4
	fldi	f10 r0 44
	fmul	f9 f10 f9
	fldi	f10 r0 43
	fmul	f8 f10 f8
	fsub	f8 f9 f8
	fldi	f9 r0 42
	fmul	f7 f9 f7
	fadd	f7 f8 f7
	fldi	f8 r0 41
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 40
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 39
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 38
	fadd	f2 f4 f5
	jump	L_cont_23949
L_else_23948 : 
	fsub	f4 f5 f2
	fmul	f5 f4 f4
	fmul	f6 f4 f5
	fmul	f7 f6 f5
	fmul	f8 f7 f5
	fmul	f9 f8 f5
	fmul	f10 f9 f5
	fmul	f5 f10 f5
	fldi	f11 r0 50
	fmul	f5 f11 f5
	fldi	f11 r0 49
	fmul	f10 f11 f10
	fsub	f5 f5 f10
	fldi	f10 r0 48
	fmul	f9 f10 f9
	fadd	f5 f5 f9
	fldi	f9 r0 47
	fmul	f8 f9 f8
	fsub	f5 f5 f8
	fldi	f8 r0 46
	fmul	f7 f8 f7
	fadd	f5 f5 f7
	fldi	f7 r0 45
	fmul	f6 f7 f6
	fsub	f5 f5 f6
	fadd	f2 f5 f4
L_cont_23949 : 
L_cont_23947 : 
L_cont_23941 : 
	jump	L_cont_23939
L_else_23938 : 
	fadd	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 33
	call	L_sin_2493
	subi	r2 r2 33
L_cont_23939 : 
	jump	L_cont_23937
L_else_23936 : 
	fsub	f4 f2 f4
	fadd	f2 f0 f4
	addi	r2 r2 33
	call	L_sin_2493
	subi	r2 r2 33
L_cont_23937 : 
	fldi	f3 r2 30
	fsti	f2 r2 32
	fadd	f2 f0 f3
	addi	r2 r2 35
	call	L_cos_2495
	subi	r2 r2 35
	fldi	f3 r2 32
	fdiv	f2 f3 f2
	fldi	f3 r2 28
	fmul	f3 f2 f3
	fldi	f2 r2 22
	fldi	f4 r2 12
	fldi	f5 r2 8
	ldi	r4 r2 24
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_calc_dirvec_2947
L_calc_dirvecs_2955 : 
	addi	r7 r0 0
	bgt	r7 r4 L_else_23950
	foi	f3 r4
	fldi	f4 r0 4
	fmul	f3 f3 f4
	fldi	f4 r0 3
	fsub	f4 f3 f4
	addi	r7 r0 0
	fldi	f3 r0 51
	fldi	f5 r0 51
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
	call	L_calc_dirvec_2947
	subi	r2 r2 6
	ldi	r4 r2 4
	foi	f2 r4
	fldi	f3 r0 4
	fmul	f2 f2 f3
	fldi	f3 r0 7
	fadd	f4 f2 f3
	addi	r5 r0 0
	fldi	f2 r0 51
	fldi	f3 r0 51
	addi	r6 r0 2
	ldi	r7 r2 3
	add	r6 r7 r6
	fldi	f5 r2 0
	ldi	r8 r2 2
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 6
	call	L_calc_dirvec_2947
	subi	r2 r2 6
	addi	r4 r0 1
	ldi	r5 r2 4
	sub	r4 r5 r4
	addi	r5 r0 1
	ldi	r6 r2 2
	add	r5 r6 r5
	addi	r6 r0 5
	bgt	r6 r5 L_else_23951
	addi	r6 r0 5
	sub	r5 r5 r6
	jump	L_cont_23952
L_else_23951 : 
	add	r5 r0 r5
L_cont_23952 : 
	fldi	f2 r2 0
	ldi	r6 r2 3
	jump	L_calc_dirvecs_2955
L_else_23950 : 
	return
L_calc_dirvec_rows_2960 : 
	addi	r7 r0 0
	bgt	r7 r4 L_else_23954
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
	call	L_calc_dirvecs_2955
	subi	r2 r2 4
	addi	r4 r0 1
	ldi	r5 r2 2
	sub	r4 r5 r4
	addi	r5 r0 2
	ldi	r6 r2 1
	add	r5 r6 r5
	addi	r6 r0 5
	bgt	r6 r5 L_else_23955
	addi	r6 r0 5
	sub	r5 r5 r6
	jump	L_cont_23956
L_else_23955 : 
	add	r5 r0 r5
L_cont_23956 : 
	addi	r6 r0 4
	ldi	r7 r2 0
	add	r6 r7 r6
	addi	r7 r0 0
	bgt	r7 r4 L_else_23957
	foi	f2 r4
	fldi	f3 r0 4
	fmul	f2 f2 f3
	fldi	f3 r0 3
	fsub	f2 f2 f3
	addi	r7 r0 4
	sti	r6 r2 3
	sti	r5 r2 4
	sti	r4 r2 5
	add	r4 r0 r7
	addi	r2 r2 7
	call	L_calc_dirvecs_2955
	subi	r2 r2 7
	addi	r4 r0 1
	ldi	r5 r2 5
	sub	r4 r5 r4
	addi	r5 r0 2
	ldi	r6 r2 4
	add	r5 r6 r5
	addi	r6 r0 5
	bgt	r6 r5 L_else_23958
	addi	r6 r0 5
	sub	r5 r5 r6
	jump	L_cont_23959
L_else_23958 : 
	add	r5 r0 r5
L_cont_23959 : 
	addi	r6 r0 4
	ldi	r7 r2 3
	add	r6 r7 r6
	jump	L_calc_dirvec_rows_2960
L_else_23957 : 
	return
L_else_23954 : 
	return
L_create_dirvec_elements_2966 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_23962
	addi	r6 r0 3
	fldi	f2 r0 51
	sti	r5 r2 0
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 2
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 2
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_23963
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	min_caml_create_float_array
	subi	r2 r2 5
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 4
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 4
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 3
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_23964
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 5
	add	r4 r0 r5
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 6
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 6
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 5
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_23965
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 8
	addi	r2 r2 10
	call	min_caml_create_array
	subi	r2 r2 10
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 8
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 7
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	jump	L_create_dirvec_elements_2966
L_else_23965 : 
	return
L_else_23964 : 
	return
L_else_23963 : 
	return
L_else_23962 : 
	return
L_create_dirvecs_2969 : 
	addi	r5 r0 0
	bgt	r5 r4 L_else_23970
	addi	r5 r0 4148
	addi	r6 r0 120
	addi	r7 r0 3
	fldi	f2 r0 51
	sti	r4 r2 0
	sti	r5 r2 1
	sti	r6 r2 2
	add	r4 r0 r7
	addi	r2 r2 4
	call	min_caml_create_float_array
	subi	r2 r2 4
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 3
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 3
	sti	r4 r5 0
	add	r5 r0 r5
	ldi	r4 r2 2
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 4148
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r6 r0 118
	addi	r7 r0 3
	fldi	f2 r0 51
	sti	r6 r2 4
	sti	r4 r2 5
	add	r4 r0 r7
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 6
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 6
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 117
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 8
	addi	r2 r2 10
	call	min_caml_create_array
	subi	r2 r2 10
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 8
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 7
	ldi	r6 r2 5
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 116
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 9
	add	r4 r0 r5
	addi	r2 r2 11
	call	min_caml_create_float_array
	subi	r2 r2 11
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 10
	addi	r2 r2 12
	call	min_caml_create_array
	subi	r2 r2 12
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 10
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 9
	ldi	r6 r2 5
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r5 r0 115
	add	r4 r0 r6
	addi	r2 r2 12
	call	L_create_dirvec_elements_2966
	subi	r2 r2 12
	addi	r4 r0 1
	ldi	r5 r2 0
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_23971
	addi	r5 r0 4148
	addi	r6 r0 120
	addi	r7 r0 3
	fldi	f2 r0 51
	sti	r4 r2 11
	sti	r5 r2 12
	sti	r6 r2 13
	add	r4 r0 r7
	addi	r2 r2 15
	call	min_caml_create_float_array
	subi	r2 r2 15
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 14
	addi	r2 r2 16
	call	min_caml_create_array
	subi	r2 r2 16
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 14
	sti	r4 r5 0
	add	r5 r0 r5
	ldi	r4 r2 13
	addi	r2 r2 16
	call	min_caml_create_array
	subi	r2 r2 16
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 4148
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r6 r0 118
	addi	r7 r0 3
	fldi	f2 r0 51
	sti	r6 r2 15
	sti	r4 r2 16
	add	r4 r0 r7
	addi	r2 r2 18
	call	min_caml_create_float_array
	subi	r2 r2 18
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 17
	addi	r2 r2 19
	call	min_caml_create_array
	subi	r2 r2 19
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 17
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 15
	ldi	r6 r2 16
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 117
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 18
	add	r4 r0 r5
	addi	r2 r2 20
	call	min_caml_create_float_array
	subi	r2 r2 20
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 19
	addi	r2 r2 21
	call	min_caml_create_array
	subi	r2 r2 21
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 19
	sti	r4 r5 0
	add	r4 r0 r5
	ldi	r5 r2 18
	ldi	r6 r2 16
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r5 r0 116
	add	r4 r0 r6
	addi	r2 r2 21
	call	L_create_dirvec_elements_2966
	subi	r2 r2 21
	addi	r4 r0 1
	ldi	r5 r2 11
	sub	r4 r5 r4
	jump	L_create_dirvecs_2969
L_else_23971 : 
	return
L_else_23970 : 
	return
L_init_dirvec_constants_2971 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_23974
	add	r6 r4 r5
	ldi	r6 r6 0
	addi	r7 r0 4144
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r8 r0 1
	sub	r7 r7 r8
	sti	r4 r2 0
	sti	r5 r2 1
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 3
	addi	r4 r0 1
	ldi	r5 r2 1
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_23975
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4144
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r8 r0 1
	sub	r7 r7 r8
	addi	r8 r0 0
	sti	r4 r2 2
	bgt	r8 r7 L_else_23976
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 3
	bne	r11 r12 L_else_23978
	sti	r7 r2 4
	sti	r9 r2 5
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_setup_rect_table_2744
	subi	r2 r2 7
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_23979
L_else_23978 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_23980
	sti	r7 r2 4
	sti	r9 r2 5
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_setup_surface_table_2747
	subi	r2 r2 7
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_23981
L_else_23980 : 
	sti	r7 r2 4
	sti	r9 r2 5
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_setup_second_table_2750
	subi	r2 r2 7
	ldi	r5 r2 4
	ldi	r6 r2 5
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_23981 : 
L_cont_23979 : 
	addi	r4 r0 1
	sub	r5 r5 r4
	ldi	r4 r2 3
	addi	r2 r2 7
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 7
	jump	L_cont_23977
L_else_23976 : 
L_cont_23977 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_23982
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4144
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r8 r0 1
	sub	r7 r7 r8
	sti	r4 r2 6
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 8
	addi	r4 r0 1
	ldi	r5 r2 6
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_23983
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4144
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r8 r0 1
	sub	r7 r7 r8
	addi	r8 r0 0
	sti	r4 r2 7
	bgt	r8 r7 L_else_23984
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 8
	bne	r11 r12 L_else_23986
	sti	r7 r2 9
	sti	r9 r2 10
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 12
	call	L_setup_rect_table_2744
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_23987
L_else_23986 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_23988
	sti	r7 r2 9
	sti	r9 r2 10
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 12
	call	L_setup_surface_table_2747
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_23989
L_else_23988 : 
	sti	r7 r2 9
	sti	r9 r2 10
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 12
	call	L_setup_second_table_2750
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_23989 : 
L_cont_23987 : 
	addi	r4 r0 1
	sub	r5 r5 r4
	ldi	r4 r2 8
	addi	r2 r2 12
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 12
	jump	L_cont_23985
L_else_23984 : 
L_cont_23985 : 
	addi	r4 r0 1
	ldi	r5 r2 7
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_init_dirvec_constants_2971
L_else_23983 : 
	return
L_else_23982 : 
	return
L_else_23975 : 
	return
L_else_23974 : 
	return
L_init_vecset_constants_2974 : 
	addi	r5 r0 0
	bgt	r5 r4 L_else_23994
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	add	r6 r5 r6
	ldi	r6 r6 0
	addi	r7 r0 4144
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r8 r0 1
	sub	r7 r7 r8
	addi	r8 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	bgt	r8 r7 L_else_23995
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 2
	bne	r11 r12 L_else_23997
	sti	r7 r2 3
	sti	r9 r2 4
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_setup_rect_table_2744
	subi	r2 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_23998
L_else_23997 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_23999
	sti	r7 r2 3
	sti	r9 r2 4
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_setup_surface_table_2747
	subi	r2 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_24000
L_else_23999 : 
	sti	r7 r2 3
	sti	r9 r2 4
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 6
	call	L_setup_second_table_2750
	subi	r2 r2 6
	ldi	r5 r2 3
	ldi	r6 r2 4
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_24000 : 
L_cont_23998 : 
	addi	r4 r0 1
	sub	r5 r5 r4
	ldi	r4 r2 2
	addi	r2 r2 6
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 6
	jump	L_cont_23996
L_else_23995 : 
L_cont_23996 : 
	addi	r4 r0 118
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 4144
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 1
	sub	r6 r6 r7
	add	r5 r0 r6
	addi	r2 r2 6
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 6
	addi	r4 r0 117
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 4144
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 1
	sub	r6 r6 r7
	addi	r7 r0 0
	bgt	r7 r6 L_else_24001
	addi	r7 r0 5042
	add	r7 r7 r6
	ldi	r7 r7 0
	ldi	r8 r4 1
	ldi	r9 r4 0
	ldi	r10 r7 1
	addi	r11 r0 1
	sti	r4 r2 5
	bne	r10 r11 L_else_24003
	sti	r6 r2 6
	sti	r8 r2 7
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_rect_table_2744
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_24004
L_else_24003 : 
	addi	r11 r0 2
	bne	r10 r11 L_else_24005
	sti	r6 r2 6
	sti	r8 r2 7
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_surface_table_2747
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_24006
L_else_24005 : 
	sti	r6 r2 6
	sti	r8 r2 7
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 9
	call	L_setup_second_table_2750
	subi	r2 r2 9
	ldi	r5 r2 6
	ldi	r6 r2 7
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_24006 : 
L_cont_24004 : 
	addi	r4 r0 1
	sub	r5 r5 r4
	ldi	r4 r2 5
	addi	r2 r2 9
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 9
	jump	L_cont_24002
L_else_24001 : 
L_cont_24002 : 
	addi	r5 r0 116
	ldi	r4 r2 1
	addi	r2 r2 9
	call	L_init_dirvec_constants_2971
	subi	r2 r2 9
	addi	r4 r0 1
	ldi	r5 r2 0
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_24007
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	add	r6 r5 r6
	ldi	r6 r6 0
	addi	r7 r0 4144
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r8 r0 1
	sub	r7 r7 r8
	sti	r4 r2 8
	sti	r5 r2 9
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 11
	addi	r4 r0 118
	ldi	r5 r2 9
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 4144
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 1
	sub	r6 r6 r7
	addi	r7 r0 0
	bgt	r7 r6 L_else_24008
	addi	r7 r0 5042
	add	r7 r7 r6
	ldi	r7 r7 0
	ldi	r8 r4 1
	ldi	r9 r4 0
	ldi	r10 r7 1
	addi	r11 r0 1
	sti	r4 r2 10
	bne	r10 r11 L_else_24010
	sti	r6 r2 11
	sti	r8 r2 12
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 14
	call	L_setup_rect_table_2744
	subi	r2 r2 14
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_24011
L_else_24010 : 
	addi	r11 r0 2
	bne	r10 r11 L_else_24012
	sti	r6 r2 11
	sti	r8 r2 12
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 14
	call	L_setup_surface_table_2747
	subi	r2 r2 14
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_24013
L_else_24012 : 
	sti	r6 r2 11
	sti	r8 r2 12
	add	r5 r0 r7
	add	r4 r0 r9
	addi	r2 r2 14
	call	L_setup_second_table_2750
	subi	r2 r2 14
	ldi	r5 r2 11
	ldi	r6 r2 12
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_24013 : 
L_cont_24011 : 
	addi	r4 r0 1
	sub	r5 r5 r4
	ldi	r4 r2 10
	addi	r2 r2 14
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 14
	jump	L_cont_24009
L_else_24008 : 
L_cont_24009 : 
	addi	r5 r0 117
	ldi	r4 r2 9
	addi	r2 r2 14
	call	L_init_dirvec_constants_2971
	subi	r2 r2 14
	addi	r4 r0 1
	ldi	r5 r2 8
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_24014
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	add	r6 r5 r6
	ldi	r6 r6 0
	addi	r7 r0 4144
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r8 r0 1
	sub	r7 r7 r8
	addi	r8 r0 0
	sti	r4 r2 13
	sti	r5 r2 14
	bgt	r8 r7 L_else_24015
	addi	r8 r0 5042
	add	r8 r8 r7
	ldi	r8 r8 0
	ldi	r9 r6 1
	ldi	r10 r6 0
	ldi	r11 r8 1
	addi	r12 r0 1
	sti	r6 r2 15
	bne	r11 r12 L_else_24017
	sti	r7 r2 16
	sti	r9 r2 17
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 19
	call	L_setup_rect_table_2744
	subi	r2 r2 19
	ldi	r5 r2 16
	ldi	r6 r2 17
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_24018
L_else_24017 : 
	addi	r12 r0 2
	bne	r11 r12 L_else_24019
	sti	r7 r2 16
	sti	r9 r2 17
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 19
	call	L_setup_surface_table_2747
	subi	r2 r2 19
	ldi	r5 r2 16
	ldi	r6 r2 17
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_24020
L_else_24019 : 
	sti	r7 r2 16
	sti	r9 r2 17
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 19
	call	L_setup_second_table_2750
	subi	r2 r2 19
	ldi	r5 r2 16
	ldi	r6 r2 17
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_24020 : 
L_cont_24018 : 
	addi	r4 r0 1
	sub	r5 r5 r4
	ldi	r4 r2 15
	addi	r2 r2 19
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 19
	jump	L_cont_24016
L_else_24015 : 
L_cont_24016 : 
	addi	r5 r0 118
	ldi	r4 r2 14
	addi	r2 r2 19
	call	L_init_dirvec_constants_2971
	subi	r2 r2 19
	addi	r4 r0 1
	ldi	r5 r2 13
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_24021
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	sti	r4 r2 18
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 20
	call	L_init_dirvec_constants_2971
	subi	r2 r2 20
	addi	r4 r0 1
	ldi	r5 r2 18
	sub	r4 r5 r4
	jump	L_init_vecset_constants_2974
L_else_24021 : 
	return
L_else_24014 : 
	return
L_else_24007 : 
	return
L_else_23994 : 
	return
L_main_22655 : 
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
	addi	r5 r0 3
	fldi	f2 r0 51
	sti	r4 r2 0
	add	r4 r0 r5
	addi	r2 r2 2
	call	min_caml_create_float_array
	subi	r2 r2 2
	sti	r4 r2 1
	addi	r2 r2 3
	call	L_create_float5x3array_2933
	subi	r2 r2 3
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 2
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	sti	r4 r2 4
	addi	r2 r2 6
	call	L_create_float5x3array_2933
	subi	r2 r2 6
	sti	r4 r2 5
	addi	r2 r2 7
	call	L_create_float5x3array_2933
	subi	r2 r2 7
	addi	r5 r0 1
	addi	r6 r0 0
	sti	r4 r2 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	sti	r4 r2 7
	addi	r2 r2 9
	call	L_create_float5x3array_2933
	subi	r2 r2 9
	add	r5 r0 r3
	addi	r3 r3 8
	sti	r4 r5 7
	ldi	r4 r2 7
	sti	r4 r5 6
	ldi	r4 r2 6
	sti	r4 r5 5
	ldi	r4 r2 5
	sti	r4 r5 4
	ldi	r4 r2 4
	sti	r4 r5 3
	ldi	r4 r2 3
	sti	r4 r5 2
	ldi	r4 r2 2
	sti	r4 r5 1
	ldi	r4 r2 1
	sti	r4 r5 0
	add	r5 r0 r5
	ldi	r4 r2 0
	addi	r2 r2 9
	call	min_caml_create_array
	subi	r2 r2 9
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 2
	sub	r5 r5 r6
	addi	r6 r0 0
	bgt	r6 r5 L_else_22656
	sti	r5 r2 8
	sti	r4 r2 9
	addi	r2 r2 11
	call	L_create_pixel_2935
	subi	r2 r2 11
	ldi	r5 r2 8
	ldi	r6 r2 9
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_init_line_elements_2937
	subi	r2 r2 11
	jump	L_cont_22657
L_else_22656 : 
	add	r4 r0 r4
L_cont_22657 : 
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 3
	fldi	f2 r0 51
	sti	r4 r2 10
	sti	r5 r2 11
	add	r4 r0 r6
	addi	r2 r2 13
	call	min_caml_create_float_array
	subi	r2 r2 13
	sti	r4 r2 12
	addi	r2 r2 14
	call	L_create_float5x3array_2933
	subi	r2 r2 14
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 13
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 15
	call	min_caml_create_array
	subi	r2 r2 15
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 14
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 16
	call	min_caml_create_array
	subi	r2 r2 16
	sti	r4 r2 15
	addi	r2 r2 17
	call	L_create_float5x3array_2933
	subi	r2 r2 17
	sti	r4 r2 16
	addi	r2 r2 18
	call	L_create_float5x3array_2933
	subi	r2 r2 18
	addi	r5 r0 1
	addi	r6 r0 0
	sti	r4 r2 17
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 19
	call	min_caml_create_array
	subi	r2 r2 19
	sti	r4 r2 18
	addi	r2 r2 20
	call	L_create_float5x3array_2933
	subi	r2 r2 20
	add	r5 r0 r3
	addi	r3 r3 8
	sti	r4 r5 7
	ldi	r4 r2 18
	sti	r4 r5 6
	ldi	r4 r2 17
	sti	r4 r5 5
	ldi	r4 r2 16
	sti	r4 r5 4
	ldi	r4 r2 15
	sti	r4 r5 3
	ldi	r4 r2 14
	sti	r4 r5 2
	ldi	r4 r2 13
	sti	r4 r5 1
	ldi	r4 r2 12
	sti	r4 r5 0
	add	r5 r0 r5
	ldi	r4 r2 11
	addi	r2 r2 20
	call	min_caml_create_array
	subi	r2 r2 20
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 2
	sub	r5 r5 r6
	addi	r6 r0 0
	bgt	r6 r5 L_else_22658
	sti	r5 r2 19
	sti	r4 r2 20
	addi	r2 r2 22
	call	L_create_pixel_2935
	subi	r2 r2 22
	ldi	r5 r2 19
	ldi	r6 r2 20
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	addi	r2 r2 22
	call	L_init_line_elements_2937
	subi	r2 r2 22
	jump	L_cont_22659
L_else_22658 : 
	add	r4 r0 r4
L_cont_22659 : 
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 3
	fldi	f2 r0 51
	sti	r4 r2 21
	sti	r5 r2 22
	add	r4 r0 r6
	addi	r2 r2 24
	call	min_caml_create_float_array
	subi	r2 r2 24
	sti	r4 r2 23
	addi	r2 r2 25
	call	L_create_float5x3array_2933
	subi	r2 r2 25
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 24
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 26
	call	min_caml_create_array
	subi	r2 r2 26
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 25
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 27
	call	min_caml_create_array
	subi	r2 r2 27
	sti	r4 r2 26
	addi	r2 r2 28
	call	L_create_float5x3array_2933
	subi	r2 r2 28
	sti	r4 r2 27
	addi	r2 r2 29
	call	L_create_float5x3array_2933
	subi	r2 r2 29
	addi	r5 r0 1
	addi	r6 r0 0
	sti	r4 r2 28
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 30
	call	min_caml_create_array
	subi	r2 r2 30
	sti	r4 r2 29
	addi	r2 r2 31
	call	L_create_float5x3array_2933
	subi	r2 r2 31
	add	r5 r0 r3
	addi	r3 r3 8
	sti	r4 r5 7
	ldi	r4 r2 29
	sti	r4 r5 6
	ldi	r4 r2 28
	sti	r4 r5 5
	ldi	r4 r2 27
	sti	r4 r5 4
	ldi	r4 r2 26
	sti	r4 r5 3
	ldi	r4 r2 25
	sti	r4 r5 2
	ldi	r4 r2 24
	sti	r4 r5 1
	ldi	r4 r2 23
	sti	r4 r5 0
	add	r5 r0 r5
	ldi	r4 r2 22
	addi	r2 r2 31
	call	min_caml_create_array
	subi	r2 r2 31
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 2
	sub	r5 r5 r6
	addi	r6 r0 0
	bgt	r6 r5 L_else_22660
	sti	r5 r2 30
	sti	r4 r2 31
	addi	r2 r2 33
	call	L_create_pixel_2935
	subi	r2 r2 33
	ldi	r5 r2 30
	ldi	r6 r2 31
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	addi	r2 r2 33
	call	L_init_line_elements_2937
	subi	r2 r2 33
	jump	L_cont_22661
L_else_22660 : 
	add	r4 r0 r4
L_cont_22661 : 
	addi	r5 r0 4096
	addi	r6 r0 0
	sti	r4 r2 32
	sti	r6 r2 33
	sti	r5 r2 34
	addi	r2 r2 36
	call	min_caml_read_float
	subi	r2 r2 36
	ldi	r4 r2 33
	ldi	r5 r2 34
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 4096
	addi	r5 r0 1
	sti	r5 r2 35
	sti	r4 r2 36
	addi	r2 r2 38
	call	min_caml_read_float
	subi	r2 r2 38
	ldi	r4 r2 35
	ldi	r5 r2 36
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 4096
	addi	r5 r0 2
	sti	r5 r2 37
	sti	r4 r2 38
	addi	r2 r2 40
	call	min_caml_read_float
	subi	r2 r2 40
	ldi	r4 r2 37
	ldi	r5 r2 38
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r2 r2 40
	call	min_caml_read_float
	subi	r2 r2 40
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 40
	addi	r2 r2 43
	call	L_cos_2495
	subi	r2 r2 43
	fldi	f3 r2 40
	fsti	f2 r2 42
	fadd	f2 f0 f3
	addi	r2 r2 45
	call	L_sin_2493
	subi	r2 r2 45
	fsti	f2 r2 44
	addi	r2 r2 47
	call	min_caml_read_float
	subi	r2 r2 47
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 46
	addi	r2 r2 49
	call	L_cos_2495
	subi	r2 r2 49
	fldi	f3 r2 46
	fsti	f2 r2 48
	fadd	f2 f0 f3
	addi	r2 r2 51
	call	L_sin_2493
	subi	r2 r2 51
	addi	r4 r0 4099
	addi	r5 r0 0
	fldi	f3 r2 42
	fmul	f4 f3 f2
	fldi	f5 r0 1
	fmul	f4 f4 f5
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 4099
	addi	r5 r0 1
	fldi	f4 r0 0
	fldi	f5 r2 44
	fmul	f4 f5 f4
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 4099
	addi	r5 r0 2
	fldi	f4 r2 48
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
	fldi	f6 r0 51
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
	addi	r2 r2 51
	call	min_caml_read_int
	subi	r2 r2 51
	addi	r2 r2 51
	call	min_caml_read_float
	subi	r2 r2 51
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 50
	addi	r2 r2 53
	call	L_sin_2493
	subi	r2 r2 53
	addi	r4 r0 4111
	addi	r5 r0 1
	fsub	f2 f0 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r2 r2 53
	call	min_caml_read_float
	subi	r2 r2 53
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fldi	f3 r2 50
	fsti	f2 r2 52
	fadd	f2 f0 f3
	addi	r2 r2 55
	call	L_cos_2495
	subi	r2 r2 55
	fldi	f3 r2 52
	fsti	f2 r2 54
	fadd	f2 f0 f3
	addi	r2 r2 57
	call	L_sin_2493
	subi	r2 r2 57
	addi	r4 r0 4111
	addi	r5 r0 0
	fldi	f3 r2 54
	fmul	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	fldi	f2 r2 52
	addi	r2 r2 57
	call	L_cos_2495
	subi	r2 r2 57
	addi	r4 r0 4111
	addi	r5 r0 2
	fldi	f3 r2 54
	fmul	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 4153
	addi	r5 r0 0
	sti	r5 r2 56
	sti	r4 r2 57
	addi	r2 r2 59
	call	min_caml_read_float
	subi	r2 r2 59
	ldi	r4 r2 56
	ldi	r5 r2 57
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 0
	addi	r2 r2 59
	call	L_read_object_2648
	subi	r2 r2 59
	addi	r4 r0 0
	addi	r5 r0 0
	sti	r4 r2 58
	add	r4 r0 r5
	addi	r2 r2 60
	call	L_read_net_item_2652
	subi	r2 r2 60
	addi	r5 r0 0
	add	r5 r4 r5
	ldi	r5 r5 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_22663
	jump	L_cont_22664
L_else_22663 : 
	addi	r5 r0 4155
	ldi	r6 r2 58
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r0 1
	addi	r2 r2 60
	call	L_read_and_network_2656
	subi	r2 r2 60
L_cont_22664 : 
	addi	r4 r0 4255
	addi	r5 r0 0
	addi	r6 r0 0
	addi	r7 r0 0
	sti	r5 r2 59
	sti	r4 r2 60
	sti	r6 r2 61
	add	r4 r0 r7
	addi	r2 r2 63
	call	L_read_net_item_2652
	subi	r2 r2 63
	add	r5 r0 r4
	addi	r4 r0 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_22665
	addi	r4 r0 1
	addi	r2 r2 63
	call	min_caml_create_array
	subi	r2 r2 63
	jump	L_cont_22666
L_else_22665 : 
	addi	r4 r0 1
	sti	r5 r2 62
	addi	r2 r2 64
	call	L_read_or_network_2654
	subi	r2 r2 64
	ldi	r5 r2 61
	add	r5 r4 r5
	ldi	r6 r2 62
	sti	r6 r5 0
	add	r4 r0 r4
L_cont_22666 : 
	ldi	r5 r2 59
	ldi	r6 r2 60
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 80
	addi	r2 r2 64
	call	min_caml_print_char
	subi	r2 r2 64
	addi	r4 r0 54
	addi	r2 r2 64
	call	min_caml_print_char
	subi	r2 r2 64
	addi	r4 r0 10
	addi	r2 r2 64
	call	min_caml_print_char
	subi	r2 r2 64
	addi	r4 r0 4130
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	sti	r4 r2 63
	bgt	r5 r6 L_else_22667
	addi	r5 r0 10
	sub	r5 r4 r5
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r5 r7
	bgt	r6 r7 L_else_22669
	addi	r6 r0 10
	sub	r5 r5 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r5 r7
	bgt	r6 r7 L_else_22671
	addi	r6 r0 10
	sub	r5 r5 r6
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 65
	call	L_sdiv10_2505
	subi	r2 r2 65
	jump	L_cont_22672
L_else_22671 : 
	addi	r4 r0 2
L_cont_22672 : 
	jump	L_cont_22670
L_else_22669 : 
	addi	r4 r0 1
L_cont_22670 : 
	jump	L_cont_22668
L_else_22667 : 
	addi	r4 r0 0
L_cont_22668 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22673
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22675
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22677
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_2505
	subi	r2 r2 65
	jump	L_cont_22678
L_else_22677 : 
	addi	r4 r0 2
L_cont_22678 : 
	jump	L_cont_22676
L_else_22675 : 
	addi	r4 r0 1
L_cont_22676 : 
	jump	L_cont_22674
L_else_22673 : 
	addi	r4 r0 0
L_cont_22674 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 65
	call	min_caml_print_char
	subi	r2 r2 65
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 63
	sub	r5 r6 r5
	bgt	r4 r5 L_else_22679
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r5 r7 L_else_22681
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r5 r7 L_else_22683
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_2505
	subi	r2 r2 65
	jump	L_cont_22684
L_else_22683 : 
	addi	r4 r0 2
L_cont_22684 : 
	jump	L_cont_22682
L_else_22681 : 
	addi	r4 r0 1
L_cont_22682 : 
	jump	L_cont_22680
L_else_22679 : 
	addi	r4 r0 0
L_cont_22680 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22685
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22687
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22689
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_2505
	subi	r2 r2 65
	jump	L_cont_22690
L_else_22689 : 
	addi	r4 r0 2
L_cont_22690 : 
	jump	L_cont_22688
L_else_22687 : 
	addi	r4 r0 1
L_cont_22688 : 
	jump	L_cont_22686
L_else_22685 : 
	addi	r4 r0 0
L_cont_22686 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 63
	sub	r4 r5 r4
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22691
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22693
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22695
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 3
	add	r5 r0 r6
	addi	r2 r2 65
	call	L_sdiv10_2505
	subi	r2 r2 65
	jump	L_cont_22696
L_else_22695 : 
	addi	r4 r0 2
L_cont_22696 : 
	jump	L_cont_22694
L_else_22693 : 
	addi	r4 r0 1
L_cont_22694 : 
	jump	L_cont_22692
L_else_22691 : 
	addi	r4 r0 0
L_cont_22692 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 65
	call	min_caml_print_char
	subi	r2 r2 65
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 63
	sub	r5 r6 r5
	bgt	r4 r5 L_else_22697
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r5 r7 L_else_22699
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r5 r7 L_else_22701
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 3
	addi	r2 r2 65
	call	L_sdiv10_2505
	subi	r2 r2 65
	jump	L_cont_22702
L_else_22701 : 
	addi	r4 r0 2
L_cont_22702 : 
	jump	L_cont_22700
L_else_22699 : 
	addi	r4 r0 1
L_cont_22700 : 
	jump	L_cont_22698
L_else_22697 : 
	addi	r4 r0 0
L_cont_22698 : 
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 63
	sub	r4 r5 r4
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 65
	call	min_caml_print_char
	subi	r2 r2 65
	addi	r4 r0 32
	addi	r2 r2 65
	call	min_caml_print_char
	subi	r2 r2 65
	addi	r4 r0 4130
	addi	r5 r0 1
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	sti	r4 r2 64
	bgt	r5 r6 L_else_22703
	addi	r5 r0 10
	sub	r5 r4 r5
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r5 r7
	bgt	r6 r7 L_else_22705
	addi	r6 r0 10
	sub	r5 r5 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r5 r7
	bgt	r6 r7 L_else_22707
	addi	r6 r0 10
	sub	r5 r5 r6
	addi	r6 r0 3
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 66
	call	L_sdiv10_2505
	subi	r2 r2 66
	jump	L_cont_22708
L_else_22707 : 
	addi	r4 r0 2
L_cont_22708 : 
	jump	L_cont_22706
L_else_22705 : 
	addi	r4 r0 1
L_cont_22706 : 
	jump	L_cont_22704
L_else_22703 : 
	addi	r4 r0 0
L_cont_22704 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22709
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22711
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22713
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 3
	addi	r2 r2 66
	call	L_sdiv10_2505
	subi	r2 r2 66
	jump	L_cont_22714
L_else_22713 : 
	addi	r4 r0 2
L_cont_22714 : 
	jump	L_cont_22712
L_else_22711 : 
	addi	r4 r0 1
L_cont_22712 : 
	jump	L_cont_22710
L_else_22709 : 
	addi	r4 r0 0
L_cont_22710 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 66
	call	min_caml_print_char
	subi	r2 r2 66
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 64
	sub	r5 r6 r5
	bgt	r4 r5 L_else_22715
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r5 r7 L_else_22717
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r5 r7 L_else_22719
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 3
	addi	r2 r2 66
	call	L_sdiv10_2505
	subi	r2 r2 66
	jump	L_cont_22720
L_else_22719 : 
	addi	r4 r0 2
L_cont_22720 : 
	jump	L_cont_22718
L_else_22717 : 
	addi	r4 r0 1
L_cont_22718 : 
	jump	L_cont_22716
L_else_22715 : 
	addi	r4 r0 0
L_cont_22716 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22721
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22723
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22725
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 3
	addi	r2 r2 66
	call	L_sdiv10_2505
	subi	r2 r2 66
	jump	L_cont_22726
L_else_22725 : 
	addi	r4 r0 2
L_cont_22726 : 
	jump	L_cont_22724
L_else_22723 : 
	addi	r4 r0 1
L_cont_22724 : 
	jump	L_cont_22722
L_else_22721 : 
	addi	r4 r0 0
L_cont_22722 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 64
	sub	r4 r5 r4
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22727
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22729
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22731
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 3
	add	r5 r0 r6
	addi	r2 r2 66
	call	L_sdiv10_2505
	subi	r2 r2 66
	jump	L_cont_22732
L_else_22731 : 
	addi	r4 r0 2
L_cont_22732 : 
	jump	L_cont_22730
L_else_22729 : 
	addi	r4 r0 1
L_cont_22730 : 
	jump	L_cont_22728
L_else_22727 : 
	addi	r4 r0 0
L_cont_22728 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 66
	call	min_caml_print_char
	subi	r2 r2 66
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 64
	sub	r5 r6 r5
	bgt	r4 r5 L_else_22733
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r5 r7 L_else_22735
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r5 r7 L_else_22737
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 3
	addi	r2 r2 66
	call	L_sdiv10_2505
	subi	r2 r2 66
	jump	L_cont_22738
L_else_22737 : 
	addi	r4 r0 2
L_cont_22738 : 
	jump	L_cont_22736
L_else_22735 : 
	addi	r4 r0 1
L_cont_22736 : 
	jump	L_cont_22734
L_else_22733 : 
	addi	r4 r0 0
L_cont_22734 : 
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 64
	sub	r4 r5 r4
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 66
	call	min_caml_print_char
	subi	r2 r2 66
	addi	r4 r0 32
	addi	r2 r2 66
	call	min_caml_print_char
	subi	r2 r2 66
	addi	r4 r0 255
	addi	r5 r0 225
	addi	r6 r0 3
	sti	r4 r2 65
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 67
	call	L_sdiv10_2505
	subi	r2 r2 67
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22739
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22741
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22743
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 3
	addi	r2 r2 67
	call	L_sdiv10_2505
	subi	r2 r2 67
	jump	L_cont_22744
L_else_22743 : 
	addi	r4 r0 2
L_cont_22744 : 
	jump	L_cont_22742
L_else_22741 : 
	addi	r4 r0 1
L_cont_22742 : 
	jump	L_cont_22740
L_else_22739 : 
	addi	r4 r0 0
L_cont_22740 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 67
	call	min_caml_print_char
	subi	r2 r2 67
	addi	r4 r0 225
	addi	r5 r0 3
	addi	r2 r2 67
	call	L_sdiv10_2505
	subi	r2 r2 67
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22745
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22747
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_22749
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 3
	addi	r2 r2 67
	call	L_sdiv10_2505
	subi	r2 r2 67
	jump	L_cont_22750
L_else_22749 : 
	addi	r4 r0 2
L_cont_22750 : 
	jump	L_cont_22748
L_else_22747 : 
	addi	r4 r0 1
L_cont_22748 : 
	jump	L_cont_22746
L_else_22745 : 
	addi	r4 r0 0
L_cont_22746 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 65
	sub	r4 r5 r4
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22751
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22753
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_22755
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 3
	add	r5 r0 r6
	addi	r2 r2 67
	call	L_sdiv10_2505
	subi	r2 r2 67
	jump	L_cont_22756
L_else_22755 : 
	addi	r4 r0 2
L_cont_22756 : 
	jump	L_cont_22754
L_else_22753 : 
	addi	r4 r0 1
L_cont_22754 : 
	jump	L_cont_22752
L_else_22751 : 
	addi	r4 r0 0
L_cont_22752 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 67
	call	min_caml_print_char
	subi	r2 r2 67
	addi	r4 r0 225
	addi	r5 r0 3
	addi	r2 r2 67
	call	L_sdiv10_2505
	subi	r2 r2 67
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 65
	sub	r4 r5 r4
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 67
	call	min_caml_print_char
	subi	r2 r2 67
	addi	r4 r0 10
	addi	r2 r2 67
	call	min_caml_print_char
	subi	r2 r2 67
	addi	r4 r0 4
	addi	r5 r0 4148
	addi	r6 r0 120
	addi	r7 r0 3
	fldi	f2 r0 51
	sti	r4 r2 66
	sti	r5 r2 67
	sti	r6 r2 68
	add	r4 r0 r7
	addi	r2 r2 70
	call	min_caml_create_float_array
	subi	r2 r2 70
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 69
	addi	r2 r2 71
	call	min_caml_create_array
	subi	r2 r2 71
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 69
	sti	r4 r5 0
	add	r5 r0 r5
	ldi	r4 r2 68
	addi	r2 r2 71
	call	min_caml_create_array
	subi	r2 r2 71
	ldi	r5 r2 66
	ldi	r6 r2 67
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 4148
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 118
	addi	r2 r2 71
	call	L_create_dirvec_elements_2966
	subi	r2 r2 71
	addi	r4 r0 3
	addi	r2 r2 71
	call	L_create_dirvecs_2969
	subi	r2 r2 71
	addi	r4 r0 9
	addi	r5 r0 0
	addi	r6 r0 0
	foi	f2 r4
	fldi	f3 r0 4
	fmul	f2 f2 f3
	fldi	f3 r0 3
	fsub	f2 f2 f3
	addi	r4 r0 4
	addi	r2 r2 71
	call	L_calc_dirvecs_2955
	subi	r2 r2 71
	addi	r4 r0 8
	addi	r5 r0 2
	addi	r6 r0 4
	addi	r2 r2 71
	call	L_calc_dirvec_rows_2960
	subi	r2 r2 71
	addi	r4 r0 4
	addi	r5 r0 4148
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r5 r0 119
	addi	r2 r2 71
	call	L_init_dirvec_constants_2971
	subi	r2 r2 71
	addi	r4 r0 3
	addi	r2 r2 71
	call	L_init_vecset_constants_2974
	subi	r2 r2 71
	addi	r4 r0 4977
	ldi	r4 r4 0
	addi	r5 r0 4111
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
	addi	r4 r0 4977
	addi	r5 r0 4144
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 1
	sub	r5 r5 r6
	addi	r6 r0 0
	bgt	r6 r5 L_else_22757
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r4 1
	ldi	r8 r4 0
	ldi	r9 r6 1
	addi	r10 r0 1
	sti	r4 r2 70
	bne	r9 r10 L_else_22759
	sti	r5 r2 71
	sti	r7 r2 72
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 74
	call	L_setup_rect_table_2744
	subi	r2 r2 74
	ldi	r5 r2 71
	ldi	r6 r2 72
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22760
L_else_22759 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_22761
	sti	r5 r2 71
	sti	r7 r2 72
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 74
	call	L_setup_surface_table_2747
	subi	r2 r2 74
	ldi	r5 r2 71
	ldi	r6 r2 72
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_22762
L_else_22761 : 
	sti	r5 r2 71
	sti	r7 r2 72
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 74
	call	L_setup_second_table_2750
	subi	r2 r2 74
	ldi	r5 r2 71
	ldi	r6 r2 72
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_22762 : 
L_cont_22760 : 
	addi	r4 r0 1
	sub	r5 r5 r4
	ldi	r4 r2 70
	addi	r2 r2 74
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 74
	jump	L_cont_22758
L_else_22757 : 
L_cont_22758 : 
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r4 r4 r5
	addi	r5 r0 0
	bgt	r5 r4 L_else_22763
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r5 2
	addi	r7 r0 2
	bne	r6 r7 L_else_22765
	ldi	r6 r5 7
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f2 r6 0
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_22767
	addi	r6 r0 0
	jump	L_cont_22768
L_else_22767 : 
	addi	r6 r0 1
L_cont_22768 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_22769
	jump	L_cont_22770
L_else_22769 : 
	ldi	r6 r5 1
	addi	r7 r0 1
	bne	r6 r7 L_else_22771
	addi	r6 r0 4
	mul	r4 r4 r6
	addi	r6 r0 4147
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	fldi	f2 r0 38
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
	addi	r7 r0 3
	fldi	f7 r0 51
	fsti	f3 r2 74
	sti	r4 r2 76
	sti	r6 r2 77
	sti	r5 r2 78
	fsti	f2 r2 80
	fsti	f5 r2 82
	fsti	f4 r2 84
	fsti	f6 r2 86
	add	r4 r0 r7
	fadd	f2 f0 f7
	addi	r2 r2 89
	call	min_caml_create_float_array
	subi	r2 r2 89
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 88
	addi	r2 r2 90
	call	min_caml_create_array
	subi	r2 r2 90
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 88
	sti	r4 r5 0
	add	r5 r0 r5
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f2 r2 86
	fsti	f2 r6 0
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f2 r2 84
	fsti	f2 r6 0
	addi	r6 r0 2
	add	r4 r4 r6
	fldi	f3 r2 82
	fsti	f3 r4 0
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 1
	sub	r4 r4 r6
	sti	r5 r2 89
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 91
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 91
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 80
	fsti	f2 r5 2
	ldi	r6 r2 89
	sti	r6 r5 1
	ldi	r6 r2 78
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 77
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 1
	add	r4 r6 r4
	addi	r5 r0 2
	ldi	r7 r2 76
	add	r5 r7 r5
	addi	r8 r0 4111
	addi	r9 r0 1
	add	r8 r8 r9
	fldi	f3 r8 0
	addi	r8 r0 3
	fldi	f4 r0 51
	sti	r4 r2 90
	sti	r5 r2 91
	fsti	f3 r2 92
	add	r4 r0 r8
	fadd	f2 f0 f4
	addi	r2 r2 95
	call	min_caml_create_float_array
	subi	r2 r2 95
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 94
	addi	r2 r2 96
	call	min_caml_create_array
	subi	r2 r2 96
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 94
	sti	r4 r5 0
	add	r5 r0 r5
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f2 r2 74
	fsti	f2 r6 0
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f3 r2 92
	fsti	f3 r6 0
	addi	r6 r0 2
	add	r4 r4 r6
	fldi	f3 r2 82
	fsti	f3 r4 0
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 1
	sub	r4 r4 r6
	sti	r5 r2 95
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 97
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 97
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 80
	fsti	f2 r5 2
	ldi	r6 r2 95
	sti	r6 r5 1
	ldi	r6 r2 91
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 90
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 2
	ldi	r5 r2 77
	add	r4 r5 r4
	addi	r6 r0 3
	ldi	r7 r2 76
	add	r6 r7 r6
	addi	r7 r0 4111
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f3 r7 0
	addi	r7 r0 3
	fldi	f4 r0 51
	sti	r4 r2 96
	sti	r6 r2 97
	fsti	f3 r2 98
	add	r4 r0 r7
	fadd	f2 f0 f4
	addi	r2 r2 101
	call	min_caml_create_float_array
	subi	r2 r2 101
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 100
	addi	r2 r2 102
	call	min_caml_create_array
	subi	r2 r2 102
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 100
	sti	r4 r5 0
	add	r5 r0 r5
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f2 r2 74
	fsti	f2 r6 0
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f2 r2 84
	fsti	f2 r6 0
	addi	r6 r0 2
	add	r4 r4 r6
	fldi	f2 r2 98
	fsti	f2 r4 0
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 1
	sub	r4 r4 r6
	sti	r5 r2 101
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 103
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 103
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 80
	fsti	f2 r5 2
	ldi	r6 r2 101
	sti	r6 r5 1
	ldi	r6 r2 97
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 96
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 4147
	addi	r5 r0 0
	addi	r6 r0 3
	ldi	r7 r2 77
	add	r6 r7 r6
	add	r4 r4 r5
	sti	r6 r4 0
	jump	L_cont_22772
L_else_22771 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_22775
	addi	r6 r0 4
	mul	r4 r4 r6
	addi	r6 r0 1
	add	r4 r4 r6
	addi	r6 r0 4147
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	fldi	f2 r0 38
	ldi	r7 r5 7
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f3 r7 0
	fsub	f2 f2 f3
	addi	r7 r0 4111
	ldi	r8 r5 4
	addi	r9 r0 0
	add	r9 r7 r9
	fldi	f3 r9 0
	addi	r9 r0 0
	add	r9 r8 r9
	fldi	f4 r9 0
	fmul	f3 f3 f4
	addi	r9 r0 1
	add	r9 r7 r9
	fldi	f4 r9 0
	addi	r9 r0 1
	add	r9 r8 r9
	fldi	f5 r9 0
	fmul	f4 f4 f5
	fadd	f3 f3 f4
	addi	r9 r0 2
	add	r7 r7 r9
	fldi	f4 r7 0
	addi	r7 r0 2
	add	r7 r8 r7
	fldi	f5 r7 0
	fmul	f4 f4 f5
	fadd	f3 f3 f4
	fldi	f4 r0 28
	ldi	r7 r5 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f5 r7 0
	fmul	f4 f4 f5
	fmul	f4 f4 f3
	addi	r7 r0 4111
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f5 r7 0
	fsub	f4 f4 f5
	fldi	f5 r0 28
	ldi	r7 r5 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f6 r7 0
	fmul	f5 f5 f6
	fmul	f5 f5 f3
	addi	r7 r0 4111
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f6 r7 0
	fsub	f5 f5 f6
	fldi	f6 r0 28
	ldi	r5 r5 4
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f7 r5 0
	fmul	f6 f6 f7
	fmul	f3 f6 f3
	addi	r5 r0 4111
	addi	r7 r0 2
	add	r5 r5 r7
	fldi	f6 r5 0
	fsub	f3 f3 f6
	addi	r5 r0 3
	fldi	f6 r0 51
	sti	r6 r2 102
	sti	r4 r2 103
	fsti	f2 r2 104
	fsti	f3 r2 106
	fsti	f5 r2 108
	fsti	f4 r2 110
	add	r4 r0 r5
	fadd	f2 f0 f6
	addi	r2 r2 113
	call	min_caml_create_float_array
	subi	r2 r2 113
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 112
	addi	r2 r2 114
	call	min_caml_create_array
	subi	r2 r2 114
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 112
	sti	r4 r5 0
	add	r5 r0 r5
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f2 r2 110
	fsti	f2 r6 0
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f2 r2 108
	fsti	f2 r6 0
	addi	r6 r0 2
	add	r4 r4 r6
	fldi	f2 r2 106
	fsti	f2 r4 0
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 1
	sub	r4 r4 r6
	sti	r5 r2 113
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 115
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 115
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 104
	fsti	f2 r5 2
	ldi	r6 r2 113
	sti	r6 r5 1
	ldi	r6 r2 103
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 102
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 4147
	addi	r5 r0 0
	addi	r7 r0 1
	add	r6 r6 r7
	add	r4 r4 r5
	sti	r6 r4 0
	jump	L_cont_22776
L_else_22775 : 
L_cont_22776 : 
L_cont_22772 : 
L_cont_22770 : 
	jump	L_cont_22766
L_else_22765 : 
L_cont_22766 : 
	jump	L_cont_22764
L_else_22763 : 
L_cont_22764 : 
	addi	r5 r0 0
	addi	r6 r0 0
	ldi	r4 r2 21
	addi	r2 r2 115
	call	L_pretrace_line_2917
	subi	r2 r2 115
	addi	r4 r0 0
	addi	r8 r0 2
	ldi	r5 r2 10
	ldi	r6 r2 21
	ldi	r7 r2 32
	addi	r2 r2 115
	call	L_scan_line_2927
	subi	r2 r2 115
	addi	r4 r0 0
