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
	jump	L_main_17562
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
	bne	r5 r0 L_else_17616
	return
L_else_17616 : 
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
	bne	r5 r0 L_else_17618
	return
L_else_17618 : 
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
	fbgt	f2 f4 L_else_17620
	fldi	f5 r0 42
	fbgt	f5 f2 L_else_17621
	fldi	f3 r0 41
	fldi	f5 r0 40
	fldi	f6 r0 39
	fldi	f7 r0 38
	fbgt	f2 f7 L_else_17622
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_17623
	jump	L_psin_2489
L_else_17623 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_17624
	fadd	f2 f5 f2
	addi	r2 r2 1
	call	L_pcos_2491
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_17624 : 
	fadd	f2 f4 f2
	addi	r2 r2 1
	call	L_psin_2489
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_17622 : 
	fbgt	f2 f3 L_else_17625
	jump	L_psin_2489
L_else_17625 : 
	fbgt	f2 f6 L_else_17626
	fsub	f2 f2 f5
	jump	L_pcos_2491
L_else_17626 : 
	fsub	f2 f4 f2
	jump	L_psin_2489
L_else_17621 : 
	fadd	f2 f2 f3
	jump	L_sin_2493
L_else_17620 : 
	fsub	f2 f2 f3
	jump	L_sin_2493
L_cos_2495 : 
	fldi	f3 r0 44
	fldi	f4 r0 43
	fbgt	f2 f4 L_else_17627
	fldi	f5 r0 42
	fbgt	f5 f2 L_else_17628
	fldi	f3 r0 41
	fldi	f5 r0 40
	fldi	f6 r0 39
	fldi	f7 r0 38
	fbgt	f2 f7 L_else_17629
	fldi	f3 r0 37
	fbgt	f3 f2 L_else_17630
	jump	L_pcos_2491
L_else_17630 : 
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_17631
	fadd	f2 f2 f5
	jump	L_psin_2489
L_else_17631 : 
	fadd	f2 f4 f2
	addi	r2 r2 1
	call	L_pcos_2491
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_17629 : 
	fbgt	f2 f3 L_else_17632
	jump	L_pcos_2491
L_else_17632 : 
	fbgt	f2 f6 L_else_17633
	fsub	f2 f2 f5
	addi	r2 r2 1
	call	L_psin_2489
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_17633 : 
	fsub	f2 f4 f2
	addi	r2 r2 1
	call	L_pcos_2491
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_17628 : 
	fadd	f2 f2 f3
	jump	L_cos_2495
L_else_17627 : 
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
	fbgt	f6 f3 L_else_17634
	fadd	f3 f0 f3
	jump	L_cont_17635
L_else_17634 : 
	fsub	f3 f0 f3
L_cont_17635 : 
	fbgt	f5 f3 L_else_17636
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
L_else_17636 : 
	fadd	f2 f0 f4
	return
L_sdiv10_2505 : 
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_17637
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r5 r6
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_17638
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r5 r6
	jump	L_sdiv10_2505
L_else_17638 : 
	add	r4 r0 r5
	return
L_else_17637 : 
	add	r4 r0 r5
	return
L_sgn_2512 : 
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17639
	addi	r4 r0 1
	jump	L_cont_17640
L_else_17639 : 
	addi	r4 r0 0
L_cont_17640 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17641
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_17642
	addi	r4 r0 0
	jump	L_cont_17643
L_else_17642 : 
	addi	r4 r0 1
L_cont_17643 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17644
	fldi	f2 r0 27
	return
L_else_17644 : 
	fldi	f2 r0 45
	return
L_else_17641 : 
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
	fbgt	f2 f4 L_else_17646
	fldi	f4 r0 45
	jump	L_cont_17647
L_else_17646 : 
	fldi	f4 r0 45
	fdiv	f4 f4 f2
L_cont_17647 : 
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f2 r2 2
	addi	r2 r2 5
	call	L_isqrt_2499
	subi	r2 r2 5
	fldi	f3 r2 2
	fmul	f2 f3 f2
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17648
	addi	r4 r0 1
	jump	L_cont_17649
L_else_17648 : 
	addi	r4 r0 0
L_cont_17649 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17650
	addi	r4 r0 0
	ldi	r5 r2 1
	bne	r5 r4 L_else_17652
	fldi	f3 r0 45
	fdiv	f2 f3 f2
	jump	L_cont_17653
L_else_17652 : 
	fldi	f3 r0 27
	fdiv	f2 f3 f2
L_cont_17653 : 
	jump	L_cont_17651
L_else_17650 : 
	fldi	f2 r0 45
L_cont_17651 : 
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
	bgt	r5 r4 L_else_17657
	return
L_else_17657 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_17659
	addi	r4 r0 0
	jump	L_cont_17660
L_else_17659 : 
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
	fbgt	f3 f2 L_else_17661
	addi	r4 r0 0
	jump	L_cont_17662
L_else_17661 : 
	addi	r4 r0 1
L_cont_17662 : 
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
	bne	r6 r5 L_else_17663
	jump	L_cont_17664
L_else_17663 : 
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
L_cont_17664 : 
	addi	r4 r0 2
	ldi	r5 r2 2
	bne	r5 r4 L_else_17665
	addi	r4 r0 1
	jump	L_cont_17666
L_else_17665 : 
	ldi	r4 r2 13
	add	r4 r0 r4
L_cont_17666 : 
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
	bne	r8 r5 L_else_17667
	addi	r5 r0 0
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 0
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17669
	addi	r8 r0 1
	jump	L_cont_17670
L_else_17669 : 
	addi	r8 r0 0
L_cont_17670 : 
	addi	r9 r0 0
	sti	r5 r2 26
	bne	r8 r9 L_else_17671
	fsti	f2 r2 28
	addi	r2 r2 31
	call	L_sgn_2512
	subi	r2 r2 31
	fldi	f3 r2 28
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_17672
L_else_17671 : 
	fldi	f2 r0 38
L_cont_17672 : 
	ldi	r4 r2 26
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 1
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r4 r0 1
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17674
	addi	r6 r0 1
	jump	L_cont_17675
L_else_17674 : 
	addi	r6 r0 0
L_cont_17675 : 
	addi	r7 r0 0
	sti	r4 r2 30
	bne	r6 r7 L_else_17676
	fsti	f2 r2 32
	addi	r2 r2 35
	call	L_sgn_2512
	subi	r2 r2 35
	fldi	f3 r2 32
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_17677
L_else_17676 : 
	fldi	f2 r0 38
L_cont_17677 : 
	ldi	r4 r2 30
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	addi	r4 r0 2
	add	r4 r5 r4
	fldi	f2 r4 0
	addi	r4 r0 2
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17679
	addi	r6 r0 1
	jump	L_cont_17680
L_else_17679 : 
	addi	r6 r0 0
L_cont_17680 : 
	addi	r7 r0 0
	sti	r4 r2 34
	bne	r6 r7 L_else_17681
	fsti	f2 r2 36
	addi	r2 r2 39
	call	L_sgn_2512
	subi	r2 r2 39
	fldi	f3 r2 36
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
	jump	L_cont_17682
L_else_17681 : 
	fldi	f2 r0 38
L_cont_17682 : 
	ldi	r4 r2 34
	ldi	r5 r2 6
	add	r4 r5 r4
	fsti	f2 r4 0
	jump	L_cont_17668
L_else_17667 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_17684
	addi	r5 r0 1
	ldi	r8 r2 13
	sub	r5 r5 r8
	add	r4 r0 r6
	addi	r2 r2 39
	call	L_vecunit_sgn_2538
	subi	r2 r2 39
	jump	L_cont_17685
L_else_17684 : 
L_cont_17685 : 
L_cont_17668 : 
	addi	r4 r0 0
	ldi	r5 r2 4
	bne	r5 r4 L_else_17686
	jump	L_cont_17687
L_else_17686 : 
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
L_cont_17687 : 
	addi	r4 r0 1
L_cont_17660 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17688
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 0
	sti	r5 r4 0
	return
L_else_17688 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	addi	r5 r0 60
	bgt	r5 r4 L_else_17690
	return
L_else_17690 : 
	sti	r4 r2 48
	addi	r2 r2 50
	call	min_caml_read_int
	subi	r2 r2 50
	addi	r5 r0 -1
	bne	r4 r5 L_else_17692
	addi	r4 r0 0
	jump	L_cont_17693
L_else_17692 : 
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
	fbgt	f3 f2 L_else_17694
	addi	r4 r0 0
	jump	L_cont_17695
L_else_17694 : 
	addi	r4 r0 1
L_cont_17695 : 
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
	bne	r6 r5 L_else_17696
	jump	L_cont_17697
L_else_17696 : 
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
L_cont_17697 : 
	addi	r4 r0 2
	ldi	r5 r2 50
	bne	r5 r4 L_else_17698
	addi	r4 r0 1
	jump	L_cont_17699
L_else_17698 : 
	ldi	r4 r2 61
	add	r4 r0 r4
L_cont_17699 : 
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
	bne	r8 r5 L_else_17700
	addi	r5 r0 0
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 0
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17702
	addi	r8 r0 1
	jump	L_cont_17703
L_else_17702 : 
	addi	r8 r0 0
L_cont_17703 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17704
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
	fbgt	f2 f3 L_else_17710
	addi	r8 r0 0
	jump	L_cont_17711
