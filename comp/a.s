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
	jump	L_main_17554
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
	bne	r5 r0 L_else_17608
	return
L_else_17608 : 
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
	bne	r5 r0 L_else_17610
	return
L_else_17610 : 
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
L_psin_2489 : 
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 57
	fmul	f3 f9 f3
	fldi	f9 r0 56
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 55
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 54
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 53
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 52
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_pcos_2491 : 
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 51
	fmul	f7 f8 f7
	fldi	f8 r0 50
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 49
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 48
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 47
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 46
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 45
	fadd	f2 f2 f3
	return
L_sin_2493 : 
	fldi	f3 r0 44
	fldi	f4 r0 43
	fbgt	f2 f4 L_else_17612
	fldi	f5 r0 42
	fbgt	f5 f2 L_else_17613
	fldi	f3 r0 41
	fldi	f5 r0 40
	fldi	f6 r0 39
	fldi	f7 r0 38
	fbgt	f2 f7 L_else_17614
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_17615
	jump	L_psin_2489
L_else_17615 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_17616
	fadd	f2 f5 f2
	addi	r2 r2 1
	call	L_pcos_2491
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_17616 : 
	fadd	f2 f4 f2
	addi	r2 r2 1
	call	L_psin_2489
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_17614 : 
	fbgt	f2 f3 L_else_17617
	jump	L_psin_2489
L_else_17617 : 
	fbgt	f2 f6 L_else_17618
	fsub	f2 f2 f5
	jump	L_pcos_2491
L_else_17618 : 
	fsub	f2 f4 f2
	jump	L_psin_2489
L_else_17613 : 
	fadd	f2 f2 f3
	jump	L_sin_2493
L_else_17612 : 
	fsub	f2 f2 f3
	jump	L_sin_2493
L_cos_2495 : 
	fldi	f3 r0 44
	fldi	f4 r0 43
	fbgt	f2 f4 L_else_17619
	fldi	f5 r0 42
	fbgt	f5 f2 L_else_17620
	fldi	f3 r0 41
	fldi	f5 r0 40
	fldi	f6 r0 39
	fldi	f7 r0 38
	fbgt	f2 f7 L_else_17621
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_17622
	jump	L_pcos_2491
L_else_17622 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_17623
	fadd	f2 f2 f5
	jump	L_psin_2489
L_else_17623 : 
	fadd	f2 f4 f2
	addi	r2 r2 1
	call	L_pcos_2491
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_17621 : 
	fbgt	f2 f3 L_else_17624
	jump	L_pcos_2491
L_else_17624 : 
	fbgt	f2 f6 L_else_17625
	fsub	f2 f2 f5
	addi	r2 r2 1
	call	L_psin_2489
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_17625 : 
	fsub	f2 f4 f2
	addi	r2 r2 1
	call	L_pcos_2491
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_17620 : 
	fadd	f2 f2 f3
	jump	L_cos_2495
L_else_17619 : 
	fsub	f2 f2 f3
	jump	L_cos_2495
L_atan_2497 : 
	fmul	f3 f2 f2
	fldi	f4 r0 45
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
	fldi	f6 r0 38
	fbgt	f6 f3 L_else_17626
	fadd	f3 f0 f3
	jump	L_cont_17627
L_else_17626 : 
	fsub	f3 f0 f3
L_cont_17627 : 
	fbgt	f5 f3 L_else_17628
	fldi	f3 r0 29
	fmul	f5 f2 f4
	fmul	f5 f5 f4
	fsub	f3 f3 f5
	fmul	f3 f4 f3
	fldi	f5 r0 28
	fdiv	f3 f3 f5
	fadd	f1 f0 f4
	fadd	f4 f0 f3
	fadd	f3 f0 f1
	jump	L_isqrt_2499
L_else_17628 : 
	fadd	f2 f0 f4
	return
L_sdiv10_2505 : 
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_17629
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r5 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_17630
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r5 r6
	jump	L_sdiv10_2505
L_else_17630 : 
	add	r4 r0 r5
	return
L_else_17629 : 
	add	r4 r0 r5
	return
L_sgn_2512 : 
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17631
	addi	r4 r0 1
	jump	L_cont_17632
L_else_17631 : 
	addi	r4 r0 0
L_cont_17632 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17633
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_17634
	addi	r4 r0 0
	jump	L_cont_17635
L_else_17634 : 
	addi	r4 r0 1
L_cont_17635 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17636
	fldi	f2 r0 27
	return
L_else_17636 : 
	fldi	f2 r0 45
	return
L_else_17633 : 
	fldi	f2 r0 38
	return
L_veccpy_2530 : 
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
	fldi	f4 r0 45
	fbgt	f2 f4 L_else_17638
	fldi	f4 r0 45
	jump	L_cont_17639
L_else_17638 : 
	fldi	f4 r0 45
	fdiv	f4 f4 f2
L_cont_17639 : 
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f2 r2 2
	addi	r2 r2 5
	call	L_isqrt_2499
	subi	r2 r2 5
	fldi	f3 r2 2
	fmul	f2 f3 f2
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17640
	addi	r4 r0 1
	jump	L_cont_17641
L_else_17640 : 
	addi	r4 r0 0
L_cont_17641 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17642
	addi	r4 r0 0
	ldi	r5 r2 1
	bne	r5 r4 L_else_17644
	fldi	f3 r0 45
	fdiv	f2 f3 f2
	jump	L_cont_17645
L_else_17644 : 
	fldi	f3 r0 27
	fdiv	f2 f3 f2
L_cont_17645 : 
	jump	L_cont_17643
L_else_17642 : 
	fldi	f2 r0 45
L_cont_17643 : 
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
L_veciprod_2541 : 
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
L_veciprod2_2544 : 
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
L_vecaccum_2549 : 
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
	bgt	r5 r4 L_else_17649
	return
L_else_17649 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_17651
	addi	r4 r0 0
	jump	L_cont_17652
L_else_17651 : 
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17653
	addi	r4 r0 0
	jump	L_cont_17654
L_else_17653 : 
	addi	r4 r0 1
L_cont_17654 : 
	addi	r5 r0 2
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
	addi	r2 r2 22
	call	min_caml_create_float_array
	subi	r2 r2 22
	addi	r5 r0 0
	ldi	r6 r2 4
	sti	r4 r2 21
	bne	r6 r5 L_else_17655
	jump	L_cont_17656
L_else_17655 : 
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
L_cont_17656 : 
	addi	r4 r0 2
	ldi	r5 r2 2
	bne	r5 r4 L_else_17657
	addi	r4 r0 1
	jump	L_cont_17658
L_else_17657 : 
	ldi	r4 r2 13
	add	r4 r0 r4
L_cont_17658 : 
	addi	r6 r0 4
	fldi	f2 r0 38
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
	bne	r8 r5 L_else_17659
	addi	r5 r0 0
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 0
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17661
	addi	r8 r0 1
	jump	L_cont_17662
L_else_17661 : 
	addi	r8 r0 0
L_cont_17662 : 
	addi	r9 r0 0
	sti	r5 r2 26
	bne	r8 r9 L_else_17663
	fsti	f2 r2 28
	addi	r2 r2 31
	call	L_sgn_2512
	subi	r2 r2 31
	fldi	f3 r2 28
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_17664
L_else_17663 : 
	fldi	f2 r0 38
L_cont_17664 : 
	ldi	r4 r2 26
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r4 r0 1
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17666
	addi	r6 r0 1
	jump	L_cont_17667
L_else_17666 : 
	addi	r6 r0 0
L_cont_17667 : 
	addi	r7 r0 0
	sti	r4 r2 30
	bne	r6 r7 L_else_17668
	fsti	f2 r2 32
	addi	r2 r2 35
	call	L_sgn_2512
	subi	r2 r2 35
	fldi	f3 r2 32
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_17669
L_else_17668 : 
	fldi	f2 r0 38
L_cont_17669 : 
	ldi	r4 r2 30
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r4 r0 2
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17671
	addi	r6 r0 1
	jump	L_cont_17672
L_else_17671 : 
	addi	r6 r0 0
L_cont_17672 : 
	addi	r7 r0 0
	sti	r4 r2 34
	bne	r6 r7 L_else_17673
	fsti	f2 r2 36
	addi	r2 r2 39
	call	L_sgn_2512
	subi	r2 r2 39
	fldi	f3 r2 36
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_17674
L_else_17673 : 
	fldi	f2 r0 38
L_cont_17674 : 
	ldi	r4 r2 34
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	jump	L_cont_17660
L_else_17659 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_17676
	addi	r5 r0 1
	ldi	r8 r2 13
	sub	r5 r5 r8
	add	r4 r0 r6
	addi	r2 r2 39
	call	L_vecunit_sgn_2538
	subi	r2 r2 39
	jump	L_cont_17677
L_else_17676 : 
L_cont_17677 : 
L_cont_17660 : 
	addi	r4 r0 0
	ldi	r5 r2 4
	bne	r5 r4 L_else_17678
	jump	L_cont_17679
L_else_17678 : 
	addi	r4 r0 0
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r2 r2 39
	call	L_cos_2495
	subi	r2 r2 39
	addi	r4 r0 0
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 38
	fadd	f2 f0 f3
	addi	r2 r2 41
	call	L_sin_2493
	subi	r2 r2 41
	addi	r4 r0 1
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 40
	fadd	f2 f0 f3
	addi	r2 r2 43
	call	L_cos_2495
	subi	r2 r2 43
	addi	r4 r0 1
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 42
	fadd	f2 f0 f3
	addi	r2 r2 45
	call	L_sin_2493
	subi	r2 r2 45
	addi	r4 r0 2
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 44
	fadd	f2 f0 f3
	addi	r2 r2 47
	call	L_cos_2495
	subi	r2 r2 47
	addi	r4 r0 2
	ldi	r5 r2 21
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 46
	fadd	f2 f0 f3
	addi	r2 r2 49
	call	L_sin_2493
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
L_cont_17679 : 
	addi	r4 r0 1
L_cont_17652 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17680
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 0
	sti	r5 r4 0
	return
L_else_17680 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	addi	r5 r0 60
	bgt	r5 r4 L_else_17682
	return
L_else_17682 : 
	sti	r4 r2 48
	addi	r2 r2 50
	call	min_caml_read_int
	subi	r2 r2 50
	addi	r5 r0 -1
	bne	r4 r5 L_else_17684
	addi	r4 r0 0
	jump	L_cont_17685
L_else_17684 : 
	sti	r4 r2 49
	addi	r2 r2 51
	call	min_caml_read_int
	subi	r2 r2 51
	sti	r4 r2 50
	addi	r2 r2 52
	call	min_caml_read_int
	subi	r2 r2 52
	sti	r4 r2 51
	addi	r2 r2 53
	call	min_caml_read_int
	subi	r2 r2 53
	addi	r5 r0 3
	fldi	f2 r0 38
	sti	r4 r2 52
	add	r4 r0 r5
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
	fldi	f2 r0 38
	addi	r2 r2 58
	call	min_caml_create_float_array
	subi	r2 r2 58
	addi	r5 r0 0
	sti	r5 r2 57
	sti	r4 r2 58
	addi	r2 r2 60
	call	min_caml_read_float
	subi	r2 r2 60
	ldi	r4 r2 57
	ldi	r5 r2 58
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 59
	addi	r2 r2 61
	call	min_caml_read_float
	subi	r2 r2 61
	ldi	r4 r2 59
	ldi	r5 r2 58
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 60
	addi	r2 r2 62
	call	min_caml_read_float
	subi	r2 r2 62
	ldi	r4 r2 60
	ldi	r5 r2 58
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r2 r2 62
	call	min_caml_read_float
	subi	r2 r2 62
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17686
	addi	r4 r0 0
	jump	L_cont_17687
L_else_17686 : 
	addi	r4 r0 1
L_cont_17687 : 
	addi	r5 r0 2
	fldi	f2 r0 38
	sti	r4 r2 61
	add	r4 r0 r5
	addi	r2 r2 63
	call	min_caml_create_float_array
	subi	r2 r2 63
	addi	r5 r0 0
	sti	r5 r2 62
	sti	r4 r2 63
	addi	r2 r2 65
	call	min_caml_read_float
	subi	r2 r2 65
	ldi	r4 r2 62
	ldi	r5 r2 63
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 64
	addi	r2 r2 66
	call	min_caml_read_float
	subi	r2 r2 66
	ldi	r4 r2 64
	ldi	r5 r2 63
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 3
	fldi	f2 r0 38
	addi	r2 r2 66
	call	min_caml_create_float_array
	subi	r2 r2 66
	addi	r5 r0 0
	sti	r5 r2 65
	sti	r4 r2 66
	addi	r2 r2 68
	call	min_caml_read_float
	subi	r2 r2 68
	ldi	r4 r2 65
	ldi	r5 r2 66
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 67
	addi	r2 r2 69
	call	min_caml_read_float
	subi	r2 r2 69
	ldi	r4 r2 67
	ldi	r5 r2 66
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 68
	addi	r2 r2 70
	call	min_caml_read_float
	subi	r2 r2 70
	ldi	r4 r2 68
	ldi	r5 r2 66
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 3
	fldi	f2 r0 38
	addi	r2 r2 70
	call	min_caml_create_float_array
	subi	r2 r2 70
	addi	r5 r0 0
	ldi	r6 r2 52
	sti	r4 r2 69
	bne	r6 r5 L_else_17688
	jump	L_cont_17689
L_else_17688 : 
	addi	r5 r0 0
	sti	r5 r2 70
	addi	r2 r2 72
	call	min_caml_read_float
	subi	r2 r2 72
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 70
	ldi	r5 r2 69
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	sti	r4 r2 71
	addi	r2 r2 73
	call	min_caml_read_float
	subi	r2 r2 73
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 71
	ldi	r5 r2 69
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	sti	r4 r2 72
	addi	r2 r2 74
	call	min_caml_read_float
	subi	r2 r2 74
	fldi	f3 r0 26
	fmul	f2 f2 f3
	ldi	r4 r2 72
	ldi	r5 r2 69
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_17689 : 
	addi	r4 r0 2
	ldi	r5 r2 50
	bne	r5 r4 L_else_17690
	addi	r4 r0 1
	jump	L_cont_17691
L_else_17690 : 
	ldi	r4 r2 61
	add	r4 r0 r4
