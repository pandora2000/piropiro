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
	bne	r0 r7 L_else_5789
	return
L_else_5789 : 
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
	bne	r0 r7 L_else_5790
	return
L_else_5790 : 
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
L_fiszero_1855 : 
	fbne	f2 f0 L_else_5146
	addi	r6 r0 1
	return
L_else_5146 : 
	addi	r6 r0 0
	return
L_fispos_1857 : 
	fbgt	f2 f0 L_else_5149
	addi	r6 r0 0
	return
L_else_5149 : 
	addi	r6 r0 1
	return
L_fisneg_1859 : 
	fbgt	f0 f2 L_else_5152
	addi	r6 r0 0
	return
L_else_5152 : 
	addi	r6 r0 1
	return
L_fabs_1861 : 
	fbgt	f0 f2 L_else_5155
	return
L_else_5155 : 
	fsub	f2 f0 f2
	return
L_fless_1863 : 
	fbgt	f3 f2 L_else_5158
	addi	r6 r0 0
	return
L_else_5158 : 
	addi	r6 r0 1
	return
L_fhalf_1866 : 
	fldi	f3 r0 0
	fdiv	f2 f2 f3
	return
L_fneg_1868 : 
	fsub	f2 f0 f2
	return
L_fsqr_1870 : 
	fmul	f2 f2 f2
	return
L_psin_1872 : 
	fmul	f3 f2 f2
	fmul	f9 f2 f3
	fmul	f7 f9 f3
	fmul	f8 f7 f3
	fmul	f5 f8 f3
	fmul	f6 f5 f3
	fmul	f3 f6 f3
	fldi	f4 r0 1
	fmul	f4 f4 f3
	fldi	f3 r0 2
	fmul	f3 f3 f6
	fsub	f4 f4 f3
	fldi	f3 r0 3
	fmul	f3 f3 f5
	fadd	f4 f4 f3
	fldi	f3 r0 4
	fmul	f3 f3 f8
	fsub	f4 f4 f3
	fldi	f3 r0 5
	fmul	f3 f3 f7
	fadd	f4 f4 f3
	fldi	f3 r0 6
	fmul	f3 f3 f9
	fsub	f3 f4 f3
	fadd	f2 f3 f2
	return
L_pcos_1874 : 
	fmul	f7 f2 f2
	fmul	f8 f7 f7
	fmul	f5 f8 f7
	fmul	f6 f5 f7
	fmul	f4 f6 f7
	fmul	f3 f4 f7
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
	fldi	f3 r0 13
	fadd	f2 f2 f3
	return
L_sin_1876 : 
	fldi	f4 r0 14
	fldi	f6 r0 15
	fbgt	f2 f6 L_else_5166
	fldi	f3 r0 16
	fbgt	f3 f2 L_else_5168
	fldi	f5 r0 17
	fldi	f4 r0 18
	fldi	f3 r0 19
	fbgt	f2 f0 L_else_5170
	fldi	f3 r0 20
	fbgt	f3 f2 L_else_5172
	jump	L_psin_1872
L_else_5172 : 
	fldi	f3 r0 21
	fbgt	f3 f2 L_else_5174
	fadd	f2 f4 f2
	call	L_pcos_1874
	fsub	f2 f0 f2
	return
L_else_5174 : 
	fadd	f2 f6 f2
	call	L_psin_1872
	fsub	f2 f0 f2
	return
L_else_5170 : 
	fbgt	f2 f5 L_else_5176
	jump	L_psin_1872
L_else_5176 : 
	fbgt	f2 f3 L_else_5178
	fsub	f2 f2 f4
	jump	L_pcos_1874
L_else_5178 : 
	fsub	f2 f6 f2
	jump	L_psin_1872
L_else_5168 : 
	fadd	f2 f2 f4
	jump	L_sin_1876
L_else_5166 : 
	fsub	f2 f2 f4
	jump	L_sin_1876
L_cos_1878 : 
	fldi	f4 r0 14
	fldi	f6 r0 15
	fbgt	f2 f6 L_else_5181
	fldi	f3 r0 16
	fbgt	f3 f2 L_else_5183
	fldi	f5 r0 17
	fldi	f4 r0 18
	fldi	f3 r0 19
	fbgt	f2 f0 L_else_5185
	fldi	f3 r0 20
	fbgt	f3 f2 L_else_5187
	jump	L_pcos_1874
L_else_5187 : 
	fldi	f3 r0 21
	fbgt	f3 f2 L_else_5189
	fadd	f2 f2 f4
	jump	L_psin_1872
L_else_5189 : 
	fadd	f2 f6 f2
	call	L_pcos_1874
	fsub	f2 f0 f2
	return
L_else_5185 : 
	fbgt	f2 f5 L_else_5191
	jump	L_pcos_1874
L_else_5191 : 
	fbgt	f2 f3 L_else_5193
	fsub	f2 f2 f4
	call	L_psin_1872
	fsub	f2 f0 f2
	return
L_else_5193 : 
	fsub	f2 f6 f2
	call	L_pcos_1874
	fsub	f2 f0 f2
	return
L_else_5183 : 
	fadd	f2 f2 f4
	jump	L_cos_1878
L_else_5181 : 
	fsub	f2 f2 f4
	jump	L_cos_1878
L_atan_1880 : 
	fmul	f3 f2 f2
	fldi	f4 r0 13
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
	fldi	f3 r0 22
	fmul	f3 f3 f4
	fdiv	f4 f3 f8
	fldi	f3 r0 23
	fmul	f3 f3 f5
	fdiv	f3 f3 f11
	fadd	f4 f4 f3
	fldi	f3 r0 24
	fmul	f3 f3 f7
	fdiv	f3 f3 f10
	fadd	f4 f4 f3
	fldi	f3 r0 25
	fmul	f3 f3 f6
	fdiv	f3 f3 f13
	fadd	f4 f4 f3
	fldi	f3 r0 26
	fmul	f3 f3 f9
	fdiv	f3 f3 f12
	fadd	f3 f4 f3
	fdiv	f2 f2 f14
	fadd	f2 f3 f2
	return
L_spow10_1882 : 
	bne	r6 r0 L_else_5197
	add	r6 r0 r7
	return
L_else_5197 : 
	addi	r8 r6 -1
	addi	r6 r0 10
	mul	r7 r7 r6
	add	r6 r0 r8
	jump	L_spow10_1882
L_pow10_1885 : 
	addi	r7 r0 1
	jump	L_spow10_1882
L_sdivn_1887 : 
	sub	r9 r6 r7
	bgt	r0 r9 L_else_5201
	sub	r6 r6 r7
	addi	r8 r8 1
	jump	L_sdivn_1887
L_else_5201 : 
	add	r6 r0 r8
	return
L_divpow10_1891 : 
	call	L_pow10_1885
	addi	r8 r0 0
	add	r7 r0 r6
	add	r6 r0 r9
	jump	L_sdivn_1887
L_sprint_int_1894 : 
	bne	r11 r0 L_else_5205
	addi	r6 r10 48
	jump	min_caml_print_char
L_else_5205 : 
	bne	r12 r0 L_else_5207
	add	r9 r0 r10
	add	r6 r0 r11
	call	L_divpow10_1891
	add	r9 r0 r6
	addi	r6 r9 48
	call	min_caml_print_char
	add	r6 r0 r11
	call	L_pow10_1885
	mul	r6 r9 r6
	sub	r10 r10 r6
	addi	r11 r11 -1
	addi	r12 r0 0
	jump	L_sprint_int_1894
L_else_5207 : 
	add	r9 r0 r10
	add	r6 r0 r11
	call	L_divpow10_1891
	add	r9 r0 r6
	bne	r9 r0 L_else_5209
	addi	r11 r11 -1
	jump	L_sprint_int_1894
L_else_5209 : 
	addi	r6 r9 48
	call	min_caml_print_char
	add	r6 r0 r11
	call	L_pow10_1885
	mul	r6 r9 r6
	sub	r10 r10 r6
	addi	r11 r11 -1
	addi	r12 r0 0
	jump	L_sprint_int_1894
L_print_int_1898 : 
	addi	r11 r0 9
	addi	r12 r0 1
	jump	L_sprint_int_1894
L_sgn_1900 : 
	fadd	f2 f0 f3
	call	L_fiszero_1855
	bne	r6 r0 L_else_5213
	fadd	f2 f0 f3
	call	L_fispos_1857
	bne	r6 r0 L_else_5215
	fldi	f2 r0 27
	return
L_else_5215 : 
	fldi	f2 r0 13
	return
L_else_5213 : 
	fldi	f2 r0 28
	return
L_fneg_cond_1902 : 
	bne	r6 r0 L_else_5218
	jump	L_fneg_1868
L_else_5218 : 
	return
L_add_mod5_1905 : 
	add	r6 r6 r7
	addi	r7 r0 5
	bgt	r7 r6 L_else_5221
	addi	r6 r6 -5
	return
L_else_5221 : 
	return
L_vecset_1908 : 
	fsti	f2 r6 0
	fsti	f3 r6 1
	fsti	f4 r6 2
	return
L_vecfill_1913 : 
	fsti	f2 r6 0
	fsti	f2 r6 1
	fsti	f2 r6 2
	return
L_vecbzero_1916 : 
	fldi	f2 r0 28
	jump	L_vecfill_1913
L_veccpy_1918 : 
	fldi	f2 r7 0
	fsti	f2 r6 0
	fldi	f2 r7 1
	fsti	f2 r6 1
	fldi	f2 r7 2
	fsti	f2 r6 2
	return
L_vecunit_sgn_1926 : 
	fldi	f2 r7 0
	call	L_fsqr_1870
	fadd	f3 f0 f2
	fldi	f2 r7 1
	call	L_fsqr_1870
	fadd	f3 f3 f2
	fldi	f2 r7 2
	call	L_fsqr_1870
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fadd	f2 f0 f3
	call	L_fiszero_1855
	bne	r6 r0 L_else_5229
	bne	r8 r0 L_else_5231
	fldi	f2 r0 13
	fdiv	f3 f2 f3
	jump	L_cont_5227
L_else_5231 : 
	fldi	f2 r0 27
	fdiv	f3 f2 f3
	jump	L_cont_5227
L_else_5229 : 
	fldi	f3 r0 13
L_cont_5227 : 
	fldi	f2 r7 0
	fmul	f2 f2 f3
	fsti	f2 r7 0
	fldi	f2 r7 1
	fmul	f2 f2 f3
	fsti	f2 r7 1
	fldi	f2 r7 2
	fmul	f2 f2 f3
	fsti	f2 r7 2
	return
L_veciprod_1929 : 
	fldi	f2 r6 0
	fldi	f3 r7 0
	fmul	f3 f2 f3
	fldi	f4 r6 1
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r6 2
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	return
L_veciprod2_1932 : 
	fldi	f5 r6 0
	fmul	f5 f5 f2
	fldi	f2 r6 1
	fmul	f2 f2 f3
	fadd	f3 f5 f2
	fldi	f2 r6 2
	fmul	f2 f2 f4
	fadd	f2 f3 f2
	return
L_vecaccum_1937 : 
	fldi	f4 r6 0
	fldi	f3 r7 0
	fmul	f3 f2 f3
	fadd	f3 f4 f3
	fsti	f3 r6 0
	fldi	f4 r6 1
	fldi	f3 r7 1
	fmul	f3 f2 f3
	fadd	f3 f4 f3
	fsti	f3 r6 1
	fldi	f4 r6 2
	fldi	f3 r7 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r6 2
	return
L_vecadd_1941 : 
	fldi	f2 r6 0
	fldi	f3 r7 0
	fadd	f2 f2 f3
	fsti	f2 r6 0
	fldi	f2 r6 1
	fldi	f3 r7 1
	fadd	f2 f2 f3
	fsti	f2 r6 1
	fldi	f3 r6 2
	fldi	f2 r7 2
	fadd	f2 f3 f2
	fsti	f2 r6 2
	return
L_vecscale_1947 : 
	fldi	f3 r6 0
	fmul	f3 f3 f2
	fsti	f3 r6 0
	fldi	f3 r6 1
	fmul	f3 f3 f2
	fsti	f3 r6 1
	fldi	f3 r6 2
	fmul	f2 f3 f2
	fsti	f2 r6 2
	return
L_vecaccumv_1950 : 
	fldi	f3 r6 0
	fldi	f4 r7 0
	fldi	f2 r8 0
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r6 0
	fldi	f3 r6 1
	fldi	f4 r7 1
	fldi	f2 r8 1
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r6 1
	fldi	f4 r6 2
	fldi	f2 r7 2
	fldi	f3 r8 2
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r6 2
	return
L_o_texturetype_1954 : 
	ldi	r6 r6 0
	return
L_o_form_1956 : 
	ldi	r6 r6 1
	return
L_o_reflectiontype_1958 : 
	ldi	r6 r6 2
	return
L_o_isinvert_1960 : 
	ldi	r6 r6 6
	return
L_o_isrot_1962 : 
	ldi	r6 r6 3
	return
L_o_param_a_1964 : 
	ldi	r6 r6 4
	fldi	f2 r6 0
	return
L_o_param_b_1966 : 
	ldi	r6 r6 4
	fldi	f2 r6 1
	return
L_o_param_c_1968 : 
	ldi	r6 r6 4
	fldi	f2 r6 2
	return
L_o_param_abc_1970 : 
	ldi	r6 r6 4
	return
L_o_param_x_1972 : 
	ldi	r6 r6 5
	fldi	f2 r6 0
	return
L_o_param_y_1974 : 
	ldi	r6 r6 5
	fldi	f2 r6 1
	return
L_o_param_z_1976 : 
	ldi	r6 r6 5
	fldi	f2 r6 2
	return
L_o_diffuse_1978 : 
	ldi	r6 r6 7
	fldi	f2 r6 0
	return
L_o_hilight_1980 : 
	ldi	r6 r6 7
	fldi	f2 r6 1
	return
L_o_color_red_1982 : 
	ldi	r6 r6 8
	fldi	f2 r6 0
	return
L_o_color_green_1984 : 
	ldi	r6 r6 8
	fldi	f2 r6 1
	return
L_o_color_blue_1986 : 
	ldi	r6 r6 8
	fldi	f2 r6 2
	return
L_o_param_r1_1988 : 
	ldi	r6 r6 9
	fldi	f2 r6 0
	return
L_o_param_r2_1990 : 
	ldi	r6 r6 9
	fldi	f2 r6 1
	return
L_o_param_r3_1992 : 
	ldi	r6 r6 9
	fldi	f2 r6 2
	return
L_o_param_ctbl_1994 : 
	ldi	r6 r6 10
	return
L_p_rgb_1996 : 
	ldi	r6 r6 0
	return
L_p_intersection_points_1998 : 
	ldi	r6 r6 1
	return
L_p_surface_ids_2000 : 
	ldi	r6 r6 2
	return
L_p_calc_diffuse_2002 : 
	ldi	r6 r6 3
	return
L_p_energy_2004 : 
	ldi	r6 r6 4
	return
L_p_received_ray_20percent_2006 : 
	ldi	r6 r6 5
	return
L_p_group_id_2008 : 
	ldi	r6 r6 6
	ldi	r6 r6 0
	return
L_p_set_group_id_2010 : 
	ldi	r6 r6 6
	sti	r7 r6 0
	return
L_p_nvectors_2013 : 
	ldi	r6 r6 7
	return
L_d_vec_2015 : 
	ldi	r6 r6 0
	return
L_d_const_2017 : 
	ldi	r6 r6 1
	return
L_r_surface_id_2019 : 
	ldi	r6 r6 0
	return
L_r_dvec_2021 : 
	ldi	r6 r6 1
	return
