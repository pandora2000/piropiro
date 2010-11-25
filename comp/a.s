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
	jump	L_main_8690
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
	bne	r5 r0 L_else_8711
	return
L_else_8711 : 
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
	bne	r5 r0 L_else_8713
	return
L_else_8713 : 
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
L_fiszero_1863 : 
	fbne	f2 f0 L_else_8715
	addi	r4 r0 1
	return
L_else_8715 : 
	addi	r4 r0 0
	return
L_fispos_1865 : 
	fbgt	f2 f0 L_else_8716
	addi	r4 r0 0
	return
L_else_8716 : 
	addi	r4 r0 1
	return
L_fisneg_1867 : 
	fbgt	f0 f2 L_else_8717
	addi	r4 r0 0
	return
L_else_8717 : 
	addi	r4 r0 1
	return
L_fabs_1869 : 
	fbgt	f0 f2 L_else_8718
	fadd	f2 f0 f2
	return
L_else_8718 : 
	fsub	f2 f0 f2
	return
L_fless_1871 : 
	fbgt	f3 f2 L_else_8719
	addi	r4 r0 0
	return
L_else_8719 : 
	addi	r4 r0 1
	return
L_fhalf_1874 : 
	fldi	f3 r0 56
	fdiv	f2 f2 f3
	return
L_fneg_1876 : 
	fsub	f2 f0 f2
	return
L_fsqr_1878 : 
	fmul	f2 f2 f2
	return
L_psin_1880 : 
	fmul	f3 f2 f2
	fmul	f4 f2 f3
	fmul	f5 f4 f3
	fmul	f6 f5 f3
	fmul	f7 f6 f3
	fmul	f8 f7 f3
	fmul	f3 f8 f3
	fldi	f9 r0 55
	fmul	f3 f9 f3
	fldi	f9 r0 54
	fmul	f8 f9 f8
	fsub	f3 f3 f8
	fldi	f8 r0 53
	fmul	f7 f8 f7
	fadd	f3 f3 f7
	fldi	f7 r0 52
	fmul	f6 f7 f6
	fsub	f3 f3 f6
	fldi	f6 r0 51
	fmul	f5 f6 f5
	fadd	f3 f3 f5
	fldi	f5 r0 50
	fmul	f4 f5 f4
	fsub	f3 f3 f4
	fadd	f2 f3 f2
	return
L_pcos_1882 : 
	fmul	f2 f2 f2
	fmul	f3 f2 f2
	fmul	f4 f3 f2
	fmul	f5 f4 f2
	fmul	f6 f5 f2
	fmul	f7 f6 f2
	fldi	f8 r0 49
	fmul	f7 f8 f7
	fldi	f8 r0 48
	fmul	f6 f8 f6
	fsub	f6 f7 f6
	fldi	f7 r0 47
	fmul	f5 f7 f5
	fadd	f5 f6 f5
	fldi	f6 r0 46
	fmul	f4 f6 f4
	fsub	f4 f5 f4
	fldi	f5 r0 45
	fmul	f3 f5 f3
	fadd	f3 f4 f3
	fldi	f4 r0 44
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fldi	f3 r0 43
	fadd	f2 f2 f3
	return
L_sin_1884 : 
	fldi	f3 r0 42
	fldi	f4 r0 41
	fbgt	f2 f4 L_else_8720
	fldi	f5 r0 40
	fbgt	f5 f2 L_else_8721
	fldi	f3 r0 39
	fldi	f5 r0 38
	fldi	f6 r0 37
	fbgt	f2 f0 L_else_8722
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_8723
	jump	L_psin_1880
L_else_8723 : 
	fldi	f3 r0 35
	fbgt	f3 f2 L_else_8724
	fadd	f2 f5 f2
	addi	r2 r2 1
	call	L_pcos_1882
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_8724 : 
	fadd	f2 f4 f2
	addi	r2 r2 1
	call	L_psin_1880
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_8722 : 
	fbgt	f2 f3 L_else_8725
	jump	L_psin_1880
L_else_8725 : 
	fbgt	f2 f6 L_else_8726
	fsub	f2 f2 f5
	jump	L_pcos_1882
L_else_8726 : 
	fsub	f2 f4 f2
	jump	L_psin_1880
L_else_8721 : 
	fadd	f2 f2 f3
	jump	L_sin_1884
L_else_8720 : 
	fsub	f2 f2 f3
	jump	L_sin_1884
L_cos_1886 : 
	fldi	f3 r0 42
	fldi	f4 r0 41
	fbgt	f2 f4 L_else_8727
	fldi	f5 r0 40
	fbgt	f5 f2 L_else_8728
	fldi	f3 r0 39
	fldi	f5 r0 38
	fldi	f6 r0 37
	fbgt	f2 f0 L_else_8729
	fldi	f3 r0 36
	fbgt	f3 f2 L_else_8730
	jump	L_pcos_1882
L_else_8730 : 
	fldi	f3 r0 35
	fbgt	f3 f2 L_else_8731
	fadd	f2 f2 f5
	jump	L_psin_1880
L_else_8731 : 
	fadd	f2 f4 f2
	addi	r2 r2 1
	call	L_pcos_1882
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_8729 : 
	fbgt	f2 f3 L_else_8732
	jump	L_pcos_1882
L_else_8732 : 
	fbgt	f2 f6 L_else_8733
	fsub	f2 f2 f5
	addi	r2 r2 1
	call	L_psin_1880
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_8733 : 
	fsub	f2 f4 f2
	addi	r2 r2 1
	call	L_pcos_1882
	subi	r2 r2 1
	fsub	f2 f0 f2
	return
L_else_8728 : 
	fadd	f2 f2 f3
	jump	L_cos_1886
L_else_8727 : 
	fsub	f2 f2 f3
	jump	L_cos_1886
L_atan_1888 : 
	fmul	f3 f2 f2
	fldi	f4 r0 43
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
L_isqrt_1890 : 
	bne	r4 r0 L_else_8734
	fadd	f2 f0 f3
	return
L_else_8734 : 
	fldi	f4 r0 29
	fmul	f5 f2 f3
	fmul	f5 f5 f3
	fsub	f4 f4 f5
	fmul	f3 f3 f4
	fldi	f4 r0 56
	fdiv	f3 f3 f4
	addi	r4 r4 -1
	jump	L_isqrt_1890
L_sqrt_1894 : 
	fldi	f3 r0 43
	fbgt	f2 f3 L_else_8735
	fldi	f3 r0 43
	jump	L_cont_8736
L_else_8735 : 
	fldi	f3 r0 43
	fdiv	f3 f3 f2
L_cont_8736 : 
	addi	r4 r0 15
	fsti	f2 r2 0
	addi	r2 r2 3
	call	L_isqrt_1890
	subi	r2 r2 3
	fldi	f3 r2 0
	fmul	f2 f3 f2
	return
L_sdiv10_1896 : 
	addi	r6 r4 -10
	bgt	r0 r6 L_else_8737
	addi	r4 r4 -10
	addi	r5 r5 1
	jump	L_sdiv10_1896
L_else_8737 : 
	add	r4 r0 r5
	return
L_sgn_1903 : 
	fsti	f2 r2 0
	addi	r2 r2 3
	call	L_fiszero_1863
	subi	r2 r2 3
	bne	r4 r0 L_else_8738
	fldi	f2 r2 0
	addi	r2 r2 3
	call	L_fispos_1865
	subi	r2 r2 3
	bne	r4 r0 L_else_8739
	fldi	f2 r0 27
	return
L_else_8739 : 
	fldi	f2 r0 43
	return
L_else_8738 : 
	fldi	f2 r0 28
	return
L_fneg_cond_1905 : 
	bne	r4 r0 L_else_8740
	jump	L_fneg_1876
L_else_8740 : 
	fadd	f2 f0 f2
	return
L_add_mod5_1908 : 
	add	r4 r4 r5
	addi	r5 r0 5
	bgt	r5 r4 L_else_8741
	addi	r4 r4 -5
	return
L_else_8741 : 
	add	r4 r0 r4
	return
L_vecset_1911 : 
	fsti	f2 r4 0
	fsti	f3 r4 1
	fsti	f4 r4 2
	return
L_vecbzero_1919 : 
	fldi	f2 r0 28
	fsti	f2 r4 0
	fsti	f2 r4 1
	fsti	f2 r4 2
	return
L_veccpy_1921 : 
	fldi	f2 r5 0
	fsti	f2 r4 0
	fldi	f2 r5 1
	fsti	f2 r4 1
	fldi	f2 r5 2
	fsti	f2 r4 2
	return
L_vecunit_sgn_1929 : 
	fldi	f2 r4 0
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 3
	call	L_fsqr_1878
	subi	r2 r2 3
	ldi	r4 r2 1
	fldi	f3 r4 1
	fsti	f2 r2 2
	fadd	f2 f0 f3
	addi	r2 r2 5
	call	L_fsqr_1878
	subi	r2 r2 5
	fldi	f3 r2 2
	fadd	f2 f3 f2
	ldi	r4 r2 1
	fldi	f3 r4 2
	fsti	f2 r2 4
	fadd	f2 f0 f3
	addi	r2 r2 7
	call	L_fsqr_1878
	subi	r2 r2 7
	fldi	f3 r2 4
	fadd	f2 f3 f2
	addi	r2 r2 7
	call	L_sqrt_1894
	subi	r2 r2 7
	fsti	f2 r2 6
	addi	r2 r2 9
	call	L_fiszero_1863
	subi	r2 r2 9
	bne	r4 r0 L_else_8745
	ldi	r4 r2 0
	bne	r4 r0 L_else_8747
	fldi	f2 r0 43
	fldi	f3 r2 6
	fdiv	f2 f2 f3
	jump	L_cont_8748
L_else_8747 : 
	fldi	f2 r0 27
	fldi	f3 r2 6
	fdiv	f2 f2 f3
L_cont_8748 : 
	jump	L_cont_8746
L_else_8745 : 
	fldi	f2 r0 43
L_cont_8746 : 
	ldi	r4 r2 1
	fldi	f3 r4 0
	fmul	f3 f3 f2
	fsti	f3 r4 0
	fldi	f3 r4 1
	fmul	f3 f3 f2
	fsti	f3 r4 1
	fldi	f3 r4 2
	fmul	f2 f3 f2
	fsti	f2 r4 2
	return
L_veciprod_1932 : 
	fldi	f2 r4 0
	fldi	f3 r5 0
	fmul	f2 f2 f3
	fldi	f3 r4 1
	fldi	f4 r5 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r4 2
	fldi	f4 r5 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	return
L_veciprod2_1935 : 
	fldi	f5 r4 0
	fmul	f2 f5 f2
	fldi	f5 r4 1
	fmul	f3 f5 f3
	fadd	f2 f2 f3
	fldi	f3 r4 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	return
L_vecaccum_1940 : 
	fldi	f3 r4 0
	fldi	f4 r5 0
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	fsti	f3 r4 0
	fldi	f3 r4 1
	fldi	f4 r5 1
	fmul	f4 f2 f4
	fadd	f3 f3 f4
	fsti	f3 r4 1
	fldi	f3 r4 2
	fldi	f4 r5 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	fsti	f2 r4 2
	return
L_vecaccumv_1953 : 
	fldi	f2 r4 0
	fldi	f3 r5 0
	fldi	f4 r6 0
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r4 0
	fldi	f2 r4 1
	fldi	f3 r5 1
	fldi	f4 r6 1
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r4 1
	fldi	f2 r4 2
	fldi	f3 r5 2
	fldi	f4 r6 2
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r4 2
	return
L_o_form_1959 : 
	ldi	r4 r4 1
	add	r4 r0 r4
	return
L_o_reflectiontype_1961 : 
	ldi	r4 r4 2
	add	r4 r0 r4
	return
L_o_isinvert_1963 : 
	ldi	r4 r4 6
	add	r4 r0 r4
	return
L_o_isrot_1965 : 
	ldi	r4 r4 3
	add	r4 r0 r4
	return
L_o_param_a_1967 : 
	ldi	r4 r4 4
	fldi	f2 r4 0
	return
L_o_param_b_1969 : 
	ldi	r4 r4 4
	fldi	f2 r4 1
	return
L_o_param_c_1971 : 
	ldi	r4 r4 4
	fldi	f2 r4 2
	return
L_o_param_abc_1973 : 
	ldi	r4 r4 4
	add	r4 r0 r4
	return
L_o_param_x_1975 : 
	ldi	r4 r4 5
	fldi	f2 r4 0
	return
L_o_param_y_1977 : 
	ldi	r4 r4 5
	fldi	f2 r4 1
	return
L_o_param_z_1979 : 
	ldi	r4 r4 5
	fldi	f2 r4 2
	return
L_o_diffuse_1981 : 
	ldi	r4 r4 7
	fldi	f2 r4 0
	return
L_o_param_r1_1991 : 
	ldi	r4 r4 9
	fldi	f2 r4 0
	return
L_o_param_r2_1993 : 
	ldi	r4 r4 9
	fldi	f2 r4 1
	return
L_o_param_r3_1995 : 
	ldi	r4 r4 9
	fldi	f2 r4 2
	return
L_o_param_ctbl_1997 : 
	ldi	r4 r4 10
	add	r4 r0 r4
	return
L_p_rgb_1999 : 
	ldi	r4 r4 0
	add	r4 r0 r4
	return
L_p_intersection_points_2001 : 
	ldi	r4 r4 1
	add	r4 r0 r4
	return
L_p_surface_ids_2003 : 
	ldi	r4 r4 2
	add	r4 r0 r4
	return
L_p_calc_diffuse_2005 : 
	ldi	r4 r4 3
	add	r4 r0 r4
	return
L_p_energy_2007 : 
	ldi	r4 r4 4
	add	r4 r0 r4
	return
L_p_received_ray_20percent_2009 : 
	ldi	r4 r4 5
	add	r4 r0 r4
	return
L_p_group_id_2011 : 
	ldi	r4 r4 6
	ldi	r4 r4 0
	return
L_p_nvectors_2016 : 
	ldi	r4 r4 7
	add	r4 r0 r4
	return
L_d_vec_2018 : 
	ldi	r4 r4 0
	add	r4 r0 r4
	return
L_d_const_2020 : 
	ldi	r4 r4 1
	add	r4 r0 r4
	return
L_rad_2028 : 
	fldi	f3 r0 26
	fmul	f2 f2 f3
	return
L_read_object_2039 : 
	addi	r5 r0 60
	bgt	r5 r4 L_else_8752
	return
L_else_8752 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_8754
	addi	r4 r0 0
	jump	L_cont_8755
L_else_8754 : 
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
	fldi	f2 r0 28
	sti	r4 r2 4
	add	r4 r0 r5
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	sti	r4 r2 5
	addi	r2 r2 7
	call	min_caml_read_float
	subi	r2 r2 7
	ldi	r4 r2 5
	fsti	f2 r4 0
	addi	r2 r2 7
	call	min_caml_read_float
	subi	r2 r2 7
	ldi	r4 r2 5
	fsti	f2 r4 1
	addi	r2 r2 7
	call	min_caml_read_float
	subi	r2 r2 7
	ldi	r4 r2 5
	fsti	f2 r4 2
	addi	r5 r0 3
	fldi	f2 r0 28
	add	r4 r0 r5
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	sti	r4 r2 6
	addi	r2 r2 8
	call	min_caml_read_float
	subi	r2 r2 8
	ldi	r4 r2 6
	fsti	f2 r4 0
	addi	r2 r2 8
	call	min_caml_read_float
	subi	r2 r2 8
	ldi	r4 r2 6
	fsti	f2 r4 1
	addi	r2 r2 8
	call	min_caml_read_float
	subi	r2 r2 8
	ldi	r4 r2 6
	fsti	f2 r4 2
	addi	r2 r2 8
	call	min_caml_read_float
	subi	r2 r2 8
	addi	r2 r2 8
	call	L_fisneg_1867
	subi	r2 r2 8
	addi	r5 r0 2
	fldi	f2 r0 28
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	sti	r4 r2 8
	addi	r2 r2 10
	call	min_caml_read_float
	subi	r2 r2 10
	ldi	r4 r2 8
	fsti	f2 r4 0
	addi	r2 r2 10
	call	min_caml_read_float
	subi	r2 r2 10
	ldi	r4 r2 8
	fsti	f2 r4 1
	addi	r5 r0 3
	fldi	f2 r0 28
	add	r4 r0 r5
	addi	r2 r2 10
	call	min_caml_create_float_array
	subi	r2 r2 10
	sti	r4 r2 9
	addi	r2 r2 11
	call	min_caml_read_float
	subi	r2 r2 11
	ldi	r4 r2 9
	fsti	f2 r4 0
	addi	r2 r2 11
	call	min_caml_read_float
	subi	r2 r2 11
	ldi	r4 r2 9
	fsti	f2 r4 1
	addi	r2 r2 11
	call	min_caml_read_float
	subi	r2 r2 11
	ldi	r4 r2 9
	fsti	f2 r4 2
	addi	r5 r0 3
	fldi	f2 r0 28
	add	r4 r0 r5
	addi	r2 r2 11
	call	min_caml_create_float_array
	subi	r2 r2 11
	ldi	r5 r2 4
	bne	r5 r0 L_else_8756
	jump	L_cont_8757
L_else_8756 : 
	sti	r4 r2 10
	addi	r2 r2 12
	call	min_caml_read_float
	subi	r2 r2 12
	addi	r2 r2 12
	call	L_rad_2028
	subi	r2 r2 12
	ldi	r4 r2 10
	fsti	f2 r4 0
	addi	r2 r2 12
	call	min_caml_read_float
	subi	r2 r2 12
	addi	r2 r2 12
	call	L_rad_2028
	subi	r2 r2 12
	ldi	r4 r2 10
	fsti	f2 r4 1
	addi	r2 r2 12
	call	min_caml_read_float
	subi	r2 r2 12
	addi	r2 r2 12
	call	L_rad_2028
	subi	r2 r2 12
	ldi	r4 r2 10
	fsti	f2 r4 2
L_cont_8757 : 
	addi	r5 r0 2
	ldi	r6 r2 2
	bne	r6 r5 L_else_8758
	addi	r5 r0 1
	jump	L_cont_8759
L_else_8758 : 
	ldi	r5 r2 7
	add	r5 r0 r5
L_cont_8759 : 
	addi	r7 r0 4
	fldi	f2 r0 28
	sti	r5 r2 11
	sti	r4 r2 10
	add	r4 r0 r7
	addi	r2 r2 13
	call	min_caml_create_float_array
	subi	r2 r2 13
	add	r5 r0 r3
	addi	r3 r3 11
	sti	r4 r5 10
	ldi	r4 r2 10
	sti	r4 r5 9
	ldi	r6 r2 9
	sti	r6 r5 8
	ldi	r6 r2 8
	sti	r6 r5 7
	ldi	r6 r2 11
	sti	r6 r5 6
	ldi	r6 r2 6
	sti	r6 r5 5
	ldi	r6 r2 5
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
	bne	r8 r5 L_else_8760
	fldi	f2 r6 0
	fsti	f2 r2 12
	addi	r2 r2 15
	call	L_fiszero_1863
	subi	r2 r2 15
	bne	r4 r0 L_else_8762
	fldi	f2 r2 12
	addi	r2 r2 15
	call	L_sgn_1903
	subi	r2 r2 15
	fldi	f3 r2 12
	fsti	f2 r2 14
	fadd	f2 f0 f3
	addi	r2 r2 17
	call	L_fsqr_1878
	subi	r2 r2 17
	fldi	f3 r2 14
	fdiv	f2 f3 f2
	jump	L_cont_8763
L_else_8762 : 
	fldi	f2 r0 28
L_cont_8763 : 
	ldi	r4 r2 5
	fsti	f2 r4 0
	fldi	f2 r4 1
	fsti	f2 r2 16
	addi	r2 r2 19
	call	L_fiszero_1863
	subi	r2 r2 19
	bne	r4 r0 L_else_8764
	fldi	f2 r2 16
	addi	r2 r2 19
	call	L_sgn_1903
	subi	r2 r2 19
	fldi	f3 r2 16
	fsti	f2 r2 18
	fadd	f2 f0 f3
	addi	r2 r2 21
	call	L_fsqr_1878
	subi	r2 r2 21
	fldi	f3 r2 18
	fdiv	f2 f3 f2
	jump	L_cont_8765
L_else_8764 : 
	fldi	f2 r0 28
L_cont_8765 : 
	ldi	r4 r2 5
	fsti	f2 r4 1
	fldi	f2 r4 2
	fsti	f2 r2 20
	addi	r2 r2 23
	call	L_fiszero_1863
	subi	r2 r2 23
	bne	r4 r0 L_else_8766
	fldi	f2 r2 20
	addi	r2 r2 23
	call	L_sgn_1903
	subi	r2 r2 23
	fldi	f3 r2 20
	fsti	f2 r2 22
	fadd	f2 f0 f3
	addi	r2 r2 25
	call	L_fsqr_1878
	subi	r2 r2 25
	fldi	f3 r2 22
	fdiv	f2 f3 f2
	jump	L_cont_8767
L_else_8766 : 
	fldi	f2 r0 28
L_cont_8767 : 
	ldi	r4 r2 5
	fsti	f2 r4 2
	jump	L_cont_8761
L_else_8760 : 
	addi	r5 r0 2
	bne	r8 r5 L_else_8768
	addi	r5 r0 1
	ldi	r8 r2 7
	sub	r5 r5 r8
	add	r4 r0 r6
	addi	r2 r2 25
	call	L_vecunit_sgn_1929
	subi	r2 r2 25
	jump	L_cont_8769
L_else_8768 : 
L_cont_8769 : 
L_cont_8761 : 
	ldi	r4 r2 4
	bne	r4 r0 L_else_8770
	jump	L_cont_8771
L_else_8770 : 
	ldi	r4 r2 10
	fldi	f2 r4 0
	addi	r2 r2 25
	call	L_cos_1886
	subi	r2 r2 25
	ldi	r4 r2 10
	fldi	f3 r4 0
	fsti	f2 r2 24
	fadd	f2 f0 f3
	addi	r2 r2 27
	call	L_sin_1884
	subi	r2 r2 27
	ldi	r4 r2 10
	fldi	f3 r4 1
	fsti	f2 r2 26
	fadd	f2 f0 f3
	addi	r2 r2 29
	call	L_cos_1886
	subi	r2 r2 29
	ldi	r4 r2 10
	fldi	f3 r4 1
	fsti	f2 r2 28
	fadd	f2 f0 f3
	addi	r2 r2 31
	call	L_sin_1884
	subi	r2 r2 31
	ldi	r4 r2 10
	fldi	f3 r4 2
	fsti	f2 r2 30
	fadd	f2 f0 f3
	addi	r2 r2 33
	call	L_cos_1886
	subi	r2 r2 33
	ldi	r4 r2 10
	fldi	f3 r4 2
	fsti	f2 r2 32
	fadd	f2 f0 f3
	addi	r2 r2 35
	call	L_sin_1884
	subi	r2 r2 35
	fldi	f3 r2 32
	fldi	f4 r2 28
	fmul	f5 f4 f3
	fldi	f6 r2 30
	fldi	f7 r2 26
	fmul	f8 f7 f6
	fmul	f8 f8 f3
	fldi	f9 r2 24
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
	fsti	f2 r2 34
	fsti	f10 r2 36
	fsti	f12 r2 38
	fsti	f8 r2 40
	fsti	f11 r2 42
	fsti	f5 r2 44
	fadd	f2 f0 f6
	addi	r2 r2 47
	call	L_fneg_1876
	subi	r2 r2 47
	fldi	f3 r2 28
	fldi	f4 r2 26
	fmul	f4 f4 f3
	fldi	f5 r2 24
	fmul	f3 f5 f3
	ldi	r4 r2 5
	fldi	f5 r4 0
	fldi	f6 r4 1
	fldi	f7 r4 2
	fldi	f8 r2 44
	fsti	f3 r2 46
	fsti	f4 r2 48
	fsti	f7 r2 50
	fsti	f2 r2 52
	fsti	f6 r2 54
	fsti	f5 r2 56
	fadd	f2 f0 f8
	addi	r2 r2 59
	call	L_fsqr_1878
	subi	r2 r2 59
	fldi	f3 r2 56
	fmul	f2 f3 f2
	fldi	f4 r2 42
	fsti	f2 r2 58
	fadd	f2 f0 f4
	addi	r2 r2 61
	call	L_fsqr_1878
	subi	r2 r2 61
	fldi	f3 r2 54
	fmul	f2 f3 f2
	fldi	f4 r2 58
	fadd	f2 f4 f2
	fldi	f4 r2 52
	fsti	f2 r2 60
	fadd	f2 f0 f4
	addi	r2 r2 63
	call	L_fsqr_1878
	subi	r2 r2 63
	fldi	f3 r2 50
	fmul	f2 f3 f2
	fldi	f4 r2 60
	fadd	f2 f4 f2
	ldi	r4 r2 5
	fsti	f2 r4 0
	fldi	f2 r2 40
	addi	r2 r2 63
	call	L_fsqr_1878
	subi	r2 r2 63
	fldi	f3 r2 56
	fmul	f2 f3 f2
	fldi	f4 r2 38
	fsti	f2 r2 62
	fadd	f2 f0 f4
	addi	r2 r2 65
	call	L_fsqr_1878
	subi	r2 r2 65
	fldi	f3 r2 54
	fmul	f2 f3 f2
	fldi	f4 r2 62
	fadd	f2 f4 f2
	fldi	f4 r2 48
	fsti	f2 r2 64
	fadd	f2 f0 f4
	addi	r2 r2 67
	call	L_fsqr_1878
	subi	r2 r2 67
	fldi	f3 r2 50
	fmul	f2 f3 f2
	fldi	f4 r2 64
	fadd	f2 f4 f2
	ldi	r4 r2 5
	fsti	f2 r4 1
	fldi	f2 r2 36
	addi	r2 r2 67
	call	L_fsqr_1878
	subi	r2 r2 67
	fldi	f3 r2 56
	fmul	f2 f3 f2
	fldi	f4 r2 34
	fsti	f2 r2 66
	fadd	f2 f0 f4
	addi	r2 r2 69
	call	L_fsqr_1878
	subi	r2 r2 69
	fldi	f3 r2 54
	fmul	f2 f3 f2
	fldi	f4 r2 66
	fadd	f2 f4 f2
	fldi	f4 r2 46
	fsti	f2 r2 68
	fadd	f2 f0 f4
	addi	r2 r2 71
	call	L_fsqr_1878
	subi	r2 r2 71
	fldi	f3 r2 50
	fmul	f2 f3 f2
	fldi	f4 r2 68
	fadd	f2 f4 f2
	ldi	r4 r2 5
	fsti	f2 r4 2
	fldi	f2 r0 56
	fldi	f4 r2 40
	fldi	f5 r2 56
	fmul	f6 f5 f4
	fldi	f7 r2 36
	fmul	f6 f6 f7
	fldi	f8 r2 38
	fldi	f9 r2 54
	fmul	f10 f9 f8
	fldi	f11 r2 34
	fmul	f10 f10 f11
	fadd	f6 f6 f10
	fldi	f10 r2 48
	fmul	f12 f3 f10
	fldi	f13 r2 46
	fmul	f12 f12 f13
	fadd	f6 f6 f12
	fmul	f2 f2 f6
	ldi	r4 r2 10
	fsti	f2 r4 0
	fldi	f2 r0 56
	fldi	f6 r2 44
	fmul	f12 f5 f6
	fmul	f7 f12 f7
	fldi	f12 r2 42
	fmul	f14 f9 f12
	fmul	f11 f14 f11
	fadd	f7 f7 f11
	fldi	f11 r2 52
	fmul	f14 f3 f11
	fmul	f13 f14 f13
	fadd	f7 f7 f13
	fmul	f2 f2 f7
	fsti	f2 r4 1
	fldi	f2 r0 56
	fmul	f5 f5 f6
	fmul	f4 f5 f4
	fmul	f5 f9 f12
	fmul	f5 f5 f8
	fadd	f4 f4 f5
	fmul	f3 f3 f11
	fmul	f3 f3 f10
	fadd	f3 f4 f3
	fmul	f2 f2 f3
	fsti	f2 r4 2