L_cont_17691 : 
	addi	r6 r0 4
	fldi	f2 r0 38
	sti	r4 r2 73
	add	r4 r0 r6
	addi	r2 r2 75
	call	min_caml_create_float_array
	subi	r2 r2 75
	add	r5 r0 r3
	addi	r3 r3 11
	sti	r4 r5 10
	ldi	r4 r2 69
	sti	r4 r5 9
	ldi	r6 r2 66
	sti	r6 r5 8
	ldi	r6 r2 63
	sti	r6 r5 7
	ldi	r6 r2 73
	sti	r6 r5 6
	ldi	r6 r2 58
	sti	r6 r5 5
	ldi	r6 r2 54
	sti	r6 r5 4
	ldi	r7 r2 52
	sti	r7 r5 3
	ldi	r8 r2 51
	sti	r8 r5 2
	ldi	r8 r2 50
	sti	r8 r5 1
	ldi	r9 r2 49
	sti	r9 r5 0
	add	r5 r0 r5
	addi	r9 r0 5042
	ldi	r10 r2 48
	add	r9 r9 r10
	sti	r5 r9 0
	addi	r5 r0 3
	bne	r8 r5 L_else_17692
	addi	r5 r0 0
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 0
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17694
	addi	r8 r0 1
	jump	L_cont_17695
L_else_17694 : 
	addi	r8 r0 0
L_cont_17695 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17696
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17698
	addi	r8 r0 1
	jump	L_cont_17699
L_else_17698 : 
	addi	r8 r0 0
L_cont_17699 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17700
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_17702
	addi	r8 r0 0
	jump	L_cont_17703
L_else_17702 : 
	addi	r8 r0 1
L_cont_17703 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17704
	fldi	f3 r0 27
	jump	L_cont_17705
L_else_17704 : 
	fldi	f3 r0 45
L_cont_17705 : 
	jump	L_cont_17701
L_else_17700 : 
	fldi	f3 r0 38
L_cont_17701 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_17697
L_else_17696 : 
	fldi	f2 r0 38
L_cont_17697 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 1
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17706
	addi	r8 r0 1
	jump	L_cont_17707
L_else_17706 : 
	addi	r8 r0 0
L_cont_17707 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17708
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17710
	addi	r8 r0 1
	jump	L_cont_17711
L_else_17710 : 
	addi	r8 r0 0
L_cont_17711 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17712
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_17714
	addi	r8 r0 0
	jump	L_cont_17715
L_else_17714 : 
	addi	r8 r0 1
L_cont_17715 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17716
	fldi	f3 r0 27
	jump	L_cont_17717
L_else_17716 : 
	fldi	f3 r0 45
L_cont_17717 : 
	jump	L_cont_17713
L_else_17712 : 
	fldi	f3 r0 38
L_cont_17713 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_17709
L_else_17708 : 
	fldi	f2 r0 38
L_cont_17709 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 2
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17718
	addi	r8 r0 1
	jump	L_cont_17719
L_else_17718 : 
	addi	r8 r0 0
L_cont_17719 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17720
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17722
	addi	r8 r0 1
	jump	L_cont_17723
L_else_17722 : 
	addi	r8 r0 0
L_cont_17723 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17724
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_17726
	addi	r8 r0 0
	jump	L_cont_17727
L_else_17726 : 
	addi	r8 r0 1
L_cont_17727 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17728
	fldi	f3 r0 27
	jump	L_cont_17729
L_else_17728 : 
	fldi	f3 r0 45
L_cont_17729 : 
	jump	L_cont_17725
L_else_17724 : 
	fldi	f3 r0 38
L_cont_17725 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_17721
L_else_17720 : 
	fldi	f2 r0 38
L_cont_17721 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	jump	L_cont_17693
L_else_17692 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_17730
	addi	r5 r0 1
	ldi	r8 r2 61
	sub	r5 r5 r8
	add	r4 r0 r6
	addi	r2 r2 75
	call	L_vecunit_sgn_2538
	subi	r2 r2 75
	jump	L_cont_17731
L_else_17730 : 
L_cont_17731 : 
L_cont_17693 : 
	addi	r4 r0 0
	ldi	r5 r2 52
	bne	r5 r4 L_else_17732
	jump	L_cont_17733
L_else_17732 : 
	addi	r4 r0 0
	ldi	r5 r2 69
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r2 r2 75
	call	L_cos_2495
	subi	r2 r2 75
	addi	r4 r0 0
	ldi	r5 r2 69
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 74
	fadd	f2 f0 f3
	addi	r2 r2 77
	call	L_sin_2493
	subi	r2 r2 77
	addi	r4 r0 1
	ldi	r5 r2 69
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 76
	fadd	f2 f0 f3
	addi	r2 r2 79
	call	L_cos_2495
	subi	r2 r2 79
	addi	r4 r0 1
	ldi	r5 r2 69
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 78
	fadd	f2 f0 f3
	addi	r2 r2 81
	call	L_sin_2493
	subi	r2 r2 81
	addi	r4 r0 2
	ldi	r5 r2 69
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 80
	fadd	f2 f0 f3
	addi	r2 r2 83
	call	L_cos_2495
	subi	r2 r2 83
	addi	r4 r0 2
	ldi	r5 r2 69
	add	r4 r5 r4
	fldi	f3 r4 0
	fsti	f2 r2 82
	fadd	f2 f0 f3
	addi	r2 r2 85
	call	L_sin_2493
	subi	r2 r2 85
	fldi	f3 r2 82
	fldi	f4 r2 78
	fmul	f5 f4 f3
	fldi	f6 r2 80
	fldi	f7 r2 76
	fmul	f8 f7 f6
	fmul	f8 f8 f3
	fldi	f9 r2 74
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
	ldi	r5 r2 54
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
	ldi	r5 r2 69
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
L_cont_17733 : 
	addi	r4 r0 1
L_cont_17685 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17734
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 48
	sti	r5 r4 0
	return
L_else_17734 : 
	addi	r4 r0 1
	ldi	r5 r2 48
	add	r4 r5 r4
	jump	L_read_object_2648
L_read_net_item_2652 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_17736
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_17736 : 
	addi	r5 r0 1
	ldi	r6 r2 0
	add	r5 r6 r5
	sti	r4 r2 1
	add	r4 r0 r5
	addi	r2 r2 3
	call	L_read_net_item_2652
	subi	r2 r2 3
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 1
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_or_network_2654 : 
	addi	r5 r0 0
	sti	r4 r2 0
	add	r4 r0 r5
	addi	r2 r2 2
	call	L_read_net_item_2652
	subi	r2 r2 2
	add	r5 r0 r4
	addi	r4 r0 0
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_17737
	addi	r4 r0 1
	ldi	r6 r2 0
	add	r4 r6 r4
	jump	min_caml_create_array
L_else_17737 : 
	addi	r4 r0 1
	ldi	r6 r2 0
	add	r4 r6 r4
	sti	r5 r2 1
	addi	r2 r2 3
	call	L_read_or_network_2654
	subi	r2 r2 3
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 1
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_and_network_2656 : 
	addi	r5 r0 0
	sti	r4 r2 0
	add	r4 r0 r5
	addi	r2 r2 2
	call	L_read_net_item_2652
	subi	r2 r2 2
	addi	r5 r0 0
	add	r5 r4 r5
	ldi	r5 r5 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_17738
	return
L_else_17738 : 
	addi	r5 r0 4155
	ldi	r6 r2 0
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r0 1
	add	r4 r6 r4
	jump	L_read_and_network_2656
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
	bne	r5 r6 L_else_17740
	fadd	f2 f0 f5
	return
L_else_17740 : 
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
L_solver_2700 : 
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
	bne	r6 r7 L_else_17741
	addi	r6 r0 0
	addi	r7 r0 1
	addi	r8 r0 2
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 38
	fbne	f5 f6 L_else_17742
	addi	r9 r0 1
	jump	L_cont_17743
L_else_17742 : 
	addi	r9 r0 0
L_cont_17743 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_17744
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fldi	f6 r0 38
	fbgt	f6 f5 L_else_17746
	addi	r11 r0 0
	jump	L_cont_17747
L_else_17746 : 
	addi	r11 r0 1
L_cont_17747 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	addi	r11 r0 0
	bne	r10 r11 L_else_17748
	fsub	f5 f0 f5
	jump	L_cont_17749
L_else_17748 : 
	fadd	f5 f0 f5
L_cont_17749 : 
	fsub	f5 f5 f2
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17750
	fadd	f6 f0 f6
	jump	L_cont_17751
L_else_17750 : 
	fsub	f6 f0 f6
L_cont_17751 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_17752
	addi	r6 r0 0
	jump	L_cont_17753
L_else_17752 : 
	addi	r6 r0 1
L_cont_17753 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17754
	addi	r6 r0 0
	jump	L_cont_17755
L_else_17754 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17756
	fadd	f6 f0 f6
	jump	L_cont_17757
L_else_17756 : 
	fsub	f6 f0 f6
L_cont_17757 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_17758
	addi	r6 r0 0
	jump	L_cont_17759
L_else_17758 : 
	addi	r6 r0 1
L_cont_17759 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17760
	addi	r6 r0 0
	jump	L_cont_17761
L_else_17760 : 
	addi	r6 r0 4145
	addi	r7 r0 0
	add	r6 r6 r7
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_17761 : 
L_cont_17755 : 
	jump	L_cont_17745
L_else_17744 : 
	addi	r6 r0 0
L_cont_17745 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17762
	addi	r6 r0 1
	addi	r7 r0 2
	addi	r8 r0 0
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 38
	fbne	f5 f6 L_else_17763
	addi	r9 r0 1
	jump	L_cont_17764
L_else_17763 : 
	addi	r9 r0 0
L_cont_17764 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_17765
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fldi	f6 r0 38
	fbgt	f6 f5 L_else_17767
	addi	r11 r0 0
	jump	L_cont_17768
L_else_17767 : 
	addi	r11 r0 1
L_cont_17768 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	addi	r11 r0 0
	bne	r10 r11 L_else_17769
	fsub	f5 f0 f5
	jump	L_cont_17770
L_else_17769 : 
	fadd	f5 f0 f5
L_cont_17770 : 
	fsub	f5 f5 f3
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17771
	fadd	f6 f0 f6
	jump	L_cont_17772
L_else_17771 : 
	fsub	f6 f0 f6
L_cont_17772 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_17773
	addi	r6 r0 0
	jump	L_cont_17774
L_else_17773 : 
	addi	r6 r0 1
L_cont_17774 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17775
	addi	r6 r0 0
	jump	L_cont_17776
L_else_17775 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17777
	fadd	f6 f0 f6
	jump	L_cont_17778
L_else_17777 : 
	fsub	f6 f0 f6
L_cont_17778 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_17779
	addi	r6 r0 0
	jump	L_cont_17780
L_else_17779 : 
	addi	r6 r0 1
L_cont_17780 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17781
	addi	r6 r0 0
	jump	L_cont_17782
L_else_17781 : 
	addi	r6 r0 4145
	addi	r7 r0 0
	add	r6 r6 r7
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_17782 : 
L_cont_17776 : 
	jump	L_cont_17766
L_else_17765 : 
	addi	r6 r0 0
L_cont_17766 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17783
	addi	r6 r0 2
	addi	r7 r0 0
	addi	r8 r0 1
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 38
	fbne	f5 f6 L_else_17784
	addi	r9 r0 1
	jump	L_cont_17785
L_else_17784 : 
	addi	r9 r0 0
L_cont_17785 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_17786
	ldi	r9 r4 4
	ldi	r4 r4 6
	add	r10 r5 r6
	fldi	f5 r10 0
	fldi	f6 r0 38
	fbgt	f6 f5 L_else_17788
	addi	r10 r0 0
	jump	L_cont_17789
L_else_17788 : 
	addi	r10 r0 1
L_cont_17789 : 
	xor	r4 r4 r10
	add	r10 r9 r6
	fldi	f5 r10 0
	addi	r10 r0 0
	bne	r4 r10 L_else_17790
	fsub	f5 f0 f5
	jump	L_cont_17791
L_else_17790 : 
	fadd	f5 f0 f5
L_cont_17791 : 
	fsub	f4 f5 f4
	add	r4 r5 r6
	fldi	f5 r4 0
	fdiv	f4 f4 f5
	add	r4 r5 r7
	fldi	f5 r4 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fldi	f5 r0 38
	fbgt	f5 f2 L_else_17792
	fadd	f2 f0 f2
	jump	L_cont_17793
L_else_17792 : 
	fsub	f2 f0 f2
L_cont_17793 : 
	add	r4 r9 r7
	fldi	f5 r4 0
	fbgt	f5 f2 L_else_17794
	addi	r4 r0 0
	jump	L_cont_17795
L_else_17794 : 
	addi	r4 r0 1
L_cont_17795 : 
	addi	r6 r0 0
	bne	r4 r6 L_else_17796
	addi	r4 r0 0
	jump	L_cont_17797
L_else_17796 : 
	add	r4 r5 r8
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17798
	fadd	f2 f0 f2
	jump	L_cont_17799
L_else_17798 : 
	fsub	f2 f0 f2
L_cont_17799 : 
	add	r4 r9 r8
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_17800
	addi	r4 r0 0
	jump	L_cont_17801
L_else_17800 : 
	addi	r4 r0 1
L_cont_17801 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17802
	addi	r4 r0 0
	jump	L_cont_17803
L_else_17802 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 1
L_cont_17803 : 
L_cont_17797 : 
	jump	L_cont_17787
L_else_17786 : 
	addi	r4 r0 0
L_cont_17787 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17804
	addi	r4 r0 0
	return
L_else_17804 : 
	addi	r4 r0 3
	return
L_else_17783 : 
	addi	r4 r0 2
	return
L_else_17762 : 
	addi	r4 r0 1
	return
L_else_17741 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_17805
	ldi	r4 r4 4
	fsti	f4 r2 0
	fsti	f3 r2 2
	fsti	f2 r2 4
	sti	r4 r2 6
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 8
	call	L_veciprod_2541
	subi	r2 r2 8
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_17806
	addi	r4 r0 0
	jump	L_cont_17807
L_else_17806 : 
	addi	r4 r0 1
L_cont_17807 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17808
	addi	r4 r0 0
	return
L_else_17808 : 
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
	call	L_veciprod2_2544
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
L_else_17805 : 
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
	call	L_quadratic_2681
	subi	r2 r2 15
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17810
	addi	r4 r0 1
	jump	L_cont_17811
L_else_17810 : 
	addi	r4 r0 0
L_cont_17811 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17812
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
	bne	r5 r6 L_else_17813
	fadd	f3 f0 f7
	jump	L_cont_17814
