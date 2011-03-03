# Makefile
.PHONY: all
all:fastsim slowsim trans_16_to_2 trans_a_to_k trans_k_to_a

fastsim:fastsim.c
	gcc -lm -O3 -DFAST -funroll-all-loops -fschedule-insns -finline-limit-100000 -o fastsim fastsim.c

slowsim:fdiv.h fdiv.c fmul.h fmul.c slowsim.c
	gcc -o slowsim fdiv.c fmul.c slowsim.c -lm

trans_16_to_2:trans_16_to_2.c
	gcc -o trans_16_to_2 trans_16_to_2.c

trans_a_to_k:trans_a_to_k.c
	gcc -o trans_a_to_k trans_a_to_k.c

trans_k_to_a:trans_k_to_a.c
	gcc -o trans_k_to_a trans_k_to_a.c

.PHONY: clean
clean:
	rm -rf fastsim slowsim trans_k_to_a trans_a_to_k trans_16_to_2