L_cont_8771 : 
	addi	r4 r0 1
L_cont_8755 : 
	bne	r4 r0 L_else_8772
	addi	r4 r0 4144
	ldi	r5 r2 0
	sti	r5 r4 0
	return
L_else_8772 : 
	ldi	r4 r2 0
	addi	r4 r4 1
	jump	L_read_object_2039
L_read_net_item_2043 : 
	sti	r4 r2 0
	addi	r2 r2 2
	call	min_caml_read_int
	subi	r2 r2 2
	addi	r5 r0 -1
	bne	r4 r5 L_else_8774
	ldi	r4 r2 0
	addi	r4 r4 1
	addi	r5 r0 -1
	jump	min_caml_create_array
L_else_8774 : 
	ldi	r5 r2 0
	addi	r6 r5 1
	sti	r4 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_read_net_item_2043
	subi	r2 r2 3
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 1
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_or_network_2045 : 
	addi	r5 r0 0
	sti	r4 r2 0
	add	r4 r0 r5
	addi	r2 r2 2
	call	L_read_net_item_2043
	subi	r2 r2 2
	add	r5 r0 r4
	ldi	r4 r5 0
	addi	r6 r0 -1
	bne	r4 r6 L_else_8775
	ldi	r4 r2 0
	addi	r4 r4 1
	jump	min_caml_create_array
L_else_8775 : 
	ldi	r4 r2 0
	addi	r6 r4 1
	sti	r5 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_read_or_network_2045
	subi	r2 r2 3
	ldi	r5 r2 0
	add	r5 r4 r5
	ldi	r6 r2 1
	sti	r6 r5 0
	add	r4 r0 r4
	return
L_read_and_network_2047 : 
	addi	r5 r0 0
	sti	r4 r2 0
	add	r4 r0 r5
	addi	r2 r2 2
	call	L_read_net_item_2043
	subi	r2 r2 2
	ldi	r5 r4 0
	addi	r6 r0 -1
	bne	r5 r6 L_else_8776
	return
L_else_8776 : 
	addi	r5 r0 4155
	ldi	r6 r2 0
	add	r5 r5 r6
	sti	r4 r5 0
	addi	r4 r6 1
	jump	L_read_and_network_2047
L_quadratic_2072 : 
	fsti	f2 r2 0
	fsti	f4 r2 2
	fsti	f3 r2 4
	sti	r4 r2 6
	addi	r2 r2 8
	call	L_fsqr_1878
	subi	r2 r2 8
	ldi	r4 r2 6
	fsti	f2 r2 8
	addi	r2 r2 11
	call	L_o_param_a_1967
	subi	r2 r2 11
	fldi	f3 r2 8
	fmul	f2 f3 f2
	fldi	f3 r2 4
	fsti	f2 r2 10
	fadd	f2 f0 f3
	addi	r2 r2 13
	call	L_fsqr_1878
	subi	r2 r2 13
	ldi	r4 r2 6
	fsti	f2 r2 12
	addi	r2 r2 15
	call	L_o_param_b_1969
	subi	r2 r2 15
	fldi	f3 r2 12
	fmul	f2 f3 f2
	fldi	f3 r2 10
	fadd	f2 f3 f2
	fldi	f3 r2 2
	fsti	f2 r2 14
	fadd	f2 f0 f3
	addi	r2 r2 17
	call	L_fsqr_1878
	subi	r2 r2 17
	ldi	r4 r2 6
	fsti	f2 r2 16
	addi	r2 r2 19
	call	L_o_param_c_1971
	subi	r2 r2 19
	fldi	f3 r2 16
	fmul	f2 f3 f2
	fldi	f3 r2 14
	fadd	f2 f3 f2
	ldi	r4 r2 6
	fsti	f2 r2 18
	addi	r2 r2 21
	call	L_o_isrot_1965
	subi	r2 r2 21
	bne	r4 r0 L_else_8779
	fldi	f2 r2 18
	fadd	f2 f0 f2
	return
L_else_8779 : 
	fldi	f2 r2 2
	fldi	f3 r2 4
	fmul	f4 f3 f2
	ldi	r4 r2 6
	fsti	f4 r2 20
	addi	r2 r2 23
	call	L_o_param_r1_1991
	subi	r2 r2 23
	fldi	f3 r2 20
	fmul	f2 f3 f2
	fldi	f3 r2 18
	fadd	f2 f3 f2
	fldi	f3 r2 0
	fldi	f4 r2 2
	fmul	f4 f4 f3
	ldi	r4 r2 6
	fsti	f2 r2 22
	fsti	f4 r2 24
	addi	r2 r2 27
	call	L_o_param_r2_1993
	subi	r2 r2 27
	fldi	f3 r2 24
	fmul	f2 f3 f2
	fldi	f3 r2 22
	fadd	f2 f3 f2
	fldi	f3 r2 4
	fldi	f4 r2 0
	fmul	f3 f4 f3
	ldi	r4 r2 6
	fsti	f2 r2 26
	fsti	f3 r2 28
	addi	r2 r2 31
	call	L_o_param_r3_1995
	subi	r2 r2 31
	fldi	f3 r2 28
	fmul	f2 f3 f2
	fldi	f3 r2 26
	fadd	f2 f3 f2
	return
L_solver_2091 : 
	addi	r7 r0 5042
	add	r4 r7 r4
	ldi	r4 r4 0
	fldi	f2 r6 0
	sti	r5 r2 0
	sti	r4 r2 1
	sti	r6 r2 2
	fsti	f2 r2 4
	addi	r2 r2 7
	call	L_o_param_x_1975
	subi	r2 r2 7
	fldi	f3 r2 4
	fsub	f2 f3 f2
	ldi	r4 r2 2
	fldi	f3 r4 1
	ldi	r5 r2 1
	fsti	f2 r2 6
	fsti	f3 r2 8
	add	r4 r0 r5
	addi	r2 r2 11
	call	L_o_param_y_1977
	subi	r2 r2 11
	fldi	f3 r2 8
	fsub	f2 f3 f2
	ldi	r4 r2 2
	fldi	f3 r4 2
	ldi	r4 r2 1
	fsti	f2 r2 10
	fsti	f3 r2 12
	addi	r2 r2 15
	call	L_o_param_z_1979
	subi	r2 r2 15
	fldi	f3 r2 12
	fsub	f2 f3 f2
	ldi	r4 r2 1
	fsti	f2 r2 14
	addi	r2 r2 17
	call	L_o_form_1959
	subi	r2 r2 17
	addi	r5 r0 1
	bne	r4 r5 L_else_8781
	addi	r4 r0 0
	addi	r5 r0 1
	addi	r6 r0 2
	ldi	r7 r2 0
	add	r8 r7 r4
	fldi	f2 r8 0
	sti	r6 r2 16
	sti	r5 r2 17
	sti	r4 r2 18
	addi	r2 r2 20
	call	L_fiszero_1863
	subi	r2 r2 20
	bne	r4 r0 L_else_8782
	ldi	r4 r2 1
	addi	r2 r2 20
	call	L_o_param_abc_1973
	subi	r2 r2 20
	ldi	r5 r2 1
	sti	r4 r2 19
	add	r4 r0 r5
	addi	r2 r2 21
	call	L_o_isinvert_1963
	subi	r2 r2 21
	ldi	r5 r2 18
	ldi	r6 r2 0
	add	r7 r6 r5
	fldi	f2 r7 0
	sti	r4 r2 20
	addi	r2 r2 22
	call	L_fisneg_1867
	subi	r2 r2 22
	ldi	r5 r2 20
	xor	r4 r5 r4
	ldi	r5 r2 18
	ldi	r6 r2 19
	add	r7 r6 r5
	fldi	f2 r7 0
	addi	r2 r2 22
	call	L_fneg_cond_1905
	subi	r2 r2 22
	fldi	f3 r2 6
	fsub	f2 f2 f3
	ldi	r4 r2 18
	ldi	r5 r2 0
	add	r4 r5 r4
	fldi	f4 r4 0
	fdiv	f2 f2 f4
	ldi	r4 r2 17
	add	r6 r5 r4
	fldi	f4 r6 0
	fmul	f4 f2 f4
	fldi	f5 r2 10
	fadd	f4 f4 f5
	fsti	f2 r2 22
	fadd	f2 f0 f4
	addi	r2 r2 25
	call	L_fabs_1869
	subi	r2 r2 25
	ldi	r4 r2 17
	ldi	r5 r2 19
	add	r4 r5 r4
	fldi	f3 r4 0
	addi	r2 r2 25
	call	L_fless_1871
	subi	r2 r2 25
	bne	r4 r0 L_else_8785
	addi	r4 r0 0
	jump	L_cont_8786
L_else_8785 : 
	ldi	r4 r2 16
	ldi	r5 r2 0
	add	r6 r5 r4
	fldi	f2 r6 0
	fldi	f3 r2 22
	fmul	f2 f3 f2
	fldi	f4 r2 14
	fadd	f2 f2 f4
	addi	r2 r2 25
	call	L_fabs_1869
	subi	r2 r2 25
	ldi	r4 r2 16
	ldi	r5 r2 19
	add	r4 r5 r4
	fldi	f3 r4 0
	addi	r2 r2 25
	call	L_fless_1871
	subi	r2 r2 25
	bne	r4 r0 L_else_8787
	addi	r4 r0 0
	jump	L_cont_8788
L_else_8787 : 
	addi	r4 r0 4145
	fldi	f2 r2 22
	fsti	f2 r4 0
	addi	r4 r0 1
L_cont_8788 : 
L_cont_8786 : 
	jump	L_cont_8783
L_else_8782 : 
	addi	r4 r0 0
L_cont_8783 : 
	bne	r4 r0 L_else_8789
	addi	r4 r0 1
	addi	r5 r0 2
	addi	r6 r0 0
	ldi	r7 r2 0
	add	r8 r7 r4
	fldi	f2 r8 0
	sti	r6 r2 24
	sti	r5 r2 25
	sti	r4 r2 26
	addi	r2 r2 28
	call	L_fiszero_1863
	subi	r2 r2 28
	bne	r4 r0 L_else_8790
	ldi	r4 r2 1
	addi	r2 r2 28
	call	L_o_param_abc_1973
	subi	r2 r2 28
	ldi	r5 r2 1
	sti	r4 r2 27
	add	r4 r0 r5
	addi	r2 r2 29
	call	L_o_isinvert_1963
	subi	r2 r2 29
	ldi	r5 r2 26
	ldi	r6 r2 0
	add	r7 r6 r5
	fldi	f2 r7 0
	sti	r4 r2 28
	addi	r2 r2 30
	call	L_fisneg_1867
	subi	r2 r2 30
	ldi	r5 r2 28
	xor	r4 r5 r4
	ldi	r5 r2 26
	ldi	r6 r2 27
	add	r7 r6 r5
	fldi	f2 r7 0
	addi	r2 r2 30
	call	L_fneg_cond_1905
	subi	r2 r2 30
	fldi	f3 r2 10
	fsub	f2 f2 f3
	ldi	r4 r2 26
	ldi	r5 r2 0
	add	r4 r5 r4
	fldi	f4 r4 0
	fdiv	f2 f2 f4
	ldi	r4 r2 25
	add	r6 r5 r4
	fldi	f4 r6 0
	fmul	f4 f2 f4
	fldi	f5 r2 14
	fadd	f4 f4 f5
	fsti	f2 r2 30
	fadd	f2 f0 f4
	addi	r2 r2 33
	call	L_fabs_1869
	subi	r2 r2 33
	ldi	r4 r2 25
	ldi	r5 r2 27
	add	r4 r5 r4
	fldi	f3 r4 0
	addi	r2 r2 33
	call	L_fless_1871
	subi	r2 r2 33
	bne	r4 r0 L_else_8793
	addi	r4 r0 0
	jump	L_cont_8794
L_else_8793 : 
	ldi	r4 r2 24
	ldi	r5 r2 0
	add	r6 r5 r4
	fldi	f2 r6 0
	fldi	f3 r2 30
	fmul	f2 f3 f2
	fldi	f4 r2 6
	fadd	f2 f2 f4
	addi	r2 r2 33
	call	L_fabs_1869
	subi	r2 r2 33
	ldi	r4 r2 24
	ldi	r5 r2 27
	add	r4 r5 r4
	fldi	f3 r4 0
	addi	r2 r2 33
	call	L_fless_1871
	subi	r2 r2 33
	bne	r4 r0 L_else_8795
	addi	r4 r0 0
	jump	L_cont_8796
L_else_8795 : 
	addi	r4 r0 4145
	fldi	f2 r2 30
	fsti	f2 r4 0
	addi	r4 r0 1
L_cont_8796 : 
L_cont_8794 : 
	jump	L_cont_8791
L_else_8790 : 
	addi	r4 r0 0
L_cont_8791 : 
	bne	r4 r0 L_else_8797
	addi	r4 r0 2
	addi	r5 r0 0
	addi	r6 r0 1
	ldi	r7 r2 0
	add	r8 r7 r4
	fldi	f2 r8 0
	sti	r6 r2 32
	sti	r5 r2 33
	sti	r4 r2 34
	addi	r2 r2 36
	call	L_fiszero_1863
	subi	r2 r2 36
	bne	r4 r0 L_else_8798
	ldi	r4 r2 1
	addi	r2 r2 36
	call	L_o_param_abc_1973
	subi	r2 r2 36
	ldi	r5 r2 1
	sti	r4 r2 35
	add	r4 r0 r5
	addi	r2 r2 37
	call	L_o_isinvert_1963
	subi	r2 r2 37
	ldi	r5 r2 34
	ldi	r6 r2 0
	add	r7 r6 r5
	fldi	f2 r7 0
	sti	r4 r2 36
	addi	r2 r2 38
	call	L_fisneg_1867
	subi	r2 r2 38
	ldi	r5 r2 36
	xor	r4 r5 r4
	ldi	r5 r2 34
	ldi	r6 r2 35
	add	r7 r6 r5
	fldi	f2 r7 0
	addi	r2 r2 38
	call	L_fneg_cond_1905
	subi	r2 r2 38
	fldi	f3 r2 14
	fsub	f2 f2 f3
	ldi	r4 r2 34
	ldi	r5 r2 0
	add	r4 r5 r4
	fldi	f3 r4 0
	fdiv	f2 f2 f3
	ldi	r4 r2 33
	add	r6 r5 r4
	fldi	f3 r6 0
	fmul	f3 f2 f3
	fldi	f4 r2 6
	fadd	f3 f3 f4
	fsti	f2 r2 38
	fadd	f2 f0 f3
	addi	r2 r2 41
	call	L_fabs_1869
	subi	r2 r2 41
	ldi	r4 r2 33
	ldi	r5 r2 35
	add	r4 r5 r4
	fldi	f3 r4 0
	addi	r2 r2 41
	call	L_fless_1871
	subi	r2 r2 41
	bne	r4 r0 L_else_8801
	addi	r4 r0 0
	jump	L_cont_8802
L_else_8801 : 
	ldi	r4 r2 32
	ldi	r5 r2 0
	add	r5 r5 r4
	fldi	f2 r5 0
	fldi	f3 r2 38
	fmul	f2 f3 f2
	fldi	f4 r2 10
	fadd	f2 f2 f4
	addi	r2 r2 41
	call	L_fabs_1869
	subi	r2 r2 41
	ldi	r4 r2 32
	ldi	r5 r2 35
	add	r4 r5 r4
	fldi	f3 r4 0
	addi	r2 r2 41
	call	L_fless_1871
	subi	r2 r2 41
	bne	r4 r0 L_else_8803
	addi	r4 r0 0
	jump	L_cont_8804
L_else_8803 : 
	addi	r4 r0 4145
	fldi	f2 r2 38
	fsti	f2 r4 0
	addi	r4 r0 1
L_cont_8804 : 
L_cont_8802 : 
	jump	L_cont_8799
L_else_8798 : 
	addi	r4 r0 0
L_cont_8799 : 
	bne	r4 r0 L_else_8805
	addi	r4 r0 0
	return
L_else_8805 : 
	addi	r4 r0 3
	return
L_else_8797 : 
	addi	r4 r0 2
	return
L_else_8789 : 
	addi	r4 r0 1
	return
L_else_8781 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_8806
	ldi	r4 r2 1
	addi	r2 r2 41
	call	L_o_param_abc_1973
	subi	r2 r2 41
	add	r5 r0 r4
	ldi	r4 r2 0
	sti	r5 r2 40
	addi	r2 r2 42
	call	L_veciprod_1932
	subi	r2 r2 42
	fsti	f2 r2 42
	addi	r2 r2 45
	call	L_fispos_1865
	subi	r2 r2 45
	bne	r4 r0 L_else_8808
	addi	r4 r0 0
	return
L_else_8808 : 
	addi	r4 r0 4145
	fldi	f2 r2 6
	fldi	f3 r2 10
	fldi	f4 r2 14
	ldi	r5 r2 40
	sti	r4 r2 44
	add	r4 r0 r5
	addi	r2 r2 46
	call	L_veciprod2_1935
	subi	r2 r2 46
	addi	r2 r2 46
	call	L_fneg_1876
	subi	r2 r2 46
	fldi	f3 r2 42
	fdiv	f2 f2 f3
	ldi	r4 r2 44
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_8806 : 
	ldi	r4 r2 0
	fldi	f2 r4 0
	fldi	f3 r4 1
	fldi	f4 r4 2
	ldi	r5 r2 1
	add	r4 r0 r5
	addi	r2 r2 46
	call	L_quadratic_2072
	subi	r2 r2 46
	fsti	f2 r2 46
	addi	r2 r2 49
	call	L_fiszero_1863
	subi	r2 r2 49
	bne	r4 r0 L_else_8810
	ldi	r4 r2 0
	fldi	f2 r4 0
	fldi	f3 r4 1
	fldi	f4 r4 2
	fldi	f5 r2 6
	fmul	f6 f2 f5
	ldi	r4 r2 1
	fsti	f2 r2 48
	fsti	f4 r2 50
	fsti	f3 r2 52
	fsti	f6 r2 54
	addi	r2 r2 57
	call	L_o_param_a_1967
	subi	r2 r2 57
	fldi	f3 r2 54
	fmul	f2 f3 f2
	fldi	f3 r2 10
	fldi	f4 r2 52
	fmul	f5 f4 f3
	ldi	r4 r2 1
	fsti	f2 r2 56
	fsti	f5 r2 58
	addi	r2 r2 61
	call	L_o_param_b_1969
	subi	r2 r2 61
	fldi	f3 r2 58
	fmul	f2 f3 f2
	fldi	f3 r2 56
	fadd	f2 f3 f2
	fldi	f3 r2 14
	fldi	f4 r2 50
	fmul	f5 f4 f3
	ldi	r4 r2 1
	fsti	f2 r2 60
	fsti	f5 r2 62
	addi	r2 r2 65
	call	L_o_param_c_1971
	subi	r2 r2 65
	fldi	f3 r2 62
	fmul	f2 f3 f2
	fldi	f3 r2 60
	fadd	f2 f3 f2
	ldi	r4 r2 1
	fsti	f2 r2 64
	addi	r2 r2 67
	call	L_o_isrot_1965
	subi	r2 r2 67
	bne	r4 r0 L_else_8811
	fldi	f2 r2 64
	fadd	f2 f0 f2
	jump	L_cont_8812
L_else_8811 : 
	fldi	f2 r2 10
	fldi	f3 r2 50
	fmul	f4 f3 f2
	fldi	f5 r2 14
	fldi	f6 r2 52
	fmul	f7 f6 f5
	fadd	f4 f4 f7
	ldi	r4 r2 1
	fsti	f4 r2 66
	addi	r2 r2 69
	call	L_o_param_r1_1991
	subi	r2 r2 69
	fldi	f3 r2 66
	fmul	f2 f3 f2
	fldi	f3 r2 14
	fldi	f4 r2 48
	fmul	f5 f4 f3
	fldi	f6 r2 6
	fldi	f7 r2 50
	fmul	f7 f7 f6
	fadd	f5 f5 f7
	ldi	r4 r2 1
	fsti	f2 r2 68
	fsti	f5 r2 70
	addi	r2 r2 73
	call	L_o_param_r2_1993
	subi	r2 r2 73
	fldi	f3 r2 70
	fmul	f2 f3 f2
	fldi	f3 r2 68
	fadd	f2 f3 f2
	fldi	f3 r2 10
	fldi	f4 r2 48
	fmul	f4 f4 f3
	fldi	f5 r2 6
	fldi	f6 r2 52
	fmul	f6 f6 f5
	fadd	f4 f4 f6
	ldi	r4 r2 1
	fsti	f2 r2 72
	fsti	f4 r2 74
	addi	r2 r2 77
	call	L_o_param_r3_1995
	subi	r2 r2 77
	fldi	f3 r2 74
	fmul	f2 f3 f2
	fldi	f3 r2 72
	fadd	f2 f3 f2
	addi	r2 r2 77
	call	L_fhalf_1874
	subi	r2 r2 77
	fldi	f3 r2 64
	fadd	f2 f3 f2
L_cont_8812 : 
	fldi	f3 r2 6
	fldi	f4 r2 10
	fldi	f5 r2 14
	ldi	r4 r2 1
	fsti	f2 r2 76
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 79
	call	L_quadratic_2072
	subi	r2 r2 79
	ldi	r4 r2 1
	fsti	f2 r2 78
	addi	r2 r2 81
	call	L_o_form_1959
	subi	r2 r2 81
	addi	r5 r0 3
	bne	r4 r5 L_else_8813
	fldi	f2 r0 43
	fldi	f3 r2 78
	fsub	f2 f3 f2
	jump	L_cont_8814
L_else_8813 : 
	fldi	f2 r2 78
	fadd	f2 f0 f2
L_cont_8814 : 
	fldi	f3 r2 76
	fsti	f2 r2 80
	fadd	f2 f0 f3
	addi	r2 r2 83
	call	L_fsqr_1878
	subi	r2 r2 83
	fldi	f3 r2 80
	fldi	f4 r2 46
	fmul	f3 f4 f3
	fsub	f2 f2 f3
	fsti	f2 r2 82
	addi	r2 r2 85
	call	L_fispos_1865
	subi	r2 r2 85
	bne	r4 r0 L_else_8815
	addi	r4 r0 0
	return