L_else_17813 : 
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
L_cont_17814 : 
	fsti	f2 r2 14
	fsti	f3 r2 16
	fadd	f4 f0 f9
	fadd	f3 f0 f8
	fadd	f2 f0 f6
	addi	r2 r2 19
	call	L_quadratic_2681
	subi	r2 r2 19
	ldi	r4 r2 12
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_17815
	fldi	f3 r0 45
	fsub	f2 f2 f3
	jump	L_cont_17816
L_else_17815 : 
	fadd	f2 f0 f2
L_cont_17816 : 
	fldi	f3 r2 16
	fmul	f4 f3 f3
	fldi	f5 r2 14
	fmul	f2 f5 f2
	fsub	f2 f4 f2
	fldi	f4 r0 38
	fbgt	f2 f4 L_else_17817
	addi	r5 r0 0
	jump	L_cont_17818
L_else_17817 : 
	addi	r5 r0 1
L_cont_17818 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_17819
	addi	r4 r0 0
	return
L_else_17819 : 
	fldi	f4 r0 28
	fldi	f6 r0 45
	fbgt	f2 f6 L_else_17820
	fldi	f6 r0 45
	jump	L_cont_17821
L_else_17820 : 
	fldi	f6 r0 45
	fdiv	f6 f6 f2
L_cont_17821 : 
	fsti	f2 r2 18
	fadd	f3 f0 f4
	fadd	f4 f0 f6
	addi	r2 r2 21
	call	L_isqrt_2499
	subi	r2 r2 21
	fldi	f3 r2 18
	fmul	f2 f3 f2
	ldi	r4 r2 12
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_17822
	fsub	f2 f0 f2
	jump	L_cont_17823
L_else_17822 : 
	fadd	f2 f0 f2
L_cont_17823 : 
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
L_else_17812 : 
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
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17824
	fadd	f6 f0 f6
	jump	L_cont_17825
L_else_17824 : 
	fsub	f6 f0 f6
L_cont_17825 : 
	ldi	r7 r4 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_17826
	addi	r7 r0 0
	jump	L_cont_17827
L_else_17826 : 
	addi	r7 r0 1
L_cont_17827 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17828
	addi	r7 r0 0
	jump	L_cont_17829
L_else_17828 : 
	addi	r7 r0 2
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17830
	fadd	f6 f0 f6
	jump	L_cont_17831
L_else_17830 : 
	fsub	f6 f0 f6
L_cont_17831 : 
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_17832
	addi	r7 r0 0
	jump	L_cont_17833
L_else_17832 : 
	addi	r7 r0 1
L_cont_17833 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17834
	addi	r7 r0 0
	jump	L_cont_17835
L_else_17834 : 
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f6 r8 0
	fldi	f7 r0 38
	fbne	f6 f7 L_else_17836
	addi	r8 r0 1
	jump	L_cont_17837
L_else_17836 : 
	addi	r8 r0 0
L_cont_17837 : 
	sub	r7 r7 r8
L_cont_17835 : 
L_cont_17829 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17838
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
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17839
	fadd	f6 f0 f6
	jump	L_cont_17840
L_else_17839 : 
	fsub	f6 f0 f6
L_cont_17840 : 
	ldi	r7 r4 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_17841
	addi	r7 r0 0
	jump	L_cont_17842
L_else_17841 : 
	addi	r7 r0 1
L_cont_17842 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17843
	addi	r7 r0 0
	jump	L_cont_17844
L_else_17843 : 
	addi	r7 r0 2
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17845
	fadd	f6 f0 f6
	jump	L_cont_17846
L_else_17845 : 
	fsub	f6 f0 f6
L_cont_17846 : 
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_17847
	addi	r7 r0 0
	jump	L_cont_17848
L_else_17847 : 
	addi	r7 r0 1
L_cont_17848 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17849
	addi	r7 r0 0
	jump	L_cont_17850
L_else_17849 : 
	addi	r7 r0 1
	addi	r8 r0 3
	add	r8 r6 r8
	fldi	f6 r8 0
	fldi	f7 r0 38
	fbne	f6 f7 L_else_17851
	addi	r8 r0 1
	jump	L_cont_17852
L_else_17851 : 
	addi	r8 r0 0
L_cont_17852 : 
	sub	r7 r7 r8
L_cont_17850 : 
L_cont_17844 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17853
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
	fldi	f5 r0 38
	fbgt	f5 f2 L_else_17854
	fadd	f2 f0 f2
	jump	L_cont_17855
L_else_17854 : 
	fsub	f2 f0 f2
L_cont_17855 : 
	ldi	r7 r4 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_17856
	addi	r7 r0 0
	jump	L_cont_17857
L_else_17856 : 
	addi	r7 r0 1
L_cont_17857 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17858
	addi	r4 r0 0
	jump	L_cont_17859
L_else_17858 : 
	addi	r7 r0 1
	add	r5 r5 r7
	fldi	f2 r5 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17860
	fadd	f2 f0 f2
	jump	L_cont_17861
L_else_17860 : 
	fsub	f2 f0 f2
L_cont_17861 : 
	ldi	r4 r4 4
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_17862
	addi	r4 r0 0
	jump	L_cont_17863
L_else_17862 : 
	addi	r4 r0 1
L_cont_17863 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17864
	addi	r4 r0 0
	jump	L_cont_17865
L_else_17864 : 
	addi	r4 r0 1
	addi	r5 r0 5
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17866
	addi	r5 r0 1
	jump	L_cont_17867
L_else_17866 : 
	addi	r5 r0 0
L_cont_17867 : 
	sub	r4 r4 r5
L_cont_17865 : 
L_cont_17859 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17868
	addi	r4 r0 0
	return
L_else_17868 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 3
	return
L_else_17853 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f5 r4 0
	addi	r4 r0 2
	return
L_else_17838 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f5 r4 0
	addi	r4 r0 1
	return
L_solver_fast_2723 : 
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
	bne	r4 r8 L_else_17869
	ldi	r5 r5 0
	add	r4 r0 r7
	jump	L_solver_rect_fast_2704
L_else_17869 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_17870
	addi	r4 r0 0
	add	r4 r6 r4
	fldi	f5 r4 0
	fldi	f6 r0 38
	fbgt	f6 f5 L_else_17871
	addi	r4 r0 0
	jump	L_cont_17872
L_else_17871 : 
	addi	r4 r0 1
L_cont_17872 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17873
	addi	r4 r0 0
	return
L_else_17873 : 
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
L_else_17870 : 
	addi	r4 r0 0
	add	r4 r6 r4
	fldi	f5 r4 0
	fldi	f6 r0 38
	fbne	f5 f6 L_else_17874
	addi	r4 r0 1
	jump	L_cont_17875
L_else_17874 : 
	addi	r4 r0 0
L_cont_17875 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17876
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
	call	L_quadratic_2681
	subi	r2 r2 8
	ldi	r4 r2 6
	ldi	r5 r4 1
	addi	r6 r0 3
	bne	r5 r6 L_else_17878
	fldi	f3 r0 45
	fsub	f2 f2 f3
	jump	L_cont_17879
L_else_17878 : 
	fadd	f2 f0 f2
L_cont_17879 : 
	fldi	f3 r2 4
	fmul	f4 f3 f3
	fldi	f5 r2 2
	fmul	f2 f5 f2
	fsub	f2 f4 f2
	fldi	f4 r0 38
	fbgt	f2 f4 L_else_17880
	addi	r5 r0 0
	jump	L_cont_17881
L_else_17880 : 
	addi	r5 r0 1
L_cont_17881 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_17882
	addi	r4 r0 0
	return
L_else_17882 : 
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_17883
	addi	r4 r0 4145
	addi	r5 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 45
	fbgt	f2 f5 L_else_17885
	fldi	f5 r0 45
	jump	L_cont_17886
L_else_17885 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f2
L_cont_17886 : 
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
	jump	L_cont_17884
L_else_17883 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 45
	fbgt	f2 f5 L_else_17888
	fldi	f5 r0 45
	jump	L_cont_17889
L_else_17888 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f2
L_cont_17889 : 
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
L_cont_17884 : 
	addi	r4 r0 1
	return
L_else_17876 : 
	addi	r4 r0 0
	return
L_solver_fast2_2741 : 
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
	bne	r8 r9 L_else_17890
	ldi	r5 r5 0
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r1
	jump	L_solver_rect_fast_2704
L_else_17890 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_17891
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17892
	addi	r5 r0 0
	jump	L_cont_17893
L_else_17892 : 
	addi	r5 r0 1
L_cont_17893 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_17894
	addi	r4 r0 0
	return
L_else_17894 : 
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
L_else_17891 : 
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f5 r5 0
	fldi	f6 r0 38
	fbne	f5 f6 L_else_17895
	addi	r5 r0 1
	jump	L_cont_17896
L_else_17895 : 
	addi	r5 r0 0
L_cont_17896 : 
	addi	r8 r0 0
	bne	r5 r8 L_else_17897
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
	fldi	f4 r0 38
	fbgt	f3 f4 L_else_17898
	addi	r5 r0 0
	jump	L_cont_17899
L_else_17898 : 
	addi	r5 r0 1
L_cont_17899 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_17900
	addi	r4 r0 0
	return
L_else_17900 : 
	ldi	r5 r6 6
	addi	r6 r0 0
	bne	r5 r6 L_else_17901
	addi	r5 r0 4145
	addi	r6 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 45
	fbgt	f3 f5 L_else_17903
	fldi	f5 r0 45
	jump	L_cont_17904
L_else_17903 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f3
L_cont_17904 : 
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
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
	jump	L_cont_17902
L_else_17901 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 45
	fbgt	f3 f5 L_else_17906
	fldi	f5 r0 45
	jump	L_cont_17907
L_else_17906 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f3
L_cont_17907 : 
	sti	r6 r2 8
	sti	r5 r2 9
	sti	r4 r2 2
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
L_cont_17902 : 
	addi	r4 r0 1
	return
L_else_17897 : 
	addi	r4 r0 0
	return
L_iter_setup_dirvec_constants_2753 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_17908
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r4 1
	ldi	r8 r4 0
	ldi	r9 r6 1
	addi	r10 r0 1
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r9 r10 L_else_17909
	addi	r9 r0 6
	fldi	f2 r0 38
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
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17911
	addi	r5 r0 1
	jump	L_cont_17912
L_else_17911 : 
	addi	r5 r0 0
L_cont_17912 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_17913
	addi	r5 r0 0
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 0
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17915
	addi	r9 r0 0
	jump	L_cont_17916
L_else_17915 : 
	addi	r9 r0 1
L_cont_17916 : 
	xor	r8 r8 r9
	ldi	r9 r7 4
	addi	r10 r0 0
	add	r9 r9 r10
	fldi	f2 r9 0
	addi	r9 r0 0
	bne	r8 r9 L_else_17917
	fsub	f2 f0 f2
	jump	L_cont_17918
L_else_17917 : 
	fadd	f2 f0 f2
L_cont_17918 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	fldi	f2 r0 45
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_17914
L_else_17913 : 
	addi	r5 r0 1
	fldi	f2 r0 38
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_17914 : 
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17919
	addi	r5 r0 1
	jump	L_cont_17920
L_else_17919 : 
	addi	r5 r0 0
L_cont_17920 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_17921
	addi	r5 r0 2
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 1
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17923
	addi	r9 r0 0
	jump	L_cont_17924
L_else_17923 : 
	addi	r9 r0 1
L_cont_17924 : 
	xor	r8 r8 r9
	ldi	r9 r7 4
	addi	r10 r0 1
	add	r9 r9 r10
	fldi	f2 r9 0
	addi	r9 r0 0
	bne	r8 r9 L_else_17925
	fsub	f2 f0 f2
	jump	L_cont_17926
L_else_17925 : 
	fadd	f2 f0 f2
L_cont_17926 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 3
	fldi	f2 r0 45
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_17922
L_else_17921 : 
	addi	r5 r0 3
	fldi	f2 r0 38
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_17922 : 
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17927
	addi	r5 r0 1
	jump	L_cont_17928
L_else_17927 : 
	addi	r5 r0 0
L_cont_17928 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_17929
	addi	r5 r0 4
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 2
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17931
	addi	r9 r0 0
	jump	L_cont_17932
L_else_17931 : 
	addi	r9 r0 1
L_cont_17932 : 
	xor	r8 r8 r9
	ldi	r7 r7 4
	addi	r9 r0 2
	add	r7 r7 r9
	fldi	f2 r7 0
	addi	r7 r0 0
	bne	r8 r7 L_else_17933
	fsub	f2 f0 f2
	jump	L_cont_17934
L_else_17933 : 
	fadd	f2 f0 f2
L_cont_17934 : 
	add	r5 r4 r5
	fsti	f2 r5 0
	addi	r5 r0 5
	fldi	f2 r0 45
	addi	r7 r0 2
	add	r6 r6 r7
	fldi	f3 r6 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_17930
L_else_17929 : 
	addi	r5 r0 5
	fldi	f2 r0 38
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_17930 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_17910
L_else_17909 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_17935
	addi	r9 r0 4
	fldi	f2 r0 38
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
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_17937
	addi	r6 r0 0
	jump	L_cont_17938
L_else_17937 : 
	addi	r6 r0 1
L_cont_17938 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17939
	addi	r5 r0 0
	fldi	f2 r0 38
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_17940
L_else_17939 : 
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
L_cont_17940 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_17936
L_else_17935 : 
	addi	r9 r0 5
	fldi	f2 r0 38
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
	bne	r6 r8 L_else_17941
	addi	r4 r0 1
	add	r4 r7 r4
	fsti	f3 r4 0
	addi	r4 r0 2
	add	r4 r7 r4
	fsti	f4 r4 0
	addi	r4 r0 3
	add	r4 r7 r4
	fsti	f5 r4 0
	jump	L_cont_17942
L_else_17941 : 
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
L_cont_17942 : 
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17943
	addi	r4 r0 1
	jump	L_cont_17944
L_else_17943 : 
	addi	r4 r0 0
L_cont_17944 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17945
	addi	r4 r0 4
	fldi	f3 r0 45
	fdiv	f2 f3 f2
	add	r4 r7 r4
	fsti	f2 r4 0
	jump	L_cont_17946
L_else_17945 : 
L_cont_17946 : 
	ldi	r4 r2 1
	ldi	r5 r2 2
	add	r5 r5 r4
	sti	r7 r5 0
L_cont_17936 : 
L_cont_17910 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_iter_setup_dirvec_constants_2753
L_else_17908 : 
	return
