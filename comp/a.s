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
	bne	r0 r7 L_else.26975
	return
L_else.26975 : 
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
	bne	r0 r7 L_else.26976
	return
L_else.26976 : 
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
L_psin.1874 : 
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
L_pcos.1876 : 
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
L_sin.1878 : 
	fldi	f4 r0 13
	fldi	f6 r0 14
	fbgt	f2 f6 L_else.23826
	fldi	f3 r0 15
	fbgt	f3 f2 L_else.23828
	fldi	f5 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f2 f0 L_else.23830
	fldi	f3 r0 19
	fbgt	f3 f2 L_else.23832
	jump	L_psin.1874
L_else.23832 : 
	fldi	f3 r0 20
	fbgt	f3 f2 L_else.23834
	fadd	f2 f4 f2
	call	L_pcos.1876
	fsub	f2 f0 f2
	return
L_else.23834 : 
	fadd	f2 f6 f2
	call	L_psin.1874
	fsub	f2 f0 f2
	return
L_else.23830 : 
	fbgt	f2 f5 L_else.23836
	jump	L_psin.1874
L_else.23836 : 
	fbgt	f2 f3 L_else.23838
	fsub	f2 f2 f4
	jump	L_pcos.1876
L_else.23838 : 
	fsub	f2 f6 f2
	jump	L_psin.1874
L_else.23828 : 
	fadd	f2 f2 f4
	jump	L_sin.1878
L_else.23826 : 
	fsub	f2 f2 f4
	jump	L_sin.1878
L_cos.1880 : 
	fldi	f4 r0 13
	fldi	f6 r0 14
	fbgt	f2 f6 L_else.23841
	fldi	f3 r0 15
	fbgt	f3 f2 L_else.23843
	fldi	f5 r0 16
	fldi	f4 r0 17
	fldi	f3 r0 18
	fbgt	f2 f0 L_else.23845
	fldi	f3 r0 19
	fbgt	f3 f2 L_else.23847
	jump	L_pcos.1876
L_else.23847 : 
	fldi	f3 r0 20
	fbgt	f3 f2 L_else.23849
	fadd	f2 f2 f4
	jump	L_psin.1874
L_else.23849 : 
	fadd	f2 f6 f2
	call	L_pcos.1876
	fsub	f2 f0 f2
	return
L_else.23845 : 
	fbgt	f2 f5 L_else.23851
	jump	L_pcos.1876
L_else.23851 : 
	fbgt	f2 f3 L_else.23853
	fsub	f2 f2 f4
	call	L_psin.1874
	fsub	f2 f0 f2
	return
L_else.23853 : 
	fsub	f2 f6 f2
	call	L_pcos.1876
	fsub	f2 f0 f2
	return
L_else.23843 : 
	fadd	f2 f2 f4
	jump	L_cos.1880
L_else.23841 : 
	fsub	f2 f2 f4
	jump	L_cos.1880
L_atan.1882 : 
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
L_spow10.1884 : 
	bne	r6 r0 L_else.23857
	add	r6 r0 r7
	return
L_else.23857 : 
	addi	r8 r6 -1
	addi	r6 r0 10
	mul	r7 r7 r6
	add	r6 r0 r8
	jump	L_spow10.1884
L_pow10.1887 : 
	addi	r7 r0 1
	jump	L_spow10.1884
L_sdivn.1889 : 
	sub	r6 r6 r7
	bgt	r0 r6 L_else.23861
	addi	r8 r8 1
	jump	L_sdivn.1889
L_else.23861 : 
	add	r6 r0 r8
	return
L_divpow10.1893 : 
	call	L_pow10.1887
	addi	r8 r0 0
	add	r7 r0 r6
	add	r6 r0 r9
	jump	L_sdivn.1889
L_sprint_int.1896 : 
	bne	r11 r0 L_else.23865
	addi	r6 r10 48
	jump	min_caml_print_char
L_else.23865 : 
	bne	r12 r0 L_else.23867
	add	r9 r0 r10
	add	r6 r0 r11
	call	L_divpow10.1893
	add	r9 r0 r6
	addi	r6 r9 48
	call	min_caml_print_char
	add	r6 r0 r11
	call	L_pow10.1887
	mul	r6 r9 r6
	sub	r10 r10 r6
	addi	r11 r11 -1
	addi	r12 r0 0
	jump	L_sprint_int.1896
L_else.23867 : 
	add	r9 r0 r10
	add	r6 r0 r11
	call	L_divpow10.1893
	add	r9 r0 r6
	bne	r9 r0 L_else.23869
	addi	r11 r11 -1
	jump	L_sprint_int.1896
L_else.23869 : 
	addi	r6 r9 48
	call	min_caml_print_char
	add	r6 r0 r11
	call	L_pow10.1887
	mul	r6 r9 r6
	sub	r10 r10 r6
	addi	r11 r11 -1
	addi	r12 r0 0
	jump	L_sprint_int.1896
L_print_int.1900 : 
	addi	r11 r0 9
	addi	r12 r0 1
	jump	L_sprint_int.1896
L_read_screen_settings.2029 : 
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
	call	L_cos.1880
	fadd	f10 f0 f2
	fadd	f2 f0 f11
	call	L_sin.1878
	fadd	f11 f0 f2
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f13 f2 f3
	fadd	f2 f0 f13
	call	L_cos.1880
	fadd	f12 f0 f2
	fadd	f2 f0 f13
	call	L_sin.1878
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
	fmul	f2 f3 f12
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
	return
L_read_light.2031 : 
	call	min_caml_read_int
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f10 f2 f3
	fadd	f2 f0 f10
	call	L_sin.1878
	fsub	f2 f0 f2
	fsti	f2 r0 1040
	call	min_caml_read_float
	fldi	f3 r0 26
	fmul	f11 f2 f3
	fadd	f2 f0 f10
	call	L_cos.1880
	fadd	f10 f0 f2
	fadd	f2 f0 f11
	call	L_sin.1878
	fmul	f2 f10 f2
	fsti	f2 r0 1039
	fadd	f2 f0 f11
	call	L_cos.1880
	fmul	f2 f10 f2
	fsti	f2 r0 1041
	call	min_caml_read_float
	fsti	f2 r0 1081
	return
L_rotate_quadratic_matrix.2033 : 
	fldi	f2 r7 0
	call	L_cos.1880
	fadd	f10 f0 f2
	fldi	f2 r7 0
	call	L_sin.1878
	fadd	f11 f0 f2
	fldi	f2 r7 1
	call	L_cos.1880
	fadd	f12 f0 f2
	fldi	f2 r7 1
	call	L_sin.1878
	fadd	f13 f0 f2
	fldi	f2 r7 2
	call	L_cos.1880
	fadd	f14 f0 f2
	fldi	f2 r7 2
	call	L_sin.1878
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
	fldi	f4 r0 30
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
	fldi	f4 r0 30
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
	fldi	f4 r0 30
	fmul	f3 f7 f9
	fmul	f2 f6 f8
	fadd	f3 f3 f2
	fmul	f2 f5 f11
	fadd	f2 f3 f2
	fmul	f2 f4 f2
	fsti	f2 r7 2
	return
L_read_nth_object.2036 : 
	call	min_caml_read_int
	add	r10 r0 r6
	bne	r10 r5 L_else.23876
	addi	r6 r0 0
	return
L_else.23876 : 
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
	fbgt	f0 f2 L_else.23879
	addi	r16 r0 0
	jump	L_cont.23877
L_else.23879 : 
	addi	r16 r0 1
L_cont.23877 : 
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
	bne	r13 r0 L_else.23882
	jump	L_cont.23880
L_else.23882 : 
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
L_cont.23880 : 
	addi	r6 r0 2
	bne	r11 r6 L_else.23885
	addi	r20 r0 1
	jump	L_cont.23883
L_else.23885 : 
	add	r20 r0 r16
L_cont.23883 : 
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
	bne	r11 r6 L_else.23888
	fldi	f3 r14 0
	fbne	f3 f0 L_else.23894
	fldi	f2 r0 29
	jump	L_cont.23892
L_else.23894 : 
	fbne	f3 f0 L_else.23913
	fldi	f2 r0 29
	jump	L_cont.23911
L_else.23913 : 
	fbgt	f3 f0 L_else.23915
	fldi	f2 r0 31
	jump	L_cont.23911
L_else.23915 : 
	fldi	f2 r0 12
L_cont.23911 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont.23892 : 
	fsti	f2 r14 0
	fldi	f2 r14 1
	fbne	f2 f0 L_else.23897
	fldi	f2 r0 29
	jump	L_cont.23895
L_else.23897 : 
	fbne	f2 f0 L_else.23908
	fldi	f3 r0 29
	jump	L_cont.23906
L_else.23908 : 
	fbgt	f2 f0 L_else.23910
	fldi	f3 r0 31
	jump	L_cont.23906
L_else.23910 : 
	fldi	f3 r0 12
L_cont.23906 : 
	fmul	f2 f2 f2
	fdiv	f2 f3 f2
L_cont.23895 : 
	fsti	f2 r14 1
	fldi	f3 r14 2
	fbne	f3 f0 L_else.23900
	fldi	f2 r0 29
	jump	L_cont.23898
L_else.23900 : 
	fbne	f3 f0 L_else.23903
	fldi	f2 r0 29
	jump	L_cont.23901
L_else.23903 : 
	fbgt	f3 f0 L_else.23905
	fldi	f2 r0 31
	jump	L_cont.23901
L_else.23905 : 
	fldi	f2 r0 12
L_cont.23901 : 
	fmul	f3 f3 f3
	fdiv	f2 f2 f3
L_cont.23898 : 
	fsti	f2 r14 2
	jump	L_cont.23886
L_else.23888 : 
	addi	r6 r0 2
	bne	r11 r6 L_else.23917
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
	fbne	f3 f0 L_else.23920
	fldi	f3 r0 12
	jump	L_cont.23918
L_else.23920 : 
	bne	r6 r0 L_else.23922
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont.23918
L_else.23922 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont.23918 : 
	fldi	f2 r14 0
	fmul	f2 f2 f3
	fsti	f2 r14 0
	fldi	f2 r14 1
	fmul	f2 f2 f3
	fsti	f2 r14 1
	fldi	f2 r14 2
	fmul	f2 f2 f3
	fsti	f2 r14 2
	jump	L_cont.23886
L_else.23917 : 
L_cont.23886 : 
	bne	r13 r0 L_else.23891
	jump	L_cont.23889
L_else.23891 : 
	add	r6 r0 r14
	add	r7 r0 r19
	call	L_rotate_quadratic_matrix.2033
L_cont.23889 : 
	addi	r6 r0 1
	return
L_read_object.2038 : 
	addi	r6 r0 60
	bgt	r6 r21 L_else.23925
	return
L_else.23925 : 
	add	r8 r0 r21
	call	L_read_nth_object.2036
	bne	r6 r0 L_else.23927
	sti	r21 r0 1072
	return
L_else.23927 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else.23929
	return
L_else.23929 : 
	add	r8 r0 r21
	call	L_read_nth_object.2036
	bne	r6 r0 L_else.23931
	sti	r21 r0 1072
	return
L_else.23931 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else.23933
	return
L_else.23933 : 
	add	r8 r0 r21
	call	L_read_nth_object.2036
	bne	r6 r0 L_else.23935
	sti	r21 r0 1072
	return
L_else.23935 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else.23937
	return
L_else.23937 : 
	add	r8 r0 r21
	call	L_read_nth_object.2036
	bne	r6 r0 L_else.23939
	sti	r21 r0 1072
	return
L_else.23939 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else.23941
	return
L_else.23941 : 
	add	r8 r0 r21
	call	L_read_nth_object.2036
	bne	r6 r0 L_else.23943
	sti	r21 r0 1072
	return
L_else.23943 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else.23945
	return
L_else.23945 : 
	add	r8 r0 r21
	call	L_read_nth_object.2036
	bne	r6 r0 L_else.23947
	sti	r21 r0 1072
	return
L_else.23947 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else.23949
	return
L_else.23949 : 
	add	r8 r0 r21
	call	L_read_nth_object.2036
	bne	r6 r0 L_else.23951
	sti	r21 r0 1072
	return
L_else.23951 : 
	addi	r21 r21 1
	addi	r6 r0 60
	bgt	r6 r21 L_else.23953
	return
L_else.23953 : 
	add	r8 r0 r21
	call	L_read_nth_object.2036
	bne	r6 r0 L_else.23955
	sti	r21 r0 1072
	return
L_else.23955 : 
	addi	r21 r21 1
	jump	L_read_object.2038
L_read_net_item.2042 : 
	call	min_caml_read_int
	add	r8 r0 r6
	bne	r8 r5 L_else.23958
	addi	r6 r7 1
	addi	r7 r0 -1
	jump	min_caml_create_array
L_else.23958 : 
	addi	r6 r7 1
	sti	r8 r2 0
	sti	r7 r2 1
	add	r7 r0 r6
	addi	r2 r2 2
	call	L_read_net_item.2042
	addi	r2 r2 -2
	ldi	r8 r2 0
	ldi	r7 r2 1
	add	r1 r6 r7
	sti	r8 r1 0
	return
L_read_or_network.2044 : 
	addi	r7 r0 0
	call	L_read_net_item.2042
	add	r7 r0 r6
	ldi	r6 r7 0
	bne	r6 r5 L_else.23961
	addi	r6 r10 1
	jump	min_caml_create_array
L_else.23961 : 
	addi	r6 r10 1
	sti	r7 r2 0
	sti	r10 r2 1
	add	r10 r0 r6
	addi	r2 r2 2
	call	L_read_or_network.2044
	addi	r2 r2 -2
	ldi	r7 r2 0
	ldi	r10 r2 1
	add	r1 r6 r10
	sti	r7 r1 0
	return
L_read_and_network.2046 : 
	addi	r7 r0 0
	call	L_read_net_item.2042
	ldi	r7 r6 0
	bne	r7 r5 L_else.23964
	return
L_else.23964 : 
	addi	r11 r0 1083
	add	r1 r11 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item.2042
	ldi	r7 r6 0
	bne	r7 r5 L_else.23966
	return
L_else.23966 : 
	add	r1 r11 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item.2042
	ldi	r7 r6 0
	bne	r7 r5 L_else.23968
	return
L_else.23968 : 
	add	r1 r11 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item.2042
	ldi	r7 r6 0
	bne	r7 r5 L_else.23970
	return
L_else.23970 : 
	add	r1 r11 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item.2042
	ldi	r7 r6 0
	bne	r7 r5 L_else.23972
	return
L_else.23972 : 
	add	r1 r11 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item.2042
	ldi	r7 r6 0
	bne	r7 r5 L_else.23974
	return
L_else.23974 : 
	add	r1 r11 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item.2042
	ldi	r7 r6 0
	bne	r7 r5 L_else.23976
	return
L_else.23976 : 
	add	r1 r11 r10
	sti	r6 r1 0
	addi	r10 r10 1
	addi	r7 r0 0
	call	L_read_net_item.2042
	ldi	r7 r6 0
	bne	r7 r5 L_else.23978
	return
L_else.23978 : 
	add	r1 r11 r10
	sti	r6 r1 0
	addi	r10 r10 1
	jump	L_read_and_network.2046
L_setup_rect_table.2134 : 
	addi	r6 r0 6
	fldi	f2 r0 29
	call	min_caml_create_float_array
	fldi	f2 r8 0
	fbne	f2 f0 L_else.23982
	fldi	f2 r0 29
	fsti	f2 r6 1
	jump	L_cont.23980
L_else.23982 : 
	ldi	r9 r10 6
	fldi	f2 r8 0
	fbgt	f0 f2 L_else.24003
	addi	r7 r0 0
	jump	L_cont.24001
L_else.24003 : 
	addi	r7 r0 1
L_cont.24001 : 
	xor	r9 r9 r7
	ldi	r7 r10 4
	fldi	f2 r7 0
	bne	r9 r0 L_else.24006
	fsub	f2 f0 f2
	jump	L_cont.24004
L_else.24006 : 
L_cont.24004 : 
	fsti	f2 r6 0
	fldi	f3 r0 12
	fldi	f2 r8 0
	fdiv	f2 f3 f2
	fsti	f2 r6 1
L_cont.23980 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else.23985
	fldi	f2 r0 29
	fsti	f2 r6 3
	jump	L_cont.23983
L_else.23985 : 
	ldi	r7 r10 6
	fldi	f2 r8 1
	fbgt	f0 f2 L_else.23997
	addi	r9 r0 0
	jump	L_cont.23995
L_else.23997 : 
	addi	r9 r0 1
L_cont.23995 : 
	xor	r7 r7 r9
	ldi	r9 r10 4
	fldi	f2 r9 1
	bne	r7 r0 L_else.24000
	fsub	f2 f0 f2
	jump	L_cont.23998
L_else.24000 : 
L_cont.23998 : 
	fsti	f2 r6 2
	fldi	f2 r0 12
	fldi	f3 r8 1
	fdiv	f2 f2 f3
	fsti	f2 r6 3
L_cont.23983 : 
	fldi	f2 r8 2
	fbne	f2 f0 L_else.23988
	fldi	f2 r0 29
	fsti	f2 r6 5
	jump	L_cont.23986
L_else.23988 : 
	ldi	r9 r10 6
	fldi	f2 r8 2
	fbgt	f0 f2 L_else.23991
	addi	r7 r0 0
	jump	L_cont.23989
L_else.23991 : 
	addi	r7 r0 1
L_cont.23989 : 
	xor	r9 r9 r7
	ldi	r7 r10 4
	fldi	f2 r7 2
	bne	r9 r0 L_else.23994
	fsub	f2 f0 f2
	jump	L_cont.23992
L_else.23994 : 
L_cont.23992 : 
	fsti	f2 r6 4
	fldi	f2 r0 12
	fldi	f3 r8 2
	fdiv	f2 f2 f3
	fsti	f2 r6 5
L_cont.23986 : 
	return
L_setup_surface_table.2137 : 
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
	fbgt	f3 f0 L_else.24010
	fldi	f2 r0 29
	fsti	f2 r6 0
	jump	L_cont.24008
L_else.24010 : 
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
L_cont.24008 : 
	return
L_setup_second_table.2140 : 
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
	bne	r7 r0 L_else.24014
	jump	L_cont.24012
L_else.24014 : 
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
L_cont.24012 : 
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
	bne	r7 r0 L_else.24017
	fsti	f8 r6 1
	fsti	f7 r6 2
	fsti	f6 r6 3
	jump	L_cont.24015
L_else.24017 : 
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
L_cont.24015 : 
	fbne	f2 f0 L_else.24020
	jump	L_cont.24018
L_else.24020 : 
	fldi	f3 r0 12
	fdiv	f2 f3 f2
	fsti	f2 r6 4
L_cont.24018 : 
	return
L_iter_setup_dirvec_constants.2143 : 
	bgt	r0 r12 L_else.24023
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r6 r10 1
	bne	r6 r4 L_else.24026
	call	L_setup_rect_table.2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont.24024
L_else.24026 : 
	addi	r7 r0 2
	bne	r6 r7 L_else.24049
	call	L_setup_surface_table.2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont.24024
L_else.24049 : 
	call	L_setup_second_table.2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont.24024 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else.24028
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.24031
	call	L_setup_rect_table.2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.24029
L_else.24031 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.24047
	call	L_setup_surface_table.2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.24029
L_else.24047 : 
	call	L_setup_second_table.2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont.24029 : 
	addi	r13 r13 -1
	bgt	r0 r13 L_else.24033
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r6 r10 1
	bne	r6 r4 L_else.24036
	call	L_setup_rect_table.2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.24034
L_else.24036 : 
	addi	r7 r0 2
	bne	r6 r7 L_else.24045
	call	L_setup_surface_table.2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.24034
L_else.24045 : 
	call	L_setup_second_table.2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont.24034 : 
	addi	r13 r13 -1
	bgt	r0 r13 L_else.24038
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.24041
	call	L_setup_rect_table.2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.24039
L_else.24041 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.24043
	call	L_setup_surface_table.2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.24039
L_else.24043 : 
	call	L_setup_second_table.2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont.24039 : 
	addi	r12 r13 -1
	jump	L_iter_setup_dirvec_constants.2143
L_else.24038 : 
	return
L_else.24033 : 
	return
L_else.24028 : 
	return
L_else.24023 : 
	return
L_setup_dirvec_constants.2146 : 
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else.24052
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.24055
	call	L_setup_rect_table.2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.24053
L_else.24055 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.24071
	call	L_setup_surface_table.2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.24053
L_else.24071 : 
	call	L_setup_second_table.2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont.24053 : 
	addi	r13 r13 -1
	bgt	r0 r13 L_else.24057
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r6 r10 1
	bne	r6 r4 L_else.24060
	call	L_setup_rect_table.2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.24058
L_else.24060 : 
	addi	r7 r0 2
	bne	r6 r7 L_else.24069
	call	L_setup_surface_table.2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.24058
L_else.24069 : 
	call	L_setup_second_table.2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont.24058 : 
	addi	r12 r13 -1
	bgt	r0 r12 L_else.24062
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.24065
	call	L_setup_rect_table.2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont.24063
L_else.24065 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.24067
	call	L_setup_surface_table.2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont.24063
L_else.24067 : 
	call	L_setup_second_table.2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont.24063 : 
	addi	r12 r12 -1
	jump	L_iter_setup_dirvec_constants.2143
L_else.24062 : 
	return
L_else.24057 : 
	return
L_else.24052 : 
	return
L_setup_startp_constants.2148 : 
	bgt	r0 r7 L_else.24074
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
	bne	r9 r8 L_else.24077
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
	jump	L_cont.24075
L_else.24077 : 
	addi	r8 r0 2
	bgt	r9 r8 L_else.24079
	jump	L_cont.24075
L_else.24079 : 
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
	bne	r8 r0 L_else.24082
	jump	L_cont.24080
L_else.24082 : 
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
L_cont.24080 : 
	addi	r8 r0 3
	bne	r9 r8 L_else.24085
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.24083
L_else.24085 : 
L_cont.24083 : 
	fsti	f2 r10 3
L_cont.24075 : 
	addi	r7 r7 -1
	jump	L_setup_startp_constants.2148
L_else.24074 : 
	return
L_check_all_inside.2173 : 
	add	r1 r7 r6
	ldi	r8 r1 0
	bne	r8 r5 L_else.24088
	addi	r6 r0 1
	return
L_else.24088 : 
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
	bne	r9 r4 L_else.24091
	fbgt	f0 f8 L_else.24213
	fadd	f5 f0 f8
	jump	L_cont.24211
L_else.24213 : 
	fsub	f5 f0 f8
L_cont.24211 : 
	ldi	r8 r10 4
	fldi	f8 r8 0
	fbgt	f8 f5 L_else.24216
	addi	r8 r0 0
	jump	L_cont.24214
L_else.24216 : 
	fbgt	f0 f7 L_else.24221
	fadd	f5 f0 f7
	jump	L_cont.24219
L_else.24221 : 
	fsub	f5 f0 f7
L_cont.24219 : 
	ldi	r8 r10 4
	fldi	f7 r8 1
	fbgt	f7 f5 L_else.24223
	addi	r8 r0 0
	jump	L_cont.24214
L_else.24223 : 
	fbgt	f0 f6 L_else.24226
	fadd	f5 f0 f6
	jump	L_cont.24224
L_else.24226 : 
	fsub	f5 f0 f6
L_cont.24224 : 
	ldi	r8 r10 4
	fldi	f6 r8 2
	fbgt	f6 f5 L_else.24228
	addi	r8 r0 0
	jump	L_cont.24214
L_else.24228 : 
	addi	r8 r0 1
L_cont.24214 : 
	bne	r8 r0 L_else.24218
	ldi	r8 r10 6
	sub	r8 r4 r8
	jump	L_cont.24089
L_else.24218 : 
	ldi	r8 r10 6
	jump	L_cont.24089
L_else.24091 : 
	addi	r8 r0 2
	bne	r9 r8 L_else.24230
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
	fbgt	f0 f5 L_else.24233
	addi	r8 r0 0
	jump	L_cont.24231
L_else.24233 : 
	addi	r8 r0 1
L_cont.24231 : 
	xor	r8 r9 r8
	sub	r8 r4 r8
	jump	L_cont.24089
L_else.24230 : 
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
	bne	r8 r0 L_else.24236
	jump	L_cont.24234
L_else.24236 : 
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
L_cont.24234 : 
	ldi	r9 r10 1
	addi	r8 r0 3
	bne	r9 r8 L_else.24239
	fldi	f6 r0 12
	fsub	f5 f5 f6
	jump	L_cont.24237
L_else.24239 : 
L_cont.24237 : 
	ldi	r9 r10 6
	fbgt	f0 f5 L_else.24242
	addi	r8 r0 0
	jump	L_cont.24240
L_else.24242 : 
	addi	r8 r0 1
L_cont.24240 : 
	xor	r8 r9 r8
	sub	r8 r4 r8
L_cont.24089 : 
	bne	r8 r0 L_else.24093
	addi	r10 r6 1
	add	r1 r7 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else.24095
	addi	r6 r0 1
	return
L_else.24095 : 
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
	bne	r6 r4 L_else.24098
	fbgt	f0 f7 L_else.24181
	fadd	f5 f0 f7
	jump	L_cont.24179
L_else.24181 : 
	fsub	f5 f0 f7
L_cont.24179 : 
	ldi	r6 r9 4
	fldi	f7 r6 0
	fbgt	f7 f5 L_else.24184
	addi	r6 r0 0
	jump	L_cont.24182
L_else.24184 : 
	fbgt	f0 f8 L_else.24189
	fadd	f5 f0 f8
	jump	L_cont.24187
L_else.24189 : 
	fsub	f5 f0 f8
L_cont.24187 : 
	ldi	r6 r9 4
	fldi	f7 r6 1
	fbgt	f7 f5 L_else.24191
	addi	r6 r0 0
	jump	L_cont.24182
L_else.24191 : 
	fbgt	f0 f6 L_else.24194
	jump	L_cont.24192
L_else.24194 : 
	fsub	f6 f0 f6
L_cont.24192 : 
	ldi	r6 r9 4
	fldi	f5 r6 2
	fbgt	f5 f6 L_else.24196
	addi	r6 r0 0
	jump	L_cont.24182
L_else.24196 : 
	addi	r6 r0 1
L_cont.24182 : 
	bne	r6 r0 L_else.24186
	ldi	r6 r9 6
	sub	r6 r4 r6
	jump	L_cont.24096
L_else.24186 : 
	ldi	r6 r9 6
	jump	L_cont.24096
L_else.24098 : 
	addi	r8 r0 2
	bne	r6 r8 L_else.24198
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
	fbgt	f0 f5 L_else.24201
	addi	r6 r0 0
	jump	L_cont.24199
L_else.24201 : 
	addi	r6 r0 1
L_cont.24199 : 
	xor	r6 r8 r6
	sub	r6 r4 r6
	jump	L_cont.24096
L_else.24198 : 
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
	bne	r6 r0 L_else.24204
	jump	L_cont.24202
L_else.24204 : 
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
L_cont.24202 : 
	ldi	r8 r9 1
	addi	r6 r0 3
	bne	r8 r6 L_else.24207
	fldi	f6 r0 12
	fsub	f5 f5 f6
	jump	L_cont.24205
L_else.24207 : 
L_cont.24205 : 
	ldi	r8 r9 6
	fbgt	f0 f5 L_else.24210
	addi	r6 r0 0
	jump	L_cont.24208
L_else.24210 : 
	addi	r6 r0 1
L_cont.24208 : 
	xor	r6 r8 r6
	sub	r6 r4 r6
L_cont.24096 : 
	bne	r6 r0 L_else.24100
	addi	r10 r10 1
	add	r1 r7 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else.24102
	addi	r6 r0 1
	return
L_else.24102 : 
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
	bne	r6 r4 L_else.24105
	fbgt	f0 f7 L_else.24149
	fadd	f5 f0 f7
	jump	L_cont.24147
L_else.24149 : 
	fsub	f5 f0 f7
L_cont.24147 : 
	ldi	r6 r8 4
	fldi	f7 r6 0
	fbgt	f7 f5 L_else.24152
	addi	r6 r0 0
	jump	L_cont.24150
L_else.24152 : 
	fbgt	f0 f8 L_else.24157
	fadd	f5 f0 f8
	jump	L_cont.24155
L_else.24157 : 
	fsub	f5 f0 f8
L_cont.24155 : 
	ldi	r6 r8 4
	fldi	f7 r6 1
	fbgt	f7 f5 L_else.24159
	addi	r6 r0 0
	jump	L_cont.24150
L_else.24159 : 
	fbgt	f0 f6 L_else.24162
	jump	L_cont.24160
L_else.24162 : 
	fsub	f6 f0 f6
L_cont.24160 : 
	ldi	r6 r8 4
	fldi	f5 r6 2
	fbgt	f5 f6 L_else.24164
	addi	r6 r0 0
	jump	L_cont.24150
L_else.24164 : 
	addi	r6 r0 1
L_cont.24150 : 
	bne	r6 r0 L_else.24154
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont.24103
L_else.24154 : 
	ldi	r6 r8 6
	jump	L_cont.24103
L_else.24105 : 
	addi	r9 r0 2
	bne	r6 r9 L_else.24166
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
	fbgt	f0 f5 L_else.24169
	addi	r6 r0 0
	jump	L_cont.24167
L_else.24169 : 
	addi	r6 r0 1
L_cont.24167 : 
	xor	r6 r8 r6
	sub	r6 r4 r6
	jump	L_cont.24103
L_else.24166 : 
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
	bne	r6 r0 L_else.24172
	jump	L_cont.24170
