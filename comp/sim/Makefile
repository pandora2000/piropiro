#Makefile

all: fastsim.c
	gcc -Wall -lm -O3 -DFAST -funroll-all-loops -fschedule-insns -finline-limit-100000 fastsim.c

clean:
	-rm sim