L_r_bright_2023 : 
	fldi	f2 r6 2
	return
L_rad_2025 : 
	fldi	f3 r0 29
	fmul	f2 f2 f3
	return
L_read_screen_settings_2027 : 
	call	min_caml_read_float
	fsti	f2 r0 1024
	call	min_caml_read_float
	fsti	f2 r0 1025
	call	min_caml_read_float
	fsti	f2 r0 1026
	call	min_caml_read_float
	call	L_rad_2025
	fadd	f11 f0 f2
	fadd	f2 f0 f11
	call	L_cos_1878
	fadd	f10 f0 f2
	fadd	f2 f0 f11
	call	L_sin_1876
	fadd	f11 f0 f2
	call	min_caml_read_float
	call	L_rad_2025
	fadd	f13 f0 f2
	fadd	f2 f0 f13
	call	L_cos_1878
	fadd	f12 f0 f2
	fadd	f2 f0 f13
	call	L_sin_1876
	fadd	f3 f0 f2
	fmul	f4 f10 f3
	fldi	f2 r0 30
	fmul	f2 f4 f2
	fsti	f2 r0 1027
	fldi	f2 r0 31
	fmul	f2 f11 f2
	fsti	f2 r0 1028
	fmul	f4 f10 f12
	fldi	f2 r0 30
	fmul	f2 f4 f2
	fsti	f2 r0 1029
	fsti	f12 r0 1030
	fldi	f2 r0 28
	fsti	f2 r0 1031
	fadd	f2 f0 f3
	call	L_fneg_1868
	fsti	f2 r0 1032
	fadd	f2 f0 f11
	call	L_fneg_1868
	fmul	f2 f2 f3
	fsti	f2 r0 1033
	fadd	f2 f0 f10
	call	L_fneg_1868
	fsti	f2 r0 1034
	fadd	f2 f0 f11
	call	L_fneg_1868
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
L_read_light_2029 : 
	call	min_caml_read_int
	call	min_caml_read_float
	call	L_rad_2025
	fadd	f10 f0 f2
	fadd	f2 f0 f10
	call	L_sin_1876
	call	L_fneg_1868
	fsti	f2 r0 1040
	call	min_caml_read_float
	call	L_rad_2025
	fadd	f11 f0 f2
	fadd	f2 f0 f10
	call	L_cos_1878
	fadd	f10 f0 f2
	fadd	f2 f0 f11
	call	L_sin_1876
	fmul	f2 f10 f2
	fsti	f2 r0 1039
	fadd	f2 f0 f11
	call	L_cos_1878
	fmul	f2 f10 f2
	fsti	f2 r0 1041
	call	min_caml_read_float
	fsti	f2 r0 1081
	return
L_rotate_quadratic_matrix_2031 : 
	fldi	f2 r7 0
	call	L_cos_1878
	fadd	f10 f0 f2
	fldi	f2 r7 0
	call	L_sin_1876
	fadd	f11 f0 f2
	fldi	f2 r7 1
	call	L_cos_1878
	fadd	f12 f0 f2
	fldi	f2 r7 1
	call	L_sin_1876
	fadd	f13 f0 f2
	fldi	f2 r7 2
	call	L_cos_1878
	fadd	f14 f0 f2
	fldi	f2 r7 2
	call	L_sin_1876
	fmul	f6 f12 f14
	fmul	f3 f11 f13
	fmul	f4 f3 f14
	fmul	f3 f10 f2
	fsub	f4 f4 f3
	fmul	f3 f10 f13
	fmul	f5 f3 f14
	fmul	f3 f11 f2
	fadd	f3 f5 f3
	fmul	f7 f12 f2
	fmul	f5 f11 f13
	fmul	f5 f5 f2
	fmul	f8 f10 f14
	fadd	f5 f5 f8
	fmul	f8 f10 f13
	fmul	f8 f8 f2
	fmul	f2 f11 f14
	fsub	f8 f8 f2
	fadd	f2 f0 f13
	call	L_fneg_1868
	fadd	f9 f0 f2
	fmul	f13 f11 f12
	fmul	f12 f10 f12
	fldi	f10 r6 0
	fldi	f11 r6 1
	fldi	f14 r6 2
	fadd	f2 f0 f6
	call	L_fsqr_1870
	fmul	f15 f10 f2
	fadd	f2 f0 f7
	call	L_fsqr_1870
	fmul	f2 f11 f2
	fadd	f15 f15 f2
	fadd	f2 f0 f9
	call	L_fsqr_1870
	fmul	f2 f14 f2
	fadd	f2 f15 f2
	fsti	f2 r6 0
	fadd	f2 f0 f4
	call	L_fsqr_1870
	fmul	f15 f10 f2
	fadd	f2 f0 f5
	call	L_fsqr_1870
	fmul	f2 f11 f2
	fadd	f15 f15 f2
	fadd	f2 f0 f13
	call	L_fsqr_1870
	fmul	f2 f14 f2
	fadd	f2 f15 f2
	fsti	f2 r6 1
	fadd	f2 f0 f3
	call	L_fsqr_1870
	fmul	f15 f10 f2
	fadd	f2 f0 f8
	call	L_fsqr_1870
	fmul	f2 f11 f2
	fadd	f15 f15 f2
	fadd	f2 f0 f12
	call	L_fsqr_1870
	fmul	f2 f14 f2
	fadd	f2 f15 f2
	fsti	f2 r6 2
	fldi	f16 r0 0
	fmul	f2 f10 f4
	fmul	f15 f2 f3
	fmul	f2 f11 f5
	fmul	f2 f2 f8
	fadd	f15 f15 f2
	fmul	f2 f14 f13
	fmul	f2 f2 f12
	fadd	f2 f15 f2
	fmul	f2 f16 f2
	fsti	f2 r7 0
	fldi	f15 r0 0
	fmul	f2 f10 f6
	fmul	f3 f2 f3
	fmul	f2 f11 f7
	fmul	f2 f2 f8
	fadd	f3 f3 f2
	fmul	f2 f14 f9
	fmul	f2 f2 f12
	fadd	f2 f3 f2
	fmul	f2 f15 f2
	fsti	f2 r7 1
	fldi	f8 r0 0
	fmul	f2 f10 f6
	fmul	f3 f2 f4
	fmul	f2 f11 f7
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fmul	f2 f14 f9
	fmul	f2 f2 f13
	fadd	f2 f3 f2
	fmul	f2 f8 f2
	fsti	f2 r7 2
	return
L_read_nth_object_2034 : 
	call	min_caml_read_int
	add	r12 r0 r6
	bne	r12 r5 L_else_5279
	addi	r6 r0 0
	return
L_else_5279 : 
	call	min_caml_read_int
	add	r13 r0 r6
	call	min_caml_read_int
	add	r14 r0 r6
	call	min_caml_read_int
	add	r10 r0 r6
	addi	r6 r0 3
	fldi	f2 r0 28
	call	min_caml_create_float_array
	add	r11 r0 r6
	call	min_caml_read_float
	fsti	f2 r11 0
	call	min_caml_read_float
	fsti	f2 r11 1
	call	min_caml_read_float
	fsti	f2 r11 2
	addi	r6 r0 3
	fldi	f2 r0 28
	call	min_caml_create_float_array
	add	r15 r0 r6
	call	min_caml_read_float
	fsti	f2 r15 0
	call	min_caml_read_float
	fsti	f2 r15 1
	call	min_caml_read_float
	fsti	f2 r15 2
	call	min_caml_read_float
	call	L_fisneg_1859
	add	r17 r0 r6
	addi	r6 r0 2
	fldi	f2 r0 28
	call	min_caml_create_float_array
	add	r18 r0 r6
	call	min_caml_read_float
	fsti	f2 r18 0
	call	min_caml_read_float
	fsti	f2 r18 1
	addi	r6 r0 3
	fldi	f2 r0 28
	call	min_caml_create_float_array
	add	r19 r0 r6
	call	min_caml_read_float
	fsti	f2 r19 0
	call	min_caml_read_float
	fsti	f2 r19 1
	call	min_caml_read_float
	fsti	f2 r19 2
	addi	r6 r0 3
	fldi	f2 r0 28
	call	min_caml_create_float_array
	add	r16 r0 r6
	bne	r10 r0 L_else_5282
	jump	L_cont_5280
L_else_5282 : 
	call	min_caml_read_float
	call	L_rad_2025
	fsti	f2 r16 0
	call	min_caml_read_float
	call	L_rad_2025
	fsti	f2 r16 1
	call	min_caml_read_float
	call	L_rad_2025
	fsti	f2 r16 2
L_cont_5280 : 
	addi	r6 r0 2
	bne	r13 r6 L_else_5285
	addi	r20 r0 1
	jump	L_cont_5283
L_else_5285 : 
	add	r20 r0 r17
L_cont_5283 : 
	addi	r6 r0 4
	fldi	f2 r0 28
	call	min_caml_create_float_array
	sti	r12 r3 0
	sti	r13 r3 1
	sti	r14 r3 2
	sti	r10 r3 3
	sti	r11 r3 4
	sti	r15 r3 5
	sti	r20 r3 6
	sti	r18 r3 7
	sti	r19 r3 8
	sti	r16 r3 9
	sti	r6 r3 10
	add	r7 r0 r3
	addi	r3 r3 11
	addi	r6 r0 1970
	add	r1 r6 r8
	sti	r7 r1 0
	addi	r6 r0 3
	bne	r13 r6 L_else_5288
	fldi	f4 r11 0
	fadd	f2 f0 f4
	call	L_fiszero_1855
	bne	r6 r0 L_else_5294
	fadd	f3 f0 f4
	call	L_sgn_1900
	fadd	f3 f0 f2
	fadd	f2 f0 f4
	call	L_fsqr_1870
	fdiv	f2 f3 f2
	jump	L_cont_5292
L_else_5294 : 
	fldi	f2 r0 28
L_cont_5292 : 
	fsti	f2 r11 0
	fldi	f4 r11 1
	fadd	f2 f0 f4
	call	L_fiszero_1855
	bne	r6 r0 L_else_5297
	fadd	f3 f0 f4
	call	L_sgn_1900
	fadd	f3 f0 f2
	fadd	f2 f0 f4
	call	L_fsqr_1870
	fdiv	f2 f3 f2
	jump	L_cont_5295
L_else_5297 : 
	fldi	f2 r0 28
L_cont_5295 : 
	fsti	f2 r11 1
	fldi	f4 r11 2
	fadd	f2 f0 f4
	call	L_fiszero_1855
	bne	r6 r0 L_else_5300
	fadd	f3 f0 f4
	call	L_sgn_1900
	fadd	f3 f0 f2
	fadd	f2 f0 f4
	call	L_fsqr_1870
	fdiv	f2 f3 f2
	jump	L_cont_5298
L_else_5300 : 
	fldi	f2 r0 28
L_cont_5298 : 
	fsti	f2 r11 2
	jump	L_cont_5286
L_else_5288 : 
	addi	r6 r0 2
	bne	r13 r6 L_else_5302
	sub	r8 r4 r17
	add	r7 r0 r11
	call	L_vecunit_sgn_1926
	jump	L_cont_5286
L_else_5302 : 
L_cont_5286 : 
	bne	r10 r0 L_else_5291
	jump	L_cont_5289
L_else_5291 : 
	add	r6 r0 r11
	add	r7 r0 r16
	call	L_rotate_quadratic_matrix_2031
L_cont_5289 : 
	addi	r6 r0 1
	return
L_read_object_2036 : 
	addi	r6 r0 60
	bgt	r6 r21 L_else_5305
	return
L_else_5305 : 
	add	r8 r0 r21
	call	L_read_nth_object_2034
	bne	r6 r0 L_else_5307
	sti	r21 r0 1072
	return
L_else_5307 : 
	addi	r21 r21 1
	jump	L_read_object_2036
L_read_all_object_2038 : 
	addi	r21 r0 0
	jump	L_read_object_2036
L_read_net_item_2040 : 
	call	min_caml_read_int
	add	r8 r0 r6
	bne	r8 r5 L_else_5311
	addi	r6 r7 1
	addi	r7 r0 -1
	jump	min_caml_create_array
L_else_5311 : 
	addi	r6 r7 1
	sti	r8 r2 0
	sti	r7 r2 1
	add	r7 r0 r6
	addi	r2 r2 2
	call	L_read_net_item_2040
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r7 r2 1
	add	r1 r6 r7
	sti	r8 r1 0
	return
L_read_or_network_2042 : 
	addi	r7 r0 0
	call	L_read_net_item_2040
	add	r7 r0 r6
	ldi	r6 r7 0
	bne	r6 r5 L_else_5314
	addi	r6 r10 1
	jump	min_caml_create_array
L_else_5314 : 
	addi	r6 r10 1
	sti	r7 r2 0
	sti	r10 r2 1
	add	r10 r0 r6
	addi	r2 r2 2
	call	L_read_or_network_2042
	addi	r2 r2 -2
	ldi	r7 r2 0
	ldi	r10 r2 1
	add	r1 r6 r10
	sti	r7 r1 0
	return
L_read_and_network_2044 : 
	addi	r7 r0 0
	call	L_read_net_item_2040
	ldi	r7 r6 0
	bne	r7 r5 L_else_5317
	return
L_else_5317 : 
	addi	r7 r0 1083
	add	r1 r7 r10
	sti	r6 r1 0
	addi	r10 r10 1
	jump	L_read_and_network_2044
L_read_parameter_2046 : 
	call	L_read_screen_settings_2027
	call	L_read_light_2029
	call	L_read_all_object_2038
	addi	r10 r0 0
	call	L_read_and_network_2044
	addi	r10 r0 0
	call	L_read_or_network_2042
	sti	r6 r0 1183
	return
L_solver_rect_surface_2048 : 
	add	r1 r8 r9
	fldi	f2 r1 0
	call	L_fiszero_1855
	bne	r6 r0 L_else_5321
	add	r6 r0 r7
	call	L_o_param_abc_1970
	add	r12 r0 r6
	add	r6 r0 r7
	call	L_o_isinvert_1960
	add	r7 r0 r6
	add	r1 r8 r9
	fldi	f2 r1 0
	call	L_fisneg_1859
	xor	r6 r7 r6
	add	r1 r12 r9
	fldi	f2 r1 0
	call	L_fneg_cond_1902
	fsub	f2 f2 f3
	add	r1 r8 r9
	fldi	f3 r1 0
	fdiv	f6 f2 f3
	add	r1 r8 r10
	fldi	f2 r1 0
	fmul	f2 f6 f2
	fadd	f2 f2 f4
	call	L_fabs_1861
	add	r1 r12 r10
	fldi	f3 r1 0
	call	L_fless_1863
	bne	r6 r0 L_else_5323
	addi	r6 r0 0
	return
L_else_5323 : 
	add	r1 r8 r11
	fldi	f2 r1 0
	fmul	f2 f6 f2
	fadd	f2 f2 f5
	call	L_fabs_1861
	add	r1 r12 r11
	fldi	f3 r1 0
	call	L_fless_1863
	bne	r6 r0 L_else_5325
	addi	r6 r0 0
	return
L_else_5325 : 
	fsti	f6 r0 1073
	addi	r6 r0 1
	return
L_else_5321 : 
	addi	r6 r0 0
	return