L_else_17710 : 
	addi	r8 r0 1
L_cont_17711 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17712
	fldi	f3 r0 27
	jump	L_cont_17713
L_else_17712 : 
	fldi	f3 r0 45
L_cont_17713 : 
	jump	L_cont_17709
L_else_17708 : 
	fldi	f3 r0 38
L_cont_17709 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_17705
L_else_17704 : 
	fldi	f2 r0 38
L_cont_17705 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	addi	r5 r0 1
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 1
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17714
	addi	r8 r0 1
	jump	L_cont_17715
L_else_17714 : 
	addi	r8 r0 0
L_cont_17715 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17716
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
	fbgt	f2 f3 L_else_17722
	addi	r8 r0 0
	jump	L_cont_17723
L_else_17722 : 
	addi	r8 r0 1
L_cont_17723 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17724
	fldi	f3 r0 27
	jump	L_cont_17725
L_else_17724 : 
	fldi	f3 r0 45
L_cont_17725 : 
	jump	L_cont_17721
L_else_17720 : 
	fldi	f3 r0 38
L_cont_17721 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_17717
L_else_17716 : 
	fldi	f2 r0 38
L_cont_17717 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f2 r5 0
	addi	r5 r0 2
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17726
	addi	r8 r0 1
	jump	L_cont_17727
L_else_17726 : 
	addi	r8 r0 0
L_cont_17727 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17728
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17730
	addi	r8 r0 1
	jump	L_cont_17731
L_else_17730 : 
	addi	r8 r0 0
L_cont_17731 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17732
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_17734
	addi	r8 r0 0
	jump	L_cont_17735
L_else_17734 : 
	addi	r8 r0 1
L_cont_17735 : 
	addi	r9 r0 0
	bne	r8 r9 L_else_17736
	fldi	f3 r0 27
	jump	L_cont_17737
L_else_17736 : 
	fldi	f3 r0 45
L_cont_17737 : 
	jump	L_cont_17733
L_else_17732 : 
	fldi	f3 r0 38
L_cont_17733 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
	jump	L_cont_17729
L_else_17728 : 
	fldi	f2 r0 38
L_cont_17729 : 
	add	r5 r6 r5
	fsti	f2 r5 0
	jump	L_cont_17701
L_else_17700 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_17738
	addi	r5 r0 1
	ldi	r8 r2 61
	sub	r5 r5 r8
	add	r4 r0 r6
	addi	r2 r2 75
	call	L_vecunit_sgn_2538
	subi	r2 r2 75
	jump	L_cont_17739
L_else_17738 : 
L_cont_17739 : 
L_cont_17701 : 
	addi	r4 r0 0
	ldi	r5 r2 52
	bne	r5 r4 L_else_17740
	jump	L_cont_17741
L_else_17740 : 
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
L_cont_17741 : 
	addi	r4 r0 1
L_cont_17693 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17742
	addi	r4 r0 4144
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r5 r2 48
	sti	r5 r4 0
	return
L_else_17742 : 
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
	bne	r4 r5 L_else_17744
	addi	r4 r0 1
	ldi	r5 r2 0
	add	r4 r5 r4
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_17744 : 
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
	bne	r4 r6 L_else_17745
	addi	r4 r0 1
	ldi	r6 r2 0
	add	r4 r6 r4
	jump	min_caml_create_array
L_else_17745 : 
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
	bne	r5 r6 L_else_17746
	return
L_else_17746 : 
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
	bne	r5 r6 L_else_17748
	fadd	f2 f0 f5
	return
L_else_17748 : 
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
	bne	r6 r7 L_else_17749
	addi	r6 r0 0
	addi	r7 r0 1
	addi	r8 r0 2
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 38
	fbne	f5 f6 L_else_17750
	addi	r9 r0 1
	jump	L_cont_17751
L_else_17750 : 
	addi	r9 r0 0
L_cont_17751 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_17752
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fldi	f6 r0 38
	fbgt	f6 f5 L_else_17754
	addi	r11 r0 0
	jump	L_cont_17755
L_else_17754 : 
	addi	r11 r0 1
L_cont_17755 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	addi	r11 r0 0
	bne	r10 r11 L_else_17756
	fsub	f5 f0 f5
	jump	L_cont_17757
L_else_17756 : 
	fadd	f5 f0 f5
L_cont_17757 : 
	fsub	f5 f5 f2
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17758
	fadd	f6 f0 f6
	jump	L_cont_17759
L_else_17758 : 
	fsub	f6 f0 f6
L_cont_17759 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_17760
	addi	r6 r0 0
	jump	L_cont_17761
L_else_17760 : 
	addi	r6 r0 1
L_cont_17761 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17762
	addi	r6 r0 0
	jump	L_cont_17763
L_else_17762 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17764
	fadd	f6 f0 f6
	jump	L_cont_17765
L_else_17764 : 
	fsub	f6 f0 f6
L_cont_17765 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_17766
	addi	r6 r0 0
	jump	L_cont_17767
L_else_17766 : 
	addi	r6 r0 1
L_cont_17767 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17768
	addi	r6 r0 0
	jump	L_cont_17769
L_else_17768 : 
	addi	r6 r0 4145
	addi	r7 r0 0
	add	r6 r6 r7
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_17769 : 
L_cont_17763 : 
	jump	L_cont_17753
L_else_17752 : 
	addi	r6 r0 0
L_cont_17753 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17770
	addi	r6 r0 1
	addi	r7 r0 2
	addi	r8 r0 0
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 38
	fbne	f5 f6 L_else_17771
	addi	r9 r0 1
	jump	L_cont_17772
L_else_17771 : 
	addi	r9 r0 0
L_cont_17772 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_17773
	ldi	r9 r4 4
	ldi	r10 r4 6
	add	r11 r5 r6
	fldi	f5 r11 0
	fldi	f6 r0 38
	fbgt	f6 f5 L_else_17775
	addi	r11 r0 0
	jump	L_cont_17776
L_else_17775 : 
	addi	r11 r0 1
L_cont_17776 : 
	xor	r10 r10 r11
	add	r11 r9 r6
	fldi	f5 r11 0
	addi	r11 r0 0
	bne	r10 r11 L_else_17777
	fsub	f5 f0 f5
	jump	L_cont_17778
L_else_17777 : 
	fadd	f5 f0 f5
L_cont_17778 : 
	fsub	f5 f5 f3
	add	r6 r5 r6
	fldi	f6 r6 0
	fdiv	f5 f5 f6
	add	r6 r5 r7
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17779
	fadd	f6 f0 f6
	jump	L_cont_17780
L_else_17779 : 
	fsub	f6 f0 f6
L_cont_17780 : 
	add	r6 r9 r7
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_17781
	addi	r6 r0 0
	jump	L_cont_17782
L_else_17781 : 
	addi	r6 r0 1
L_cont_17782 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17783
	addi	r6 r0 0
	jump	L_cont_17784
L_else_17783 : 
	add	r6 r5 r8
	fldi	f6 r6 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17785
	fadd	f6 f0 f6
	jump	L_cont_17786
L_else_17785 : 
	fsub	f6 f0 f6
L_cont_17786 : 
	add	r6 r9 r8
	fldi	f7 r6 0
	fbgt	f7 f6 L_else_17787
	addi	r6 r0 0
	jump	L_cont_17788
L_else_17787 : 
	addi	r6 r0 1
L_cont_17788 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17789
	addi	r6 r0 0
	jump	L_cont_17790
L_else_17789 : 
	addi	r6 r0 4145
	addi	r7 r0 0
	add	r6 r6 r7
	fsti	f5 r6 0
	addi	r6 r0 1
L_cont_17790 : 
L_cont_17784 : 
	jump	L_cont_17774
L_else_17773 : 
	addi	r6 r0 0
L_cont_17774 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17791
	addi	r6 r0 2
	addi	r7 r0 0
	addi	r8 r0 1
	add	r9 r5 r6
	fldi	f5 r9 0
	fldi	f6 r0 38
	fbne	f5 f6 L_else_17792
	addi	r9 r0 1
	jump	L_cont_17793
L_else_17792 : 
	addi	r9 r0 0
L_cont_17793 : 
	addi	r10 r0 0
	bne	r9 r10 L_else_17794
	ldi	r9 r4 4
	ldi	r4 r4 6
	add	r10 r5 r6
	fldi	f5 r10 0
	fldi	f6 r0 38
	fbgt	f6 f5 L_else_17796
	addi	r10 r0 0
	jump	L_cont_17797
L_else_17796 : 
	addi	r10 r0 1
L_cont_17797 : 
	xor	r4 r4 r10
	add	r10 r9 r6
	fldi	f5 r10 0
	addi	r10 r0 0
	bne	r4 r10 L_else_17798
	fsub	f5 f0 f5
	jump	L_cont_17799
L_else_17798 : 
	fadd	f5 f0 f5
L_cont_17799 : 
	fsub	f4 f5 f4
	add	r4 r5 r6
	fldi	f5 r4 0
	fdiv	f4 f4 f5
	add	r4 r5 r7
	fldi	f5 r4 0
	fmul	f5 f4 f5
	fadd	f2 f5 f2
	fldi	f5 r0 38
	fbgt	f5 f2 L_else_17800
	fadd	f2 f0 f2
	jump	L_cont_17801