L_else.24172 : 
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
L_cont.24170 : 
	ldi	r9 r8 1
	addi	r6 r0 3
	bne	r9 r6 L_else.24175
	fldi	f6 r0 12
	fsub	f5 f5 f6
	jump	L_cont.24173
L_else.24175 : 
L_cont.24173 : 
	ldi	r8 r8 6
	fbgt	f0 f5 L_else.24178
	addi	r6 r0 0
	jump	L_cont.24176
L_else.24178 : 
	addi	r6 r0 1
L_cont.24176 : 
	xor	r6 r8 r6
	sub	r6 r4 r6
L_cont.24103 : 
	bne	r6 r0 L_else.24107
	addi	r10 r10 1
	add	r1 r7 r10
	ldi	r6 r1 0
	bne	r6 r5 L_else.24109
	addi	r6 r0 1
	return
L_else.24109 : 
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
	bne	r6 r4 L_else.24112
	fbgt	f0 f5 L_else.24117
	jump	L_cont.24115
L_else.24117 : 
	fsub	f5 f0 f5
L_cont.24115 : 
	ldi	r6 r8 4
	fldi	f7 r6 0
	fbgt	f7 f5 L_else.24120
	addi	r6 r0 0
	jump	L_cont.24118
L_else.24120 : 
	fbgt	f0 f8 L_else.24125
	fadd	f5 f0 f8
	jump	L_cont.24123
L_else.24125 : 
	fsub	f5 f0 f8
L_cont.24123 : 
	ldi	r6 r8 4
	fldi	f7 r6 1
	fbgt	f7 f5 L_else.24127
	addi	r6 r0 0
	jump	L_cont.24118
L_else.24127 : 
	fbgt	f0 f6 L_else.24130
	jump	L_cont.24128
L_else.24130 : 
	fsub	f6 f0 f6
L_cont.24128 : 
	ldi	r6 r8 4
	fldi	f5 r6 2
	fbgt	f5 f6 L_else.24132
	addi	r6 r0 0
	jump	L_cont.24118
L_else.24132 : 
	addi	r6 r0 1
L_cont.24118 : 
	bne	r6 r0 L_else.24122
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont.24110
L_else.24122 : 
	ldi	r6 r8 6
	jump	L_cont.24110
L_else.24112 : 
	addi	r9 r0 2
	bne	r6 r9 L_else.24134
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
	fbgt	f0 f5 L_else.24137
	addi	r8 r0 0
	jump	L_cont.24135
L_else.24137 : 
	addi	r8 r0 1
L_cont.24135 : 
	xor	r6 r6 r8
	sub	r6 r4 r6
	jump	L_cont.24110
L_else.24134 : 
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
	bne	r6 r0 L_else.24140
	fadd	f5 f0 f7
	jump	L_cont.24138
L_else.24140 : 
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
L_cont.24138 : 
	ldi	r9 r8 1
	addi	r6 r0 3
	bne	r9 r6 L_else.24143
	fldi	f6 r0 12
	fsub	f5 f5 f6
	jump	L_cont.24141
L_else.24143 : 
L_cont.24141 : 
	ldi	r6 r8 6
	fbgt	f0 f5 L_else.24146
	addi	r8 r0 0
	jump	L_cont.24144
L_else.24146 : 
	addi	r8 r0 1
L_cont.24144 : 
	xor	r6 r6 r8
	sub	r6 r4 r6
L_cont.24110 : 
	bne	r6 r0 L_else.24114
	addi	r6 r10 1
	jump	L_check_all_inside.2173
L_else.24114 : 
	addi	r6 r0 0
	return
L_else.24107 : 
	addi	r6 r0 0
	return
L_else.24100 : 
	addi	r6 r0 0
	return
L_else.24093 : 
	addi	r6 r0 0
	return
L_shadow_check_and_group.2179 : 
	ldi	r6 r11 0
	bne	r6 r5 L_else.24245
	addi	r6 r0 0
	return
L_else.24245 : 
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
	bne	r7 r4 L_else.24248
	ldi	r7 r13 0
	fldi	f2 r9 0
	fsub	f2 f2 f7
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.24379
	jump	L_cont.24377
L_else.24379 : 
	fsub	f2 f0 f2
L_cont.24377 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24382
	addi	r6 r0 0
	jump	L_cont.24380
L_else.24382 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.24419
	jump	L_cont.24417
L_else.24419 : 
	fsub	f2 f0 f2
L_cont.24417 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24421
	addi	r6 r0 0
	jump	L_cont.24380
L_else.24421 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else.24424
	addi	r6 r0 1
	jump	L_cont.24422
L_else.24424 : 
	addi	r6 r0 0
L_cont.24422 : 
	sub	r6 r4 r6
L_cont.24380 : 
	bne	r6 r0 L_else.24384
	fldi	f2 r9 2
	fsub	f3 f2 f5
	fldi	f2 r9 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.24387
	jump	L_cont.24385
L_else.24387 : 
	fsub	f2 f0 f2
L_cont.24385 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24390
	addi	r6 r0 0
	jump	L_cont.24388
L_else.24390 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.24411
	jump	L_cont.24409
L_else.24411 : 
	fsub	f2 f0 f2
L_cont.24409 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24413
	addi	r6 r0 0
	jump	L_cont.24388
L_else.24413 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else.24416
	addi	r6 r0 1
	jump	L_cont.24414
L_else.24416 : 
	addi	r6 r0 0
L_cont.24414 : 
	sub	r6 r4 r6
L_cont.24388 : 
	bne	r6 r0 L_else.24392
	fldi	f2 r9 4
	fsub	f2 f2 f9
	fldi	f3 r9 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.24395
	jump	L_cont.24393
L_else.24395 : 
	fsub	f2 f0 f2
L_cont.24393 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24398
	addi	r6 r0 0
	jump	L_cont.24396
L_else.24398 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.24403
	jump	L_cont.24401
L_else.24403 : 
	fsub	f2 f0 f2
L_cont.24401 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24405
	addi	r6 r0 0
	jump	L_cont.24396
L_else.24405 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else.24408
	addi	r6 r0 1
	jump	L_cont.24406
L_else.24408 : 
	addi	r6 r0 0
L_cont.24406 : 
	sub	r6 r4 r6
L_cont.24396 : 
	bne	r6 r0 L_else.24400
	addi	r6 r0 0
	jump	L_cont.24246
L_else.24400 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.24246
L_else.24392 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont.24246
L_else.24384 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.24246
L_else.24248 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.24426
	fldi	f2 r9 0
	fbgt	f0 f2 L_else.24428
	addi	r6 r0 0
	jump	L_cont.24246
L_else.24428 : 
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
	jump	L_cont.24246
L_else.24426 : 
	fldi	f6 r9 0
	fbne	f6 f0 L_else.24430
	addi	r6 r0 0
	jump	L_cont.24246
L_else.24430 : 
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
	bne	r6 r0 L_else.24433
	jump	L_cont.24431
L_else.24433 : 
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
L_cont.24431 : 
	ldi	r7 r10 1
	addi	r6 r0 3
	bne	r7 r6 L_else.24436
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.24434
L_else.24436 : 
L_cont.24434 : 
	fmul	f3 f8 f8
	fmul	f2 f6 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.24438
	addi	r6 r0 0
	jump	L_cont.24246
L_else.24438 : 
	ldi	r6 r10 6
	bne	r6 r0 L_else.24441
	fsqrt	f2 f2
	fsub	f3 f8 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.24439
L_else.24441 : 
	fsqrt	f2 f2
	fadd	f3 f8 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.24439 : 
	addi	r6 r0 1
L_cont.24246 : 
	fldi	f2 r0 1073
	bne	r6 r0 L_else.24250
	ldi	r6 r8 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else.24252
	addi	r6 r0 0
	return
L_else.24252 : 
	addi	r11 r11 1
	jump	L_shadow_check_and_group.2179
L_else.24250 : 
	fldi	f3 r0 32
	fbgt	f3 f2 L_else.24254
	ldi	r6 r8 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else.24256
	addi	r6 r0 0
	return
L_else.24256 : 
	addi	r11 r11 1
	jump	L_shadow_check_and_group.2179
L_else.24254 : 
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
	bne	r6 r5 L_else.24259
	addi	r6 r0 1
	jump	L_cont.24257
L_else.24259 : 
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
	bne	r6 r4 L_else.24264
	fbgt	f0 f3 L_else.24347
	fadd	f2 f0 f3
	jump	L_cont.24345
L_else.24347 : 
	fsub	f2 f0 f3
L_cont.24345 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24350
	addi	r6 r0 0
	jump	L_cont.24348
L_else.24350 : 
	fbgt	f0 f4 L_else.24355
	fadd	f2 f0 f4
	jump	L_cont.24353
L_else.24355 : 
	fsub	f2 f0 f4
L_cont.24353 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24357
	addi	r6 r0 0
	jump	L_cont.24348
L_else.24357 : 
	fbgt	f0 f5 L_else.24360
	fadd	f2 f0 f5
	jump	L_cont.24358
L_else.24360 : 
	fsub	f2 f0 f5
L_cont.24358 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24362
	addi	r6 r0 0
	jump	L_cont.24348
L_else.24362 : 
	addi	r6 r0 1
L_cont.24348 : 
	bne	r6 r0 L_else.24352
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont.24262
L_else.24352 : 
	ldi	r6 r8 6
	jump	L_cont.24262
L_else.24264 : 
	addi	r7 r0 2
	bne	r6 r7 L_else.24364
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
	fbgt	f0 f2 L_else.24367
	addi	r6 r0 0
	jump	L_cont.24365
L_else.24367 : 
	addi	r6 r0 1
L_cont.24365 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont.24262
L_else.24364 : 
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
	bne	r6 r0 L_else.24370
	jump	L_cont.24368
L_else.24370 : 
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
L_cont.24368 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else.24373
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.24371
L_else.24373 : 
L_cont.24371 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else.24376
	addi	r6 r0 0
	jump	L_cont.24374
L_else.24376 : 
	addi	r6 r0 1
L_cont.24374 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont.24262 : 
	bne	r6 r0 L_else.24266
	ldi	r6 r12 1
	bne	r6 r5 L_else.24268
	addi	r6 r0 1
	jump	L_cont.24257
L_else.24268 : 
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
	bne	r6 r4 L_else.24271
	fbgt	f0 f3 L_else.24315
	fadd	f2 f0 f3
	jump	L_cont.24313
L_else.24315 : 
	fsub	f2 f0 f3
L_cont.24313 : 
	ldi	r6 r7 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24318
	addi	r6 r0 0
	jump	L_cont.24316
L_else.24318 : 
	fbgt	f0 f4 L_else.24323
	fadd	f2 f0 f4
	jump	L_cont.24321
L_else.24323 : 
	fsub	f2 f0 f4
L_cont.24321 : 
	ldi	r6 r7 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24325
	addi	r6 r0 0
	jump	L_cont.24316
L_else.24325 : 
	fbgt	f0 f5 L_else.24328
	fadd	f2 f0 f5
	jump	L_cont.24326
L_else.24328 : 
	fsub	f2 f0 f5
L_cont.24326 : 
	ldi	r6 r7 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24330
	addi	r6 r0 0
	jump	L_cont.24316
L_else.24330 : 
	addi	r6 r0 1
L_cont.24316 : 
	bne	r6 r0 L_else.24320
	ldi	r6 r7 6
	sub	r6 r4 r6
	jump	L_cont.24269
L_else.24320 : 
	ldi	r6 r7 6
	jump	L_cont.24269
L_else.24271 : 
	addi	r8 r0 2
	bne	r6 r8 L_else.24332
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
	fbgt	f0 f2 L_else.24335
	addi	r6 r0 0
	jump	L_cont.24333
L_else.24335 : 
	addi	r6 r0 1
L_cont.24333 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont.24269
L_else.24332 : 
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
	bne	r6 r0 L_else.24338
	jump	L_cont.24336
L_else.24338 : 
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
L_cont.24336 : 
	ldi	r8 r7 1
	addi	r6 r0 3
	bne	r8 r6 L_else.24341
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.24339
L_else.24341 : 
L_cont.24339 : 
	ldi	r7 r7 6
	fbgt	f0 f2 L_else.24344
	addi	r6 r0 0
	jump	L_cont.24342
L_else.24344 : 
	addi	r6 r0 1
L_cont.24342 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont.24269 : 
	bne	r6 r0 L_else.24273
	ldi	r6 r12 2
	bne	r6 r5 L_else.24275
	addi	r6 r0 1
	jump	L_cont.24257
L_else.24275 : 
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
	bne	r6 r4 L_else.24278
	fbgt	f0 f2 L_else.24283
	jump	L_cont.24281
L_else.24283 : 
	fsub	f2 f0 f2
L_cont.24281 : 
	ldi	r6 r7 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24286
	addi	r6 r0 0
	jump	L_cont.24284
L_else.24286 : 
	fbgt	f0 f4 L_else.24291
	fadd	f2 f0 f4
	jump	L_cont.24289
L_else.24291 : 
	fsub	f2 f0 f4
L_cont.24289 : 
	ldi	r6 r7 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24293
	addi	r6 r0 0
	jump	L_cont.24284
L_else.24293 : 
	fbgt	f0 f5 L_else.24296
	fadd	f2 f0 f5
	jump	L_cont.24294
L_else.24296 : 
	fsub	f2 f0 f5
L_cont.24294 : 
	ldi	r6 r7 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24298
	addi	r6 r0 0
	jump	L_cont.24284
L_else.24298 : 
	addi	r6 r0 1
L_cont.24284 : 
	bne	r6 r0 L_else.24288
	ldi	r6 r7 6
	sub	r6 r4 r6
	jump	L_cont.24276
L_else.24288 : 
	ldi	r6 r7 6
	jump	L_cont.24276
L_else.24278 : 
	addi	r8 r0 2
	bne	r6 r8 L_else.24300
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
	fbgt	f0 f2 L_else.24303
	addi	r7 r0 0
	jump	L_cont.24301
L_else.24303 : 
	addi	r7 r0 1
L_cont.24301 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
	jump	L_cont.24276
L_else.24300 : 
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
	bne	r6 r0 L_else.24306
	fadd	f2 f0 f3
	jump	L_cont.24304
L_else.24306 : 
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
L_cont.24304 : 
	ldi	r8 r7 1
	addi	r6 r0 3
	bne	r8 r6 L_else.24309
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.24307
L_else.24309 : 
L_cont.24307 : 
	ldi	r6 r7 6
	fbgt	f0 f2 L_else.24312
	addi	r7 r0 0
	jump	L_cont.24310
L_else.24312 : 
	addi	r7 r0 1
L_cont.24310 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
L_cont.24276 : 
	bne	r6 r0 L_else.24280
	addi	r6 r0 3
	add	r7 r0 r12
	fadd	f2 f0 f6
	fadd	f3 f0 f7
	fadd	f4 f0 f8
	call	L_check_all_inside.2173
	jump	L_cont.24257
L_else.24280 : 
	addi	r6 r0 0
	jump	L_cont.24257
L_else.24273 : 
	addi	r6 r0 0
	jump	L_cont.24257
L_else.24266 : 
	addi	r6 r0 0
L_cont.24257 : 
	bne	r6 r0 L_else.24261
	addi	r11 r11 1
	jump	L_shadow_check_and_group.2179
L_else.24261 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_group.2182 : 
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else.24444
	addi	r6 r0 0
	return
L_else.24444 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24446
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else.24448
	addi	r6 r0 0
	return
L_else.24448 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24450
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else.24452
	addi	r6 r0 0
	return
L_else.24452 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24454
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else.24456
	addi	r6 r0 0
	return
L_else.24456 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24458
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else.24460
	addi	r6 r0 0
	return
L_else.24460 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24462
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else.24464
	addi	r6 r0 0
	return
L_else.24464 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24466
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else.24468
	addi	r6 r0 0
	return
L_else.24468 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24470
	addi	r14 r14 1
	add	r1 r15 r14
	ldi	r6 r1 0
	bne	r6 r5 L_else.24472
	addi	r6 r0 0
	return
L_else.24472 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24474
	addi	r14 r14 1
	jump	L_shadow_check_one_or_group.2182
L_else.24474 : 
	addi	r6 r0 1
	return
L_else.24470 : 
	addi	r6 r0 1
	return
L_else.24466 : 
	addi	r6 r0 1
	return
L_else.24462 : 
	addi	r6 r0 1
	return
L_else.24458 : 
	addi	r6 r0 1
	return
L_else.24454 : 
	addi	r6 r0 1
	return
L_else.24450 : 
	addi	r6 r0 1
	return
L_else.24446 : 
	addi	r6 r0 1
	return
L_shadow_check_one_or_matrix.2185 : 
	add	r1 r17 r16
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else.24477
	addi	r6 r0 0
	return
L_else.24477 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.24480
	addi	r6 r0 1
	jump	L_cont.24478
L_else.24480 : 
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
	bne	r7 r4 L_else.24782
	ldi	r7 r10 0
	fldi	f2 r9 0
	fsub	f2 f2 f7
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.24820
	jump	L_cont.24818
L_else.24820 : 
	fsub	f2 f0 f2
L_cont.24818 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24823
	addi	r6 r0 0
	jump	L_cont.24821
L_else.24823 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.24860
	jump	L_cont.24858
L_else.24860 : 
	fsub	f2 f0 f2
L_cont.24858 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24862
	addi	r6 r0 0
	jump	L_cont.24821
L_else.24862 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else.24865
	addi	r6 r0 1
	jump	L_cont.24863
L_else.24865 : 
	addi	r6 r0 0
L_cont.24863 : 
	sub	r6 r4 r6
L_cont.24821 : 
	bne	r6 r0 L_else.24825
	fldi	f2 r9 2
	fsub	f3 f2 f5
	fldi	f2 r9 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.24828
	jump	L_cont.24826
L_else.24828 : 
	fsub	f2 f0 f2
L_cont.24826 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24831
	addi	r6 r0 0
	jump	L_cont.24829
L_else.24831 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.24852
	jump	L_cont.24850
L_else.24852 : 
	fsub	f2 f0 f2
L_cont.24850 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24854
	addi	r6 r0 0
	jump	L_cont.24829
L_else.24854 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else.24857
	addi	r6 r0 1
	jump	L_cont.24855
L_else.24857 : 
	addi	r6 r0 0
L_cont.24855 : 
	sub	r6 r4 r6
L_cont.24829 : 
	bne	r6 r0 L_else.24833
	fldi	f2 r9 4
	fsub	f2 f2 f9
	fldi	f3 r9 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.24836
	jump	L_cont.24834
L_else.24836 : 
	fsub	f2 f0 f2
L_cont.24834 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24839
	addi	r6 r0 0
	jump	L_cont.24837
L_else.24839 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.24844
	jump	L_cont.24842
L_else.24844 : 
	fsub	f2 f0 f2
L_cont.24842 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24846
	addi	r6 r0 0
	jump	L_cont.24837
L_else.24846 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else.24849
	addi	r6 r0 1
	jump	L_cont.24847
L_else.24849 : 
	addi	r6 r0 0
L_cont.24847 : 
	sub	r6 r4 r6
L_cont.24837 : 
	bne	r6 r0 L_else.24841
	addi	r6 r0 0
	jump	L_cont.24780
L_else.24841 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.24780
L_else.24833 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont.24780
L_else.24825 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.24780
L_else.24782 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.24867
	fldi	f2 r9 0
	fbgt	f0 f2 L_else.24869
	addi	r6 r0 0
	jump	L_cont.24780
L_else.24869 : 
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
	jump	L_cont.24780
L_else.24867 : 
	fldi	f8 r9 0
	fbne	f8 f0 L_else.24871
	addi	r6 r0 0
	jump	L_cont.24780
L_else.24871 : 
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
	bne	r6 r0 L_else.24874
	jump	L_cont.24872
L_else.24874 : 
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
L_cont.24872 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else.24877
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.24875
L_else.24877 : 
L_cont.24875 : 
	fmul	f3 f6 f6
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.24879
	addi	r6 r0 0
	jump	L_cont.24780
L_else.24879 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else.24882
	fsqrt	f2 f2
	fsub	f3 f6 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.24880
L_else.24882 : 
	fsqrt	f2 f2
	fadd	f3 f6 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.24880 : 
	addi	r6 r0 1
L_cont.24780 : 
	bne	r6 r0 L_else.24784
	addi	r6 r0 0
	jump	L_cont.24478
L_else.24784 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else.24786
	addi	r6 r0 0
	jump	L_cont.24478
L_else.24786 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else.24789
	addi	r6 r0 0
	jump	L_cont.24787
L_else.24789 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24793
	ldi	r6 r18 2
	bne	r6 r5 L_else.24795
	addi	r6 r0 0
	jump	L_cont.24787
L_else.24795 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24797
	ldi	r6 r18 3
	bne	r6 r5 L_else.24799
	addi	r6 r0 0
	jump	L_cont.24787
L_else.24799 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24801
	ldi	r6 r18 4
	bne	r6 r5 L_else.24803
	addi	r6 r0 0
	jump	L_cont.24787
L_else.24803 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24805
	ldi	r6 r18 5
	bne	r6 r5 L_else.24807
	addi	r6 r0 0
	jump	L_cont.24787
L_else.24807 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24809
	ldi	r6 r18 6
	bne	r6 r5 L_else.24811
	addi	r6 r0 0
	jump	L_cont.24787
L_else.24811 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24813
	ldi	r6 r18 7
	bne	r6 r5 L_else.24815
	addi	r6 r0 0
	jump	L_cont.24787
L_else.24815 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24817
	addi	r14 r0 8
	add	r15 r0 r18
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.24787
L_else.24817 : 
	addi	r6 r0 1
	jump	L_cont.24787
L_else.24813 : 
	addi	r6 r0 1
	jump	L_cont.24787
L_else.24809 : 
	addi	r6 r0 1
	jump	L_cont.24787
L_else.24805 : 
	addi	r6 r0 1
	jump	L_cont.24787
L_else.24801 : 
	addi	r6 r0 1
	jump	L_cont.24787
L_else.24797 : 
	addi	r6 r0 1
	jump	L_cont.24787
L_else.24793 : 
	addi	r6 r0 1
L_cont.24787 : 
	bne	r6 r0 L_else.24791
	addi	r6 r0 0
	jump	L_cont.24478
L_else.24791 : 
	addi	r6 r0 1
L_cont.24478 : 
	bne	r6 r0 L_else.24482
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else.24484
	addi	r6 r0 0
	return
L_else.24484 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.24487
	addi	r6 r0 1
	jump	L_cont.24485
L_else.24487 : 
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
	bne	r7 r4 L_else.24519
	ldi	r7 r10 0
	fldi	f2 r8 0
	fsub	f3 f2 f7
	fldi	f2 r8 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.24553
	jump	L_cont.24551
L_else.24553 : 
	fsub	f2 f0 f2
L_cont.24551 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24556
	addi	r6 r0 0
	jump	L_cont.24554
L_else.24556 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.24593
	jump	L_cont.24591
L_else.24593 : 
	fsub	f2 f0 f2
L_cont.24591 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24595
	addi	r6 r0 0
	jump	L_cont.24554
L_else.24595 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else.24598
	addi	r6 r0 1
	jump	L_cont.24596
L_else.24598 : 
	addi	r6 r0 0
L_cont.24596 : 
	sub	r6 r4 r6
L_cont.24554 : 
	bne	r6 r0 L_else.24558
	fldi	f2 r8 2
	fsub	f2 f2 f5
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.24561
	jump	L_cont.24559
L_else.24561 : 
	fsub	f2 f0 f2
L_cont.24559 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24564
	addi	r6 r0 0
	jump	L_cont.24562
L_else.24564 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.24585
	jump	L_cont.24583
L_else.24585 : 
	fsub	f2 f0 f2
L_cont.24583 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24587
	addi	r6 r0 0
	jump	L_cont.24562
L_else.24587 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else.24590
	addi	r6 r0 1
	jump	L_cont.24588
L_else.24590 : 
	addi	r6 r0 0
L_cont.24588 : 
	sub	r6 r4 r6
L_cont.24562 : 
	bne	r6 r0 L_else.24566
	fldi	f2 r8 4
	fsub	f3 f2 f9
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.24569
	jump	L_cont.24567
L_else.24569 : 
	fsub	f2 f0 f2
L_cont.24567 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24572
	addi	r6 r0 0
	jump	L_cont.24570
L_else.24572 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.24577
	jump	L_cont.24575
L_else.24577 : 
	fsub	f2 f0 f2
L_cont.24575 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24579
	addi	r6 r0 0
	jump	L_cont.24570
L_else.24579 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else.24582
	addi	r6 r0 1
	jump	L_cont.24580
L_else.24582 : 
	addi	r6 r0 0
L_cont.24580 : 
	sub	r6 r4 r6
L_cont.24570 : 
	bne	r6 r0 L_else.24574
	addi	r6 r0 0
	jump	L_cont.24517
L_else.24574 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.24517
L_else.24566 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont.24517
L_else.24558 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.24517
L_else.24519 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.24600
	fldi	f2 r8 0
	fbgt	f0 f2 L_else.24602
	addi	r6 r0 0
	jump	L_cont.24517
L_else.24602 : 
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
	jump	L_cont.24517
L_else.24600 : 
	fldi	f8 r8 0
	fbne	f8 f0 L_else.24604
	addi	r6 r0 0
	jump	L_cont.24517
L_else.24604 : 
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
	bne	r6 r0 L_else.24607
	jump	L_cont.24605
L_else.24607 : 
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
L_cont.24605 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else.24610
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.24608
L_else.24610 : 
L_cont.24608 : 
	fmul	f3 f6 f6
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.24612
	addi	r6 r0 0
	jump	L_cont.24517
L_else.24612 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else.24615
	fsqrt	f2 f2
	fsub	f2 f6 f2
	fldi	f3 r8 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont.24613
L_else.24615 : 
	fsqrt	f2 f2
	fadd	f2 f6 f2
	fldi	f3 r8 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont.24613 : 
	addi	r6 r0 1
L_cont.24517 : 
	bne	r6 r0 L_else.24521
	addi	r6 r0 0
	jump	L_cont.24485
L_else.24521 : 
	fldi	f3 r0 1073
	fldi	f2 r0 34
	fbgt	f2 f3 L_else.24523
	addi	r6 r0 0
	jump	L_cont.24485
L_else.24523 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else.24526
	addi	r6 r0 0
	jump	L_cont.24524
L_else.24526 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24530
	ldi	r6 r18 2
	bne	r6 r5 L_else.24532
	addi	r6 r0 0
	jump	L_cont.24524
L_else.24532 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24534
	ldi	r6 r18 3
	bne	r6 r5 L_else.24536
	addi	r6 r0 0
	jump	L_cont.24524
L_else.24536 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24538
	ldi	r6 r18 4
	bne	r6 r5 L_else.24540
	addi	r6 r0 0
	jump	L_cont.24524
L_else.24540 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24542
	ldi	r6 r18 5
	bne	r6 r5 L_else.24544
	addi	r6 r0 0
	jump	L_cont.24524
L_else.24544 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24546
	ldi	r6 r18 6
	bne	r6 r5 L_else.24548
	addi	r6 r0 0
	jump	L_cont.24524
L_else.24548 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24550
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.24524
L_else.24550 : 
	addi	r6 r0 1
	jump	L_cont.24524
L_else.24546 : 
	addi	r6 r0 1
	jump	L_cont.24524
L_else.24542 : 
	addi	r6 r0 1
	jump	L_cont.24524
L_else.24538 : 
	addi	r6 r0 1
	jump	L_cont.24524
L_else.24534 : 
	addi	r6 r0 1
	jump	L_cont.24524
L_else.24530 : 
	addi	r6 r0 1
L_cont.24524 : 
	bne	r6 r0 L_else.24528
	addi	r6 r0 0
	jump	L_cont.24485
L_else.24528 : 
	addi	r6 r0 1
L_cont.24485 : 
	bne	r6 r0 L_else.24489
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix.2185
L_else.24489 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else.24492
	addi	r6 r0 0
	jump	L_cont.24490
L_else.24492 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24496
	ldi	r6 r18 2
	bne	r6 r5 L_else.24498
	addi	r6 r0 0
	jump	L_cont.24490
L_else.24498 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24500
	ldi	r6 r18 3
	bne	r6 r5 L_else.24502
	addi	r6 r0 0
	jump	L_cont.24490
L_else.24502 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24504
	ldi	r6 r18 4
	bne	r6 r5 L_else.24506
	addi	r6 r0 0
	jump	L_cont.24490
L_else.24506 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24508
	ldi	r6 r18 5
	bne	r6 r5 L_else.24510
	addi	r6 r0 0
	jump	L_cont.24490
L_else.24510 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24512
	ldi	r6 r18 6
	bne	r6 r5 L_else.24514
	addi	r6 r0 0
	jump	L_cont.24490
L_else.24514 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24516
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.24490
L_else.24516 : 
	addi	r6 r0 1
	jump	L_cont.24490
L_else.24512 : 
	addi	r6 r0 1
	jump	L_cont.24490
L_else.24508 : 
	addi	r6 r0 1
	jump	L_cont.24490
L_else.24504 : 
	addi	r6 r0 1
	jump	L_cont.24490
L_else.24500 : 
	addi	r6 r0 1
	jump	L_cont.24490
L_else.24496 : 
	addi	r6 r0 1
L_cont.24490 : 
	bne	r6 r0 L_else.24494
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix.2185
L_else.24494 : 
	addi	r6 r0 1
	return
L_else.24482 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else.24618
	addi	r6 r0 0
	jump	L_cont.24616