L_setup_startp_constants_2758 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_17948
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
	bne	r8 r9 L_else_17949
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
	call	L_veciprod2_2544
	subi	r2 r2 5
	ldi	r4 r2 2
	ldi	r5 r2 3
	add	r4 r5 r4
	fsti	f2 r4 0
	jump	L_cont_17950
L_else_17949 : 
	addi	r9 r0 2
	bgt	r8 r9 L_else_17951
	jump	L_cont_17952
L_else_17951 : 
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
	call	L_quadratic_2681
	subi	r2 r2 6
	addi	r4 r0 3
	addi	r5 r0 3
	ldi	r6 r2 4
	bne	r6 r5 L_else_17953
	fldi	f3 r0 45
	fsub	f2 f2 f3
	jump	L_cont_17954
L_else_17953 : 
	fadd	f2 f0 f2
L_cont_17954 : 
	ldi	r5 r2 3
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_17952 : 
L_cont_17950 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_setup_startp_constants_2758
L_else_17948 : 
	return
L_check_all_inside_2783 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_17956
	addi	r4 r0 1
	return
L_else_17956 : 
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
	bne	r7 r8 L_else_17957
	fldi	f8 r0 38
	fbgt	f8 f5 L_else_17959
	fadd	f5 f0 f5
	jump	L_cont_17960
L_else_17959 : 
	fsub	f5 f0 f5
L_cont_17960 : 
	ldi	r7 r6 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f8 r7 0
	fbgt	f8 f5 L_else_17961
	addi	r7 r0 0
	jump	L_cont_17962
L_else_17961 : 
	addi	r7 r0 1
L_cont_17962 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17963
	addi	r7 r0 0
	jump	L_cont_17964
L_else_17963 : 
	fldi	f5 r0 38
	fbgt	f5 f6 L_else_17965
	fadd	f5 f0 f6
	jump	L_cont_17966
L_else_17965 : 
	fsub	f5 f0 f6
L_cont_17966 : 
	ldi	r7 r6 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f6 r7 0
	fbgt	f6 f5 L_else_17967
	addi	r7 r0 0
	jump	L_cont_17968
L_else_17967 : 
	addi	r7 r0 1
L_cont_17968 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17969
	addi	r7 r0 0
	jump	L_cont_17970
L_else_17969 : 
	fldi	f5 r0 38
	fbgt	f5 f7 L_else_17971
	fadd	f5 f0 f7
	jump	L_cont_17972
L_else_17971 : 
	fsub	f5 f0 f7
L_cont_17972 : 
	ldi	r7 r6 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f6 r7 0
	fbgt	f6 f5 L_else_17973
	addi	r7 r0 0
	jump	L_cont_17974
L_else_17973 : 
	addi	r7 r0 1
L_cont_17974 : 
L_cont_17970 : 
L_cont_17964 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17975
	addi	r7 r0 1
	ldi	r6 r6 6
	sub	r4 r7 r6
	jump	L_cont_17976
L_else_17975 : 
	ldi	r6 r6 6
	add	r4 r0 r6
L_cont_17976 : 
	jump	L_cont_17958
L_else_17957 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_17977
	ldi	r7 r6 4
	sti	r6 r2 8
	add	r4 r0 r7
	fadd	f4 f0 f7
	fadd	f3 f0 f6
	fadd	f2 f0 f5
	addi	r2 r2 10
	call	L_veciprod2_2544
	subi	r2 r2 10
	addi	r4 r0 1
	ldi	r5 r2 8
	ldi	r5 r5 6
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17979
	addi	r6 r0 0
	jump	L_cont_17980
L_else_17979 : 
	addi	r6 r0 1
L_cont_17980 : 
	xor	r5 r5 r6
	sub	r4 r4 r5
	jump	L_cont_17978
L_else_17977 : 
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
	bne	r5 r6 L_else_17981
	fldi	f3 r0 45
	fsub	f2 f2 f3
	jump	L_cont_17982
L_else_17981 : 
	fadd	f2 f0 f2
L_cont_17982 : 
	addi	r5 r0 1
	ldi	r4 r4 6
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17983
	addi	r6 r0 0
	jump	L_cont_17984
L_else_17983 : 
	addi	r6 r0 1
L_cont_17984 : 
	xor	r4 r4 r6
	sub	r4 r5 r4
L_cont_17978 : 
L_cont_17958 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17985
	addi	r4 r0 1
	ldi	r5 r2 7
	add	r4 r5 r4
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r5 r2 6
	jump	L_check_all_inside_2783
L_else_17985 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2789 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_17986
	addi	r4 r0 0
	return
L_else_17986 : 
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
	call	L_solver_fast_2723
	subi	r2 r2 4
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	addi	r5 r0 0
	bne	r4 r5 L_else_17987
	addi	r4 r0 0
	jump	L_cont_17988
L_else_17987 : 
	fldi	f3 r0 25
	fbgt	f3 f2 L_else_17989
	addi	r4 r0 0
	jump	L_cont_17990
L_else_17989 : 
	addi	r4 r0 1
L_cont_17990 : 
L_cont_17988 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17991
	addi	r4 r0 5042
	ldi	r5 r2 2
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_17992
	addi	r4 r0 0
	return
L_else_17992 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2789
L_else_17991 : 
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
	call	L_check_all_inside_2783
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_17993
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2789
L_else_17993 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2792 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_17994
	addi	r4 r0 0
	return
L_else_17994 : 
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
	bne	r4 r5 L_else_17995
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_one_or_group_2792
L_else_17995 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2795 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_17996
	addi	r4 r0 0
	return
L_else_17996 : 
	addi	r8 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r7 r8 L_else_17997
	addi	r4 r0 1
	jump	L_cont_17998
L_else_17997 : 
	addi	r8 r0 4977
	addi	r9 r0 4114
	add	r6 r0 r9
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 4
	call	L_solver_fast_2723
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_17999
	addi	r4 r0 0
	jump	L_cont_18000
L_else_17999 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f3 f2 L_else_18001
	addi	r4 r0 0
	jump	L_cont_18002
L_else_18001 : 
	addi	r4 r0 1
L_cont_18002 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18003
	addi	r4 r0 0
	jump	L_cont_18004
L_else_18003 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2792
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_18005
	addi	r4 r0 0
	jump	L_cont_18006
L_else_18005 : 
	addi	r4 r0 1
L_cont_18006 : 
L_cont_18004 : 
L_cont_18000 : 
L_cont_17998 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18007
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2795
L_else_18007 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2792
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_18008
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2795
L_else_18008 : 
	addi	r4 r0 1
	return
L_solve_each_element_2798 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_18009
	return
L_else_18009 : 
	addi	r8 r0 4135
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 5
	call	L_solver_2700
	subi	r2 r2 5
	addi	r5 r0 0
	bne	r4 r5 L_else_18011
	addi	r4 r0 5042
	ldi	r5 r2 3
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_18012
	return
L_else_18012 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2798
L_else_18011 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_18014
	addi	r5 r0 0
	jump	L_cont_18015
L_else_18014 : 
	addi	r5 r0 1
L_cont_18015 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_18016
	jump	L_cont_18017
L_else_18016 : 
	addi	r5 r0 4154
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_18018
	addi	r5 r0 0
	jump	L_cont_18019
L_else_18018 : 
	addi	r5 r0 1
L_cont_18019 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_18020
	jump	L_cont_18021
L_else_18020 : 
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
	call	L_check_all_inside_2783
	subi	r2 r2 15
	addi	r5 r0 0
	bne	r4 r5 L_else_18023
	jump	L_cont_18024
L_else_18023 : 
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
L_cont_18024 : 
L_cont_18021 : 
L_cont_18017 : 
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
	bne	r7 r8 L_else_18025
	return
L_else_18025 : 
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
	bne	r6 r7 L_else_18027
	return
L_else_18027 : 
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
	ldi	r6 r2 0
	jump	L_solve_one_or_network_2802
L_trace_or_matrix_2806 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 0
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_18029
	return
L_else_18029 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_18031
	addi	r8 r0 1
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_18033
	jump	L_cont_18034
L_else_18033 : 
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
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_2802
	subi	r2 r2 5
L_cont_18034 : 
	jump	L_cont_18032
L_else_18031 : 
	addi	r9 r0 4135
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r8
	add	r6 r0 r9
	addi	r2 r2 5
	call	L_solver_2700
	subi	r2 r2 5
	addi	r5 r0 0
	bne	r4 r5 L_else_18035
	jump	L_cont_18036
L_else_18035 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_18037
	addi	r4 r0 0
	jump	L_cont_18038
L_else_18037 : 
	addi	r4 r0 1
L_cont_18038 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18039
	jump	L_cont_18040
L_else_18039 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_18041
	jump	L_cont_18042
L_else_18041 : 
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
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_2802
	subi	r2 r2 5
L_cont_18042 : 
L_cont_18040 : 
L_cont_18036 : 
L_cont_18032 : 
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
	bne	r8 r9 L_else_18043
	return
L_else_18043 : 
	sti	r7 r2 0
	sti	r6 r2 1
	sti	r5 r2 2
	sti	r4 r2 3
	sti	r8 r2 4
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 6
	call	L_solver_fast2_2741
	subi	r2 r2 6
	addi	r5 r0 0
	bne	r4 r5 L_else_18045
	addi	r4 r0 5042
	ldi	r5 r2 4
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_18046
	return
L_else_18046 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r5 r2 2
	ldi	r6 r2 1
	jump	L_solve_each_element_fast_2812
L_else_18045 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_18048
	addi	r5 r0 0
	jump	L_cont_18049
L_else_18048 : 
	addi	r5 r0 1
L_cont_18049 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_18050
	jump	L_cont_18051
L_else_18050 : 
	addi	r5 r0 4154
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_18052
	addi	r5 r0 0
	jump	L_cont_18053
L_else_18052 : 
	addi	r5 r0 1
L_cont_18053 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_18054
	jump	L_cont_18055
L_else_18054 : 
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
	call	L_check_all_inside_2783
	subi	r2 r2 15
	addi	r5 r0 0
	bne	r4 r5 L_else_18056
	jump	L_cont_18057
L_else_18056 : 
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
L_cont_18057 : 
L_cont_18055 : 
L_cont_18051 : 
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
	bne	r7 r8 L_else_18058
	return
L_else_18058 : 
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
	bne	r6 r7 L_else_18060
	return
L_else_18060 : 
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
	ldi	r6 r2 0
	jump	L_solve_one_or_network_fast_2816
L_trace_or_matrix_fast_2820 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 0
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_18062
	return
L_else_18062 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_18064
	addi	r8 r0 1
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_18066
	jump	L_cont_18067
L_else_18066 : 
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
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_fast_2816
	subi	r2 r2 5
L_cont_18067 : 
	jump	L_cont_18065
L_else_18064 : 
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_fast2_2741
	subi	r2 r2 5
	addi	r5 r0 0
	bne	r4 r5 L_else_18068
	jump	L_cont_18069
L_else_18068 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_18070
	addi	r4 r0 0
	jump	L_cont_18071
L_else_18070 : 
	addi	r4 r0 1
L_cont_18071 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18072
	jump	L_cont_18073
L_else_18072 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_18074
	jump	L_cont_18075
L_else_18074 : 
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
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_fast_2816
	subi	r2 r2 5
L_cont_18075 : 
L_cont_18073 : 
L_cont_18069 : 
L_cont_18065 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_fast_2820
L_judge_intersection_fast_2824 : 
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
	call	L_trace_or_matrix_fast_2820
	subi	r2 r2 1
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_18076
	addi	r4 r0 0
	jump	L_cont_18077
L_else_18076 : 
	addi	r4 r0 1
L_cont_18077 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18078
	addi	r4 r0 0
	return
L_else_18078 : 
	fldi	f3 r0 21
	fbgt	f3 f2 L_else_18079
	addi	r4 r0 0
	return
L_else_18079 : 
	addi	r4 r0 1
	return
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
	bne	r6 r7 L_else_18080
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
	fbgt	f3 f2 L_else_18081
	addi	r6 r0 0
	jump	L_cont_18082
L_else_18081 : 
	addi	r6 r0 1
L_cont_18082 : 
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
	fbgt	f3 f2 L_else_18083
	addi	r4 r0 0
	jump	L_cont_18084
L_else_18083 : 
	addi	r4 r0 1
L_cont_18084 : 
	addi	r5 r0 4121
	addi	r7 r0 1
	addi	r8 r0 0
	bne	r6 r8 L_else_18085
	addi	r6 r0 0
	bne	r4 r6 L_else_18087
	fldi	f2 r0 15
	jump	L_cont_18088
L_else_18087 : 
	fldi	f2 r0 38
L_cont_18088 : 
	jump	L_cont_18086
L_else_18085 : 
	addi	r6 r0 0
	bne	r4 r6 L_else_18089
	fldi	f2 r0 38
	jump	L_cont_18090
L_else_18089 : 
	fldi	f2 r0 15
L_cont_18090 : 
L_cont_18086 : 
	add	r4 r5 r7
	fsti	f2 r4 0
	return
L_else_18080 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_18092
	addi	r4 r0 1
	add	r4 r5 r4
	fldi	f2 r4 0
	fldi	f3 r0 12
	fmul	f2 f2 f3
	addi	r2 r2 1
	call	L_sin_2493
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
	fldi	f4 r0 45
	fsub	f2 f4 f2
	fmul	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_18092 : 
	addi	r7 r0 3
	bne	r6 r7 L_else_18094
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
	fldi	f4 r0 45
	fbgt	f2 f4 L_else_18095
	fldi	f4 r0 45
	jump	L_cont_18096
L_else_18095 : 
	fldi	f4 r0 45
	fdiv	f4 f4 f2
L_cont_18096 : 
	fsti	f2 r2 0
	addi	r2 r2 3
	call	L_isqrt_2499
	subi	r2 r2 3
	fldi	f3 r2 0
	fmul	f2 f3 f2
	fldi	f3 r0 13
	fdiv	f2 f2 f3
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 17
	fmul	f2 f2 f3
	addi	r2 r2 3
	call	L_cos_2495
	subi	r2 r2 3
	fmul	f2 f2 f2
	addi	r4 r0 4121
	addi	r5 r0 1
	fldi	f3 r0 15
	fmul	f3 f2 f3
	add	r4 r4 r5
	fsti	f3 r4 0
	addi	r4 r0 4121
	addi	r5 r0 2
	fldi	f3 r0 45
	fsub	f2 f3 f2
	fldi	f3 r0 15
	fmul	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_18094 : 
	addi	r7 r0 4
	bne	r6 r7 L_else_18098
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
	fldi	f5 r0 45
	fbgt	f3 f5 L_else_18099
	fldi	f5 r0 45
	jump	L_cont_18100