L_else_17800 : 
	fsub	f2 f0 f2
L_cont_17801 : 
	add	r4 r9 r7
	fldi	f5 r4 0
	fbgt	f5 f2 L_else_17802
	addi	r4 r0 0
	jump	L_cont_17803
L_else_17802 : 
	addi	r4 r0 1
L_cont_17803 : 
	addi	r6 r0 0
	bne	r4 r6 L_else_17804
	addi	r4 r0 0
	jump	L_cont_17805
L_else_17804 : 
	add	r4 r5 r8
	fldi	f2 r4 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17806
	fadd	f2 f0 f2
	jump	L_cont_17807
L_else_17806 : 
	fsub	f2 f0 f2
L_cont_17807 : 
	add	r4 r9 r8
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_17808
	addi	r4 r0 0
	jump	L_cont_17809
L_else_17808 : 
	addi	r4 r0 1
L_cont_17809 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17810
	addi	r4 r0 0
	jump	L_cont_17811
L_else_17810 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 1
L_cont_17811 : 
L_cont_17805 : 
	jump	L_cont_17795
L_else_17794 : 
	addi	r4 r0 0
L_cont_17795 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17812
	addi	r4 r0 0
	return
L_else_17812 : 
	addi	r4 r0 3
	return
L_else_17791 : 
	addi	r4 r0 2
	return
L_else_17770 : 
	addi	r4 r0 1
	return
L_else_17749 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_17813
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
	fbgt	f2 f3 L_else_17814
	addi	r4 r0 0
	jump	L_cont_17815
L_else_17814 : 
	addi	r4 r0 1
L_cont_17815 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17816
	addi	r4 r0 0
	return
L_else_17816 : 
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
L_else_17813 : 
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
	fbne	f2 f3 L_else_17818
	addi	r4 r0 1
	jump	L_cont_17819
L_else_17818 : 
	addi	r4 r0 0
L_cont_17819 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17820
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
	bne	r5 r6 L_else_17821
	fadd	f3 f0 f7
	jump	L_cont_17822
L_else_17821 : 
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
L_cont_17822 : 
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
	bne	r5 r6 L_else_17823
	fldi	f3 r0 45
	fsub	f2 f2 f3
	jump	L_cont_17824
L_else_17823 : 
	fadd	f2 f0 f2
L_cont_17824 : 
	fldi	f3 r2 16
	fmul	f4 f3 f3
	fldi	f5 r2 14
	fmul	f2 f5 f2
	fsub	f2 f4 f2
	fldi	f4 r0 38
	fbgt	f2 f4 L_else_17825
	addi	r5 r0 0
	jump	L_cont_17826
L_else_17825 : 
	addi	r5 r0 1
L_cont_17826 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_17827
	addi	r4 r0 0
	return
L_else_17827 : 
	fldi	f4 r0 28
	fldi	f6 r0 45
	fbgt	f2 f6 L_else_17828
	fldi	f6 r0 45
	jump	L_cont_17829
L_else_17828 : 
	fldi	f6 r0 45
	fdiv	f6 f6 f2
L_cont_17829 : 
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
	bne	r4 r5 L_else_17830
	fsub	f2 f0 f2
	jump	L_cont_17831
L_else_17830 : 
	fadd	f2 f0 f2
L_cont_17831 : 
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
L_else_17820 : 
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
	fbgt	f7 f6 L_else_17832
	fadd	f6 f0 f6
	jump	L_cont_17833
L_else_17832 : 
	fsub	f6 f0 f6
L_cont_17833 : 
	ldi	r7 r4 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_17834
	addi	r7 r0 0
	jump	L_cont_17835
L_else_17834 : 
	addi	r7 r0 1
L_cont_17835 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17836
	addi	r7 r0 0
	jump	L_cont_17837
L_else_17836 : 
	addi	r7 r0 2
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17838
	fadd	f6 f0 f6
	jump	L_cont_17839
L_else_17838 : 
	fsub	f6 f0 f6
L_cont_17839 : 
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_17840
	addi	r7 r0 0
	jump	L_cont_17841
L_else_17840 : 
	addi	r7 r0 1
L_cont_17841 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17842
	addi	r7 r0 0
	jump	L_cont_17843
L_else_17842 : 
	addi	r7 r0 1
	addi	r8 r0 1
	add	r8 r6 r8
	fldi	f6 r8 0
	fldi	f7 r0 38
	fbne	f6 f7 L_else_17844
	addi	r8 r0 1
	jump	L_cont_17845
L_else_17844 : 
	addi	r8 r0 0
L_cont_17845 : 
	sub	r7 r7 r8
L_cont_17843 : 
L_cont_17837 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17846
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
	fbgt	f7 f6 L_else_17847
	fadd	f6 f0 f6
	jump	L_cont_17848
L_else_17847 : 
	fsub	f6 f0 f6
L_cont_17848 : 
	ldi	r7 r4 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_17849
	addi	r7 r0 0
	jump	L_cont_17850
L_else_17849 : 
	addi	r7 r0 1
L_cont_17850 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17851
	addi	r7 r0 0
	jump	L_cont_17852
L_else_17851 : 
	addi	r7 r0 2
	add	r7 r5 r7
	fldi	f6 r7 0
	fmul	f6 f5 f6
	fadd	f6 f6 f4
	fldi	f7 r0 38
	fbgt	f7 f6 L_else_17853
	fadd	f6 f0 f6
	jump	L_cont_17854
L_else_17853 : 
	fsub	f6 f0 f6
L_cont_17854 : 
	ldi	r7 r4 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f7 r7 0
	fbgt	f7 f6 L_else_17855
	addi	r7 r0 0
	jump	L_cont_17856
L_else_17855 : 
	addi	r7 r0 1
L_cont_17856 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17857
	addi	r7 r0 0
	jump	L_cont_17858
L_else_17857 : 
	addi	r7 r0 1
	addi	r8 r0 3
	add	r8 r6 r8
	fldi	f6 r8 0
	fldi	f7 r0 38
	fbne	f6 f7 L_else_17859
	addi	r8 r0 1
	jump	L_cont_17860
L_else_17859 : 
	addi	r8 r0 0
L_cont_17860 : 
	sub	r7 r7 r8
L_cont_17858 : 
L_cont_17852 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17861
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
	fbgt	f5 f2 L_else_17862
	fadd	f2 f0 f2
	jump	L_cont_17863
L_else_17862 : 
	fsub	f2 f0 f2
L_cont_17863 : 
	ldi	r7 r4 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f5 r7 0
	fbgt	f5 f2 L_else_17864
	addi	r7 r0 0
	jump	L_cont_17865
L_else_17864 : 
	addi	r7 r0 1
L_cont_17865 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17866
	addi	r4 r0 0
	jump	L_cont_17867
L_else_17866 : 
	addi	r7 r0 1
	add	r5 r5 r7
	fldi	f2 r5 0
	fmul	f2 f4 f2
	fadd	f2 f2 f3
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17868
	fadd	f2 f0 f2
	jump	L_cont_17869
L_else_17868 : 
	fsub	f2 f0 f2
L_cont_17869 : 
	ldi	r4 r4 4
	addi	r5 r0 1
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_17870
	addi	r4 r0 0
	jump	L_cont_17871
L_else_17870 : 
	addi	r4 r0 1
L_cont_17871 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17872
	addi	r4 r0 0
	jump	L_cont_17873
L_else_17872 : 
	addi	r4 r0 1
	addi	r5 r0 5
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17874
	addi	r5 r0 1
	jump	L_cont_17875
L_else_17874 : 
	addi	r5 r0 0
L_cont_17875 : 
	sub	r4 r4 r5
L_cont_17873 : 
L_cont_17867 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17876
	addi	r4 r0 0
	return
L_else_17876 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f4 r4 0
	addi	r4 r0 3
	return
L_else_17861 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fsti	f5 r4 0
	addi	r4 r0 2
	return
L_else_17846 : 
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
	bne	r4 r8 L_else_17877
	ldi	r5 r5 0
	add	r4 r0 r7
	jump	L_solver_rect_fast_2704
L_else_17877 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_17878
	addi	r4 r0 0
	add	r4 r6 r4
	fldi	f5 r4 0
	fldi	f6 r0 38
	fbgt	f6 f5 L_else_17879
	addi	r4 r0 0
	jump	L_cont_17880
L_else_17879 : 
	addi	r4 r0 1
L_cont_17880 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17881
	addi	r4 r0 0
	return
L_else_17881 : 
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
L_else_17878 : 
	addi	r4 r0 0
	add	r4 r6 r4
	fldi	f5 r4 0
	fldi	f6 r0 38
	fbne	f5 f6 L_else_17882
	addi	r4 r0 1
	jump	L_cont_17883
L_else_17882 : 
	addi	r4 r0 0
L_cont_17883 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17884
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
	bne	r5 r6 L_else_17886
	fldi	f3 r0 45
	fsub	f2 f2 f3
	jump	L_cont_17887
L_else_17886 : 
	fadd	f2 f0 f2
L_cont_17887 : 
	fldi	f3 r2 4
	fmul	f4 f3 f3
	fldi	f5 r2 2
	fmul	f2 f5 f2
	fsub	f2 f4 f2
	fldi	f4 r0 38
	fbgt	f2 f4 L_else_17888
	addi	r5 r0 0
	jump	L_cont_17889