L_else.24618 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24755
	ldi	r6 r18 2
	bne	r6 r5 L_else.24757
	addi	r6 r0 0
	jump	L_cont.24616
L_else.24757 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24759
	ldi	r6 r18 3
	bne	r6 r5 L_else.24761
	addi	r6 r0 0
	jump	L_cont.24616
L_else.24761 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24763
	ldi	r6 r18 4
	bne	r6 r5 L_else.24765
	addi	r6 r0 0
	jump	L_cont.24616
L_else.24765 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24767
	ldi	r6 r18 5
	bne	r6 r5 L_else.24769
	addi	r6 r0 0
	jump	L_cont.24616
L_else.24769 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24771
	ldi	r6 r18 6
	bne	r6 r5 L_else.24773
	addi	r6 r0 0
	jump	L_cont.24616
L_else.24773 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24775
	ldi	r6 r18 7
	bne	r6 r5 L_else.24777
	addi	r6 r0 0
	jump	L_cont.24616
L_else.24777 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24779
	addi	r14 r0 8
	add	r15 r0 r18
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.24616
L_else.24779 : 
	addi	r6 r0 1
	jump	L_cont.24616
L_else.24775 : 
	addi	r6 r0 1
	jump	L_cont.24616
L_else.24771 : 
	addi	r6 r0 1
	jump	L_cont.24616
L_else.24767 : 
	addi	r6 r0 1
	jump	L_cont.24616
L_else.24763 : 
	addi	r6 r0 1
	jump	L_cont.24616
L_else.24759 : 
	addi	r6 r0 1
	jump	L_cont.24616
L_else.24755 : 
	addi	r6 r0 1
L_cont.24616 : 
	bne	r6 r0 L_else.24620
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r18 r1 0
	ldi	r7 r18 0
	bne	r7 r5 L_else.24622
	addi	r6 r0 0
	return
L_else.24622 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.24625
	addi	r6 r0 1
	jump	L_cont.24623
L_else.24625 : 
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
	bne	r7 r4 L_else.24657
	ldi	r7 r10 0
	fldi	f2 r9 0
	fsub	f2 f2 f7
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.24691
	jump	L_cont.24689
L_else.24691 : 
	fsub	f2 f0 f2
L_cont.24689 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24694
	addi	r6 r0 0
	jump	L_cont.24692
L_else.24694 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.24731
	jump	L_cont.24729
L_else.24731 : 
	fsub	f2 f0 f2
L_cont.24729 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24733
	addi	r6 r0 0
	jump	L_cont.24692
L_else.24733 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else.24736
	addi	r6 r0 1
	jump	L_cont.24734
L_else.24736 : 
	addi	r6 r0 0
L_cont.24734 : 
	sub	r6 r4 r6
L_cont.24692 : 
	bne	r6 r0 L_else.24696
	fldi	f2 r9 2
	fsub	f3 f2 f6
	fldi	f2 r9 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.24699
	jump	L_cont.24697
L_else.24699 : 
	fsub	f2 f0 f2
L_cont.24697 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24702
	addi	r6 r0 0
	jump	L_cont.24700
L_else.24702 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.24723
	jump	L_cont.24721
L_else.24723 : 
	fsub	f2 f0 f2
L_cont.24721 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24725
	addi	r6 r0 0
	jump	L_cont.24700
L_else.24725 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else.24728
	addi	r6 r0 1
	jump	L_cont.24726
L_else.24728 : 
	addi	r6 r0 0
L_cont.24726 : 
	sub	r6 r4 r6
L_cont.24700 : 
	bne	r6 r0 L_else.24704
	fldi	f2 r9 4
	fsub	f2 f2 f9
	fldi	f3 r9 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.24707
	jump	L_cont.24705
L_else.24707 : 
	fsub	f2 f0 f2
L_cont.24705 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24710
	addi	r6 r0 0
	jump	L_cont.24708
L_else.24710 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.24715
	jump	L_cont.24713
L_else.24715 : 
	fsub	f2 f0 f2
L_cont.24713 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24717
	addi	r6 r0 0
	jump	L_cont.24708
L_else.24717 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else.24720
	addi	r6 r0 1
	jump	L_cont.24718
L_else.24720 : 
	addi	r6 r0 0
L_cont.24718 : 
	sub	r6 r4 r6
L_cont.24708 : 
	bne	r6 r0 L_else.24712
	addi	r6 r0 0
	jump	L_cont.24655
L_else.24712 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.24655
L_else.24704 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont.24655
L_else.24696 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.24655
L_else.24657 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.24738
	fldi	f2 r9 0
	fbgt	f0 f2 L_else.24740
	addi	r6 r0 0
	jump	L_cont.24655
L_else.24740 : 
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
	jump	L_cont.24655
L_else.24738 : 
	fldi	f8 r9 0
	fbne	f8 f0 L_else.24742
	addi	r6 r0 0
	jump	L_cont.24655
L_else.24742 : 
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
	bne	r6 r0 L_else.24745
	jump	L_cont.24743
L_else.24745 : 
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
L_cont.24743 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else.24748
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.24746
L_else.24748 : 
L_cont.24746 : 
	fmul	f3 f5 f5
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.24750
	addi	r6 r0 0
	jump	L_cont.24655
L_else.24750 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else.24753
	fsqrt	f2 f2
	fsub	f3 f5 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.24751
L_else.24753 : 
	fsqrt	f2 f2
	fadd	f3 f5 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.24751 : 
	addi	r6 r0 1
L_cont.24655 : 
	bne	r6 r0 L_else.24659
	addi	r6 r0 0
	jump	L_cont.24623
L_else.24659 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else.24661
	addi	r6 r0 0
	jump	L_cont.24623
L_else.24661 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else.24664
	addi	r6 r0 0
	jump	L_cont.24662
L_else.24664 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24668
	ldi	r6 r18 2
	bne	r6 r5 L_else.24670
	addi	r6 r0 0
	jump	L_cont.24662
L_else.24670 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24672
	ldi	r6 r18 3
	bne	r6 r5 L_else.24674
	addi	r6 r0 0
	jump	L_cont.24662
L_else.24674 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24676
	ldi	r6 r18 4
	bne	r6 r5 L_else.24678
	addi	r6 r0 0
	jump	L_cont.24662
L_else.24678 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24680
	ldi	r6 r18 5
	bne	r6 r5 L_else.24682
	addi	r6 r0 0
	jump	L_cont.24662
L_else.24682 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24684
	ldi	r6 r18 6
	bne	r6 r5 L_else.24686
	addi	r6 r0 0
	jump	L_cont.24662
L_else.24686 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24688
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.24662
L_else.24688 : 
	addi	r6 r0 1
	jump	L_cont.24662
L_else.24684 : 
	addi	r6 r0 1
	jump	L_cont.24662
L_else.24680 : 
	addi	r6 r0 1
	jump	L_cont.24662
L_else.24676 : 
	addi	r6 r0 1
	jump	L_cont.24662
L_else.24672 : 
	addi	r6 r0 1
	jump	L_cont.24662
L_else.24668 : 
	addi	r6 r0 1
L_cont.24662 : 
	bne	r6 r0 L_else.24666
	addi	r6 r0 0
	jump	L_cont.24623
L_else.24666 : 
	addi	r6 r0 1
L_cont.24623 : 
	bne	r6 r0 L_else.24627
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix.2185
L_else.24627 : 
	ldi	r6 r18 1
	bne	r6 r5 L_else.24630
	addi	r6 r0 0
	jump	L_cont.24628
L_else.24630 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24634
	ldi	r6 r18 2
	bne	r6 r5 L_else.24636
	addi	r6 r0 0
	jump	L_cont.24628
L_else.24636 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24638
	ldi	r6 r18 3
	bne	r6 r5 L_else.24640
	addi	r6 r0 0
	jump	L_cont.24628
L_else.24640 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24642
	ldi	r6 r18 4
	bne	r6 r5 L_else.24644
	addi	r6 r0 0
	jump	L_cont.24628
L_else.24644 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24646
	ldi	r6 r18 5
	bne	r6 r5 L_else.24648
	addi	r6 r0 0
	jump	L_cont.24628
L_else.24648 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24650
	ldi	r6 r18 6
	bne	r6 r5 L_else.24652
	addi	r6 r0 0
	jump	L_cont.24628
L_else.24652 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.24654
	addi	r14 r0 7
	add	r15 r0 r18
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.24628
L_else.24654 : 
	addi	r6 r0 1
	jump	L_cont.24628
L_else.24650 : 
	addi	r6 r0 1
	jump	L_cont.24628
L_else.24646 : 
	addi	r6 r0 1
	jump	L_cont.24628
L_else.24642 : 
	addi	r6 r0 1
	jump	L_cont.24628
L_else.24638 : 
	addi	r6 r0 1
	jump	L_cont.24628
L_else.24634 : 
	addi	r6 r0 1
L_cont.24628 : 
	bne	r6 r0 L_else.24632
	addi	r16 r16 1
	jump	L_shadow_check_one_or_matrix.2185
L_else.24632 : 
	addi	r6 r0 1
	return
L_else.24620 : 
	addi	r6 r0 1
	return
L_solve_each_element.2188 : 
	ldi	r15 r11 0
	bne	r15 r5 L_else.24885
	return
L_else.24885 : 
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
	bne	r7 r4 L_else.24888
	fldi	f2 r13 0
	fbne	f2 f0 L_else.25020
	addi	r6 r0 0
	jump	L_cont.25018
L_else.25020 : 
	ldi	r7 r8 4
	ldi	r9 r8 6
	fldi	f2 r13 0
	fbgt	f0 f2 L_else.25067
	addi	r6 r0 0
	jump	L_cont.25065
L_else.25067 : 
	addi	r6 r0 1
L_cont.25065 : 
	xor	r6 r9 r6
	fldi	f2 r7 0
	bne	r6 r0 L_else.25070
	fsub	f2 f0 f2
	jump	L_cont.25068
L_else.25070 : 
L_cont.25068 : 
	fsub	f2 f2 f8
	fldi	f3 r13 0
	fdiv	f4 f2 f3
	fldi	f2 r13 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25073
	jump	L_cont.25071
L_else.25073 : 
	fsub	f2 f0 f2
L_cont.25071 : 
	fldi	f3 r7 1
	fbgt	f3 f2 L_else.25075
	addi	r6 r0 0
	jump	L_cont.25018
L_else.25075 : 
	fldi	f2 r13 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.25078
	jump	L_cont.25076
L_else.25078 : 
	fsub	f2 f0 f2
L_cont.25076 : 
	fldi	f3 r7 2
	fbgt	f3 f2 L_else.25080
	addi	r6 r0 0
	jump	L_cont.25018
L_else.25080 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.25018 : 
	bne	r6 r0 L_else.25022
	fldi	f2 r13 1
	fbne	f2 f0 L_else.25025
	addi	r6 r0 0
	jump	L_cont.25023
L_else.25025 : 
	ldi	r9 r8 4
	ldi	r7 r8 6
	fldi	f2 r13 1
	fbgt	f0 f2 L_else.25051
	addi	r6 r0 0
	jump	L_cont.25049
L_else.25051 : 
	addi	r6 r0 1
L_cont.25049 : 
	xor	r6 r7 r6
	fldi	f2 r9 1
	bne	r6 r0 L_else.25054
	fsub	f2 f0 f2
	jump	L_cont.25052
L_else.25054 : 
L_cont.25052 : 
	fsub	f2 f2 f7
	fldi	f3 r13 1
	fdiv	f4 f2 f3
	fldi	f2 r13 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.25057
	jump	L_cont.25055
L_else.25057 : 
	fsub	f2 f0 f2
L_cont.25055 : 
	fldi	f3 r9 2
	fbgt	f3 f2 L_else.25059
	addi	r6 r0 0
	jump	L_cont.25023
L_else.25059 : 
	fldi	f2 r13 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25062
	jump	L_cont.25060
L_else.25062 : 
	fsub	f2 f0 f2
L_cont.25060 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else.25064
	addi	r6 r0 0
	jump	L_cont.25023
L_else.25064 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.25023 : 
	bne	r6 r0 L_else.25027
	fldi	f2 r13 2
	fbne	f2 f0 L_else.25030
	addi	r6 r0 0
	jump	L_cont.25028
L_else.25030 : 
	ldi	r9 r8 4
	ldi	r6 r8 6
	fldi	f2 r13 2
	fbgt	f0 f2 L_else.25035
	addi	r7 r0 0
	jump	L_cont.25033
L_else.25035 : 
	addi	r7 r0 1
L_cont.25033 : 
	xor	r6 r6 r7
	fldi	f2 r9 2
	bne	r6 r0 L_else.25038
	fsub	f2 f0 f2
	jump	L_cont.25036
L_else.25038 : 
L_cont.25036 : 
	fsub	f3 f2 f9
	fldi	f2 r13 2
	fdiv	f4 f3 f2
	fldi	f2 r13 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25041
	jump	L_cont.25039
L_else.25041 : 
	fsub	f2 f0 f2
L_cont.25039 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else.25043
	addi	r6 r0 0
	jump	L_cont.25028
L_else.25043 : 
	fldi	f2 r13 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25046
	jump	L_cont.25044
L_else.25046 : 
	fsub	f2 f0 f2
L_cont.25044 : 
	fldi	f3 r9 1
	fbgt	f3 f2 L_else.25048
	addi	r6 r0 0
	jump	L_cont.25028
L_else.25048 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.25028 : 
	bne	r6 r0 L_else.25032
	addi	r14 r0 0
	jump	L_cont.24886
L_else.25032 : 
	addi	r14 r0 3
	jump	L_cont.24886
L_else.25027 : 
	addi	r14 r0 2
	jump	L_cont.24886
L_else.25022 : 
	addi	r14 r0 1
	jump	L_cont.24886
L_else.24888 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.25082
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
	fbgt	f4 f0 L_else.25084
	addi	r14 r0 0
	jump	L_cont.24886
L_else.25084 : 
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
	jump	L_cont.24886
L_else.25082 : 
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
	bne	r6 r0 L_else.25087
	fadd	f4 f0 f2
	jump	L_cont.25085
L_else.25087 : 
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
L_cont.25085 : 
	fbne	f4 f0 L_else.25089
	addi	r14 r0 0
	jump	L_cont.24886
L_else.25089 : 
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
	bne	r6 r0 L_else.25092
	fadd	f3 f0 f2
	jump	L_cont.25090
L_else.25092 : 
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
L_cont.25090 : 
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
	bne	r6 r0 L_else.25095
	jump	L_cont.25093
L_else.25095 : 
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
L_cont.25093 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else.25098
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont.25096
L_else.25098 : 
L_cont.25096 : 
	fmul	f5 f3 f3
	fmul	f2 f4 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else.25100
	addi	r14 r0 0
	jump	L_cont.24886
L_else.25100 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else.25103
	fsub	f2 f0 f2
	jump	L_cont.25101
L_else.25103 : 
L_cont.25101 : 
	fsub	f2 f2 f3
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r14 r0 1
L_cont.24886 : 
	bne	r14 r0 L_else.24890
	ldi	r6 r15 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else.24892
	return
L_else.24892 : 
	addi	r11 r11 1
	jump	L_solve_each_element.2188
L_else.24890 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else.24895
	jump	L_cont.24893
L_else.24895 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.24897
	jump	L_cont.24893
L_else.24897 : 
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
	bne	r6 r5 L_else.24900
	addi	r6 r0 1
	jump	L_cont.24898
L_else.24900 : 
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
	bne	r7 r4 L_else.24905
	fbgt	f0 f3 L_else.24988
	fadd	f2 f0 f3
	jump	L_cont.24986
L_else.24988 : 
	fsub	f2 f0 f3
L_cont.24986 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24991
	addi	r6 r0 0
	jump	L_cont.24989
L_else.24991 : 
	fbgt	f0 f4 L_else.24996
	fadd	f2 f0 f4
	jump	L_cont.24994
L_else.24996 : 
	fsub	f2 f0 f4
L_cont.24994 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24998
	addi	r6 r0 0
	jump	L_cont.24989
L_else.24998 : 
	fbgt	f0 f5 L_else.25001
	fadd	f2 f0 f5
	jump	L_cont.24999
L_else.25001 : 
	fsub	f2 f0 f5
L_cont.24999 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25003
	addi	r6 r0 0
	jump	L_cont.24989
L_else.25003 : 
	addi	r6 r0 1
L_cont.24989 : 
	bne	r6 r0 L_else.24993
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont.24903
L_else.24993 : 
	ldi	r6 r8 6
	jump	L_cont.24903
L_else.24905 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.25005
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
	fbgt	f0 f2 L_else.25008
	addi	r6 r0 0
	jump	L_cont.25006
L_else.25008 : 
	addi	r6 r0 1
L_cont.25006 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont.24903
L_else.25005 : 
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
	bne	r6 r0 L_else.25011
	jump	L_cont.25009
L_else.25011 : 
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
L_cont.25009 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else.25014
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.25012
L_else.25014 : 
L_cont.25012 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else.25017
	addi	r6 r0 0
	jump	L_cont.25015
L_else.25017 : 
	addi	r6 r0 1
L_cont.25015 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont.24903 : 
	bne	r6 r0 L_else.24907
	ldi	r6 r12 1
	bne	r6 r5 L_else.24909
	addi	r6 r0 1
	jump	L_cont.24898
L_else.24909 : 
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
	bne	r6 r4 L_else.24912
	fbgt	f0 f2 L_else.24956
	jump	L_cont.24954
L_else.24956 : 
	fsub	f2 f0 f2
L_cont.24954 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24959
	addi	r6 r0 0
	jump	L_cont.24957
L_else.24959 : 
	fbgt	f0 f4 L_else.24964
	fadd	f2 f0 f4
	jump	L_cont.24962
L_else.24964 : 
	fsub	f2 f0 f4
L_cont.24962 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24966
	addi	r6 r0 0
	jump	L_cont.24957
L_else.24966 : 
	fbgt	f0 f5 L_else.24969
	fadd	f2 f0 f5
	jump	L_cont.24967
L_else.24969 : 
	fsub	f2 f0 f5
L_cont.24967 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24971
	addi	r6 r0 0
	jump	L_cont.24957
L_else.24971 : 
	addi	r6 r0 1
L_cont.24957 : 
	bne	r6 r0 L_else.24961
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont.24910
L_else.24961 : 
	ldi	r6 r8 6
	jump	L_cont.24910
L_else.24912 : 
	addi	r7 r0 2
	bne	r6 r7 L_else.24973
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
	fbgt	f0 f2 L_else.24976
	addi	r6 r0 0
	jump	L_cont.24974
L_else.24976 : 
	addi	r6 r0 1
L_cont.24974 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont.24910
L_else.24973 : 
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
	bne	r6 r0 L_else.24979
	fadd	f2 f0 f3
	jump	L_cont.24977
L_else.24979 : 
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
L_cont.24977 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else.24982
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.24980
L_else.24982 : 
L_cont.24980 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else.24985
	addi	r6 r0 0
	jump	L_cont.24983
L_else.24985 : 
	addi	r6 r0 1
L_cont.24983 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont.24910 : 
	bne	r6 r0 L_else.24914
	ldi	r6 r12 2
	bne	r6 r5 L_else.24916
	addi	r6 r0 1
	jump	L_cont.24898
L_else.24916 : 
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
	bne	r6 r4 L_else.24919
	fbgt	f0 f2 L_else.24924
	jump	L_cont.24922
L_else.24924 : 
	fsub	f2 f0 f2
L_cont.24922 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.24927
	addi	r6 r0 0
	jump	L_cont.24925
L_else.24927 : 
	fbgt	f0 f4 L_else.24932
	fadd	f2 f0 f4
	jump	L_cont.24930
L_else.24932 : 
	fsub	f2 f0 f4
L_cont.24930 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.24934
	addi	r6 r0 0
	jump	L_cont.24925
L_else.24934 : 
	fbgt	f0 f5 L_else.24937
	fadd	f2 f0 f5
	jump	L_cont.24935
L_else.24937 : 
	fsub	f2 f0 f5
L_cont.24935 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.24939
	addi	r6 r0 0
	jump	L_cont.24925
L_else.24939 : 
	addi	r6 r0 1
L_cont.24925 : 
	bne	r6 r0 L_else.24929
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont.24917
L_else.24929 : 
	ldi	r6 r8 6
	jump	L_cont.24917
L_else.24919 : 
	addi	r7 r0 2
	bne	r6 r7 L_else.24941
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
	fbgt	f0 f2 L_else.24944
	addi	r6 r0 0
	jump	L_cont.24942
L_else.24944 : 
	addi	r6 r0 1
L_cont.24942 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont.24917
L_else.24941 : 
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
	bne	r6 r0 L_else.24947
	fadd	f2 f0 f3
	jump	L_cont.24945
L_else.24947 : 
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
L_cont.24945 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else.24950
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.24948
L_else.24950 : 
L_cont.24948 : 
	ldi	r6 r8 6
	fbgt	f0 f2 L_else.24953
	addi	r7 r0 0
	jump	L_cont.24951
L_else.24953 : 
	addi	r7 r0 1
L_cont.24951 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
L_cont.24917 : 
	bne	r6 r0 L_else.24921
	addi	r6 r0 3
	add	r7 r0 r12
	fadd	f2 f0 f13
	fadd	f3 f0 f12
	fadd	f4 f0 f11
	call	L_check_all_inside.2173
	jump	L_cont.24898
L_else.24921 : 
	addi	r6 r0 0
	jump	L_cont.24898
L_else.24914 : 
	addi	r6 r0 0
	jump	L_cont.24898
L_else.24907 : 
	addi	r6 r0 0
L_cont.24898 : 
	bne	r6 r0 L_else.24902
	jump	L_cont.24893
L_else.24902 : 
	fsti	f14 r0 1082
	fsti	f13 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r15 r0 1045
	sti	r14 r0 1074
L_cont.24893 : 
	addi	r11 r11 1
	jump	L_solve_each_element.2188
L_solve_one_or_network.2192 : 
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25106
	return
L_else.25106 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element.2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25108
	return
L_else.25108 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element.2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25110
	return
L_else.25110 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element.2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25112
	return
L_else.25112 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element.2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25114
	return
L_else.25114 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element.2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25116
	return
L_else.25116 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element.2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25118
	return
L_else.25118 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element.2188
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25120
	return
L_else.25120 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element.2188
	addi	r16 r16 1
	jump	L_solve_one_or_network.2192
L_trace_or_matrix.2196 : 
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else.25123
	return
L_else.25123 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.25126
	ldi	r6 r17 1
	bne	r6 r5 L_else.25250
	jump	L_cont.25124
L_else.25250 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 2
	bne	r6 r5 L_else.25252
	jump	L_cont.25124
L_else.25252 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 3
	bne	r6 r5 L_else.25254
	jump	L_cont.25124
L_else.25254 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 4
	bne	r6 r5 L_else.25256
	jump	L_cont.25124
L_else.25256 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 5
	bne	r6 r5 L_else.25258
	jump	L_cont.25124
L_else.25258 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 6
	bne	r6 r5 L_else.25260
	jump	L_cont.25124
L_else.25260 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 7
	bne	r6 r5 L_else.25262
	jump	L_cont.25124
L_else.25262 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network.2192
	jump	L_cont.25124
L_else.25126 : 
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
	bne	r7 r4 L_else.25265
	fldi	f2 r21 0
	fbne	f2 f0 L_else.25286
	addi	r6 r0 0
	jump	L_cont.25284
L_else.25286 : 
	ldi	r7 r8 4
	ldi	r9 r8 6
	fldi	f2 r21 0
	fbgt	f0 f2 L_else.25333
	addi	r6 r0 0
	jump	L_cont.25331
L_else.25333 : 
	addi	r6 r0 1
L_cont.25331 : 
	xor	r6 r9 r6
	fldi	f2 r7 0
	bne	r6 r0 L_else.25336
	fsub	f2 f0 f2
	jump	L_cont.25334
L_else.25336 : 
L_cont.25334 : 
	fsub	f2 f2 f8
	fldi	f3 r21 0
	fdiv	f4 f2 f3
	fldi	f2 r21 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25339
	jump	L_cont.25337
L_else.25339 : 
	fsub	f2 f0 f2
L_cont.25337 : 
	fldi	f3 r7 1
	fbgt	f3 f2 L_else.25341
	addi	r6 r0 0
	jump	L_cont.25284
L_else.25341 : 
	fldi	f2 r21 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.25344
	jump	L_cont.25342
L_else.25344 : 
	fsub	f2 f0 f2
L_cont.25342 : 
	fldi	f3 r7 2
	fbgt	f3 f2 L_else.25346
	addi	r6 r0 0
	jump	L_cont.25284
L_else.25346 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.25284 : 
	bne	r6 r0 L_else.25288
	fldi	f2 r21 1
	fbne	f2 f0 L_else.25291
	addi	r6 r0 0
	jump	L_cont.25289
L_else.25291 : 
	ldi	r9 r8 4
	ldi	r7 r8 6
	fldi	f2 r21 1
	fbgt	f0 f2 L_else.25317
	addi	r6 r0 0
	jump	L_cont.25315
L_else.25317 : 
	addi	r6 r0 1
L_cont.25315 : 
	xor	r6 r7 r6
	fldi	f2 r9 1
	bne	r6 r0 L_else.25320
	fsub	f2 f0 f2
	jump	L_cont.25318
L_else.25320 : 
L_cont.25318 : 
	fsub	f2 f2 f7
	fldi	f3 r21 1
	fdiv	f4 f2 f3
	fldi	f2 r21 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.25323
	jump	L_cont.25321
L_else.25323 : 
	fsub	f2 f0 f2
L_cont.25321 : 
	fldi	f3 r9 2
	fbgt	f3 f2 L_else.25325
	addi	r6 r0 0
	jump	L_cont.25289
L_else.25325 : 
	fldi	f2 r21 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25328
	jump	L_cont.25326
L_else.25328 : 
	fsub	f2 f0 f2
L_cont.25326 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else.25330
	addi	r6 r0 0
	jump	L_cont.25289
L_else.25330 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.25289 : 
	bne	r6 r0 L_else.25293
	fldi	f2 r21 2
	fbne	f2 f0 L_else.25296
	addi	r6 r0 0
	jump	L_cont.25294
L_else.25296 : 
	ldi	r9 r8 4
	ldi	r6 r8 6
	fldi	f2 r21 2
	fbgt	f0 f2 L_else.25301
	addi	r7 r0 0
	jump	L_cont.25299
L_else.25301 : 
	addi	r7 r0 1
L_cont.25299 : 
	xor	r6 r6 r7
	fldi	f2 r9 2
	bne	r6 r0 L_else.25304
	fsub	f2 f0 f2
	jump	L_cont.25302
L_else.25304 : 
L_cont.25302 : 
	fsub	f3 f2 f9
	fldi	f2 r21 2
	fdiv	f4 f3 f2
	fldi	f2 r21 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25307
	jump	L_cont.25305
L_else.25307 : 
	fsub	f2 f0 f2
L_cont.25305 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else.25309
	addi	r6 r0 0
	jump	L_cont.25294
L_else.25309 : 
	fldi	f2 r21 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25312
	jump	L_cont.25310
L_else.25312 : 
	fsub	f2 f0 f2
L_cont.25310 : 
	fldi	f3 r9 1
	fbgt	f3 f2 L_else.25314
	addi	r6 r0 0
	jump	L_cont.25294
L_else.25314 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.25294 : 
	bne	r6 r0 L_else.25298
	addi	r6 r0 0
	jump	L_cont.25263
L_else.25298 : 
	addi	r6 r0 3
	jump	L_cont.25263
L_else.25293 : 
	addi	r6 r0 2
	jump	L_cont.25263
L_else.25288 : 
	addi	r6 r0 1
	jump	L_cont.25263
L_else.25265 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.25348
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
	fbgt	f4 f0 L_else.25350
	addi	r6 r0 0
	jump	L_cont.25263
L_else.25350 : 
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
	jump	L_cont.25263
L_else.25348 : 
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
	bne	r6 r0 L_else.25353
	fadd	f3 f0 f2
	jump	L_cont.25351
L_else.25353 : 
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
L_cont.25351 : 
	fbne	f3 f0 L_else.25355
	addi	r6 r0 0
	jump	L_cont.25263
L_else.25355 : 
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
	bne	r6 r0 L_else.25358
	fadd	f4 f0 f2
	jump	L_cont.25356
L_else.25358 : 
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
L_cont.25356 : 
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
	bne	r6 r0 L_else.25361
	jump	L_cont.25359
L_else.25361 : 
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
L_cont.25359 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else.25364
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont.25362
L_else.25364 : 
L_cont.25362 : 
	fmul	f5 f4 f4
	fmul	f2 f3 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else.25366
	addi	r6 r0 0
	jump	L_cont.25263
L_else.25366 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else.25369
	fsub	f2 f0 f2
	jump	L_cont.25367
L_else.25369 : 
L_cont.25367 : 
	fsub	f2 f2 f4
	fdiv	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
L_cont.25263 : 
	bne	r6 r0 L_else.25267
	jump	L_cont.25124
L_else.25267 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.25269
	jump	L_cont.25124
L_else.25269 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else.25271
	jump	L_cont.25124
L_else.25271 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 2
	bne	r6 r5 L_else.25273
	jump	L_cont.25124
L_else.25273 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 3
	bne	r6 r5 L_else.25275
	jump	L_cont.25124
L_else.25275 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 4
	bne	r6 r5 L_else.25277
	jump	L_cont.25124
L_else.25277 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 5
	bne	r6 r5 L_else.25279
	jump	L_cont.25124