L_solver_rect_2057 : 
	addi	r9 r0 0
	addi	r10 r0 1
	addi	r11 r0 2
	add	r7 r0 r13
	add	r8 r0 r14
	fadd	f3 f0 f7
	fadd	f4 f0 f8
	fadd	f5 f0 f9
	call	L_solver_rect_surface_2048
	bne	r6 r0 L_else_5328
	addi	r9 r0 1
	addi	r10 r0 2
	addi	r11 r0 0
	add	r7 r0 r13
	add	r8 r0 r14
	fadd	f3 f0 f8
	fadd	f4 f0 f9
	fadd	f5 f0 f7
	call	L_solver_rect_surface_2048
	bne	r6 r0 L_else_5330
	addi	r9 r0 2
	addi	r10 r0 0
	addi	r11 r0 1
	add	r7 r0 r13
	add	r8 r0 r14
	fadd	f3 f0 f9
	fadd	f4 f0 f7
	fadd	f5 f0 f8
	call	L_solver_rect_surface_2048
	bne	r6 r0 L_else_5332
	addi	r6 r0 0
	return
L_else_5332 : 
	addi	r6 r0 3
	return
L_else_5330 : 
	addi	r6 r0 2
	return
L_else_5328 : 
	addi	r6 r0 1
	return
L_solver_surface_2063 : 
	call	L_o_param_abc_1970
	add	r8 r0 r6
	add	r6 r0 r7
	add	r7 r0 r8
	call	L_veciprod_1929
	fadd	f8 f0 f2
	fadd	f2 f0 f8
	call	L_fispos_1857
	bne	r6 r0 L_else_5335
	addi	r6 r0 0
	return
L_else_5335 : 
	add	r6 r0 r8
	fadd	f2 f0 f5
	fadd	f3 f0 f6
	fadd	f4 f0 f7
	call	L_veciprod2_1932
	call	L_fneg_1868
	fdiv	f2 f2 f8
	fsti	f2 r0 1073
	addi	r6 r0 1
	return
L_quadratic_2069 : 
	fadd	f2 f0 f3
	call	L_fsqr_1870
	fadd	f6 f0 f2
	add	r6 r0 r7
	call	L_o_param_a_1964
	fmul	f6 f6 f2
	fadd	f2 f0 f4
	call	L_fsqr_1870
	fadd	f7 f0 f2
	add	r6 r0 r7
	call	L_o_param_b_1966
	fmul	f2 f7 f2
	fadd	f6 f6 f2
	fadd	f2 f0 f5
	call	L_fsqr_1870
	fadd	f7 f0 f2
	add	r6 r0 r7
	call	L_o_param_c_1968
	fmul	f2 f7 f2
	fadd	f6 f6 f2
	add	r6 r0 r7
	call	L_o_isrot_1962
	bne	r6 r0 L_else_5338
	fadd	f2 f0 f6
	return
L_else_5338 : 
	fmul	f7 f4 f5
	add	r6 r0 r7
	call	L_o_param_r1_1988
	fmul	f2 f7 f2
	fadd	f6 f6 f2
	fmul	f5 f5 f3
	add	r6 r0 r7
	call	L_o_param_r2_1990
	fmul	f2 f5 f2
	fadd	f5 f6 f2
	fmul	f3 f3 f4
	add	r6 r0 r7
	call	L_o_param_r3_1992
	fmul	f2 f3 f2
	fadd	f2 f5 f2
	return
L_bilinear_2074 : 
	fmul	f9 f3 f6
	add	r6 r0 r7
	call	L_o_param_a_1964
	fmul	f9 f9 f2
	fmul	f10 f4 f7
	add	r6 r0 r7
	call	L_o_param_b_1966
	fmul	f2 f10 f2
	fadd	f9 f9 f2
	fmul	f10 f5 f8
	add	r6 r0 r7
	call	L_o_param_c_1968
	fmul	f2 f10 f2
	fadd	f9 f9 f2
	add	r6 r0 r7
	call	L_o_isrot_1962
	bne	r6 r0 L_else_5341
	fadd	f2 f0 f9
	return
L_else_5341 : 
	fmul	f2 f5 f7
	fmul	f10 f4 f8
	fadd	f10 f2 f10
	add	r6 r0 r7
	call	L_o_param_r1_1988
	fmul	f10 f10 f2
	fmul	f8 f3 f8
	fmul	f2 f5 f6
	fadd	f5 f8 f2
	add	r6 r0 r7
	call	L_o_param_r2_1990
	fmul	f2 f5 f2
	fadd	f5 f10 f2
	fmul	f3 f3 f7
	fmul	f2 f4 f6
	fadd	f3 f3 f2
	add	r6 r0 r7
	call	L_o_param_r3_1992
	fmul	f2 f3 f2
	fadd	f2 f5 f2
	call	L_fhalf_1866
	fadd	f2 f9 f2
	return
L_solver_second_2082 : 
	fldi	f3 r9 0
	fldi	f4 r9 1
	fldi	f5 r9 2
	add	r7 r0 r8
	call	L_quadratic_2069
	fadd	f14 f0 f2
	fadd	f2 f0 f14
	call	L_fiszero_1855
	bne	r6 r0 L_else_5344
	fldi	f3 r9 0
	fldi	f4 r9 1
	fldi	f5 r9 2
	add	r7 r0 r8
	fadd	f6 f0 f11
	fadd	f7 f0 f12
	fadd	f8 f0 f13
	call	L_bilinear_2074
	fadd	f8 f0 f2
	add	r7 r0 r8
	fadd	f3 f0 f11
	fadd	f4 f0 f12
	fadd	f5 f0 f13
	call	L_quadratic_2069
	add	r6 r0 r8
	call	L_o_form_1956
	addi	r7 r0 3
	bne	r6 r7 L_else_5347
	fldi	f3 r0 13
	fsub	f3 f2 f3
	jump	L_cont_5345
L_else_5347 : 
	fadd	f3 f0 f2
L_cont_5345 : 
	fadd	f2 f0 f8
	call	L_fsqr_1870
	fmul	f3 f14 f3
	fsub	f3 f2 f3
	fadd	f2 f0 f3
	call	L_fispos_1857
	bne	r6 r0 L_else_5349
	addi	r6 r0 0
	return
L_else_5349 : 
	fsqrt	f2 f3
	add	r6 r0 r8
	call	L_o_isinvert_1960
	bne	r6 r0 L_else_5352
	call	L_fneg_1868
	jump	L_cont_5350
L_else_5352 : 
L_cont_5350 : 
	fsub	f2 f2 f8
	fdiv	f2 f2 f14
	fsti	f2 r0 1073
	addi	r6 r0 1
	return
L_else_5344 : 
	addi	r6 r0 0
	return
L_solver_2088 : 
	ldi	r13 r6 1970
	fldi	f3 r7 0
	add	r6 r0 r13
	call	L_o_param_x_1972
	fsub	f7 f3 f2
	fldi	f3 r7 1
	add	r6 r0 r13
	call	L_o_param_y_1974
	fsub	f8 f3 f2
	fldi	f3 r7 2
	add	r6 r0 r13
	call	L_o_param_z_1976
	fsub	f9 f3 f2
	add	r6 r0 r13
	call	L_o_form_1956
	bne	r6 r4 L_else_5355
	jump	L_solver_rect_2057
L_else_5355 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_5357
	add	r6 r0 r13
	add	r7 r0 r14
	fadd	f5 f0 f7
	fadd	f6 f0 f8
	fadd	f7 f0 f9
	jump	L_solver_surface_2063
L_else_5357 : 
	add	r8 r0 r13
	add	r9 r0 r14
	fadd	f11 f0 f7
	fadd	f12 f0 f8
	fadd	f13 f0 f9
	jump	L_solver_second_2082
L_solver_rect_fast_2092 : 
	fldi	f2 r9 0
	fsub	f3 f2 f4
	fldi	f2 r9 1
	fmul	f7 f3 f2
	fldi	f2 r8 1
	fmul	f2 f7 f2
	fadd	f2 f2 f5
	call	L_fabs_1861
	fadd	f3 f0 f2
	add	r6 r0 r7
	call	L_o_param_b_1966
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	call	L_fless_1863
	bne	r6 r0 L_else_5361
	addi	r6 r0 0
	jump	L_cont_5359
L_else_5361 : 
	fldi	f2 r8 2
	fmul	f2 f7 f2
	fadd	f2 f2 f6
	call	L_fabs_1861
	fadd	f3 f0 f2
	add	r6 r0 r7
	call	L_o_param_c_1968
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	call	L_fless_1863
	bne	r6 r0 L_else_5379
	addi	r6 r0 0
	jump	L_cont_5359
L_else_5379 : 
	fldi	f2 r9 1
	call	L_fiszero_1855
	sub	r6 r4 r6
L_cont_5359 : 
	bne	r6 r0 L_else_5363
	fldi	f2 r9 2
	fsub	f3 f2 f5
	fldi	f2 r9 3
	fmul	f7 f3 f2
	fldi	f2 r8 0
	fmul	f2 f7 f2
	fadd	f2 f2 f4
	call	L_fabs_1861
	fadd	f3 f0 f2
	add	r6 r0 r7
	call	L_o_param_a_1964
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	call	L_fless_1863
	bne	r6 r0 L_else_5366
	addi	r6 r0 0
	jump	L_cont_5364
L_else_5366 : 
	fldi	f2 r8 2
	fmul	f2 f7 f2
	fadd	f2 f2 f6
	call	L_fabs_1861
	fadd	f3 f0 f2
	add	r6 r0 r7
	call	L_o_param_c_1968
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	call	L_fless_1863
	bne	r6 r0 L_else_5377
	addi	r6 r0 0
	jump	L_cont_5364
L_else_5377 : 
	fldi	f2 r9 3
	call	L_fiszero_1855
	sub	r6 r4 r6
L_cont_5364 : 
	bne	r6 r0 L_else_5368
	fldi	f2 r9 4
	fsub	f3 f2 f6
	fldi	f2 r9 5
	fmul	f6 f3 f2
	fldi	f2 r8 0
	fmul	f2 f6 f2
	fadd	f2 f2 f4
	call	L_fabs_1861
	fadd	f3 f0 f2
	add	r6 r0 r7
	call	L_o_param_a_1964
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	call	L_fless_1863
	bne	r6 r0 L_else_5371
	addi	r6 r0 0
	jump	L_cont_5369
L_else_5371 : 
	fldi	f2 r8 1
	fmul	f2 f6 f2
	fadd	f2 f2 f5
	call	L_fabs_1861
	fadd	f3 f0 f2
	add	r6 r0 r7
	call	L_o_param_b_1966
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	call	L_fless_1863
	bne	r6 r0 L_else_5375
	addi	r6 r0 0
	jump	L_cont_5369
L_else_5375 : 
	fldi	f2 r9 5
	call	L_fiszero_1855
	sub	r6 r4 r6
L_cont_5369 : 
	bne	r6 r0 L_else_5373
	addi	r6 r0 0
	return
L_else_5373 : 
	fsti	f6 r0 1073
	addi	r6 r0 3
	return
L_else_5368 : 
	fsti	f7 r0 1073
	addi	r6 r0 2
	return
L_else_5363 : 
	fsti	f7 r0 1073
	addi	r6 r0 1
	return
L_solver_surface_fast_2099 : 
	fldi	f2 r7 0
	call	L_fisneg_1859
	bne	r6 r0 L_else_5382
	addi	r6 r0 0
	return
L_else_5382 : 
	fldi	f2 r7 1
	fmul	f3 f2 f3
	fldi	f2 r7 2
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f5
	fadd	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	return
L_solver_second_fast_2105 : 
	fldi	f9 r9 0
	fadd	f2 f0 f9
	call	L_fiszero_1855
	bne	r6 r0 L_else_5385
	fldi	f2 r9 1
	fmul	f6 f2 f3
	fldi	f2 r9 2
	fmul	f2 f2 f4
	fadd	f6 f6 f2
	fldi	f2 r9 3
	fmul	f2 f2 f5
	fadd	f8 f6 f2
	add	r7 r0 r8
	call	L_quadratic_2069
	add	r6 r0 r8
	call	L_o_form_1956
	addi	r7 r0 3
	bne	r6 r7 L_else_5388
	fldi	f3 r0 13
	fsub	f3 f2 f3
	jump	L_cont_5386
L_else_5388 : 
	fadd	f3 f0 f2
L_cont_5386 : 
	fadd	f2 f0 f8
	call	L_fsqr_1870
	fmul	f3 f9 f3
	fsub	f3 f2 f3
	fadd	f2 f0 f3
	call	L_fispos_1857
	bne	r6 r0 L_else_5390
	addi	r6 r0 0
	return
L_else_5390 : 
	add	r6 r0 r8
	call	L_o_isinvert_1960
	bne	r6 r0 L_else_5393
	fsqrt	f2 f3
	fsub	f3 f8 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_5391
L_else_5393 : 
	fsqrt	f2 f3
	fadd	f3 f8 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_5391 : 
	addi	r6 r0 1
	return
L_else_5385 : 
	addi	r6 r0 0
	return
L_solver_fast_2111 : 
	ldi	r10 r7 1970
	fldi	f3 r9 0
	add	r6 r0 r10
	call	L_o_param_x_1972
	fsub	f3 f3 f2
	fldi	f4 r9 1
	add	r6 r0 r10
	call	L_o_param_y_1974
	fsub	f4 f4 f2
	fldi	f5 r9 2
	add	r6 r0 r10
	call	L_o_param_z_1976
	fsub	f5 f5 f2
	add	r6 r0 r8
	call	L_d_const_2017
	add	r1 r6 r7
	ldi	r9 r1 0
	add	r6 r0 r10
	call	L_o_form_1956
	bne	r6 r4 L_else_5396
	add	r6 r0 r8
	call	L_d_vec_2015
	add	r7 r0 r10
	add	r8 r0 r6
	fadd	f6 f0 f5
	fadd	f5 f0 f4
	fadd	f4 f0 f3
	jump	L_solver_rect_fast_2092
L_else_5396 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_5398
	add	r7 r0 r9
	jump	L_solver_surface_fast_2099
L_else_5398 : 
	add	r8 r0 r10
	jump	L_solver_second_fast_2105
L_solver_surface_fast2_2115 : 
	fldi	f2 r7 0
	call	L_fisneg_1859
	bne	r6 r0 L_else_5401
	addi	r6 r0 0
	return
L_else_5401 : 
	fldi	f2 r7 0
	fldi	f3 r8 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
	return
L_solver_second_fast2_2122 : 
	fldi	f6 r8 0
	fadd	f2 f0 f6
	call	L_fiszero_1855
	bne	r6 r0 L_else_5404
	fldi	f2 r8 1
	fmul	f3 f2 f3
	fldi	f2 r8 2
	fmul	f2 f2 f4
	fadd	f3 f3 f2
	fldi	f2 r8 3
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f4 r9 3
	fadd	f2 f0 f3
	call	L_fsqr_1870
	fmul	f4 f6 f4
	fsub	f4 f2 f4
	fadd	f2 f0 f4
	call	L_fispos_1857
	bne	r6 r0 L_else_5406
	addi	r6 r0 0
	return
L_else_5406 : 
	add	r6 r0 r7
	call	L_o_isinvert_1960
	bne	r6 r0 L_else_5409
	fsqrt	f2 f4
	fsub	f3 f3 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont_5407
L_else_5409 : 
	fsqrt	f2 f4
	fadd	f3 f3 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont_5407 : 
	addi	r6 r0 1
	return
L_else_5404 : 
	addi	r6 r0 0
	return
L_solver_fast2_2129 : 
	ldi	r9 r7 1970
	add	r6 r0 r9
	call	L_o_param_ctbl_1994
	add	r10 r0 r6
	fldi	f4 r10 0
	fldi	f5 r10 1
	fldi	f6 r10 2
	add	r6 r0 r8
	call	L_d_const_2017
	add	r1 r6 r7
	ldi	r7 r1 0
	add	r6 r0 r9
	call	L_o_form_1956
	bne	r6 r4 L_else_5412
	add	r6 r0 r8
	call	L_d_vec_2015
	add	r8 r0 r6
	add	r1 r0 r7
	add	r7 r0 r9
	add	r9 r0 r1
	jump	L_solver_rect_fast_2092