L_else_17888 : 
	addi	r5 r0 1
L_cont_17889 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_17890
	addi	r4 r0 0
	return
L_else_17890 : 
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_17891
	addi	r4 r0 4145
	addi	r5 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 45
	fbgt	f2 f5 L_else_17893
	fldi	f5 r0 45
	jump	L_cont_17894
L_else_17893 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f2
L_cont_17894 : 
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
	jump	L_cont_17892
L_else_17891 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 45
	fbgt	f2 f5 L_else_17896
	fldi	f5 r0 45
	jump	L_cont_17897
L_else_17896 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f2
L_cont_17897 : 
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
L_cont_17892 : 
	addi	r4 r0 1
	return
L_else_17884 : 
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
	bne	r8 r9 L_else_17898
	ldi	r5 r5 0
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r1
	jump	L_solver_rect_fast_2704
L_else_17898 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_17899
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17900
	addi	r5 r0 0
	jump	L_cont_17901
L_else_17900 : 
	addi	r5 r0 1
L_cont_17901 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_17902
	addi	r4 r0 0
	return
L_else_17902 : 
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
L_else_17899 : 
	addi	r5 r0 0
	add	r5 r4 r5
	fldi	f5 r5 0
	fldi	f6 r0 38
	fbne	f5 f6 L_else_17903
	addi	r5 r0 1
	jump	L_cont_17904
L_else_17903 : 
	addi	r5 r0 0
L_cont_17904 : 
	addi	r8 r0 0
	bne	r5 r8 L_else_17905
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
	fbgt	f3 f4 L_else_17906
	addi	r5 r0 0
	jump	L_cont_17907
L_else_17906 : 
	addi	r5 r0 1
L_cont_17907 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_17908
	addi	r4 r0 0
	return
L_else_17908 : 
	ldi	r5 r6 6
	addi	r6 r0 0
	bne	r5 r6 L_else_17909
	addi	r5 r0 4145
	addi	r6 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 45
	fbgt	f3 f5 L_else_17911
	fldi	f5 r0 45
	jump	L_cont_17912
L_else_17911 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f3
L_cont_17912 : 
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
	jump	L_cont_17910
L_else_17909 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	fldi	f4 r0 28
	fldi	f5 r0 45
	fbgt	f3 f5 L_else_17914
	fldi	f5 r0 45
	jump	L_cont_17915
L_else_17914 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f3
L_cont_17915 : 
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
L_cont_17910 : 
	addi	r4 r0 1
	return
L_else_17905 : 
	addi	r4 r0 0
	return
L_iter_setup_dirvec_constants_2753 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_17916
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r4 1
	ldi	r8 r4 0
	ldi	r9 r6 1
	addi	r10 r0 1
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r9 r10 L_else_17917
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
	fbne	f2 f3 L_else_17919
	addi	r5 r0 1
	jump	L_cont_17920
L_else_17919 : 
	addi	r5 r0 0
L_cont_17920 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_17921
	addi	r5 r0 0
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 0
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
	addi	r10 r0 0
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
	addi	r5 r0 1
	fldi	f2 r0 45
	addi	r8 r0 0
	add	r8 r6 r8
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_17922
L_else_17921 : 
	addi	r5 r0 1
	fldi	f2 r0 38
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_17922 : 
	addi	r5 r0 1
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
	addi	r5 r0 2
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 1
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
	ldi	r9 r7 4
	addi	r10 r0 1
	add	r9 r9 r10
	fldi	f2 r9 0
	addi	r9 r0 0
	bne	r8 r9 L_else_17933
	fsub	f2 f0 f2
	jump	L_cont_17934
L_else_17933 : 
	fadd	f2 f0 f2
L_cont_17934 : 
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
	jump	L_cont_17930
L_else_17929 : 
	addi	r5 r0 3
	fldi	f2 r0 38
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_17930 : 
	addi	r5 r0 2
	add	r5 r6 r5
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17935
	addi	r5 r0 1
	jump	L_cont_17936
L_else_17935 : 
	addi	r5 r0 0
L_cont_17936 : 
	addi	r7 r0 0
	bne	r5 r7 L_else_17937
	addi	r5 r0 4
	ldi	r7 r2 3
	ldi	r8 r7 6
	addi	r9 r0 2
	add	r9 r6 r9
	fldi	f2 r9 0
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17939
	addi	r9 r0 0
	jump	L_cont_17940
L_else_17939 : 
	addi	r9 r0 1
L_cont_17940 : 
	xor	r8 r8 r9
	ldi	r7 r7 4
	addi	r9 r0 2
	add	r7 r7 r9
	fldi	f2 r7 0
	addi	r7 r0 0
	bne	r8 r7 L_else_17941
	fsub	f2 f0 f2
	jump	L_cont_17942
L_else_17941 : 
	fadd	f2 f0 f2
L_cont_17942 : 
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
	jump	L_cont_17938
L_else_17937 : 
	addi	r5 r0 5
	fldi	f2 r0 38
	add	r5 r4 r5
	fsti	f2 r5 0
L_cont_17938 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_17918
L_else_17917 : 
	addi	r10 r0 2
	bne	r9 r10 L_else_17943
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
	fbgt	f2 f3 L_else_17945
	addi	r6 r0 0
	jump	L_cont_17946
L_else_17945 : 
	addi	r6 r0 1
L_cont_17946 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17947
	addi	r5 r0 0
	fldi	f2 r0 38
	add	r5 r4 r5
	fsti	f2 r5 0
	jump	L_cont_17948
L_else_17947 : 
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
L_cont_17948 : 
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_17944
L_else_17943 : 
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
	bne	r6 r8 L_else_17949
	addi	r4 r0 1
	add	r4 r7 r4
	fsti	f3 r4 0
	addi	r4 r0 2
	add	r4 r7 r4
	fsti	f4 r4 0
	addi	r4 r0 3
	add	r4 r7 r4
	fsti	f5 r4 0
	jump	L_cont_17950
L_else_17949 : 
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
L_cont_17950 : 
	fldi	f3 r0 38
	fbne	f2 f3 L_else_17951
	addi	r4 r0 1
	jump	L_cont_17952
L_else_17951 : 
	addi	r4 r0 0
L_cont_17952 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17953
	addi	r4 r0 4
	fldi	f3 r0 45
	fdiv	f2 f3 f2
	add	r4 r7 r4
	fsti	f2 r4 0
	jump	L_cont_17954
L_else_17953 : 
L_cont_17954 : 
	ldi	r4 r2 1
	ldi	r5 r2 2
	add	r5 r5 r4
	sti	r7 r5 0
L_cont_17944 : 
L_cont_17918 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_iter_setup_dirvec_constants_2753
L_else_17916 : 
	return
L_setup_startp_constants_2758 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_17956
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
	bne	r8 r9 L_else_17957
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
	jump	L_cont_17958
L_else_17957 : 
	addi	r9 r0 2
	bgt	r8 r9 L_else_17959
	jump	L_cont_17960
L_else_17959 : 
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
	bne	r6 r5 L_else_17961
	fldi	f3 r0 45
	fsub	f2 f2 f3
	jump	L_cont_17962
L_else_17961 : 
	fadd	f2 f0 f2
L_cont_17962 : 
	ldi	r5 r2 3
	add	r4 r5 r4
	fsti	f2 r4 0
L_cont_17960 : 
L_cont_17958 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	sub	r5 r5 r4
	ldi	r4 r2 0
	jump	L_setup_startp_constants_2758
L_else_17956 : 
	return
L_check_all_inside_2783 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_17964
	addi	r4 r0 1
	return
L_else_17964 : 
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
	bne	r7 r8 L_else_17965
	fldi	f8 r0 38
	fbgt	f8 f5 L_else_17967
	fadd	f5 f0 f5
	jump	L_cont_17968
L_else_17967 : 
	fsub	f5 f0 f5
L_cont_17968 : 
	ldi	r7 r6 4
	addi	r8 r0 0
	add	r7 r7 r8
	fldi	f8 r7 0
	fbgt	f8 f5 L_else_17969
	addi	r7 r0 0
	jump	L_cont_17970
L_else_17969 : 
	addi	r7 r0 1
L_cont_17970 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17971
	addi	r7 r0 0
	jump	L_cont_17972
L_else_17971 : 
	fldi	f5 r0 38
	fbgt	f5 f6 L_else_17973
	fadd	f5 f0 f6
	jump	L_cont_17974
L_else_17973 : 
	fsub	f5 f0 f6
L_cont_17974 : 
	ldi	r7 r6 4
	addi	r8 r0 1
	add	r7 r7 r8
	fldi	f6 r7 0
	fbgt	f6 f5 L_else_17975
	addi	r7 r0 0
	jump	L_cont_17976
L_else_17975 : 
	addi	r7 r0 1
L_cont_17976 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17977
	addi	r7 r0 0
	jump	L_cont_17978
L_else_17977 : 
	fldi	f5 r0 38
	fbgt	f5 f7 L_else_17979
	fadd	f5 f0 f7
	jump	L_cont_17980
L_else_17979 : 
	fsub	f5 f0 f7
L_cont_17980 : 
	ldi	r7 r6 4
	addi	r8 r0 2
	add	r7 r7 r8
	fldi	f6 r7 0
	fbgt	f6 f5 L_else_17981
	addi	r7 r0 0
	jump	L_cont_17982