L_else_8815 : 
	fldi	f2 r2 82
	addi	r2 r2 85
	call	L_sqrt_1894
	subi	r2 r2 85
	ldi	r4 r2 1
	fsti	f2 r2 84
	addi	r2 r2 87
	call	L_o_isinvert_1963
	subi	r2 r2 87
	bne	r4 r0 L_else_8816
	fldi	f2 r2 84
	addi	r2 r2 87
	call	L_fneg_1876
	subi	r2 r2 87
	jump	L_cont_8817
L_else_8816 : 
	fldi	f2 r2 84
	fadd	f2 f0 f2
L_cont_8817 : 
	addi	r4 r0 4145
	fldi	f3 r2 76
	fsub	f2 f2 f3
	fldi	f3 r2 46
	fdiv	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_8810 : 
	addi	r4 r0 0
	return
L_solver_rect_fast_2095 : 
	fldi	f5 r6 0
	fsub	f5 f5 f2
	fldi	f6 r6 1
	fmul	f5 f5 f6
	fldi	f6 r5 1
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fsti	f2 r2 0
	fsti	f3 r2 2
	sti	r6 r2 4
	fsti	f4 r2 6
	fsti	f5 r2 8
	sti	r5 r2 10
	sti	r4 r2 11
	fadd	f2 f0 f6
	addi	r2 r2 13
	call	L_fabs_1869
	subi	r2 r2 13
	ldi	r4 r2 11
	fsti	f2 r2 12
	addi	r2 r2 15
	call	L_o_param_b_1969
	subi	r2 r2 15
	fadd	f3 f0 f2
	fldi	f2 r2 12
	addi	r2 r2 15
	call	L_fless_1871
	subi	r2 r2 15
	bne	r4 r0 L_else_8819
	addi	r4 r0 0
	jump	L_cont_8820
L_else_8819 : 
	ldi	r4 r2 10
	fldi	f2 r4 2
	fldi	f3 r2 8
	fmul	f2 f3 f2
	fldi	f4 r2 6
	fadd	f2 f2 f4
	addi	r2 r2 15
	call	L_fabs_1869
	subi	r2 r2 15
	ldi	r4 r2 11
	fsti	f2 r2 14
	addi	r2 r2 17
	call	L_o_param_c_1971
	subi	r2 r2 17
	fadd	f3 f0 f2
	fldi	f2 r2 14
	addi	r2 r2 17
	call	L_fless_1871
	subi	r2 r2 17
	bne	r4 r0 L_else_8821
	addi	r4 r0 0
	jump	L_cont_8822
L_else_8821 : 
	addi	r4 r0 1
	ldi	r5 r2 4
	fldi	f2 r5 1
	sti	r4 r2 16
	addi	r2 r2 18
	call	L_fiszero_1863
	subi	r2 r2 18
	ldi	r5 r2 16
	sub	r4 r5 r4
L_cont_8822 : 
L_cont_8820 : 
	bne	r4 r0 L_else_8823
	ldi	r4 r2 4
	fldi	f2 r4 2
	fldi	f3 r2 2
	fsub	f2 f2 f3
	fldi	f4 r4 3
	fmul	f2 f2 f4
	ldi	r5 r2 10
	fldi	f4 r5 0
	fmul	f4 f2 f4
	fldi	f5 r2 0
	fadd	f4 f4 f5
	fsti	f2 r2 18
	fadd	f2 f0 f4
	addi	r2 r2 21
	call	L_fabs_1869
	subi	r2 r2 21
	ldi	r4 r2 11
	fsti	f2 r2 20
	addi	r2 r2 23
	call	L_o_param_a_1967
	subi	r2 r2 23
	fadd	f3 f0 f2
	fldi	f2 r2 20
	addi	r2 r2 23
	call	L_fless_1871
	subi	r2 r2 23
	bne	r4 r0 L_else_8825
	addi	r4 r0 0
	jump	L_cont_8826
L_else_8825 : 
	ldi	r4 r2 10
	fldi	f2 r4 2
	fldi	f3 r2 18
	fmul	f2 f3 f2
	fldi	f4 r2 6
	fadd	f2 f2 f4
	addi	r2 r2 23
	call	L_fabs_1869
	subi	r2 r2 23
	ldi	r4 r2 11
	fsti	f2 r2 22
	addi	r2 r2 25
	call	L_o_param_c_1971
	subi	r2 r2 25
	fadd	f3 f0 f2
	fldi	f2 r2 22
	addi	r2 r2 25
	call	L_fless_1871
	subi	r2 r2 25
	bne	r4 r0 L_else_8827
	addi	r4 r0 0
	jump	L_cont_8828
L_else_8827 : 
	addi	r4 r0 1
	ldi	r5 r2 4
	fldi	f2 r5 3
	sti	r4 r2 24
	addi	r2 r2 26
	call	L_fiszero_1863
	subi	r2 r2 26
	ldi	r5 r2 24
	sub	r4 r5 r4
L_cont_8828 : 
L_cont_8826 : 
	bne	r4 r0 L_else_8829
	ldi	r4 r2 4
	fldi	f2 r4 4
	fldi	f3 r2 6
	fsub	f2 f2 f3
	fldi	f3 r4 5
	fmul	f2 f2 f3
	ldi	r5 r2 10
	fldi	f3 r5 0
	fmul	f3 f2 f3
	fldi	f4 r2 0
	fadd	f3 f3 f4
	fsti	f2 r2 26
	fadd	f2 f0 f3
	addi	r2 r2 29
	call	L_fabs_1869
	subi	r2 r2 29
	ldi	r4 r2 11
	fsti	f2 r2 28
	addi	r2 r2 31
	call	L_o_param_a_1967
	subi	r2 r2 31
	fadd	f3 f0 f2
	fldi	f2 r2 28
	addi	r2 r2 31
	call	L_fless_1871
	subi	r2 r2 31
	bne	r4 r0 L_else_8831
	addi	r4 r0 0
	jump	L_cont_8832
L_else_8831 : 
	ldi	r4 r2 10
	fldi	f2 r4 1
	fldi	f3 r2 26
	fmul	f2 f3 f2
	fldi	f4 r2 2
	fadd	f2 f2 f4
	addi	r2 r2 31
	call	L_fabs_1869
	subi	r2 r2 31
	ldi	r4 r2 11
	fsti	f2 r2 30
	addi	r2 r2 33
	call	L_o_param_b_1969
	subi	r2 r2 33
	fadd	f3 f0 f2
	fldi	f2 r2 30
	addi	r2 r2 33
	call	L_fless_1871
	subi	r2 r2 33
	bne	r4 r0 L_else_8833
	addi	r4 r0 0
	jump	L_cont_8834
L_else_8833 : 
	addi	r4 r0 1
	ldi	r5 r2 4
	fldi	f2 r5 5
	sti	r4 r2 32
	addi	r2 r2 34
	call	L_fiszero_1863
	subi	r2 r2 34
	ldi	r5 r2 32
	sub	r4 r5 r4
L_cont_8834 : 
L_cont_8832 : 
	bne	r4 r0 L_else_8835
	addi	r4 r0 0
	return
L_else_8835 : 
	addi	r4 r0 4145
	fldi	f2 r2 26
	fsti	f2 r4 0
	addi	r4 r0 3
	return
L_else_8829 : 
	addi	r4 r0 4145
	fldi	f2 r2 18
	fsti	f2 r4 0
	addi	r4 r0 2
	return
L_else_8823 : 
	addi	r4 r0 4145
	fldi	f2 r2 8
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_solver_fast_2114 : 
	addi	r7 r0 5042
	add	r7 r7 r4
	ldi	r7 r7 0
	fldi	f2 r6 0
	sti	r4 r2 0
	sti	r5 r2 1
	sti	r7 r2 2
	sti	r6 r2 3
	fsti	f2 r2 4
	add	r4 r0 r7
	addi	r2 r2 7
	call	L_o_param_x_1975
	subi	r2 r2 7
	fldi	f3 r2 4
	fsub	f2 f3 f2
	ldi	r4 r2 3
	fldi	f3 r4 1
	ldi	r5 r2 2
	fsti	f2 r2 6
	fsti	f3 r2 8
	add	r4 r0 r5
	addi	r2 r2 11
	call	L_o_param_y_1977
	subi	r2 r2 11
	fldi	f3 r2 8
	fsub	f2 f3 f2
	ldi	r4 r2 3
	fldi	f3 r4 2
	ldi	r4 r2 2
	fsti	f2 r2 10
	fsti	f3 r2 12
	addi	r2 r2 15
	call	L_o_param_z_1979
	subi	r2 r2 15
	fldi	f3 r2 12
	fsub	f2 f3 f2
	ldi	r4 r2 1
	fsti	f2 r2 14
	addi	r2 r2 17
	call	L_d_const_2020
	subi	r2 r2 17
	ldi	r5 r2 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 2
	sti	r4 r2 16
	add	r4 r0 r5
	addi	r2 r2 18
	call	L_o_form_1959
	subi	r2 r2 18
	addi	r5 r0 1
	bne	r4 r5 L_else_8836
	ldi	r4 r2 1
	addi	r2 r2 18
	call	L_d_vec_2018
	subi	r2 r2 18
	add	r5 r0 r4
	fldi	f2 r2 6
	fldi	f3 r2 10
	fldi	f4 r2 14
	ldi	r4 r2 2
	ldi	r6 r2 16
	jump	L_solver_rect_fast_2095
L_else_8836 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_8837
	ldi	r4 r2 16
	fldi	f2 r4 0
	addi	r2 r2 18
	call	L_fisneg_1867
	subi	r2 r2 18
	bne	r4 r0 L_else_8838
	addi	r4 r0 0
	return
L_else_8838 : 
	addi	r4 r0 4145
	ldi	r5 r2 16
	fldi	f2 r5 1
	fldi	f3 r2 6
	fmul	f2 f2 f3
	fldi	f3 r5 2
	fldi	f4 r2 10
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r5 3
	fldi	f4 r2 14
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_8837 : 
	ldi	r4 r2 16
	fldi	f2 r4 0
	fsti	f2 r2 18
	addi	r2 r2 21
	call	L_fiszero_1863
	subi	r2 r2 21
	bne	r4 r0 L_else_8840
	ldi	r4 r2 16
	fldi	f2 r4 1
	fldi	f3 r2 6
	fmul	f2 f2 f3
	fldi	f4 r4 2
	fldi	f5 r2 10
	fmul	f4 f4 f5
	fadd	f2 f2 f4
	fldi	f4 r4 3
	fldi	f6 r2 14
	fmul	f4 f4 f6
	fadd	f2 f2 f4
	ldi	r5 r2 2
	fsti	f2 r2 20
	add	r4 r0 r5
	fadd	f4 f0 f6
	fadd	f2 f0 f3
	fadd	f3 f0 f5
	addi	r2 r2 23
	call	L_quadratic_2072
	subi	r2 r2 23
	ldi	r4 r2 2
	fsti	f2 r2 22
	addi	r2 r2 25
	call	L_o_form_1959
	subi	r2 r2 25
	addi	r5 r0 3
	bne	r4 r5 L_else_8841
	fldi	f2 r0 43
	fldi	f3 r2 22
	fsub	f2 f3 f2
	jump	L_cont_8842
L_else_8841 : 
	fldi	f2 r2 22
	fadd	f2 f0 f2
L_cont_8842 : 
	fldi	f3 r2 20
	fsti	f2 r2 24
	fadd	f2 f0 f3
	addi	r2 r2 27
	call	L_fsqr_1878
	subi	r2 r2 27
	fldi	f3 r2 24
	fldi	f4 r2 18
	fmul	f3 f4 f3
	fsub	f2 f2 f3
	fsti	f2 r2 26
	addi	r2 r2 29
	call	L_fispos_1865
	subi	r2 r2 29
	bne	r4 r0 L_else_8843
	addi	r4 r0 0
	return
L_else_8843 : 
	ldi	r4 r2 2
	addi	r2 r2 29
	call	L_o_isinvert_1963
	subi	r2 r2 29
	bne	r4 r0 L_else_8844
	addi	r4 r0 4145
	fldi	f2 r2 26
	sti	r4 r2 28
	addi	r2 r2 30
	call	L_sqrt_1894
	subi	r2 r2 30
	fldi	f3 r2 20
	fsub	f2 f3 f2
	ldi	r4 r2 16
	fldi	f3 r4 4
	fmul	f2 f2 f3
	ldi	r4 r2 28
	fsti	f2 r4 0
	jump	L_cont_8845
L_else_8844 : 
	addi	r4 r0 4145
	fldi	f2 r2 26
	sti	r4 r2 29
	addi	r2 r2 31
	call	L_sqrt_1894
	subi	r2 r2 31
	fldi	f3 r2 20
	fadd	f2 f3 f2
	ldi	r4 r2 16
	fldi	f3 r4 4
	fmul	f2 f2 f3
	ldi	r4 r2 29
	fsti	f2 r4 0
L_cont_8845 : 
	addi	r4 r0 1
	return
L_else_8840 : 
	addi	r4 r0 0
	return
L_solver_fast2_2132 : 
	addi	r6 r0 5042
	add	r6 r6 r4
	ldi	r6 r6 0
	sti	r6 r2 0
	sti	r4 r2 1
	sti	r5 r2 2
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_o_param_ctbl_1997
	subi	r2 r2 4
	fldi	f2 r4 0
	fldi	f3 r4 1
	fldi	f4 r4 2
	ldi	r5 r2 2
	sti	r4 r2 3
	fsti	f4 r2 4
	fsti	f3 r2 6
	fsti	f2 r2 8
	add	r4 r0 r5
	addi	r2 r2 11
	call	L_d_const_2020
	subi	r2 r2 11
	ldi	r5 r2 1
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 0
	sti	r4 r2 10
	add	r4 r0 r5
	addi	r2 r2 12
	call	L_o_form_1959
	subi	r2 r2 12
	addi	r5 r0 1
	bne	r4 r5 L_else_8846
	ldi	r4 r2 2
	addi	r2 r2 12
	call	L_d_vec_2018
	subi	r2 r2 12
	add	r5 r0 r4
	fldi	f2 r2 8
	fldi	f3 r2 6
	fldi	f4 r2 4
	ldi	r4 r2 0
	ldi	r6 r2 10
	jump	L_solver_rect_fast_2095
L_else_8846 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_8847
	ldi	r4 r2 10
	fldi	f2 r4 0
	addi	r2 r2 12
	call	L_fisneg_1867
	subi	r2 r2 12
	bne	r4 r0 L_else_8848
	addi	r4 r0 0
	return
L_else_8848 : 
	addi	r4 r0 4145
	ldi	r5 r2 10
	fldi	f2 r5 0
	ldi	r5 r2 3
	fldi	f3 r5 3
	fmul	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 1
	return
L_else_8847 : 
	ldi	r4 r2 10
	fldi	f2 r4 0
	fsti	f2 r2 12
	addi	r2 r2 15
	call	L_fiszero_1863
	subi	r2 r2 15
	bne	r4 r0 L_else_8850
	ldi	r4 r2 10
	fldi	f2 r4 1
	fldi	f3 r2 8
	fmul	f2 f2 f3
	fldi	f3 r4 2
	fldi	f4 r2 6
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	fldi	f3 r4 3
	fldi	f4 r2 4
	fmul	f3 f3 f4
	fadd	f2 f2 f3
	ldi	r5 r2 3
	fldi	f3 r5 3
	fsti	f2 r2 14
	fsti	f3 r2 16
	addi	r2 r2 19
	call	L_fsqr_1878
	subi	r2 r2 19
	fldi	f3 r2 16
	fldi	f4 r2 12
	fmul	f3 f4 f3
	fsub	f2 f2 f3
	fsti	f2 r2 18
	addi	r2 r2 21
	call	L_fispos_1865
	subi	r2 r2 21
	bne	r4 r0 L_else_8851
	addi	r4 r0 0
	return
L_else_8851 : 
	ldi	r4 r2 0
	addi	r2 r2 21
	call	L_o_isinvert_1963
	subi	r2 r2 21
	bne	r4 r0 L_else_8852
	addi	r4 r0 4145
	fldi	f2 r2 18
	sti	r4 r2 20
	addi	r2 r2 22
	call	L_sqrt_1894
	subi	r2 r2 22
	fldi	f3 r2 14
	fsub	f2 f3 f2
	ldi	r4 r2 10
	fldi	f3 r4 4
	fmul	f2 f2 f3
	ldi	r4 r2 20
	fsti	f2 r4 0
	jump	L_cont_8853
L_else_8852 : 
	addi	r4 r0 4145
	fldi	f2 r2 18
	sti	r4 r2 21
	addi	r2 r2 23
	call	L_sqrt_1894
	subi	r2 r2 23
	fldi	f3 r2 14
	fadd	f2 f3 f2
	ldi	r4 r2 10
	fldi	f3 r4 4
	fmul	f2 f2 f3
	ldi	r4 r2 21
	fsti	f2 r4 0
L_cont_8853 : 
	addi	r4 r0 1
	return
L_else_8850 : 
	addi	r4 r0 0
	return
L_iter_setup_dirvec_constants_2144 : 
	bgt	r0 r5 L_else_8854
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r5 r2 0
	sti	r6 r2 1
	sti	r4 r2 2
	addi	r2 r2 4
	call	L_d_const_2020
	subi	r2 r2 4
	ldi	r5 r2 2
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	L_d_vec_2018
	subi	r2 r2 5
	ldi	r5 r2 1
	sti	r4 r2 4
	add	r4 r0 r5
	addi	r2 r2 6
	call	L_o_form_1959
	subi	r2 r2 6
	addi	r5 r0 1
	bne	r4 r5 L_else_8855
	addi	r4 r0 6
	fldi	f2 r0 28
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	fldi	f2 r5 0
	sti	r4 r2 5
	addi	r2 r2 7
	call	L_fiszero_1863
	subi	r2 r2 7
	bne	r4 r0 L_else_8857
	ldi	r4 r2 1
	addi	r2 r2 7
	call	L_o_isinvert_1963
	subi	r2 r2 7
	ldi	r5 r2 4
	fldi	f2 r5 0
	sti	r4 r2 6
	addi	r2 r2 8
	call	L_fisneg_1867
	subi	r2 r2 8
	ldi	r5 r2 6
	xor	r4 r5 r4
	ldi	r5 r2 1
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	L_o_param_a_1967
	subi	r2 r2 9
	ldi	r4 r2 7
	addi	r2 r2 9
	call	L_fneg_cond_1905
	subi	r2 r2 9
	ldi	r4 r2 5
	fsti	f2 r4 0
	fldi	f2 r0 43
	ldi	r5 r2 4
	fldi	f3 r5 0
	fdiv	f2 f2 f3
	fsti	f2 r4 1
	jump	L_cont_8858
L_else_8857 : 
	fldi	f2 r0 28
	ldi	r4 r2 5
	fsti	f2 r4 1
L_cont_8858 : 
	ldi	r5 r2 4
	fldi	f2 r5 1
	addi	r2 r2 9
	call	L_fiszero_1863
	subi	r2 r2 9
	bne	r4 r0 L_else_8859
	ldi	r4 r2 1
	addi	r2 r2 9
	call	L_o_isinvert_1963
	subi	r2 r2 9
	ldi	r5 r2 4
	fldi	f2 r5 1
	sti	r4 r2 8
	addi	r2 r2 10
	call	L_fisneg_1867
	subi	r2 r2 10
	ldi	r5 r2 8
	xor	r4 r5 r4
	ldi	r5 r2 1
	sti	r4 r2 9
	add	r4 r0 r5
	addi	r2 r2 11
	call	L_o_param_b_1969
	subi	r2 r2 11
	ldi	r4 r2 9
	addi	r2 r2 11
	call	L_fneg_cond_1905
	subi	r2 r2 11
	ldi	r4 r2 5
	fsti	f2 r4 2
	fldi	f2 r0 43
	ldi	r5 r2 4
	fldi	f3 r5 1
	fdiv	f2 f2 f3
	fsti	f2 r4 3
	jump	L_cont_8860
L_else_8859 : 
	fldi	f2 r0 28
	ldi	r4 r2 5
	fsti	f2 r4 3
L_cont_8860 : 
	ldi	r5 r2 4
	fldi	f2 r5 2
	addi	r2 r2 11
	call	L_fiszero_1863
	subi	r2 r2 11
	bne	r4 r0 L_else_8861
	ldi	r4 r2 1
	addi	r2 r2 11
	call	L_o_isinvert_1963
	subi	r2 r2 11
	ldi	r5 r2 4
	fldi	f2 r5 2
	sti	r4 r2 10
	addi	r2 r2 12
	call	L_fisneg_1867
	subi	r2 r2 12
	ldi	r5 r2 10
	xor	r4 r5 r4
	ldi	r5 r2 1
	sti	r4 r2 11
	add	r4 r0 r5
	addi	r2 r2 13
	call	L_o_param_c_1971
	subi	r2 r2 13
	ldi	r4 r2 11
	addi	r2 r2 13
	call	L_fneg_cond_1905
	subi	r2 r2 13
	ldi	r4 r2 5
	fsti	f2 r4 4
	fldi	f2 r0 43
	ldi	r5 r2 4
	fldi	f3 r5 2
	fdiv	f2 f2 f3
	fsti	f2 r4 5
	jump	L_cont_8862
L_else_8861 : 
	fldi	f2 r0 28
	ldi	r4 r2 5
	fsti	f2 r4 5
L_cont_8862 : 
	ldi	r5 r2 0
	ldi	r6 r2 3
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_8856
L_else_8855 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_8863
	addi	r4 r0 4
	fldi	f2 r0 28
	addi	r2 r2 13
	call	min_caml_create_float_array
	subi	r2 r2 13
	ldi	r5 r2 4
	fldi	f2 r5 0
	ldi	r6 r2 1
	sti	r4 r2 12
	fsti	f2 r2 14
	add	r4 r0 r6
	addi	r2 r2 17
	call	L_o_param_a_1967
	subi	r2 r2 17
	fldi	f3 r2 14
	fmul	f2 f3 f2
	ldi	r4 r2 4
	fldi	f3 r4 1
	ldi	r5 r2 1
	fsti	f2 r2 16
	fsti	f3 r2 18
	add	r4 r0 r5
	addi	r2 r2 21
	call	L_o_param_b_1969
	subi	r2 r2 21
	fldi	f3 r2 18
	fmul	f2 f3 f2
	fldi	f3 r2 16
	fadd	f2 f3 f2
	ldi	r4 r2 4
	fldi	f3 r4 2
	ldi	r4 r2 1
	fsti	f2 r2 20
	fsti	f3 r2 22
	addi	r2 r2 25
	call	L_o_param_c_1971
	subi	r2 r2 25
	fldi	f3 r2 22
	fmul	f2 f3 f2
	fldi	f3 r2 20
	fadd	f2 f3 f2
	fsti	f2 r2 24
	addi	r2 r2 27
	call	L_fispos_1865
	subi	r2 r2 27
	bne	r4 r0 L_else_8866
	fldi	f2 r0 28
	ldi	r4 r2 12
	fsti	f2 r4 0
	jump	L_cont_8867
L_else_8866 : 
	fldi	f2 r0 27
	fldi	f3 r2 24
	fdiv	f2 f2 f3
	ldi	r4 r2 12
	fsti	f2 r4 0
	ldi	r5 r2 1
	add	r4 r0 r5
	addi	r2 r2 27
	call	L_o_param_a_1967
	subi	r2 r2 27
	fldi	f3 r2 24
	fdiv	f2 f2 f3
	addi	r2 r2 27
	call	L_fneg_1876
	subi	r2 r2 27
	ldi	r4 r2 12
	fsti	f2 r4 1
	ldi	r5 r2 1
	add	r4 r0 r5
	addi	r2 r2 27
	call	L_o_param_b_1969
	subi	r2 r2 27
	fldi	f3 r2 24
	fdiv	f2 f2 f3
	addi	r2 r2 27
	call	L_fneg_1876
	subi	r2 r2 27
	ldi	r4 r2 12
	fsti	f2 r4 2
	ldi	r5 r2 1
	add	r4 r0 r5
	addi	r2 r2 27
	call	L_o_param_c_1971
	subi	r2 r2 27
	fldi	f3 r2 24
	fdiv	f2 f2 f3
	addi	r2 r2 27
	call	L_fneg_1876
	subi	r2 r2 27
	ldi	r4 r2 12
	fsti	f2 r4 3
L_cont_8867 : 
	ldi	r5 r2 0
	ldi	r6 r2 3
	add	r6 r6 r5
	sti	r4 r6 0
	jump	L_cont_8864