L_else_5412 : 
	addi	r8 r0 2
	bne	r6 r8 L_else_5414
	add	r8 r0 r10
	jump	L_solver_surface_fast2_2115
L_else_5414 : 
	add	r8 r0 r7
	add	r7 r0 r9
	add	r9 r0 r10
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	fadd	f5 f0 f6
	jump	L_solver_second_fast2_2122
L_setup_rect_table_2132 : 
	addi	r6 r0 6
	fldi	f2 r0 28
	call	min_caml_create_float_array
	add	r7 r0 r6
	fldi	f2 r8 0
	call	L_fiszero_1855
	bne	r6 r0 L_else_5418
	add	r6 r0 r10
	call	L_o_isinvert_1960
	add	r9 r0 r6
	fldi	f2 r8 0
	call	L_fisneg_1859
	xor	r9 r9 r6
	add	r6 r0 r10
	call	L_o_param_a_1964
	add	r6 r0 r9
	call	L_fneg_cond_1902
	fsti	f2 r7 0
	fldi	f2 r0 13
	fldi	f3 r8 0
	fdiv	f2 f2 f3
	fsti	f2 r7 1
	jump	L_cont_5416
L_else_5418 : 
	fldi	f2 r0 28
	fsti	f2 r7 1
L_cont_5416 : 
	fldi	f2 r8 1
	call	L_fiszero_1855
	bne	r6 r0 L_else_5421
	add	r6 r0 r10
	call	L_o_isinvert_1960
	add	r9 r0 r6
	fldi	f2 r8 1
	call	L_fisneg_1859
	xor	r9 r9 r6
	add	r6 r0 r10
	call	L_o_param_b_1966
	add	r6 r0 r9
	call	L_fneg_cond_1902
	fsti	f2 r7 2
	fldi	f2 r0 13
	fldi	f3 r8 1
	fdiv	f2 f2 f3
	fsti	f2 r7 3
	jump	L_cont_5419
L_else_5421 : 
	fldi	f2 r0 28
	fsti	f2 r7 3
L_cont_5419 : 
	fldi	f2 r8 2
	call	L_fiszero_1855
	bne	r6 r0 L_else_5424
	add	r6 r0 r10
	call	L_o_isinvert_1960
	add	r9 r0 r6
	fldi	f2 r8 2
	call	L_fisneg_1859
	xor	r9 r9 r6
	add	r6 r0 r10
	call	L_o_param_c_1968
	add	r6 r0 r9
	call	L_fneg_cond_1902
	fsti	f2 r7 4
	fldi	f3 r0 13
	fldi	f2 r8 2
	fdiv	f2 f3 f2
	fsti	f2 r7 5
	jump	L_cont_5422
L_else_5424 : 
	fldi	f2 r0 28
	fsti	f2 r7 5
L_cont_5422 : 
	add	r6 r0 r7
	return
L_setup_surface_table_2135 : 
	addi	r6 r0 4
	fldi	f2 r0 28
	call	min_caml_create_float_array
	add	r7 r0 r6
	fldi	f3 r8 0
	add	r6 r0 r10
	call	L_o_param_a_1964
	fmul	f3 f3 f2
	fldi	f4 r8 1
	add	r6 r0 r10
	call	L_o_param_b_1966
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r8 2
	add	r6 r0 r10
	call	L_o_param_c_1968
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fadd	f2 f0 f3
	call	L_fispos_1857
	bne	r6 r0 L_else_5428
	fldi	f2 r0 28
	fsti	f2 r7 0
	jump	L_cont_5426
L_else_5428 : 
	fldi	f2 r0 27
	fdiv	f2 f2 f3
	fsti	f2 r7 0
	add	r6 r0 r10
	call	L_o_param_a_1964
	fdiv	f2 f2 f3
	call	L_fneg_1868
	fsti	f2 r7 1
	add	r6 r0 r10
	call	L_o_param_b_1966
	fdiv	f2 f2 f3
	call	L_fneg_1868
	fsti	f2 r7 2
	add	r6 r0 r10
	call	L_o_param_c_1968
	fdiv	f2 f2 f3
	call	L_fneg_1868
	fsti	f2 r7 3
L_cont_5426 : 
	add	r6 r0 r7
	return
L_setup_second_table_2138 : 
	addi	r6 r0 5
	fldi	f2 r0 28
	call	min_caml_create_float_array
	add	r9 r0 r6
	fldi	f3 r8 0
	fldi	f4 r8 1
	fldi	f5 r8 2
	add	r7 r0 r10
	call	L_quadratic_2069
	fadd	f4 f0 f2
	fldi	f3 r8 0
	add	r6 r0 r10
	call	L_o_param_a_1964
	fmul	f2 f3 f2
	call	L_fneg_1868
	fadd	f7 f0 f2
	fldi	f3 r8 1
	add	r6 r0 r10
	call	L_o_param_b_1966
	fmul	f2 f3 f2
	call	L_fneg_1868
	fadd	f6 f0 f2
	fldi	f3 r8 2
	add	r6 r0 r10
	call	L_o_param_c_1968
	fmul	f2 f3 f2
	call	L_fneg_1868
	fadd	f5 f0 f2
	fsti	f4 r9 0
	add	r6 r0 r10
	call	L_o_isrot_1962
	bne	r6 r0 L_else_5432
	fsti	f7 r9 1
	fsti	f6 r9 2
	fsti	f5 r9 3
	jump	L_cont_5430
L_else_5432 : 
	fldi	f3 r8 2
	add	r6 r0 r10
	call	L_o_param_r2_1990
	fmul	f8 f3 f2
	fldi	f3 r8 1
	add	r6 r0 r10
	call	L_o_param_r3_1992
	fmul	f2 f3 f2
	fadd	f2 f8 f2
	call	L_fhalf_1866
	fsub	f2 f7 f2
	fsti	f2 r9 1
	fldi	f3 r8 2
	add	r6 r0 r10
	call	L_o_param_r1_1988
	fmul	f7 f3 f2
	fldi	f3 r8 0
	add	r6 r0 r10
	call	L_o_param_r3_1992
	fmul	f2 f3 f2
	fadd	f2 f7 f2
	call	L_fhalf_1866
	fsub	f2 f6 f2
	fsti	f2 r9 2
	fldi	f3 r8 1
	add	r6 r0 r10
	call	L_o_param_r1_1988
	fmul	f3 f3 f2
	fldi	f6 r8 0
	add	r6 r0 r10
	call	L_o_param_r2_1990
	fmul	f2 f6 f2
	fadd	f2 f3 f2
	call	L_fhalf_1866
	fsub	f2 f5 f2
	fsti	f2 r9 3
L_cont_5430 : 
	fadd	f2 f0 f4
	call	L_fiszero_1855
	bne	r6 r0 L_else_5435
	fldi	f2 r0 13
	fdiv	f2 f2 f4
	fsti	f2 r9 4
	jump	L_cont_5433
L_else_5435 : 
L_cont_5433 : 
	add	r6 r0 r9
	return
L_iter_setup_dirvec_constants_2141 : 
	bgt	r0 r12 L_else_5438
	ldi	r10 r12 1970
	add	r6 r0 r11
	call	L_d_const_2017
	add	r13 r0 r6
	add	r6 r0 r11
	call	L_d_vec_2015
	add	r8 r0 r6
	add	r6 r0 r10
	call	L_o_form_1956
	bne	r6 r4 L_else_5441
	call	L_setup_rect_table_2132
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_5439
L_else_5441 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_5443
	call	L_setup_surface_table_2135
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont_5439
L_else_5443 : 
	call	L_setup_second_table_2138
	add	r1 r13 r12
	sti	r6 r1 0
L_cont_5439 : 
	addi	r12 r12 -1
	jump	L_iter_setup_dirvec_constants_2141
L_else_5438 : 
	return
L_setup_dirvec_constants_2144 : 
	ldi	r6 r0 1072
	addi	r12 r6 -1
	jump	L_iter_setup_dirvec_constants_2141
L_setup_startp_constants_2146 : 
	bgt	r0 r9 L_else_5447
	ldi	r7 r9 1970
	add	r6 r0 r7
	call	L_o_param_ctbl_1994
	add	r10 r0 r6
	add	r6 r0 r7
	call	L_o_form_1956
	add	r11 r0 r6
	fldi	f3 r8 0
	add	r6 r0 r7
	call	L_o_param_x_1972
	fsub	f2 f3 f2
	fsti	f2 r10 0
	fldi	f3 r8 1
	add	r6 r0 r7
	call	L_o_param_y_1974
	fsub	f2 f3 f2
	fsti	f2 r10 1
	fldi	f3 r8 2
	add	r6 r0 r7
	call	L_o_param_z_1976
	fsub	f2 f3 f2
	fsti	f2 r10 2
	addi	r6 r0 2
	bne	r11 r6 L_else_5450
	add	r6 r0 r7
	call	L_o_param_abc_1970
	fldi	f2 r10 0
	fldi	f3 r10 1
	fldi	f4 r10 2
	call	L_veciprod2_1932
	fsti	f2 r10 3
	jump	L_cont_5448
L_else_5450 : 
	addi	r6 r0 2
	bgt	r11 r6 L_else_5452
	jump	L_cont_5448
L_else_5452 : 
	fldi	f3 r10 0
	fldi	f4 r10 1
	fldi	f5 r10 2
	call	L_quadratic_2069
	addi	r6 r0 3
	bne	r11 r6 L_else_5455
	fldi	f3 r0 13
	fsub	f2 f2 f3
	jump	L_cont_5453
L_else_5455 : 
L_cont_5453 : 
	fsti	f2 r10 3
L_cont_5448 : 
	addi	r9 r9 -1
	jump	L_setup_startp_constants_2146
L_else_5447 : 
	return
L_setup_startp_2149 : 
	addi	r6 r0 1066
	add	r7 r0 r8
	call	L_veccpy_1918
	ldi	r6 r0 1072
	addi	r9 r6 -1
	jump	L_setup_startp_constants_2146
L_is_rect_outside_2151 : 
	call	L_fabs_1861
	fadd	f3 f0 f2
	add	r6 r0 r7
	call	L_o_param_a_1964
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	call	L_fless_1863
	bne	r6 r0 L_else_5460
	addi	r6 r0 0
	jump	L_cont_5458
L_else_5460 : 
	fadd	f2 f0 f4
	call	L_fabs_1861
	fadd	f3 f0 f2
	add	r6 r0 r7
	call	L_o_param_b_1966
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	call	L_fless_1863
	bne	r6 r0 L_else_5464
	addi	r6 r0 0
	jump	L_cont_5458
L_else_5464 : 
	fadd	f2 f0 f5
	call	L_fabs_1861
	fadd	f3 f0 f2
	add	r6 r0 r7
	call	L_o_param_c_1968
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	call	L_fless_1863
L_cont_5458 : 
	bne	r6 r0 L_else_5462
	add	r6 r0 r7
	call	L_o_isinvert_1960
	sub	r6 r4 r6
	return
L_else_5462 : 
	add	r6 r0 r7
	jump	L_o_isinvert_1960
L_is_plane_outside_2156 : 
	add	r6 r0 r7
	call	L_o_param_abc_1970
	call	L_veciprod2_1932
	add	r6 r0 r7
	call	L_o_isinvert_1960
	add	r7 r0 r6
	call	L_fisneg_1859
	xor	r6 r7 r6
	sub	r6 r4 r6
	return
L_is_second_outside_2161 : 
	add	r7 r0 r8
	call	L_quadratic_2069
	add	r6 r0 r8
	call	L_o_form_1956
	addi	r7 r0 3
	bne	r6 r7 L_else_5469
	fldi	f3 r0 13
	fsub	f2 f2 f3
	jump	L_cont_5467
L_else_5469 : 
L_cont_5467 : 
	add	r6 r0 r8
	call	L_o_isinvert_1960
	add	r7 r0 r6
	call	L_fisneg_1859
	xor	r6 r7 r6
	sub	r6 r4 r6
	return
L_is_outside_2166 : 
	add	r6 r0 r7
	call	L_o_param_x_1972
	fsub	f3 f3 f2
	add	r6 r0 r7
	call	L_o_param_y_1974
	fsub	f4 f4 f2
	add	r6 r0 r7
	call	L_o_param_z_1976
	fsub	f5 f5 f2
	add	r6 r0 r7
	call	L_o_form_1956
	bne	r6 r4 L_else_5472
	fadd	f2 f0 f3
	jump	L_is_rect_outside_2151
L_else_5472 : 
	addi	r8 r0 2
	bne	r6 r8 L_else_5474
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	jump	L_is_plane_outside_2156
L_else_5474 : 
	add	r8 r0 r7
	jump	L_is_second_outside_2161
L_check_all_inside_2171 : 
	ldi	r6 r9 0
	bne	r6 r5 L_else_5477
	addi	r6 r0 1
	return
L_else_5477 : 
	ldi	r7 r6 1970
	fadd	f3 f0 f8
	fadd	f4 f0 f9
	fadd	f5 f0 f10
	call	L_is_outside_2166
	bne	r6 r0 L_else_5479
	addi	r9 r9 1
	jump	L_check_all_inside_2171
L_else_5479 : 
	addi	r6 r0 0
	return
L_shadow_check_and_group_2177 : 
	ldi	r6 r11 0
	bne	r6 r5 L_else_5482
	addi	r6 r0 0
	return
L_else_5482 : 
	ldi	r13 r11 0
	addi	r8 r0 1905
	addi	r9 r0 1042
	add	r7 r0 r13
	call	L_solver_fast_2111
	fldi	f4 r0 1073
	bne	r6 r0 L_else_5485
	addi	r6 r0 0
	jump	L_cont_5483
L_else_5485 : 
	fldi	f3 r0 32
	fadd	f2 f0 f4
	call	L_fless_1863
L_cont_5483 : 
	bne	r6 r0 L_else_5487
	ldi	r6 r13 1970
	call	L_o_isinvert_1960
	bne	r6 r0 L_else_5489
	addi	r6 r0 0
	return
L_else_5489 : 
	addi	r11 r11 1
	jump	L_shadow_check_and_group_2177
L_else_5487 : 
	fldi	f2 r0 33
	fadd	f4 f4 f2
	fldi	f2 r0 1039
	fmul	f3 f2 f4
	fldi	f2 r0 1042
	fadd	f8 f3 f2
	fldi	f2 r0 1040
	fmul	f3 f2 f4
	fldi	f2 r0 1043
	fadd	f9 f3 f2
	fldi	f2 r0 1041
	fmul	f3 f2 f4
	fldi	f2 r0 1044
	fadd	f10 f3 f2
	add	r9 r0 r12
	add	r10 r0 r12
	call	L_check_all_inside_2171
	bne	r6 r0 L_else_5491
	addi	r11 r11 1
	jump	L_shadow_check_and_group_2177
L_else_5491 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_group_2180 : 
	ldi	r6 r14 0
	bne	r6 r5 L_else_5494
	addi	r6 r0 0
	return
L_else_5494 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group_2177
	bne	r6 r0 L_else_5496
	addi	r14 r14 1
	jump	L_shadow_check_one_or_group_2180
L_else_5496 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_matrix_2183 : 
	ldi	r18 r16 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_5499
	addi	r6 r0 0
	return
L_else_5499 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_5502
	addi	r6 r0 1
	jump	L_cont_5500