L_else_17981 : 
	addi	r7 r0 1
L_cont_17982 : 
L_cont_17978 : 
L_cont_17972 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_17983
	addi	r7 r0 1
	ldi	r6 r6 6
	sub	r4 r7 r6
	jump	L_cont_17984
L_else_17983 : 
	ldi	r6 r6 6
	add	r4 r0 r6
L_cont_17984 : 
	jump	L_cont_17966
L_else_17965 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_17985
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
	fbgt	f3 f2 L_else_17987
	addi	r6 r0 0
	jump	L_cont_17988
L_else_17987 : 
	addi	r6 r0 1
L_cont_17988 : 
	xor	r5 r5 r6
	sub	r4 r4 r5
	jump	L_cont_17986
L_else_17985 : 
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
	bne	r5 r6 L_else_17989
	fldi	f3 r0 45
	fsub	f2 f2 f3
	jump	L_cont_17990
L_else_17989 : 
	fadd	f2 f0 f2
L_cont_17990 : 
	addi	r5 r0 1
	ldi	r4 r4 6
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_17991
	addi	r6 r0 0
	jump	L_cont_17992
L_else_17991 : 
	addi	r6 r0 1
L_cont_17992 : 
	xor	r4 r4 r6
	sub	r4 r5 r4
L_cont_17986 : 
L_cont_17966 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17993
	addi	r4 r0 1
	ldi	r5 r2 7
	add	r4 r5 r4
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r5 r2 6
	jump	L_check_all_inside_2783
L_else_17993 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2789 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_17994
	addi	r4 r0 0
	return
L_else_17994 : 
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
	bne	r4 r5 L_else_17995
	addi	r4 r0 0
	jump	L_cont_17996
L_else_17995 : 
	fldi	f3 r0 25
	fbgt	f3 f2 L_else_17997
	addi	r4 r0 0
	jump	L_cont_17998
L_else_17997 : 
	addi	r4 r0 1
L_cont_17998 : 
L_cont_17996 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_17999
	addi	r4 r0 5042
	ldi	r5 r2 2
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_18000
	addi	r4 r0 0
	return
L_else_18000 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2789
L_else_17999 : 
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
	bne	r4 r5 L_else_18001
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2789
L_else_18001 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2792 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_18002
	addi	r4 r0 0
	return
L_else_18002 : 
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
	bne	r4 r5 L_else_18003
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r4 r5 r4
	ldi	r5 r2 0
	jump	L_shadow_check_one_or_group_2792
L_else_18003 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2795 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 0
	add	r7 r6 r7
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_18004
	addi	r4 r0 0
	return
L_else_18004 : 
	addi	r8 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r7 r8 L_else_18005
	addi	r4 r0 1
	jump	L_cont_18006
L_else_18005 : 
	addi	r8 r0 4977
	addi	r9 r0 4114
	add	r6 r0 r9
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 4
	call	L_solver_fast_2723
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_18007
	addi	r4 r0 0
	jump	L_cont_18008
L_else_18007 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	fldi	f3 r0 23
	fbgt	f3 f2 L_else_18009
	addi	r4 r0 0
	jump	L_cont_18010
L_else_18009 : 
	addi	r4 r0 1
L_cont_18010 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18011
	addi	r4 r0 0
	jump	L_cont_18012
L_else_18011 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2792
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_18013
	addi	r4 r0 0
	jump	L_cont_18014
L_else_18013 : 
	addi	r4 r0 1
L_cont_18014 : 
L_cont_18012 : 
L_cont_18008 : 
L_cont_18006 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18015
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2795
L_else_18015 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2792
	subi	r2 r2 4
	addi	r5 r0 0
	bne	r4 r5 L_else_18016
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2795
L_else_18016 : 
	addi	r4 r0 1
	return
L_solve_each_element_2798 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_18017
	return
L_else_18017 : 
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
	bne	r4 r5 L_else_18019
	addi	r4 r0 5042
	ldi	r5 r2 3
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_18020
	return
L_else_18020 : 
	addi	r4 r0 1
	ldi	r5 r2 2
	add	r4 r5 r4
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2798
L_else_18019 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_18022
	addi	r5 r0 0
	jump	L_cont_18023
L_else_18022 : 
	addi	r5 r0 1
L_cont_18023 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_18024
	jump	L_cont_18025
L_else_18024 : 
	addi	r5 r0 4154
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_18026
	addi	r5 r0 0
	jump	L_cont_18027
L_else_18026 : 
	addi	r5 r0 1
L_cont_18027 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_18028
	jump	L_cont_18029
L_else_18028 : 
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
	bne	r4 r5 L_else_18031
	jump	L_cont_18032
L_else_18031 : 
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
L_cont_18032 : 
L_cont_18029 : 
L_cont_18025 : 
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
	bne	r7 r8 L_else_18033
	return
L_else_18033 : 
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
	bne	r6 r7 L_else_18035
	return
L_else_18035 : 
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
	bne	r8 r9 L_else_18037
	return
L_else_18037 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_18039
	addi	r8 r0 1
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_18041
	jump	L_cont_18042
L_else_18041 : 
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
L_cont_18042 : 
	jump	L_cont_18040
L_else_18039 : 
	addi	r9 r0 4135
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r8
	add	r6 r0 r9
	addi	r2 r2 5
	call	L_solver_2700
	subi	r2 r2 5
	addi	r5 r0 0
	bne	r4 r5 L_else_18043
	jump	L_cont_18044
L_else_18043 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_18045
	addi	r4 r0 0
	jump	L_cont_18046
L_else_18045 : 
	addi	r4 r0 1
L_cont_18046 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18047
	jump	L_cont_18048
L_else_18047 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_18049
	jump	L_cont_18050
L_else_18049 : 
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
L_cont_18050 : 
L_cont_18048 : 
L_cont_18044 : 
L_cont_18040 : 
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
	bne	r8 r9 L_else_18051
	return
L_else_18051 : 
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
	bne	r4 r5 L_else_18053
	addi	r4 r0 5042
	ldi	r5 r2 4
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r4 r4 6
	addi	r5 r0 0
	bne	r4 r5 L_else_18054
	return
L_else_18054 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r5 r2 2
	ldi	r6 r2 1
	jump	L_solve_each_element_fast_2812
L_else_18053 : 
	addi	r5 r0 4145
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f2 r5 0
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_18056
	addi	r5 r0 0
	jump	L_cont_18057
L_else_18056 : 
	addi	r5 r0 1
L_cont_18057 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_18058
	jump	L_cont_18059
L_else_18058 : 
	addi	r5 r0 4154
	addi	r6 r0 0
	add	r5 r5 r6
	fldi	f3 r5 0
	fbgt	f3 f2 L_else_18060
	addi	r5 r0 0
	jump	L_cont_18061
L_else_18060 : 
	addi	r5 r0 1
L_cont_18061 : 
	addi	r6 r0 0
	bne	r5 r6 L_else_18062
	jump	L_cont_18063
L_else_18062 : 
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
	bne	r4 r5 L_else_18064
	jump	L_cont_18065
L_else_18064 : 
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
L_cont_18065 : 
L_cont_18063 : 
L_cont_18059 : 
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
	bne	r7 r8 L_else_18066
	return
L_else_18066 : 
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
	bne	r6 r7 L_else_18068
	return
L_else_18068 : 
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
	bne	r8 r9 L_else_18070
	return
L_else_18070 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_18072
	addi	r8 r0 1
	add	r8 r7 r8
	ldi	r8 r8 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_18074
	jump	L_cont_18075
L_else_18074 : 
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
L_cont_18075 : 
	jump	L_cont_18073
L_else_18072 : 
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_fast2_2741
	subi	r2 r2 5
	addi	r5 r0 0
	bne	r4 r5 L_else_18076
	jump	L_cont_18077
L_else_18076 : 
	addi	r4 r0 4145
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f2 r4 0
	addi	r4 r0 4154
	addi	r5 r0 0
	add	r4 r4 r5
	fldi	f3 r4 0
	fbgt	f3 f2 L_else_18078
	addi	r4 r0 0
	jump	L_cont_18079
L_else_18078 : 
	addi	r4 r0 1
L_cont_18079 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18080
	jump	L_cont_18081
L_else_18080 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_18082
	jump	L_cont_18083
L_else_18082 : 
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
L_cont_18083 : 
L_cont_18081 : 
L_cont_18077 : 
L_cont_18073 : 
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
	fbgt	f2 f3 L_else_18084
	addi	r4 r0 0
	jump	L_cont_18085
L_else_18084 : 
	addi	r4 r0 1
L_cont_18085 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18086
	addi	r4 r0 0
	return
L_else_18086 : 
	fldi	f3 r0 21
	fbgt	f3 f2 L_else_18087
	addi	r4 r0 0
	return
L_else_18087 : 
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
	bne	r6 r7 L_else_18088
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
	fbgt	f3 f2 L_else_18089
	addi	r6 r0 0
	jump	L_cont_18090
L_else_18089 : 
	addi	r6 r0 1
L_cont_18090 : 
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
	fbgt	f3 f2 L_else_18091
	addi	r4 r0 0
	jump	L_cont_18092
L_else_18091 : 
	addi	r4 r0 1