L_else_18099 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f3
L_cont_18100 : 
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
	fldi	f6 r0 45
	fbgt	f4 f6 L_else_18101
	fldi	f6 r0 45
	jump	L_cont_18102
L_else_18101 : 
	fldi	f6 r0 45
	fdiv	f6 f6 f4
L_cont_18102 : 
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
	fldi	f5 r0 38
	fbgt	f5 f3 L_else_18103
	fadd	f5 f0 f3
	jump	L_cont_18104
L_else_18103 : 
	fsub	f5 f0 f3
L_cont_18104 : 
	fldi	f6 r0 20
	fbgt	f6 f5 L_else_18105
	addi	r4 r0 0
	jump	L_cont_18106
L_else_18105 : 
	addi	r4 r0 1
L_cont_18106 : 
	addi	r5 r0 0
	fsti	f4 r2 14
	bne	r4 r5 L_else_18107
	fdiv	f2 f2 f3
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_18109
	fadd	f2 f0 f2
	jump	L_cont_18110
L_else_18109 : 
	fsub	f2 f0 f2
L_cont_18110 : 
	addi	r2 r2 17
	call	L_atan_2497
	subi	r2 r2 17
	fldi	f3 r0 18
	fmul	f2 f2 f3
	fldi	f3 r0 17
	fdiv	f2 f2 f3
	jump	L_cont_18108
L_else_18107 : 
	fldi	f2 r0 19
L_cont_18108 : 
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
	fldi	f6 r0 45
	fbgt	f4 f6 L_else_18111
	fldi	f6 r0 45
	jump	L_cont_18112
L_else_18111 : 
	fldi	f6 r0 45
	fdiv	f6 f6 f4
L_cont_18112 : 
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
	fldi	f3 r0 38
	fldi	f4 r2 14
	fbgt	f3 f4 L_else_18113
	fadd	f3 f0 f4
	jump	L_cont_18114
L_else_18113 : 
	fsub	f3 f0 f4
L_cont_18114 : 
	fldi	f5 r0 20
	fbgt	f5 f3 L_else_18115
	addi	r4 r0 0
	jump	L_cont_18116
L_else_18115 : 
	addi	r4 r0 1
L_cont_18116 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18117
	fdiv	f2 f2 f4
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_18119
	fadd	f2 f0 f2
	jump	L_cont_18120
L_else_18119 : 
	fsub	f2 f0 f2
L_cont_18120 : 
	addi	r2 r2 23
	call	L_atan_2497
	subi	r2 r2 23
	fldi	f3 r0 18
	fmul	f2 f2 f3
	fldi	f3 r0 17
	fdiv	f2 f2 f3
	jump	L_cont_18118
L_else_18117 : 
	fldi	f2 r0 19
L_cont_18118 : 
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 16
	fldi	f4 r0 46
	fldi	f5 r2 16
	fsub	f4 f4 f5
	fmul	f4 f4 f4
	fsub	f3 f3 f4
	fldi	f4 r0 46
	fsub	f2 f4 f2
	fmul	f2 f2 f2
	fsub	f2 f3 f2
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_18121
	addi	r4 r0 0
	jump	L_cont_18122
L_else_18121 : 
	addi	r4 r0 1
L_cont_18122 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18123
	fadd	f2 f0 f2
	jump	L_cont_18124
L_else_18123 : 
	fldi	f2 r0 38
L_cont_18124 : 
	addi	r4 r0 4121
	addi	r5 r0 2
	fldi	f3 r0 15
	fmul	f2 f3 f2
	fldi	f3 r0 14
	fdiv	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_18098 : 
	return
L_add_light_2838 : 
	fldi	f5 r0 38
	fbgt	f2 f5 L_else_18127
	addi	r4 r0 0
	jump	L_cont_18128
L_else_18127 : 
	addi	r4 r0 1
L_cont_18128 : 
	addi	r5 r0 0
	fsti	f4 r2 0
	fsti	f3 r2 2
	bne	r4 r5 L_else_18129
	jump	L_cont_18130
L_else_18129 : 
	addi	r4 r0 4127
	addi	r5 r0 4121
	addi	r2 r2 5
	call	L_vecaccum_2549
	subi	r2 r2 5
L_cont_18130 : 
	fldi	f2 r0 38
	fldi	f3 r2 2
	fbgt	f3 f2 L_else_18131
	addi	r4 r0 0
	jump	L_cont_18132
L_else_18131 : 
	addi	r4 r0 1
L_cont_18132 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18133
	return
L_else_18133 : 
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
L_trace_reflections_2842 : 
	addi	r6 r0 0
	bgt	r6 r4 L_else_18136
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
	call	L_judge_intersection_fast_2824
	subi	r2 r2 11
	addi	r5 r0 0
	bne	r4 r5 L_else_18139
	jump	L_cont_18140
L_else_18139 : 
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
	bne	r4 r6 L_else_18141
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
	bne	r4 r5 L_else_18143
	addi	r4 r0 4118
	ldi	r5 r2 8
	ldi	r6 r5 0
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_veciprod_2541
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
	call	L_veciprod_2541
	subi	r2 r2 15
	fldi	f3 r2 12
	fmul	f3 f3 f2
	fldi	f2 r2 10
	fldi	f4 r2 2
	addi	r2 r2 15
	call	L_add_light_2838
	subi	r2 r2 15
	jump	L_cont_18144
L_else_18143 : 
L_cont_18144 : 
	jump	L_cont_18142
L_else_18141 : 
L_cont_18142 : 
L_cont_18140 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	sub	r4 r5 r4
	fldi	f2 r2 6
	fldi	f3 r2 2
	ldi	r5 r2 4
	jump	L_trace_reflections_2842
L_else_18136 : 
	return
L_trace_ray_2847 : 
	addi	r7 r0 4
	bgt	r4 r7 L_else_18146
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
	call	L_trace_or_matrix_2806
	subi	r2 r2 10
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f2 f3 L_else_18148
	addi	r4 r0 0
	jump	L_cont_18149
L_else_18148 : 
	addi	r4 r0 1
L_cont_18149 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18150
	addi	r4 r0 0
	jump	L_cont_18151
L_else_18150 : 
	fldi	f3 r0 21
	fbgt	f3 f2 L_else_18152
	addi	r4 r0 0
	jump	L_cont_18153
L_else_18152 : 
	addi	r4 r0 1
L_cont_18153 : 
L_cont_18151 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18154
	addi	r4 r0 -1
	ldi	r5 r2 7
	ldi	r6 r2 8
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 0
	bne	r5 r4 L_else_18155
	return
L_else_18155 : 
	addi	r5 r0 4111
	ldi	r4 r2 6
	addi	r2 r2 10
	call	L_veciprod_2541
	subi	r2 r2 10
	fsub	f2 f0 f2
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_18157
	addi	r4 r0 0
	jump	L_cont_18158
L_else_18157 : 
	addi	r4 r0 1
L_cont_18158 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18159
	return
L_else_18159 : 
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
L_else_18154 : 
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
	bne	r7 r8 L_else_18162
	addi	r7 r0 4146
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r8 r0 4118
	fldi	f4 r0 38
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
	fldi	f5 r0 38
	fbne	f4 f5 L_else_18164
	addi	r7 r0 1
	jump	L_cont_18165
L_else_18164 : 
	addi	r7 r0 0
L_cont_18165 : 
	addi	r11 r0 0
	bne	r7 r11 L_else_18166
	fldi	f5 r0 38
	fbgt	f4 f5 L_else_18168
	addi	r7 r0 0
	jump	L_cont_18169
L_else_18168 : 
	addi	r7 r0 1
L_cont_18169 : 
	addi	r11 r0 0
	bne	r7 r11 L_else_18170
	fldi	f4 r0 27
	jump	L_cont_18171
L_else_18170 : 
	fldi	f4 r0 45
L_cont_18171 : 
	jump	L_cont_18167
L_else_18166 : 
	fldi	f4 r0 38
L_cont_18167 : 
	fsub	f4 f0 f4
	add	r7 r8 r9
	fsti	f4 r7 0
	jump	L_cont_18163
L_else_18162 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_18172
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
	jump	L_cont_18173
L_else_18172 : 
	addi	r7 r0 4114
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f4 r7 0
	ldi	r7 r5 5
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f5 r7 0
	fsub	f4 f4 f5
	addi	r7 r0 4114
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f5 r7 0
	ldi	r7 r5 5
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f6 r7 0
	fsub	f5 f5 f6
	addi	r7 r0 4114
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f6 r7 0
	ldi	r7 r5 5
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f7 r7 0
	fsub	f6 f6 f7
	ldi	r7 r5 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f7 r7 0
	fmul	f7 f4 f7
	ldi	r7 r5 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f8 r7 0
	fmul	f8 f5 f8
	ldi	r7 r5 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f9 r7 0
	fmul	f9 f6 f9
	ldi	r7 r5 3
	addi	r8 r0 0
	bne	r7 r8 L_else_18174
	addi	r7 r0 4118
	addi	r8 r0 0
	add	r7 r7 r8
	fsti	f7 r7 0
	addi	r7 r0 4118
	addi	r8 r0 1
	add	r7 r7 r8
	fsti	f8 r7 0
	addi	r7 r0 4118
	addi	r8 r0 2
	add	r7 r7 r8
	fsti	f9 r7 0
	jump	L_cont_18175
L_else_18174 : 
	addi	r7 r0 4118
	addi	r8 r0 0
	ldi	r9 r5 9
	addi	r10 r0 2
	add	r9 r9 r10
	fldi	f10 r9 0
	fmul	f10 f5 f10
	ldi	r9 r5 9
	addi	r10 r0 1
	add	r9 r9 r10
	fldi	f11 r9 0
	fmul	f11 f6 f11
	fadd	f10 f10 f11
	fldi	f11 r0 28
	fdiv	f10 f10 f11
	fadd	f7 f7 f10
	add	r7 r7 r8
	fsti	f7 r7 0
	addi	r7 r0 4118
	addi	r8 r0 1
	ldi	r9 r5 9
	addi	r10 r0 2
	add	r9 r9 r10
	fldi	f7 r9 0
	fmul	f7 f4 f7
	ldi	r9 r5 9
	addi	r10 r0 0
	add	r9 r9 r10
	fldi	f10 r9 0
	fmul	f6 f6 f10
	fadd	f6 f7 f6
	fldi	f7 r0 28
	fdiv	f6 f6 f7
	fadd	f6 f8 f6
	add	r7 r7 r8
	fsti	f6 r7 0
	addi	r7 r0 4118
	addi	r8 r0 2
	ldi	r9 r5 9
	addi	r10 r0 1
	add	r9 r9 r10
	fldi	f6 r9 0
	fmul	f4 f4 f6
	ldi	r9 r5 9
	addi	r10 r0 0
	add	r9 r9 r10
	fldi	f6 r9 0
	fmul	f5 f5 f6
	fadd	f4 f4 f5
	fldi	f5 r0 28
	fdiv	f4 f4 f5
	fadd	f4 f9 f4
	add	r7 r7 r8
	fsti	f4 r7 0
L_cont_18175 : 
	addi	r7 r0 4118
	ldi	r8 r5 6
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 15
	call	L_vecunit_sgn_2538
	subi	r2 r2 15
L_cont_18173 : 
L_cont_18163 : 
	addi	r4 r0 4135
	addi	r5 r0 4114
	addi	r2 r2 15
	call	L_veccpy_2530
	subi	r2 r2 15
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
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 15
	call	L_veccpy_2530
	subi	r2 r2 15
	ldi	r4 r2 2
	ldi	r5 r4 3
	ldi	r6 r2 13
	ldi	r7 r6 7
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f2 r7 0
	fldi	f3 r0 46
	fbgt	f3 f2 L_else_18176
	addi	r7 r0 0
	jump	L_cont_18177
L_else_18176 : 
	addi	r7 r0 1
L_cont_18177 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_18178
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
	call	L_veccpy_2530
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
	call	L_veccpy_2530
	subi	r2 r2 16
	jump	L_cont_18179
L_else_18178 : 
	addi	r7 r0 0
	ldi	r8 r2 7
	add	r5 r5 r8
	sti	r7 r5 0
L_cont_18179 : 
	fldi	f2 r0 8
	addi	r5 r0 4118
	ldi	r4 r2 6
	fsti	f2 r2 16
	addi	r2 r2 19
	call	L_veciprod_2541
	subi	r2 r2 19
	fldi	f3 r2 16
	fmul	f2 f3 f2
	addi	r5 r0 4118
	ldi	r4 r2 6
	addi	r2 r2 19
	call	L_vecaccum_2549
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
	call	L_shadow_check_one_or_matrix_2795
	subi	r2 r2 21
	addi	r5 r0 0
	bne	r4 r5 L_else_18181
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 21
	call	L_veciprod_2541
	subi	r2 r2 21
	fsub	f2 f0 f2
	fldi	f3 r2 10
	fmul	f2 f2 f3
	addi	r5 r0 4111
	ldi	r4 r2 6
	fsti	f2 r2 20
	addi	r2 r2 23
	call	L_veciprod_2541
	subi	r2 r2 23
	fsub	f3 f0 f2
	fldi	f2 r2 20
	fldi	f4 r2 18
	addi	r2 r2 23
	call	L_add_light_2838
	subi	r2 r2 23
	jump	L_cont_18182
L_else_18181 : 
L_cont_18182 : 
	addi	r5 r0 4114
	addi	r4 r0 4138
	sti	r5 r2 22
	addi	r2 r2 24
	call	L_veccpy_2530
	subi	r2 r2 24
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r5 r4 r5
	ldi	r4 r2 22
	addi	r2 r2 24
	call	L_setup_startp_constants_2758
	subi	r2 r2 24
	addi	r4 r0 4147
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r4 r4 r5
	fldi	f2 r2 10
	fldi	f3 r2 18
	ldi	r5 r2 6
	addi	r2 r2 24
	call	L_trace_reflections_2842
	subi	r2 r2 24
	fldi	f2 r0 7
	fldi	f3 r2 4
	fbgt	f3 f2 L_else_18183
	addi	r4 r0 0
	jump	L_cont_18184
L_else_18183 : 
	addi	r4 r0 1
L_cont_18184 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18185
	return
L_else_18185 : 
	addi	r4 r0 4
	ldi	r5 r2 7
	bgt	r4 r5 L_else_18187
	jump	L_cont_18188