L_else_8863 : 
	addi	r4 r0 5
	fldi	f2 r0 28
	addi	r2 r2 27
	call	min_caml_create_float_array
	subi	r2 r2 27
	ldi	r5 r2 4
	fldi	f2 r5 0
	fldi	f3 r5 1
	fldi	f4 r5 2
	ldi	r6 r2 1
	sti	r4 r2 26
	add	r4 r0 r6
	addi	r2 r2 28
	call	L_quadratic_2072
	subi	r2 r2 28
	ldi	r4 r2 4
	fldi	f3 r4 0
	ldi	r5 r2 1
	fsti	f2 r2 28
	fsti	f3 r2 30
	add	r4 r0 r5
	addi	r2 r2 33
	call	L_o_param_a_1967
	subi	r2 r2 33
	fldi	f3 r2 30
	fmul	f2 f3 f2
	addi	r2 r2 33
	call	L_fneg_1876
	subi	r2 r2 33
	ldi	r4 r2 4
	fldi	f3 r4 1
	ldi	r5 r2 1
	fsti	f2 r2 32
	fsti	f3 r2 34
	add	r4 r0 r5
	addi	r2 r2 37
	call	L_o_param_b_1969
	subi	r2 r2 37
	fldi	f3 r2 34
	fmul	f2 f3 f2
	addi	r2 r2 37
	call	L_fneg_1876
	subi	r2 r2 37
	ldi	r4 r2 4
	fldi	f3 r4 2
	ldi	r5 r2 1
	fsti	f2 r2 36
	fsti	f3 r2 38
	add	r4 r0 r5
	addi	r2 r2 41
	call	L_o_param_c_1971
	subi	r2 r2 41
	fldi	f3 r2 38
	fmul	f2 f3 f2
	addi	r2 r2 41
	call	L_fneg_1876
	subi	r2 r2 41
	ldi	r4 r2 26
	fldi	f3 r2 28
	fsti	f3 r4 0
	ldi	r5 r2 1
	fsti	f2 r2 40
	add	r4 r0 r5
	addi	r2 r2 43
	call	L_o_isrot_1965
	subi	r2 r2 43
	bne	r4 r0 L_else_8869
	ldi	r4 r2 26
	fldi	f2 r2 32
	fsti	f2 r4 1
	fldi	f2 r2 36
	fsti	f2 r4 2
	fldi	f2 r2 40
	fsti	f2 r4 3
	jump	L_cont_8870
L_else_8869 : 
	ldi	r4 r2 4
	fldi	f2 r4 2
	ldi	r5 r2 1
	fsti	f2 r2 42
	add	r4 r0 r5
	addi	r2 r2 45
	call	L_o_param_r2_1993
	subi	r2 r2 45
	fldi	f3 r2 42
	fmul	f2 f3 f2
	ldi	r4 r2 4
	fldi	f3 r4 1
	ldi	r5 r2 1
	fsti	f2 r2 44
	fsti	f3 r2 46
	add	r4 r0 r5
	addi	r2 r2 49
	call	L_o_param_r3_1995
	subi	r2 r2 49
	fldi	f3 r2 46
	fmul	f2 f3 f2
	fldi	f3 r2 44
	fadd	f2 f3 f2
	addi	r2 r2 49
	call	L_fhalf_1874
	subi	r2 r2 49
	fldi	f3 r2 32
	fsub	f2 f3 f2
	ldi	r4 r2 26
	fsti	f2 r4 1
	ldi	r5 r2 4
	fldi	f2 r5 2
	ldi	r6 r2 1
	fsti	f2 r2 48
	add	r4 r0 r6
	addi	r2 r2 51
	call	L_o_param_r1_1991
	subi	r2 r2 51
	fldi	f3 r2 48
	fmul	f2 f3 f2
	ldi	r4 r2 4
	fldi	f3 r4 0
	ldi	r5 r2 1
	fsti	f2 r2 50
	fsti	f3 r2 52
	add	r4 r0 r5
	addi	r2 r2 55
	call	L_o_param_r3_1995
	subi	r2 r2 55
	fldi	f3 r2 52
	fmul	f2 f3 f2
	fldi	f3 r2 50
	fadd	f2 f3 f2
	addi	r2 r2 55
	call	L_fhalf_1874
	subi	r2 r2 55
	fldi	f3 r2 36
	fsub	f2 f3 f2
	ldi	r4 r2 26
	fsti	f2 r4 2
	ldi	r5 r2 4
	fldi	f2 r5 1
	ldi	r6 r2 1
	fsti	f2 r2 54
	add	r4 r0 r6
	addi	r2 r2 57
	call	L_o_param_r1_1991
	subi	r2 r2 57
	fldi	f3 r2 54
	fmul	f2 f3 f2
	ldi	r4 r2 4
	fldi	f3 r4 0
	ldi	r4 r2 1
	fsti	f2 r2 56
	fsti	f3 r2 58
	addi	r2 r2 61
	call	L_o_param_r2_1993
	subi	r2 r2 61
	fldi	f3 r2 58
	fmul	f2 f3 f2
	fldi	f3 r2 56
	fadd	f2 f3 f2
	addi	r2 r2 61
	call	L_fhalf_1874
	subi	r2 r2 61
	fldi	f3 r2 40
	fsub	f2 f3 f2
	ldi	r4 r2 26
	fsti	f2 r4 3
L_cont_8870 : 
	fldi	f2 r2 28
	addi	r2 r2 61
	call	L_fiszero_1863
	subi	r2 r2 61
	bne	r4 r0 L_else_8871
	fldi	f2 r0 43
	fldi	f3 r2 28
	fdiv	f2 f2 f3
	ldi	r4 r2 26
	fsti	f2 r4 4
	jump	L_cont_8872
L_else_8871 : 
L_cont_8872 : 
	ldi	r4 r2 0
	ldi	r5 r2 3
	add	r5 r5 r4
	ldi	r6 r2 26
	sti	r6 r5 0
L_cont_8864 : 
L_cont_8856 : 
	ldi	r4 r2 0
	addi	r5 r4 -1
	ldi	r4 r2 2
	jump	L_iter_setup_dirvec_constants_2144
L_else_8854 : 
	return
L_setup_dirvec_constants_2147 : 
	addi	r5 r0 4144
	ldi	r5 r5 0
	addi	r5 r5 -1
	jump	L_iter_setup_dirvec_constants_2144
L_setup_startp_constants_2149 : 
	bgt	r0 r5 L_else_8874
	addi	r6 r0 5042
	add	r6 r6 r5
	ldi	r6 r6 0
	sti	r5 r2 0
	sti	r4 r2 1
	sti	r6 r2 2
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_o_param_ctbl_1997
	subi	r2 r2 4
	ldi	r5 r2 2
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	L_o_form_1959
	subi	r2 r2 5
	ldi	r5 r2 1
	fldi	f2 r5 0
	ldi	r6 r2 2
	sti	r4 r2 4
	fsti	f2 r2 6
	add	r4 r0 r6
	addi	r2 r2 9
	call	L_o_param_x_1975
	subi	r2 r2 9
	fldi	f3 r2 6
	fsub	f2 f3 f2
	ldi	r4 r2 3
	fsti	f2 r4 0
	ldi	r5 r2 1
	fldi	f2 r5 1
	ldi	r6 r2 2
	fsti	f2 r2 8
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_o_param_y_1977
	subi	r2 r2 11
	fldi	f3 r2 8
	fsub	f2 f3 f2
	ldi	r4 r2 3
	fsti	f2 r4 1
	ldi	r5 r2 1
	fldi	f2 r5 2
	ldi	r6 r2 2
	fsti	f2 r2 10
	add	r4 r0 r6
	addi	r2 r2 13
	call	L_o_param_z_1979
	subi	r2 r2 13
	fldi	f3 r2 10
	fsub	f2 f3 f2
	ldi	r4 r2 3
	fsti	f2 r4 2
	addi	r5 r0 2
	ldi	r6 r2 4
	bne	r6 r5 L_else_8876
	ldi	r5 r2 2
	add	r4 r0 r5
	addi	r2 r2 13
	call	L_o_param_abc_1973
	subi	r2 r2 13
	ldi	r5 r2 3
	fldi	f2 r5 0
	fldi	f3 r5 1
	fldi	f4 r5 2
	addi	r2 r2 13
	call	L_veciprod2_1935
	subi	r2 r2 13
	ldi	r4 r2 3
	fsti	f2 r4 3
	jump	L_cont_8877
L_else_8876 : 
	addi	r5 r0 2
	bgt	r6 r5 L_else_8878
	jump	L_cont_8879
L_else_8878 : 
	fldi	f2 r4 0
	fldi	f3 r4 1
	fldi	f4 r4 2
	ldi	r5 r2 2
	add	r4 r0 r5
	addi	r2 r2 13
	call	L_quadratic_2072
	subi	r2 r2 13
	addi	r4 r0 3
	ldi	r5 r2 4
	bne	r5 r4 L_else_8880
	fldi	f3 r0 43
	fsub	f2 f2 f3
	jump	L_cont_8881
L_else_8880 : 
	fadd	f2 f0 f2
L_cont_8881 : 
	ldi	r4 r2 3
	fsti	f2 r4 3
L_cont_8879 : 
L_cont_8877 : 
	ldi	r4 r2 0
	addi	r5 r4 -1
	ldi	r4 r2 1
	jump	L_setup_startp_constants_2149
L_else_8874 : 
	return
L_setup_startp_2152 : 
	addi	r5 r0 4138
	sti	r4 r2 0
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 2
	call	L_veccpy_1921
	subi	r2 r2 2
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r5 r4 -1
	ldi	r4 r2 0
	jump	L_setup_startp_constants_2149
L_check_all_inside_2174 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_8883
	addi	r4 r0 1
	return
L_else_8883 : 
	addi	r7 r0 5042
	add	r6 r7 r6
	ldi	r6 r6 0
	sti	r5 r2 0
	sti	r4 r2 1
	fsti	f4 r2 2
	fsti	f3 r2 4
	sti	r6 r2 6
	fsti	f2 r2 8
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_o_param_x_1975
	subi	r2 r2 11
	fldi	f3 r2 8
	fsub	f2 f3 f2
	ldi	r4 r2 6
	fsti	f2 r2 10
	addi	r2 r2 13
	call	L_o_param_y_1977
	subi	r2 r2 13
	fldi	f3 r2 4
	fsub	f2 f3 f2
	ldi	r4 r2 6
	fsti	f2 r2 12
	addi	r2 r2 15
	call	L_o_param_z_1979
	subi	r2 r2 15
	fldi	f3 r2 2
	fsub	f2 f3 f2
	ldi	r4 r2 6
	fsti	f2 r2 14
	addi	r2 r2 17
	call	L_o_form_1959
	subi	r2 r2 17
	addi	r5 r0 1
	bne	r4 r5 L_else_8885
	fldi	f2 r2 10
	addi	r2 r2 17
	call	L_fabs_1869
	subi	r2 r2 17
	ldi	r4 r2 6
	fsti	f2 r2 16
	addi	r2 r2 19
	call	L_o_param_a_1967
	subi	r2 r2 19
	fadd	f3 f0 f2
	fldi	f2 r2 16
	addi	r2 r2 19
	call	L_fless_1871
	subi	r2 r2 19
	bne	r4 r0 L_else_8887
	addi	r4 r0 0
	jump	L_cont_8888
L_else_8887 : 
	fldi	f2 r2 12
	addi	r2 r2 19
	call	L_fabs_1869
	subi	r2 r2 19
	ldi	r4 r2 6
	fsti	f2 r2 18
	addi	r2 r2 21
	call	L_o_param_b_1969
	subi	r2 r2 21
	fadd	f3 f0 f2
	fldi	f2 r2 18
	addi	r2 r2 21
	call	L_fless_1871
	subi	r2 r2 21
	bne	r4 r0 L_else_8889
	addi	r4 r0 0
	jump	L_cont_8890
L_else_8889 : 
	fldi	f2 r2 14
	addi	r2 r2 21
	call	L_fabs_1869
	subi	r2 r2 21
	ldi	r4 r2 6
	fsti	f2 r2 20
	addi	r2 r2 23
	call	L_o_param_c_1971
	subi	r2 r2 23
	fadd	f3 f0 f2
	fldi	f2 r2 20
	addi	r2 r2 23
	call	L_fless_1871
	subi	r2 r2 23
L_cont_8890 : 
L_cont_8888 : 
	bne	r4 r0 L_else_8891
	addi	r4 r0 1
	ldi	r5 r2 6
	sti	r4 r2 22
	add	r4 r0 r5
	addi	r2 r2 24
	call	L_o_isinvert_1963
	subi	r2 r2 24
	ldi	r5 r2 22
	sub	r4 r5 r4
	jump	L_cont_8892
L_else_8891 : 
	ldi	r4 r2 6
	addi	r2 r2 24
	call	L_o_isinvert_1963
	subi	r2 r2 24
L_cont_8892 : 
	jump	L_cont_8886
L_else_8885 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_8893
	ldi	r4 r2 6
	addi	r2 r2 24
	call	L_o_param_abc_1973
	subi	r2 r2 24
	fldi	f2 r2 10
	fldi	f3 r2 12
	fldi	f4 r2 14
	addi	r2 r2 24
	call	L_veciprod2_1935
	subi	r2 r2 24
	addi	r4 r0 1
	ldi	r5 r2 6
	sti	r4 r2 23
	fsti	f2 r2 24
	add	r4 r0 r5
	addi	r2 r2 27
	call	L_o_isinvert_1963
	subi	r2 r2 27
	fldi	f2 r2 24
	sti	r4 r2 26
	addi	r2 r2 28
	call	L_fisneg_1867
	subi	r2 r2 28
	ldi	r5 r2 26
	xor	r4 r5 r4
	ldi	r5 r2 23
	sub	r4 r5 r4
	jump	L_cont_8894
L_else_8893 : 
	fldi	f2 r2 10
	fldi	f3 r2 12
	fldi	f4 r2 14
	ldi	r4 r2 6
	addi	r2 r2 28
	call	L_quadratic_2072
	subi	r2 r2 28
	ldi	r4 r2 6
	fsti	f2 r2 28
	addi	r2 r2 31
	call	L_o_form_1959
	subi	r2 r2 31
	addi	r5 r0 3
	bne	r4 r5 L_else_8896
	fldi	f2 r0 43
	fldi	f3 r2 28
	fsub	f2 f3 f2
	jump	L_cont_8897
L_else_8896 : 
	fldi	f2 r2 28
	fadd	f2 f0 f2
L_cont_8897 : 
	addi	r4 r0 1
	ldi	r5 r2 6
	sti	r4 r2 30
	fsti	f2 r2 32
	add	r4 r0 r5
	addi	r2 r2 35
	call	L_o_isinvert_1963
	subi	r2 r2 35
	fldi	f2 r2 32
	sti	r4 r2 34
	addi	r2 r2 36
	call	L_fisneg_1867
	subi	r2 r2 36
	ldi	r5 r2 34
	xor	r4 r5 r4
	ldi	r5 r2 30
	sub	r4 r5 r4
L_cont_8894 : 
L_cont_8886 : 
	bne	r4 r0 L_else_8899
	ldi	r4 r2 1
	addi	r4 r4 1
	fldi	f2 r2 8
	fldi	f3 r2 4
	fldi	f4 r2 2
	ldi	r5 r2 0
	jump	L_check_all_inside_2174
L_else_8899 : 
	addi	r4 r0 0
	return
L_shadow_check_and_group_2180 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_8900
	addi	r4 r0 0
	return
L_else_8900 : 
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
	call	L_solver_fast_2114
	subi	r2 r2 4
	addi	r5 r0 4145
	fldi	f2 r5 0
	fsti	f2 r2 4
	bne	r4 r0 L_else_8902
	addi	r4 r0 0
	jump	L_cont_8903
L_else_8902 : 
	fldi	f3 r0 25
	addi	r2 r2 7
	call	L_fless_1871
	subi	r2 r2 7
L_cont_8903 : 
	bne	r4 r0 L_else_8904
	addi	r4 r0 5042
	ldi	r5 r2 2
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r2 r2 7
	call	L_o_isinvert_1963
	subi	r2 r2 7
	bne	r4 r0 L_else_8905
	addi	r4 r0 0
	return
L_else_8905 : 
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2180
L_else_8904 : 
	fldi	f2 r0 24
	fldi	f3 r2 4
	fadd	f2 f3 f2
	addi	r4 r0 4111
	fldi	f3 r4 0
	fmul	f3 f3 f2
	addi	r4 r0 4114
	fldi	f4 r4 0
	fadd	f3 f3 f4
	addi	r4 r0 4111
	fldi	f4 r4 1
	fmul	f4 f4 f2
	addi	r4 r0 4114
	fldi	f5 r4 1
	fadd	f4 f4 f5
	addi	r4 r0 4111
	fldi	f5 r4 2
	fmul	f2 f5 f2
	addi	r4 r0 4114
	fldi	f5 r4 2
	fadd	f2 f2 f5
	addi	r4 r0 0
	ldi	r5 r2 0
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	addi	r2 r2 7
	call	L_check_all_inside_2174
	subi	r2 r2 7
	bne	r4 r0 L_else_8906
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 0
	jump	L_shadow_check_and_group_2180
L_else_8906 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_group_2183 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r7 r0 -1
	bne	r6 r7 L_else_8907
	addi	r4 r0 0
	return
L_else_8907 : 
	addi	r7 r0 4155
	add	r6 r7 r6
	ldi	r6 r6 0
	addi	r7 r0 0
	sti	r5 r2 0
	sti	r4 r2 1
	add	r5 r0 r6
	add	r4 r0 r7
	addi	r2 r2 3
	call	L_shadow_check_and_group_2180
	subi	r2 r2 3
	bne	r4 r0 L_else_8908
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 0
	jump	L_shadow_check_one_or_group_2183
L_else_8908 : 
	addi	r4 r0 1
	return
L_shadow_check_one_or_matrix_2186 : 
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r7 r6 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_8909
	addi	r4 r0 0
	return
L_else_8909 : 
	addi	r8 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r7 r8 L_else_8910
	addi	r4 r0 1
	jump	L_cont_8911
L_else_8910 : 
	addi	r8 r0 4977
	addi	r9 r0 4114
	add	r6 r0 r9
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 4
	call	L_solver_fast_2114
	subi	r2 r2 4
	bne	r4 r0 L_else_8912
	addi	r4 r0 0
	jump	L_cont_8913
L_else_8912 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	fldi	f3 r0 23
	addi	r2 r2 4
	call	L_fless_1871
	subi	r2 r2 4
	bne	r4 r0 L_else_8914
	addi	r4 r0 0
	jump	L_cont_8915
L_else_8914 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2183
	subi	r2 r2 4
	bne	r4 r0 L_else_8916
	addi	r4 r0 0
	jump	L_cont_8917
L_else_8916 : 
	addi	r4 r0 1
L_cont_8917 : 
L_cont_8915 : 
L_cont_8913 : 
L_cont_8911 : 
	bne	r4 r0 L_else_8918
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2186
L_else_8918 : 
	addi	r4 r0 1
	ldi	r5 r2 0
	addi	r2 r2 4
	call	L_shadow_check_one_or_group_2183
	subi	r2 r2 4
	bne	r4 r0 L_else_8919
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	jump	L_shadow_check_one_or_matrix_2186
L_else_8919 : 
	addi	r4 r0 1
	return
L_solve_each_element_2189 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_8920
	return
L_else_8920 : 
	addi	r8 r0 4135
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r7
	add	r6 r0 r8
	addi	r2 r2 5
	call	L_solver_2091
	subi	r2 r2 5
	bne	r4 r0 L_else_8922
	addi	r4 r0 5042
	ldi	r5 r2 3
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r2 r2 5
	call	L_o_isinvert_1963
	subi	r2 r2 5
	bne	r4 r0 L_else_8923
	return
L_else_8923 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2189
L_else_8922 : 
	addi	r5 r0 4145
	fldi	f3 r5 0
	fldi	f2 r0 28
	sti	r4 r2 4
	fsti	f3 r2 6
	addi	r2 r2 9
	call	L_fless_1871
	subi	r2 r2 9
	bne	r4 r0 L_else_8926
	jump	L_cont_8927
L_else_8926 : 
	addi	r4 r0 4154
	fldi	f3 r4 0
	fldi	f2 r2 6
	addi	r2 r2 9
	call	L_fless_1871
	subi	r2 r2 9
	bne	r4 r0 L_else_8928
	jump	L_cont_8929
L_else_8928 : 
	fldi	f2 r0 24
	fldi	f3 r2 6
	fadd	f2 f3 f2
	ldi	r4 r2 0
	fldi	f3 r4 0
	fmul	f3 f3 f2
	addi	r5 r0 4135
	fldi	f4 r5 0
	fadd	f3 f3 f4
	fldi	f4 r4 1
	fmul	f4 f4 f2
	addi	r5 r0 4135
	fldi	f5 r5 1
	fadd	f4 f4 f5
	fldi	f5 r4 2
	fmul	f5 f5 f2
	addi	r5 r0 4135
	fldi	f6 r5 2
	fadd	f5 f5 f6
	addi	r5 r0 0
	ldi	r6 r2 1
	fsti	f5 r2 8
	fsti	f4 r2 10
	fsti	f3 r2 12
	fsti	f2 r2 14
	add	r4 r0 r5
	add	r5 r0 r6
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 17
	call	L_check_all_inside_2174
	subi	r2 r2 17
	bne	r4 r0 L_else_8930
	jump	L_cont_8931
L_else_8930 : 
	addi	r4 r0 4154
	fldi	f2 r2 14
	fsti	f2 r4 0
	addi	r4 r0 4114
	fldi	f2 r2 12
	fldi	f3 r2 10
	fldi	f4 r2 8
	addi	r2 r2 17
	call	L_vecset_1911
	subi	r2 r2 17
	addi	r4 r0 4117
	ldi	r5 r2 3
	sti	r5 r4 0
	addi	r4 r0 4146
	ldi	r5 r2 4
	sti	r5 r4 0
L_cont_8931 : 
L_cont_8929 : 
L_cont_8927 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_each_element_2189
L_solve_one_or_network_2193 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_8932
	return
L_else_8932 : 
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
	call	L_solve_each_element_2189
	subi	r2 r2 4
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_one_or_network_2193
L_trace_or_matrix_2197 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	ldi	r8 r7 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_8934
	return
L_else_8934 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_8936
	addi	r8 r0 1
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 4
	call	L_solve_one_or_network_2193
	subi	r2 r2 4
	jump	L_cont_8937
L_else_8936 : 
	addi	r9 r0 4135
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r8
	add	r6 r0 r9
	addi	r2 r2 5
	call	L_solver_2091
	subi	r2 r2 5
	bne	r4 r0 L_else_8938
	jump	L_cont_8939
L_else_8938 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	addi	r2 r2 5
	call	L_fless_1871
	subi	r2 r2 5
	bne	r4 r0 L_else_8940
	jump	L_cont_8941
L_else_8940 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_2193
	subi	r2 r2 5
L_cont_8941 : 
L_cont_8939 : 
L_cont_8937 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_2197
L_solve_each_element_fast_2203 : 
	sti	r6 r2 0
	sti	r4 r2 1
	sti	r5 r2 2
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_d_vec_2018
	subi	r2 r2 4
	ldi	r5 r2 1
	ldi	r6 r2 2
	add	r7 r6 r5
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_8942
	return
L_else_8942 : 
	ldi	r8 r2 0
	sti	r4 r2 3
	sti	r7 r2 4
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_solver_fast2_2132
	subi	r2 r2 6
	bne	r4 r0 L_else_8944
	addi	r4 r0 5042
	ldi	r5 r2 4
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r2 r2 6
	call	L_o_isinvert_1963
	subi	r2 r2 6
	bne	r4 r0 L_else_8945
	return
L_else_8945 : 
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 2
	ldi	r6 r2 0
	jump	L_solve_each_element_fast_2203
L_else_8944 : 
	addi	r5 r0 4145
	fldi	f3 r5 0
	fldi	f2 r0 28
	sti	r4 r2 5
	fsti	f3 r2 6
	addi	r2 r2 9
	call	L_fless_1871
	subi	r2 r2 9
	bne	r4 r0 L_else_8947
	jump	L_cont_8948
L_else_8947 : 
	addi	r4 r0 4154
	fldi	f3 r4 0
	fldi	f2 r2 6
	addi	r2 r2 9
	call	L_fless_1871
	subi	r2 r2 9
	bne	r4 r0 L_else_8949
	jump	L_cont_8950
L_else_8949 : 
	fldi	f2 r0 24
	fldi	f3 r2 6
	fadd	f2 f3 f2
	ldi	r4 r2 3
	fldi	f3 r4 0
	fmul	f3 f3 f2
	addi	r5 r0 4138
	fldi	f4 r5 0
	fadd	f3 f3 f4
	fldi	f4 r4 1
	fmul	f4 f4 f2
	addi	r5 r0 4138
	fldi	f5 r5 1
	fadd	f4 f4 f5
	fldi	f5 r4 2
	fmul	f5 f5 f2
	addi	r4 r0 4138
	fldi	f6 r4 2
	fadd	f5 f5 f6
	addi	r4 r0 0
	ldi	r5 r2 2
	fsti	f5 r2 8
	fsti	f4 r2 10
	fsti	f3 r2 12
	fsti	f2 r2 14
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	addi	r2 r2 17
	call	L_check_all_inside_2174
	subi	r2 r2 17
	bne	r4 r0 L_else_8951
	jump	L_cont_8952
L_else_8951 : 
	addi	r4 r0 4154
	fldi	f2 r2 14
	fsti	f2 r4 0
	addi	r4 r0 4114
	fldi	f2 r2 12
	fldi	f3 r2 10
	fldi	f4 r2 8
	addi	r2 r2 17
	call	L_vecset_1911
	subi	r2 r2 17
	addi	r4 r0 4117
	ldi	r5 r2 4
	sti	r5 r4 0
	addi	r4 r0 4146
	ldi	r5 r2 5
	sti	r5 r4 0
L_cont_8952 : 
L_cont_8950 : 
L_cont_8948 : 
	ldi	r4 r2 1
	addi	r4 r4 1
	ldi	r5 r2 2
	ldi	r6 r2 0
	jump	L_solve_each_element_fast_2203