L_else_5502 : 
	addi	r8 r0 1905
	addi	r9 r0 1042
	call	L_solver_fast_2111
	bne	r6 r0 L_else_5508
	addi	r6 r0 0
	jump	L_cont_5500
L_else_5508 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	call	L_fless_1863
	bne	r6 r0 L_else_5510
	addi	r6 r0 0
	jump	L_cont_5500
L_else_5510 : 
	addi	r14 r18 1
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2180
	bne	r6 r0 L_else_5512
	addi	r6 r0 0
	jump	L_cont_5500
L_else_5512 : 
	addi	r6 r0 1
L_cont_5500 : 
	bne	r6 r0 L_else_5504
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix_2183
L_else_5504 : 
	addi	r14 r18 1
	add	r15 r0 r18
	call	L_shadow_check_one_or_group_2180
	bne	r6 r0 L_else_5506
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix_2183
L_else_5506 : 
	addi	r6 r0 1
	return
L_solve_each_element_2186 : 
	ldi	r18 r15 0
	bne	r18 r5 L_else_5515
	return
L_else_5515 : 
	addi	r7 r0 1063
	add	r6 r0 r18
	add	r14 r0 r17
	call	L_solver_2088
	add	r11 r0 r6
	bne	r11 r0 L_else_5517
	ldi	r6 r18 1970
	call	L_o_isinvert_1960
	bne	r6 r0 L_else_5519
	return
L_else_5519 : 
	addi	r15 r15 1
	jump	L_solve_each_element_2186
L_else_5517 : 
	fldi	f4 r0 1073
	fldi	f2 r0 28
	fadd	f3 f0 f4
	call	L_fless_1863
	bne	r6 r0 L_else_5522
	jump	L_cont_5520
L_else_5522 : 
	fldi	f3 r0 1082
	fadd	f2 f0 f4
	call	L_fless_1863
	bne	r6 r0 L_else_5524
	jump	L_cont_5520
L_else_5524 : 
	fldi	f2 r0 33
	fadd	f14 f4 f2
	fldi	f2 r17 0
	fmul	f3 f2 f14
	fldi	f2 r0 1063
	fadd	f13 f3 f2
	fldi	f2 r17 1
	fmul	f3 f2 f14
	fldi	f2 r0 1064
	fadd	f11 f3 f2
	fldi	f2 r17 2
	fmul	f3 f2 f14
	fldi	f2 r0 1065
	fadd	f12 f3 f2
	add	r9 r0 r16
	add	r10 r0 r16
	fadd	f8 f0 f13
	fadd	f9 f0 f11
	fadd	f10 f0 f12
	call	L_check_all_inside_2171
	bne	r6 r0 L_else_5526
	jump	L_cont_5520
L_else_5526 : 
	fsti	f14 r0 1082
	addi	r6 r0 1042
	fadd	f2 f0 f13
	fadd	f3 f0 f11
	fadd	f4 f0 f12
	call	L_vecset_1908
	sti	r18 r0 1045
	sti	r11 r0 1074
L_cont_5520 : 
	addi	r15 r15 1
	jump	L_solve_each_element_2186
L_solve_one_or_network_2190 : 
	ldi	r6 r19 0
	bne	r6 r5 L_else_5529
	return
L_else_5529 : 
	ldi	r15 r6 1083
	add	r16 r0 r15
	add	r17 r0 r21
	call	L_solve_each_element_2186
	addi	r19 r19 1
	jump	L_solve_one_or_network_2190
L_trace_or_matrix_2194 : 
	ldi	r20 r22 0
	ldi	r6 r20 0
	bne	r6 r5 L_else_5532
	return
L_else_5532 : 
	addi	r7 r0 99
	bne	r6 r7 L_else_5535
	addi	r19 r20 1
	add	r21 r0 r24
	call	L_solve_one_or_network_2190
	jump	L_cont_5533
L_else_5535 : 
	addi	r7 r0 1063
	add	r14 r0 r24
	call	L_solver_2088
	bne	r6 r0 L_else_5537
	jump	L_cont_5533
L_else_5537 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	call	L_fless_1863
	bne	r6 r0 L_else_5539
	jump	L_cont_5533
L_else_5539 : 
	addi	r19 r20 1
	add	r21 r0 r24
	call	L_solve_one_or_network_2190
L_cont_5533 : 
	addi	r22 r22 1
	jump	L_trace_or_matrix_2194
L_judge_intersection_2198 : 
	fldi	f2 r0 35
	fsti	f2 r0 1082
	ldi	r22 r0 1183
	add	r23 r0 r22
	call	L_trace_or_matrix_2194
	fldi	f4 r0 1082
	fldi	f2 r0 34
	fadd	f3 f0 f4
	call	L_fless_1863
	bne	r6 r0 L_else_5542
	addi	r6 r0 0
	return
L_else_5542 : 
	fldi	f3 r0 36
	fadd	f2 f0 f4
	jump	L_fless_1863
L_solve_each_element_fast_2200 : 
	add	r6 r0 r13
	call	L_d_vec_2015
	add	r16 r0 r6
	ldi	r14 r11 0
	bne	r14 r5 L_else_5545
	return
L_else_5545 : 
	add	r7 r0 r14
	add	r8 r0 r13
	call	L_solver_fast2_2129
	add	r15 r0 r6
	bne	r15 r0 L_else_5547
	ldi	r6 r14 1970
	call	L_o_isinvert_1960
	bne	r6 r0 L_else_5549
	return
L_else_5549 : 
	addi	r11 r11 1
	jump	L_solve_each_element_fast_2200
L_else_5547 : 
	fldi	f4 r0 1073
	fldi	f2 r0 28
	fadd	f3 f0 f4
	call	L_fless_1863
	bne	r6 r0 L_else_5552
	jump	L_cont_5550
L_else_5552 : 
	fldi	f3 r0 1082
	fadd	f2 f0 f4
	call	L_fless_1863
	bne	r6 r0 L_else_5554
	jump	L_cont_5550
L_else_5554 : 
	fldi	f2 r0 33
	fadd	f14 f4 f2
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
	add	r9 r0 r12
	add	r10 r0 r12
	fadd	f8 f0 f12
	fadd	f9 f0 f11
	fadd	f10 f0 f13
	call	L_check_all_inside_2171
	bne	r6 r0 L_else_5556
	jump	L_cont_5550
L_else_5556 : 
	fsti	f14 r0 1082
	addi	r6 r0 1042
	fadd	f2 f0 f12
	fadd	f3 f0 f11
	fadd	f4 f0 f13
	call	L_vecset_1908
	sti	r14 r0 1045
	sti	r15 r0 1074
L_cont_5550 : 
	addi	r11 r11 1
	jump	L_solve_each_element_fast_2200
L_solve_one_or_network_fast_2204 : 
	ldi	r6 r17 0
	bne	r6 r5 L_else_5559
	return
L_else_5559 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r19
	call	L_solve_each_element_fast_2200
	addi	r17 r17 1
	jump	L_solve_one_or_network_fast_2204
L_trace_or_matrix_fast_2208 : 
	ldi	r18 r20 0
	ldi	r7 r18 0
	bne	r7 r5 L_else_5562
	return
L_else_5562 : 
	addi	r6 r0 99
	bne	r7 r6 L_else_5565
	addi	r17 r18 1
	add	r19 r0 r22
	call	L_solve_one_or_network_fast_2204
	jump	L_cont_5563
L_else_5565 : 
	add	r8 r0 r22
	call	L_solver_fast2_2129
	bne	r6 r0 L_else_5567
	jump	L_cont_5563
L_else_5567 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	call	L_fless_1863
	bne	r6 r0 L_else_5569
	jump	L_cont_5563
L_else_5569 : 
	addi	r17 r18 1
	add	r19 r0 r22
	call	L_solve_one_or_network_fast_2204
L_cont_5563 : 
	addi	r20 r20 1
	jump	L_trace_or_matrix_fast_2208
L_judge_intersection_fast_2212 : 
	fldi	f2 r0 35
	fsti	f2 r0 1082
	ldi	r20 r0 1183
	add	r21 r0 r20
	call	L_trace_or_matrix_fast_2208
	fldi	f4 r0 1082
	fldi	f2 r0 34
	fadd	f3 f0 f4
	call	L_fless_1863
	bne	r6 r0 L_else_5572
	addi	r6 r0 0
	return
L_else_5572 : 
	fldi	f3 r0 36
	fadd	f2 f0 f4
	jump	L_fless_1863
L_get_nvector_rect_2214 : 
	ldi	r10 r0 1074
	addi	r6 r0 1046
	call	L_vecbzero_1916
	addi	r9 r0 1046
	addi	r8 r10 -1
	addi	r6 r10 -1
	add	r1 r7 r6
	fldi	f3 r1 0
	call	L_sgn_1900
	call	L_fneg_1868
	add	r1 r9 r8
	fsti	f2 r1 0
	return
L_get_nvector_plane_2216 : 
	add	r6 r0 r7
	call	L_o_param_a_1964
	call	L_fneg_1868
	fsti	f2 r0 1046
	add	r6 r0 r7
	call	L_o_param_b_1966
	call	L_fneg_1868
	fsti	f2 r0 1047
	add	r6 r0 r7
	call	L_o_param_c_1968
	call	L_fneg_1868
	fsti	f2 r0 1048
	return
L_get_nvector_second_2218 : 
	fldi	f3 r0 1042
	add	r6 r0 r7
	call	L_o_param_x_1972
	fsub	f4 f3 f2
	fldi	f3 r0 1043
	add	r6 r0 r7
	call	L_o_param_y_1974
	fsub	f5 f3 f2
	fldi	f3 r0 1044
	add	r6 r0 r7
	call	L_o_param_z_1976
	fsub	f7 f3 f2
	add	r6 r0 r7
	call	L_o_param_a_1964
	fmul	f9 f4 f2
	add	r6 r0 r7
	call	L_o_param_b_1966
	fmul	f8 f5 f2
	add	r6 r0 r7
	call	L_o_param_c_1968
	fmul	f6 f7 f2
	add	r6 r0 r7
	call	L_o_isrot_1962
	bne	r6 r0 L_else_5578
	fsti	f9 r0 1046
	fsti	f8 r0 1047
	fsti	f6 r0 1048
	jump	L_cont_5576
L_else_5578 : 
	add	r6 r0 r7
	call	L_o_param_r3_1992
	fmul	f3 f5 f2
	add	r6 r0 r7
	call	L_o_param_r2_1990
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	call	L_fhalf_1866
	fadd	f2 f9 f2
	fsti	f2 r0 1046
	add	r6 r0 r7
	call	L_o_param_r3_1992
	fmul	f3 f4 f2
	add	r6 r0 r7
	call	L_o_param_r1_1988
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	call	L_fhalf_1866
	fadd	f2 f8 f2
	fsti	f2 r0 1047
	add	r6 r0 r7
	call	L_o_param_r2_1990
	fmul	f3 f4 f2
	add	r6 r0 r7
	call	L_o_param_r1_1988
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	call	L_fhalf_1866
	fadd	f2 f6 f2
	fsti	f2 r0 1048
L_cont_5576 : 
	addi	r8 r0 1046
	add	r6 r0 r7
	call	L_o_isinvert_1960
	add	r7 r0 r8
	add	r8 r0 r6
	jump	L_vecunit_sgn_1926
L_get_nvector_2220 : 
	add	r6 r0 r7
	call	L_o_form_1956
	bne	r6 r4 L_else_5581
	add	r7 r0 r8
	jump	L_get_nvector_rect_2214
L_else_5581 : 
	addi	r8 r0 2
	bne	r6 r8 L_else_5583
	jump	L_get_nvector_plane_2216
L_else_5583 : 
	jump	L_get_nvector_second_2218
L_utexture_2223 : 
	add	r6 r0 r7
	call	L_o_texturetype_1954
	add	r9 r0 r6
	add	r6 r0 r7
	call	L_o_color_red_1982
	fsti	f2 r0 1049
	add	r6 r0 r7
	call	L_o_color_green_1984
	fsti	f2 r0 1050
	add	r6 r0 r7
	call	L_o_color_blue_1986
	fsti	f2 r0 1051
	bne	r9 r4 L_else_5586
	fldi	f3 r8 0
	add	r6 r0 r7
	call	L_o_param_x_1972
	fsub	f4 f3 f2
	fldi	f2 r0 37
	fmul	f2 f4 f2
	flr	f3 f2
	fldi	f2 r0 38
	fmul	f2 f3 f2
	fsub	f2 f4 f2
	fldi	f3 r0 39
	call	L_fless_1863
	add	r9 r0 r6
	fldi	f3 r8 2
	add	r6 r0 r7
	call	L_o_param_z_1976
	fsub	f4 f3 f2
	fldi	f2 r0 37
	fmul	f2 f4 f2
	flr	f3 f2
	fldi	f2 r0 38
	fmul	f2 f3 f2
	fsub	f2 f4 f2
	fldi	f3 r0 39
	call	L_fless_1863
	bne	r9 r0 L_else_5589
	bne	r6 r0 L_else_5591
	fldi	f2 r0 40
	jump	L_cont_5587
L_else_5591 : 
	fldi	f2 r0 28
	jump	L_cont_5587
L_else_5589 : 
	bne	r6 r0 L_else_5593
	fldi	f2 r0 28
	jump	L_cont_5587
L_else_5593 : 
	fldi	f2 r0 40
L_cont_5587 : 
	fsti	f2 r0 1050
	return
L_else_5586 : 
	addi	r6 r0 2
	bne	r9 r6 L_else_5595
	fldi	f2 r8 1
	fldi	f3 r0 41
	fmul	f2 f2 f3
	call	L_sin_1876
	call	L_fsqr_1870
	fldi	f3 r0 40
	fmul	f3 f3 f2
	fsti	f3 r0 1049
	fldi	f4 r0 40
	fldi	f3 r0 13
	fsub	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r0 1050
	return
L_else_5595 : 
	addi	r6 r0 3
	bne	r9 r6 L_else_5597
	fldi	f3 r8 0
	add	r6 r0 r7
	call	L_o_param_x_1972
	fsub	f3 f3 f2
	fldi	f4 r8 2
	add	r6 r0 r7
	call	L_o_param_z_1976
	fsub	f4 f4 f2
	fadd	f2 f0 f3
	call	L_fsqr_1870
	fadd	f3 f0 f2
	fadd	f2 f0 f4
	call	L_fsqr_1870
	fadd	f2 f3 f2
	fsqrt	f3 f2
	fldi	f2 r0 39
	fdiv	f3 f3 f2
	flr	f2 f3
	fsub	f3 f3 f2
	fldi	f2 r0 42
	fmul	f2 f3 f2
	call	L_cos_1878
	call	L_fsqr_1870
	fldi	f3 r0 40
	fmul	f3 f2 f3
	fsti	f3 r0 1050
	fldi	f3 r0 13
	fsub	f3 f3 f2
	fldi	f2 r0 40
	fmul	f2 f3 f2
	fsti	f2 r0 1051
	return
L_else_5597 : 
	addi	r6 r0 4
	bne	r9 r6 L_else_5599
	fldi	f3 r8 0
	add	r6 r0 r7
	call	L_o_param_x_1972
	fsub	f3 f3 f2
	add	r6 r0 r7
	call	L_o_param_a_1964
	fsqrt	f2 f2
	fmul	f4 f3 f2
	fldi	f3 r8 2
	add	r6 r0 r7
	call	L_o_param_z_1976
	fsub	f3 f3 f2
	add	r6 r0 r7
	call	L_o_param_c_1968
	fsqrt	f2 f2
	fmul	f5 f3 f2
	fadd	f2 f0 f4
	call	L_fsqr_1870
	fadd	f3 f0 f2
	fadd	f2 f0 f5
	call	L_fsqr_1870
	fadd	f15 f3 f2
	fadd	f2 f0 f4
	call	L_fabs_1861
	fldi	f3 r0 43
	call	L_fless_1863
	bne	r6 r0 L_else_5602
	fdiv	f2 f5 f4
	call	L_fabs_1861
	call	L_atan_1880
	fldi	f3 r0 44
	fmul	f3 f2 f3
	fldi	f2 r0 42
	fdiv	f3 f3 f2
	jump	L_cont_5600