L_else.25279 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 6
	bne	r6 r5 L_else.25281
	jump	L_cont.25124
L_else.25281 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 7
	bne	r6 r5 L_else.25283
	jump	L_cont.25124
L_else.25283 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network.2192
L_cont.25124 : 
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else.25128
	return
L_else.25128 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.25131
	ldi	r6 r17 1
	bne	r6 r5 L_else.25133
	jump	L_cont.25129
L_else.25133 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 2
	bne	r6 r5 L_else.25135
	jump	L_cont.25129
L_else.25135 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 3
	bne	r6 r5 L_else.25137
	jump	L_cont.25129
L_else.25137 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 4
	bne	r6 r5 L_else.25139
	jump	L_cont.25129
L_else.25139 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 5
	bne	r6 r5 L_else.25141
	jump	L_cont.25129
L_else.25141 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 6
	bne	r6 r5 L_else.25143
	jump	L_cont.25129
L_else.25143 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network.2192
	jump	L_cont.25129
L_else.25131 : 
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
	bne	r7 r4 L_else.25146
	fldi	f2 r21 0
	fbne	f2 f0 L_else.25165
	addi	r6 r0 0
	jump	L_cont.25163
L_else.25165 : 
	ldi	r9 r8 4
	ldi	r6 r8 6
	fldi	f2 r21 0
	fbgt	f0 f2 L_else.25212
	addi	r7 r0 0
	jump	L_cont.25210
L_else.25212 : 
	addi	r7 r0 1
L_cont.25210 : 
	xor	r6 r6 r7
	fldi	f2 r9 0
	bne	r6 r0 L_else.25215
	fsub	f2 f0 f2
	jump	L_cont.25213
L_else.25215 : 
L_cont.25213 : 
	fsub	f2 f2 f8
	fldi	f3 r21 0
	fdiv	f4 f2 f3
	fldi	f2 r21 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25218
	jump	L_cont.25216
L_else.25218 : 
	fsub	f2 f0 f2
L_cont.25216 : 
	fldi	f3 r9 1
	fbgt	f3 f2 L_else.25220
	addi	r6 r0 0
	jump	L_cont.25163
L_else.25220 : 
	fldi	f2 r21 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.25223
	jump	L_cont.25221
L_else.25223 : 
	fsub	f2 f0 f2
L_cont.25221 : 
	fldi	f3 r9 2
	fbgt	f3 f2 L_else.25225
	addi	r6 r0 0
	jump	L_cont.25163
L_else.25225 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.25163 : 
	bne	r6 r0 L_else.25167
	fldi	f2 r21 1
	fbne	f2 f0 L_else.25170
	addi	r6 r0 0
	jump	L_cont.25168
L_else.25170 : 
	ldi	r9 r8 4
	ldi	r6 r8 6
	fldi	f2 r21 1
	fbgt	f0 f2 L_else.25196
	addi	r7 r0 0
	jump	L_cont.25194
L_else.25196 : 
	addi	r7 r0 1
L_cont.25194 : 
	xor	r6 r6 r7
	fldi	f2 r9 1
	bne	r6 r0 L_else.25199
	fsub	f2 f0 f2
	jump	L_cont.25197
L_else.25199 : 
L_cont.25197 : 
	fsub	f3 f2 f7
	fldi	f2 r21 1
	fdiv	f4 f3 f2
	fldi	f2 r21 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.25202
	jump	L_cont.25200
L_else.25202 : 
	fsub	f2 f0 f2
L_cont.25200 : 
	fldi	f3 r9 2
	fbgt	f3 f2 L_else.25204
	addi	r6 r0 0
	jump	L_cont.25168
L_else.25204 : 
	fldi	f2 r21 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25207
	jump	L_cont.25205
L_else.25207 : 
	fsub	f2 f0 f2
L_cont.25205 : 
	fldi	f3 r9 0
	fbgt	f3 f2 L_else.25209
	addi	r6 r0 0
	jump	L_cont.25168
L_else.25209 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.25168 : 
	bne	r6 r0 L_else.25172
	fldi	f2 r21 2
	fbne	f2 f0 L_else.25175
	addi	r6 r0 0
	jump	L_cont.25173
L_else.25175 : 
	ldi	r7 r8 4
	ldi	r8 r8 6
	fldi	f2 r21 2
	fbgt	f0 f2 L_else.25180
	addi	r6 r0 0
	jump	L_cont.25178
L_else.25180 : 
	addi	r6 r0 1
L_cont.25178 : 
	xor	r6 r8 r6
	fldi	f2 r7 2
	bne	r6 r0 L_else.25183
	fsub	f2 f0 f2
	jump	L_cont.25181
L_else.25183 : 
L_cont.25181 : 
	fsub	f3 f2 f9
	fldi	f2 r21 2
	fdiv	f4 f3 f2
	fldi	f2 r21 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25186
	jump	L_cont.25184
L_else.25186 : 
	fsub	f2 f0 f2
L_cont.25184 : 
	fldi	f3 r7 0
	fbgt	f3 f2 L_else.25188
	addi	r6 r0 0
	jump	L_cont.25173
L_else.25188 : 
	fldi	f2 r21 1
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25191
	jump	L_cont.25189
L_else.25191 : 
	fsub	f2 f0 f2
L_cont.25189 : 
	fldi	f3 r7 1
	fbgt	f3 f2 L_else.25193
	addi	r6 r0 0
	jump	L_cont.25173
L_else.25193 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
L_cont.25173 : 
	bne	r6 r0 L_else.25177
	addi	r6 r0 0
	jump	L_cont.25144
L_else.25177 : 
	addi	r6 r0 3
	jump	L_cont.25144
L_else.25172 : 
	addi	r6 r0 2
	jump	L_cont.25144
L_else.25167 : 
	addi	r6 r0 1
	jump	L_cont.25144
L_else.25146 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.25227
	ldi	r6 r8 4
	fldi	f3 r21 0
	fldi	f2 r6 0
	fmul	f4 f3 f2
	fldi	f3 r21 1
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fldi	f3 r21 2
	fldi	f2 r6 2
	fmul	f2 f3 f2
	fadd	f4 f4 f2
	fbgt	f4 f0 L_else.25229
	addi	r6 r0 0
	jump	L_cont.25144
L_else.25229 : 
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
	jump	L_cont.25144
L_else.25227 : 
	fldi	f6 r21 0
	fldi	f10 r21 1
	fldi	f5 r21 2
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
	bne	r6 r0 L_else.25232
	fadd	f4 f0 f2
	jump	L_cont.25230
L_else.25232 : 
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
L_cont.25230 : 
	fbne	f4 f0 L_else.25234
	addi	r6 r0 0
	jump	L_cont.25144
L_else.25234 : 
	fldi	f12 r21 0
	fldi	f11 r21 1
	fldi	f10 r21 2
	fmul	f3 f12 f8
	ldi	r6 r8 4
	fldi	f2 r6 0
	fmul	f5 f3 f2
	fmul	f3 f11 f7
	ldi	r6 r8 4
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f5 f2
	fmul	f5 f10 f9
	ldi	r6 r8 4
	fldi	f2 r6 2
	fmul	f2 f5 f2
	fadd	f2 f3 f2
	ldi	r6 r8 3
	bne	r6 r0 L_else.25237
	fadd	f3 f0 f2
	jump	L_cont.25235
L_else.25237 : 
	fmul	f5 f10 f7
	fmul	f3 f11 f9
	fadd	f5 f5 f3
	ldi	r6 r8 9
	fldi	f3 r6 0
	fmul	f6 f5 f3
	fmul	f5 f12 f9
	fmul	f3 f10 f8
	fadd	f5 f5 f3
	ldi	r6 r8 9
	fldi	f3 r6 1
	fmul	f3 f5 f3
	fadd	f6 f6 f3
	fmul	f5 f12 f7
	fmul	f3 f11 f8
	fadd	f5 f5 f3
	ldi	r6 r8 9
	fldi	f3 r6 2
	fmul	f3 f5 f3
	fadd	f5 f6 f3
	fldi	f3 r0 30
	fdiv	f3 f5 f3
	fadd	f3 f2 f3
L_cont.25235 : 
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
	bne	r6 r0 L_else.25240
	jump	L_cont.25238
L_else.25240 : 
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
L_cont.25238 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else.25243
	fldi	f5 r0 12
	fsub	f2 f2 f5
	jump	L_cont.25241
L_else.25243 : 
L_cont.25241 : 
	fmul	f5 f3 f3
	fmul	f2 f4 f2
	fsub	f2 f5 f2
	fbgt	f2 f0 L_else.25245
	addi	r6 r0 0
	jump	L_cont.25144
L_else.25245 : 
	fsqrt	f2 f2
	ldi	r6 r8 6
	bne	r6 r0 L_else.25248
	fsub	f2 f0 f2
	jump	L_cont.25246
L_else.25248 : 
L_cont.25246 : 
	fsub	f2 f2 f3
	fdiv	f2 f2 f4
	fsti	f2 r0 1073
	addi	r6 r0 1
L_cont.25144 : 
	bne	r6 r0 L_else.25148
	jump	L_cont.25129
L_else.25148 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else.25150
	jump	L_cont.25129
L_else.25150 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else.25152
	jump	L_cont.25129
L_else.25152 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 2
	bne	r6 r5 L_else.25154
	jump	L_cont.25129
L_else.25154 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 3
	bne	r6 r5 L_else.25156
	jump	L_cont.25129
L_else.25156 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 4
	bne	r6 r5 L_else.25158
	jump	L_cont.25129
L_else.25158 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 5
	bne	r6 r5 L_else.25160
	jump	L_cont.25129
L_else.25160 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	ldi	r6 r17 6
	bne	r6 r5 L_else.25162
	jump	L_cont.25129
L_else.25162 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element.2188
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network.2192
L_cont.25129 : 
	addi	r19 r19 1
	jump	L_trace_or_matrix.2196
L_solve_each_element_fast.2202 : 
	ldi	r10 r13 0
	ldi	r14 r11 0
	bne	r14 r5 L_else.25372
	return
L_else.25372 : 
	ldi	r9 r14 1970
	ldi	r15 r9 10
	fldi	f7 r15 0
	fldi	f6 r15 1
	fldi	f8 r15 2
	ldi	r6 r13 1
	add	r1 r6 r14
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else.25375
	ldi	r7 r13 0
	fldi	f2 r8 0
	fsub	f3 f2 f7
	fldi	f2 r8 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.25507
	jump	L_cont.25505
L_else.25507 : 
	fsub	f2 f0 f2
L_cont.25505 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25510
	addi	r6 r0 0
	jump	L_cont.25508
L_else.25510 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25547
	jump	L_cont.25545
L_else.25547 : 
	fsub	f2 f0 f2
L_cont.25545 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25549
	addi	r6 r0 0
	jump	L_cont.25508
L_else.25549 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else.25552
	addi	r6 r0 1
	jump	L_cont.25550
L_else.25552 : 
	addi	r6 r0 0
L_cont.25550 : 
	sub	r6 r4 r6
L_cont.25508 : 
	bne	r6 r0 L_else.25512
	fldi	f2 r8 2
	fsub	f2 f2 f6
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25515
	jump	L_cont.25513
L_else.25515 : 
	fsub	f2 f0 f2
L_cont.25513 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25518
	addi	r6 r0 0
	jump	L_cont.25516
L_else.25518 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25539
	jump	L_cont.25537
L_else.25539 : 
	fsub	f2 f0 f2
L_cont.25537 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25541
	addi	r6 r0 0
	jump	L_cont.25516
L_else.25541 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else.25544
	addi	r6 r0 1
	jump	L_cont.25542
L_else.25544 : 
	addi	r6 r0 0
L_cont.25542 : 
	sub	r6 r4 r6
L_cont.25516 : 
	bne	r6 r0 L_else.25520
	fldi	f2 r8 4
	fsub	f3 f2 f8
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25523
	jump	L_cont.25521
L_else.25523 : 
	fsub	f2 f0 f2
L_cont.25521 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25526
	addi	r6 r0 0
	jump	L_cont.25524
L_else.25526 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.25531
	jump	L_cont.25529
L_else.25531 : 
	fsub	f2 f0 f2
L_cont.25529 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25533
	addi	r6 r0 0
	jump	L_cont.25524
L_else.25533 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else.25536
	addi	r6 r0 1
	jump	L_cont.25534
L_else.25536 : 
	addi	r6 r0 0
L_cont.25534 : 
	sub	r6 r4 r6
L_cont.25524 : 
	bne	r6 r0 L_else.25528
	addi	r15 r0 0
	jump	L_cont.25373
L_else.25528 : 
	fsti	f4 r0 1073
	addi	r15 r0 3
	jump	L_cont.25373
L_else.25520 : 
	fsti	f4 r0 1073
	addi	r15 r0 2
	jump	L_cont.25373
L_else.25512 : 
	fsti	f4 r0 1073
	addi	r15 r0 1
	jump	L_cont.25373
L_else.25375 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.25554
	fldi	f2 r8 0
	fbgt	f0 f2 L_else.25556
	addi	r15 r0 0
	jump	L_cont.25373
L_else.25556 : 
	fldi	f2 r8 0
	fldi	f3 r15 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r15 r0 1
	jump	L_cont.25373
L_else.25554 : 
	fldi	f5 r8 0
	fbne	f5 f0 L_else.25558
	addi	r15 r0 0
	jump	L_cont.25373
L_else.25558 : 
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
	fbgt	f2 f0 L_else.25560
	addi	r15 r0 0
	jump	L_cont.25373
L_else.25560 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else.25563
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.25561
L_else.25563 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.25561 : 
	addi	r15 r0 1
L_cont.25373 : 
	bne	r15 r0 L_else.25377
	ldi	r6 r14 1970
	ldi	r6 r6 6
	bne	r6 r0 L_else.25379
	return
L_else.25379 : 
	addi	r11 r11 1
	jump	L_solve_each_element_fast.2202
L_else.25377 : 
	fldi	f3 r0 1073
	fbgt	f3 f0 L_else.25382
	jump	L_cont.25380
L_else.25382 : 
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.25384
	jump	L_cont.25380
L_else.25384 : 
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
	bne	r6 r5 L_else.25387
	addi	r6 r0 1
	jump	L_cont.25385
L_else.25387 : 
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
	bne	r6 r4 L_else.25392
	fbgt	f0 f3 L_else.25475
	fadd	f2 f0 f3
	jump	L_cont.25473
L_else.25475 : 
	fsub	f2 f0 f3
L_cont.25473 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25478
	addi	r6 r0 0
	jump	L_cont.25476
L_else.25478 : 
	fbgt	f0 f4 L_else.25483
	fadd	f2 f0 f4
	jump	L_cont.25481
L_else.25483 : 
	fsub	f2 f0 f4
L_cont.25481 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25485
	addi	r6 r0 0
	jump	L_cont.25476
L_else.25485 : 
	fbgt	f0 f5 L_else.25488
	fadd	f2 f0 f5
	jump	L_cont.25486
L_else.25488 : 
	fsub	f2 f0 f5
L_cont.25486 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25490
	addi	r6 r0 0
	jump	L_cont.25476
L_else.25490 : 
	addi	r6 r0 1
L_cont.25476 : 
	bne	r6 r0 L_else.25480
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont.25390
L_else.25480 : 
	ldi	r6 r8 6
	jump	L_cont.25390
L_else.25392 : 
	addi	r7 r0 2
	bne	r6 r7 L_else.25492
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
	fbgt	f0 f2 L_else.25495
	addi	r6 r0 0
	jump	L_cont.25493
L_else.25495 : 
	addi	r6 r0 1
L_cont.25493 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont.25390
L_else.25492 : 
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
	bne	r6 r0 L_else.25498
	jump	L_cont.25496
L_else.25498 : 
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
L_cont.25496 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else.25501
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.25499
L_else.25501 : 
L_cont.25499 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else.25504
	addi	r6 r0 0
	jump	L_cont.25502
L_else.25504 : 
	addi	r6 r0 1
L_cont.25502 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont.25390 : 
	bne	r6 r0 L_else.25394
	ldi	r6 r12 1
	bne	r6 r5 L_else.25396
	addi	r6 r0 1
	jump	L_cont.25385
L_else.25396 : 
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
	bne	r6 r4 L_else.25399
	fbgt	f0 f3 L_else.25443
	fadd	f2 f0 f3
	jump	L_cont.25441
L_else.25443 : 
	fsub	f2 f0 f3
L_cont.25441 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25446
	addi	r6 r0 0
	jump	L_cont.25444
L_else.25446 : 
	fbgt	f0 f4 L_else.25451
	fadd	f2 f0 f4
	jump	L_cont.25449
L_else.25451 : 
	fsub	f2 f0 f4
L_cont.25449 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25453
	addi	r6 r0 0
	jump	L_cont.25444
L_else.25453 : 
	fbgt	f0 f5 L_else.25456
	fadd	f2 f0 f5
	jump	L_cont.25454
L_else.25456 : 
	fsub	f2 f0 f5
L_cont.25454 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25458
	addi	r6 r0 0
	jump	L_cont.25444
L_else.25458 : 
	addi	r6 r0 1
L_cont.25444 : 
	bne	r6 r0 L_else.25448
	ldi	r6 r8 6
	sub	r6 r4 r6
	jump	L_cont.25397
L_else.25448 : 
	ldi	r6 r8 6
	jump	L_cont.25397
L_else.25399 : 
	addi	r7 r0 2
	bne	r6 r7 L_else.25460
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
	fbgt	f0 f2 L_else.25463
	addi	r6 r0 0
	jump	L_cont.25461
L_else.25463 : 
	addi	r6 r0 1
L_cont.25461 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont.25397
L_else.25460 : 
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
	bne	r6 r0 L_else.25466
	jump	L_cont.25464
L_else.25466 : 
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
L_cont.25464 : 
	ldi	r7 r8 1
	addi	r6 r0 3
	bne	r7 r6 L_else.25469
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.25467
L_else.25469 : 
L_cont.25467 : 
	ldi	r7 r8 6
	fbgt	f0 f2 L_else.25472
	addi	r6 r0 0
	jump	L_cont.25470
L_else.25472 : 
	addi	r6 r0 1
L_cont.25470 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
L_cont.25397 : 
	bne	r6 r0 L_else.25401
	ldi	r6 r12 2
	bne	r6 r5 L_else.25403
	addi	r6 r0 1
	jump	L_cont.25385
L_else.25403 : 
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
	bne	r6 r4 L_else.25406
	fbgt	f0 f2 L_else.25411
	jump	L_cont.25409
L_else.25411 : 
	fsub	f2 f0 f2
L_cont.25409 : 
	ldi	r6 r7 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25414
	addi	r6 r0 0
	jump	L_cont.25412
L_else.25414 : 
	fbgt	f0 f4 L_else.25419
	fadd	f2 f0 f4
	jump	L_cont.25417
L_else.25419 : 
	fsub	f2 f0 f4
L_cont.25417 : 
	ldi	r6 r7 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25421
	addi	r6 r0 0
	jump	L_cont.25412
L_else.25421 : 
	fbgt	f0 f5 L_else.25424
	fadd	f2 f0 f5
	jump	L_cont.25422
L_else.25424 : 
	fsub	f2 f0 f5
L_cont.25422 : 
	ldi	r6 r7 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25426
	addi	r6 r0 0
	jump	L_cont.25412
L_else.25426 : 
	addi	r6 r0 1
L_cont.25412 : 
	bne	r6 r0 L_else.25416
	ldi	r6 r7 6
	sub	r6 r4 r6
	jump	L_cont.25404
L_else.25416 : 
	ldi	r6 r7 6
	jump	L_cont.25404
L_else.25406 : 
	addi	r8 r0 2
	bne	r6 r8 L_else.25428
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
	fbgt	f0 f2 L_else.25431
	addi	r6 r0 0
	jump	L_cont.25429
L_else.25431 : 
	addi	r6 r0 1
L_cont.25429 : 
	xor	r6 r7 r6
	sub	r6 r4 r6
	jump	L_cont.25404
L_else.25428 : 
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
	bne	r6 r0 L_else.25434
	fadd	f2 f0 f3
	jump	L_cont.25432
L_else.25434 : 
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
L_cont.25432 : 
	ldi	r8 r7 1
	addi	r6 r0 3
	bne	r8 r6 L_else.25437
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.25435
L_else.25437 : 
L_cont.25435 : 
	ldi	r6 r7 6
	fbgt	f0 f2 L_else.25440
	addi	r7 r0 0
	jump	L_cont.25438
L_else.25440 : 
	addi	r7 r0 1
L_cont.25438 : 
	xor	r6 r6 r7
	sub	r6 r4 r6
L_cont.25404 : 
	bne	r6 r0 L_else.25408
	addi	r6 r0 3
	add	r7 r0 r12
	fadd	f2 f0 f13
	fadd	f3 f0 f12
	fadd	f4 f0 f11
	call	L_check_all_inside.2173
	jump	L_cont.25385
L_else.25408 : 
	addi	r6 r0 0
	jump	L_cont.25385
L_else.25401 : 
	addi	r6 r0 0
	jump	L_cont.25385
L_else.25394 : 
	addi	r6 r0 0
L_cont.25385 : 
	bne	r6 r0 L_else.25389
	jump	L_cont.25380
L_else.25389 : 
	fsti	f14 r0 1082
	fsti	f13 r0 1042
	fsti	f12 r0 1043
	fsti	f11 r0 1044
	sti	r14 r0 1045
	sti	r15 r0 1074
L_cont.25380 : 
	addi	r11 r11 1
	jump	L_solve_each_element_fast.2202
L_solve_one_or_network_fast.2206 : 
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25566
	return
L_else.25566 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast.2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25568
	return
L_else.25568 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast.2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25570
	return
L_else.25570 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast.2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25572
	return
L_else.25572 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast.2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25574
	return
L_else.25574 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast.2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25576
	return
L_else.25576 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast.2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25578
	return
L_else.25578 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast.2202
	addi	r16 r16 1
	add	r1 r17 r16
	ldi	r6 r1 0
	bne	r6 r5 L_else.25580
	return
L_else.25580 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r18
	call	L_solve_each_element_fast.2202
	addi	r16 r16 1
	jump	L_solve_one_or_network_fast.2206
L_trace_or_matrix_fast.2210 : 
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else.25583
	return
L_else.25583 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.25586
	ldi	r6 r17 1
	bne	r6 r5 L_else.25683
	jump	L_cont.25584
L_else.25683 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 2
	bne	r6 r5 L_else.25685
	jump	L_cont.25584
L_else.25685 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 3
	bne	r6 r5 L_else.25687
	jump	L_cont.25584
L_else.25687 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 4
	bne	r6 r5 L_else.25689
	jump	L_cont.25584
L_else.25689 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 5
	bne	r6 r5 L_else.25691
	jump	L_cont.25584
L_else.25691 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 6
	bne	r6 r5 L_else.25693
	jump	L_cont.25584
L_else.25693 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 7
	bne	r6 r5 L_else.25695
	jump	L_cont.25584
L_else.25695 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_fast.2206
	jump	L_cont.25584
L_else.25586 : 
	ldi	r10 r7 1970
	ldi	r9 r10 10
	fldi	f7 r9 0
	fldi	f6 r9 1
	fldi	f8 r9 2
	ldi	r6 r21 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.25698
	ldi	r7 r21 0
	fldi	f2 r8 0
	fsub	f3 f2 f7
	fldi	f2 r8 1
	fmul	f4 f3 f2
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.25719
	jump	L_cont.25717
L_else.25719 : 
	fsub	f2 f0 f2
L_cont.25717 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25722
	addi	r6 r0 0
	jump	L_cont.25720
L_else.25722 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25759
	jump	L_cont.25757
L_else.25759 : 
	fsub	f2 f0 f2
L_cont.25757 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25761
	addi	r6 r0 0
	jump	L_cont.25720
L_else.25761 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else.25764
	addi	r6 r0 1
	jump	L_cont.25762
L_else.25764 : 
	addi	r6 r0 0
L_cont.25762 : 
	sub	r6 r4 r6
L_cont.25720 : 
	bne	r6 r0 L_else.25724
	fldi	f2 r8 2
	fsub	f2 f2 f6
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25727
	jump	L_cont.25725
L_else.25727 : 
	fsub	f2 f0 f2
L_cont.25725 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25730
	addi	r6 r0 0
	jump	L_cont.25728
L_else.25730 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25751
	jump	L_cont.25749
L_else.25751 : 
	fsub	f2 f0 f2
L_cont.25749 : 
	ldi	r6 r10 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25753
	addi	r6 r0 0
	jump	L_cont.25728
L_else.25753 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else.25756
	addi	r6 r0 1
	jump	L_cont.25754
L_else.25756 : 
	addi	r6 r0 0
L_cont.25754 : 
	sub	r6 r4 r6
L_cont.25728 : 
	bne	r6 r0 L_else.25732
	fldi	f2 r8 4
	fsub	f3 f2 f8
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25735
	jump	L_cont.25733
L_else.25735 : 
	fsub	f2 f0 f2
L_cont.25733 : 
	ldi	r6 r10 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25738
	addi	r6 r0 0
	jump	L_cont.25736
L_else.25738 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.25743
	jump	L_cont.25741
L_else.25743 : 
	fsub	f2 f0 f2
L_cont.25741 : 
	ldi	r6 r10 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25745
	addi	r6 r0 0
	jump	L_cont.25736
L_else.25745 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else.25748
	addi	r6 r0 1
	jump	L_cont.25746
L_else.25748 : 
	addi	r6 r0 0
L_cont.25746 : 
	sub	r6 r4 r6
L_cont.25736 : 
	bne	r6 r0 L_else.25740
	addi	r6 r0 0
	jump	L_cont.25696
L_else.25740 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.25696
L_else.25732 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont.25696
L_else.25724 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.25696
L_else.25698 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.25766
	fldi	f2 r8 0
	fbgt	f0 f2 L_else.25768
	addi	r6 r0 0
	jump	L_cont.25696
L_else.25768 : 
	fldi	f2 r8 0
	fldi	f3 r9 3
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont.25696
L_else.25766 : 
	fldi	f5 r8 0
	fbne	f5 f0 L_else.25770
	addi	r6 r0 0
	jump	L_cont.25696
L_else.25770 : 
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
	fbgt	f2 f0 L_else.25772
	addi	r6 r0 0
	jump	L_cont.25696
L_else.25772 : 
	ldi	r6 r10 6
	bne	r6 r0 L_else.25775
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.25773
L_else.25775 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.25773 : 
	addi	r6 r0 1
L_cont.25696 : 
	bne	r6 r0 L_else.25700
	jump	L_cont.25584
L_else.25700 : 
	fldi	f2 r0 1073
	fldi	f3 r0 1082
	fbgt	f3 f2 L_else.25702
	jump	L_cont.25584
L_else.25702 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else.25704
	jump	L_cont.25584
L_else.25704 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 2
	bne	r6 r5 L_else.25706
	jump	L_cont.25584
L_else.25706 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 3
	bne	r6 r5 L_else.25708
	jump	L_cont.25584
L_else.25708 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 4
	bne	r6 r5 L_else.25710
	jump	L_cont.25584
L_else.25710 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 5
	bne	r6 r5 L_else.25712
	jump	L_cont.25584
L_else.25712 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 6
	bne	r6 r5 L_else.25714
	jump	L_cont.25584
L_else.25714 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 7
	bne	r6 r5 L_else.25716
	jump	L_cont.25584
L_else.25716 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	addi	r16 r0 8
	add	r18 r0 r21
	call	L_solve_one_or_network_fast.2206
L_cont.25584 : 
	addi	r19 r19 1
	add	r1 r20 r19
	ldi	r17 r1 0
	ldi	r7 r17 0
	bne	r7 r5 L_else.25588
	return
L_else.25588 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.25591
	ldi	r6 r17 1
	bne	r6 r5 L_else.25593
	jump	L_cont.25589
L_else.25593 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 2
	bne	r6 r5 L_else.25595
	jump	L_cont.25589
L_else.25595 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 3
	bne	r6 r5 L_else.25597
	jump	L_cont.25589
L_else.25597 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 4
	bne	r6 r5 L_else.25599
	jump	L_cont.25589
L_else.25599 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 5
	bne	r6 r5 L_else.25601
	jump	L_cont.25589
L_else.25601 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 6
	bne	r6 r5 L_else.25603
	jump	L_cont.25589
L_else.25603 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_fast.2206
	jump	L_cont.25589
L_else.25591 : 
	ldi	r9 r7 1970
	ldi	r10 r9 10
	fldi	f8 r10 0
	fldi	f6 r10 1
	fldi	f7 r10 2
	ldi	r6 r21 1
	add	r1 r6 r7
	ldi	r8 r1 0
	ldi	r7 r9 1
	bne	r7 r4 L_else.25606
	ldi	r7 r21 0
	fldi	f2 r8 0
	fsub	f2 f2 f8
	fldi	f3 r8 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.25625
	jump	L_cont.25623
L_else.25625 : 
	fsub	f2 f0 f2
L_cont.25623 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25628
	addi	r6 r0 0
	jump	L_cont.25626
L_else.25628 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25665
	jump	L_cont.25663
L_else.25665 : 
	fsub	f2 f0 f2
L_cont.25663 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25667
	addi	r6 r0 0
	jump	L_cont.25626
L_else.25667 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else.25670
	addi	r6 r0 1
	jump	L_cont.25668
L_else.25670 : 
	addi	r6 r0 0
L_cont.25668 : 
	sub	r6 r4 r6
L_cont.25626 : 
	bne	r6 r0 L_else.25630
	fldi	f2 r8 2
	fsub	f2 f2 f6
	fldi	f3 r8 3
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25633
	jump	L_cont.25631