L_solve_one_or_network_fast_2207 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	addi	r8 r0 -1
	bne	r7 r8 L_else_8953
	return
L_else_8953 : 
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
	call	L_solve_each_element_fast_2203
	subi	r2 r2 4
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_solve_one_or_network_fast_2207
L_trace_or_matrix_fast_2211 : 
	add	r7 r5 r4
	ldi	r7 r7 0
	ldi	r8 r7 0
	addi	r9 r0 -1
	bne	r8 r9 L_else_8955
	return
L_else_8955 : 
	addi	r9 r0 99
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	bne	r8 r9 L_else_8957
	addi	r8 r0 1
	add	r5 r0 r7
	add	r4 r0 r8
	addi	r2 r2 4
	call	L_solve_one_or_network_fast_2207
	subi	r2 r2 4
	jump	L_cont_8958
L_else_8957 : 
	sti	r7 r2 3
	add	r5 r0 r6
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_solver_fast2_2132
	subi	r2 r2 5
	bne	r4 r0 L_else_8959
	jump	L_cont_8960
L_else_8959 : 
	addi	r4 r0 4145
	fldi	f2 r4 0
	addi	r4 r0 4154
	fldi	f3 r4 0
	addi	r2 r2 5
	call	L_fless_1871
	subi	r2 r2 5
	bne	r4 r0 L_else_8961
	jump	L_cont_8962
L_else_8961 : 
	addi	r4 r0 1
	ldi	r5 r2 3
	ldi	r6 r2 0
	addi	r2 r2 5
	call	L_solve_one_or_network_fast_2207
	subi	r2 r2 5
L_cont_8962 : 
L_cont_8960 : 
L_cont_8958 : 
	ldi	r4 r2 2
	addi	r4 r4 1
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_trace_or_matrix_fast_2211
L_judge_intersection_fast_2215 : 
	addi	r5 r0 4154
	fldi	f2 r0 22
	fsti	f2 r5 0
	addi	r5 r0 0
	addi	r6 r0 4255
	ldi	r6 r6 0
	add	r1 r0 r6
	add	r6 r0 r4
	add	r4 r0 r5
	add	r5 r0 r1
	addi	r2 r2 1
	call	L_trace_or_matrix_fast_2211
	subi	r2 r2 1
	addi	r4 r0 4154
	fldi	f3 r4 0
	fldi	f2 r0 23
	fsti	f3 r2 0
	addi	r2 r2 3
	call	L_fless_1871
	subi	r2 r2 3
	bne	r4 r0 L_else_8963
	addi	r4 r0 0
	return
L_else_8963 : 
	fldi	f3 r0 21
	fldi	f2 r2 0
	jump	L_fless_1871
L_get_nvector_2223 : 
	sti	r4 r2 0
	sti	r5 r2 1
	addi	r2 r2 3
	call	L_o_form_1959
	subi	r2 r2 3
	addi	r5 r0 1
	bne	r4 r5 L_else_8964
	addi	r4 r0 4146
	ldi	r4 r4 0
	addi	r5 r0 4118
	sti	r4 r2 2
	add	r4 r0 r5
	addi	r2 r2 4
	call	L_vecbzero_1919
	subi	r2 r2 4
	addi	r4 r0 4118
	ldi	r5 r2 2
	addi	r6 r5 -1
	addi	r5 r5 -1
	ldi	r7 r2 1
	add	r5 r7 r5
	fldi	f2 r5 0
	sti	r6 r2 3
	sti	r4 r2 4
	addi	r2 r2 6
	call	L_sgn_1903
	subi	r2 r2 6
	addi	r2 r2 6
	call	L_fneg_1876
	subi	r2 r2 6
	ldi	r4 r2 3
	ldi	r5 r2 4
	add	r4 r5 r4
	fsti	f2 r4 0
	return
L_else_8964 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_8966
	addi	r4 r0 4118
	ldi	r5 r2 0
	sti	r4 r2 5
	add	r4 r0 r5
	addi	r2 r2 7
	call	L_o_param_a_1967
	subi	r2 r2 7
	addi	r2 r2 7
	call	L_fneg_1876
	subi	r2 r2 7
	ldi	r4 r2 5
	fsti	f2 r4 0
	addi	r4 r0 4118
	ldi	r5 r2 0
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	L_o_param_b_1969
	subi	r2 r2 8
	addi	r2 r2 8
	call	L_fneg_1876
	subi	r2 r2 8
	ldi	r4 r2 6
	fsti	f2 r4 1
	addi	r4 r0 4118
	ldi	r5 r2 0
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	L_o_param_c_1971
	subi	r2 r2 9
	addi	r2 r2 9
	call	L_fneg_1876
	subi	r2 r2 9
	ldi	r4 r2 7
	fsti	f2 r4 2
	return
L_else_8966 : 
	addi	r4 r0 4114
	fldi	f2 r4 0
	ldi	r4 r2 0
	fsti	f2 r2 8
	addi	r2 r2 11
	call	L_o_param_x_1975
	subi	r2 r2 11
	fldi	f3 r2 8
	fsub	f2 f3 f2
	addi	r4 r0 4114
	fldi	f3 r4 1
	ldi	r4 r2 0
	fsti	f2 r2 10
	fsti	f3 r2 12
	addi	r2 r2 15
	call	L_o_param_y_1977
	subi	r2 r2 15
	fldi	f3 r2 12
	fsub	f2 f3 f2
	addi	r4 r0 4114
	fldi	f3 r4 2
	ldi	r4 r2 0
	fsti	f2 r2 14
	fsti	f3 r2 16
	addi	r2 r2 19
	call	L_o_param_z_1979
	subi	r2 r2 19
	fldi	f3 r2 16
	fsub	f2 f3 f2
	ldi	r4 r2 0
	fsti	f2 r2 18
	addi	r2 r2 21
	call	L_o_param_a_1967
	subi	r2 r2 21
	fldi	f3 r2 10
	fmul	f2 f3 f2
	ldi	r4 r2 0
	fsti	f2 r2 20
	addi	r2 r2 23
	call	L_o_param_b_1969
	subi	r2 r2 23
	fldi	f3 r2 14
	fmul	f2 f3 f2
	ldi	r4 r2 0
	fsti	f2 r2 22
	addi	r2 r2 25
	call	L_o_param_c_1971
	subi	r2 r2 25
	fldi	f3 r2 18
	fmul	f2 f3 f2
	ldi	r4 r2 0
	fsti	f2 r2 24
	addi	r2 r2 27
	call	L_o_isrot_1965
	subi	r2 r2 27
	bne	r4 r0 L_else_8968
	addi	r4 r0 4118
	fldi	f2 r2 20
	fsti	f2 r4 0
	addi	r4 r0 4118
	fldi	f2 r2 22
	fsti	f2 r4 1
	addi	r4 r0 4118
	fldi	f2 r2 24
	fsti	f2 r4 2
	jump	L_cont_8969
L_else_8968 : 
	addi	r4 r0 4118
	ldi	r5 r2 0
	sti	r4 r2 26
	add	r4 r0 r5
	addi	r2 r2 28
	call	L_o_param_r3_1995
	subi	r2 r2 28
	fldi	f3 r2 14
	fmul	f2 f3 f2
	ldi	r4 r2 0
	fsti	f2 r2 28
	addi	r2 r2 31
	call	L_o_param_r2_1993
	subi	r2 r2 31
	fldi	f3 r2 18
	fmul	f2 f3 f2
	fldi	f4 r2 28
	fadd	f2 f4 f2
	addi	r2 r2 31
	call	L_fhalf_1874
	subi	r2 r2 31
	fldi	f3 r2 20
	fadd	f2 f3 f2
	ldi	r4 r2 26
	fsti	f2 r4 0
	addi	r4 r0 4118
	ldi	r5 r2 0
	sti	r4 r2 30
	add	r4 r0 r5
	addi	r2 r2 32
	call	L_o_param_r3_1995
	subi	r2 r2 32
	fldi	f3 r2 10
	fmul	f2 f3 f2
	ldi	r4 r2 0
	fsti	f2 r2 32
	addi	r2 r2 35
	call	L_o_param_r1_1991
	subi	r2 r2 35
	fldi	f3 r2 18
	fmul	f2 f3 f2
	fldi	f3 r2 32
	fadd	f2 f3 f2
	addi	r2 r2 35
	call	L_fhalf_1874
	subi	r2 r2 35
	fldi	f3 r2 22
	fadd	f2 f3 f2
	ldi	r4 r2 30
	fsti	f2 r4 1
	addi	r4 r0 4118
	ldi	r5 r2 0
	sti	r4 r2 34
	add	r4 r0 r5
	addi	r2 r2 36
	call	L_o_param_r2_1993
	subi	r2 r2 36
	fldi	f3 r2 10
	fmul	f2 f3 f2
	ldi	r4 r2 0
	fsti	f2 r2 36
	addi	r2 r2 39
	call	L_o_param_r1_1991
	subi	r2 r2 39
	fldi	f3 r2 14
	fmul	f2 f3 f2
	fldi	f3 r2 36
	fadd	f2 f3 f2
	addi	r2 r2 39
	call	L_fhalf_1874
	subi	r2 r2 39
	fldi	f3 r2 24
	fadd	f2 f3 f2
	ldi	r4 r2 34
	fsti	f2 r4 2
L_cont_8969 : 
	addi	r4 r0 4118
	ldi	r5 r2 0
	sti	r4 r2 38
	add	r4 r0 r5
	addi	r2 r2 40
	call	L_o_isinvert_1963
	subi	r2 r2 40
	add	r5 r0 r4
	ldi	r4 r2 38
	jump	L_vecunit_sgn_1929
L_utexture_2226 : 
	ldi	r6 r4 0
	addi	r7 r0 4121
	ldi	r8 r4 8
	fldi	f2 r8 0
	fsti	f2 r7 0
	addi	r7 r0 4121
	ldi	r8 r4 8
	fldi	f2 r8 1
	fsti	f2 r7 1
	addi	r7 r0 4121
	ldi	r8 r4 8
	fldi	f2 r8 2
	fsti	f2 r7 2
	addi	r7 r0 1
	bne	r6 r7 L_else_8973
	fldi	f2 r5 0
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f2 r2 2
	addi	r2 r2 5
	call	L_o_param_x_1975
	subi	r2 r2 5
	fldi	f3 r2 2
	fsub	f2 f3 f2
	fldi	f3 r0 11
	fmul	f3 f2 f3
	flr	f3 f3
	fldi	f4 r0 10
	fmul	f3 f3 f4
	fsub	f2 f2 f3
	fldi	f3 r0 13
	addi	r2 r2 5
	call	L_fless_1871
	subi	r2 r2 5
	ldi	r5 r2 1
	fldi	f2 r5 2
	ldi	r5 r2 0
	sti	r4 r2 4
	fsti	f2 r2 6
	add	r4 r0 r5
	addi	r2 r2 9
	call	L_o_param_z_1979
	subi	r2 r2 9
	fldi	f3 r2 6
	fsub	f2 f3 f2
	fldi	f3 r0 11
	fmul	f3 f2 f3
	flr	f3 f3
	fldi	f4 r0 10
	fmul	f3 f3 f4
	fsub	f2 f2 f3
	fldi	f3 r0 13
	addi	r2 r2 9
	call	L_fless_1871
	subi	r2 r2 9
	addi	r5 r0 4121
	ldi	r6 r2 4
	bne	r6 r0 L_else_8975
	bne	r4 r0 L_else_8977
	fldi	f2 r0 15
	jump	L_cont_8978
L_else_8977 : 
	fldi	f2 r0 28
L_cont_8978 : 
	jump	L_cont_8976
L_else_8975 : 
	bne	r4 r0 L_else_8979
	fldi	f2 r0 28
	jump	L_cont_8980
L_else_8979 : 
	fldi	f2 r0 15
L_cont_8980 : 
L_cont_8976 : 
	fsti	f2 r5 1
	return
L_else_8973 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_8982
	fldi	f2 r5 1
	fldi	f3 r0 12
	fmul	f2 f2 f3
	addi	r2 r2 9
	call	L_sin_1884
	subi	r2 r2 9
	addi	r2 r2 9
	call	L_fsqr_1878
	subi	r2 r2 9
	addi	r4 r0 4121
	fldi	f3 r0 15
	fmul	f3 f3 f2
	fsti	f3 r4 0
	addi	r4 r0 4121
	fldi	f3 r0 15
	fldi	f4 r0 43
	fsub	f2 f4 f2
	fmul	f2 f3 f2
	fsti	f2 r4 1
	return
L_else_8982 : 
	addi	r7 r0 3
	bne	r6 r7 L_else_8984
	fldi	f2 r5 0
	sti	r4 r2 0
	sti	r5 r2 1
	fsti	f2 r2 8
	addi	r2 r2 11
	call	L_o_param_x_1975
	subi	r2 r2 11
	fldi	f3 r2 8
	fsub	f2 f3 f2
	ldi	r4 r2 1
	fldi	f3 r4 2
	ldi	r4 r2 0
	fsti	f2 r2 10
	fsti	f3 r2 12
	addi	r2 r2 15
	call	L_o_param_z_1979
	subi	r2 r2 15
	fldi	f3 r2 12
	fsub	f2 f3 f2
	fldi	f3 r2 10
	fsti	f2 r2 14
	fadd	f2 f0 f3
	addi	r2 r2 17
	call	L_fsqr_1878
	subi	r2 r2 17
	fldi	f3 r2 14
	fsti	f2 r2 16
	fadd	f2 f0 f3
	addi	r2 r2 19
	call	L_fsqr_1878
	subi	r2 r2 19
	fldi	f3 r2 16
	fadd	f2 f3 f2
	addi	r2 r2 19
	call	L_sqrt_1894
	subi	r2 r2 19
	fldi	f3 r0 13
	fdiv	f2 f2 f3
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 17
	fmul	f2 f2 f3
	addi	r2 r2 19
	call	L_cos_1886
	subi	r2 r2 19
	addi	r2 r2 19
	call	L_fsqr_1878
	subi	r2 r2 19
	addi	r4 r0 4121
	fldi	f3 r0 15
	fmul	f3 f2 f3
	fsti	f3 r4 1
	addi	r4 r0 4121
	fldi	f3 r0 43
	fsub	f2 f3 f2
	fldi	f3 r0 15
	fmul	f2 f2 f3
	fsti	f2 r4 2
	return
L_else_8984 : 
	addi	r7 r0 4
	bne	r6 r7 L_else_8986
	fldi	f2 r5 0
	sti	r5 r2 1
	sti	r4 r2 0
	fsti	f2 r2 18
	addi	r2 r2 21
	call	L_o_param_x_1975
	subi	r2 r2 21
	fldi	f3 r2 18
	fsub	f2 f3 f2
	ldi	r4 r2 0
	fsti	f2 r2 20
	addi	r2 r2 23
	call	L_o_param_a_1967
	subi	r2 r2 23
	addi	r2 r2 23
	call	L_sqrt_1894
	subi	r2 r2 23
	fldi	f3 r2 20
	fmul	f2 f3 f2
	ldi	r4 r2 1
	fldi	f3 r4 2
	ldi	r5 r2 0
	fsti	f2 r2 22
	fsti	f3 r2 24
	add	r4 r0 r5
	addi	r2 r2 27
	call	L_o_param_z_1979
	subi	r2 r2 27
	fldi	f3 r2 24
	fsub	f2 f3 f2
	ldi	r4 r2 0
	fsti	f2 r2 26
	addi	r2 r2 29
	call	L_o_param_c_1971
	subi	r2 r2 29
	addi	r2 r2 29
	call	L_sqrt_1894
	subi	r2 r2 29
	fldi	f3 r2 26
	fmul	f2 f3 f2
	fldi	f3 r2 22
	fsti	f2 r2 28
	fadd	f2 f0 f3
	addi	r2 r2 31
	call	L_fsqr_1878
	subi	r2 r2 31
	fldi	f3 r2 28
	fsti	f2 r2 30
	fadd	f2 f0 f3
	addi	r2 r2 33
	call	L_fsqr_1878
	subi	r2 r2 33
	fldi	f3 r2 30
	fadd	f2 f3 f2
	fldi	f3 r2 22
	fsti	f2 r2 32
	fadd	f2 f0 f3
	addi	r2 r2 35
	call	L_fabs_1869
	subi	r2 r2 35
	fldi	f3 r0 20
	addi	r2 r2 35
	call	L_fless_1871
	subi	r2 r2 35
	bne	r4 r0 L_else_8987
	fldi	f2 r2 22
	fldi	f3 r2 28
	fdiv	f2 f3 f2
	addi	r2 r2 35
	call	L_fabs_1869
	subi	r2 r2 35
	addi	r2 r2 35
	call	L_atan_1888
	subi	r2 r2 35
	fldi	f3 r0 18
	fmul	f2 f2 f3
	fldi	f3 r0 17
	fdiv	f2 f2 f3
	jump	L_cont_8988
L_else_8987 : 
	fldi	f2 r0 19
L_cont_8988 : 
	flr	f3 f2
	fsub	f2 f2 f3
	ldi	r4 r2 1
	fldi	f3 r4 1
	ldi	r4 r2 0
	fsti	f2 r2 34
	fsti	f3 r2 36
	addi	r2 r2 39
	call	L_o_param_y_1977
	subi	r2 r2 39
	fldi	f3 r2 36
	fsub	f2 f3 f2
	ldi	r4 r2 0
	fsti	f2 r2 38
	addi	r2 r2 41
	call	L_o_param_b_1969
	subi	r2 r2 41
	addi	r2 r2 41
	call	L_sqrt_1894
	subi	r2 r2 41
	fldi	f3 r2 38
	fmul	f2 f3 f2
	fldi	f3 r2 32
	fsti	f2 r2 40
	fadd	f2 f0 f3
	addi	r2 r2 43
	call	L_fabs_1869
	subi	r2 r2 43
	fldi	f3 r0 20
	addi	r2 r2 43
	call	L_fless_1871
	subi	r2 r2 43
	bne	r4 r0 L_else_8989
	fldi	f2 r2 32
	fldi	f3 r2 40
	fdiv	f2 f3 f2
	addi	r2 r2 43
	call	L_fabs_1869
	subi	r2 r2 43
	addi	r2 r2 43
	call	L_atan_1888
	subi	r2 r2 43
	fldi	f3 r0 18
	fmul	f2 f2 f3
	fldi	f3 r0 17
	fdiv	f2 f2 f3
	jump	L_cont_8990
L_else_8989 : 
	fldi	f2 r0 19
L_cont_8990 : 
	flr	f3 f2
	fsub	f2 f2 f3
	fldi	f3 r0 16
	fldi	f4 r0 44
	fldi	f5 r2 34
	fsub	f4 f4 f5
	fsti	f2 r2 42
	fsti	f3 r2 44
	fadd	f2 f0 f4
	addi	r2 r2 47
	call	L_fsqr_1878
	subi	r2 r2 47
	fldi	f3 r2 44
	fsub	f2 f3 f2
	fldi	f3 r0 44
	fldi	f4 r2 42
	fsub	f3 f3 f4
	fsti	f2 r2 46
	fadd	f2 f0 f3
	addi	r2 r2 49
	call	L_fsqr_1878
	subi	r2 r2 49
	fldi	f3 r2 46
	fsub	f2 f3 f2
	fsti	f2 r2 48
	addi	r2 r2 51
	call	L_fisneg_1867
	subi	r2 r2 51
	bne	r4 r0 L_else_8991
	fldi	f2 r2 48
	fadd	f2 f0 f2
	jump	L_cont_8992
L_else_8991 : 
	fldi	f2 r0 28
L_cont_8992 : 
	addi	r4 r0 4121
	fldi	f3 r0 15
	fmul	f2 f3 f2
	fldi	f3 r0 14
	fdiv	f2 f2 f3
	fsti	f2 r4 2
	return
L_else_8986 : 
	return
L_add_light_2229 : 
	fsti	f4 r2 0
	fsti	f3 r2 2
	fsti	f2 r2 4
	addi	r2 r2 7
	call	L_fispos_1865
	subi	r2 r2 7
	bne	r4 r0 L_else_8995
	jump	L_cont_8996
L_else_8995 : 
	addi	r4 r0 4127
	addi	r5 r0 4121
	fldi	f2 r2 4
	addi	r2 r2 7
	call	L_vecaccum_1940
	subi	r2 r2 7
L_cont_8996 : 
	fldi	f2 r2 2
	addi	r2 r2 7
	call	L_fispos_1865
	subi	r2 r2 7
	bne	r4 r0 L_else_8997
	return
L_else_8997 : 
	fldi	f2 r2 2
	addi	r2 r2 7
	call	L_fsqr_1878
	subi	r2 r2 7
	addi	r2 r2 7
	call	L_fsqr_1878
	subi	r2 r2 7
	fldi	f3 r2 0
	fmul	f2 f2 f3
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f3 r5 0
	fadd	f3 f3 f2
	fsti	f3 r4 0
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f3 r5 1
	fadd	f3 f3 f2
	fsti	f3 r4 1
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f3 r5 2
	fadd	f2 f3 f2
	fsti	f2 r4 2
	return
L_trace_reflections_2233 : 
	bgt	r0 r4 L_else_9000
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
	call	L_judge_intersection_fast_2215
	subi	r2 r2 11
	bne	r4 r0 L_else_9003
	jump	L_cont_9004
L_else_9003 : 
	addi	r4 r0 4117
	ldi	r4 r4 0
	addi	r5 r0 4
	mul	r4 r4 r5
	addi	r5 r0 4146
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r5 r2 9
	ldi	r6 r5 0
	bne	r4 r6 L_else_9005
	addi	r4 r0 0
	addi	r6 r0 4255
	ldi	r6 r6 0
	add	r5 r0 r6
	addi	r2 r2 11
	call	L_shadow_check_one_or_matrix_2186
	subi	r2 r2 11
	bne	r4 r0 L_else_9007
	addi	r4 r0 4118
	ldi	r5 r2 8
	sti	r4 r2 10
	add	r4 r0 r5
	addi	r2 r2 12
	call	L_d_vec_2018
	subi	r2 r2 12
	add	r5 r0 r4
	ldi	r4 r2 10
	addi	r2 r2 12
	call	L_veciprod_1932
	subi	r2 r2 12
	ldi	r4 r2 9
	fldi	f3 r4 2
	fldi	f4 r2 6
	fmul	f5 f3 f4
	fmul	f2 f5 f2
	ldi	r4 r2 8
	fsti	f2 r2 12
	fsti	f3 r2 14
	addi	r2 r2 17
	call	L_d_vec_2018
	subi	r2 r2 17
	add	r5 r0 r4
	ldi	r4 r2 4
	addi	r2 r2 17
	call	L_veciprod_1932
	subi	r2 r2 17
	fldi	f3 r2 14
	fmul	f3 f3 f2
	fldi	f2 r2 12
	fldi	f4 r2 2
	addi	r2 r2 17
	call	L_add_light_2229
	subi	r2 r2 17
	jump	L_cont_9008
L_else_9007 : 
L_cont_9008 : 
	jump	L_cont_9006
L_else_9005 : 
L_cont_9006 : 
L_cont_9004 : 
	ldi	r4 r2 0
	addi	r4 r4 -1
	fldi	f2 r2 6
	fldi	f3 r2 2
	ldi	r5 r2 4
	jump	L_trace_reflections_2233
L_else_9000 : 
	return
L_trace_ray_2238 : 
	addi	r7 r0 4
	bgt	r4 r7 L_else_9011
	fsti	f3 r2 0
	sti	r6 r2 2
	fsti	f2 r2 4
	sti	r4 r2 6
	sti	r5 r2 7
	add	r4 r0 r6
	addi	r2 r2 9
	call	L_p_surface_ids_2003
	subi	r2 r2 9
	addi	r5 r0 4154
	fldi	f2 r0 22
	fsti	f2 r5 0
	addi	r5 r0 0
	addi	r6 r0 4255
	ldi	r6 r6 0
	ldi	r7 r2 7
	sti	r4 r2 8
	add	r4 r0 r5
	add	r5 r0 r6
	add	r6 r0 r7
	addi	r2 r2 10
	call	L_trace_or_matrix_2197
	subi	r2 r2 10
	addi	r4 r0 4154
	fldi	f3 r4 0
	fldi	f2 r0 23
	fsti	f3 r2 10
	addi	r2 r2 13
	call	L_fless_1871
	subi	r2 r2 13
	bne	r4 r0 L_else_9014
	addi	r4 r0 0
	jump	L_cont_9015
L_else_9014 : 
	fldi	f3 r0 21
	fldi	f2 r2 10
	addi	r2 r2 13
	call	L_fless_1871
	subi	r2 r2 13
L_cont_9015 : 
	bne	r4 r0 L_else_9016
	addi	r4 r0 -1
	ldi	r5 r2 6
	ldi	r6 r2 8
	add	r6 r6 r5
	sti	r4 r6 0
	bne	r5 r0 L_else_9017
	return
L_else_9017 : 
	addi	r5 r0 4111
	ldi	r4 r2 7
	addi	r2 r2 13
	call	L_veciprod_1932
	subi	r2 r2 13
	addi	r2 r2 13
	call	L_fneg_1876
	subi	r2 r2 13
	fsti	f2 r2 12
	addi	r2 r2 15
	call	L_fispos_1865
	subi	r2 r2 15
	bne	r4 r0 L_else_9019
	return