L_else_18187 : 
	addi	r4 r0 1
	add	r4 r5 r4
	addi	r6 r0 -1
	ldi	r7 r2 8
	add	r4 r7 r4
	sti	r6 r4 0
L_cont_18188 : 
	addi	r4 r0 2
	ldi	r6 r2 9
	bne	r6 r4 L_else_18189
	fldi	f2 r0 45
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
L_else_18189 : 
	return
L_else_18146 : 
	return
L_iter_trace_diffuse_rays_2856 : 
	addi	r8 r0 0
	bgt	r8 r7 L_else_18192
	add	r8 r4 r7
	ldi	r8 r8 0
	ldi	r8 r8 0
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r7 r2 2
	sti	r4 r2 3
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_veciprod_2541
	subi	r2 r2 5
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_18193
	addi	r4 r0 0
	jump	L_cont_18194
L_else_18193 : 
	addi	r4 r0 1
L_cont_18194 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18195
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
	call	L_judge_intersection_fast_2824
	subi	r2 r2 8
	addi	r5 r0 0
	bne	r4 r5 L_else_18197
	jump	L_cont_18198
L_else_18197 : 
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
	bne	r6 r7 L_else_18199
	addi	r6 r0 4146
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 4118
	fldi	f2 r0 38
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
	sti	r8 r2 8
	sti	r7 r2 9
	addi	r2 r2 11
	call	L_sgn_2512
	subi	r2 r2 11
	fsub	f2 f0 f2
	ldi	r4 r2 8
	ldi	r5 r2 9
	add	r4 r5 r4
	fsti	f2 r4 0
	jump	L_cont_18200
L_else_18199 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_18201
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
	jump	L_cont_18202
L_else_18201 : 
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
	bne	r5 r6 L_else_18203
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
	jump	L_cont_18204
L_else_18203 : 
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
L_cont_18204 : 
	addi	r5 r0 4118
	ldi	r6 r4 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_vecunit_sgn_2538
	subi	r2 r2 11
L_cont_18202 : 
L_cont_18200 : 
	addi	r5 r0 4114
	ldi	r4 r2 7
	addi	r2 r2 11
	call	L_utexture_2835
	subi	r2 r2 11
	addi	r4 r0 0
	addi	r5 r0 4255
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r2 r2 11
	call	L_shadow_check_one_or_matrix_2795
	subi	r2 r2 11
	addi	r5 r0 0
	bne	r4 r5 L_else_18205
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 11
	call	L_veciprod_2541
	subi	r2 r2 11
	fsub	f2 f0 f2
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_18207
	addi	r4 r0 0
	jump	L_cont_18208
L_else_18207 : 
	addi	r4 r0 1
L_cont_18208 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18209
	fldi	f2 r0 38
	jump	L_cont_18210
L_else_18209 : 
	fadd	f2 f0 f2
L_cont_18210 : 
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
	addi	r2 r2 11
	call	L_vecaccum_2549
	subi	r2 r2 11
	jump	L_cont_18206
L_else_18205 : 
L_cont_18206 : 
L_cont_18198 : 
	jump	L_cont_18196
L_else_18195 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r6 r2 3
	add	r4 r6 r4
	ldi	r4 r4 0
	fldi	f3 r0 6
	fdiv	f2 f2 f3
	fsti	f2 r2 10
	sti	r4 r2 12
	addi	r2 r2 14
	call	L_judge_intersection_fast_2824
	subi	r2 r2 14
	addi	r5 r0 0
	bne	r4 r5 L_else_18211
	jump	L_cont_18212
L_else_18211 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 12
	ldi	r5 r5 0
	ldi	r6 r4 1
	addi	r7 r0 1
	sti	r4 r2 13
	bne	r6 r7 L_else_18213
	addi	r6 r0 4146
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 4118
	fldi	f2 r0 38
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
	sti	r8 r2 14
	sti	r7 r2 15
	addi	r2 r2 17
	call	L_sgn_2512
	subi	r2 r2 17
	fsub	f2 f0 f2
	ldi	r4 r2 14
	ldi	r5 r2 15
	add	r4 r5 r4
	fsti	f2 r4 0
	jump	L_cont_18214
L_else_18213 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_18215
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
	jump	L_cont_18216
L_else_18215 : 
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
	bne	r5 r6 L_else_18217
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
	jump	L_cont_18218
L_else_18217 : 
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
L_cont_18218 : 
	addi	r5 r0 4118
	ldi	r6 r4 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 17
	call	L_vecunit_sgn_2538
	subi	r2 r2 17
L_cont_18216 : 
L_cont_18214 : 
	addi	r5 r0 4114
	ldi	r4 r2 13
	addi	r2 r2 17
	call	L_utexture_2835
	subi	r2 r2 17
	addi	r4 r0 0
	addi	r5 r0 4255
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r2 r2 17
	call	L_shadow_check_one_or_matrix_2795
	subi	r2 r2 17
	addi	r5 r0 0
	bne	r4 r5 L_else_18219
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 17
	call	L_veciprod_2541
	subi	r2 r2 17
	fsub	f2 f0 f2
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_18221
	addi	r4 r0 0
	jump	L_cont_18222
L_else_18221 : 
	addi	r4 r0 1
L_cont_18222 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18223
	fldi	f2 r0 38
	jump	L_cont_18224
L_else_18223 : 
	fadd	f2 f0 f2
L_cont_18224 : 
	addi	r4 r0 4124
	fldi	f3 r2 10
	fmul	f2 f3 f2
	ldi	r5 r2 13
	ldi	r5 r5 7
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fmul	f2 f2 f3
	addi	r5 r0 4121
	addi	r2 r2 17
	call	L_vecaccum_2549
	subi	r2 r2 17
	jump	L_cont_18220
L_else_18219 : 
L_cont_18220 : 
L_cont_18212 : 
L_cont_18196 : 
	addi	r4 r0 2
	ldi	r5 r2 2
	sub	r7 r5 r4
	ldi	r4 r2 3
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_iter_trace_diffuse_rays_2856
L_else_18192 : 
	return
L_do_without_neighbors_2878 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_18226
	ldi	r6 r4 2
	addi	r7 r0 0
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r7 r6 L_else_18227
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r6 r7 L_else_18228
	jump	L_cont_18229
L_else_18228 : 
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
	call	L_veccpy_2530
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
	bne	r5 r9 L_else_18230
	jump	L_cont_18231
L_else_18230 : 
	addi	r9 r0 4148
	addi	r10 r0 0
	add	r9 r9 r10
	ldi	r9 r9 0
	addi	r10 r0 4138
	sti	r9 r2 8
	add	r5 r0 r8
	add	r4 r0 r10
	addi	r2 r2 10
	call	L_veccpy_2530
	subi	r2 r2 10
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r5 r4 r5
	ldi	r4 r2 6
	addi	r2 r2 10
	call	L_setup_startp_constants_2758
	subi	r2 r2 10
	addi	r7 r0 118
	ldi	r4 r2 8
	ldi	r5 r2 5
	ldi	r6 r2 6
	addi	r2 r2 10
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 10
L_cont_18231 : 
	addi	r4 r0 1
	ldi	r5 r2 7
	bne	r5 r4 L_else_18232
	jump	L_cont_18233
L_else_18232 : 
	addi	r4 r0 4148
	addi	r6 r0 1
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 4138
	ldi	r7 r2 6
	sti	r4 r2 9
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_veccpy_2530
	subi	r2 r2 11
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r5 r4 r5
	ldi	r4 r2 6
	addi	r2 r2 11
	call	L_setup_startp_constants_2758
	subi	r2 r2 11
	addi	r7 r0 118
	ldi	r4 r2 9
	ldi	r5 r2 5
	ldi	r6 r2 6
	addi	r2 r2 11
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 11
L_cont_18233 : 
	addi	r4 r0 2
	ldi	r5 r2 7
	bne	r5 r4 L_else_18234
	jump	L_cont_18235
L_else_18234 : 
	addi	r4 r0 4148
	addi	r6 r0 2
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 4138
	ldi	r7 r2 6
	sti	r4 r2 10
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 12
	call	L_veccpy_2530
	subi	r2 r2 12
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r5 r4 r5
	ldi	r4 r2 6
	addi	r2 r2 12
	call	L_setup_startp_constants_2758
	subi	r2 r2 12
	addi	r7 r0 118
	ldi	r4 r2 10
	ldi	r5 r2 5
	ldi	r6 r2 6
	addi	r2 r2 12
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 12
L_cont_18235 : 
	addi	r4 r0 3
	ldi	r5 r2 7
	bne	r5 r4 L_else_18236
	jump	L_cont_18237
L_else_18236 : 
	addi	r4 r0 4148
	addi	r6 r0 3
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 4138
	ldi	r7 r2 6
	sti	r4 r2 11
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 13
	call	L_veccpy_2530
	subi	r2 r2 13
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r5 r4 r5
	ldi	r4 r2 6
	addi	r2 r2 13
	call	L_setup_startp_constants_2758
	subi	r2 r2 13
	addi	r7 r0 118
	ldi	r4 r2 11
	ldi	r5 r2 5
	ldi	r6 r2 6
	addi	r2 r2 13
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 13
L_cont_18237 : 
	addi	r4 r0 4
	ldi	r5 r2 7
	bne	r5 r4 L_else_18238
	jump	L_cont_18239
L_else_18238 : 
	addi	r4 r0 4148
	addi	r5 r0 4
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 4138
	ldi	r6 r2 6
	sti	r4 r2 12
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 14
	call	L_veccpy_2530
	subi	r2 r2 14
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r5 r4 r5
	ldi	r4 r2 6
	addi	r2 r2 14
	call	L_setup_startp_constants_2758
	subi	r2 r2 14
	addi	r7 r0 118
	ldi	r4 r2 12
	ldi	r5 r2 5
	ldi	r6 r2 6
	addi	r2 r2 14
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 14
L_cont_18239 : 
	addi	r4 r0 4127
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 4124
	add	r5 r0 r6
	add	r6 r0 r7
	addi	r2 r2 14
	call	L_vecaccumv_2562
	subi	r2 r2 14
L_cont_18229 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r5 r5 r4
	ldi	r4 r2 0
	jump	L_do_without_neighbors_2878
L_else_18227 : 
	return
L_else_18226 : 
	return
L_try_exploit_neighbors_2894 : 
	add	r10 r7 r4
	ldi	r10 r10 0
	addi	r11 r0 4
	bgt	r9 r11 L_else_18242
	addi	r11 r0 0
	ldi	r12 r10 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bgt	r11 r12 L_else_18243
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
	bne	r12 r11 L_else_18244
	add	r12 r8 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_18246
	addi	r12 r0 1
	sub	r12 r4 r12
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_18248
	addi	r12 r0 1
	add	r12 r4 r12
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_18250
	addi	r11 r0 1
	jump	L_cont_18251
L_else_18250 : 
	addi	r11 r0 0
L_cont_18251 : 
	jump	L_cont_18249
L_else_18248 : 
	addi	r11 r0 0
L_cont_18249 : 
	jump	L_cont_18247
L_else_18246 : 
	addi	r11 r0 0
L_cont_18247 : 
	jump	L_cont_18245
L_else_18244 : 
	addi	r11 r0 0
L_cont_18245 : 
	addi	r12 r0 0
	bne	r11 r12 L_else_18252
	add	r4 r7 r4
	ldi	r4 r4 0
	add	r5 r0 r9
	jump	L_do_without_neighbors_2878
L_else_18252 : 
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
	bne	r10 r11 L_else_18253
	jump	L_cont_18254
L_else_18253 : 
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
	call	L_veccpy_2530
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
	call	L_vecaccumv_2562
	subi	r2 r2 11
L_cont_18254 : 
	addi	r4 r0 1
	ldi	r5 r2 5
	add	r9 r5 r4
	ldi	r4 r2 4
	ldi	r5 r2 3
	ldi	r6 r2 2
	ldi	r7 r2 1
	ldi	r8 r2 0
	jump	L_try_exploit_neighbors_2894
L_else_18243 : 
	return
L_else_18242 : 
	return
L_pretrace_diffuse_rays_2907 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_18257
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	bgt	r7 r6 L_else_18258
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r6 r7 L_else_18259
	jump	L_cont_18260
L_else_18259 : 
	ldi	r6 r4 6
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	addi	r7 r0 4124
	fldi	f2 r0 38
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
	sti	r7 r2 2
	sti	r6 r2 3
	sti	r8 r2 4
	add	r5 r0 r8
	add	r4 r0 r9
	addi	r2 r2 6
	call	L_veccpy_2530
	subi	r2 r2 6
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r5 r4 r5
	ldi	r4 r2 4
	addi	r2 r2 6
	call	L_setup_startp_constants_2758
	subi	r2 r2 6
	addi	r7 r0 118
	ldi	r4 r2 3
	ldi	r5 r2 2
	ldi	r6 r2 4
	addi	r2 r2 6
	call	L_iter_trace_diffuse_rays_2856
	subi	r2 r2 6
	ldi	r4 r2 0
	ldi	r5 r4 5
	ldi	r6 r2 1
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r7 r0 4124
	add	r4 r0 r5
	add	r5 r0 r7
	addi	r2 r2 6
	call	L_veccpy_2530
	subi	r2 r2 6
L_cont_18260 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r5 r5 r4
	ldi	r4 r2 0
	jump	L_pretrace_diffuse_rays_2907
L_else_18258 : 
	return
L_else_18257 : 
	return
L_pretrace_pixels_2910 : 
	addi	r7 r0 0
	bgt	r7 r5 L_else_18263
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
	fldi	f2 r0 38
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
	addi	r2 r2 10
	call	L_veccpy_2530
	subi	r2 r2 10
	addi	r4 r0 0
	fldi	f2 r0 45
	addi	r5 r0 4141
	ldi	r6 r2 7
	ldi	r7 r2 8
	add	r8 r7 r6
	ldi	r8 r8 0
	fldi	f3 r0 38
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
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 10
	call	L_veccpy_2530
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
	call	L_pretrace_diffuse_rays_2907
	subi	r2 r2 10
	addi	r4 r0 1
	ldi	r5 r2 7
	sub	r5 r5 r4
	addi	r4 r0 1
	ldi	r6 r2 6
	add	r4 r6 r4
	addi	r6 r0 5
	bgt	r6 r4 L_else_18264
	addi	r6 r0 5
	sub	r6 r4 r6
	jump	L_cont_18265
L_else_18264 : 
	add	r6 r0 r4
L_cont_18265 : 
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r4 r2 8
	jump	L_pretrace_pixels_2910
