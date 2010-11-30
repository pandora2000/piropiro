#include <stdio.h>
#include <stdlib.h>

typedef struct{
  unsigned int result;
  unsigned int cnd;/*下位2bitを使用する*/
}alu_result;



alu_result * alu(unsigned int src1,unsigned int src2,unsigned int op);
void print_alu_result(alu_result *answer);