L_else.25633 : 
	fsub	f2 f0 f2
L_cont.25631 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25636
	addi	r6 r0 0
	jump	L_cont.25634
L_else.25636 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25657
	jump	L_cont.25655
L_else.25657 : 
	fsub	f2 f0 f2
L_cont.25655 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25659
	addi	r6 r0 0
	jump	L_cont.25634
L_else.25659 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else.25662
	addi	r6 r0 1
	jump	L_cont.25660
L_else.25662 : 
	addi	r6 r0 0
L_cont.25660 : 
	sub	r6 r4 r6
L_cont.25634 : 
	bne	r6 r0 L_else.25638
	fldi	f2 r8 4
	fsub	f3 f2 f7
	fldi	f2 r8 5
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f8
	fbgt	f0 f2 L_else.25641
	jump	L_cont.25639
L_else.25641 : 
	fsub	f2 f0 f2
L_cont.25639 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25644
	addi	r6 r0 0
	jump	L_cont.25642
L_else.25644 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.25649
	jump	L_cont.25647
L_else.25649 : 
	fsub	f2 f0 f2
L_cont.25647 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25651
	addi	r6 r0 0
	jump	L_cont.25642
L_else.25651 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else.25654
	addi	r6 r0 1
	jump	L_cont.25652
L_else.25654 : 
	addi	r6 r0 0
L_cont.25652 : 
	sub	r6 r4 r6
L_cont.25642 : 
	bne	r6 r0 L_else.25646
	addi	r6 r0 0
	jump	L_cont.25604
L_else.25646 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.25604
L_else.25638 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont.25604
L_else.25630 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.25604
L_else.25606 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.25672
	fldi	f2 r8 0
	fbgt	f0 f2 L_else.25674
	addi	r6 r0 0
	jump	L_cont.25604
L_else.25674 : 
	fldi	f3 r8 0
	fldi	f2 r10 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont.25604
L_else.25672 : 
	fldi	f5 r8 0
	fbne	f5 f0 L_else.25676
	addi	r6 r0 0
	jump	L_cont.25604
L_else.25676 : 
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
	fbgt	f2 f0 L_else.25678
	addi	r6 r0 0
	jump	L_cont.25604
L_else.25678 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else.25681
	fsqrt	f2 f2
	fsub	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.25679
L_else.25681 : 
	fsqrt	f2 f2
	fadd	f3 f4 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.25679 : 
	addi	r6 r0 1
L_cont.25604 : 
	bne	r6 r0 L_else.25608
	jump	L_cont.25589
L_else.25608 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.25610
	jump	L_cont.25589
L_else.25610 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else.25612
	jump	L_cont.25589
L_else.25612 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 2
	bne	r6 r5 L_else.25614
	jump	L_cont.25589
L_else.25614 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 3
	bne	r6 r5 L_else.25616
	jump	L_cont.25589
L_else.25616 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 4
	bne	r6 r5 L_else.25618
	jump	L_cont.25589
L_else.25618 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 5
	bne	r6 r5 L_else.25620
	jump	L_cont.25589
L_else.25620 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 6
	bne	r6 r5 L_else.25622
	jump	L_cont.25589
L_else.25622 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r21
	call	L_solve_each_element_fast.2202
	addi	r16 r0 7
	add	r18 r0 r21
	call	L_solve_one_or_network_fast.2206
L_cont.25589 : 
	addi	r19 r19 1
	jump	L_trace_or_matrix_fast.2210
L_utexture.2225 : 
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
	bne	r9 r4 L_else.25778
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
	fbgt	f5 f6 L_else.25781
	fbgt	f2 f3 L_else.25783
	fldi	f2 r0 38
	jump	L_cont.25779
L_else.25783 : 
	fldi	f2 r0 29
	jump	L_cont.25779
L_else.25781 : 
	fbgt	f2 f3 L_else.25785
	fldi	f2 r0 29
	jump	L_cont.25779
L_else.25785 : 
	fldi	f2 r0 38
L_cont.25779 : 
	fsti	f2 r0 1050
	return
L_else.25778 : 
	addi	r8 r0 2
	bne	r9 r8 L_else.25787
	fldi	f2 r7 1
	fldi	f3 r0 39
	fmul	f2 f2 f3
	call	L_sin.1878
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
L_else.25787 : 
	addi	r8 r0 3
	bne	r9 r8 L_else.25789
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
	call	L_cos.1880
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
L_else.25789 : 
	addi	r8 r0 4
	bne	r9 r8 L_else.25791
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
	fbgt	f0 f3 L_else.25794
	fadd	f2 f0 f3
	jump	L_cont.25792
L_else.25794 : 
	fsub	f2 f0 f3
L_cont.25792 : 
	fldi	f4 r0 41
	fbgt	f4 f2 L_else.25797
	fdiv	f2 f5 f3
	fbgt	f0 f2 L_else.25812
	jump	L_cont.25810
L_else.25812 : 
	fsub	f2 f0 f2
L_cont.25810 : 
	call	L_atan.1882
	fldi	f3 r0 42
	fmul	f3 f2 f3
	fldi	f2 r0 40
	fdiv	f3 f3 f2
	jump	L_cont.25795
L_else.25797 : 
	fldi	f3 r0 43
L_cont.25795 : 
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
	fbgt	f0 f15 L_else.25800
	fadd	f2 f0 f15
	jump	L_cont.25798
L_else.25800 : 
	fsub	f2 f0 f15
L_cont.25798 : 
	fldi	f3 r0 41
	fbgt	f3 f2 L_else.25803
	fdiv	f2 f4 f15
	fbgt	f0 f2 L_else.25809
	jump	L_cont.25807
L_else.25809 : 
	fsub	f2 f0 f2
L_cont.25807 : 
	call	L_atan.1882
	fldi	f3 r0 42
	fmul	f2 f2 f3
	fldi	f3 r0 40
	fdiv	f2 f2 f3
	jump	L_cont.25801
L_else.25803 : 
	fldi	f2 r0 43
L_cont.25801 : 
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
	fbgt	f0 f2 L_else.25806
	jump	L_cont.25804
L_else.25806 : 
	fldi	f2 r0 29
L_cont.25804 : 
	fldi	f3 r0 38
	fmul	f2 f3 f2
	fldi	f3 r0 45
	fdiv	f2 f2 f3
	fsti	f2 r0 1051
	return
L_else.25791 : 
	return
L_trace_reflections.2232 : 
	bgt	r0 r22 L_else.25815
	ldi	r25 r22 1185
	ldi	r24 r25 1
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r19 r0 0
	ldi	r20 r0 1183
	add	r21 r0 r24
	call	L_trace_or_matrix_fast.2210
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else.25818
	addi	r6 r0 0
	jump	L_cont.25816
L_else.25818 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else.25966
	addi	r6 r0 0
	jump	L_cont.25816
L_else.25966 : 
	addi	r6 r0 1
L_cont.25816 : 
	bne	r6 r0 L_else.25821
	jump	L_cont.25819
L_else.25821 : 
	ldi	r7 r0 1045
	addi	r6 r0 4
	mul	r7 r7 r6
	ldi	r6 r0 1074
	add	r7 r7 r6
	ldi	r6 r25 0
	bne	r7 r6 L_else.25823
	ldi	r17 r0 1183
	ldi	r16 r17 0
	ldi	r7 r16 0
	bne	r7 r5 L_else.25826
	addi	r6 r0 0
	jump	L_cont.25824
L_else.25826 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.25836
	addi	r6 r0 1
	jump	L_cont.25834
L_else.25836 : 
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
	bne	r7 r4 L_else.25868
	ldi	r7 r10 0
	fldi	f2 r8 0
	fsub	f2 f2 f7
	fldi	f3 r8 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.25902
	jump	L_cont.25900
L_else.25902 : 
	fsub	f2 f0 f2
L_cont.25900 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25905
	addi	r6 r0 0
	jump	L_cont.25903
L_else.25905 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.25942
	jump	L_cont.25940
L_else.25942 : 
	fsub	f2 f0 f2
L_cont.25940 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25944
	addi	r6 r0 0
	jump	L_cont.25903
L_else.25944 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else.25947
	addi	r6 r0 1
	jump	L_cont.25945
L_else.25947 : 
	addi	r6 r0 0
L_cont.25945 : 
	sub	r6 r4 r6
L_cont.25903 : 
	bne	r6 r0 L_else.25907
	fldi	f2 r8 2
	fsub	f3 f2 f6
	fldi	f2 r8 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25910
	jump	L_cont.25908
L_else.25910 : 
	fsub	f2 f0 f2
L_cont.25908 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25913
	addi	r6 r0 0
	jump	L_cont.25911
L_else.25913 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.25934
	jump	L_cont.25932
L_else.25934 : 
	fsub	f2 f0 f2
L_cont.25932 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.25936
	addi	r6 r0 0
	jump	L_cont.25911
L_else.25936 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else.25939
	addi	r6 r0 1
	jump	L_cont.25937
L_else.25939 : 
	addi	r6 r0 0
L_cont.25937 : 
	sub	r6 r4 r6
L_cont.25911 : 
	bne	r6 r0 L_else.25915
	fldi	f2 r8 4
	fsub	f2 f2 f9
	fldi	f3 r8 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.25918
	jump	L_cont.25916
L_else.25918 : 
	fsub	f2 f0 f2
L_cont.25916 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.25921
	addi	r6 r0 0
	jump	L_cont.25919
L_else.25921 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.25926
	jump	L_cont.25924
L_else.25926 : 
	fsub	f2 f0 f2
L_cont.25924 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.25928
	addi	r6 r0 0
	jump	L_cont.25919
L_else.25928 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else.25931
	addi	r6 r0 1
	jump	L_cont.25929
L_else.25931 : 
	addi	r6 r0 0
L_cont.25929 : 
	sub	r6 r4 r6
L_cont.25919 : 
	bne	r6 r0 L_else.25923
	addi	r6 r0 0
	jump	L_cont.25866
L_else.25923 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.25866
L_else.25915 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont.25866
L_else.25907 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.25866
L_else.25868 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.25949
	fldi	f2 r8 0
	fbgt	f0 f2 L_else.25951
	addi	r6 r0 0
	jump	L_cont.25866
L_else.25951 : 
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
	jump	L_cont.25866
L_else.25949 : 
	fldi	f8 r8 0
	fbne	f8 f0 L_else.25953
	addi	r6 r0 0
	jump	L_cont.25866
L_else.25953 : 
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
	bne	r6 r0 L_else.25956
	jump	L_cont.25954
L_else.25956 : 
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
L_cont.25954 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else.25959
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.25957
L_else.25959 : 
L_cont.25957 : 
	fmul	f3 f5 f5
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.25961
	addi	r6 r0 0
	jump	L_cont.25866
L_else.25961 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else.25964
	fsqrt	f2 f2
	fsub	f3 f5 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.25962
L_else.25964 : 
	fsqrt	f2 f2
	fadd	f3 f5 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.25962 : 
	addi	r6 r0 1
L_cont.25866 : 
	bne	r6 r0 L_else.25870
	addi	r6 r0 0
	jump	L_cont.25834
L_else.25870 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else.25872
	addi	r6 r0 0
	jump	L_cont.25834
L_else.25872 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else.25875
	addi	r6 r0 0
	jump	L_cont.25873
L_else.25875 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25879
	ldi	r6 r16 2
	bne	r6 r5 L_else.25881
	addi	r6 r0 0
	jump	L_cont.25873
L_else.25881 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25883
	ldi	r6 r16 3
	bne	r6 r5 L_else.25885
	addi	r6 r0 0
	jump	L_cont.25873
L_else.25885 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25887
	ldi	r6 r16 4
	bne	r6 r5 L_else.25889
	addi	r6 r0 0
	jump	L_cont.25873
L_else.25889 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25891
	ldi	r6 r16 5
	bne	r6 r5 L_else.25893
	addi	r6 r0 0
	jump	L_cont.25873
L_else.25893 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25895
	ldi	r6 r16 6
	bne	r6 r5 L_else.25897
	addi	r6 r0 0
	jump	L_cont.25873
L_else.25897 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25899
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.25873
L_else.25899 : 
	addi	r6 r0 1
	jump	L_cont.25873
L_else.25895 : 
	addi	r6 r0 1
	jump	L_cont.25873
L_else.25891 : 
	addi	r6 r0 1
	jump	L_cont.25873
L_else.25887 : 
	addi	r6 r0 1
	jump	L_cont.25873
L_else.25883 : 
	addi	r6 r0 1
	jump	L_cont.25873
L_else.25879 : 
	addi	r6 r0 1
L_cont.25873 : 
	bne	r6 r0 L_else.25877
	addi	r6 r0 0
	jump	L_cont.25834
L_else.25877 : 
	addi	r6 r0 1
L_cont.25834 : 
	bne	r6 r0 L_else.25838
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix.2185
	jump	L_cont.25824
L_else.25838 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else.25841
	addi	r6 r0 0
	jump	L_cont.25839
L_else.25841 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25845
	ldi	r6 r16 2
	bne	r6 r5 L_else.25847
	addi	r6 r0 0
	jump	L_cont.25839
L_else.25847 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25849
	ldi	r6 r16 3
	bne	r6 r5 L_else.25851
	addi	r6 r0 0
	jump	L_cont.25839
L_else.25851 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25853
	ldi	r6 r16 4
	bne	r6 r5 L_else.25855
	addi	r6 r0 0
	jump	L_cont.25839
L_else.25855 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25857
	ldi	r6 r16 5
	bne	r6 r5 L_else.25859
	addi	r6 r0 0
	jump	L_cont.25839
L_else.25859 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25861
	ldi	r6 r16 6
	bne	r6 r5 L_else.25863
	addi	r6 r0 0
	jump	L_cont.25839
L_else.25863 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.25865
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.25839
L_else.25865 : 
	addi	r6 r0 1
	jump	L_cont.25839
L_else.25861 : 
	addi	r6 r0 1
	jump	L_cont.25839
L_else.25857 : 
	addi	r6 r0 1
	jump	L_cont.25839
L_else.25853 : 
	addi	r6 r0 1
	jump	L_cont.25839
L_else.25849 : 
	addi	r6 r0 1
	jump	L_cont.25839
L_else.25845 : 
	addi	r6 r0 1
L_cont.25839 : 
	bne	r6 r0 L_else.25843
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix.2185
	jump	L_cont.25824
L_else.25843 : 
	addi	r6 r0 1
L_cont.25824 : 
	bne	r6 r0 L_else.25828
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
	fbgt	f4 f0 L_else.25831
	jump	L_cont.25829
L_else.25831 : 
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
L_cont.25829 : 
	fbgt	f5 f0 L_else.25833
	jump	L_cont.25819
L_else.25833 : 
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
	jump	L_cont.25819
L_else.25828 : 
	jump	L_cont.25819
L_else.25823 : 
L_cont.25819 : 
	addi	r22 r22 -1
	jump	L_trace_reflections.2232
L_else.25815 : 
	return
L_trace_ray.2237 : 
	addi	r6 r0 4
	bgt	r26 r6 L_else.25969
	ldi	r29 r28 2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r19 r0 0
	ldi	r20 r0 1183
	add	r21 r0 r27
	call	L_trace_or_matrix.2196
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else.25972
	addi	r6 r0 0
	jump	L_cont.25970
L_else.25972 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else.26150
	addi	r6 r0 0
	jump	L_cont.25970
L_else.26150 : 
	addi	r6 r0 1
L_cont.25970 : 
	bne	r6 r0 L_else.25974
	addi	r6 r0 -1
	add	r1 r29 r26
	sti	r6 r1 0
	bne	r26 r0 L_else.25976
	return
L_else.25976 : 
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
	fbgt	f3 f0 L_else.25978
	return
L_else.25978 : 
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
L_else.25974 : 
	ldi	r10 r0 1045
	ldi	r31 r10 1970
	ldi	r30 r31 2
	ldi	r6 r31 7
	fldi	f2 r6 0
	fmul	f19 f2 f17
	ldi	r7 r31 1
	bne	r7 r4 L_else.25981
	ldi	r7 r0 1074
	addi	r6 r0 1046
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r7 r7 -1
	add	r1 r27 r7
	fldi	f2 r1 0
	fbne	f2 f0 L_else.26136
	fldi	f2 r0 29
	jump	L_cont.26134
L_else.26136 : 
	fbgt	f2 f0 L_else.26138
	fldi	f2 r0 31
	jump	L_cont.26134
L_else.26138 : 
	fldi	f2 r0 12
L_cont.26134 : 
	fsub	f2 f0 f2
	add	r1 r6 r7
	fsti	f2 r1 0
	jump	L_cont.25979
L_else.25981 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.26140
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
	jump	L_cont.25979
L_else.26140 : 
	fldi	f3 r0 1042
	ldi	r6 r31 5
	fldi	f2 r6 0
	fsub	f7 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r31 5
	fldi	f2 r6 1
	fsub	f8 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r31 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r31 4
	fldi	f2 r6 0
	fmul	f5 f7 f2
	ldi	r6 r31 4
	fldi	f2 r6 1
	fmul	f6 f8 f2
	ldi	r6 r31 4
	fldi	f2 r6 2
	fmul	f4 f9 f2
	ldi	r6 r31 3
	bne	r6 r0 L_else.26143
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont.26141
L_else.26143 : 
	ldi	r6 r31 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r31 9
	fldi	f2 r6 1
	fmul	f2 f9 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f5 f2
	fsti	f2 r0 1046
	ldi	r6 r31 9
	fldi	f2 r6 2
	fmul	f3 f7 f2
	ldi	r6 r31 9
	fldi	f2 r6 0
	fmul	f2 f9 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r6 r31 9
	fldi	f2 r6 1
	fmul	f3 f7 f2
	ldi	r6 r31 9
	fldi	f2 r6 0
	fmul	f2 f8 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont.26141 : 
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
	fbne	f3 f0 L_else.26146
	fldi	f3 r0 12
	jump	L_cont.26144
L_else.26146 : 
	bne	r6 r0 L_else.26148
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont.26144
L_else.26148 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont.26144 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont.25979 : 
	addi	r19 r0 1042
	fldi	f2 r0 1042
	fsti	f2 r0 1063
	fldi	f2 r0 1043
	fsti	f2 r0 1064
	fldi	f2 r0 1044
	fsti	f2 r0 1065
	add	r6 r0 r31
	add	r7 r0 r19
	call	L_utexture.2225
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
	fbgt	f3 f2 L_else.25984
	addi	r6 r0 1
	add	r1 r7 r26
	sti	r6 r1 0
	ldi	r6 r28 4
	add	r1 r6 r26
	ldi	r7 r1 0
	fldi	f2 r0 1049
	fsti	f2 r7 0
	fldi	f2 r0 1050
	fsti	f2 r7 1
	fldi	f2 r0 1051
	fsti	f2 r7 2
	add	r1 r6 r26
	ldi	r6 r1 0
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
	jump	L_cont.25982
L_else.25984 : 
	addi	r6 r0 0
	add	r1 r7 r26
	sti	r6 r1 0
L_cont.25982 : 
	fldi	f5 r0 49
	fldi	f2 r27 0
	fldi	f3 r0 1046
	fmul	f3 f2 f3
	fldi	f4 r27 1
	fldi	f2 r0 1047
	fmul	f2 f4 f2
	fadd	f3 f3 f2
	fldi	f4 r27 2
	fldi	f2 r0 1048
	fmul	f2 f4 f2
	fadd	f2 f3 f2
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
	bne	r7 r5 L_else.25987
	addi	r6 r0 0
	jump	L_cont.25985
L_else.25987 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.26005
	addi	r6 r0 1
	jump	L_cont.26003
L_else.26005 : 
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
	bne	r7 r4 L_else.26037
	ldi	r7 r10 0
	fldi	f2 r8 0
	fsub	f2 f2 f7
	fldi	f3 r8 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.26071
	jump	L_cont.26069
L_else.26071 : 
	fsub	f2 f0 f2
L_cont.26069 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.26074
	addi	r6 r0 0
	jump	L_cont.26072
L_else.26074 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.26111
	jump	L_cont.26109
L_else.26111 : 
	fsub	f2 f0 f2
L_cont.26109 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.26113
	addi	r6 r0 0
	jump	L_cont.26072
L_else.26113 : 
	fldi	f2 r8 1
	fbne	f2 f0 L_else.26116
	addi	r6 r0 1
	jump	L_cont.26114
L_else.26116 : 
	addi	r6 r0 0
L_cont.26114 : 
	sub	r6 r4 r6
L_cont.26072 : 
	bne	r6 r0 L_else.26076
	fldi	f2 r8 2
	fsub	f3 f2 f5
	fldi	f2 r8 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.26079
	jump	L_cont.26077
L_else.26079 : 
	fsub	f2 f0 f2
L_cont.26077 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.26082
	addi	r6 r0 0
	jump	L_cont.26080
L_else.26082 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.26103
	jump	L_cont.26101
L_else.26103 : 
	fsub	f2 f0 f2
L_cont.26101 : 
	ldi	r6 r9 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.26105
	addi	r6 r0 0
	jump	L_cont.26080
L_else.26105 : 
	fldi	f2 r8 3
	fbne	f2 f0 L_else.26108
	addi	r6 r0 1
	jump	L_cont.26106
L_else.26108 : 
	addi	r6 r0 0
L_cont.26106 : 
	sub	r6 r4 r6
L_cont.26080 : 
	bne	r6 r0 L_else.26084
	fldi	f2 r8 4
	fsub	f2 f2 f9
	fldi	f3 r8 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.26087
	jump	L_cont.26085
L_else.26087 : 
	fsub	f2 f0 f2
L_cont.26085 : 
	ldi	r6 r9 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.26090
	addi	r6 r0 0
	jump	L_cont.26088
L_else.26090 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.26095
	jump	L_cont.26093
L_else.26095 : 
	fsub	f2 f0 f2
L_cont.26093 : 
	ldi	r6 r9 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.26097
	addi	r6 r0 0
	jump	L_cont.26088
L_else.26097 : 
	fldi	f2 r8 5
	fbne	f2 f0 L_else.26100
	addi	r6 r0 1
	jump	L_cont.26098
L_else.26100 : 
	addi	r6 r0 0
L_cont.26098 : 
	sub	r6 r4 r6
L_cont.26088 : 
	bne	r6 r0 L_else.26092
	addi	r6 r0 0
	jump	L_cont.26035
L_else.26092 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.26035
L_else.26084 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont.26035
L_else.26076 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.26035
L_else.26037 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.26118
	fldi	f2 r8 0
	fbgt	f0 f2 L_else.26120
	addi	r6 r0 0
	jump	L_cont.26035
L_else.26120 : 
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
	jump	L_cont.26035
L_else.26118 : 
	fldi	f8 r8 0
	fbne	f8 f0 L_else.26122
	addi	r6 r0 0
	jump	L_cont.26035
L_else.26122 : 
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
	fmul	f4 f3 f2
	fmul	f3 f5 f5
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
	bne	r6 r0 L_else.26125
	jump	L_cont.26123
L_else.26125 : 
	fmul	f4 f5 f9
	ldi	r6 r9 9
	fldi	f3 r6 0
	fmul	f3 f4 f3
	fadd	f4 f2 f3
	fmul	f3 f9 f7
	ldi	r6 r9 9
	fldi	f2 r6 1
	fmul	f2 f3 f2
	fadd	f3 f4 f2
	fmul	f4 f7 f5
	ldi	r6 r9 9
	fldi	f2 r6 2
	fmul	f2 f4 f2
	fadd	f2 f3 f2
L_cont.26123 : 
	ldi	r7 r9 1
	addi	r6 r0 3
	bne	r7 r6 L_else.26128
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.26126
L_else.26128 : 
L_cont.26126 : 
	fmul	f3 f6 f6
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.26130
	addi	r6 r0 0
	jump	L_cont.26035
L_else.26130 : 
	ldi	r6 r9 6
	bne	r6 r0 L_else.26133
	fsqrt	f2 f2
	fsub	f3 f6 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.26131
L_else.26133 : 
	fsqrt	f2 f2
	fadd	f3 f6 f2
	fldi	f2 r8 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.26131 : 
	addi	r6 r0 1
L_cont.26035 : 
	bne	r6 r0 L_else.26039
	addi	r6 r0 0
	jump	L_cont.26003
L_else.26039 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else.26041
	addi	r6 r0 0
	jump	L_cont.26003
L_else.26041 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else.26044
	addi	r6 r0 0
	jump	L_cont.26042
L_else.26044 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26048
	ldi	r6 r16 2
	bne	r6 r5 L_else.26050
	addi	r6 r0 0
	jump	L_cont.26042
L_else.26050 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26052
	ldi	r6 r16 3
	bne	r6 r5 L_else.26054
	addi	r6 r0 0
	jump	L_cont.26042
L_else.26054 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26056
	ldi	r6 r16 4
	bne	r6 r5 L_else.26058
	addi	r6 r0 0
	jump	L_cont.26042
L_else.26058 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26060
	ldi	r6 r16 5
	bne	r6 r5 L_else.26062
	addi	r6 r0 0
	jump	L_cont.26042
L_else.26062 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26064
	ldi	r6 r16 6
	bne	r6 r5 L_else.26066
	addi	r6 r0 0
	jump	L_cont.26042
L_else.26066 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26068
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.26042
L_else.26068 : 
	addi	r6 r0 1
	jump	L_cont.26042
L_else.26064 : 
	addi	r6 r0 1
	jump	L_cont.26042
L_else.26060 : 
	addi	r6 r0 1
	jump	L_cont.26042
L_else.26056 : 
	addi	r6 r0 1
	jump	L_cont.26042
L_else.26052 : 
	addi	r6 r0 1
	jump	L_cont.26042
L_else.26048 : 
	addi	r6 r0 1
L_cont.26042 : 
	bne	r6 r0 L_else.26046
	addi	r6 r0 0
	jump	L_cont.26003
L_else.26046 : 
	addi	r6 r0 1
L_cont.26003 : 
	bne	r6 r0 L_else.26007
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix.2185
	jump	L_cont.25985
L_else.26007 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else.26010
	addi	r6 r0 0
	jump	L_cont.26008
L_else.26010 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26014
	ldi	r6 r16 2
	bne	r6 r5 L_else.26016
	addi	r6 r0 0
	jump	L_cont.26008
L_else.26016 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26018
	ldi	r6 r16 3
	bne	r6 r5 L_else.26020
	addi	r6 r0 0
	jump	L_cont.26008
L_else.26020 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26022
	ldi	r6 r16 4
	bne	r6 r5 L_else.26024
	addi	r6 r0 0
	jump	L_cont.26008
L_else.26024 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26026
	ldi	r6 r16 5
	bne	r6 r5 L_else.26028
	addi	r6 r0 0
	jump	L_cont.26008
L_else.26028 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26030
	ldi	r6 r16 6
	bne	r6 r5 L_else.26032
	addi	r6 r0 0
	jump	L_cont.26008
L_else.26032 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26034
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.26008
L_else.26034 : 
	addi	r6 r0 1
	jump	L_cont.26008
L_else.26030 : 
	addi	r6 r0 1
	jump	L_cont.26008
L_else.26026 : 
	addi	r6 r0 1
	jump	L_cont.26008
L_else.26022 : 
	addi	r6 r0 1
	jump	L_cont.26008
L_else.26018 : 
	addi	r6 r0 1
	jump	L_cont.26008
L_else.26014 : 
	addi	r6 r0 1
L_cont.26008 : 
	bne	r6 r0 L_else.26012
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix.2185
	jump	L_cont.25985
L_else.26012 : 
	addi	r6 r0 1
L_cont.25985 : 
	bne	r6 r0 L_else.25990
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
	fbgt	f5 f0 L_else.26000
	jump	L_cont.25998
L_else.26000 : 
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
L_cont.25998 : 
	fbgt	f4 f0 L_else.26002
	jump	L_cont.25988
L_else.26002 : 
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
	jump	L_cont.25988
L_else.25990 : 
L_cont.25988 : 
	fldi	f2 r0 1042
	fsti	f2 r0 1066
	fldi	f2 r0 1043
	fsti	f2 r0 1067
	fldi	f2 r0 1044
	fsti	f2 r0 1068
	ldi	r6 r0 1072
	addi	r7 r6 -1
	add	r6 r0 r19
	call	L_setup_startp_constants.2148
	ldi	r6 r0 1075
	addi	r22 r6 -1
	add	r23 r0 r27
	fadd	f15 f0 f19
	call	L_trace_reflections.2232
	fldi	f2 r0 50
	fbgt	f17 f2 L_else.25992
	return
L_else.25992 : 
	addi	r6 r0 4
	bgt	r6 r26 L_else.25995
	jump	L_cont.25993
L_else.25995 : 
	addi	r6 r26 1
	addi	r7 r0 -1
	add	r1 r29 r6
	sti	r7 r1 0
L_cont.25993 : 
	addi	r6 r0 2
	bne	r30 r6 L_else.25997
	fldi	f3 r0 12
	ldi	r6 r31 7
	fldi	f2 r6 0
	fsub	f2 f3 f2
	fmul	f17 f17 f2
	addi	r26 r26 1
	fldi	f2 r0 1082
	fadd	f18 f18 f2
	jump	L_trace_ray.2237
L_else.25997 : 
	return
L_else.25969 : 
	return
L_trace_diffuse_ray.2243 : 
	fldi	f2 r0 46
	fsti	f2 r0 1082
	addi	r19 r0 0
	ldi	r20 r0 1183
	add	r21 r0 r22
	call	L_trace_or_matrix_fast.2210
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else.26154
	addi	r6 r0 0
	jump	L_cont.26152