L_else_18263 : 
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
	bgt	r9 r4 L_else_18267
	return
L_else_18267 : 
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
	call	L_veccpy_2530
	subi	r2 r2 6
	addi	r4 r0 4130
	addi	r5 r0 1
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	ldi	r6 r2 4
	add	r5 r6 r5
	bgt	r4 r5 L_else_18269
	addi	r4 r0 0
	jump	L_cont_18270
L_else_18269 : 
	addi	r4 r0 0
	bgt	r6 r4 L_else_18271
	addi	r4 r0 0
	jump	L_cont_18272
L_else_18271 : 
	addi	r4 r0 4130
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	ldi	r7 r2 3
	add	r5 r7 r5
	bgt	r4 r5 L_else_18273
	addi	r4 r0 0
	jump	L_cont_18274
L_else_18273 : 
	addi	r4 r0 0
	bgt	r7 r4 L_else_18275
	addi	r4 r0 0
	jump	L_cont_18276
L_else_18275 : 
	addi	r4 r0 1
L_cont_18276 : 
L_cont_18274 : 
L_cont_18272 : 
L_cont_18270 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18277
	ldi	r4 r2 3
	ldi	r5 r2 2
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 0
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_do_without_neighbors_2878
	subi	r2 r2 6
	jump	L_cont_18278
L_else_18277 : 
	addi	r9 r0 0
	ldi	r4 r2 3
	ldi	r5 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 0
	add	r1 r0 r6
	add	r6 r0 r5
	add	r5 r0 r1
	addi	r2 r2 6
	call	L_try_exploit_neighbors_2894
	subi	r2 r2 6
L_cont_18278 : 
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
	jump	L_scan_pixel_2921
L_scan_line_2927 : 
	addi	r9 r0 4130
	addi	r10 r0 1
	add	r9 r9 r10
	ldi	r9 r9 0
	bgt	r9 r4 L_else_18279
	return
L_else_18279 : 
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
	bgt	r9 r4 L_else_18281
	jump	L_cont_18282
L_else_18281 : 
	addi	r9 r0 1
	add	r9 r4 r9
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_pretrace_line_2917
	subi	r2 r2 6
L_cont_18282 : 
	addi	r4 r0 0
	ldi	r5 r2 4
	ldi	r6 r2 3
	ldi	r7 r2 2
	ldi	r8 r2 1
	addi	r2 r2 6
	call	L_scan_pixel_2921
	subi	r2 r2 6
	addi	r4 r0 1
	ldi	r5 r2 4
	add	r4 r5 r4
	addi	r5 r0 2
	ldi	r6 r2 0
	add	r5 r6 r5
	addi	r6 r0 5
	bgt	r6 r5 L_else_18283
	addi	r6 r0 5
	sub	r8 r5 r6
	jump	L_cont_18284
L_else_18283 : 
	add	r8 r0 r5
L_cont_18284 : 
	ldi	r5 r2 2
	ldi	r6 r2 1
	ldi	r7 r2 3
	jump	L_scan_line_2927
L_create_pixel_2935 : 
	addi	r4 r0 3
	fldi	f2 r0 38
	addi	r2 r2 1
	call	min_caml_create_float_array
	subi	r2 r2 1
	addi	r5 r0 3
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	bgt	r6 r5 L_else_18285
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 3
	call	L_create_pixel_2935
	subi	r2 r2 3
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_18286
	sti	r4 r2 2
	addi	r2 r2 4
	call	L_create_pixel_2935
	subi	r2 r2 4
	ldi	r5 r2 2
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	jump	L_init_line_elements_2937
L_else_18286 : 
	add	r4 r0 r6
	return
L_else_18285 : 
	add	r4 r0 r4
	return
L_calc_dirvec_2947 : 
	addi	r7 r0 5
	bgt	r7 r4 L_else_18287
	fmul	f4 f2 f2
	fmul	f5 f3 f3
	fadd	f4 f4 f5
	fldi	f5 r0 45
	fadd	f4 f4 f5
	fldi	f5 r0 28
	fldi	f6 r0 45
	fbgt	f4 f6 L_else_18288
	fldi	f6 r0 45
	jump	L_cont_18289
L_else_18288 : 
	fldi	f6 r0 45
	fdiv	f6 f6 f4
L_cont_18289 : 
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
	fldi	f5 r0 45
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
L_else_18287 : 
	fmul	f2 f3 f3
	fldi	f3 r0 7
	fadd	f2 f2 f3
	fldi	f3 r0 28
	fldi	f6 r0 45
	fbgt	f2 f6 L_else_18291
	fldi	f6 r0 45
	jump	L_cont_18292
L_else_18291 : 
	fldi	f6 r0 45
	fdiv	f6 f6 f2
L_cont_18292 : 
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f5 r2 8
	sti	r4 r2 10
	fsti	f4 r2 12
	fsti	f2 r2 14
	fadd	f4 f0 f6
	addi	r2 r2 17
	call	L_isqrt_2499
	subi	r2 r2 17
	fldi	f3 r2 14
	fmul	f2 f3 f2
	fldi	f3 r0 45
	fdiv	f3 f3 f2
	fsti	f2 r2 16
	fadd	f2 f0 f3
	addi	r2 r2 19
	call	L_atan_2497
	subi	r2 r2 19
	fldi	f3 r2 12
	fmul	f2 f2 f3
	fsti	f2 r2 18
	addi	r2 r2 21
	call	L_sin_2493
	subi	r2 r2 21
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
	fldi	f5 r0 45
	fbgt	f3 f5 L_else_18294
	fldi	f5 r0 45
	jump	L_cont_18295
L_else_18294 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f3
L_cont_18295 : 
	fsti	f2 r2 22
	sti	r4 r2 24
	fsti	f3 r2 26
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 29
	call	L_isqrt_2499
	subi	r2 r2 29
	fldi	f3 r2 26
	fmul	f2 f3 f2
	fldi	f3 r0 45
	fdiv	f3 f3 f2
	fsti	f2 r2 28
	fadd	f2 f0 f3
	addi	r2 r2 31
	call	L_atan_2497
	subi	r2 r2 31
	fldi	f3 r2 8
	fmul	f2 f2 f3
	fsti	f2 r2 30
	addi	r2 r2 33
	call	L_sin_2493
	subi	r2 r2 33
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
	bgt	r7 r4 L_else_18297
	foi	f3 r4
	fldi	f4 r0 4
	fmul	f3 f3 f4
	fldi	f4 r0 3
	fsub	f4 f3 f4
	addi	r7 r0 0
	fldi	f3 r0 38
	fldi	f5 r0 38
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
	fldi	f2 r0 38
	fldi	f3 r0 38
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
	bgt	r6 r5 L_else_18298
	addi	r6 r0 5
	sub	r5 r5 r6
	jump	L_cont_18299
L_else_18298 : 
	add	r5 r0 r5
L_cont_18299 : 
	fldi	f2 r2 0
	ldi	r6 r2 3
	jump	L_calc_dirvecs_2955
L_else_18297 : 
	return
L_calc_dirvec_rows_2960 : 
	addi	r7 r0 0
	bgt	r7 r4 L_else_18301
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
	bgt	r6 r5 L_else_18302
	addi	r6 r0 5
	sub	r5 r5 r6
	jump	L_cont_18303
L_else_18302 : 
	add	r5 r0 r5
L_cont_18303 : 
	addi	r6 r0 4
	ldi	r7 r2 0
	add	r6 r7 r6
	jump	L_calc_dirvec_rows_2960
L_else_18301 : 
	return
L_create_dirvec_elements_2966 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_18305
	addi	r6 r0 3
	fldi	f2 r0 38
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
	bgt	r5 r4 L_else_18306
	addi	r5 r0 3
	fldi	f2 r0 38
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
	sub	r5 r5 r4
	add	r4 r0 r6
	jump	L_create_dirvec_elements_2966
L_else_18306 : 
	return
L_else_18305 : 
	return
L_create_dirvecs_2969 : 
	addi	r5 r0 0
	bgt	r5 r4 L_else_18309
	addi	r5 r0 4148
	addi	r6 r0 120
	addi	r7 r0 3
	fldi	f2 r0 38
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
	fldi	f2 r0 38
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
	addi	r5 r0 117
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_create_dirvec_elements_2966
	subi	r2 r2 8
	addi	r4 r0 1
	ldi	r5 r2 0
	sub	r4 r5 r4
	jump	L_create_dirvecs_2969
L_else_18309 : 
	return
L_init_dirvec_constants_2971 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_18311
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
	bgt	r5 r4 L_else_18312
	ldi	r5 r2 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 4144
	addi	r8 r0 0
	add	r7 r7 r8
	ldi	r7 r7 0
	addi	r8 r0 1
	sub	r7 r7 r8
	sti	r4 r2 2
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 4
	addi	r4 r0 1
	ldi	r5 r2 2
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_init_dirvec_constants_2971
L_else_18312 : 
	return
L_else_18311 : 
	return
L_init_vecset_constants_2974 : 
	addi	r5 r0 0
	bgt	r5 r4 L_else_18315
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
	sti	r4 r2 0
	sti	r5 r2 1
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 3
	addi	r5 r0 118
	ldi	r4 r2 1
	addi	r2 r2 3
	call	L_init_dirvec_constants_2971
	subi	r2 r2 3
	addi	r4 r0 1
	ldi	r5 r2 0
	sub	r4 r5 r4
	addi	r5 r0 0
	bgt	r5 r4 L_else_18316
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	sti	r4 r2 2
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 4
	call	L_init_dirvec_constants_2971
	subi	r2 r2 4
	addi	r4 r0 1
	ldi	r5 r2 2
	sub	r4 r5 r4
	jump	L_init_vecset_constants_2974
L_else_18316 : 
	return
L_else_18315 : 
	return
L_main_17554 : 
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
	call	L_create_pixel_2935
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
	addi	r6 r0 0
	bgt	r6 r5 L_else_17555
	sti	r5 r2 1
	sti	r4 r2 2
	addi	r2 r2 4
	call	L_create_pixel_2935
	subi	r2 r2 4
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_init_line_elements_2937
	subi	r2 r2 4
	jump	L_cont_17556
L_else_17555 : 
	add	r4 r0 r4
L_cont_17556 : 
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	sti	r4 r2 3
	sti	r5 r2 4
	addi	r2 r2 6
	call	L_create_pixel_2935
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
	addi	r6 r0 0
	bgt	r6 r5 L_else_17557
	sti	r5 r2 5
	sti	r4 r2 6
	addi	r2 r2 8
	call	L_create_pixel_2935
	subi	r2 r2 8
	ldi	r5 r2 5
	ldi	r6 r2 6
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_init_line_elements_2937
	subi	r2 r2 8
	jump	L_cont_17558
L_else_17557 : 
	add	r4 r0 r4
L_cont_17558 : 
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	sti	r4 r2 7
	sti	r5 r2 8
	addi	r2 r2 10
	call	L_create_pixel_2935
	subi	r2 r2 10
	add	r5 r0 r4
	ldi	r4 r2 8
	addi	r2 r2 10
	call	min_caml_create_array
	subi	r2 r2 10
	addi	r5 r0 4130
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 2
	sub	r5 r5 r6
	addi	r6 r0 0
	bgt	r6 r5 L_else_17559
	sti	r5 r2 9
	sti	r4 r2 10
	addi	r2 r2 12
	call	L_create_pixel_2935
	subi	r2 r2 12
	ldi	r5 r2 9
	ldi	r6 r2 10
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r4 r0 1
	sub	r5 r5 r4
	add	r4 r0 r6
	addi	r2 r2 12
	call	L_init_line_elements_2937
	subi	r2 r2 12
	jump	L_cont_17560
L_else_17559 : 
	add	r4 r0 r4
L_cont_17560 : 
	addi	r5 r0 4096
	addi	r6 r0 0
	sti	r4 r2 11
	sti	r6 r2 12
	sti	r5 r2 13
	addi	r2 r2 15
	call	min_caml_read_float
	subi	r2 r2 15
	ldi	r4 r2 12
	ldi	r5 r2 13
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 4096
	addi	r5 r0 1
	sti	r5 r2 14
	sti	r4 r2 15
	addi	r2 r2 17
	call	min_caml_read_float
	subi	r2 r2 17
	ldi	r4 r2 14
	ldi	r5 r2 15
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 4096
	addi	r5 r0 2
	sti	r5 r2 16
	sti	r4 r2 17
	addi	r2 r2 19
	call	min_caml_read_float
	subi	r2 r2 19
	ldi	r4 r2 16
	ldi	r5 r2 17
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r2 r2 19
	call	min_caml_read_float
	subi	r2 r2 19
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 18
	addi	r2 r2 21
	call	L_cos_2495
	subi	r2 r2 21
	fldi	f3 r2 18
	fsti	f2 r2 20
	fadd	f2 f0 f3
	addi	r2 r2 23
	call	L_sin_2493
	subi	r2 r2 23
	fsti	f2 r2 22
	addi	r2 r2 25
	call	min_caml_read_float
	subi	r2 r2 25
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 24
	addi	r2 r2 27
	call	L_cos_2495
	subi	r2 r2 27
	fldi	f3 r2 24
	fsti	f2 r2 26
	fadd	f2 f0 f3
	addi	r2 r2 29
	call	L_sin_2493
	subi	r2 r2 29
	addi	r4 r0 4099
	addi	r5 r0 0
	fldi	f3 r2 20
	fmul	f4 f3 f2
	fldi	f5 r0 1
	fmul	f4 f4 f5
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 4099
	addi	r5 r0 1
	fldi	f4 r0 0
	fldi	f5 r2 22
	fmul	f4 f5 f4
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 4099
	addi	r5 r0 2
	fldi	f4 r2 26
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
	fldi	f6 r0 38
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
	addi	r2 r2 29
	call	min_caml_read_int
	subi	r2 r2 29
	addi	r2 r2 29
	call	min_caml_read_float
	subi	r2 r2 29
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fsti	f2 r2 28
	addi	r2 r2 31
	call	L_sin_2493
	subi	r2 r2 31
	addi	r4 r0 4111
	addi	r5 r0 1
	fsub	f2 f0 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r2 r2 31
	call	min_caml_read_float
	subi	r2 r2 31
	fldi	f3 r0 26
	fmul	f2 f2 f3
	fldi	f3 r2 28
	fsti	f2 r2 30
	fadd	f2 f0 f3
	addi	r2 r2 33
	call	L_cos_2495
	subi	r2 r2 33
	fldi	f3 r2 30
	fsti	f2 r2 32
	fadd	f2 f0 f3
	addi	r2 r2 35
	call	L_sin_2493
	subi	r2 r2 35
	addi	r4 r0 4111
	addi	r5 r0 0
	fldi	f3 r2 32
	fmul	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	fldi	f2 r2 30
	addi	r2 r2 35
	call	L_cos_2495
	subi	r2 r2 35
	addi	r4 r0 4111
	addi	r5 r0 2
	fldi	f3 r2 32
	fmul	f2 f3 f2
	add	r4 r4 r5
	fsti	f2 r4 0
	addi	r4 r0 4153
	addi	r5 r0 0
	sti	r5 r2 34
	sti	r4 r2 35
	addi	r2 r2 37
	call	min_caml_read_float
	subi	r2 r2 37
	ldi	r4 r2 34
	ldi	r5 r2 35
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 0
	addi	r2 r2 37
	call	L_read_object_2648
	subi	r2 r2 37
	addi	r4 r0 0
	addi	r2 r2 37
	call	L_read_and_network_2656
	subi	r2 r2 37
	addi	r4 r0 4255
	addi	r5 r0 0
	addi	r6 r0 0
	sti	r5 r2 36
	sti	r4 r2 37
	add	r4 r0 r6
	addi	r2 r2 39
	call	L_read_or_network_2654
	subi	r2 r2 39
	ldi	r5 r2 36
	ldi	r6 r2 37
	add	r5 r6 r5
	sti	r4 r5 0
	addi	r4 r0 80
	addi	r2 r2 39
	call	min_caml_print_char
	subi	r2 r2 39
	addi	r4 r0 54
	addi	r2 r2 39
	call	min_caml_print_char
	subi	r2 r2 39
	addi	r4 r0 10
	addi	r2 r2 39
	call	min_caml_print_char
	subi	r2 r2 39
	addi	r4 r0 4130
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	sti	r4 r2 38
	bgt	r5 r6 L_else_17561
	addi	r5 r0 10
	sub	r5 r4 r5
	addi	r6 r0 1
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17562
L_else_17561 : 
	addi	r4 r0 0