L_else_5602 : 
	fldi	f3 r0 45
L_cont_5600 : 
	flr	f2 f3
	fsub	f16 f3 f2
	fldi	f3 r8 1
	add	r6 r0 r7
	call	L_o_param_y_1974
	fsub	f3 f3 f2
	add	r6 r0 r7
	call	L_o_param_b_1966
	fsqrt	f2 f2
	fmul	f4 f3 f2
	fadd	f2 f0 f15
	call	L_fabs_1861
	fldi	f3 r0 43
	call	L_fless_1863
	bne	r6 r0 L_else_5605
	fdiv	f2 f4 f15
	call	L_fabs_1861
	call	L_atan_1880
	fldi	f3 r0 44
	fmul	f2 f2 f3
	fldi	f3 r0 42
	fdiv	f2 f2 f3
	jump	L_cont_5603
L_else_5605 : 
	fldi	f2 r0 45
L_cont_5603 : 
	flr	f3 f2
	fsub	f3 f2 f3
	fldi	f4 r0 46
	fldi	f2 r0 12
	fsub	f2 f2 f16
	call	L_fsqr_1870
	fsub	f4 f4 f2
	fldi	f2 r0 12
	fsub	f2 f2 f3
	call	L_fsqr_1870
	fsub	f3 f4 f2
	fadd	f2 f0 f3
	call	L_fisneg_1859
	bne	r6 r0 L_else_5608
	jump	L_cont_5606
L_else_5608 : 
	fldi	f3 r0 28
L_cont_5606 : 
	fldi	f2 r0 40
	fmul	f3 f2 f3
	fldi	f2 r0 47
	fdiv	f2 f3 f2
	fsti	f2 r0 1051
	return
L_else_5599 : 
	return
L_add_light_2226 : 
	fadd	f2 f0 f3
	call	L_fispos_1857
	bne	r6 r0 L_else_5612
	jump	L_cont_5610
L_else_5612 : 
	addi	r6 r0 1055
	addi	r7 r0 1049
	fadd	f2 f0 f3
	call	L_vecaccum_1937
L_cont_5610 : 
	fadd	f2 f0 f5
	call	L_fispos_1857
	bne	r6 r0 L_else_5614
	return
L_else_5614 : 
	fadd	f2 f0 f5
	call	L_fsqr_1870
	call	L_fsqr_1870
	fmul	f3 f2 f6
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
L_trace_reflections_2230 : 
	bgt	r0 r23 L_else_5617
	ldi	r26 r23 1185
	add	r6 r0 r26
	call	L_r_dvec_2021
	add	r25 r0 r6
	add	r22 r0 r25
	call	L_judge_intersection_fast_2212
	bne	r6 r0 L_else_5620
	jump	L_cont_5618
L_else_5620 : 
	ldi	r7 r0 1045
	addi	r6 r0 4
	mul	r7 r7 r6
	ldi	r6 r0 1074
	add	r7 r7 r6
	add	r6 r0 r26
	call	L_r_surface_id_2019
	bne	r7 r6 L_else_5622
	ldi	r16 r0 1183
	add	r17 r0 r16
	call	L_shadow_check_one_or_matrix_2183
	bne	r6 r0 L_else_5624
	addi	r7 r0 1046
	add	r6 r0 r25
	call	L_d_vec_2015
	add	r1 r0 r6
	add	r6 r0 r7
	add	r7 r0 r1
	call	L_veciprod_1929
	fadd	f3 f0 f2
	add	r6 r0 r26
	call	L_r_bright_2023
	fadd	f5 f0 f2
	fmul	f2 f5 f15
	fmul	f6 f2 f3
	add	r6 r0 r25
	call	L_d_vec_2015
	add	r7 r0 r6
	add	r6 r0 r24
	call	L_veciprod_1929
	fmul	f5 f5 f2
	fadd	f3 f0 f6
	fadd	f6 f0 f16
	call	L_add_light_2226
	jump	L_cont_5618
L_else_5624 : 
	jump	L_cont_5618
L_else_5622 : 
L_cont_5618 : 
	addi	r23 r23 -1
	jump	L_trace_reflections_2230
L_else_5617 : 
	return
L_trace_ray_2235 : 
	addi	r6 r0 4
	bgt	r27 r6 L_else_5627
	add	r6 r0 r29
	call	L_p_surface_ids_2000
	add	r30 r0 r6
	add	r24 r0 r28
	call	L_judge_intersection_2198
	bne	r6 r0 L_else_5629
	addi	r6 r0 -1
	add	r1 r30 r27
	sti	r6 r1 0
	bne	r27 r0 L_else_5631
	return
L_else_5631 : 
	addi	r7 r0 1039
	add	r6 r0 r28
	call	L_veciprod_1929
	call	L_fneg_1868
	fadd	f3 f0 f2
	fadd	f2 f0 f3
	call	L_fispos_1857
	bne	r6 r0 L_else_5633
	return
L_else_5633 : 
	fadd	f2 f0 f3
	call	L_fsqr_1870
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
L_else_5629 : 
	ldi	r11 r0 1045
	ldi	r31 r11 1970
	add	r6 r0 r31
	call	L_o_reflectiontype_1958
	sti	r6 r2 0
	add	r6 r0 r31
	addi	r2 r2 1
	call	L_o_diffuse_1978
	addi	r2 r2 -1
	ldi	r6 r2 0
	fmul	f19 f2 f17
	sti	r6 r2 0
	add	r7 r0 r31
	add	r8 r0 r28
	addi	r2 r2 1
	call	L_get_nvector_2220
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r7 r0 1063
	addi	r8 r0 1042
	sti	r6 r2 0
	add	r6 r0 r7
	add	r7 r0 r8
	addi	r2 r2 1
	call	L_veccpy_1918
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r8 r0 1042
	sti	r6 r2 0
	add	r7 r0 r31
	addi	r2 r2 1
	call	L_utexture_2223
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r7 r0 4
	mul	r8 r11 r7
	ldi	r7 r0 1074
	add	r7 r8 r7
	add	r1 r30 r27
	sti	r7 r1 0
	sti	r6 r2 0
	add	r6 r0 r29
	addi	r2 r2 1
	call	L_p_intersection_points_1998
	addi	r2 r2 -1
	add	r7 r0 r6
	ldi	r6 r2 0
	add	r1 r7 r27
	ldi	r8 r1 0
	addi	r7 r0 1042
	sti	r6 r2 0
	add	r6 r0 r8
	addi	r2 r2 1
	call	L_veccpy_1918
	addi	r2 r2 -1
	ldi	r6 r2 0
	sti	r6 r2 0
	add	r6 r0 r29
	addi	r2 r2 1
	call	L_p_calc_diffuse_2002
	addi	r2 r2 -1
	add	r7 r0 r6
	ldi	r6 r2 0
	sti	r6 r2 0
	add	r6 r0 r31
	addi	r2 r2 1
	call	L_o_diffuse_1978
	addi	r2 r2 -1
	ldi	r6 r2 0
	fldi	f3 r0 12
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_fless_1863
	addi	r2 r2 -1
	add	r8 r0 r6
	ldi	r6 r2 0
	bne	r8 r0 L_else_5636
	addi	r8 r0 1
	add	r1 r7 r27
	sti	r8 r1 0
	sti	r6 r2 0
	add	r6 r0 r29
	addi	r2 r2 1
	call	L_p_energy_2004
	addi	r2 r2 -1
	add	r8 r0 r6
	ldi	r6 r2 0
	add	r1 r8 r27
	ldi	r9 r1 0
	addi	r7 r0 1049
	sti	r6 r2 0
	add	r6 r0 r9
	addi	r2 r2 1
	call	L_veccpy_1918
	addi	r2 r2 -1
	ldi	r6 r2 0
	add	r1 r8 r27
	ldi	r7 r1 0
	fldi	f2 r0 48
	fmul	f2 f2 f19
	sti	r6 r2 0
	add	r6 r0 r7
	addi	r2 r2 1
	call	L_vecscale_1947
	addi	r2 r2 -1
	ldi	r6 r2 0
	sti	r6 r2 0
	add	r6 r0 r29
	addi	r2 r2 1
	call	L_p_nvectors_2013
	addi	r2 r2 -1
	add	r7 r0 r6
	ldi	r6 r2 0
	add	r1 r7 r27
	ldi	r8 r1 0
	addi	r7 r0 1046
	sti	r6 r2 0
	add	r6 r0 r8
	addi	r2 r2 1
	call	L_veccpy_1918
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_5634
L_else_5636 : 
	addi	r8 r0 0
	add	r1 r7 r27
	sti	r8 r1 0
L_cont_5634 : 
	fldi	f5 r0 49
	addi	r7 r0 1046
	sti	r6 r2 0
	add	r6 r0 r28
	addi	r2 r2 1
	call	L_veciprod_1929
	addi	r2 r2 -1
	ldi	r6 r2 0
	fmul	f2 f5 f2
	addi	r7 r0 1046
	sti	r6 r2 0
	add	r6 r0 r28
	addi	r2 r2 1
	call	L_vecaccum_1937
	addi	r2 r2 -1
	ldi	r6 r2 0
	sti	r6 r2 0
	add	r6 r0 r31
	addi	r2 r2 1
	call	L_o_hilight_1980
	addi	r2 r2 -1
	ldi	r6 r2 0
	fmul	f16 f17 f2
	ldi	r16 r0 1183
	sti	r6 r2 0
	add	r17 r0 r16
	addi	r2 r2 1
	call	L_shadow_check_one_or_matrix_2183
	addi	r2 r2 -1
	add	r7 r0 r6
	ldi	r6 r2 0
	bne	r7 r0 L_else_5639
	addi	r7 r0 1046
	addi	r8 r0 1039
	sti	r6 r2 0
	add	r6 r0 r7
	add	r7 r0 r8
	addi	r2 r2 1
	call	L_veciprod_1929
	addi	r2 r2 -1
	ldi	r6 r2 0
	call	L_fneg_1868
	fmul	f5 f2 f19
	addi	r7 r0 1039
	sti	r6 r2 0
	add	r6 r0 r28
	addi	r2 r2 1
	call	L_veciprod_1929
	addi	r2 r2 -1
	ldi	r6 r2 0
	call	L_fneg_1868
	sti	r6 r2 0
	fadd	f3 f0 f5
	fadd	f6 f0 f16
	fadd	f5 f0 f2
	addi	r2 r2 1
	call	L_add_light_2226
	addi	r2 r2 -1
	ldi	r6 r2 0
	jump	L_cont_5637
L_else_5639 : 
L_cont_5637 : 
	addi	r8 r0 1042
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_setup_startp_2149
	addi	r2 r2 -1
	ldi	r6 r2 0
	ldi	r7 r0 1075
	addi	r23 r7 -1
	sti	r6 r2 0
	add	r24 r0 r28
	fadd	f15 f0 f19
	addi	r2 r2 1
	call	L_trace_reflections_2230
	addi	r2 r2 -1
	ldi	r6 r2 0
	fldi	f2 r0 50
	sti	r6 r2 0
	fadd	f3 f0 f17
	addi	r2 r2 1
	call	L_fless_1863
	addi	r2 r2 -1
	add	r7 r0 r6
	ldi	r6 r2 0
	bne	r7 r0 L_else_5641
	return
L_else_5641 : 
	addi	r7 r0 4
	bgt	r7 r27 L_else_5644
	jump	L_cont_5642
L_else_5644 : 
	addi	r7 r27 1
	addi	r8 r0 -1
	add	r1 r30 r7
	sti	r8 r1 0
L_cont_5642 : 
	addi	r7 r0 2
	bne	r6 r7 L_else_5646
	fldi	f3 r0 13
	add	r6 r0 r31
	call	L_o_diffuse_1978
	fsub	f2 f3 f2
	fmul	f17 f17 f2
	addi	r27 r27 1
	fldi	f2 r0 1082
	fadd	f18 f18 f2
	jump	L_trace_ray_2235
L_else_5646 : 
	return
L_else_5627 : 
	return
L_trace_diffuse_ray_2241 : 
	add	r22 r0 r23
	call	L_judge_intersection_fast_2212
	bne	r6 r0 L_else_5649
	return
L_else_5649 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	add	r6 r0 r23
	call	L_d_vec_2015
	add	r7 r0 r19
	add	r8 r0 r6
	call	L_get_nvector_2220
	addi	r8 r0 1042
	add	r7 r0 r19
	call	L_utexture_2223
	ldi	r16 r0 1183
	add	r17 r0 r16
	call	L_shadow_check_one_or_matrix_2183
	bne	r6 r0 L_else_5651
	addi	r6 r0 1046
	addi	r7 r0 1039
	call	L_veciprod_1929
	call	L_fneg_1868
	fadd	f3 f0 f2
	fadd	f2 f0 f3
	call	L_fispos_1857
	bne	r6 r0 L_else_5654
	fldi	f3 r0 28
	jump	L_cont_5652
L_else_5654 : 
L_cont_5652 : 
	addi	r7 r0 1052
	fmul	f3 f17 f3
	add	r6 r0 r19
	call	L_o_diffuse_1978
	fmul	f2 f3 f2
	addi	r6 r0 1049
	add	r1 r0 r6
	add	r6 r0 r7
	add	r7 r0 r1
	jump	L_vecaccum_1937
L_else_5651 : 
	return
L_iter_trace_diffuse_rays_2244 : 
	bgt	r0 r27 L_else_5657
	add	r1 r24 r27
	ldi	r6 r1 0
	call	L_d_vec_2015
	add	r7 r0 r25
	call	L_veciprod_1929
	fadd	f3 f0 f2
	fadd	f2 f0 f3
	call	L_fisneg_1859
	bne	r6 r0 L_else_5660
	add	r1 r24 r27
	ldi	r23 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2241
	jump	L_cont_5658
L_else_5660 : 
	addi	r6 r27 1
	add	r1 r24 r6
	ldi	r23 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray_2241
L_cont_5658 : 
	addi	r27 r27 -2
	jump	L_iter_trace_diffuse_rays_2244
L_else_5657 : 
	return
L_trace_diffuse_rays_2249 : 
	add	r8 r0 r26
	call	L_setup_startp_2149
	addi	r27 r0 118
	jump	L_iter_trace_diffuse_rays_2244
L_trace_diffuse_ray_80percent_2253 : 
	bne	r28 r0 L_else_5665
	jump	L_cont_5663
L_else_5665 : 
	ldi	r24 r0 1076
	add	r25 r0 r29
	add	r26 r0 r30
	call	L_trace_diffuse_rays_2249
L_cont_5663 : 
	bne	r28 r4 L_else_5668
	jump	L_cont_5666
L_else_5668 : 
	ldi	r24 r0 1077
	add	r25 r0 r29
	add	r26 r0 r30
	call	L_trace_diffuse_rays_2249
L_cont_5666 : 
	addi	r6 r0 2
	bne	r28 r6 L_else_5671
	jump	L_cont_5669
L_else_5671 : 
	ldi	r24 r0 1078
	add	r25 r0 r29
	add	r26 r0 r30
	call	L_trace_diffuse_rays_2249