L_else_9019 : 
	fldi	f2 r2 12
	addi	r2 r2 15
	call	L_fsqr_1878
	subi	r2 r2 15
	fldi	f3 r2 12
	fmul	f2 f2 f3
	fldi	f3 r2 4
	fmul	f2 f2 f3
	addi	r4 r0 4153
	fldi	f3 r4 0
	fmul	f2 f2 f3
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f3 r5 0
	fadd	f3 f3 f2
	fsti	f3 r4 0
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f3 r5 1
	fadd	f3 f3 f2
	fsti	f3 r4 1
	addi	r4 r0 4127
	addi	r5 r0 4127
	fldi	f3 r5 2
	fadd	f2 f3 f2
	fsti	f2 r4 2
	return
L_else_9016 : 
	addi	r4 r0 4117
	ldi	r4 r4 0
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	sti	r4 r2 14
	sti	r5 r2 15
	add	r4 r0 r5
	addi	r2 r2 17
	call	L_o_reflectiontype_1961
	subi	r2 r2 17
	ldi	r5 r2 15
	sti	r4 r2 16
	add	r4 r0 r5
	addi	r2 r2 18
	call	L_o_diffuse_1981
	subi	r2 r2 18
	fldi	f3 r2 4
	fmul	f2 f2 f3
	ldi	r4 r2 15
	ldi	r5 r2 7
	fsti	f2 r2 18
	addi	r2 r2 21
	call	L_get_nvector_2223
	subi	r2 r2 21
	addi	r4 r0 4135
	addi	r5 r0 4114
	addi	r2 r2 21
	call	L_veccpy_1921
	subi	r2 r2 21
	addi	r5 r0 4114
	ldi	r4 r2 15
	addi	r2 r2 21
	call	L_utexture_2226
	subi	r2 r2 21
	addi	r4 r0 4
	ldi	r5 r2 14
	mul	r4 r5 r4
	addi	r5 r0 4146
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r5 r2 6
	ldi	r6 r2 8
	add	r7 r6 r5
	sti	r4 r7 0
	ldi	r4 r2 2
	addi	r2 r2 21
	call	L_p_intersection_points_2001
	subi	r2 r2 21
	ldi	r5 r2 6
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r6 r0 4114
	add	r5 r0 r6
	addi	r2 r2 21
	call	L_veccpy_1921
	subi	r2 r2 21
	ldi	r4 r2 2
	addi	r2 r2 21
	call	L_p_calc_diffuse_2005
	subi	r2 r2 21
	ldi	r5 r2 15
	sti	r4 r2 20
	add	r4 r0 r5
	addi	r2 r2 22
	call	L_o_diffuse_1981
	subi	r2 r2 22
	fldi	f3 r0 44
	addi	r2 r2 22
	call	L_fless_1871
	subi	r2 r2 22
	bne	r4 r0 L_else_9023
	addi	r4 r0 1
	ldi	r5 r2 6
	ldi	r6 r2 20
	add	r6 r6 r5
	sti	r4 r6 0
	ldi	r4 r2 2
	addi	r2 r2 22
	call	L_p_energy_2007
	subi	r2 r2 22
	ldi	r5 r2 6
	add	r6 r4 r5
	ldi	r6 r6 0
	addi	r7 r0 4121
	sti	r4 r2 21
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 23
	call	L_veccpy_1921
	subi	r2 r2 23
	ldi	r4 r2 6
	ldi	r5 r2 21
	add	r5 r5 r4
	ldi	r5 r5 0
	fldi	f2 r0 9
	fldi	f3 r2 18
	fmul	f2 f2 f3
	fldi	f4 r5 0
	fmul	f4 f4 f2
	fsti	f4 r5 0
	fldi	f4 r5 1
	fmul	f4 f4 f2
	fsti	f4 r5 1
	fldi	f4 r5 2
	fmul	f2 f4 f2
	fsti	f2 r5 2
	ldi	r5 r2 2
	add	r4 r0 r5
	addi	r2 r2 23
	call	L_p_nvectors_2016
	subi	r2 r2 23
	ldi	r5 r2 6
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r6 r0 4118
	add	r5 r0 r6
	addi	r2 r2 23
	call	L_veccpy_1921
	subi	r2 r2 23
	jump	L_cont_9024
L_else_9023 : 
	addi	r4 r0 0
	ldi	r5 r2 6
	ldi	r6 r2 20
	add	r6 r6 r5
	sti	r4 r6 0
L_cont_9024 : 
	fldi	f2 r0 8
	addi	r5 r0 4118
	ldi	r4 r2 7
	fsti	f2 r2 22
	addi	r2 r2 25
	call	L_veciprod_1932
	subi	r2 r2 25
	fldi	f3 r2 22
	fmul	f2 f3 f2
	addi	r5 r0 4118
	ldi	r4 r2 7
	addi	r2 r2 25
	call	L_vecaccum_1940
	subi	r2 r2 25
	ldi	r4 r2 15
	ldi	r5 r4 7
	fldi	f2 r5 1
	fldi	f3 r2 4
	fmul	f2 f3 f2
	addi	r5 r0 0
	addi	r6 r0 4255
	ldi	r6 r6 0
	fsti	f2 r2 24
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 27
	call	L_shadow_check_one_or_matrix_2186
	subi	r2 r2 27
	bne	r4 r0 L_else_9025
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 27
	call	L_veciprod_1932
	subi	r2 r2 27
	addi	r2 r2 27
	call	L_fneg_1876
	subi	r2 r2 27
	fldi	f3 r2 18
	fmul	f2 f2 f3
	addi	r5 r0 4111
	ldi	r4 r2 7
	fsti	f2 r2 26
	addi	r2 r2 29
	call	L_veciprod_1932
	subi	r2 r2 29
	addi	r2 r2 29
	call	L_fneg_1876
	subi	r2 r2 29
	fadd	f3 f0 f2
	fldi	f2 r2 26
	fldi	f4 r2 24
	addi	r2 r2 29
	call	L_add_light_2229
	subi	r2 r2 29
	jump	L_cont_9026
L_else_9025 : 
L_cont_9026 : 
	addi	r4 r0 4114
	addi	r2 r2 29
	call	L_setup_startp_2152
	subi	r2 r2 29
	addi	r4 r0 4147
	ldi	r4 r4 0
	addi	r4 r4 -1
	fldi	f2 r2 18
	fldi	f3 r2 24
	ldi	r5 r2 7
	addi	r2 r2 29
	call	L_trace_reflections_2233
	subi	r2 r2 29
	fldi	f2 r0 7
	fldi	f3 r2 4
	addi	r2 r2 29
	call	L_fless_1871
	subi	r2 r2 29
	bne	r4 r0 L_else_9027
	return
L_else_9027 : 
	addi	r4 r0 4
	ldi	r5 r2 6
	bgt	r4 r5 L_else_9029
	jump	L_cont_9030
L_else_9029 : 
	addi	r4 r5 1
	addi	r6 r0 -1
	ldi	r7 r2 8
	add	r4 r7 r4
	sti	r6 r4 0
L_cont_9030 : 
	addi	r4 r0 2
	ldi	r6 r2 16
	bne	r6 r4 L_else_9031
	fldi	f2 r0 43
	ldi	r4 r2 15
	fsti	f2 r2 28
	addi	r2 r2 31
	call	L_o_diffuse_1981
	subi	r2 r2 31
	fldi	f3 r2 28
	fsub	f2 f3 f2
	fldi	f3 r2 4
	fmul	f2 f3 f2
	ldi	r4 r2 6
	addi	r4 r4 1
	addi	r5 r0 4154
	fldi	f3 r5 0
	fldi	f4 r2 0
	fadd	f3 f4 f3
	ldi	r5 r2 7
	ldi	r6 r2 2
	jump	L_trace_ray_2238
L_else_9031 : 
	return
L_else_9011 : 
	return
L_iter_trace_diffuse_rays_2247 : 
	bgt	r0 r7 L_else_9034
	add	r8 r4 r7
	ldi	r8 r8 0
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r4 r2 2
	sti	r5 r2 3
	add	r4 r0 r8
	addi	r2 r2 5
	call	L_d_vec_2018
	subi	r2 r2 5
	ldi	r5 r2 3
	addi	r2 r2 5
	call	L_veciprod_1932
	subi	r2 r2 5
	fsti	f2 r2 4
	addi	r2 r2 7
	call	L_fisneg_1867
	subi	r2 r2 7
	bne	r4 r0 L_else_9035
	ldi	r4 r2 1
	ldi	r5 r2 2
	add	r6 r5 r4
	ldi	r6 r6 0
	fldi	f2 r0 5
	fldi	f3 r2 4
	fdiv	f2 f3 f2
	fsti	f2 r2 6
	sti	r6 r2 8
	add	r4 r0 r6
	addi	r2 r2 10
	call	L_judge_intersection_fast_2215
	subi	r2 r2 10
	bne	r4 r0 L_else_9037
	jump	L_cont_9038
L_else_9037 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 8
	sti	r4 r2 9
	add	r4 r0 r5
	addi	r2 r2 11
	call	L_d_vec_2018
	subi	r2 r2 11
	add	r5 r0 r4
	ldi	r4 r2 9
	addi	r2 r2 11
	call	L_get_nvector_2223
	subi	r2 r2 11
	addi	r5 r0 4114
	ldi	r4 r2 9
	addi	r2 r2 11
	call	L_utexture_2226
	subi	r2 r2 11
	addi	r4 r0 0
	addi	r5 r0 4255
	ldi	r5 r5 0
	addi	r2 r2 11
	call	L_shadow_check_one_or_matrix_2186
	subi	r2 r2 11
	bne	r4 r0 L_else_9039
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 11
	call	L_veciprod_1932
	subi	r2 r2 11
	addi	r2 r2 11
	call	L_fneg_1876
	subi	r2 r2 11
	fsti	f2 r2 10
	addi	r2 r2 13
	call	L_fispos_1865
	subi	r2 r2 13
	bne	r4 r0 L_else_9041
	fldi	f2 r0 28
	jump	L_cont_9042
L_else_9041 : 
	fldi	f2 r2 10
	fadd	f2 f0 f2
L_cont_9042 : 
	addi	r4 r0 4124
	fldi	f3 r2 6
	fmul	f2 f3 f2
	ldi	r5 r2 9
	sti	r4 r2 12
	fsti	f2 r2 14
	add	r4 r0 r5
	addi	r2 r2 17
	call	L_o_diffuse_1981
	subi	r2 r2 17
	fldi	f3 r2 14
	fmul	f2 f3 f2
	addi	r5 r0 4121
	ldi	r4 r2 12
	addi	r2 r2 17
	call	L_vecaccum_1940
	subi	r2 r2 17
	jump	L_cont_9040
L_else_9039 : 
L_cont_9040 : 
L_cont_9038 : 
	jump	L_cont_9036
L_else_9035 : 
	ldi	r4 r2 1
	addi	r5 r4 1
	ldi	r6 r2 2
	add	r5 r6 r5
	ldi	r5 r5 0
	fldi	f2 r0 6
	fldi	f3 r2 4
	fdiv	f2 f3 f2
	fsti	f2 r2 16
	sti	r5 r2 18
	add	r4 r0 r5
	addi	r2 r2 20
	call	L_judge_intersection_fast_2215
	subi	r2 r2 20
	bne	r4 r0 L_else_9044
	jump	L_cont_9045
L_else_9044 : 
	addi	r4 r0 5042
	addi	r5 r0 4117
	ldi	r5 r5 0
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 18
	sti	r4 r2 19
	add	r4 r0 r5
	addi	r2 r2 21
	call	L_d_vec_2018
	subi	r2 r2 21
	add	r5 r0 r4
	ldi	r4 r2 19
	addi	r2 r2 21
	call	L_get_nvector_2223
	subi	r2 r2 21
	addi	r5 r0 4114
	ldi	r4 r2 19
	addi	r2 r2 21
	call	L_utexture_2226
	subi	r2 r2 21
	addi	r4 r0 0
	addi	r5 r0 4255
	ldi	r5 r5 0
	addi	r2 r2 21
	call	L_shadow_check_one_or_matrix_2186
	subi	r2 r2 21
	bne	r4 r0 L_else_9046
	addi	r4 r0 4118
	addi	r5 r0 4111
	addi	r2 r2 21
	call	L_veciprod_1932
	subi	r2 r2 21
	addi	r2 r2 21
	call	L_fneg_1876
	subi	r2 r2 21
	fsti	f2 r2 20
	addi	r2 r2 23
	call	L_fispos_1865
	subi	r2 r2 23
	bne	r4 r0 L_else_9048
	fldi	f2 r0 28
	jump	L_cont_9049
L_else_9048 : 
	fldi	f2 r2 20
	fadd	f2 f0 f2
L_cont_9049 : 
	addi	r4 r0 4124
	fldi	f3 r2 16
	fmul	f2 f3 f2
	ldi	r5 r2 19
	sti	r4 r2 22
	fsti	f2 r2 24
	add	r4 r0 r5
	addi	r2 r2 27
	call	L_o_diffuse_1981
	subi	r2 r2 27
	fldi	f3 r2 24
	fmul	f2 f3 f2
	addi	r5 r0 4121
	ldi	r4 r2 22
	addi	r2 r2 27
	call	L_vecaccum_1940
	subi	r2 r2 27
	jump	L_cont_9047
L_else_9046 : 
L_cont_9047 : 
L_cont_9045 : 
L_cont_9036 : 
	ldi	r4 r2 1
	addi	r7 r4 -2
	ldi	r4 r2 2
	ldi	r5 r2 3
	ldi	r6 r2 0
	jump	L_iter_trace_diffuse_rays_2247
L_else_9034 : 
	return
L_trace_diffuse_rays_2252 : 
	sti	r6 r2 0
	sti	r5 r2 1
	sti	r4 r2 2
	add	r4 r0 r6
	addi	r2 r2 4
	call	L_setup_startp_2152
	subi	r2 r2 4
	addi	r7 r0 118
	ldi	r4 r2 2
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_iter_trace_diffuse_rays_2247
L_do_without_neighbors_2269 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_9052
	sti	r4 r2 0
	sti	r5 r2 1
	addi	r2 r2 3
	call	L_p_surface_ids_2003
	subi	r2 r2 3
	ldi	r5 r2 1
	add	r4 r4 r5
	ldi	r4 r4 0
	bgt	r0 r4 L_else_9053
	ldi	r4 r2 0
	addi	r2 r2 3
	call	L_p_calc_diffuse_2005
	subi	r2 r2 3
	ldi	r5 r2 1
	add	r4 r4 r5
	ldi	r4 r4 0
	bne	r4 r0 L_else_9054
	jump	L_cont_9055
L_else_9054 : 
	ldi	r4 r2 0
	addi	r2 r2 3
	call	L_p_received_ray_20percent_2009
	subi	r2 r2 3
	ldi	r5 r2 0
	sti	r4 r2 2
	add	r4 r0 r5
	addi	r2 r2 4
	call	L_p_nvectors_2016
	subi	r2 r2 4
	ldi	r5 r2 0
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	L_p_intersection_points_2001
	subi	r2 r2 5
	ldi	r5 r2 0
	sti	r4 r2 4
	add	r4 r0 r5
	addi	r2 r2 6
	call	L_p_energy_2007
	subi	r2 r2 6
	addi	r5 r0 4124
	ldi	r6 r2 1
	ldi	r7 r2 2
	add	r7 r7 r6
	ldi	r7 r7 0
	sti	r4 r2 5
	add	r4 r0 r5
	add	r5 r0 r7
	addi	r2 r2 7
	call	L_veccpy_1921
	subi	r2 r2 7
	ldi	r4 r2 0
	addi	r2 r2 7
	call	L_p_group_id_2011
	subi	r2 r2 7
	ldi	r5 r2 1
	ldi	r6 r2 3
	add	r6 r6 r5
	ldi	r6 r6 0
	ldi	r7 r2 4
	add	r7 r7 r5
	ldi	r7 r7 0
	sti	r7 r2 6
	sti	r6 r2 7
	sti	r4 r2 8
	bne	r4 r0 L_else_9056
	jump	L_cont_9057
L_else_9056 : 
	addi	r8 r0 4148
	ldi	r8 r8 0
	add	r5 r0 r6
	add	r4 r0 r8
	add	r6 r0 r7
	addi	r2 r2 10
	call	L_trace_diffuse_rays_2252
	subi	r2 r2 10
L_cont_9057 : 
	addi	r4 r0 1
	ldi	r5 r2 8
	bne	r5 r4 L_else_9058
	jump	L_cont_9059
L_else_9058 : 
	addi	r4 r0 4148
	ldi	r4 r4 1
	ldi	r6 r2 7
	ldi	r7 r2 6
	add	r5 r0 r6
	add	r6 r0 r7
	addi	r2 r2 10
	call	L_trace_diffuse_rays_2252
	subi	r2 r2 10
L_cont_9059 : 
	addi	r4 r0 2
	ldi	r5 r2 8
	bne	r5 r4 L_else_9060
	jump	L_cont_9061
L_else_9060 : 
	addi	r4 r0 4148
	ldi	r4 r4 2
	ldi	r6 r2 7
	ldi	r7 r2 6
	add	r5 r0 r6
	add	r6 r0 r7
	addi	r2 r2 10
	call	L_trace_diffuse_rays_2252
	subi	r2 r2 10
L_cont_9061 : 
	addi	r4 r0 3
	ldi	r5 r2 8
	bne	r5 r4 L_else_9062
	jump	L_cont_9063
L_else_9062 : 
	addi	r4 r0 4148
	ldi	r4 r4 3
	ldi	r6 r2 7
	ldi	r7 r2 6
	add	r5 r0 r6
	add	r6 r0 r7
	addi	r2 r2 10
	call	L_trace_diffuse_rays_2252
	subi	r2 r2 10
L_cont_9063 : 
	addi	r4 r0 4
	ldi	r5 r2 8
	bne	r5 r4 L_else_9064
	jump	L_cont_9065
L_else_9064 : 
	addi	r4 r0 4148
	ldi	r4 r4 4
	ldi	r5 r2 7
	ldi	r6 r2 6
	addi	r2 r2 10
	call	L_trace_diffuse_rays_2252
	subi	r2 r2 10
L_cont_9065 : 
	addi	r4 r0 4127
	ldi	r5 r2 1
	ldi	r6 r2 5
	add	r6 r6 r5
	ldi	r6 r6 0
	addi	r7 r0 4124
	add	r5 r0 r6
	add	r6 r0 r7
	addi	r2 r2 10
	call	L_vecaccumv_1953
	subi	r2 r2 10
L_cont_9055 : 
	ldi	r4 r2 1
	addi	r5 r4 1
	ldi	r4 r2 0
	jump	L_do_without_neighbors_2269
L_else_9053 : 
	return
L_else_9052 : 
	return
L_get_surface_id_2276 : 
	sti	r5 r2 0
	addi	r2 r2 2
	call	L_p_surface_ids_2003
	subi	r2 r2 2
	ldi	r5 r2 0
	add	r4 r4 r5
	ldi	r4 r4 0
	return
L_try_exploit_neighbors_2285 : 
	add	r10 r7 r4
	ldi	r10 r10 0
	addi	r11 r0 4
	bgt	r9 r11 L_else_9068
	sti	r5 r2 0
	sti	r10 r2 1
	sti	r8 r2 2
	sti	r6 r2 3
	sti	r9 r2 4
	sti	r4 r2 5
	sti	r7 r2 6
	add	r5 r0 r9
	add	r4 r0 r10
	addi	r2 r2 8
	call	L_get_surface_id_2276
	subi	r2 r2 8
	bgt	r0 r4 L_else_9069
	ldi	r4 r2 5
	ldi	r5 r2 6
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r7 r2 4
	add	r5 r0 r7
	add	r4 r0 r6
	addi	r2 r2 8
	call	L_get_surface_id_2276
	subi	r2 r2 8
	ldi	r5 r2 5
	ldi	r6 r2 3
	add	r7 r6 r5
	ldi	r7 r7 0
	ldi	r8 r2 4
	sti	r4 r2 7
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 9
	call	L_get_surface_id_2276
	subi	r2 r2 9
	ldi	r5 r2 7
	bne	r4 r5 L_else_9070
	ldi	r4 r2 5
	ldi	r6 r2 2
	add	r7 r6 r4
	ldi	r7 r7 0
	ldi	r8 r2 4
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 9
	call	L_get_surface_id_2276
	subi	r2 r2 9
	ldi	r5 r2 7
	bne	r4 r5 L_else_9072
	ldi	r4 r2 5
	addi	r6 r4 -1
	ldi	r7 r2 6
	add	r6 r7 r6
	ldi	r6 r6 0
	ldi	r8 r2 4
	add	r5 r0 r8
	add	r4 r0 r6
	addi	r2 r2 9
	call	L_get_surface_id_2276
	subi	r2 r2 9
	ldi	r5 r2 7
	bne	r4 r5 L_else_9074
	ldi	r4 r2 5
	addi	r6 r4 1
	ldi	r7 r2 6
	add	r6 r7 r6
	ldi	r6 r6 0
	ldi	r8 r2 4
	add	r5 r0 r8
	add	r4 r0 r6
	addi	r2 r2 9
	call	L_get_surface_id_2276
	subi	r2 r2 9
	ldi	r5 r2 7
	bne	r4 r5 L_else_9076
	addi	r4 r0 1
	jump	L_cont_9077
L_else_9076 : 
	addi	r4 r0 0
L_cont_9077 : 
	jump	L_cont_9075
L_else_9074 : 
	addi	r4 r0 0
L_cont_9075 : 
	jump	L_cont_9073
L_else_9072 : 
	addi	r4 r0 0
L_cont_9073 : 
	jump	L_cont_9071
L_else_9070 : 
	addi	r4 r0 0
L_cont_9071 : 
	bne	r4 r0 L_else_9078
	ldi	r4 r2 5
	ldi	r5 r2 6
	add	r4 r5 r4
	ldi	r4 r4 0
	ldi	r5 r2 4
	jump	L_do_without_neighbors_2269
L_else_9078 : 
	ldi	r4 r2 1
	addi	r2 r2 9
	call	L_p_calc_diffuse_2005
	subi	r2 r2 9
	ldi	r5 r2 4
	add	r4 r4 r5
	ldi	r4 r4 0
	bne	r4 r0 L_else_9079
	jump	L_cont_9080
L_else_9079 : 
	ldi	r4 r2 5
	ldi	r6 r2 3
	add	r7 r6 r4
	ldi	r7 r7 0
	add	r4 r0 r7
	addi	r2 r2 9
	call	L_p_received_ray_20percent_2009
	subi	r2 r2 9
	ldi	r5 r2 5
	addi	r6 r5 -1
	ldi	r7 r2 6
	add	r6 r7 r6
	ldi	r6 r6 0
	sti	r4 r2 8
	add	r4 r0 r6
	addi	r2 r2 10
	call	L_p_received_ray_20percent_2009
	subi	r2 r2 10
	ldi	r5 r2 5
	ldi	r6 r2 6
	add	r7 r6 r5
	ldi	r7 r7 0
	sti	r4 r2 9
	add	r4 r0 r7
	addi	r2 r2 11
	call	L_p_received_ray_20percent_2009
	subi	r2 r2 11
	ldi	r5 r2 5
	addi	r6 r5 1
	ldi	r7 r2 6
	add	r6 r7 r6
	ldi	r6 r6 0
	sti	r4 r2 10
	add	r4 r0 r6
	addi	r2 r2 12
	call	L_p_received_ray_20percent_2009
	subi	r2 r2 12
	ldi	r5 r2 5
	ldi	r6 r2 2
	add	r7 r6 r5
	ldi	r7 r7 0
	sti	r4 r2 11
	add	r4 r0 r7
	addi	r2 r2 13
	call	L_p_received_ray_20percent_2009
	subi	r2 r2 13
	addi	r5 r0 4124
	ldi	r6 r2 4
	ldi	r7 r2 8
	add	r7 r7 r6
	ldi	r7 r7 0
	sti	r4 r2 12
	add	r4 r0 r5
	add	r5 r0 r7
	addi	r2 r2 14
	call	L_veccpy_1921
	subi	r2 r2 14
	addi	r4 r0 4124
	ldi	r5 r2 4
	ldi	r6 r2 9
	add	r6 r6 r5
	ldi	r6 r6 0
	fldi	f2 r4 0
	fldi	f3 r6 0
	fadd	f2 f2 f3
	fsti	f2 r4 0
	fldi	f2 r4 1
	fldi	f3 r6 1
	fadd	f2 f2 f3
	fsti	f2 r4 1
	fldi	f2 r4 2
	fldi	f3 r6 2
	fadd	f2 f2 f3
	fsti	f2 r4 2
	addi	r4 r0 4124
	ldi	r6 r2 10
	add	r6 r6 r5
	ldi	r6 r6 0
	fldi	f2 r4 0
	fldi	f3 r6 0
	fadd	f2 f2 f3
	fsti	f2 r4 0
	fldi	f2 r4 1
	fldi	f3 r6 1
	fadd	f2 f2 f3
	fsti	f2 r4 1
	fldi	f2 r4 2
	fldi	f3 r6 2
	fadd	f2 f2 f3
	fsti	f2 r4 2
	addi	r4 r0 4124
	ldi	r6 r2 11
	add	r6 r6 r5
	ldi	r6 r6 0
	fldi	f2 r4 0
	fldi	f3 r6 0
	fadd	f2 f2 f3
	fsti	f2 r4 0
	fldi	f2 r4 1
	fldi	f3 r6 1
	fadd	f2 f2 f3
	fsti	f2 r4 1
	fldi	f2 r4 2
	fldi	f3 r6 2
	fadd	f2 f2 f3
	fsti	f2 r4 2
	addi	r4 r0 4124
	ldi	r6 r2 12
	add	r6 r6 r5
	ldi	r6 r6 0
	fldi	f2 r4 0
	fldi	f3 r6 0
	fadd	f2 f2 f3
	fsti	f2 r4 0
	fldi	f2 r4 1
	fldi	f3 r6 1
	fadd	f2 f2 f3
	fsti	f2 r4 1
	fldi	f2 r4 2
	fldi	f3 r6 2
	fadd	f2 f2 f3
	fsti	f2 r4 2
	ldi	r4 r2 5
	ldi	r6 r2 6
	add	r7 r6 r4
	ldi	r7 r7 0
	add	r4 r0 r7
	addi	r2 r2 14
	call	L_p_energy_2007
	subi	r2 r2 14
	addi	r5 r0 4127
	ldi	r6 r2 4
	add	r4 r4 r6
	ldi	r4 r4 0
	addi	r7 r0 4124
	add	r6 r0 r7
	add	r1 r0 r5
	add	r5 r0 r4
	add	r4 r0 r1
	addi	r2 r2 14
	call	L_vecaccumv_1953
	subi	r2 r2 14