L_else.26154 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else.26315
	addi	r6 r0 0
	jump	L_cont.26152
L_else.26315 : 
	addi	r6 r0 1
L_cont.26152 : 
	bne	r6 r0 L_else.26156
	return
L_else.26156 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r8 r22 0
	ldi	r7 r19 1
	bne	r7 r4 L_else.26159
	ldi	r6 r0 1074
	addi	r7 r0 1046
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r6 r6 -1
	add	r1 r8 r6
	fldi	f2 r1 0
	fbne	f2 f0 L_else.26301
	fldi	f2 r0 29
	jump	L_cont.26299
L_else.26301 : 
	fbgt	f2 f0 L_else.26303
	fldi	f2 r0 31
	jump	L_cont.26299
L_else.26303 : 
	fldi	f2 r0 12
L_cont.26299 : 
	fsub	f2 f0 f2
	add	r1 r7 r6
	fsti	f2 r1 0
	jump	L_cont.26157
L_else.26159 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.26305
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
	jump	L_cont.26157
L_else.26305 : 
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
	fsub	f6 f3 f2
	ldi	r6 r19 4
	fldi	f2 r6 0
	fmul	f7 f9 f2
	ldi	r6 r19 4
	fldi	f2 r6 1
	fmul	f4 f8 f2
	ldi	r6 r19 4
	fldi	f2 r6 2
	fmul	f5 f6 f2
	ldi	r6 r19 3
	bne	r6 r0 L_else.26308
	fsti	f7 r0 1046
	fsti	f4 r0 1047
	fsti	f5 r0 1048
	jump	L_cont.26306
L_else.26308 : 
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f2 f6 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f7 f2
	fsti	f2 r0 1046
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f9 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f6 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f4 f2
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
	fadd	f2 f5 f2
	fsti	f2 r0 1048
L_cont.26306 : 
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
	fbne	f3 f0 L_else.26311
	fldi	f3 r0 12
	jump	L_cont.26309
L_else.26311 : 
	bne	r6 r0 L_else.26313
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont.26309
L_else.26313 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont.26309 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont.26157 : 
	addi	r7 r0 1042
	add	r6 r0 r19
	call	L_utexture.2225
	ldi	r17 r0 1183
	ldi	r16 r17 0
	ldi	r7 r16 0
	bne	r7 r5 L_else.26162
	addi	r6 r0 0
	jump	L_cont.26160
L_else.26162 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.26170
	addi	r6 r0 1
	jump	L_cont.26168
L_else.26170 : 
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
	bne	r7 r4 L_else.26202
	ldi	r7 r10 0
	fldi	f2 r9 0
	fsub	f2 f2 f7
	fldi	f3 r9 1
	fmul	f4 f2 f3
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.26236
	jump	L_cont.26234
L_else.26236 : 
	fsub	f2 f0 f2
L_cont.26234 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.26239
	addi	r6 r0 0
	jump	L_cont.26237
L_else.26239 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.26276
	jump	L_cont.26274
L_else.26276 : 
	fsub	f2 f0 f2
L_cont.26274 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.26278
	addi	r6 r0 0
	jump	L_cont.26237
L_else.26278 : 
	fldi	f2 r9 1
	fbne	f2 f0 L_else.26281
	addi	r6 r0 1
	jump	L_cont.26279
L_else.26281 : 
	addi	r6 r0 0
L_cont.26279 : 
	sub	r6 r4 r6
L_cont.26237 : 
	bne	r6 r0 L_else.26241
	fldi	f2 r9 2
	fsub	f3 f2 f5
	fldi	f2 r9 3
	fmul	f4 f3 f2
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.26244
	jump	L_cont.26242
L_else.26244 : 
	fsub	f2 f0 f2
L_cont.26242 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.26247
	addi	r6 r0 0
	jump	L_cont.26245
L_else.26247 : 
	fldi	f2 r7 2
	fmul	f2 f4 f2
	fadd	f2 f2 f9
	fbgt	f0 f2 L_else.26268
	jump	L_cont.26266
L_else.26268 : 
	fsub	f2 f0 f2
L_cont.26266 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.26270
	addi	r6 r0 0
	jump	L_cont.26245
L_else.26270 : 
	fldi	f2 r9 3
	fbne	f2 f0 L_else.26273
	addi	r6 r0 1
	jump	L_cont.26271
L_else.26273 : 
	addi	r6 r0 0
L_cont.26271 : 
	sub	r6 r4 r6
L_cont.26245 : 
	bne	r6 r0 L_else.26249
	fldi	f2 r9 4
	fsub	f2 f2 f9
	fldi	f3 r9 5
	fmul	f4 f2 f3
	fldi	f2 r7 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.26252
	jump	L_cont.26250
L_else.26252 : 
	fsub	f2 f0 f2
L_cont.26250 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.26255
	addi	r6 r0 0
	jump	L_cont.26253
L_else.26255 : 
	fldi	f2 r7 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.26260
	jump	L_cont.26258
L_else.26260 : 
	fsub	f2 f0 f2
L_cont.26258 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.26262
	addi	r6 r0 0
	jump	L_cont.26253
L_else.26262 : 
	fldi	f2 r9 5
	fbne	f2 f0 L_else.26265
	addi	r6 r0 1
	jump	L_cont.26263
L_else.26265 : 
	addi	r6 r0 0
L_cont.26263 : 
	sub	r6 r4 r6
L_cont.26253 : 
	bne	r6 r0 L_else.26257
	addi	r6 r0 0
	jump	L_cont.26200
L_else.26257 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.26200
L_else.26249 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont.26200
L_else.26241 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.26200
L_else.26202 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.26283
	fldi	f2 r9 0
	fbgt	f0 f2 L_else.26285
	addi	r6 r0 0
	jump	L_cont.26200
L_else.26285 : 
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
	jump	L_cont.26200
L_else.26283 : 
	fldi	f8 r9 0
	fbne	f8 f0 L_else.26287
	addi	r6 r0 0
	jump	L_cont.26200
L_else.26287 : 
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
	bne	r6 r0 L_else.26290
	jump	L_cont.26288
L_else.26290 : 
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
L_cont.26288 : 
	ldi	r6 r8 1
	addi	r7 r0 3
	bne	r6 r7 L_else.26293
	fldi	f3 r0 12
	fsub	f2 f2 f3
	jump	L_cont.26291
L_else.26293 : 
L_cont.26291 : 
	fmul	f3 f6 f6
	fmul	f2 f8 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.26295
	addi	r6 r0 0
	jump	L_cont.26200
L_else.26295 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else.26298
	fsqrt	f2 f2
	fsub	f3 f6 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	jump	L_cont.26296
L_else.26298 : 
	fsqrt	f2 f2
	fadd	f3 f6 f2
	fldi	f2 r9 4
	fmul	f2 f3 f2
	fsti	f2 r0 1073
L_cont.26296 : 
	addi	r6 r0 1
L_cont.26200 : 
	bne	r6 r0 L_else.26204
	addi	r6 r0 0
	jump	L_cont.26168
L_else.26204 : 
	fldi	f2 r0 1073
	fldi	f3 r0 34
	fbgt	f3 f2 L_else.26206
	addi	r6 r0 0
	jump	L_cont.26168
L_else.26206 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else.26209
	addi	r6 r0 0
	jump	L_cont.26207
L_else.26209 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26213
	ldi	r6 r16 2
	bne	r6 r5 L_else.26215
	addi	r6 r0 0
	jump	L_cont.26207
L_else.26215 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26217
	ldi	r6 r16 3
	bne	r6 r5 L_else.26219
	addi	r6 r0 0
	jump	L_cont.26207
L_else.26219 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26221
	ldi	r6 r16 4
	bne	r6 r5 L_else.26223
	addi	r6 r0 0
	jump	L_cont.26207
L_else.26223 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26225
	ldi	r6 r16 5
	bne	r6 r5 L_else.26227
	addi	r6 r0 0
	jump	L_cont.26207
L_else.26227 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26229
	ldi	r6 r16 6
	bne	r6 r5 L_else.26231
	addi	r6 r0 0
	jump	L_cont.26207
L_else.26231 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26233
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.26207
L_else.26233 : 
	addi	r6 r0 1
	jump	L_cont.26207
L_else.26229 : 
	addi	r6 r0 1
	jump	L_cont.26207
L_else.26225 : 
	addi	r6 r0 1
	jump	L_cont.26207
L_else.26221 : 
	addi	r6 r0 1
	jump	L_cont.26207
L_else.26217 : 
	addi	r6 r0 1
	jump	L_cont.26207
L_else.26213 : 
	addi	r6 r0 1
L_cont.26207 : 
	bne	r6 r0 L_else.26211
	addi	r6 r0 0
	jump	L_cont.26168
L_else.26211 : 
	addi	r6 r0 1
L_cont.26168 : 
	bne	r6 r0 L_else.26172
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix.2185
	jump	L_cont.26160
L_else.26172 : 
	ldi	r6 r16 1
	bne	r6 r5 L_else.26175
	addi	r6 r0 0
	jump	L_cont.26173
L_else.26175 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26179
	ldi	r6 r16 2
	bne	r6 r5 L_else.26181
	addi	r6 r0 0
	jump	L_cont.26173
L_else.26181 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26183
	ldi	r6 r16 3
	bne	r6 r5 L_else.26185
	addi	r6 r0 0
	jump	L_cont.26173
L_else.26185 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26187
	ldi	r6 r16 4
	bne	r6 r5 L_else.26189
	addi	r6 r0 0
	jump	L_cont.26173
L_else.26189 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26191
	ldi	r6 r16 5
	bne	r6 r5 L_else.26193
	addi	r6 r0 0
	jump	L_cont.26173
L_else.26193 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26195
	ldi	r6 r16 6
	bne	r6 r5 L_else.26197
	addi	r6 r0 0
	jump	L_cont.26173
L_else.26197 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	call	L_shadow_check_and_group.2179
	bne	r6 r0 L_else.26199
	addi	r14 r0 7
	add	r15 r0 r16
	call	L_shadow_check_one_or_group.2182
	jump	L_cont.26173
L_else.26199 : 
	addi	r6 r0 1
	jump	L_cont.26173
L_else.26195 : 
	addi	r6 r0 1
	jump	L_cont.26173
L_else.26191 : 
	addi	r6 r0 1
	jump	L_cont.26173
L_else.26187 : 
	addi	r6 r0 1
	jump	L_cont.26173
L_else.26183 : 
	addi	r6 r0 1
	jump	L_cont.26173
L_else.26179 : 
	addi	r6 r0 1
L_cont.26173 : 
	bne	r6 r0 L_else.26177
	addi	r16 r0 1
	call	L_shadow_check_one_or_matrix.2185
	jump	L_cont.26160
L_else.26177 : 
	addi	r6 r0 1
L_cont.26160 : 
	bne	r6 r0 L_else.26164
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
	fbgt	f2 f0 L_else.26167
	fldi	f2 r0 29
	jump	L_cont.26165
L_else.26167 : 
L_cont.26165 : 
	fmul	f3 f17 f2
	ldi	r6 r19 7
	fldi	f2 r6 0
	fmul	f4 f3 f2
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
L_else.26164 : 
	return
L_iter_trace_diffuse_rays.2246 : 
	bgt	r0 r22 L_else.26318
	add	r1 r23 r22
	ldi	r6 r1 0
	ldi	r6 r6 0
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
	fbgt	f0 f3 L_else.26321
	add	r1 r23 r22
	ldi	r26 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	fldi	f2 r0 46
	fsti	f2 r0 1082
	ldi	r20 r0 1183
	ldi	r17 r20 0
	ldi	r7 r17 0
	bne	r7 r5 L_else.26329
	jump	L_cont.26327
L_else.26329 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.26362
	ldi	r6 r17 1
	bne	r6 r5 L_else.26364
	jump	L_cont.26360
L_else.26364 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 2
	bne	r6 r5 L_else.26366
	jump	L_cont.26360
L_else.26366 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 3
	bne	r6 r5 L_else.26368
	jump	L_cont.26360
L_else.26368 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 4
	bne	r6 r5 L_else.26370
	jump	L_cont.26360
L_else.26370 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast.2206
	jump	L_cont.26360
L_else.26362 : 
	ldi	r8 r7 1970
	ldi	r10 r8 10
	fldi	f7 r10 0
	fldi	f6 r10 1
	fldi	f4 r10 2
	ldi	r6 r26 1
	add	r1 r6 r7
	ldi	r7 r1 0
	ldi	r9 r8 1
	bne	r9 r4 L_else.26373
	ldi	r9 r26 0
	fldi	f2 r7 0
	fsub	f2 f2 f7
	fldi	f3 r7 1
	fmul	f5 f2 f3
	fldi	f2 r9 1
	fmul	f2 f5 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.26388
	jump	L_cont.26386
L_else.26388 : 
	fsub	f2 f0 f2
L_cont.26386 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.26391
	addi	r6 r0 0
	jump	L_cont.26389
L_else.26391 : 
	fldi	f2 r9 2
	fmul	f2 f5 f2
	fadd	f2 f2 f4
	fbgt	f0 f2 L_else.26428
	jump	L_cont.26426
L_else.26428 : 
	fsub	f2 f0 f2
L_cont.26426 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.26430
	addi	r6 r0 0
	jump	L_cont.26389
L_else.26430 : 
	fldi	f2 r7 1
	fbne	f2 f0 L_else.26433
	addi	r6 r0 1
	jump	L_cont.26431
L_else.26433 : 
	addi	r6 r0 0
L_cont.26431 : 
	sub	r6 r4 r6
L_cont.26389 : 
	bne	r6 r0 L_else.26393
	fldi	f2 r7 2
	fsub	f3 f2 f6
	fldi	f2 r7 3
	fmul	f5 f3 f2
	fldi	f2 r9 0
	fmul	f2 f5 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.26396
	jump	L_cont.26394
L_else.26396 : 
	fsub	f2 f0 f2
L_cont.26394 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.26399
	addi	r6 r0 0
	jump	L_cont.26397
L_else.26399 : 
	fldi	f2 r9 2
	fmul	f2 f5 f2
	fadd	f2 f2 f4
	fbgt	f0 f2 L_else.26420
	jump	L_cont.26418
L_else.26420 : 
	fsub	f2 f0 f2
L_cont.26418 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.26422
	addi	r6 r0 0
	jump	L_cont.26397
L_else.26422 : 
	fldi	f2 r7 3
	fbne	f2 f0 L_else.26425
	addi	r6 r0 1
	jump	L_cont.26423
L_else.26425 : 
	addi	r6 r0 0
L_cont.26423 : 
	sub	r6 r4 r6
L_cont.26397 : 
	bne	r6 r0 L_else.26401
	fldi	f2 r7 4
	fsub	f2 f2 f4
	fldi	f3 r7 5
	fmul	f4 f2 f3
	fldi	f2 r9 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.26404
	jump	L_cont.26402
L_else.26404 : 
	fsub	f2 f0 f2
L_cont.26402 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.26407
	addi	r6 r0 0
	jump	L_cont.26405
L_else.26407 : 
	fldi	f2 r9 1
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.26412
	jump	L_cont.26410
L_else.26412 : 
	fsub	f2 f0 f2
L_cont.26410 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.26414
	addi	r6 r0 0
	jump	L_cont.26405
L_else.26414 : 
	fldi	f2 r7 5
	fbne	f2 f0 L_else.26417
	addi	r6 r0 1
	jump	L_cont.26415
L_else.26417 : 
	addi	r6 r0 0
L_cont.26415 : 
	sub	r6 r4 r6
L_cont.26405 : 
	bne	r6 r0 L_else.26409
	addi	r6 r0 0
	jump	L_cont.26371
L_else.26409 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.26371
L_else.26401 : 
	fsti	f5 r0 1073
	addi	r6 r0 2
	jump	L_cont.26371
L_else.26393 : 
	fsti	f5 r0 1073
	addi	r6 r0 1
	jump	L_cont.26371
L_else.26373 : 
	addi	r6 r0 2
	bne	r9 r6 L_else.26435
	fldi	f2 r7 0
	fbgt	f0 f2 L_else.26437
	addi	r6 r0 0
	jump	L_cont.26371
L_else.26437 : 
	fldi	f3 r7 0
	fldi	f2 r10 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont.26371
L_else.26435 : 
	fldi	f5 r7 0
	fbne	f5 f0 L_else.26439
	addi	r6 r0 0
	jump	L_cont.26371
L_else.26439 : 
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
	fbgt	f2 f0 L_else.26441
	addi	r6 r0 0
	jump	L_cont.26371
L_else.26441 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else.26444
	fsqrt	f2 f2
	fsub	f2 f4 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont.26442
L_else.26444 : 
	fsqrt	f2 f2
	fadd	f2 f4 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont.26442 : 
	addi	r6 r0 1
L_cont.26371 : 
	bne	r6 r0 L_else.26375
	jump	L_cont.26360
L_else.26375 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.26377
	jump	L_cont.26360
L_else.26377 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else.26379
	jump	L_cont.26360
L_else.26379 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 2
	bne	r6 r5 L_else.26381
	jump	L_cont.26360
L_else.26381 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 3
	bne	r6 r5 L_else.26383
	jump	L_cont.26360
L_else.26383 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 4
	bne	r6 r5 L_else.26385
	jump	L_cont.26360
L_else.26385 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast.2206
L_cont.26360 : 
	addi	r19 r0 1
	add	r21 r0 r26
	call	L_trace_or_matrix_fast.2210
L_cont.26327 : 
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else.26332
	addi	r6 r0 0
	jump	L_cont.26330
L_else.26332 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else.26359
	addi	r6 r0 0
	jump	L_cont.26330
L_else.26359 : 
	addi	r6 r0 1
L_cont.26330 : 
	bne	r6 r0 L_else.26334
	jump	L_cont.26319
L_else.26334 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r7 r26 0
	ldi	r8 r19 1
	bne	r8 r4 L_else.26337
	ldi	r8 r0 1074
	addi	r6 r0 1046
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r8 r8 -1
	add	r1 r7 r8
	fldi	f2 r1 0
	fbne	f2 f0 L_else.26345
	fldi	f2 r0 29
	jump	L_cont.26343
L_else.26345 : 
	fbgt	f2 f0 L_else.26347
	fldi	f2 r0 31
	jump	L_cont.26343
L_else.26347 : 
	fldi	f2 r0 12
L_cont.26343 : 
	fsub	f2 f0 f2
	add	r1 r6 r8
	fsti	f2 r1 0
	jump	L_cont.26335
L_else.26337 : 
	addi	r6 r0 2
	bne	r8 r6 L_else.26349
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
	jump	L_cont.26335
L_else.26349 : 
	fldi	f3 r0 1042
	ldi	r6 r19 5
	fldi	f2 r6 0
	fsub	f8 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r19 5
	fldi	f2 r6 1
	fsub	f7 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r19 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r19 4
	fldi	f2 r6 0
	fmul	f5 f8 f2
	ldi	r6 r19 4
	fldi	f2 r6 1
	fmul	f6 f7 f2
	ldi	r6 r19 4
	fldi	f2 r6 2
	fmul	f4 f9 f2
	ldi	r6 r19 3
	bne	r6 r0 L_else.26352
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont.26350
L_else.26352 : 
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f7 f2
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f2 f9 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f5 f2
	fsti	f2 r0 1046
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f9 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont.26350 : 
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
	fbne	f3 f0 L_else.26355
	fldi	f3 r0 12
	jump	L_cont.26353
L_else.26355 : 
	bne	r6 r0 L_else.26357
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont.26353
L_else.26357 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont.26353 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont.26335 : 
	addi	r7 r0 1042
	add	r6 r0 r19
	call	L_utexture.2225
	addi	r16 r0 0
	ldi	r17 r0 1183
	call	L_shadow_check_one_or_matrix.2185
	bne	r6 r0 L_else.26339
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
	fbgt	f2 f0 L_else.26342
	fldi	f2 r0 29
	jump	L_cont.26340
L_else.26342 : 
L_cont.26340 : 
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
	jump	L_cont.26319
L_else.26339 : 
	jump	L_cont.26319
L_else.26321 : 
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
	bne	r7 r5 L_else.26447
	jump	L_cont.26445
L_else.26447 : 
	addi	r6 r0 99
	bne	r7 r6 L_else.26480
	ldi	r6 r17 1
	bne	r6 r5 L_else.26482
	jump	L_cont.26478
L_else.26482 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 2
	bne	r6 r5 L_else.26484
	jump	L_cont.26478
L_else.26484 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 3
	bne	r6 r5 L_else.26486
	jump	L_cont.26478
L_else.26486 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 4
	bne	r6 r5 L_else.26488
	jump	L_cont.26478
L_else.26488 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast.2206
	jump	L_cont.26478
L_else.26480 : 
	ldi	r8 r7 1970
	ldi	r10 r8 10
	fldi	f7 r10 0
	fldi	f5 r10 1
	fldi	f6 r10 2
	ldi	r6 r26 1
	add	r1 r6 r7
	ldi	r7 r1 0
	ldi	r9 r8 1
	bne	r9 r4 L_else.26491
	ldi	r9 r26 0
	fldi	f2 r7 0
	fsub	f2 f2 f7
	fldi	f3 r7 1
	fmul	f4 f2 f3
	fldi	f2 r9 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.26506
	jump	L_cont.26504
L_else.26506 : 
	fsub	f2 f0 f2
L_cont.26504 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.26509
	addi	r6 r0 0
	jump	L_cont.26507
L_else.26509 : 
	fldi	f2 r9 2
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.26546
	jump	L_cont.26544
L_else.26546 : 
	fsub	f2 f0 f2
L_cont.26544 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.26548
	addi	r6 r0 0
	jump	L_cont.26507
L_else.26548 : 
	fldi	f2 r7 1
	fbne	f2 f0 L_else.26551
	addi	r6 r0 1
	jump	L_cont.26549
L_else.26551 : 
	addi	r6 r0 0
L_cont.26549 : 
	sub	r6 r4 r6
L_cont.26507 : 
	bne	r6 r0 L_else.26511
	fldi	f2 r7 2
	fsub	f3 f2 f5
	fldi	f2 r7 3
	fmul	f4 f3 f2
	fldi	f2 r9 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.26514
	jump	L_cont.26512
L_else.26514 : 
	fsub	f2 f0 f2
L_cont.26512 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.26517
	addi	r6 r0 0
	jump	L_cont.26515
L_else.26517 : 
	fldi	f2 r9 2
	fmul	f2 f4 f2
	fadd	f2 f2 f6
	fbgt	f0 f2 L_else.26538
	jump	L_cont.26536
L_else.26538 : 
	fsub	f2 f0 f2
L_cont.26536 : 
	ldi	r6 r8 4
	fldi	f3 r6 2
	fbgt	f3 f2 L_else.26540
	addi	r6 r0 0
	jump	L_cont.26515
L_else.26540 : 
	fldi	f2 r7 3
	fbne	f2 f0 L_else.26543
	addi	r6 r0 1
	jump	L_cont.26541
L_else.26543 : 
	addi	r6 r0 0
L_cont.26541 : 
	sub	r6 r4 r6
L_cont.26515 : 
	bne	r6 r0 L_else.26519
	fldi	f2 r7 4
	fsub	f2 f2 f6
	fldi	f3 r7 5
	fmul	f4 f2 f3
	fldi	f2 r9 0
	fmul	f2 f4 f2
	fadd	f2 f2 f7
	fbgt	f0 f2 L_else.26522
	jump	L_cont.26520
L_else.26522 : 
	fsub	f2 f0 f2
L_cont.26520 : 
	ldi	r6 r8 4
	fldi	f3 r6 0
	fbgt	f3 f2 L_else.26525
	addi	r6 r0 0
	jump	L_cont.26523
L_else.26525 : 
	fldi	f2 r9 1
	fmul	f2 f4 f2
	fadd	f2 f2 f5
	fbgt	f0 f2 L_else.26530
	jump	L_cont.26528
L_else.26530 : 
	fsub	f2 f0 f2
L_cont.26528 : 
	ldi	r6 r8 4
	fldi	f3 r6 1
	fbgt	f3 f2 L_else.26532
	addi	r6 r0 0
	jump	L_cont.26523
L_else.26532 : 
	fldi	f2 r7 5
	fbne	f2 f0 L_else.26535
	addi	r6 r0 1
	jump	L_cont.26533
L_else.26535 : 
	addi	r6 r0 0
L_cont.26533 : 
	sub	r6 r4 r6
L_cont.26523 : 
	bne	r6 r0 L_else.26527
	addi	r6 r0 0
	jump	L_cont.26489
L_else.26527 : 
	fsti	f4 r0 1073
	addi	r6 r0 3
	jump	L_cont.26489
L_else.26519 : 
	fsti	f4 r0 1073
	addi	r6 r0 2
	jump	L_cont.26489
L_else.26511 : 
	fsti	f4 r0 1073
	addi	r6 r0 1
	jump	L_cont.26489
L_else.26491 : 
	addi	r6 r0 2
	bne	r9 r6 L_else.26553
	fldi	f2 r7 0
	fbgt	f0 f2 L_else.26555
	addi	r6 r0 0
	jump	L_cont.26489
L_else.26555 : 
	fldi	f3 r7 0
	fldi	f2 r10 3
	fmul	f2 f3 f2
	fsti	f2 r0 1073
	addi	r6 r0 1
	jump	L_cont.26489
L_else.26553 : 
	fldi	f4 r7 0
	fbne	f4 f0 L_else.26557
	addi	r6 r0 0
	jump	L_cont.26489
L_else.26557 : 
	fldi	f2 r7 1
	fmul	f3 f2 f7
	fldi	f2 r7 2
	fmul	f2 f2 f5
	fadd	f3 f3 f2
	fldi	f2 r7 3
	fmul	f2 f2 f6
	fadd	f5 f3 f2
	fldi	f2 r10 3
	fmul	f3 f5 f5
	fmul	f2 f4 f2
	fsub	f2 f3 f2
	fbgt	f2 f0 L_else.26559
	addi	r6 r0 0
	jump	L_cont.26489
L_else.26559 : 
	ldi	r6 r8 6
	bne	r6 r0 L_else.26562
	fsqrt	f2 f2
	fsub	f2 f5 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
	jump	L_cont.26560
L_else.26562 : 
	fsqrt	f2 f2
	fadd	f2 f5 f2
	fldi	f3 r7 4
	fmul	f2 f2 f3
	fsti	f2 r0 1073
L_cont.26560 : 
	addi	r6 r0 1
L_cont.26489 : 
	bne	r6 r0 L_else.26493
	jump	L_cont.26478
L_else.26493 : 
	fldi	f3 r0 1073
	fldi	f2 r0 1082
	fbgt	f2 f3 L_else.26495
	jump	L_cont.26478
L_else.26495 : 
	ldi	r6 r17 1
	bne	r6 r5 L_else.26497
	jump	L_cont.26478
L_else.26497 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 2
	bne	r6 r5 L_else.26499
	jump	L_cont.26478
L_else.26499 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 3
	bne	r6 r5 L_else.26501
	jump	L_cont.26478
L_else.26501 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	ldi	r6 r17 4
	bne	r6 r5 L_else.26503
	jump	L_cont.26478
L_else.26503 : 
	ldi	r11 r6 1083
	add	r12 r0 r11
	add	r13 r0 r26
	call	L_solve_each_element_fast.2202
	addi	r16 r0 5
	add	r18 r0 r26
	call	L_solve_one_or_network_fast.2206
L_cont.26478 : 
	addi	r19 r0 1
	add	r21 r0 r26
	call	L_trace_or_matrix_fast.2210
L_cont.26445 : 
	fldi	f3 r0 1082
	fldi	f2 r0 34
	fbgt	f3 f2 L_else.26450
	addi	r6 r0 0
	jump	L_cont.26448
L_else.26450 : 
	fldi	f2 r0 47
	fbgt	f2 f3 L_else.26477
	addi	r6 r0 0
	jump	L_cont.26448
L_else.26477 : 
	addi	r6 r0 1
L_cont.26448 : 
	bne	r6 r0 L_else.26452
	jump	L_cont.26319
L_else.26452 : 
	ldi	r6 r0 1045
	ldi	r19 r6 1970
	ldi	r7 r26 0
	ldi	r8 r19 1
	bne	r8 r4 L_else.26455
	ldi	r8 r0 1074
	addi	r6 r0 1046
	fldi	f2 r0 29
	fsti	f2 r0 1046
	fsti	f2 r0 1047
	fsti	f2 r0 1048
	addi	r8 r8 -1
	add	r1 r7 r8
	fldi	f2 r1 0
	fbne	f2 f0 L_else.26463
	fldi	f2 r0 29
	jump	L_cont.26461
L_else.26463 : 
	fbgt	f2 f0 L_else.26465
	fldi	f2 r0 31
	jump	L_cont.26461
L_else.26465 : 
	fldi	f2 r0 12
L_cont.26461 : 
	fsub	f2 f0 f2
	add	r1 r6 r8
	fsti	f2 r1 0
	jump	L_cont.26453
L_else.26455 : 
	addi	r6 r0 2
	bne	r8 r6 L_else.26467
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
	jump	L_cont.26453
L_else.26467 : 
	fldi	f3 r0 1042
	ldi	r6 r19 5
	fldi	f2 r6 0
	fsub	f8 f3 f2
	fldi	f3 r0 1043
	ldi	r6 r19 5
	fldi	f2 r6 1
	fsub	f7 f3 f2
	fldi	f3 r0 1044
	ldi	r6 r19 5
	fldi	f2 r6 2
	fsub	f9 f3 f2
	ldi	r6 r19 4
	fldi	f2 r6 0
	fmul	f5 f8 f2
	ldi	r6 r19 4
	fldi	f2 r6 1
	fmul	f6 f7 f2
	ldi	r6 r19 4
	fldi	f2 r6 2
	fmul	f4 f9 f2
	ldi	r6 r19 3
	bne	r6 r0 L_else.26470
	fsti	f5 r0 1046
	fsti	f6 r0 1047
	fsti	f4 r0 1048
	jump	L_cont.26468