L_cont_18092 : 
	addi	r5 r0 4121
	addi	r7 r0 1
	addi	r8 r0 0
	bne	r6 r8 L_else_18093
	addi	r6 r0 0
	bne	r4 r6 L_else_18095
	fldi	f2 r0 15
	jump	L_cont_18096
L_else_18095 : 
	fldi	f2 r0 38
L_cont_18096 : 
	jump	L_cont_18094
L_else_18093 : 
	addi	r6 r0 0
	bne	r4 r6 L_else_18097
	fldi	f2 r0 38
	jump	L_cont_18098
L_else_18097 : 
	fldi	f2 r0 15
L_cont_18098 : 
L_cont_18094 : 
	add	r4 r5 r7
	fsti	f2 r4 0
	return
L_else_18088 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_18100
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
L_else_18100 : 
	addi	r7 r0 3
	bne	r6 r7 L_else_18102
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
	fbgt	f2 f4 L_else_18103
	fldi	f4 r0 45
	jump	L_cont_18104
L_else_18103 : 
	fldi	f4 r0 45
	fdiv	f4 f4 f2
L_cont_18104 : 
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
L_else_18102 : 
	addi	r7 r0 4
	bne	r6 r7 L_else_18106
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
	fbgt	f3 f5 L_else_18107
	fldi	f5 r0 45
	jump	L_cont_18108
L_else_18107 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f3
L_cont_18108 : 
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
	fbgt	f4 f6 L_else_18109
	fldi	f6 r0 45
	jump	L_cont_18110
L_else_18109 : 
	fldi	f6 r0 45
	fdiv	f6 f6 f4
L_cont_18110 : 
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
	fbgt	f5 f3 L_else_18111
	fadd	f5 f0 f3
	jump	L_cont_18112
L_else_18111 : 
	fsub	f5 f0 f3
L_cont_18112 : 
	fldi	f6 r0 20
	fbgt	f6 f5 L_else_18113
	addi	r4 r0 0
	jump	L_cont_18114
L_else_18113 : 
	addi	r4 r0 1
L_cont_18114 : 
	addi	r5 r0 0
	fsti	f4 r2 14
	bne	r4 r5 L_else_18115
	fdiv	f2 f2 f3
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_18117
	fadd	f2 f0 f2
	jump	L_cont_18118
L_else_18117 : 
	fsub	f2 f0 f2
L_cont_18118 : 
	addi	r2 r2 17
	call	L_atan_2497
	subi	r2 r2 17
	fldi	f3 r0 18
	fmul	f2 f2 f3
	fldi	f3 r0 17
	fdiv	f2 f2 f3
	jump	L_cont_18116
L_else_18115 : 
	fldi	f2 r0 19
L_cont_18116 : 
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
	fbgt	f4 f6 L_else_18119
	fldi	f6 r0 45
	jump	L_cont_18120
L_else_18119 : 
	fldi	f6 r0 45
	fdiv	f6 f6 f4
L_cont_18120 : 
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
	fbgt	f3 f4 L_else_18121
	fadd	f3 f0 f4
	jump	L_cont_18122
L_else_18121 : 
	fsub	f3 f0 f4
L_cont_18122 : 
	fldi	f5 r0 20
	fbgt	f5 f3 L_else_18123
	addi	r4 r0 0
	jump	L_cont_18124
L_else_18123 : 
	addi	r4 r0 1
L_cont_18124 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18125
	fdiv	f2 f2 f4
	fldi	f3 r0 38
	fbgt	f3 f2 L_else_18127
	fadd	f2 f0 f2
	jump	L_cont_18128
L_else_18127 : 
	fsub	f2 f0 f2
L_cont_18128 : 
	addi	r2 r2 23
	call	L_atan_2497
	subi	r2 r2 23
	fldi	f3 r0 18
	fmul	f2 f2 f3
	fldi	f3 r0 17
	fdiv	f2 f2 f3
	jump	L_cont_18126
L_else_18125 : 
	fldi	f2 r0 19
L_cont_18126 : 
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
	fbgt	f3 f2 L_else_18129
	addi	r4 r0 0
	jump	L_cont_18130
L_else_18129 : 
	addi	r4 r0 1
L_cont_18130 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18131
	fadd	f2 f0 f2
	jump	L_cont_18132
L_else_18131 : 
	fldi	f2 r0 38
L_cont_18132 : 
	addi	r4 r0 4121
	addi	r5 r0 2
	fldi	f3 r0 15
	fmul	f2 f3 f2
	fldi	f3 r0 14
	fdiv	f2 f2 f3
	add	r4 r4 r5
	fsti	f2 r4 0
	return
L_else_18106 : 
	return
L_add_light_2838 : 
	fldi	f5 r0 38
	fbgt	f2 f5 L_else_18135
	addi	r4 r0 0
	jump	L_cont_18136
L_else_18135 : 
	addi	r4 r0 1
L_cont_18136 : 
	addi	r5 r0 0
	fsti	f4 r2 0
	fsti	f3 r2 2
	bne	r4 r5 L_else_18137
	jump	L_cont_18138
L_else_18137 : 
	addi	r4 r0 4127
	addi	r5 r0 4121
	addi	r2 r2 5
	call	L_vecaccum_2549
	subi	r2 r2 5
L_cont_18138 : 
	fldi	f2 r0 38
	fldi	f3 r2 2
	fbgt	f3 f2 L_else_18139
	addi	r4 r0 0
	jump	L_cont_18140
L_else_18139 : 
	addi	r4 r0 1
L_cont_18140 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18141
	return
L_else_18141 : 
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
	bgt	r6 r4 L_else_18144
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
	bne	r4 r5 L_else_18147
	jump	L_cont_18148
L_else_18147 : 
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
	bne	r4 r6 L_else_18149
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
	bne	r4 r5 L_else_18151
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
	jump	L_cont_18152
L_else_18151 : 
L_cont_18152 : 
	jump	L_cont_18150
L_else_18149 : 
L_cont_18150 : 
L_cont_18148 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	sub	r4 r5 r4
	fldi	f2 r2 6
	fldi	f3 r2 2
	ldi	r5 r2 4
	jump	L_trace_reflections_2842
L_else_18144 : 
	return
L_trace_ray_2847 : 
	addi	r7 r0 4
	bgt	r4 r7 L_else_18154
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
	fbgt	f2 f3 L_else_18156
	addi	r4 r0 0
	jump	L_cont_18157
L_else_18156 : 
	addi	r4 r0 1
L_cont_18157 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18158
	addi	r4 r0 0
	jump	L_cont_18159
L_else_18158 : 
	fldi	f3 r0 21
	fbgt	f3 f2 L_else_18160
	addi	r4 r0 0
	jump	L_cont_18161
L_else_18160 : 
	addi	r4 r0 1
L_cont_18161 : 
L_cont_18159 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18162
	addi	r4 r0 -1
	ldi	r5 r2 7
	ldi	r6 r2 8
	add	r6 r6 r5
	sti	r4 r6 0
	addi	r4 r0 0
	bne	r5 r4 L_else_18163
	return
L_else_18163 : 
	addi	r5 r0 4111
	ldi	r4 r2 6
	addi	r2 r2 10
	call	L_veciprod_2541
	subi	r2 r2 10
	fsub	f2 f0 f2
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_18165
	addi	r4 r0 0
	jump	L_cont_18166
L_else_18165 : 
	addi	r4 r0 1
L_cont_18166 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18167
	return
L_else_18167 : 
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
L_else_18162 : 
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
	bne	r7 r8 L_else_18170
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
	fbne	f4 f5 L_else_18172
	addi	r7 r0 1
	jump	L_cont_18173
L_else_18172 : 
	addi	r7 r0 0
L_cont_18173 : 
	addi	r11 r0 0
	bne	r7 r11 L_else_18174
	fldi	f5 r0 38
	fbgt	f4 f5 L_else_18176
	addi	r7 r0 0
	jump	L_cont_18177
L_else_18176 : 
	addi	r7 r0 1
L_cont_18177 : 
	addi	r11 r0 0
	bne	r7 r11 L_else_18178
	fldi	f4 r0 27
	jump	L_cont_18179
L_else_18178 : 
	fldi	f4 r0 45
L_cont_18179 : 
	jump	L_cont_18175
L_else_18174 : 
	fldi	f4 r0 38
L_cont_18175 : 
	fsub	f4 f0 f4
	add	r7 r8 r9
	fsti	f4 r7 0
	jump	L_cont_18171
L_else_18170 : 
	addi	r8 r0 2
	bne	r7 r8 L_else_18180
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
	jump	L_cont_18181
L_else_18180 : 
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
	bne	r7 r8 L_else_18182
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
	jump	L_cont_18183
L_else_18182 : 
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
L_cont_18183 : 
	addi	r7 r0 4118
	ldi	r8 r5 6
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 15
	call	L_vecunit_sgn_2538
	subi	r2 r2 15
L_cont_18181 : 
L_cont_18171 : 
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
	fbgt	f3 f2 L_else_18184
	addi	r7 r0 0
	jump	L_cont_18185
L_else_18184 : 
	addi	r7 r0 1
L_cont_18185 : 
	addi	r8 r0 0
	bne	r7 r8 L_else_18186
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
	jump	L_cont_18187
L_else_18186 : 
	addi	r7 r0 0
	ldi	r8 r2 7
	add	r5 r5 r8
	sti	r7 r5 0