L_cont_9080 : 
	ldi	r4 r2 4
	addi	r9 r4 1
	ldi	r4 r2 5
	ldi	r5 r2 0
	ldi	r6 r2 3
	ldi	r7 r2 6
	ldi	r8 r2 2
	jump	L_try_exploit_neighbors_2285
L_else_9069 : 
	return
L_else_9068 : 
	return
L_pretrace_diffuse_rays_2298 : 
	addi	r6 r0 4
	bgt	r5 r6 L_else_9083
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 3
	call	L_get_surface_id_2276
	subi	r2 r2 3
	bgt	r0 r4 L_else_9084
	ldi	r4 r2 1
	addi	r2 r2 3
	call	L_p_calc_diffuse_2005
	subi	r2 r2 3
	ldi	r5 r2 0
	add	r4 r4 r5
	ldi	r4 r4 0
	bne	r4 r0 L_else_9085
	jump	L_cont_9086
L_else_9085 : 
	ldi	r4 r2 1
	addi	r2 r2 3
	call	L_p_group_id_2011
	subi	r2 r2 3
	addi	r5 r0 4124
	sti	r4 r2 2
	add	r4 r0 r5
	addi	r2 r2 4
	call	L_vecbzero_1919
	subi	r2 r2 4
	ldi	r4 r2 1
	addi	r2 r2 4
	call	L_p_nvectors_2016
	subi	r2 r2 4
	ldi	r5 r2 1
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	L_p_intersection_points_2001
	subi	r2 r2 5
	addi	r5 r0 4148
	ldi	r6 r2 2
	add	r5 r5 r6
	ldi	r5 r5 0
	ldi	r6 r2 0
	ldi	r7 r2 3
	add	r7 r7 r6
	ldi	r7 r7 0
	add	r4 r4 r6
	ldi	r4 r4 0
	add	r6 r0 r4
	add	r4 r0 r5
	add	r5 r0 r7
	addi	r2 r2 5
	call	L_trace_diffuse_rays_2252
	subi	r2 r2 5
	ldi	r4 r2 1
	addi	r2 r2 5
	call	L_p_received_ray_20percent_2009
	subi	r2 r2 5
	ldi	r5 r2 0
	add	r4 r4 r5
	ldi	r4 r4 0
	addi	r6 r0 4124
	add	r5 r0 r6
	addi	r2 r2 5
	call	L_veccpy_1921
	subi	r2 r2 5
L_cont_9086 : 
	ldi	r4 r2 0
	addi	r5 r4 1
	ldi	r4 r2 1
	jump	L_pretrace_diffuse_rays_2298
L_else_9084 : 
	return
L_else_9083 : 
	return
L_pretrace_pixels_2301 : 
	bgt	r0 r5 L_else_9089
	addi	r7 r0 4134
	fldi	f5 r7 0
	addi	r7 r0 4132
	ldi	r7 r7 0
	sub	r7 r5 r7
	foi	f6 r7
	fmul	f5 f5 f6
	addi	r7 r0 4141
	addi	r8 r0 4102
	fldi	f6 r8 0
	fmul	f6 f5 f6
	fadd	f6 f6 f2
	fsti	f6 r7 0
	addi	r7 r0 4141
	addi	r8 r0 4102
	fldi	f6 r8 1
	fmul	f6 f5 f6
	fadd	f6 f6 f3
	fsti	f6 r7 1
	addi	r7 r0 4141
	addi	r8 r0 4102
	fldi	f6 r8 2
	fmul	f5 f5 f6
	fadd	f5 f5 f4
	fsti	f5 r7 2
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
	call	L_vecunit_sgn_1929
	subi	r2 r2 10
	addi	r4 r0 4127
	addi	r2 r2 10
	call	L_vecbzero_1919
	subi	r2 r2 10
	addi	r4 r0 4135
	addi	r5 r0 4108
	addi	r2 r2 10
	call	L_veccpy_1921
	subi	r2 r2 10
	addi	r4 r0 0
	fldi	f2 r0 43
	addi	r5 r0 4141
	ldi	r6 r2 7
	ldi	r7 r2 8
	add	r8 r7 r6
	ldi	r8 r8 0
	fldi	f3 r0 28
	add	r6 r0 r8
	addi	r2 r2 10
	call	L_trace_ray_2238
	subi	r2 r2 10
	ldi	r4 r2 7
	ldi	r5 r2 8
	add	r6 r5 r4
	ldi	r6 r6 0
	add	r4 r0 r6
	addi	r2 r2 10
	call	L_p_rgb_1999
	subi	r2 r2 10
	addi	r5 r0 4127
	addi	r2 r2 10
	call	L_veccpy_1921
	subi	r2 r2 10
	ldi	r4 r2 7
	ldi	r5 r2 8
	add	r6 r5 r4
	ldi	r6 r6 0
	ldi	r6 r6 6
	ldi	r7 r2 6
	sti	r7 r6 0
	add	r6 r5 r4
	ldi	r6 r6 0
	addi	r8 r0 0
	add	r5 r0 r8
	add	r4 r0 r6
	addi	r2 r2 10
	call	L_pretrace_diffuse_rays_2298
	subi	r2 r2 10
	ldi	r4 r2 7
	addi	r4 r4 -1
	addi	r5 r0 1
	ldi	r6 r2 6
	sti	r4 r2 9
	add	r4 r0 r6
	addi	r2 r2 11
	call	L_add_mod5_1908
	subi	r2 r2 11
	add	r6 r0 r4
	fldi	f2 r2 4
	fldi	f3 r2 2
	fldi	f4 r2 0
	ldi	r4 r2 8
	ldi	r5 r2 9
	jump	L_pretrace_pixels_2301
L_else_9089 : 
	return
L_pretrace_line_2308 : 
	addi	r7 r0 4134
	fldi	f2 r7 0
	addi	r7 r0 4132
	ldi	r7 r7 1
	sub	r5 r5 r7
	foi	f3 r5
	fmul	f2 f2 f3
	addi	r5 r0 4105
	fldi	f3 r5 0
	fmul	f3 f2 f3
	addi	r5 r0 4099
	fldi	f4 r5 0
	fadd	f3 f3 f4
	addi	r5 r0 4105
	fldi	f4 r5 1
	fmul	f4 f2 f4
	addi	r5 r0 4099
	fldi	f5 r5 1
	fadd	f4 f4 f5
	addi	r5 r0 4105
	fldi	f5 r5 2
	fmul	f2 f2 f5
	addi	r5 r0 4099
	fldi	f5 r5 2
	fadd	f2 f2 f5
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r5 r5 -1
	fadd	f1 f0 f4
	fadd	f4 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	jump	L_pretrace_pixels_2301
L_scan_pixel_2312 : 
	addi	r9 r0 4130
	ldi	r9 r9 0
	bgt	r9 r4 L_else_9091
	return
L_else_9091 : 
	addi	r9 r0 4127
	add	r10 r7 r4
	ldi	r10 r10 0
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	sti	r4 r2 3
	sti	r5 r2 4
	sti	r9 r2 5
	add	r4 r0 r10
	addi	r2 r2 7
	call	L_p_rgb_1999
	subi	r2 r2 7
	add	r5 r0 r4
	ldi	r4 r2 5
	addi	r2 r2 7
	call	L_veccpy_1921
	subi	r2 r2 7
	addi	r4 r0 4130
	ldi	r4 r4 1
	ldi	r5 r2 4
	addi	r6 r5 1
	bgt	r4 r6 L_else_9093
	addi	r4 r0 0
	jump	L_cont_9094
L_else_9093 : 
	bgt	r5 r0 L_else_9095
	addi	r4 r0 0
	jump	L_cont_9096
L_else_9095 : 
	addi	r4 r0 4130
	ldi	r4 r4 0
	ldi	r6 r2 3
	addi	r7 r6 1
	bgt	r4 r7 L_else_9097
	addi	r4 r0 0
	jump	L_cont_9098
L_else_9097 : 
	bgt	r6 r0 L_else_9099
	addi	r4 r0 0
	jump	L_cont_9100
L_else_9099 : 
	addi	r4 r0 1
L_cont_9100 : 
L_cont_9098 : 
L_cont_9096 : 
L_cont_9094 : 
	bne	r4 r0 L_else_9101
	ldi	r4 r2 3
	ldi	r6 r2 2
	add	r7 r6 r4
	ldi	r7 r7 0
	addi	r8 r0 0
	add	r5 r0 r8
	add	r4 r0 r7
	addi	r2 r2 7
	call	L_do_without_neighbors_2269
	subi	r2 r2 7
	jump	L_cont_9102
L_else_9101 : 
	addi	r9 r0 0
	ldi	r4 r2 3
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 0
	addi	r2 r2 7
	call	L_try_exploit_neighbors_2285
	subi	r2 r2 7
L_cont_9102 : 
	addi	r4 r0 4127
	fldi	f2 r4 0
	addi	r2 r2 7
	call	min_caml_print_float
	subi	r2 r2 7
	addi	r4 r0 4127
	fldi	f2 r4 1
	addi	r2 r2 7
	call	min_caml_print_float
	subi	r2 r2 7
	addi	r4 r0 4127
	fldi	f2 r4 2
	addi	r2 r2 7
	call	min_caml_print_float
	subi	r2 r2 7
	ldi	r4 r2 3
	addi	r4 r4 1
	ldi	r5 r2 4
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 0
	jump	L_scan_pixel_2312
L_scan_line_2318 : 
	addi	r9 r0 4130
	ldi	r9 r9 1
	bgt	r9 r4 L_else_9103
	return
L_else_9103 : 
	addi	r9 r0 4130
	ldi	r9 r9 1
	addi	r9 r9 -1
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	sti	r5 r2 3
	sti	r4 r2 4
	bgt	r9 r4 L_else_9105
	jump	L_cont_9106
L_else_9105 : 
	addi	r9 r4 1
	add	r6 r0 r8
	add	r5 r0 r9
	add	r4 r0 r7
	addi	r2 r2 6
	call	L_pretrace_line_2308
	subi	r2 r2 6
L_cont_9106 : 
	addi	r4 r0 0
	ldi	r5 r2 4
	ldi	r6 r2 3
	ldi	r7 r2 2
	ldi	r8 r2 1
	addi	r2 r2 6
	call	L_scan_pixel_2312
	subi	r2 r2 6
	ldi	r4 r2 4
	addi	r4 r4 1
	addi	r5 r0 2
	ldi	r6 r2 0
	sti	r4 r2 5
	add	r4 r0 r6
	addi	r2 r2 7
	call	L_add_mod5_1908
	subi	r2 r2 7
	add	r8 r0 r4
	ldi	r4 r2 5
	ldi	r5 r2 2
	ldi	r6 r2 1
	ldi	r7 r2 3
	jump	L_scan_line_2318
L_create_pixel_2326 : 
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 1
	call	min_caml_create_float_array
	subi	r2 r2 1
	addi	r5 r0 3
	fldi	f2 r0 28
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
	addi	r5 r0 3
	fldi	f2 r0 28
	sti	r4 r2 1
	add	r4 r0 r5
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 3
	call	min_caml_create_float_array
	subi	r2 r2 3
	ldi	r5 r2 1
	sti	r4 r5 4
	addi	r4 r0 5
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 3
	call	min_caml_create_array
	subi	r2 r2 3
	addi	r5 r0 5
	addi	r6 r0 0
	sti	r4 r2 2
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	addi	r5 r0 3
	fldi	f2 r0 28
	sti	r4 r2 3
	add	r4 r0 r5
	addi	r2 r2 5
	call	min_caml_create_float_array
	subi	r2 r2 5
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 5
	call	min_caml_create_array
	subi	r2 r2 5
	addi	r5 r0 3
	fldi	f2 r0 28
	sti	r4 r2 4
	add	r4 r0 r5
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	ldi	r5 r2 4
	sti	r4 r5 4
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 6
	call	min_caml_create_float_array
	subi	r2 r2 6
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	addi	r5 r0 3
	fldi	f2 r0 28
	sti	r4 r2 5
	add	r4 r0 r5
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 7
	call	min_caml_create_float_array
	subi	r2 r2 7
	ldi	r5 r2 5
	sti	r4 r5 4
	addi	r4 r0 1
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 7
	call	min_caml_create_array
	subi	r2 r2 7
	addi	r5 r0 3
	fldi	f2 r0 28
	sti	r4 r2 6
	add	r4 r0 r5
	addi	r2 r2 8
	call	min_caml_create_float_array
	subi	r2 r2 8
	add	r5 r0 r4
	addi	r4 r0 5
	addi	r2 r2 8
	call	min_caml_create_array
	subi	r2 r2 8
	addi	r5 r0 3
	fldi	f2 r0 28
	sti	r4 r2 7
	add	r4 r0 r5
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 1
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 2
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 3
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 9
	call	min_caml_create_float_array
	subi	r2 r2 9
	ldi	r5 r2 7
	sti	r4 r5 4
	add	r4 r0 r3
	addi	r3 r3 8
	sti	r5 r4 7
	ldi	r5 r2 6
	sti	r5 r4 6
	ldi	r5 r2 5
	sti	r5 r4 5
	ldi	r5 r2 4
	sti	r5 r4 4
	ldi	r5 r2 3
	sti	r5 r4 3
	ldi	r5 r2 2
	sti	r5 r4 2
	ldi	r5 r2 1
	sti	r5 r4 1
	ldi	r5 r2 0
	sti	r5 r4 0
	add	r4 r0 r4
	return
L_init_line_elements_2328 : 
	bgt	r0 r5 L_else_9107
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 3
	call	L_create_pixel_2326
	subi	r2 r2 3
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	jump	L_init_line_elements_2328
L_else_9107 : 
	add	r4 r0 r4
	return
L_calc_dirvec_2338 : 
	addi	r7 r0 5
	bgt	r7 r4 L_else_9108
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f2 r2 2
	fsti	f3 r2 4
	addi	r2 r2 7
	call	L_fsqr_1878
	subi	r2 r2 7
	fldi	f3 r2 4
	fsti	f2 r2 6
	fadd	f2 f0 f3
	addi	r2 r2 9
	call	L_fsqr_1878
	subi	r2 r2 9
	fldi	f3 r2 6
	fadd	f2 f3 f2
	fldi	f3 r0 43
	fadd	f2 f2 f3
	addi	r2 r2 9
	call	L_sqrt_1894
	subi	r2 r2 9
	fldi	f3 r2 2
	fdiv	f3 f3 f2
	fldi	f4 r2 4
	fdiv	f4 f4 f2
	fldi	f5 r0 43
	fdiv	f2 f5 f2
	addi	r4 r0 4148
	ldi	r5 r2 1
	add	r4 r4 r5
	ldi	r4 r4 0
	ldi	r5 r2 0
	add	r6 r4 r5
	ldi	r6 r6 0
	sti	r4 r2 8
	fsti	f2 r2 10
	fsti	f4 r2 12
	fsti	f3 r2 14
	add	r4 r0 r6
	addi	r2 r2 17
	call	L_d_vec_2018
	subi	r2 r2 17
	fldi	f2 r2 14
	fldi	f3 r2 12
	fldi	f4 r2 10
	addi	r2 r2 17
	call	L_vecset_1911
	subi	r2 r2 17
	ldi	r4 r2 0
	addi	r5 r4 40
	ldi	r6 r2 8
	add	r5 r6 r5
	ldi	r5 r5 0
	add	r4 r0 r5
	addi	r2 r2 17
	call	L_d_vec_2018
	subi	r2 r2 17
	fldi	f2 r2 12
	sti	r4 r2 16
	addi	r2 r2 18
	call	L_fneg_1876
	subi	r2 r2 18
	fadd	f4 f0 f2
	fldi	f2 r2 14
	fldi	f3 r2 10
	ldi	r4 r2 16
	addi	r2 r2 18
	call	L_vecset_1911
	subi	r2 r2 18
	ldi	r4 r2 0
	addi	r5 r4 80
	ldi	r6 r2 8
	add	r5 r6 r5
	ldi	r5 r5 0
	add	r4 r0 r5
	addi	r2 r2 18
	call	L_d_vec_2018
	subi	r2 r2 18
	fldi	f2 r2 14
	sti	r4 r2 17
	addi	r2 r2 19
	call	L_fneg_1876
	subi	r2 r2 19
	fldi	f3 r2 12
	fsti	f2 r2 18
	fadd	f2 f0 f3
	addi	r2 r2 21
	call	L_fneg_1876
	subi	r2 r2 21
	fadd	f4 f0 f2
	fldi	f2 r2 10
	fldi	f3 r2 18
	ldi	r4 r2 17
	addi	r2 r2 21
	call	L_vecset_1911
	subi	r2 r2 21
	ldi	r4 r2 0
	addi	r5 r4 1
	ldi	r6 r2 8
	add	r5 r6 r5
	ldi	r5 r5 0
	add	r4 r0 r5
	addi	r2 r2 21
	call	L_d_vec_2018
	subi	r2 r2 21
	fldi	f2 r2 14
	sti	r4 r2 20
	addi	r2 r2 22
	call	L_fneg_1876
	subi	r2 r2 22
	fldi	f3 r2 12
	fsti	f2 r2 22
	fadd	f2 f0 f3
	addi	r2 r2 25
	call	L_fneg_1876
	subi	r2 r2 25
	fldi	f3 r2 10
	fsti	f2 r2 24
	fadd	f2 f0 f3
	addi	r2 r2 27
	call	L_fneg_1876
	subi	r2 r2 27
	fadd	f4 f0 f2
	fldi	f2 r2 22
	fldi	f3 r2 24
	ldi	r4 r2 20
	addi	r2 r2 27
	call	L_vecset_1911
	subi	r2 r2 27
	ldi	r4 r2 0
	addi	r5 r4 41
	ldi	r6 r2 8
	add	r5 r6 r5
	ldi	r5 r5 0
	add	r4 r0 r5
	addi	r2 r2 27
	call	L_d_vec_2018
	subi	r2 r2 27
	fldi	f2 r2 14
	sti	r4 r2 26
	addi	r2 r2 28
	call	L_fneg_1876
	subi	r2 r2 28
	fldi	f3 r2 10
	fsti	f2 r2 28
	fadd	f2 f0 f3
	addi	r2 r2 31
	call	L_fneg_1876
	subi	r2 r2 31
	fadd	f3 f0 f2
	fldi	f2 r2 28
	fldi	f4 r2 12
	ldi	r4 r2 26
	addi	r2 r2 31
	call	L_vecset_1911
	subi	r2 r2 31
	ldi	r4 r2 0
	addi	r4 r4 81
	ldi	r5 r2 8
	add	r4 r5 r4
	ldi	r4 r4 0
	addi	r2 r2 31
	call	L_d_vec_2018
	subi	r2 r2 31
	fldi	f2 r2 10
	sti	r4 r2 30
	addi	r2 r2 32
	call	L_fneg_1876
	subi	r2 r2 32
	fldi	f3 r2 14
	fldi	f4 r2 12
	ldi	r4 r2 30
	jump	L_vecset_1911
L_else_9108 : 
	fmul	f2 f3 f3
	fldi	f3 r0 7
	fadd	f2 f2 f3
	sti	r6 r2 0
	sti	r5 r2 1
	fsti	f5 r2 32
	sti	r4 r2 34
	fsti	f4 r2 36
	addi	r2 r2 39
	call	L_sqrt_1894
	subi	r2 r2 39
	fldi	f3 r0 43
	fdiv	f3 f3 f2
	fsti	f2 r2 38
	fadd	f2 f0 f3
	addi	r2 r2 41
	call	L_atan_1888
	subi	r2 r2 41
	fldi	f3 r2 36
	fmul	f2 f2 f3
	fsti	f2 r2 40
	addi	r2 r2 43
	call	L_sin_1884
	subi	r2 r2 43
	fldi	f3 r2 40
	fsti	f2 r2 42
	fadd	f2 f0 f3
	addi	r2 r2 45
	call	L_cos_1886
	subi	r2 r2 45
	fldi	f3 r2 42
	fdiv	f2 f3 f2
	fldi	f3 r2 38
	fmul	f2 f2 f3
	ldi	r4 r2 34
	addi	r4 r4 1
	fmul	f3 f2 f2
	fldi	f4 r0 7
	fadd	f3 f3 f4
	fsti	f2 r2 44
	sti	r4 r2 46
	fadd	f2 f0 f3
	addi	r2 r2 48
	call	L_sqrt_1894
	subi	r2 r2 48
	fldi	f3 r0 43
	fdiv	f3 f3 f2
	fsti	f2 r2 48
	fadd	f2 f0 f3
	addi	r2 r2 51
	call	L_atan_1888
	subi	r2 r2 51
	fldi	f3 r2 32
	fmul	f2 f2 f3
	fsti	f2 r2 50
	addi	r2 r2 53
	call	L_sin_1884
	subi	r2 r2 53
	fldi	f3 r2 50
	fsti	f2 r2 52
	fadd	f2 f0 f3
	addi	r2 r2 55
	call	L_cos_1886
	subi	r2 r2 55
	fldi	f3 r2 52
	fdiv	f2 f3 f2
	fldi	f3 r2 48
	fmul	f3 f2 f3
	fldi	f2 r2 44
	fldi	f4 r2 36
	fldi	f5 r2 32
	ldi	r4 r2 46
	ldi	r5 r2 1
	ldi	r6 r2 0
	jump	L_calc_dirvec_2338
L_calc_dirvecs_2346 : 
	bgt	r0 r4 L_else_9115
	foi	f3 r4
	fldi	f4 r0 4
	fmul	f3 f3 f4
	fldi	f4 r0 3
	fsub	f4 f3 f4
	addi	r7 r0 0
	fldi	f3 r0 28
	fldi	f5 r0 28
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
	call	L_calc_dirvec_2338
	subi	r2 r2 6
	ldi	r4 r2 4
	foi	f2 r4
	fldi	f3 r0 4
	fmul	f2 f2 f3
	fldi	f3 r0 7
	fadd	f4 f2 f3
	addi	r5 r0 0
	fldi	f2 r0 28
	fldi	f3 r0 28
	ldi	r6 r2 3
	addi	r7 r6 2
	fldi	f5 r2 0
	ldi	r8 r2 2
	add	r6 r0 r7
	add	r4 r0 r5
	add	r5 r0 r8
	addi	r2 r2 6
	call	L_calc_dirvec_2338
	subi	r2 r2 6
	ldi	r4 r2 4
	addi	r4 r4 -1
	addi	r5 r0 1
	ldi	r6 r2 2
	sti	r4 r2 5
	add	r4 r0 r6
	addi	r2 r2 7
	call	L_add_mod5_1908
	subi	r2 r2 7
	add	r5 r0 r4
	fldi	f2 r2 0
	ldi	r4 r2 5
	ldi	r6 r2 3
	jump	L_calc_dirvecs_2346
L_else_9115 : 
	return
L_calc_dirvec_rows_2351 : 
	bgt	r0 r4 L_else_9117
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
	call	L_calc_dirvecs_2346
	subi	r2 r2 4
	ldi	r4 r2 2
	addi	r4 r4 -1
	addi	r5 r0 2
	ldi	r6 r2 1
	sti	r4 r2 3
	add	r4 r0 r6
	addi	r2 r2 5
	call	L_add_mod5_1908
	subi	r2 r2 5
	add	r5 r0 r4
	ldi	r4 r2 0
	addi	r6 r4 4
	ldi	r4 r2 3
	jump	L_calc_dirvec_rows_2351
L_else_9117 : 
	return