L_else.26470 : 
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f7 f2
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f2 f9 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f5 f2
	fsti	f2 r0 1046
	ldi	r6 r19 9
	fldi	f2 r6 2
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f9 f2
	fadd	f3 f3 f2
	fldi	f2 r0 30
	fdiv	f2 f3 f2
	fadd	f2 f6 f2
	fsti	f2 r0 1047
	ldi	r6 r19 9
	fldi	f2 r6 1
	fmul	f3 f8 f2
	ldi	r6 r19 9
	fldi	f2 r6 0
	fmul	f2 f7 f2
	fadd	f2 f3 f2
	fldi	f3 r0 30
	fdiv	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1048
L_cont.26468 : 
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
	fbne	f3 f0 L_else.26473
	fldi	f3 r0 12
	jump	L_cont.26471
L_else.26473 : 
	bne	r6 r0 L_else.26475
	fldi	f2 r0 12
	fdiv	f3 f2 f3
	jump	L_cont.26471
L_else.26475 : 
	fldi	f2 r0 31
	fdiv	f3 f2 f3
L_cont.26471 : 
	fldi	f2 r0 1046
	fmul	f2 f2 f3
	fsti	f2 r0 1046
	fldi	f2 r0 1047
	fmul	f2 f2 f3
	fsti	f2 r0 1047
	fldi	f2 r0 1048
	fmul	f2 f2 f3
	fsti	f2 r0 1048
L_cont.26453 : 
	addi	r7 r0 1042
	add	r6 r0 r19
	call	L_utexture.2225
	addi	r16 r0 0
	ldi	r17 r0 1183
	call	L_shadow_check_one_or_matrix.2185
	bne	r6 r0 L_else.26457
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
	fbgt	f2 f0 L_else.26460
	fldi	f2 r0 29
	jump	L_cont.26458
L_else.26460 : 
L_cont.26458 : 
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
	jump	L_cont.26319
L_else.26457 : 
L_cont.26319 : 
	addi	r26 r22 -2
	bgt	r0 r26 L_else.26323
	add	r1 r23 r26
	ldi	r6 r1 0
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
	fbgt	f0 f3 L_else.26326
	add	r1 r23 r26
	ldi	r22 r1 0
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray.2243
	jump	L_cont.26324
L_else.26326 : 
	addi	r6 r26 1
	add	r1 r23 r6
	ldi	r22 r1 0
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray.2243
L_cont.26324 : 
	addi	r22 r26 -2
	jump	L_iter_trace_diffuse_rays.2246
L_else.26323 : 
	return
L_else.26318 : 
	return
L_calc_diffuse_using_1point.2259 : 
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
	bne	r31 r0 L_else.26566
	jump	L_cont.26564
L_else.26566 : 
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
	call	L_setup_startp_constants.2148
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
	fbgt	f0 f2 L_else.26593
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray.2243
	jump	L_cont.26591
L_else.26593 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray.2243
L_cont.26591 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays.2246
L_cont.26564 : 
	bne	r31 r4 L_else.26569
	jump	L_cont.26567
L_else.26569 : 
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
	call	L_setup_startp_constants.2148
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
	fbgt	f0 f2 L_else.26590
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray.2243
	jump	L_cont.26588
L_else.26590 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray.2243
L_cont.26588 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays.2246
L_cont.26567 : 
	addi	r6 r0 2
	bne	r31 r6 L_else.26572
	jump	L_cont.26570
L_else.26572 : 
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
	call	L_setup_startp_constants.2148
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
	fbgt	f0 f2 L_else.26587
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray.2243
	jump	L_cont.26585
L_else.26587 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray.2243
L_cont.26585 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays.2246
L_cont.26570 : 
	addi	r6 r0 3
	bne	r31 r6 L_else.26575
	jump	L_cont.26573
L_else.26575 : 
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
	call	L_setup_startp_constants.2148
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
	fbgt	f0 f2 L_else.26584
	ldi	r22 r23 118
	fldi	f3 r0 51
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray.2243
	jump	L_cont.26582
L_else.26584 : 
	ldi	r22 r23 119
	fldi	f3 r0 52
	fdiv	f17 f2 f3
	call	L_trace_diffuse_ray.2243
L_cont.26582 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays.2246
L_cont.26573 : 
	addi	r6 r0 4
	bne	r31 r6 L_else.26578
	jump	L_cont.26576
L_else.26578 : 
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
	call	L_setup_startp_constants.2148
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
	fbgt	f0 f3 L_else.26581
	ldi	r22 r23 118
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray.2243
	jump	L_cont.26579
L_else.26581 : 
	ldi	r22 r23 119
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray.2243
L_cont.26579 : 
	addi	r22 r0 116
	add	r24 r0 r29
	add	r25 r0 r30
	call	L_iter_trace_diffuse_rays.2246
L_cont.26576 : 
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
L_do_without_neighbors.2268 : 
	addi	r7 r0 4
	bgt	r27 r7 L_else.26596
	ldi	r7 r6 2
	add	r1 r7 r27
	ldi	r7 r1 0
	bgt	r0 r7 L_else.26598
	ldi	r7 r6 3
	add	r1 r7 r27
	ldi	r7 r1 0
	bne	r7 r0 L_else.26601
	jump	L_cont.26599
L_else.26601 : 
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
	bne	r31 r0 L_else.26611
	jump	L_cont.26609
L_else.26611 : 
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
	call	L_setup_startp_constants.2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r24 r0 r30
	add	r25 r0 r29
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays.2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont.26609 : 
	bne	r31 r4 L_else.26614
	jump	L_cont.26612
L_else.26614 : 
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
	call	L_setup_startp_constants.2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r24 r0 r30
	add	r25 r0 r29
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays.2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont.26612 : 
	addi	r7 r0 2
	bne	r31 r7 L_else.26617
	jump	L_cont.26615
L_else.26617 : 
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
	call	L_setup_startp_constants.2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r24 r0 r30
	add	r25 r0 r29
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays.2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont.26615 : 
	addi	r7 r0 3
	bne	r31 r7 L_else.26620
	jump	L_cont.26618
L_else.26620 : 
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
	call	L_setup_startp_constants.2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r24 r0 r30
	add	r25 r0 r29
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays.2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont.26618 : 
	addi	r7 r0 4
	bne	r31 r7 L_else.26623
	jump	L_cont.26621
L_else.26623 : 
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
	call	L_setup_startp_constants.2148
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r22 r0 118
	sti	r6 r2 0
	add	r24 r0 r30
	add	r25 r0 r29
	addi	r2 r2 1
	call	L_iter_trace_diffuse_rays.2246
	addi	r2 r2 -1
	ldi	r6 r2 0
L_cont.26621 : 
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
L_cont.26599 : 
	addi	r7 r27 1
	addi	r8 r0 4
	bgt	r7 r8 L_else.26603
	ldi	r8 r6 2
	add	r1 r8 r7
	ldi	r8 r1 0
	bgt	r0 r8 L_else.26605
	ldi	r8 r6 3
	add	r1 r8 r7
	ldi	r8 r1 0
	bne	r8 r0 L_else.26608
	jump	L_cont.26606
L_else.26608 : 
	sti	r6 r2 0
	sti	r7 r2 1
	add	r27 r0 r7
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point.2259
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r7 r2 1
L_cont.26606 : 
	addi	r27 r7 1
	jump	L_do_without_neighbors.2268
L_else.26605 : 
	return
L_else.26603 : 
	return
L_else.26598 : 
	return
L_else.26596 : 
	return
L_try_exploit_neighbors.2284 : 
	add	r1 r9 r6
	ldi	r14 r1 0
	addi	r12 r0 4
	bgt	r11 r12 L_else.26626
	ldi	r12 r14 2
	add	r1 r12 r11
	ldi	r12 r1 0
	bgt	r0 r12 L_else.26628
	add	r1 r9 r6
	ldi	r12 r1 0
	ldi	r12 r12 2
	add	r1 r12 r11
	ldi	r13 r1 0
	add	r1 r8 r6
	ldi	r12 r1 0
	ldi	r12 r12 2
	add	r1 r12 r11
	ldi	r12 r1 0
	bne	r12 r13 L_else.26631
	add	r1 r10 r6
	ldi	r12 r1 0
	ldi	r12 r12 2
	add	r1 r12 r11
	ldi	r12 r1 0
	bne	r12 r13 L_else.26663
	addi	r12 r6 -1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r12 r12 2
	add	r1 r12 r11
	ldi	r12 r1 0
	bne	r12 r13 L_else.26665
	addi	r12 r6 1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r12 r12 2
	add	r1 r12 r11
	ldi	r12 r1 0
	bne	r12 r13 L_else.26667
	addi	r12 r0 1
	jump	L_cont.26629
L_else.26667 : 
	addi	r12 r0 0
	jump	L_cont.26629
L_else.26665 : 
	addi	r12 r0 0
	jump	L_cont.26629
L_else.26663 : 
	addi	r12 r0 0
	jump	L_cont.26629
L_else.26631 : 
	addi	r12 r0 0
L_cont.26629 : 
	bne	r12 r0 L_else.26633
	add	r1 r9 r6
	ldi	r6 r1 0
	addi	r7 r0 4
	bgt	r11 r7 L_else.26635
	ldi	r7 r6 2
	add	r1 r7 r11
	ldi	r7 r1 0
	bgt	r0 r7 L_else.26637
	ldi	r7 r6 3
	add	r1 r7 r11
	ldi	r7 r1 0
	bne	r7 r0 L_else.26640
	jump	L_cont.26638
L_else.26640 : 
	sti	r6 r2 0
	sti	r11 r2 1
	add	r27 r0 r11
	addi	r2 r2 2
	call	L_calc_diffuse_using_1point.2259
	addi	r2 r2 -2
	ldi	r6 r2 0
	ldi	r11 r2 1
L_cont.26638 : 
	addi	r27 r11 1
	jump	L_do_without_neighbors.2268
L_else.26637 : 
	return
L_else.26635 : 
	return
L_else.26633 : 
	ldi	r12 r14 3
	add	r1 r12 r11
	ldi	r12 r1 0
	bne	r12 r0 L_else.26643
	jump	L_cont.26641
L_else.26643 : 
	add	r1 r8 r6
	ldi	r12 r1 0
	ldi	r15 r12 5
	addi	r12 r6 -1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r17 r12 5
	add	r1 r9 r6
	ldi	r12 r1 0
	ldi	r16 r12 5
	addi	r12 r6 1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r14 r12 5
	add	r1 r10 r6
	ldi	r12 r1 0
	ldi	r13 r12 5
	add	r1 r15 r11
	ldi	r12 r1 0
	fldi	f2 r12 0
	fsti	f2 r0 1052
	fldi	f2 r12 1
	fsti	f2 r0 1053
	fldi	f2 r12 2
	fsti	f2 r0 1054
	add	r1 r17 r11
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
	add	r1 r16 r11
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
	add	r1 r14 r11
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
	add	r1 r9 r6
	ldi	r12 r1 0
	ldi	r12 r12 4
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
L_cont.26641 : 
	addi	r27 r11 1
	add	r1 r9 r6
	ldi	r13 r1 0
	addi	r11 r0 4
	bgt	r27 r11 L_else.26645
	ldi	r11 r13 2
	add	r1 r11 r27
	ldi	r11 r1 0
	bgt	r0 r11 L_else.26647
	add	r1 r9 r6
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r27
	ldi	r12 r1 0
	add	r1 r8 r6
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r27
	ldi	r11 r1 0
	bne	r11 r12 L_else.26650
	add	r1 r10 r6
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r27
	ldi	r11 r1 0
	bne	r11 r12 L_else.26657
	addi	r11 r6 -1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r27
	ldi	r11 r1 0
	bne	r11 r12 L_else.26659
	addi	r11 r6 1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r11 r11 2
	add	r1 r11 r27
	ldi	r11 r1 0
	bne	r11 r12 L_else.26661
	addi	r11 r0 1
	jump	L_cont.26648
L_else.26661 : 
	addi	r11 r0 0
	jump	L_cont.26648
L_else.26659 : 
	addi	r11 r0 0
	jump	L_cont.26648
L_else.26657 : 
	addi	r11 r0 0
	jump	L_cont.26648
L_else.26650 : 
	addi	r11 r0 0
L_cont.26648 : 
	bne	r11 r0 L_else.26652
	add	r1 r9 r6
	ldi	r6 r1 0
	jump	L_do_without_neighbors.2268
L_else.26652 : 
	ldi	r11 r13 3
	add	r1 r11 r27
	ldi	r11 r1 0
	bne	r11 r0 L_else.26655
	jump	L_cont.26653
L_else.26655 : 
	add	r1 r8 r6
	ldi	r11 r1 0
	ldi	r16 r11 5
	addi	r11 r6 -1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r15 r11 5
	add	r1 r9 r6
	ldi	r11 r1 0
	ldi	r13 r11 5
	addi	r11 r6 1
	add	r1 r9 r11
	ldi	r11 r1 0
	ldi	r14 r11 5
	add	r1 r10 r6
	ldi	r11 r1 0
	ldi	r12 r11 5
	add	r1 r16 r27
	ldi	r11 r1 0
	fldi	f2 r11 0
	fsti	f2 r0 1052
	fldi	f2 r11 1
	fsti	f2 r0 1053
	fldi	f2 r11 2
	fsti	f2 r0 1054
	add	r1 r15 r27
	ldi	r11 r1 0
	fldi	f3 r0 1052
	fldi	f2 r11 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r11 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r11 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r13 r27
	ldi	r11 r1 0
	fldi	f3 r0 1052
	fldi	f2 r11 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r11 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r11 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r14 r27
	ldi	r11 r1 0
	fldi	f3 r0 1052
	fldi	f2 r11 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r11 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r11 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r12 r27
	ldi	r11 r1 0
	fldi	f3 r0 1052
	fldi	f2 r11 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r11 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r11 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r9 r6
	ldi	r11 r1 0
	ldi	r11 r11 4
	add	r1 r11 r27
	ldi	r11 r1 0
	fldi	f4 r0 1055
	fldi	f3 r11 0
	fldi	f2 r0 1052
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f3 r11 1
	fldi	f2 r0 1053
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f4 r0 1057
	fldi	f3 r11 2
	fldi	f2 r0 1054
	fmul	f2 f3 f2
	fadd	f2 f4 f2
	fsti	f2 r0 1057
L_cont.26653 : 
	addi	r11 r27 1
	jump	L_try_exploit_neighbors.2284
L_else.26647 : 
	return
L_else.26645 : 
	return
L_else.26628 : 
	return
L_else.26626 : 
	return
L_write_ppm_header.2291 : 
	addi	r6 r0 80
	call	min_caml_print_char
	addi	r6 r0 54
	call	min_caml_print_char
	addi	r6 r0 10
	call	min_caml_print_char
	ldi	r10 r0 1058
	call	L_print_int.1900
	addi	r6 r0 32
	call	min_caml_print_char
	ldi	r10 r0 1059
	call	L_print_int.1900
	addi	r6 r0 32
	call	min_caml_print_char
	addi	r10 r0 255
	call	L_print_int.1900
	addi	r6 r0 10
	jump	min_caml_print_char
L_write_rgb_element.2293 : 
	jump	min_caml_print_float
L_pretrace_diffuse_rays.2297 : 
	addi	r6 r0 4
	bgt	r28 r6 L_else.26672
	ldi	r6 r27 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else.26674
	ldi	r6 r27 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else.26677
	jump	L_cont.26675
L_else.26677 : 
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
	call	L_setup_startp_constants.2148
	addi	r22 r0 118
	call	L_iter_trace_diffuse_rays.2246
	ldi	r6 r27 5
	add	r1 r6 r28
	ldi	r6 r1 0
	fldi	f2 r0 1052
	fsti	f2 r6 0
	fldi	f2 r0 1053
	fsti	f2 r6 1
	fldi	f2 r0 1054
	fsti	f2 r6 2
L_cont.26675 : 
	addi	r28 r28 1
	addi	r6 r0 4
	bgt	r28 r6 L_else.26679
	ldi	r6 r27 2
	add	r1 r6 r28
	ldi	r6 r1 0
	bgt	r0 r6 L_else.26681
	ldi	r6 r27 3
	add	r1 r6 r28
	ldi	r6 r1 0
	bne	r6 r0 L_else.26684
	jump	L_cont.26682
L_else.26684 : 
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
	call	L_setup_startp_constants.2148
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
	fbgt	f0 f3 L_else.26687
	ldi	r22 r23 118
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray.2243
	jump	L_cont.26685
L_else.26687 : 
	ldi	r22 r23 119
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	call	L_trace_diffuse_ray.2243
L_cont.26685 : 
	addi	r22 r0 116
	call	L_iter_trace_diffuse_rays.2246
	ldi	r6 r27 5
	add	r1 r6 r28
	ldi	r6 r1 0
	fldi	f2 r0 1052
	fsti	f2 r6 0
	fldi	f2 r0 1053
	fsti	f2 r6 1
	fldi	f2 r0 1054
	fsti	f2 r6 2
L_cont.26682 : 
	addi	r28 r28 1
	jump	L_pretrace_diffuse_rays.2297
L_else.26681 : 
	return
L_else.26679 : 
	return
L_else.26674 : 
	return
L_else.26672 : 
	return
L_pretrace_pixels.2300 : 
	bgt	r0 r7 L_else.26690
	fldi	f3 r0 1062
	ldi	r9 r0 1060
	sub	r9 r7 r9
	foi	f2 r9
	fmul	f3 f3 f2
	addi	r27 r0 1069
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
	fbne	f2 f0 L_else.26693
	fldi	f3 r0 12
	jump	L_cont.26691
L_else.26693 : 
	fldi	f3 r0 12
	fdiv	f3 f3 f2
L_cont.26691 : 
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
	add	r1 r6 r7
	ldi	r28 r1 0
	fldi	f18 r0 29
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_trace_ray.2237
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r7 r2 1
	ldi	r6 r2 2
	add	r1 r6 r7
	ldi	r9 r1 0
	ldi	r9 r9 0
	fldi	f2 r0 1055
	fsti	f2 r9 0
	fldi	f2 r0 1056
	fsti	f2 r9 1
	fldi	f2 r0 1057
	fsti	f2 r9 2
	add	r1 r6 r7
	ldi	r9 r1 0
	ldi	r9 r9 6
	sti	r8 r9 0
	add	r1 r6 r7
	ldi	r27 r1 0
	ldi	r9 r27 2
	ldi	r9 r9 0
	bgt	r0 r9 L_else.26696
	ldi	r9 r27 3
	ldi	r9 r9 0
	bne	r9 r0 L_else.26702
	jump	L_cont.26700
L_else.26702 : 
	ldi	r9 r27 6
	ldi	r11 r9 0
	fldi	f2 r0 29
	fsti	f2 r0 1052
	fsti	f2 r0 1053
	fsti	f2 r0 1054
	ldi	r10 r27 7
	ldi	r9 r27 1
	ldi	r23 r11 1076
	ldi	r24 r10 0
	ldi	r25 r9 0
	fldi	f2 r25 0
	fsti	f2 r0 1066
	fldi	f2 r25 1
	fsti	f2 r0 1067
	fldi	f2 r25 2
	fsti	f2 r0 1068
	ldi	r9 r0 1072
	addi	r9 r9 -1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	add	r6 r0 r25
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_setup_startp_constants.2148
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r9 r23 118
	ldi	r9 r9 0
	fldi	f3 r9 0
	fldi	f2 r24 0
	fmul	f4 f3 f2
	fldi	f2 r9 1
	fldi	f3 r24 1
	fmul	f2 f2 f3
	fadd	f4 f4 f2
	fldi	f2 r9 2
	fldi	f3 r24 2
	fmul	f2 f2 f3
	fadd	f3 f4 f2
	fbgt	f0 f3 L_else.26705
	ldi	r22 r23 118
	fldi	f2 r0 51
	fdiv	f17 f3 f2
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_trace_diffuse_ray.2243
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	jump	L_cont.26703
L_else.26705 : 
	ldi	r22 r23 119
	fldi	f2 r0 52
	fdiv	f17 f3 f2
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_trace_diffuse_ray.2243
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
L_cont.26703 : 
	addi	r22 r0 116
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_iter_trace_diffuse_rays.2246
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	ldi	r9 r27 5
	ldi	r9 r9 0
	fldi	f2 r0 1052
	fsti	f2 r9 0
	fldi	f2 r0 1053
	fsti	f2 r9 1
	fldi	f2 r0 1054
	fsti	f2 r9 2
L_cont.26700 : 
	addi	r28 r0 1
	sti	r8 r2 0
	sti	r6 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_pretrace_diffuse_rays.2297
	addi	r2 r2 -3
	ldi	r8 r2 0
	ldi	r6 r2 1
	ldi	r7 r2 2
	jump	L_cont.26694
L_else.26696 : 
L_cont.26694 : 
	addi	r7 r7 -1
	addi	r8 r8 1
	addi	r9 r0 5
	bgt	r9 r8 L_else.26699
	addi	r8 r8 -5
	jump	L_cont.26697
L_else.26699 : 
L_cont.26697 : 
	jump	L_pretrace_pixels.2300
L_else.26690 : 
	return
L_scan_pixel.2311 : 
	ldi	r11 r0 1058
	bgt	r11 r6 L_else.26708
	return
L_else.26708 : 
	add	r1 r9 r6
	ldi	r11 r1 0
	ldi	r11 r11 0
	fldi	f2 r11 0
	fsti	f2 r0 1055
	fldi	f2 r11 1
	fsti	f2 r0 1056
	fldi	f2 r11 2
	fsti	f2 r0 1057
	ldi	r12 r0 1059
	addi	r11 r7 1
	bgt	r12 r11 L_else.26711
	addi	r12 r0 0
	jump	L_cont.26709
L_else.26711 : 
	bgt	r7 r0 L_else.26751
	addi	r12 r0 0
	jump	L_cont.26709
L_else.26751 : 
	ldi	r13 r0 1058
	addi	r12 r6 1
	bgt	r13 r12 L_else.26753
	addi	r12 r0 0
	jump	L_cont.26709
L_else.26753 : 
	bgt	r6 r0 L_else.26755
	addi	r12 r0 0
	jump	L_cont.26709
L_else.26755 : 
	addi	r12 r0 1
L_cont.26709 : 
	bne	r12 r0 L_else.26714
	add	r1 r9 r6
	ldi	r12 r1 0
	addi	r27 r0 0
	ldi	r13 r12 2
	ldi	r13 r13 0
	bgt	r0 r13 L_else.26730
	ldi	r13 r12 3
	ldi	r13 r13 0
	bne	r13 r0 L_else.26733
	jump	L_cont.26731
L_else.26733 : 
	sti	r12 r2 0
	sti	r11 r2 1
	sti	r10 r2 2
	sti	r8 r2 3
	sti	r7 r2 4
	sti	r9 r2 5
	sti	r6 r2 6
	add	r6 r0 r12
	addi	r2 r2 7
	call	L_calc_diffuse_using_1point.2259
	addi	r2 r2 -7
	ldi	r12 r2 0
	ldi	r11 r2 1
	ldi	r10 r2 2
	ldi	r8 r2 3
	ldi	r7 r2 4
	ldi	r9 r2 5
	ldi	r6 r2 6
L_cont.26731 : 
	addi	r27 r0 1
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r8 r2 2
	sti	r7 r2 3
	sti	r9 r2 4
	sti	r6 r2 5
	add	r6 r0 r12
	addi	r2 r2 6
	call	L_do_without_neighbors.2268
	addi	r2 r2 -6
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r8 r2 2
	ldi	r7 r2 3
	ldi	r9 r2 4
	ldi	r6 r2 5
	jump	L_cont.26712
L_else.26730 : 
	jump	L_cont.26712
L_else.26714 : 
	addi	r27 r0 0
	add	r1 r9 r6
	ldi	r14 r1 0
	ldi	r12 r14 2
	ldi	r12 r12 0
	bgt	r0 r12 L_else.26735
	add	r1 r9 r6
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r13 r12 0
	add	r1 r8 r6
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r13 L_else.26738
	add	r1 r10 r6
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r13 L_else.26745
	addi	r12 r6 -1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r13 L_else.26747
	addi	r12 r6 1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r12 r12 2
	ldi	r12 r12 0
	bne	r12 r13 L_else.26749
	addi	r12 r0 1
	jump	L_cont.26736
L_else.26749 : 
	addi	r12 r0 0
	jump	L_cont.26736
L_else.26747 : 
	addi	r12 r0 0
	jump	L_cont.26736
L_else.26745 : 
	addi	r12 r0 0
	jump	L_cont.26736
L_else.26738 : 
	addi	r12 r0 0
L_cont.26736 : 
	bne	r12 r0 L_else.26740
	add	r1 r9 r6
	ldi	r12 r1 0
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r8 r2 2
	sti	r7 r2 3
	sti	r9 r2 4
	sti	r6 r2 5
	add	r6 r0 r12
	addi	r2 r2 6
	call	L_do_without_neighbors.2268
	addi	r2 r2 -6
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r8 r2 2
	ldi	r7 r2 3
	ldi	r9 r2 4
	ldi	r6 r2 5
	jump	L_cont.26712
L_else.26740 : 
	ldi	r12 r14 3
	ldi	r12 r12 0
	bne	r12 r0 L_else.26743
	jump	L_cont.26741
L_else.26743 : 
	add	r1 r8 r6
	ldi	r12 r1 0
	ldi	r16 r12 5
	addi	r12 r6 -1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r17 r12 5
	add	r1 r9 r6
	ldi	r12 r1 0
	ldi	r15 r12 5
	addi	r12 r6 1
	add	r1 r9 r12
	ldi	r12 r1 0
	ldi	r14 r12 5
	add	r1 r10 r6
	ldi	r12 r1 0
	ldi	r13 r12 5
	ldi	r12 r16 0
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
	fldi	f3 r0 1053
	fldi	f2 r12 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r12 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	ldi	r12 r15 0
	fldi	f3 r0 1052
	fldi	f2 r12 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r12 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r12 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	ldi	r12 r14 0
	fldi	f3 r0 1052
	fldi	f2 r12 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r12 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r12 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	ldi	r12 r13 0
	fldi	f3 r0 1052
	fldi	f2 r12 0
	fadd	f2 f3 f2
	fsti	f2 r0 1052
	fldi	f3 r0 1053
	fldi	f2 r12 1
	fadd	f2 f3 f2
	fsti	f2 r0 1053
	fldi	f3 r0 1054
	fldi	f2 r12 2
	fadd	f2 f3 f2
	fsti	f2 r0 1054
	add	r1 r9 r6
	ldi	r12 r1 0
	ldi	r12 r12 4
	ldi	r12 r12 0
	fldi	f3 r0 1055
	fldi	f4 r12 0
	fldi	f2 r0 1052
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1055
	fldi	f4 r0 1056
	fldi	f2 r12 1
	fldi	f3 r0 1053
	fmul	f2 f2 f3
	fadd	f2 f4 f2
	fsti	f2 r0 1056
	fldi	f3 r0 1057
	fldi	f4 r12 2
	fldi	f2 r0 1054
	fmul	f2 f4 f2
	fadd	f2 f3 f2
	fsti	f2 r0 1057
L_cont.26741 : 
	addi	r12 r0 1
	sti	r11 r2 0
	sti	r10 r2 1
	sti	r8 r2 2
	sti	r7 r2 3
	sti	r9 r2 4
	sti	r6 r2 5
	add	r11 r0 r12
	addi	r2 r2 6
	call	L_try_exploit_neighbors.2284
	addi	r2 r2 -6
	ldi	r11 r2 0
	ldi	r10 r2 1
	ldi	r8 r2 2
	ldi	r7 r2 3
	ldi	r9 r2 4
	ldi	r6 r2 5
	jump	L_cont.26712
L_else.26735 : 
L_cont.26712 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element.2293
	fldi	f2 r0 1056
	call	L_write_rgb_element.2293
	fldi	f2 r0 1057
	call	L_write_rgb_element.2293
	addi	r6 r6 1
	ldi	r12 r0 1058
	bgt	r12 r6 L_else.26716
	return
L_else.26716 : 
	add	r1 r9 r6
	ldi	r12 r1 0
	ldi	r12 r12 0
	fldi	f2 r12 0
	fsti	f2 r0 1055
	fldi	f2 r12 1
	fsti	f2 r0 1056
	fldi	f2 r12 2
	fsti	f2 r0 1057
	ldi	r12 r0 1059
	bgt	r12 r11 L_else.26719
	addi	r11 r0 0
	jump	L_cont.26717
L_else.26719 : 
	bgt	r7 r0 L_else.26724
	addi	r11 r0 0
	jump	L_cont.26717
L_else.26724 : 
	ldi	r12 r0 1058
	addi	r11 r6 1
	bgt	r12 r11 L_else.26726
	addi	r11 r0 0
	jump	L_cont.26717
L_else.26726 : 
	bgt	r6 r0 L_else.26728
	addi	r11 r0 0
	jump	L_cont.26717
L_else.26728 : 
	addi	r11 r0 1
L_cont.26717 : 
	bne	r11 r0 L_else.26722
	add	r1 r9 r6
	ldi	r11 r1 0
	addi	r27 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors.2268
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
	jump	L_cont.26720