L_cont_18187 : 
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
	bne	r4 r5 L_else_18189
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
	jump	L_cont_18190
L_else_18189 : 
L_cont_18190 : 
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
	fbgt	f3 f2 L_else_18191
	addi	r4 r0 0
	jump	L_cont_18192
L_else_18191 : 
	addi	r4 r0 1
L_cont_18192 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18193
	return
L_else_18193 : 
	addi	r4 r0 4
	ldi	r5 r2 7
	bgt	r4 r5 L_else_18195
	jump	L_cont_18196
L_else_18195 : 
	addi	r4 r0 1
	add	r4 r5 r4
	addi	r6 r0 -1
	ldi	r7 r2 8
	add	r4 r7 r4
	sti	r6 r4 0
L_cont_18196 : 
	addi	r4 r0 2
	ldi	r6 r2 9
	bne	r6 r4 L_else_18197
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
L_else_18197 : 
	return
L_else_18154 : 
	return
L_iter_trace_diffuse_rays_2856 : 
	addi	r8 r0 0
	bgt	r8 r7 L_else_18200
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
	fbgt	f3 f2 L_else_18201
	addi	r4 r0 0
	jump	L_cont_18202
L_else_18201 : 
	addi	r4 r0 1
L_cont_18202 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18203
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
	bne	r4 r5 L_else_18205
	jump	L_cont_18206
L_else_18205 : 
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
	bne	r6 r7 L_else_18207
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
	jump	L_cont_18208
L_else_18207 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_18209
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
	jump	L_cont_18210
L_else_18209 : 
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
	bne	r5 r6 L_else_18211
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
	jump	L_cont_18212
L_else_18211 : 
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
L_cont_18212 : 
	addi	r5 r0 4118
	ldi	r6 r4 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_vecunit_sgn_2538
	subi	r2 r2 11
L_cont_18210 : 
L_cont_18208 : 
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
	bne	r4 r5 L_else_18213
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 11
	call	L_veciprod_2541
	subi	r2 r2 11
	fsub	f2 f0 f2
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_18215
	addi	r4 r0 0
	jump	L_cont_18216
L_else_18215 : 
	addi	r4 r0 1
L_cont_18216 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18217
	fldi	f2 r0 38
	jump	L_cont_18218
L_else_18217 : 
	fadd	f2 f0 f2
L_cont_18218 : 
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
	jump	L_cont_18214
L_else_18213 : 
L_cont_18214 : 
L_cont_18206 : 
	jump	L_cont_18204
L_else_18203 : 
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
	bne	r4 r5 L_else_18219
	jump	L_cont_18220
L_else_18219 : 
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
	bne	r6 r7 L_else_18221
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
	jump	L_cont_18222
L_else_18221 : 
	addi	r5 r0 2
	bne	r6 r5 L_else_18223
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
	jump	L_cont_18224
L_else_18223 : 
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
	bne	r5 r6 L_else_18225
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
	jump	L_cont_18226
L_else_18225 : 
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
L_cont_18226 : 
	addi	r5 r0 4118
	ldi	r6 r4 6
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 17
	call	L_vecunit_sgn_2538
	subi	r2 r2 17
L_cont_18224 : 
L_cont_18222 : 
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
	bne	r4 r5 L_else_18227
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 17
	call	L_veciprod_2541
	subi	r2 r2 17
	fsub	f2 f0 f2
	fldi	f3 r0 38
	fbgt	f2 f3 L_else_18229
	addi	r4 r0 0
	jump	L_cont_18230
L_else_18229 : 
	addi	r4 r0 1
L_cont_18230 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18231
	fldi	f2 r0 38
	jump	L_cont_18232
L_else_18231 : 
	fadd	f2 f0 f2
L_cont_18232 : 
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
	jump	L_cont_18228
L_else_18227 : 
L_cont_18228 : 
L_cont_18220 : 
L_cont_18204 : 
	addi	r4 r0 2
	ldi	r5 r2 2
	sub	r7 r5 r4
	ldi	r4 r2 3
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_iter_trace_diffuse_rays_2856
L_else_18200 : 
	return
L_do_without_neighbors_2878 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_18234
	ldi	r6 r4 2
	addi	r7 r0 0
	add	r6 r6 r5
	ldi	r6 r6 0
	bgt	r7 r6 L_else_18235
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r6 r7 L_else_18236
	jump	L_cont_18237
L_else_18236 : 
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
	bne	r5 r9 L_else_18238
	jump	L_cont_18239
L_else_18238 : 
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
L_cont_18239 : 
	addi	r4 r0 1
	ldi	r5 r2 7
	bne	r5 r4 L_else_18240
	jump	L_cont_18241
L_else_18240 : 
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
L_cont_18241 : 
	addi	r4 r0 2
	ldi	r5 r2 7
	bne	r5 r4 L_else_18242
	jump	L_cont_18243
L_else_18242 : 
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
L_cont_18243 : 
	addi	r4 r0 3
	ldi	r5 r2 7
	bne	r5 r4 L_else_18244
	jump	L_cont_18245
L_else_18244 : 
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
L_cont_18245 : 
	addi	r4 r0 4
	ldi	r5 r2 7
	bne	r5 r4 L_else_18246
	jump	L_cont_18247
L_else_18246 : 
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
L_cont_18247 : 
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
L_cont_18237 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r5 r5 r4
	ldi	r4 r2 0
	jump	L_do_without_neighbors_2878
L_else_18235 : 
	return
L_else_18234 : 
	return
L_try_exploit_neighbors_2894 : 
	add	r10 r7 r4
	ldi	r10 r10 0
	addi	r11 r0 4
	bgt	r9 r11 L_else_18250
	addi	r11 r0 0
	ldi	r12 r10 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bgt	r11 r12 L_else_18251
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
	bne	r12 r11 L_else_18252
	add	r12 r8 r4
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_18254
	addi	r12 r0 1
	sub	r12 r4 r12
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_18256
	addi	r12 r0 1
	add	r12 r4 r12
	add	r12 r7 r12
	ldi	r12 r12 0
	ldi	r12 r12 2
	add	r12 r12 r9
	ldi	r12 r12 0
	bne	r12 r11 L_else_18258
	addi	r11 r0 1
	jump	L_cont_18259
L_else_18258 : 
	addi	r11 r0 0
L_cont_18259 : 
	jump	L_cont_18257
L_else_18256 : 
	addi	r11 r0 0
L_cont_18257 : 
	jump	L_cont_18255
L_else_18254 : 
	addi	r11 r0 0
L_cont_18255 : 
	jump	L_cont_18253
L_else_18252 : 
	addi	r11 r0 0
L_cont_18253 : 
	addi	r12 r0 0
	bne	r11 r12 L_else_18260
	add	r4 r7 r4
	ldi	r4 r4 0
	add	r5 r0 r9
	jump	L_do_without_neighbors_2878
L_else_18260 : 
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
	bne	r10 r11 L_else_18261
	jump	L_cont_18262
L_else_18261 : 
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
L_cont_18262 : 
	addi	r4 r0 1
	ldi	r5 r2 5
	add	r9 r5 r4
	ldi	r4 r2 4
	ldi	r5 r2 3
	ldi	r6 r2 2
	ldi	r7 r2 1
	ldi	r8 r2 0
	jump	L_try_exploit_neighbors_2894
L_else_18251 : 
	return
L_else_18250 : 
	return
L_pretrace_diffuse_rays_2907 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_18265
	ldi	r6 r4 2
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	bgt	r7 r6 L_else_18266
	ldi	r6 r4 3
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r4 r2 0
	sti	r5 r2 1
	bne	r6 r7 L_else_18267
	jump	L_cont_18268
L_else_18267 : 
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
L_cont_18268 : 
	addi	r4 r0 1
	ldi	r5 r2 1
	add	r5 r5 r4
	ldi	r4 r2 0
	jump	L_pretrace_diffuse_rays_2907
L_else_18266 : 
	return
L_else_18265 : 
	return
L_pretrace_pixels_2910 : 
	addi	r7 r0 0
	bgt	r7 r5 L_else_18271
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
	bgt	r6 r4 L_else_18272
	addi	r6 r0 5
	sub	r6 r4 r6
	jump	L_cont_18273
L_else_18272 : 
	add	r6 r0 r4
L_cont_18273 : 
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r4 r2 8
	jump	L_pretrace_pixels_2910
L_else_18271 : 
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
	bgt	r9 r4 L_else_18275
	return
L_else_18275 : 
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
	bgt	r4 r5 L_else_18277
	addi	r4 r0 0
	jump	L_cont_18278
L_else_18277 : 
	addi	r4 r0 0
	bgt	r6 r4 L_else_18279
	addi	r4 r0 0
	jump	L_cont_18280
L_else_18279 : 
	addi	r4 r0 4130
	addi	r5 r0 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r5 r0 1
	ldi	r7 r2 3
	add	r5 r7 r5
	bgt	r4 r5 L_else_18281
	addi	r4 r0 0
	jump	L_cont_18282
L_else_18281 : 
	addi	r4 r0 0
	bgt	r7 r4 L_else_18283
	addi	r4 r0 0
	jump	L_cont_18284
L_else_18283 : 
	addi	r4 r0 1
L_cont_18284 : 
L_cont_18282 : 
L_cont_18280 : 
L_cont_18278 : 
	addi	r5 r0 0
	bne	r4 r5 L_else_18285
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
	jump	L_cont_18286