L_cont_5669 : 
	addi	r6 r0 3
	bne	r28 r6 L_else_5674
	jump	L_cont_5672
L_else_5674 : 
	ldi	r24 r0 1079
	add	r25 r0 r29
	add	r26 r0 r30
	call	L_trace_diffuse_rays_2249
L_cont_5672 : 
	addi	r6 r0 4
	bne	r28 r6 L_else_5676
	return
L_else_5676 : 
	ldi	r24 r0 1080
	add	r25 r0 r29
	add	r26 r0 r30
	jump	L_trace_diffuse_rays_2249
L_calc_diffuse_using_1point_2257 : 
	add	r6 r0 r8
	call	L_p_received_ray_20percent_2006
	add	r7 r0 r6
	add	r6 r0 r8
	call	L_p_nvectors_2013
	add	r9 r0 r6
	add	r6 r0 r8
	call	L_p_intersection_points_1998
	add	r10 r0 r6
	add	r6 r0 r8
	call	L_p_energy_2004
	addi	r11 r0 1052
	add	r1 r7 r31
	ldi	r7 r1 0
	sti	r6 r2 0
	add	r6 r0 r11
	addi	r2 r2 1
	call	L_veccpy_1918
	addi	r2 r2 -1
	ldi	r6 r2 0
	sti	r6 r2 0
	add	r6 r0 r8
	addi	r2 r2 1
	call	L_p_group_id_2008
	addi	r2 r2 -1
	add	r28 r0 r6
	ldi	r6 r2 0
	add	r1 r9 r31
	ldi	r29 r1 0
	add	r1 r10 r31
	ldi	r30 r1 0
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_trace_diffuse_ray_80percent_2253
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r9 r0 1055
	add	r1 r6 r31
	ldi	r7 r1 0
	addi	r8 r0 1052
	add	r6 r0 r9
	jump	L_vecaccumv_1950
L_calc_diffuse_using_5points_2260 : 
	add	r1 r6 r8
	ldi	r6 r1 0
	call	L_p_received_ray_20percent_2006
	add	r15 r0 r6
	addi	r6 r8 -1
	add	r1 r9 r6
	ldi	r6 r1 0
	call	L_p_received_ray_20percent_2006
	add	r14 r0 r6
	add	r1 r9 r8
	ldi	r6 r1 0
	call	L_p_received_ray_20percent_2006
	add	r12 r0 r6
	addi	r6 r8 1
	add	r1 r9 r6
	ldi	r6 r1 0
	call	L_p_received_ray_20percent_2006
	add	r13 r0 r6
	add	r1 r7 r8
	ldi	r6 r1 0
	call	L_p_received_ray_20percent_2006
	add	r11 r0 r6
	addi	r6 r0 1052
	add	r1 r15 r10
	ldi	r7 r1 0
	call	L_veccpy_1918
	addi	r6 r0 1052
	add	r1 r14 r10
	ldi	r7 r1 0
	call	L_vecadd_1941
	addi	r6 r0 1052
	add	r1 r12 r10
	ldi	r7 r1 0
	call	L_vecadd_1941
	addi	r6 r0 1052
	add	r1 r13 r10
	ldi	r7 r1 0
	call	L_vecadd_1941
	addi	r6 r0 1052
	add	r1 r11 r10
	ldi	r7 r1 0
	call	L_vecadd_1941
	add	r1 r9 r8
	ldi	r6 r1 0
	call	L_p_energy_2004
	addi	r9 r0 1055
	add	r1 r6 r10
	ldi	r7 r1 0
	addi	r8 r0 1052
	add	r6 r0 r9
	jump	L_vecaccumv_1950
L_do_without_neighbors_2266 : 
	addi	r8 r0 4
	bgt	r7 r8 L_else_5681
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_p_surface_ids_2000
	addi	r2 r2 -1
	add	r8 r0 r6
	ldi	r6 r2 0
	add	r1 r8 r7
	ldi	r8 r1 0
	bgt	r0 r8 L_else_5683
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_p_calc_diffuse_2002
	addi	r2 r2 -1
	add	r8 r0 r6
	ldi	r6 r2 0
	add	r1 r8 r7
	ldi	r8 r1 0
	bne	r8 r0 L_else_5686
	jump	L_cont_5684
L_else_5686 : 
	sti	r6 r2 0
	sti	r7 r2 1
	add	r8 r0 r6
	add	r31 r0 r7
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point_2257
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
L_cont_5684 : 
	addi	r7 r7 1
	jump	L_do_without_neighbors_2266
L_else_5683 : 
	return
L_else_5681 : 
	return
L_neighbors_exist_2269 : 
	ldi	r8 r0 1059
	addi	r9 r7 1
	bgt	r8 r9 L_else_5689
	addi	r6 r0 0
	return
L_else_5689 : 
	bgt	r7 r0 L_else_5691
	addi	r6 r0 0
	return
L_else_5691 : 
	ldi	r7 r0 1058
	addi	r8 r6 1
	bgt	r7 r8 L_else_5693
	addi	r6 r0 0
	return
L_else_5693 : 
	bgt	r6 r0 L_else_5695
	addi	r6 r0 0
	return
L_else_5695 : 
	addi	r6 r0 1
	return
L_get_surface_id_2273 : 
	call	L_p_surface_ids_2000
	add	r1 r6 r7
	ldi	r6 r1 0
	return
L_neighbors_are_available_2276 : 
	add	r1 r10 r8
	ldi	r6 r1 0
	add	r7 r0 r12
	call	L_get_surface_id_2273
	add	r13 r0 r6
	add	r1 r9 r8
	ldi	r6 r1 0
	add	r7 r0 r12
	call	L_get_surface_id_2273
	bne	r6 r13 L_else_5699
	add	r1 r11 r8
	ldi	r6 r1 0
	add	r7 r0 r12
	call	L_get_surface_id_2273
	bne	r6 r13 L_else_5701
	addi	r6 r8 -1
	add	r1 r10 r6
	ldi	r6 r1 0
	add	r7 r0 r12
	call	L_get_surface_id_2273
	bne	r6 r13 L_else_5703
	addi	r6 r8 1
	add	r1 r10 r6
	ldi	r6 r1 0
	add	r7 r0 r12
	call	L_get_surface_id_2273
	bne	r6 r13 L_else_5705
	addi	r6 r0 1
	return
L_else_5705 : 
	addi	r6 r0 0
	return
L_else_5703 : 
	addi	r6 r0 0
	return
L_else_5701 : 
	addi	r6 r0 0
	return
L_else_5699 : 
	addi	r6 r0 0
	return
L_try_exploit_neighbors_2282 : 
	add	r1 r19 r16
	ldi	r14 r1 0
	addi	r6 r0 4
	bgt	r21 r6 L_else_5708
	add	r6 r0 r14
	add	r7 r0 r21
	call	L_get_surface_id_2273
	bgt	r0 r6 L_else_5710
	add	r8 r0 r16
	add	r9 r0 r18
	add	r10 r0 r19
	add	r11 r0 r20
	add	r12 r0 r21
	call	L_neighbors_are_available_2276
	bne	r6 r0 L_else_5712
	add	r1 r19 r16
	ldi	r6 r1 0
	add	r7 r0 r21
	jump	L_do_without_neighbors_2266
L_else_5712 : 
	add	r6 r0 r14
	call	L_p_calc_diffuse_2002
	add	r1 r6 r21
	ldi	r6 r1 0
	bne	r6 r0 L_else_5715
	jump	L_cont_5713
L_else_5715 : 
	add	r8 r0 r16
	add	r6 r0 r18
	add	r9 r0 r19
	add	r7 r0 r20
	add	r10 r0 r21
	call	L_calc_diffuse_using_5points_2260
L_cont_5713 : 
	addi	r21 r21 1
	jump	L_try_exploit_neighbors_2282
L_else_5710 : 
	return
L_else_5708 : 
	return
L_write_ppm_header_2289 : 
	addi	r6 r0 80
	call	min_caml_print_char
	addi	r6 r0 54
	call	min_caml_print_char
	addi	r6 r0 10
	call	min_caml_print_char
	ldi	r10 r0 1058
	call	L_print_int_1898
	addi	r6 r0 32
	call	min_caml_print_char
	ldi	r10 r0 1059
	call	L_print_int_1898
	addi	r6 r0 32
	call	min_caml_print_char
	addi	r10 r0 255
	call	L_print_int_1898
	addi	r6 r0 10
	jump	min_caml_print_char
L_write_rgb_element_2291 : 
	jump	min_caml_print_float
L_write_rgb_2293 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element_2291
	fldi	f2 r0 1056
	call	L_write_rgb_element_2291
	fldi	f2 r0 1057
	jump	L_write_rgb_element_2291
L_pretrace_diffuse_rays_2295 : 
	addi	r6 r0 4
	bgt	r29 r6 L_else_5721
	add	r6 r0 r28
	add	r7 r0 r29
	call	L_get_surface_id_2273
	bgt	r0 r6 L_else_5723
	add	r6 r0 r28
	call	L_p_calc_diffuse_2002
	add	r1 r6 r29
	ldi	r6 r1 0
	bne	r6 r0 L_else_5726
	jump	L_cont_5724
L_else_5726 : 
	add	r6 r0 r28
	call	L_p_group_id_2008
	add	r7 r0 r6
	addi	r6 r0 1052
	call	L_vecbzero_1916
	add	r6 r0 r28
	call	L_p_nvectors_2013
	add	r8 r0 r6
	add	r6 r0 r28
	call	L_p_intersection_points_1998
	ldi	r24 r7 1076
	add	r1 r8 r29
	ldi	r25 r1 0
	add	r1 r6 r29
	ldi	r26 r1 0
	call	L_trace_diffuse_rays_2249
	add	r6 r0 r28
	call	L_p_received_ray_20percent_2006
	add	r1 r6 r29
	ldi	r6 r1 0
	addi	r7 r0 1052
	call	L_veccpy_1918
L_cont_5724 : 
	addi	r29 r29 1
	jump	L_pretrace_diffuse_rays_2295
L_else_5723 : 
	return
L_else_5721 : 
	return
L_pretrace_pixels_2298 : 
	bgt	r0 r7 L_else_5729
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
	addi	r9 r0 1069
	addi	r10 r0 0
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	add	r7 r0 r9
	add	r8 r0 r10
	addi	r2 r2 3
	call	L_vecunit_sgn_1926
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	addi	r9 r0 1055
	sti	r6 r2 0
	add	r6 r0 r9
	addi	r2 r2 1
	call	L_vecbzero_1916
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r10 r0 1063
	addi	r9 r0 1036
	sti	r6 r2 0
	sti	r7 r2 1
	add	r6 r0 r10
	add	r7 r0 r9
	addi	r2 r2 2
	call	L_veccpy_1918
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
	addi	r27 r0 0
	fldi	f17 r0 13
	addi	r28 r0 1069
	add	r1 r6 r7
	ldi	r29 r1 0
	fldi	f18 r0 28
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_trace_ray_2235
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	add	r1 r6 r7
	ldi	r9 r1 0
	sti	r6 r2 0
	add	r6 r0 r9
	addi	r2 r2 1
	call	L_p_rgb_1996
	addi	r2 r2 -1
	add	r9 r0 r6
	ldi	r6 r2 0
	addi	r10 r0 1055
	sti	r7 r2 0
	sti	r6 r2 1
	add	r6 r0 r9
	add	r7 r0 r10
	addi	r2 r2 2
	call	L_veccpy_1918
	addi	r2 r2 -2
	ldi	r7 r2 0
	ldi	r6 r2 1
	add	r1 r6 r7
	ldi	r9 r1 0
	sti	r7 r2 0
	sti	r6 r2 1
	add	r6 r0 r9
	add	r7 r0 r8
	addi	r2 r2 2
	call	L_p_set_group_id_2010
	addi	r2 r2 -2
	ldi	r7 r2 0
	ldi	r6 r2 1
	add	r1 r6 r7
	ldi	r28 r1 0
	addi	r29 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_pretrace_diffuse_rays_2295
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r9 r7 -1
	addi	r7 r0 1
	sti	r6 r2 0
	add	r6 r0 r8
	addi	r2 r2 1
	call	L_add_mod5_1905
	addi	r2 r2 -1
	add	r8 r0 r6
	ldi	r6 r2 0
	add	r7 r0 r9
	jump	L_pretrace_pixels_2298
L_else_5729 : 
	return
L_pretrace_line_2305 : 
	fldi	f2 r0 1062
	ldi	r9 r0 1061
	sub	r7 r7 r9
	foi	f3 r7
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
	ldi	r7 r0 1058
	addi	r7 r7 -1
	jump	L_pretrace_pixels_2298
L_scan_pixel_2309 : 
	ldi	r11 r0 1058
	bgt	r11 r6 L_else_5733
	return
L_else_5733 : 
	addi	r11 r0 1055
	add	r1 r9 r6
	ldi	r12 r1 0
	sti	r6 r2 0
	add	r6 r0 r12
	addi	r2 r2 1
	call	L_p_rgb_1996
	addi	r2 r2 -1
	add	r12 r0 r6
	ldi	r6 r2 0
	sti	r7 r2 0
	sti	r6 r2 1
	add	r6 r0 r11
	add	r7 r0 r12
	addi	r2 r2 2
	call	L_veccpy_1918
	addi	r2 r2 -2
	ldi	r7 r2 0
	ldi	r6 r2 1
	sti	r9 r2 0
	sti	r6 r2 1
	sti	r8 r2 2
	sti	r7 r2 3
	addi	r2 r2 4
	call	L_neighbors_exist_2269
	addi	r2 r2 -4
	add	r11 r0 r6
	ldi	r9 r2 0
	ldi	r6 r2 1
	ldi	r8 r2 2
	ldi	r7 r2 3
	bne	r11 r0 L_else_5736
	add	r1 r9 r6
	ldi	r12 r1 0
	addi	r11 r0 0
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r8 r2 3
	sti	r7 r2 4
	add	r6 r0 r12
	add	r7 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors_2266
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r8 r2 3
	ldi	r7 r2 4
	jump	L_cont_5734
L_else_5736 : 
	addi	r21 r0 0
	sti	r6 r2 0
	sti	r10 r2 1
	sti	r9 r2 2
	sti	r8 r2 3
	sti	r7 r2 4
	add	r16 r0 r6
	add	r17 r0 r7
	add	r18 r0 r8
	add	r19 r0 r9
	add	r20 r0 r10
	addi	r2 r2 5
	call	L_try_exploit_neighbors_2282
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r10 r2 1
	ldi	r9 r2 2
	ldi	r8 r2 3
	ldi	r7 r2 4
L_cont_5734 : 
	call	L_write_rgb_2293
	addi	r6 r6 1
	jump	L_scan_pixel_2309
L_scan_line_2315 : 
	ldi	r11 r0 1059
	bgt	r11 r6 L_else_5739
	return
L_else_5739 : 
	ldi	r11 r0 1059
	addi	r11 r11 -1
	bgt	r11 r6 L_else_5742
	jump	L_cont_5740
L_else_5742 : 
	addi	r11 r6 1
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r6 r0 r9
	add	r7 r0 r11
	add	r8 r0 r10
	addi	r2 r2 5
	call	L_pretrace_line_2305
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
L_cont_5740 : 
	addi	r11 r0 0
	sti	r8 r2 0
	sti	r9 r2 1
	sti	r7 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r10 r0 r9
	add	r9 r0 r8
	add	r8 r0 r7
	add	r7 r0 r6
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_scan_pixel_2309
	addi	r2 r2 -5
	ldi	r8 r2 0
	ldi	r9 r2 1
	ldi	r7 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	addi	r11 r6 1
	addi	r6 r0 2
	sti	r7 r2 0
	add	r7 r0 r6
	add	r6 r0 r10
	addi	r2 r2 1
	call	L_add_mod5_1905
	addi	r2 r2 -1
	ldi	r7 r2 0
	add	r10 r0 r6
	add	r6 r0 r11
	add	r1 r0 r7
	add	r7 r0 r8
	add	r8 r0 r9
	add	r9 r0 r1
	jump	L_scan_line_2315