L_cont_17562 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_17563
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17564
L_else_17563 : 
	addi	r4 r0 0
L_cont_17564 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 40
	call	min_caml_print_char
	subi	r2 r2 40
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 38
	sub	r5 r6 r5
	bgt	r4 r5 L_else_17565
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 1
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17566
L_else_17565 : 
	addi	r4 r0 0
L_cont_17566 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_17567
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17568
L_else_17567 : 
	addi	r4 r0 0
L_cont_17568 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 38
	sub	r4 r5 r4
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_17569
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r0 r6
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17570
L_else_17569 : 
	addi	r4 r0 0
L_cont_17570 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 40
	call	min_caml_print_char
	subi	r2 r2 40
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 38
	sub	r5 r6 r5
	bgt	r4 r5 L_else_17571
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 1
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17572
L_else_17571 : 
	addi	r4 r0 0
L_cont_17572 : 
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 38
	sub	r4 r5 r4
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 40
	call	min_caml_print_char
	subi	r2 r2 40
	addi	r4 r0 32
	addi	r2 r2 40
	call	min_caml_print_char
	subi	r2 r2 40
	addi	r4 r0 4130
	addi	r5 r0 1
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	sti	r4 r2 39
	bgt	r5 r6 L_else_17573
	addi	r5 r0 10
	sub	r5 r4 r5
	addi	r6 r0 1
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17574
L_else_17573 : 
	addi	r4 r0 0
L_cont_17574 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_17575
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17576
L_else_17575 : 
	addi	r4 r0 0
L_cont_17576 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 41
	call	min_caml_print_char
	subi	r2 r2 41
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 39
	sub	r5 r6 r5
	bgt	r4 r5 L_else_17577
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 1
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17578
L_else_17577 : 
	addi	r4 r0 0
L_cont_17578 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_17579
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17580
L_else_17579 : 
	addi	r4 r0 0
L_cont_17580 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 39
	sub	r4 r5 r4
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_17581
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r0 r6
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17582
L_else_17581 : 
	addi	r4 r0 0
L_cont_17582 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 41
	call	min_caml_print_char
	subi	r2 r2 41
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 39
	sub	r5 r6 r5
	bgt	r4 r5 L_else_17583
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 1
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17584
L_else_17583 : 
	addi	r4 r0 0
L_cont_17584 : 
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 39
	sub	r4 r5 r4
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 41
	call	min_caml_print_char
	subi	r2 r2 41
	addi	r4 r0 32
	addi	r2 r2 41
	call	min_caml_print_char
	subi	r2 r2 41
	addi	r4 r0 255
	addi	r5 r0 245
	addi	r6 r0 1
	sti	r4 r2 40
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 42
	call	L_sdiv10_2505
	subi	r2 r2 42
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_17585
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 42
	call	L_sdiv10_2505
	subi	r2 r2 42
	jump	L_cont_17586
L_else_17585 : 
	addi	r4 r0 0
L_cont_17586 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 42
	call	min_caml_print_char
	subi	r2 r2 42
	addi	r4 r0 245
	addi	r5 r0 1
	addi	r2 r2 42
	call	L_sdiv10_2505
	subi	r2 r2 42
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_17587
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 42
	call	L_sdiv10_2505
	subi	r2 r2 42
	jump	L_cont_17588
L_else_17587 : 
	addi	r4 r0 0
L_cont_17588 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 40
	sub	r4 r5 r4
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_17589
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r0 r6
	addi	r2 r2 42
	call	L_sdiv10_2505
	subi	r2 r2 42
	jump	L_cont_17590
L_else_17589 : 
	addi	r4 r0 0
L_cont_17590 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 42
	call	min_caml_print_char
	subi	r2 r2 42
	addi	r4 r0 245
	addi	r5 r0 1
	addi	r2 r2 42
	call	L_sdiv10_2505
	subi	r2 r2 42
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 40
	sub	r4 r5 r4
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 42
	call	min_caml_print_char
	subi	r2 r2 42
	addi	r4 r0 10
	addi	r2 r2 42
	call	min_caml_print_char
	subi	r2 r2 42
	addi	r4 r0 4
	addi	r2 r2 42
	call	L_create_dirvecs_2969
	subi	r2 r2 42
	addi	r4 r0 9
	addi	r5 r0 0
	addi	r6 r0 0
	addi	r2 r2 42
	call	L_calc_dirvec_rows_2960
	subi	r2 r2 42
	addi	r4 r0 4
	addi	r5 r0 4148
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r5 r0 119
	addi	r2 r2 42
	call	L_init_dirvec_constants_2971
	subi	r2 r2 42
	addi	r4 r0 3
	addi	r2 r2 42
	call	L_init_vecset_constants_2974
	subi	r2 r2 42
	addi	r4 r0 4977
	ldi	r4 r4 0
	addi	r5 r0 4111
	addi	r2 r2 42
	call	L_veccpy_2530
	subi	r2 r2 42
	addi	r4 r0 4977
	addi	r5 r0 4144
	addi	r6 r0 0
	add	r5 r5 r6
	ldi	r5 r5 0
	addi	r6 r0 1
	sub	r5 r5 r6
	addi	r2 r2 42
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 42
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	sub	r4 r4 r5
	addi	r5 r0 0
	bgt	r5 r4 L_else_17591
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r5 2
	addi	r7 r0 2
	bne	r6 r7 L_else_17593
	ldi	r6 r5 7
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f2 r6 0
	fldi	f3 r0 45
	fbgt	f3 f2 L_else_17595
	addi	r6 r0 0
	jump	L_cont_17596
L_else_17595 : 
	addi	r6 r0 1
L_cont_17596 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17597
	jump	L_cont_17598
L_else_17597 : 
	ldi	r6 r5 1
	addi	r7 r0 1
	bne	r6 r7 L_else_17599
	addi	r6 r0 4
	mul	r4 r4 r6
	addi	r6 r0 4147
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	fldi	f2 r0 45
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
	fldi	f7 r0 38
	fsti	f3 r2 42
	sti	r4 r2 44
	sti	r6 r2 45
	sti	r5 r2 46
	fsti	f2 r2 48
	fsti	f5 r2 50
	fsti	f4 r2 52
	fsti	f6 r2 54
	add	r4 r0 r7
	fadd	f2 f0 f7
	addi	r2 r2 57
	call	min_caml_create_float_array
	subi	r2 r2 57
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 56
	addi	r2 r2 58
	call	min_caml_create_array
	subi	r2 r2 58
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 56
	sti	r4 r5 0
	add	r5 r0 r5
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f2 r2 54
	fsti	f2 r6 0
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f2 r2 52
	fsti	f2 r6 0
	addi	r6 r0 2
	add	r4 r4 r6
	fldi	f3 r2 50
	fsti	f3 r4 0
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 1
	sub	r4 r4 r6
	sti	r5 r2 57
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 59
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 59
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 48
	fsti	f2 r5 2
	ldi	r6 r2 57
	sti	r6 r5 1
	ldi	r6 r2 46
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 45
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 1
	add	r4 r6 r4
	addi	r5 r0 2
	ldi	r7 r2 44
	add	r5 r7 r5
	addi	r8 r0 4111
	addi	r9 r0 1
	add	r8 r8 r9
	fldi	f3 r8 0
	addi	r8 r0 3
	fldi	f4 r0 38
	sti	r4 r2 58
	sti	r5 r2 59
	fsti	f3 r2 60
	add	r4 r0 r8
	fadd	f2 f0 f4
	addi	r2 r2 63
	call	min_caml_create_float_array
	subi	r2 r2 63
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 62
	addi	r2 r2 64
	call	min_caml_create_array
	subi	r2 r2 64
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 62
	sti	r4 r5 0
	add	r5 r0 r5
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f2 r2 42
	fsti	f2 r6 0
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f3 r2 60
	fsti	f3 r6 0
	addi	r6 r0 2
	add	r4 r4 r6
	fldi	f3 r2 50
	fsti	f3 r4 0
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 1
	sub	r4 r4 r6
	sti	r5 r2 63
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 65
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 65
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 48
	fsti	f2 r5 2
	ldi	r6 r2 63
	sti	r6 r5 1
	ldi	r6 r2 59
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 58
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 2
	ldi	r5 r2 45
	add	r4 r5 r4
	addi	r6 r0 3
	ldi	r7 r2 44
	add	r6 r7 r6
	addi	r7 r0 4111
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f3 r7 0
	addi	r7 r0 3
	fldi	f4 r0 38
	sti	r4 r2 64
	sti	r6 r2 65
	fsti	f3 r2 66
	add	r4 r0 r7
	fadd	f2 f0 f4
	addi	r2 r2 69
	call	min_caml_create_float_array
	subi	r2 r2 69
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 68
	addi	r2 r2 70
	call	min_caml_create_array
	subi	r2 r2 70
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 68
	sti	r4 r5 0
	add	r5 r0 r5
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f2 r2 42
	fsti	f2 r6 0
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f2 r2 52
	fsti	f2 r6 0
	addi	r6 r0 2
	add	r4 r4 r6
	fldi	f2 r2 66
	fsti	f2 r4 0
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 1
	sub	r4 r4 r6
	sti	r5 r2 69
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 71
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 71
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 48
	fsti	f2 r5 2
	ldi	r6 r2 69
	sti	r6 r5 1
	ldi	r6 r2 65
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 64
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 4147
	addi	r5 r0 0
	addi	r6 r0 3
	ldi	r7 r2 45
	add	r6 r7 r6
	add	r4 r4 r5
	sti	r6 r4 0
	jump	L_cont_17600
L_else_17599 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_17603
	addi	r6 r0 4
	mul	r4 r4 r6
	addi	r6 r0 1
	add	r4 r4 r6
	addi	r6 r0 4147
	addi	r7 r0 0
	add	r6 r6 r7
	ldi	r6 r6 0
	fldi	f2 r0 45
	ldi	r7 r5 7
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f3 r7 0
	fsub	f2 f2 f3
	addi	r7 r0 4111
	ldi	r8 r5 4
	sti	r6 r2 70
	sti	r4 r2 71
	fsti	f2 r2 72
	sti	r5 r2 74
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 76
	call	L_veciprod_2541
	subi	r2 r2 76
	fldi	f3 r0 28
	ldi	r4 r2 74
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
	addi	r4 r0 3
	fldi	f5 r0 38
	fsti	f2 r2 76
	fsti	f4 r2 78
	fsti	f3 r2 80
	fadd	f2 f0 f5
	addi	r2 r2 83
	call	min_caml_create_float_array
	subi	r2 r2 83
	add	r5 r0 r4
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	sti	r5 r2 82
	addi	r2 r2 84
	call	min_caml_create_array
	subi	r2 r2 84
	add	r5 r0 r3
	addi	r3 r3 2
	sti	r4 r5 1
	ldi	r4 r2 82
	sti	r4 r5 0
	add	r5 r0 r5
	addi	r6 r0 0
	add	r6 r4 r6
	fldi	f2 r2 80
	fsti	f2 r6 0
	addi	r6 r0 1
	add	r6 r4 r6
	fldi	f2 r2 78
	fsti	f2 r6 0
	addi	r6 r0 2
	add	r4 r4 r6
	fldi	f2 r2 76
	fsti	f2 r4 0
	addi	r4 r0 4144
	addi	r6 r0 0
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r6 r0 1
	sub	r4 r4 r6
	sti	r5 r2 83
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 85
	call	L_iter_setup_dirvec_constants_2753
	subi	r2 r2 85
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 72
	fsti	f2 r5 2
	ldi	r6 r2 83
	sti	r6 r5 1
	ldi	r6 r2 71
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 70
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 4147
	addi	r5 r0 0
	addi	r7 r0 1
	add	r6 r6 r7
	add	r4 r4 r5
	sti	r6 r4 0
	jump	L_cont_17604
L_else_17603 : 
L_cont_17604 : 
L_cont_17600 : 
L_cont_17598 : 
	jump	L_cont_17594
L_else_17593 : 
L_cont_17594 : 
	jump	L_cont_17592
L_else_17591 : 
L_cont_17592 : 
	addi	r5 r0 0
	addi	r6 r0 0
	ldi	r4 r2 7
	addi	r2 r2 85
	call	L_pretrace_line_2917
	subi	r2 r2 85
	addi	r4 r0 0
	addi	r8 r0 2
	ldi	r5 r2 3
	ldi	r6 r2 7
	ldi	r7 r2 11
	addi	r2 r2 85
	call	L_scan_line_2927
	subi	r2 r2 85
	addi	r4 r0 0