L_else_18285 : 
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
L_cont_18286 : 
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
	bgt	r9 r4 L_else_18287
	return
L_else_18287 : 
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
	bgt	r9 r4 L_else_18289
	jump	L_cont_18290
L_else_18289 : 
	addi	r9 r0 1
	add	r9 r4 r9
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_pretrace_line_2917
	subi	r2 r2 6
L_cont_18290 : 
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
	bgt	r6 r5 L_else_18291
	addi	r6 r0 5
	sub	r8 r5 r6
	jump	L_cont_18292
L_else_18291 : 
	add	r8 r0 r5
L_cont_18292 : 
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
	bgt	r6 r5 L_else_18293
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
	bgt	r5 r4 L_else_18294
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
L_else_18294 : 
	add	r4 r0 r6
	return
L_else_18293 : 
	add	r4 r0 r4
	return
L_calc_dirvec_2947 : 
	addi	r7 r0 5
	bgt	r7 r4 L_else_18295
	fmul	f4 f2 f2
	fmul	f5 f3 f3
	fadd	f4 f4 f5
	fldi	f5 r0 45
	fadd	f4 f4 f5
	fldi	f5 r0 28
	fldi	f6 r0 45
	fbgt	f4 f6 L_else_18296
	fldi	f6 r0 45
	jump	L_cont_18297
L_else_18296 : 
	fldi	f6 r0 45
	fdiv	f6 f6 f4
L_cont_18297 : 
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
L_else_18295 : 
	fmul	f2 f3 f3
	fldi	f3 r0 7
	fadd	f2 f2 f3
	fldi	f3 r0 28
	fldi	f6 r0 45
	fbgt	f2 f6 L_else_18299
	fldi	f6 r0 45
	jump	L_cont_18300
L_else_18299 : 
	fldi	f6 r0 45
	fdiv	f6 f6 f2
L_cont_18300 : 
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
	fbgt	f3 f5 L_else_18302
	fldi	f5 r0 45
	jump	L_cont_18303
L_else_18302 : 
	fldi	f5 r0 45
	fdiv	f5 f5 f3
L_cont_18303 : 
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
	bgt	r7 r4 L_else_18305
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
	bgt	r6 r5 L_else_18306
	addi	r6 r0 5
	sub	r5 r5 r6
	jump	L_cont_18307
L_else_18306 : 
	add	r5 r0 r5
L_cont_18307 : 
	fldi	f2 r2 0
	ldi	r6 r2 3
	jump	L_calc_dirvecs_2955
L_else_18305 : 
	return
L_calc_dirvec_rows_2960 : 
	addi	r7 r0 0
	bgt	r7 r4 L_else_18309
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
	bgt	r6 r5 L_else_18310
	addi	r6 r0 5
	sub	r5 r5 r6
	jump	L_cont_18311
L_else_18310 : 
	add	r5 r0 r5
L_cont_18311 : 
	addi	r6 r0 4
	ldi	r7 r2 0
	add	r6 r7 r6
	jump	L_calc_dirvec_rows_2960
L_else_18309 : 
	return
L_create_dirvec_elements_2966 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_18313
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
	bgt	r5 r4 L_else_18314
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
L_else_18314 : 
	return
L_else_18313 : 
	return
L_create_dirvecs_2969 : 
	addi	r5 r0 0
	bgt	r5 r4 L_else_18317
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
L_else_18317 : 
	return
L_init_dirvec_constants_2971 : 
	addi	r6 r0 0
	bgt	r6 r5 L_else_18319
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
	bgt	r5 r4 L_else_18320
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
L_else_18320 : 
	return
L_else_18319 : 
	return
L_init_vecset_constants_2974 : 
	addi	r5 r0 0
	bgt	r5 r4 L_else_18323
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
	bgt	r5 r4 L_else_18324
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
L_else_18324 : 
	return
L_else_18323 : 
	return
L_main_17562 : 
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
	bgt	r6 r5 L_else_17563
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
	jump	L_cont_17564
L_else_17563 : 
	add	r4 r0 r4
L_cont_17564 : 
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
	bgt	r6 r5 L_else_17565
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
	jump	L_cont_17566
L_else_17565 : 
	add	r4 r0 r4
L_cont_17566 : 
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
	bgt	r6 r5 L_else_17567
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
	jump	L_cont_17568
L_else_17567 : 
	add	r4 r0 r4
L_cont_17568 : 
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
	bgt	r5 r6 L_else_17569
	addi	r5 r0 10
	sub	r5 r4 r5
	addi	r6 r0 1
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17570
L_else_17569 : 
	addi	r4 r0 0
L_cont_17570 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_17571
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17572
L_else_17571 : 
	addi	r4 r0 0
L_cont_17572 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 40
	call	min_caml_print_char
	subi	r2 r2 40
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 38
	sub	r5 r6 r5
	bgt	r4 r5 L_else_17573
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 1
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
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
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17576
L_else_17575 : 
	addi	r4 r0 0
L_cont_17576 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 38
	sub	r4 r5 r4
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_17577
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r0 r6
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17578
L_else_17577 : 
	addi	r4 r0 0
L_cont_17578 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 40
	call	min_caml_print_char
	subi	r2 r2 40
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 38
	sub	r5 r6 r5
	bgt	r4 r5 L_else_17579
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 1
	addi	r2 r2 40
	call	L_sdiv10_2505
	subi	r2 r2 40
	jump	L_cont_17580
L_else_17579 : 
	addi	r4 r0 0
L_cont_17580 : 
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
	bgt	r5 r6 L_else_17581
	addi	r5 r0 10
	sub	r5 r4 r5
	addi	r6 r0 1
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17582
L_else_17581 : 
	addi	r4 r0 0
L_cont_17582 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_17583
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17584
L_else_17583 : 
	addi	r4 r0 0
L_cont_17584 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 41
	call	min_caml_print_char
	subi	r2 r2 41
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 39
	sub	r5 r6 r5
	bgt	r4 r5 L_else_17585
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 1
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17586
L_else_17585 : 
	addi	r4 r0 0
L_cont_17586 : 
	addi	r5 r0 0
	addi	r6 r0 10
	sub	r6 r4 r6
	bgt	r5 r6 L_else_17587
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17588
L_else_17587 : 
	addi	r4 r0 0
L_cont_17588 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 39
	sub	r4 r5 r4
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_17589
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r0 r6
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17590
L_else_17589 : 
	addi	r4 r0 0
L_cont_17590 : 
	addi	r5 r0 48
	add	r4 r4 r5
	addi	r2 r2 41
	call	min_caml_print_char
	subi	r2 r2 41
	addi	r4 r0 0
	addi	r5 r0 10
	ldi	r6 r2 39
	sub	r5 r6 r5
	bgt	r4 r5 L_else_17591
	addi	r4 r0 10
	sub	r4 r6 r4
	addi	r5 r0 1
	addi	r2 r2 41
	call	L_sdiv10_2505
	subi	r2 r2 41
	jump	L_cont_17592
L_else_17591 : 
	addi	r4 r0 0
L_cont_17592 : 
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
	bgt	r5 r6 L_else_17593
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 42
	call	L_sdiv10_2505
	subi	r2 r2 42
	jump	L_cont_17594
L_else_17593 : 
	addi	r4 r0 0
L_cont_17594 : 
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
	bgt	r5 r6 L_else_17595
	addi	r5 r0 10
	sub	r4 r4 r5
	addi	r5 r0 1
	addi	r2 r2 42
	call	L_sdiv10_2505
	subi	r2 r2 42
	jump	L_cont_17596
L_else_17595 : 
	addi	r4 r0 0
L_cont_17596 : 
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 40
	sub	r4 r5 r4
	addi	r6 r0 0
	addi	r7 r0 10
	sub	r7 r4 r7
	bgt	r6 r7 L_else_17597
	addi	r6 r0 10
	sub	r4 r4 r6
	addi	r6 r0 1
	add	r5 r0 r6
	addi	r2 r2 42
	call	L_sdiv10_2505
	subi	r2 r2 42
	jump	L_cont_17598
L_else_17597 : 
	addi	r4 r0 0
L_cont_17598 : 
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
	bgt	r5 r4 L_else_17599
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	ldi	r6 r5 2
	addi	r7 r0 2
	bne	r6 r7 L_else_17601
	ldi	r6 r5 7
	addi	r7 r0 0
	add	r6 r6 r7
	fldi	f2 r6 0
	fldi	f3 r0 45
	fbgt	f3 f2 L_else_17603
	addi	r6 r0 0
	jump	L_cont_17604
L_else_17603 : 
	addi	r6 r0 1
L_cont_17604 : 
	addi	r7 r0 0
	bne	r6 r7 L_else_17605
	jump	L_cont_17606
L_else_17605 : 
	ldi	r6 r5 1
	addi	r7 r0 1
	bne	r6 r7 L_else_17607
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
	jump	L_cont_17608
L_else_17607 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_17611
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
	jump	L_cont_17612
L_else_17611 : 
L_cont_17612 : 
L_cont_17608 : 
L_cont_17606 : 
	jump	L_cont_17602
L_else_17601 : 
L_cont_17602 : 
	jump	L_cont_17600
L_else_17599 : 
L_cont_17600 : 
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