L_create_float5x3array_2321 : 
	addi	r6 r0 3
	fldi	f2 r0 28
	call	min_caml_create_float_array
	addi	r7 r0 5
	add	r1 r0 r6
	add	r6 r0 r7
	add	r7 r0 r1
	call	min_caml_create_array
	add	r8 r0 r6
	addi	r6 r0 3
	fldi	f2 r0 28
	call	min_caml_create_float_array
	sti	r6 r8 1
	addi	r6 r0 3
	fldi	f2 r0 28
	call	min_caml_create_float_array
	sti	r6 r8 2
	addi	r6 r0 3
	fldi	f2 r0 28
	call	min_caml_create_float_array
	sti	r6 r8 3
	addi	r6 r0 3
	fldi	f2 r0 28
	call	min_caml_create_float_array
	sti	r6 r8 4
	add	r6 r0 r8
	return
L_create_pixel_2323 : 
	addi	r6 r0 3
	fldi	f2 r0 28
	call	min_caml_create_float_array
	add	r10 r0 r6
	call	L_create_float5x3array_2321
	add	r11 r0 r6
	addi	r6 r0 5
	addi	r7 r0 0
	call	min_caml_create_array
	add	r12 r0 r6
	addi	r6 r0 5
	addi	r7 r0 0
	call	min_caml_create_array
	add	r13 r0 r6
	call	L_create_float5x3array_2321
	add	r14 r0 r6
	call	L_create_float5x3array_2321
	add	r15 r0 r6
	addi	r6 r0 1
	addi	r7 r0 0
	call	min_caml_create_array
	add	r16 r0 r6
	call	L_create_float5x3array_2321
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
L_init_line_elements_2325 : 
	bgt	r0 r18 L_else_5747
	call	L_create_pixel_2323
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	jump	L_init_line_elements_2325
L_else_5747 : 
	add	r6 r0 r17
	return
L_create_pixelline_2328 : 
	ldi	r17 r0 1058
	call	L_create_pixel_2323
	add	r7 r0 r6
	add	r6 r0 r17
	call	min_caml_create_array
	ldi	r7 r0 1058
	addi	r18 r7 -2
	add	r17 r0 r6
	jump	L_init_line_elements_2325
L_tan_2330 : 
	fadd	f2 f0 f10
	call	L_sin_1876
	fadd	f11 f0 f2
	fadd	f2 f0 f10
	call	L_cos_1878
	fdiv	f2 f11 f2
	return
L_adjust_position_2332 : 
	fmul	f2 f2 f2
	fldi	f3 r0 50
	fadd	f2 f2 f3
	fsqrt	f16 f2
	fldi	f2 r0 13
	fdiv	f2 f2 f16
	call	L_atan_1880
	fmul	f10 f2 f15
	call	L_tan_2330
	fmul	f2 f2 f16
	return
L_calc_dirvec_2335 : 
	addi	r9 r0 5
	bgt	r9 r6 L_else_5753
	fadd	f2 f0 f3
	call	L_fsqr_1870
	fadd	f5 f0 f2
	fadd	f2 f0 f4
	call	L_fsqr_1870
	fadd	f2 f5 f2
	fldi	f5 r0 13
	fadd	f2 f2 f5
	fsqrt	f7 f2
	fdiv	f6 f3 f7
	fdiv	f5 f4 f7
	fldi	f2 r0 13
	fdiv	f7 f2 f7
	ldi	r7 r7 1076
	add	r1 r7 r8
	ldi	r6 r1 0
	call	L_d_vec_2015
	fadd	f2 f0 f6
	fadd	f3 f0 f5
	fadd	f4 f0 f7
	call	L_vecset_1908
	addi	r6 r8 40
	add	r1 r7 r6
	ldi	r6 r1 0
	call	L_d_vec_2015
	fadd	f2 f0 f5
	call	L_fneg_1868
	fadd	f3 f0 f7
	fadd	f4 f0 f2
	fadd	f2 f0 f6
	call	L_vecset_1908
	addi	r6 r8 80
	add	r1 r7 r6
	ldi	r6 r1 0
	call	L_d_vec_2015
	fadd	f2 f0 f6
	call	L_fneg_1868
	fadd	f3 f0 f2
	fadd	f2 f0 f5
	call	L_fneg_1868
	fadd	f4 f0 f2
	fadd	f2 f0 f7
	call	L_vecset_1908
	addi	r6 r8 1
	add	r1 r7 r6
	ldi	r6 r1 0
	call	L_d_vec_2015
	fadd	f2 f0 f6
	call	L_fneg_1868
	fadd	f3 f0 f2
	fadd	f2 f0 f5
	call	L_fneg_1868
	fadd	f4 f0 f2
	fadd	f2 f0 f7
	call	L_fneg_1868
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f1
	call	L_vecset_1908
	addi	r6 r8 41
	add	r1 r7 r6
	ldi	r6 r1 0
	call	L_d_vec_2015
	fadd	f2 f0 f6
	call	L_fneg_1868
	fadd	f3 f0 f2
	fadd	f2 f0 f7
	call	L_fneg_1868
	fadd	f4 f0 f5
	fadd	f1 f0 f2
	fadd	f2 f0 f3
	fadd	f3 f0 f1
	call	L_vecset_1908
	addi	r6 r8 81
	add	r1 r7 r6
	ldi	r6 r1 0
	call	L_d_vec_2015
	fadd	f2 f0 f7
	call	L_fneg_1868
	fadd	f3 f0 f6
	fadd	f4 f0 f5
	jump	L_vecset_1908
L_else_5753 : 
	fadd	f2 f0 f4
	fadd	f15 f0 f17
	call	L_adjust_position_2332
	fadd	f19 f0 f2
	addi	r6 r6 1
	fadd	f2 f0 f19
	fadd	f15 f0 f18
	call	L_adjust_position_2332
	fadd	f3 f0 f19
	fadd	f4 f0 f2
	jump	L_calc_dirvec_2335
L_calc_dirvecs_2343 : 
	bgt	r0 r10 L_else_5756
	foi	f3 r10
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f17 f3 f2
	addi	r6 r0 0
	fldi	f3 r0 28
	fldi	f4 r0 28
	add	r7 r0 r11
	add	r8 r0 r12
	fadd	f18 f0 f20
	call	L_calc_dirvec_2335
	foi	f2 r10
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 50
	fadd	f17 f2 f3
	addi	r6 r0 0
	fldi	f3 r0 28
	fldi	f4 r0 28
	addi	r8 r12 2
	add	r7 r0 r11
	fadd	f18 f0 f20
	call	L_calc_dirvec_2335
	addi	r10 r10 -1
	addi	r7 r0 1
	add	r6 r0 r11
	call	L_add_mod5_1905
	add	r11 r0 r6
	jump	L_calc_dirvecs_2343
L_else_5756 : 
	return
L_calc_dirvec_rows_2348 : 
	bgt	r0 r13 L_else_5759
	foi	f3 r13
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f20 f3 f2
	addi	r10 r0 4
	add	r11 r0 r14
	add	r12 r0 r15
	call	L_calc_dirvecs_2343
	addi	r13 r13 -1
	addi	r7 r0 2
	add	r6 r0 r14
	call	L_add_mod5_1905
	addi	r15 r15 4
	add	r14 r0 r6
	jump	L_calc_dirvec_rows_2348
L_else_5759 : 
	return
L_create_dirvec_2352 : 
	addi	r6 r0 3
	fldi	f2 r0 28
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
L_create_dirvec_elements_2354 : 
	bgt	r0 r12 L_else_5763
	call	L_create_dirvec_2352
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	jump	L_create_dirvec_elements_2354
L_else_5763 : 
	return
L_create_dirvecs_2357 : 
	bgt	r0 r13 L_else_5766
	addi	r11 r0 1076
	addi	r12 r0 120
	call	L_create_dirvec_2352
	add	r7 r0 r6
	add	r6 r0 r12
	call	min_caml_create_array
	add	r1 r11 r13
	sti	r6 r1 0
	ldi	r11 r13 1076
	addi	r12 r0 118
	call	L_create_dirvec_elements_2354
	addi	r13 r13 -1
	jump	L_create_dirvecs_2357
L_else_5766 : 
	return
L_init_dirvec_constants_2359 : 
	bgt	r0 r15 L_else_5769
	add	r1 r14 r15
	ldi	r11 r1 0
	call	L_setup_dirvec_constants_2144
	addi	r15 r15 -1
	jump	L_init_dirvec_constants_2359
L_else_5769 : 
	return
L_init_vecset_constants_2362 : 
	bgt	r0 r16 L_else_5772
	ldi	r14 r16 1076
	addi	r15 r0 119
	call	L_init_dirvec_constants_2359
	addi	r16 r16 -1
	jump	L_init_vecset_constants_2362
L_else_5772 : 
	return
L_init_dirvecs_2364 : 
	addi	r13 r0 4
	call	L_create_dirvecs_2357
	addi	r13 r0 9
	addi	r14 r0 0
	addi	r15 r0 0
	call	L_calc_dirvec_rows_2348
	addi	r16 r0 4
	jump	L_init_vecset_constants_2362
L_add_reflection_2366 : 
	call	L_create_dirvec_2352
	add	r16 r0 r6
	add	r6 r0 r16
	call	L_d_vec_2015
	fadd	f2 f0 f3
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	call	L_vecset_1908
	add	r11 r0 r16
	call	L_setup_dirvec_constants_2144
	addi	r6 r0 1185
	sti	r15 r3 0
	sti	r16 r3 1
	fsti	f9 r3 2
	add	r7 r0 r3
	addi	r3 r3 3
	add	r1 r6 r14
	sti	r7 r1 0
	return
L_setup_rect_reflection_2373 : 
	addi	r8 r0 4
	mul	r18 r6 r8
	ldi	r17 r0 1075
	fldi	f3 r0 13
	add	r6 r0 r7
	call	L_o_diffuse_1978
	fsub	f10 f3 f2
	fldi	f2 r0 1039
	call	L_fneg_1868
	fadd	f11 f0 f2
	fldi	f2 r0 1040
	call	L_fneg_1868
	fadd	f12 f0 f2
	fldi	f2 r0 1041
	call	L_fneg_1868
	fadd	f13 f0 f2
	addi	r15 r18 1
	fldi	f3 r0 1039
	add	r14 r0 r17
	fadd	f9 f0 f10
	fadd	f4 f0 f12
	fadd	f5 f0 f13
	call	L_add_reflection_2366
	addi	r14 r17 1
	addi	r15 r18 2
	fldi	f4 r0 1040
	fadd	f9 f0 f10
	fadd	f3 f0 f11
	fadd	f5 f0 f13
	call	L_add_reflection_2366
	addi	r14 r17 2
	addi	r15 r18 3
	fldi	f5 r0 1041
	fadd	f9 f0 f10
	fadd	f3 f0 f11
	fadd	f4 f0 f12
	call	L_add_reflection_2366
	addi	r6 r17 3
	sti	r6 r0 1075
	return
L_setup_surface_reflection_2376 : 
	addi	r7 r0 4
	mul	r6 r6 r7
	addi	r15 r6 1
	ldi	r17 r0 1075
	fldi	f3 r0 13
	add	r6 r0 r8
	call	L_o_diffuse_1978
	fsub	f9 f3 f2
	addi	r7 r0 1039
	add	r6 r0 r8
	call	L_o_param_abc_1970
	add	r1 r0 r6
	add	r6 r0 r7
	add	r7 r0 r1
	call	L_veciprod_1929
	fadd	f3 f0 f2
	fldi	f4 r0 0
	add	r6 r0 r8
	call	L_o_param_a_1964
	fmul	f2 f4 f2
	fmul	f4 f2 f3
	fldi	f2 r0 1039
	fsub	f4 f4 f2
	fldi	f5 r0 0
	add	r6 r0 r8
	call	L_o_param_b_1966
	fmul	f2 f5 f2
	fmul	f5 f2 f3
	fldi	f2 r0 1040
	fsub	f5 f5 f2
	fldi	f6 r0 0
	add	r6 r0 r8
	call	L_o_param_c_1968
	fmul	f2 f6 f2
	fmul	f3 f2 f3
	fldi	f2 r0 1041
	fsub	f2 f3 f2
	add	r14 r0 r17
	fadd	f3 f0 f4
	fadd	f4 f0 f5
	fadd	f5 f0 f2
	call	L_add_reflection_2366
	addi	r6 r17 1
	sti	r6 r0 1075
	return
L_setup_reflections_2379 : 
	bgt	r0 r7 L_else_5779
	ldi	r8 r7 1970
	add	r6 r0 r8
	call	L_o_reflectiontype_1958
	addi	r9 r0 2
	bne	r6 r9 L_else_5781
	add	r6 r0 r8
	call	L_o_diffuse_1978
	fldi	f3 r0 13
	call	L_fless_1863
	bne	r6 r0 L_else_5783
	return
L_else_5783 : 
	add	r6 r0 r8
	call	L_o_form_1956
	bne	r6 r4 L_else_5785
	add	r6 r0 r7
	add	r7 r0 r8
	jump	L_setup_rect_reflection_2373
L_else_5785 : 
	addi	r9 r0 2
	bne	r6 r9 L_else_5787
	add	r6 r0 r7
	jump	L_setup_surface_reflection_2376
L_else_5787 : 
	return
L_else_5781 : 
	return
L_else_5779 : 
	return
L_rt_2381 : 
	sti	r6 r0 1058
	sti	r7 r0 1059
	addi	r7 r0 64
	sti	r7 r0 1060
	addi	r7 r0 64
	sti	r7 r0 1061
	fldi	f3 r0 55
	foi	f2 r6
	fdiv	f2 f3 f2
	fsti	f2 r0 1062
	call	L_create_pixelline_2328
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_create_pixelline_2328
	addi	r2 r2 -1
	add	r7 r0 r6
	ldi	r6 r2 0
	sti	r6 r2 0
	sti	r7 r2 1
	addi	r2 r2 2
	call	L_create_pixelline_2328
	addi	r2 r2 -2
	add	r8 r0 r6
	ldi	r6 r2 0
	ldi	r7 r2 1
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_read_parameter_2046
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_write_ppm_header_2289
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_init_dirvecs_2364
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r9 r0 1905
	sti	r6 r2 0
	add	r6 r0 r9
	addi	r2 r2 1
	call	L_d_vec_2015
	addi	r2 r2 -1
	add	r9 r0 r6
	ldi	r6 r2 0
	addi	r10 r0 1039
	sti	r7 r2 0
	sti	r6 r2 1
	add	r6 r0 r9
	add	r7 r0 r10
	addi	r2 r2 2
	call	L_veccpy_1918
	addi	r2 r2 -2
	ldi	r7 r2 0
	ldi	r6 r2 1
	addi	r11 r0 1905
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_setup_dirvec_constants_2144
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	ldi	r9 r0 1072
	addi	r9 r9 -1
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_setup_reflections_2379
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r9 r0 0
	addi	r10 r0 0
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	add	r6 r0 r7
	add	r8 r0 r10
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_pretrace_line_2305
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
	jump	L_scan_line_2315
min_caml_start : 
	addi	r6 r0 128
	addi	r7 r0 128
	call	L_rt_2381
	return
min_caml_end : 
	call	min_caml_start