L_create_dirvec_2355 : 
	addi	r4 r0 3
	fldi	f2 r0 28
	addi	r2 r2 1
	call	min_caml_create_float_array
	subi	r2 r2 1
	add	r5 r0 r4
	addi	r4 r0 4144
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
L_create_dirvec_elements_2357 : 
	bgt	r0 r5 L_else_9119
	sti	r5 r2 0
	sti	r4 r2 1
	addi	r2 r2 3
	call	L_create_dirvec_2355
	subi	r2 r2 3
	ldi	r5 r2 0
	ldi	r6 r2 1
	add	r7 r6 r5
	sti	r4 r7 0
	addi	r5 r5 -1
	add	r4 r0 r6
	jump	L_create_dirvec_elements_2357
L_else_9119 : 
	return
L_create_dirvecs_2360 : 
	bgt	r0 r4 L_else_9121
	addi	r5 r0 4148
	addi	r6 r0 120
	sti	r4 r2 0
	sti	r5 r2 1
	sti	r6 r2 2
	addi	r2 r2 4
	call	L_create_dirvec_2355
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
	call	L_create_dirvec_elements_2357
	subi	r2 r2 4
	ldi	r4 r2 0
	addi	r4 r4 -1
	jump	L_create_dirvecs_2360
L_else_9121 : 
	return
L_init_dirvec_constants_2362 : 
	bgt	r0 r5 L_else_9123
	add	r6 r4 r5
	ldi	r6 r6 0
	sti	r4 r2 0
	sti	r5 r2 1
	add	r4 r0 r6
	addi	r2 r2 3
	call	L_setup_dirvec_constants_2147
	subi	r2 r2 3
	ldi	r4 r2 1
	addi	r5 r4 -1
	ldi	r4 r2 0
	jump	L_init_dirvec_constants_2362
L_else_9123 : 
	return
L_init_vecset_constants_2365 : 
	bgt	r0 r4 L_else_9125
	addi	r5 r0 4148
	add	r5 r5 r4
	ldi	r5 r5 0
	addi	r6 r0 119
	sti	r4 r2 0
	add	r4 r0 r5
	add	r5 r0 r6
	addi	r2 r2 2
	call	L_init_dirvec_constants_2362
	subi	r2 r2 2
	ldi	r4 r2 0
	addi	r4 r4 -1
	jump	L_init_vecset_constants_2365
L_else_9125 : 
	return
L_main_8690 : 
	addi	r4 r0 128
	addi	r5 r0 128
	addi	r6 r0 4130
	sti	r4 r6 0
	addi	r6 r0 4130
	sti	r5 r6 1
	addi	r5 r0 4132
	addi	r6 r0 64
	sti	r6 r5 0
	addi	r5 r0 4132
	addi	r6 r0 64
	sti	r6 r5 1
	addi	r5 r0 4134
	fldi	f2 r0 2
	foi	f3 r4
	fdiv	f2 f2 f3
	fsti	f2 r5 0
	addi	r4 r0 4130
	ldi	r4 r4 0
	sti	r4 r2 0
	addi	r2 r2 2
	call	L_create_pixel_2326
	subi	r2 r2 2
	add	r5 r0 r4
	ldi	r4 r2 0
	addi	r2 r2 2
	call	min_caml_create_array
	subi	r2 r2 2
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r5 r5 -2
	addi	r2 r2 2
	call	L_init_line_elements_2328
	subi	r2 r2 2
	addi	r5 r0 4130
	ldi	r5 r5 0
	sti	r4 r2 1
	sti	r5 r2 2
	addi	r2 r2 4
	call	L_create_pixel_2326
	subi	r2 r2 4
	add	r5 r0 r4
	ldi	r4 r2 2
	addi	r2 r2 4
	call	min_caml_create_array
	subi	r2 r2 4
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r5 r5 -2
	addi	r2 r2 4
	call	L_init_line_elements_2328
	subi	r2 r2 4
	addi	r5 r0 4130
	ldi	r5 r5 0
	sti	r4 r2 3
	sti	r5 r2 4
	addi	r2 r2 6
	call	L_create_pixel_2326
	subi	r2 r2 6
	add	r5 r0 r4
	ldi	r4 r2 4
	addi	r2 r2 6
	call	min_caml_create_array
	subi	r2 r2 6
	addi	r5 r0 4130
	ldi	r5 r5 0
	addi	r5 r5 -2
	addi	r2 r2 6
	call	L_init_line_elements_2328
	subi	r2 r2 6
	addi	r5 r0 4096
	sti	r4 r2 5
	sti	r5 r2 6
	addi	r2 r2 8
	call	min_caml_read_float
	subi	r2 r2 8
	ldi	r4 r2 6
	fsti	f2 r4 0
	addi	r4 r0 4096
	sti	r4 r2 7
	addi	r2 r2 9
	call	min_caml_read_float
	subi	r2 r2 9
	ldi	r4 r2 7
	fsti	f2 r4 1
	addi	r4 r0 4096
	sti	r4 r2 8
	addi	r2 r2 10
	call	min_caml_read_float
	subi	r2 r2 10
	ldi	r4 r2 8
	fsti	f2 r4 2
	addi	r2 r2 10
	call	min_caml_read_float
	subi	r2 r2 10
	addi	r2 r2 10
	call	L_rad_2028
	subi	r2 r2 10
	fsti	f2 r2 10
	addi	r2 r2 13
	call	L_cos_1886
	subi	r2 r2 13
	fldi	f3 r2 10
	fsti	f2 r2 12
	fadd	f2 f0 f3
	addi	r2 r2 15
	call	L_sin_1884
	subi	r2 r2 15
	fsti	f2 r2 14
	addi	r2 r2 17
	call	min_caml_read_float
	subi	r2 r2 17
	addi	r2 r2 17
	call	L_rad_2028
	subi	r2 r2 17
	fsti	f2 r2 16
	addi	r2 r2 19
	call	L_cos_1886
	subi	r2 r2 19
	fldi	f3 r2 16
	fsti	f2 r2 18
	fadd	f2 f0 f3
	addi	r2 r2 21
	call	L_sin_1884
	subi	r2 r2 21
	addi	r4 r0 4099
	fldi	f3 r2 12
	fmul	f4 f3 f2
	fldi	f5 r0 1
	fmul	f4 f4 f5
	fsti	f4 r4 0
	addi	r4 r0 4099
	fldi	f4 r0 0
	fldi	f5 r2 14
	fmul	f4 f5 f4
	fsti	f4 r4 1
	addi	r4 r0 4099
	fldi	f4 r2 18
	fmul	f6 f3 f4
	fldi	f7 r0 1
	fmul	f6 f6 f7
	fsti	f6 r4 2
	addi	r4 r0 4102
	fsti	f4 r4 0
	addi	r4 r0 4102
	fldi	f6 r0 28
	fsti	f6 r4 1
	addi	r4 r0 4102
	fsti	f2 r2 20
	sti	r4 r2 22
	addi	r2 r2 24
	call	L_fneg_1876
	subi	r2 r2 24
	ldi	r4 r2 22
	fsti	f2 r4 2
	addi	r4 r0 4105
	fldi	f2 r2 14
	sti	r4 r2 23
	addi	r2 r2 25
	call	L_fneg_1876
	subi	r2 r2 25
	fldi	f3 r2 20
	fmul	f2 f2 f3
	ldi	r4 r2 23
	fsti	f2 r4 0
	addi	r4 r0 4105
	fldi	f2 r2 12
	sti	r4 r2 24
	addi	r2 r2 26
	call	L_fneg_1876
	subi	r2 r2 26
	ldi	r4 r2 24
	fsti	f2 r4 1
	addi	r4 r0 4105
	fldi	f2 r2 14
	sti	r4 r2 25
	addi	r2 r2 27
	call	L_fneg_1876
	subi	r2 r2 27
	fldi	f3 r2 18
	fmul	f2 f2 f3
	ldi	r4 r2 25
	fsti	f2 r4 2
	addi	r4 r0 4108
	addi	r5 r0 4096
	fldi	f2 r5 0
	addi	r5 r0 4099
	fldi	f3 r5 0
	fsub	f2 f2 f3
	fsti	f2 r4 0
	addi	r4 r0 4108
	addi	r5 r0 4096
	fldi	f2 r5 1
	addi	r5 r0 4099
	fldi	f3 r5 1
	fsub	f2 f2 f3
	fsti	f2 r4 1
	addi	r4 r0 4108
	addi	r5 r0 4096
	fldi	f2 r5 2
	addi	r5 r0 4099
	fldi	f3 r5 2
	fsub	f2 f2 f3
	fsti	f2 r4 2
	addi	r2 r2 27
	call	min_caml_read_int
	subi	r2 r2 27
	addi	r2 r2 27
	call	min_caml_read_float
	subi	r2 r2 27
	addi	r2 r2 27
	call	L_rad_2028
	subi	r2 r2 27
	fsti	f2 r2 26
	addi	r2 r2 29
	call	L_sin_1884
	subi	r2 r2 29
	addi	r4 r0 4111
	sti	r4 r2 28
	addi	r2 r2 30
	call	L_fneg_1876
	subi	r2 r2 30
	ldi	r4 r2 28
	fsti	f2 r4 1
	addi	r2 r2 30
	call	min_caml_read_float
	subi	r2 r2 30
	addi	r2 r2 30
	call	L_rad_2028
	subi	r2 r2 30
	fldi	f3 r2 26
	fsti	f2 r2 30
	fadd	f2 f0 f3
	addi	r2 r2 33
	call	L_cos_1886
	subi	r2 r2 33
	fldi	f3 r2 30
	fsti	f2 r2 32
	fadd	f2 f0 f3
	addi	r2 r2 35
	call	L_sin_1884
	subi	r2 r2 35
	addi	r4 r0 4111
	fldi	f3 r2 32
	fmul	f2 f3 f2
	fsti	f2 r4 0
	fldi	f2 r2 30
	addi	r2 r2 35
	call	L_cos_1886
	subi	r2 r2 35
	addi	r4 r0 4111
	fldi	f3 r2 32
	fmul	f2 f3 f2
	fsti	f2 r4 2
	addi	r4 r0 4153
	sti	r4 r2 34
	addi	r2 r2 36
	call	min_caml_read_float
	subi	r2 r2 36
	ldi	r4 r2 34
	fsti	f2 r4 0
	addi	r4 r0 0
	addi	r2 r2 36
	call	L_read_object_2039
	subi	r2 r2 36
	addi	r4 r0 0
	addi	r2 r2 36
	call	L_read_and_network_2047
	subi	r2 r2 36
	addi	r4 r0 4255
	addi	r5 r0 0
	sti	r4 r2 35
	add	r4 r0 r5
	addi	r2 r2 37
	call	L_read_or_network_2045
	subi	r2 r2 37
	ldi	r5 r2 35
	sti	r4 r5 0
	addi	r4 r0 80
	addi	r2 r2 37
	call	min_caml_print_char
	subi	r2 r2 37
	addi	r4 r0 54
	addi	r2 r2 37
	call	min_caml_print_char
	subi	r2 r2 37
	addi	r4 r0 10
	addi	r2 r2 37
	call	min_caml_print_char
	subi	r2 r2 37
	addi	r4 r0 4130
	ldi	r4 r4 0
	addi	r5 r0 0
	sti	r4 r2 36
	addi	r2 r2 38
	call	L_sdiv10_1896
	subi	r2 r2 38
	addi	r5 r0 0
	addi	r2 r2 38
	call	L_sdiv10_1896
	subi	r2 r2 38
	addi	r4 r4 48
	addi	r2 r2 38
	call	min_caml_print_char
	subi	r2 r2 38
	addi	r5 r0 0
	ldi	r4 r2 36
	addi	r2 r2 38
	call	L_sdiv10_1896
	subi	r2 r2 38
	addi	r5 r0 0
	addi	r2 r2 38
	call	L_sdiv10_1896
	subi	r2 r2 38
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 36
	sub	r4 r5 r4
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 38
	call	L_sdiv10_1896
	subi	r2 r2 38
	addi	r4 r4 48
	addi	r2 r2 38
	call	min_caml_print_char
	subi	r2 r2 38
	addi	r5 r0 0
	ldi	r4 r2 36
	addi	r2 r2 38
	call	L_sdiv10_1896
	subi	r2 r2 38
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 36
	sub	r4 r5 r4
	addi	r4 r4 48
	addi	r2 r2 38
	call	min_caml_print_char
	subi	r2 r2 38
	addi	r4 r0 32
	addi	r2 r2 38
	call	min_caml_print_char
	subi	r2 r2 38
	addi	r4 r0 4130
	ldi	r4 r4 1
	addi	r5 r0 0
	sti	r4 r2 37
	addi	r2 r2 39
	call	L_sdiv10_1896
	subi	r2 r2 39
	addi	r5 r0 0
	addi	r2 r2 39
	call	L_sdiv10_1896
	subi	r2 r2 39
	addi	r4 r4 48
	addi	r2 r2 39
	call	min_caml_print_char
	subi	r2 r2 39
	addi	r5 r0 0
	ldi	r4 r2 37
	addi	r2 r2 39
	call	L_sdiv10_1896
	subi	r2 r2 39
	addi	r5 r0 0
	addi	r2 r2 39
	call	L_sdiv10_1896
	subi	r2 r2 39
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 37
	sub	r4 r5 r4
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 39
	call	L_sdiv10_1896
	subi	r2 r2 39
	addi	r4 r4 48
	addi	r2 r2 39
	call	min_caml_print_char
	subi	r2 r2 39
	addi	r5 r0 0
	ldi	r4 r2 37
	addi	r2 r2 39
	call	L_sdiv10_1896
	subi	r2 r2 39
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 37
	sub	r4 r5 r4
	addi	r4 r4 48
	addi	r2 r2 39
	call	min_caml_print_char
	subi	r2 r2 39
	addi	r4 r0 32
	addi	r2 r2 39
	call	min_caml_print_char
	subi	r2 r2 39
	addi	r4 r0 255
	addi	r5 r0 0
	sti	r4 r2 38
	addi	r2 r2 40
	call	L_sdiv10_1896
	subi	r2 r2 40
	addi	r5 r0 0
	addi	r2 r2 40
	call	L_sdiv10_1896
	subi	r2 r2 40
	addi	r4 r4 48
	addi	r2 r2 40
	call	min_caml_print_char
	subi	r2 r2 40
	addi	r5 r0 0
	ldi	r4 r2 38
	addi	r2 r2 40
	call	L_sdiv10_1896
	subi	r2 r2 40
	addi	r5 r0 0
	addi	r2 r2 40
	call	L_sdiv10_1896
	subi	r2 r2 40
	addi	r5 r0 100
	mul	r4 r4 r5
	ldi	r5 r2 38
	sub	r4 r5 r4
	addi	r6 r0 0
	add	r5 r0 r6
	addi	r2 r2 40
	call	L_sdiv10_1896
	subi	r2 r2 40
	addi	r4 r4 48
	addi	r2 r2 40
	call	min_caml_print_char
	subi	r2 r2 40
	addi	r5 r0 0
	ldi	r4 r2 38
	addi	r2 r2 40
	call	L_sdiv10_1896
	subi	r2 r2 40
	addi	r5 r0 10
	mul	r4 r4 r5
	ldi	r5 r2 38
	sub	r4 r5 r4
	addi	r4 r4 48
	addi	r2 r2 40
	call	min_caml_print_char
	subi	r2 r2 40
	addi	r4 r0 10
	addi	r2 r2 40
	call	min_caml_print_char
	subi	r2 r2 40
	addi	r4 r0 4
	addi	r2 r2 40
	call	L_create_dirvecs_2360
	subi	r2 r2 40
	addi	r4 r0 9
	addi	r5 r0 0
	addi	r6 r0 0
	addi	r2 r2 40
	call	L_calc_dirvec_rows_2351
	subi	r2 r2 40
	addi	r4 r0 4
	addi	r2 r2 40
	call	L_init_vecset_constants_2365
	subi	r2 r2 40
	addi	r4 r0 4977
	addi	r2 r2 40
	call	L_d_vec_2018
	subi	r2 r2 40
	addi	r5 r0 4111
	addi	r2 r2 40
	call	L_veccpy_1921
	subi	r2 r2 40
	addi	r4 r0 4977
	addi	r2 r2 40
	call	L_setup_dirvec_constants_2147
	subi	r2 r2 40
	addi	r4 r0 4144
	ldi	r4 r4 0
	addi	r4 r4 -1
	bgt	r0 r4 L_else_8693
	addi	r5 r0 5042
	add	r5 r5 r4
	ldi	r5 r5 0
	sti	r4 r2 39
	sti	r5 r2 40
	add	r4 r0 r5
	addi	r2 r2 42
	call	L_o_reflectiontype_1961
	subi	r2 r2 42
	addi	r5 r0 2
	bne	r4 r5 L_else_8695
	ldi	r4 r2 40
	addi	r2 r2 42
	call	L_o_diffuse_1981
	subi	r2 r2 42
	fldi	f3 r0 43
	addi	r2 r2 42
	call	L_fless_1871
	subi	r2 r2 42
	bne	r4 r0 L_else_8697
	jump	L_cont_8698
L_else_8697 : 
	ldi	r4 r2 40
	addi	r2 r2 42
	call	L_o_form_1959
	subi	r2 r2 42
	addi	r5 r0 1
	bne	r4 r5 L_else_8699
	addi	r4 r0 4
	ldi	r5 r2 39
	mul	r4 r5 r4
	addi	r5 r0 4147
	ldi	r5 r5 0
	fldi	f2 r0 43
	ldi	r6 r2 40
	sti	r5 r2 41
	sti	r4 r2 42
	fsti	f2 r2 44
	add	r4 r0 r6
	addi	r2 r2 47
	call	L_o_diffuse_1981
	subi	r2 r2 47
	fldi	f3 r2 44
	fsub	f2 f3 f2
	addi	r4 r0 4111
	fldi	f3 r4 0
	fsti	f2 r2 46
	fadd	f2 f0 f3
	addi	r2 r2 49
	call	L_fneg_1876
	subi	r2 r2 49
	addi	r4 r0 4111
	fldi	f3 r4 1
	fsti	f2 r2 48
	fadd	f2 f0 f3
	addi	r2 r2 51
	call	L_fneg_1876
	subi	r2 r2 51
	addi	r4 r0 4111
	fldi	f3 r4 2
	fsti	f2 r2 50
	fadd	f2 f0 f3
	addi	r2 r2 53
	call	L_fneg_1876
	subi	r2 r2 53
	ldi	r4 r2 42
	addi	r5 r4 1
	addi	r6 r0 4111
	fldi	f3 r6 0
	sti	r5 r2 52
	fsti	f2 r2 54
	fsti	f3 r2 56
	addi	r2 r2 59
	call	L_create_dirvec_2355
	subi	r2 r2 59
	sti	r4 r2 58
	addi	r2 r2 60
	call	L_d_vec_2018
	subi	r2 r2 60
	fldi	f2 r2 56
	fldi	f3 r2 50
	fldi	f4 r2 54
	addi	r2 r2 60
	call	L_vecset_1911
	subi	r2 r2 60
	ldi	r4 r2 58
	addi	r2 r2 60
	call	L_setup_dirvec_constants_2147
	subi	r2 r2 60
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 46
	fsti	f2 r5 2
	ldi	r6 r2 58
	sti	r6 r5 1
	ldi	r6 r2 52
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 41
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r6 1
	ldi	r5 r2 42
	addi	r7 r5 2
	addi	r8 r0 4111
	fldi	f3 r8 1
	sti	r4 r2 59
	sti	r7 r2 60
	fsti	f3 r2 62
	addi	r2 r2 65
	call	L_create_dirvec_2355
	subi	r2 r2 65
	sti	r4 r2 64
	addi	r2 r2 66
	call	L_d_vec_2018
	subi	r2 r2 66
	fldi	f2 r2 48
	fldi	f3 r2 62
	fldi	f4 r2 54
	addi	r2 r2 66
	call	L_vecset_1911
	subi	r2 r2 66
	ldi	r4 r2 64
	addi	r2 r2 66
	call	L_setup_dirvec_constants_2147
	subi	r2 r2 66
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 46
	fsti	f2 r5 2
	ldi	r6 r2 64
	sti	r6 r5 1
	ldi	r6 r2 60
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 59
	add	r4 r4 r6
	sti	r5 r4 0
	ldi	r4 r2 41
	addi	r5 r4 2
	ldi	r6 r2 42
	addi	r6 r6 3
	addi	r7 r0 4111
	fldi	f3 r7 2
	sti	r5 r2 65
	sti	r6 r2 66
	fsti	f3 r2 68
	addi	r2 r2 71
	call	L_create_dirvec_2355
	subi	r2 r2 71
	sti	r4 r2 70
	addi	r2 r2 72
	call	L_d_vec_2018
	subi	r2 r2 72
	fldi	f2 r2 48
	fldi	f3 r2 50
	fldi	f4 r2 68
	addi	r2 r2 72
	call	L_vecset_1911
	subi	r2 r2 72
	ldi	r4 r2 70
	addi	r2 r2 72
	call	L_setup_dirvec_constants_2147
	subi	r2 r2 72
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 46
	fsti	f2 r5 2
	ldi	r6 r2 70
	sti	r6 r5 1
	ldi	r6 r2 66
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 65
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 4147
	ldi	r5 r2 41
	addi	r5 r5 3
	sti	r5 r4 0
	jump	L_cont_8700
L_else_8699 : 
	addi	r5 r0 2
	bne	r4 r5 L_else_8705
	addi	r4 r0 4
	ldi	r5 r2 39
	mul	r4 r5 r4
	addi	r4 r4 1
	addi	r5 r0 4147
	ldi	r5 r5 0
	fldi	f2 r0 43
	ldi	r6 r2 40
	sti	r5 r2 71
	sti	r4 r2 72
	fsti	f2 r2 74
	add	r4 r0 r6
	addi	r2 r2 77
	call	L_o_diffuse_1981
	subi	r2 r2 77
	fldi	f3 r2 74
	fsub	f2 f3 f2
	addi	r4 r0 4111
	ldi	r5 r2 40
	fsti	f2 r2 76
	sti	r4 r2 78
	add	r4 r0 r5
	addi	r2 r2 80
	call	L_o_param_abc_1973
	subi	r2 r2 80
	add	r5 r0 r4
	ldi	r4 r2 78
	addi	r2 r2 80
	call	L_veciprod_1932
	subi	r2 r2 80
	fldi	f3 r0 56
	ldi	r4 r2 40
	fsti	f2 r2 80
	fsti	f3 r2 82
	addi	r2 r2 85
	call	L_o_param_a_1967
	subi	r2 r2 85
	fldi	f3 r2 82
	fmul	f2 f3 f2
	fldi	f3 r2 80
	fmul	f2 f2 f3
	addi	r4 r0 4111
	fldi	f4 r4 0
	fsub	f2 f2 f4
	fldi	f4 r0 56
	ldi	r4 r2 40
	fsti	f2 r2 84
	fsti	f4 r2 86
	addi	r2 r2 89
	call	L_o_param_b_1969
	subi	r2 r2 89
	fldi	f3 r2 86
	fmul	f2 f3 f2
	fldi	f3 r2 80
	fmul	f2 f2 f3
	addi	r4 r0 4111
	fldi	f4 r4 1
	fsub	f2 f2 f4
	fldi	f4 r0 56
	ldi	r4 r2 40
	fsti	f2 r2 88
	fsti	f4 r2 90
	addi	r2 r2 93
	call	L_o_param_c_1971
	subi	r2 r2 93
	fldi	f3 r2 90
	fmul	f2 f3 f2
	fldi	f3 r2 80
	fmul	f2 f2 f3
	addi	r4 r0 4111
	fldi	f3 r4 2
	fsub	f2 f2 f3
	fsti	f2 r2 92
	addi	r2 r2 95
	call	L_create_dirvec_2355
	subi	r2 r2 95
	sti	r4 r2 94
	addi	r2 r2 96
	call	L_d_vec_2018
	subi	r2 r2 96
	fldi	f2 r2 84
	fldi	f3 r2 88
	fldi	f4 r2 92
	addi	r2 r2 96
	call	L_vecset_1911
	subi	r2 r2 96
	ldi	r4 r2 94
	addi	r2 r2 96
	call	L_setup_dirvec_constants_2147
	subi	r2 r2 96
	addi	r4 r0 4257
	add	r5 r0 r3
	addi	r3 r3 3
	fldi	f2 r2 76
	fsti	f2 r5 2
	ldi	r6 r2 94
	sti	r6 r5 1
	ldi	r6 r2 72
	sti	r6 r5 0
	add	r5 r0 r5
	ldi	r6 r2 71
	add	r4 r4 r6
	sti	r5 r4 0
	addi	r4 r0 4147
	addi	r5 r6 1
	sti	r5 r4 0
	jump	L_cont_8706
L_else_8705 : 
L_cont_8706 : 
L_cont_8700 : 
L_cont_8698 : 
	jump	L_cont_8696
L_else_8695 : 
L_cont_8696 : 
	jump	L_cont_8694
L_else_8693 : 
L_cont_8694 : 
	addi	r5 r0 0
	addi	r6 r0 0
	ldi	r4 r2 3
	addi	r2 r2 96
	call	L_pretrace_line_2308
	subi	r2 r2 96
	addi	r4 r0 0
	addi	r8 r0 2
	ldi	r5 r2 1
	ldi	r6 r2 3
	ldi	r7 r2 5
	addi	r2 r2 96
	call	L_scan_line_2318
	subi	r2 r2 96
	addi	r4 r0 0