L_else.26722 : 
	addi	r11 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r9 r2 2
	sti	r10 r2 3
	sti	r6 r2 4
	addi	r2 r2 5
	call	L_try_exploit_neighbors.2284
	addi	r2 r2 -5
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r10 r2 3
	ldi	r6 r2 4
L_cont.26720 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element.2293
	fldi	f2 r0 1056
	call	L_write_rgb_element.2293
	fldi	f2 r0 1057
	call	L_write_rgb_element.2293
	addi	r6 r6 1
	jump	L_scan_pixel.2311
L_scan_line.2317 : 
	ldi	r11 r0 1059
	bgt	r11 r6 L_else.26758
	return
L_else.26758 : 
	ldi	r11 r0 1059
	addi	r11 r11 -1
	bgt	r11 r6 L_else.26761
	jump	L_cont.26759
L_else.26761 : 
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
	call	L_pretrace_pixels.2300
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	ldi	r10 r2 4
L_cont.26759 : 
	addi	r12 r0 0
	ldi	r11 r0 1058
	bgt	r11 r0 L_else.26764
	jump	L_cont.26762
L_else.26764 : 
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
	bgt	r13 r11 L_else.26778
	addi	r11 r0 0
	jump	L_cont.26776
L_else.26778 : 
	bgt	r6 r0 L_else.26783
	addi	r11 r0 0
	jump	L_cont.26776
L_else.26783 : 
	ldi	r13 r0 1058
	addi	r11 r0 1
	bgt	r13 r11 L_else.26785
	addi	r11 r0 0
	jump	L_cont.26776
L_else.26785 : 
	addi	r11 r0 0
L_cont.26776 : 
	bne	r11 r0 L_else.26781
	ldi	r11 r8 0
	addi	r27 r0 0
	sti	r6 r2 0
	sti	r7 r2 1
	sti	r8 r2 2
	sti	r9 r2 3
	sti	r10 r2 4
	add	r6 r0 r11
	addi	r2 r2 5
	call	L_do_without_neighbors.2268
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
	jump	L_cont.26779
L_else.26781 : 
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
	call	L_try_exploit_neighbors.2284
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r7 r2 1
	ldi	r8 r2 2
	ldi	r9 r2 3
	ldi	r10 r2 4
L_cont.26779 : 
	fldi	f2 r0 1055
	call	L_write_rgb_element.2293
	fldi	f2 r0 1056
	call	L_write_rgb_element.2293
	fldi	f2 r0 1057
	call	L_write_rgb_element.2293
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
	call	L_scan_pixel.2311
	addi	r2 r2 -5
	ldi	r10 r2 0
	ldi	r7 r2 1
	ldi	r9 r2 2
	ldi	r8 r2 3
	ldi	r6 r2 4
L_cont.26762 : 
	addi	r11 r6 1
	addi	r6 r10 2
	addi	r10 r0 5
	bgt	r10 r6 L_else.26767
	addi	r6 r6 -5
	jump	L_cont.26765
L_else.26767 : 
L_cont.26765 : 
	ldi	r10 r0 1059
	bgt	r10 r11 L_else.26769
	return
L_else.26769 : 
	ldi	r10 r0 1059
	addi	r10 r10 -1
	bgt	r10 r11 L_else.26772
	jump	L_cont.26770
L_else.26772 : 
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
	call	L_pretrace_pixels.2300
	addi	r2 r2 -5
	ldi	r11 r2 0
	ldi	r8 r2 1
	ldi	r9 r2 2
	ldi	r7 r2 3
	ldi	r6 r2 4
L_cont.26770 : 
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
	call	L_scan_pixel.2311
	addi	r2 r2 -5
	ldi	r6 r2 0
	ldi	r9 r2 1
	ldi	r7 r2 2
	ldi	r8 r2 3
	ldi	r11 r2 4
	addi	r10 r11 1
	addi	r6 r6 2
	addi	r11 r0 5
	bgt	r11 r6 L_else.26775
	addi	r6 r6 -5
	jump	L_cont.26773
L_else.26775 : 
L_cont.26773 : 
	add	r1 r0 r6
	add	r6 r0 r10
	add	r10 r0 r1
	add	r1 r0 r7
	add	r7 r0 r9
	add	r9 r0 r8
	add	r8 r0 r1
	jump	L_scan_line.2317
L_create_float5x3array.2323 : 
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
L_create_pixel.2325 : 
	addi	r6 r0 3
	fldi	f2 r0 29
	call	min_caml_create_float_array
	add	r10 r0 r6
	call	L_create_float5x3array.2323
	add	r11 r0 r6
	addi	r6 r0 5
	addi	r7 r0 0
	call	min_caml_create_array
	add	r12 r0 r6
	addi	r6 r0 5
	addi	r7 r0 0
	call	min_caml_create_array
	add	r13 r0 r6
	call	L_create_float5x3array.2323
	add	r14 r0 r6
	call	L_create_float5x3array.2323
	add	r15 r0 r6
	addi	r6 r0 1
	addi	r7 r0 0
	call	min_caml_create_array
	add	r16 r0 r6
	call	L_create_float5x3array.2323
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
L_init_line_elements.2327 : 
	bgt	r0 r18 L_else.26790
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26792
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26794
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26796
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26798
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26800
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26802
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26804
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	jump	L_init_line_elements.2327
L_else.26804 : 
	add	r6 r0 r17
	return
L_else.26802 : 
	add	r6 r0 r17
	return
L_else.26800 : 
	add	r6 r0 r17
	return
L_else.26798 : 
	add	r6 r0 r17
	return
L_else.26796 : 
	add	r6 r0 r17
	return
L_else.26794 : 
	add	r6 r0 r17
	return
L_else.26792 : 
	add	r6 r0 r17
	return
L_else.26790 : 
	add	r6 r0 r17
	return
L_create_pixelline.2330 : 
	ldi	r17 r0 1058
	call	L_create_pixel.2325
	add	r7 r0 r6
	add	r6 r0 r17
	call	min_caml_create_array
	add	r17 r0 r6
	ldi	r6 r0 1058
	addi	r18 r6 -2
	bgt	r0 r18 L_else.26807
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26809
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26811
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26813
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26815
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26817
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	bgt	r0 r18 L_else.26819
	call	L_create_pixel.2325
	add	r1 r17 r18
	sti	r6 r1 0
	addi	r18 r18 -1
	jump	L_init_line_elements.2327
L_else.26819 : 
	add	r6 r0 r17
	return
L_else.26817 : 
	add	r6 r0 r17
	return
L_else.26815 : 
	add	r6 r0 r17
	return
L_else.26813 : 
	add	r6 r0 r17
	return
L_else.26811 : 
	add	r6 r0 r17
	return
L_else.26809 : 
	add	r6 r0 r17
	return
L_else.26807 : 
	add	r6 r0 r17
	return
L_tan.2332 : 
	fadd	f2 f0 f10
	call	L_sin.1878
	fadd	f11 f0 f2
	fadd	f2 f0 f10
	call	L_cos.1880
	fdiv	f2 f11 f2
	return
L_adjust_position.2334 : 
	fmul	f2 f2 f2
	fldi	f3 r0 50
	fadd	f2 f2 f3
	fsqrt	f16 f2
	fldi	f2 r0 12
	fdiv	f2 f2 f16
	call	L_atan.1882
	fmul	f10 f2 f15
	call	L_tan.2332
	fmul	f2 f2 f16
	return
L_calc_dirvec.2337 : 
	addi	r9 r0 5
	bgt	r9 r6 L_else.26824
	fmul	f4 f2 f2
	fmul	f5 f3 f3
	fadd	f4 f4 f5
	fldi	f5 r0 12
	fadd	f4 f4 f5
	fsqrt	f4 f4
	fdiv	f5 f2 f4
	fdiv	f6 f3 f4
	fldi	f2 r0 12
	fdiv	f2 f2 f4
	ldi	r7 r7 1076
	add	r1 r7 r8
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsti	f5 r6 0
	fsti	f6 r6 1
	fsti	f2 r6 2
	addi	r6 r8 40
	add	r1 r7 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsub	f4 f0 f6
	fsti	f5 r6 0
	fsti	f2 r6 1
	fsti	f4 r6 2
	addi	r6 r8 80
	add	r1 r7 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsub	f3 f0 f5
	fsti	f2 r6 0
	fsti	f3 r6 1
	fsti	f4 r6 2
	addi	r6 r8 1
	add	r1 r7 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsub	f2 f0 f2
	fsti	f3 r6 0
	fsti	f4 r6 1
	fsti	f2 r6 2
	addi	r6 r8 41
	add	r1 r7 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsti	f3 r6 0
	fsti	f2 r6 1
	fsti	f6 r6 2
	addi	r6 r8 81
	add	r1 r7 r6
	ldi	r6 r1 0
	ldi	r6 r6 0
	fsti	f2 r6 0
	fsti	f5 r6 1
	fsti	f6 r6 2
	return
L_else.26824 : 
	fadd	f2 f0 f3
	fadd	f15 f0 f17
	call	L_adjust_position.2334
	fadd	f19 f0 f2
	addi	r6 r6 1
	fadd	f2 f0 f19
	fadd	f15 f0 f18
	call	L_adjust_position.2334
	fadd	f3 f0 f2
	fadd	f2 f0 f19
	jump	L_calc_dirvec.2337
L_calc_dirvecs.2345 : 
	bgt	r0 r10 L_else.26827
	foi	f21 r10
	fldi	f2 r0 53
	fmul	f3 f21 f2
	fldi	f2 r0 54
	fsub	f17 f3 f2
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	add	r7 r0 r11
	add	r8 r0 r12
	fadd	f18 f0 f20
	call	L_calc_dirvec.2337
	fldi	f2 r0 53
	fmul	f3 f21 f2
	fldi	f2 r0 50
	fadd	f17 f3 f2
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	addi	r13 r12 2
	add	r7 r0 r11
	add	r8 r0 r13
	fadd	f18 f0 f20
	call	L_calc_dirvec.2337
	addi	r14 r10 -1
	addi	r10 r11 1
	addi	r6 r0 5
	bgt	r6 r10 L_else.26830
	addi	r10 r10 -5
	jump	L_cont.26828
L_else.26830 : 
L_cont.26828 : 
	bgt	r0 r14 L_else.26832
	foi	f21 r14
	fldi	f2 r0 53
	fmul	f3 f21 f2
	fldi	f2 r0 54
	fsub	f17 f3 f2
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	add	r7 r0 r10
	add	r8 r0 r12
	fadd	f18 f0 f20
	call	L_calc_dirvec.2337
	fldi	f2 r0 53
	fmul	f3 f21 f2
	fldi	f2 r0 50
	fadd	f17 f3 f2
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	add	r7 r0 r10
	add	r8 r0 r13
	fadd	f18 f0 f20
	call	L_calc_dirvec.2337
	addi	r7 r14 -1
	addi	r11 r10 1
	addi	r6 r0 5
	bgt	r6 r11 L_else.26835
	addi	r11 r11 -5
	jump	L_cont.26833
L_else.26835 : 
L_cont.26833 : 
	add	r10 r0 r7
	jump	L_calc_dirvecs.2345
L_else.26832 : 
	return
L_else.26827 : 
	return
L_calc_dirvec_rows.2350 : 
	bgt	r0 r15 L_else.26838
	foi	f3 r15
	fldi	f2 r0 53
	fmul	f3 f3 f2
	fldi	f2 r0 54
	fsub	f20 f3 f2
	addi	r6 r0 4
	foi	f21 r6
	fldi	f2 r0 53
	fmul	f3 f21 f2
	fldi	f2 r0 54
	fsub	f17 f3 f2
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	add	r7 r0 r16
	add	r8 r0 r17
	fadd	f18 f0 f20
	call	L_calc_dirvec.2337
	fldi	f2 r0 53
	fmul	f3 f21 f2
	fldi	f2 r0 50
	fadd	f17 f3 f2
	addi	r6 r0 0
	fldi	f2 r0 29
	fldi	f3 r0 29
	addi	r8 r17 2
	add	r7 r0 r16
	fadd	f18 f0 f20
	call	L_calc_dirvec.2337
	addi	r10 r0 3
	addi	r11 r16 1
	addi	r6 r0 5
	bgt	r6 r11 L_else.26841
	addi	r11 r11 -5
	jump	L_cont.26839
L_else.26841 : 
L_cont.26839 : 
	add	r12 r0 r17
	call	L_calc_dirvecs.2345
	addi	r18 r15 -1
	addi	r15 r16 2
	addi	r6 r0 5
	bgt	r6 r15 L_else.26844
	addi	r15 r15 -5
	jump	L_cont.26842
L_else.26844 : 
L_cont.26842 : 
	addi	r16 r17 4
	bgt	r0 r18 L_else.26846
	foi	f2 r18
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f20 f2 f3
	addi	r10 r0 4
	add	r11 r0 r15
	add	r12 r0 r16
	call	L_calc_dirvecs.2345
	addi	r8 r18 -1
	addi	r6 r15 2
	addi	r7 r0 5
	bgt	r7 r6 L_else.26849
	addi	r6 r6 -5
	jump	L_cont.26847
L_else.26849 : 
L_cont.26847 : 
	addi	r17 r16 4
	add	r15 r0 r8
	add	r16 r0 r6
	jump	L_calc_dirvec_rows.2350
L_else.26846 : 
	return
L_else.26838 : 
	return
L_create_dirvec.2354 : 
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
L_create_dirvec_elements.2356 : 
	bgt	r0 r12 L_else.26853
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else.26855
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else.26857
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else.26859
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else.26861
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else.26863
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else.26865
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	bgt	r0 r12 L_else.26867
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r12 -1
	jump	L_create_dirvec_elements.2356
L_else.26867 : 
	return
L_else.26865 : 
	return
L_else.26863 : 
	return
L_else.26861 : 
	return
L_else.26859 : 
	return
L_else.26857 : 
	return
L_else.26855 : 
	return
L_else.26853 : 
	return
L_create_dirvecs.2359 : 
	bgt	r0 r13 L_else.26870
	addi	r11 r0 1076
	addi	r12 r0 120
	call	L_create_dirvec.2354
	add	r7 r0 r6
	add	r6 r0 r12
	call	min_caml_create_array
	add	r1 r11 r13
	sti	r6 r1 0
	ldi	r11 r13 1076
	addi	r12 r0 118
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 117
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 116
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 115
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 114
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 113
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 112
	call	L_create_dirvec.2354
	add	r1 r11 r12
	sti	r6 r1 0
	addi	r12 r0 111
	call	L_create_dirvec_elements.2356
	addi	r13 r13 -1
	jump	L_create_dirvecs.2359
L_else.26870 : 
	return
L_init_dirvec_constants.2361 : 
	bgt	r0 r15 L_else.26873
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else.26876
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.26893
	call	L_setup_rect_table.2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont.26891
L_else.26893 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.26902
	call	L_setup_surface_table.2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont.26891
L_else.26902 : 
	call	L_setup_second_table.2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont.26891 : 
	addi	r13 r12 -1
	bgt	r0 r13 L_else.26895
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.26898
	call	L_setup_rect_table.2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.26896
L_else.26898 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.26900
	call	L_setup_surface_table.2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.26896
L_else.26900 : 
	call	L_setup_second_table.2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont.26896 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants.2143
	jump	L_cont.26874
L_else.26895 : 
	jump	L_cont.26874
L_else.26876 : 
L_cont.26874 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else.26878
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else.26881
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.26888
	call	L_setup_rect_table.2134
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont.26886
L_else.26888 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.26890
	call	L_setup_surface_table.2137
	add	r1 r13 r12
	sti	r6 r1 0
	jump	L_cont.26886
L_else.26890 : 
	call	L_setup_second_table.2140
	add	r1 r13 r12
	sti	r6 r1 0
L_cont.26886 : 
	addi	r12 r12 -1
	call	L_iter_setup_dirvec_constants.2143
	jump	L_cont.26879
L_else.26881 : 
L_cont.26879 : 
	addi	r15 r15 -1
	bgt	r0 r15 L_else.26883
	add	r1 r14 r15
	ldi	r11 r1 0
	ldi	r6 r0 1072
	addi	r12 r6 -1
	call	L_iter_setup_dirvec_constants.2143
	addi	r15 r15 -1
	bgt	r0 r15 L_else.26885
	add	r1 r14 r15
	ldi	r11 r1 0
	call	L_setup_dirvec_constants.2146
	addi	r15 r15 -1
	jump	L_init_dirvec_constants.2361
L_else.26885 : 
	return
L_else.26883 : 
	return
L_else.26878 : 
	return
L_else.26873 : 
	return
L_init_vecset_constants.2364 : 
	bgt	r0 r16 L_else.26905
	ldi	r14 r16 1076
	ldi	r11 r14 119
	ldi	r6 r0 1072
	addi	r13 r6 -1
	bgt	r0 r13 L_else.26908
	ldi	r10 r13 1970
	ldi	r12 r11 1
	ldi	r8 r11 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.26917
	call	L_setup_rect_table.2134
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.26915
L_else.26917 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.26919
	call	L_setup_surface_table.2137
	add	r1 r12 r13
	sti	r6 r1 0
	jump	L_cont.26915
L_else.26919 : 
	call	L_setup_second_table.2140
	add	r1 r12 r13
	sti	r6 r1 0
L_cont.26915 : 
	addi	r12 r13 -1
	call	L_iter_setup_dirvec_constants.2143
	jump	L_cont.26906
L_else.26908 : 
L_cont.26906 : 
	ldi	r11 r14 118
	ldi	r6 r0 1072
	addi	r12 r6 -1
	call	L_iter_setup_dirvec_constants.2143
	ldi	r11 r14 117
	call	L_setup_dirvec_constants.2146
	addi	r15 r0 116
	call	L_init_dirvec_constants.2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else.26910
	ldi	r14 r16 1076
	ldi	r11 r14 119
	ldi	r6 r0 1072
	addi	r12 r6 -1
	call	L_iter_setup_dirvec_constants.2143
	ldi	r11 r14 118
	call	L_setup_dirvec_constants.2146
	addi	r15 r0 117
	call	L_init_dirvec_constants.2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else.26912
	ldi	r14 r16 1076
	ldi	r11 r14 119
	call	L_setup_dirvec_constants.2146
	addi	r15 r0 118
	call	L_init_dirvec_constants.2361
	addi	r16 r16 -1
	bgt	r0 r16 L_else.26914
	ldi	r14 r16 1076
	addi	r15 r0 119
	call	L_init_dirvec_constants.2361
	addi	r16 r16 -1
	jump	L_init_vecset_constants.2364
L_else.26914 : 
	return
L_else.26912 : 
	return
L_else.26910 : 
	return
L_else.26905 : 
	return
L_add_reflection.2368 : 
	call	L_create_dirvec.2354
	add	r16 r0 r6
	ldi	r6 r16 0
	fsti	f3 r6 0
	fsti	f4 r6 1
	fsti	f5 r6 2
	ldi	r6 r0 1072
	addi	r12 r6 -1
	bgt	r0 r12 L_else.26923
	ldi	r10 r12 1970
	ldi	r11 r16 1
	ldi	r8 r16 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.26926
	call	L_setup_rect_table.2134
	add	r1 r11 r12
	sti	r6 r1 0
	jump	L_cont.26924
L_else.26926 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.26935
	call	L_setup_surface_table.2137
	add	r1 r11 r12
	sti	r6 r1 0
	jump	L_cont.26924
L_else.26935 : 
	call	L_setup_second_table.2140
	add	r1 r11 r12
	sti	r6 r1 0
L_cont.26924 : 
	addi	r11 r12 -1
	bgt	r0 r11 L_else.26928
	ldi	r10 r11 1970
	ldi	r12 r16 1
	ldi	r8 r16 0
	ldi	r7 r10 1
	bne	r7 r4 L_else.26931
	call	L_setup_rect_table.2134
	add	r1 r12 r11
	sti	r6 r1 0
	jump	L_cont.26929
L_else.26931 : 
	addi	r6 r0 2
	bne	r7 r6 L_else.26933
	call	L_setup_surface_table.2137
	add	r1 r12 r11
	sti	r6 r1 0
	jump	L_cont.26929
L_else.26933 : 
	call	L_setup_second_table.2140
	add	r1 r12 r11
	sti	r6 r1 0
L_cont.26929 : 
	addi	r12 r11 -1
	add	r11 r0 r16
	call	L_iter_setup_dirvec_constants.2143
	jump	L_cont.26921
L_else.26928 : 
	jump	L_cont.26921
L_else.26923 : 
L_cont.26921 : 
	addi	r7 r0 1185
	sti	r15 r3 0
	sti	r16 r3 1
	fsti	f9 r3 2
	add	r6 r0 r3
	addi	r3 r3 3
	add	r1 r7 r14
	sti	r6 r1 0
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
	call	L_create_pixelline.2330
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_create_pixelline.2330
	addi	r2 r2 -1
	add	r7 r0 r6
	ldi	r6 r2 0
	sti	r7 r2 0
	sti	r6 r2 1
	addi	r2 r2 2
	call	L_create_pixelline.2330
	addi	r2 r2 -2
	add	r8 r0 r6
	ldi	r7 r2 0
	ldi	r6 r2 1
	call	L_read_screen_settings.2029
	sti	r6 r2 0
	addi	r2 r2 1
	call	L_read_light.2031
	addi	r2 r2 -1
	ldi	r6 r2 0
	addi	r21 r0 0
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r21
	addi	r2 r2 3
	call	L_read_nth_object.2036
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	bne	r9 r0 L_else.26938
	sti	r21 r0 1072
	jump	L_cont.26936
L_else.26938 : 
	addi	r21 r0 1
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r21
	addi	r2 r2 3
	call	L_read_nth_object.2036
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	bne	r9 r0 L_else.26970
	sti	r21 r0 1072
	jump	L_cont.26936
L_else.26970 : 
	addi	r21 r0 2
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r21
	addi	r2 r2 3
	call	L_read_nth_object.2036
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	bne	r9 r0 L_else.26972
	sti	r21 r0 1072
	jump	L_cont.26936
L_else.26972 : 
	addi	r21 r0 3
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r21
	addi	r2 r2 3
	call	L_read_nth_object.2036
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	bne	r9 r0 L_else.26974
	sti	r21 r0 1072
	jump	L_cont.26936
L_else.26974 : 
	addi	r21 r0 4
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	addi	r2 r2 3
	call	L_read_object.2038
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
L_cont.26936 : 
	addi	r11 r0 0
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item.2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r10 r9 0
	bne	r10 r5 L_else.26941
	jump	L_cont.26939
L_else.26941 : 
	addi	r10 r0 1083
	add	r1 r10 r11
	sti	r9 r1 0
	addi	r11 r0 1
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item.2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r12 r9 0
	bne	r12 r5 L_else.26962
	jump	L_cont.26939
L_else.26962 : 
	add	r1 r10 r11
	sti	r9 r1 0
	addi	r11 r0 2
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item.2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r12 r9 0
	bne	r12 r5 L_else.26964
	jump	L_cont.26939
L_else.26964 : 
	add	r1 r10 r11
	sti	r9 r1 0
	addi	r11 r0 3
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item.2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r12 r9 0
	bne	r12 r5 L_else.26966
	jump	L_cont.26939
L_else.26966 : 
	add	r1 r10 r11
	sti	r9 r1 0
	addi	r11 r0 4
	addi	r9 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	add	r7 r0 r9
	addi	r2 r2 3
	call	L_read_net_item.2042
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	ldi	r12 r9 0
	bne	r12 r5 L_else.26968
	jump	L_cont.26939
L_else.26968 : 
	add	r1 r10 r11
	sti	r9 r1 0
	addi	r10 r0 5
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_read_and_network.2046
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
L_cont.26939 : 
	addi	r10 r0 0
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_read_or_network.2044
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	sti	r9 r0 1183
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_write_ppm_header.2291
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r13 r0 4
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_create_dirvecs.2359
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r9 r0 9
	addi	r11 r0 0
	addi	r12 r0 0
	foi	f2 r9
	fldi	f3 r0 53
	fmul	f2 f2 f3
	fldi	f3 r0 54
	fsub	f20 f2 f3
	addi	r10 r0 4
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_calc_dirvecs.2345
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r15 r0 8
	addi	r16 r0 2
	addi	r17 r0 4
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_calc_dirvec_rows.2350
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r9 r0 4
	ldi	r14 r9 1076
	addi	r15 r0 119
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_init_dirvec_constants.2361
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r16 r0 3
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_init_vecset_constants.2364
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	addi	r11 r0 1905
	ldi	r9 r11 0
	fldi	f2 r0 1039
	fsti	f2 r9 0
	fldi	f2 r0 1040
	fsti	f2 r9 1
	fldi	f2 r0 1041
	fsti	f2 r9 2
	ldi	r9 r0 1072
	addi	r12 r9 -1
	bgt	r0 r12 L_else.26944
	ldi	r10 r12 1970
	ldi	r13 r11 1
	ldi	r9 r11 0
	ldi	r15 r10 1
	bne	r15 r4 L_else.26958
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_rect_table.2134
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	add	r1 r13 r12
	sti	r9 r1 0
	jump	L_cont.26956
L_else.26958 : 
	addi	r14 r0 2
	bne	r15 r14 L_else.26960
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_surface_table.2137
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	add	r1 r13 r12
	sti	r9 r1 0
	jump	L_cont.26956
L_else.26960 : 
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r8 r0 r9
	addi	r2 r2 3
	call	L_setup_second_table.2140
	addi	r2 r2 -3
	add	r9 r0 r6
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	add	r1 r13 r12
	sti	r9 r1 0
L_cont.26956 : 
	addi	r12 r12 -1
	sti	r6 r2 0
	sti	r8 r2 1
	sti	r7 r2 2
	addi	r2 r2 3
	call	L_iter_setup_dirvec_constants.2143
	addi	r2 r2 -3
	ldi	r6 r2 0
	ldi	r8 r2 1
	ldi	r7 r2 2
	jump	L_cont.26942
L_else.26944 : 
L_cont.26942 : 
	ldi	r9 r0 1072
	addi	r12 r9 -1
	bgt	r0 r12 L_else.26947
	ldi	r10 r12 1970
	ldi	r11 r10 2
	addi	r9 r0 2
	bne	r11 r9 L_else.26949
	ldi	r9 r10 7
	fldi	f3 r9 0
	fldi	f2 r0 12
	fbgt	f2 f3 L_else.26951
	jump	L_cont.26945
L_else.26951 : 
	ldi	r9 r10 1
	bne	r9 r4 L_else.26953
	addi	r9 r0 4
	mul	r18 r12 r9
	ldi	r17 r0 1075
	fldi	f3 r0 12
	ldi	r9 r10 7
	fldi	f2 r9 0
	fsub	f12 f3 f2
	fldi	f2 r0 1039
	fsub	f10 f0 f2
	fldi	f2 r0 1040
	fsub	f11 f0 f2
	fldi	f2 r0 1041
	fsub	f13 f0 f2
	addi	r15 r18 1
	fldi	f3 r0 1039
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r14 r0 r17
	fadd	f9 f0 f12
	fadd	f4 f0 f11
	fadd	f5 f0 f13
	addi	r2 r2 3
	call	L_add_reflection.2368
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r14 r17 1
	addi	r15 r18 2
	fldi	f4 r0 1040
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	fadd	f9 f0 f12
	fadd	f3 f0 f10
	fadd	f5 f0 f13
	addi	r2 r2 3
	call	L_add_reflection.2368
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r14 r17 2
	addi	r15 r18 3
	fldi	f5 r0 1041
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	fadd	f9 f0 f12
	fadd	f3 f0 f10
	fadd	f4 f0 f11
	addi	r2 r2 3
	call	L_add_reflection.2368
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r9 r17 3
	sti	r9 r0 1075
	jump	L_cont.26945
L_else.26953 : 
	addi	r11 r0 2
	bne	r9 r11 L_else.26955
	addi	r9 r0 4
	mul	r9 r12 r9
	addi	r15 r9 1
	ldi	r17 r0 1075
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
	fldi	f3 r0 30
	ldi	r9 r10 4
	fldi	f2 r9 0
	fmul	f2 f3 f2
	fmul	f2 f2 f6
	fldi	f3 r0 1039
	fsub	f3 f2 f3
	fldi	f4 r0 30
	ldi	r9 r10 4
	fldi	f2 r9 1
	fmul	f2 f4 f2
	fmul	f4 f2 f6
	fldi	f2 r0 1040
	fsub	f4 f4 f2
	fldi	f5 r0 30
	ldi	r9 r10 4
	fldi	f2 r9 2
	fmul	f2 f5 f2
	fmul	f2 f2 f6
	fldi	f5 r0 1041
	fsub	f5 f2 f5
	sti	r7 r2 0
	sti	r8 r2 1
	sti	r6 r2 2
	add	r14 r0 r17
	addi	r2 r2 3
	call	L_add_reflection.2368
	addi	r2 r2 -3
	ldi	r7 r2 0
	ldi	r8 r2 1
	ldi	r6 r2 2
	addi	r9 r17 1
	sti	r9 r0 1075
	jump	L_cont.26945
L_else.26955 : 
	jump	L_cont.26945
L_else.26949 : 
	jump	L_cont.26945
L_else.26947 : 
L_cont.26945 : 
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
	sti	r8 r2 0
	sti	r7 r2 1
	sti	r6 r2 2
	add	r6 r0 r7
	add	r8 r0 r9
	add	r7 r0 r10
	addi	r2 r2 3
	call	L_pretrace_pixels.2300
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
	call	L_scan_line.2317
	return
min_caml_end : 
	call	min_caml_start
