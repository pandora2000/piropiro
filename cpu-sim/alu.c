#include "alu.h"

alu_result * alu(unsigned int src1,unsigned int src2,unsigned int op){
  alu_result* answer = malloc(sizeof(alu_result));
  if(op == 0x00000001){
    answer->result = src1 + src2;
  }
  else if(op == 0x00000002){
    answer->result = src1 - src2;
  }
  else if(op == 0x00000003){
    answer->result = (src1 & 0x0000ffff) * (src2 & 0x0000ffff);
  }
  else if(op == 0x00000004){
    answer->result = src1 & src2;
  }
  else if(op == 0x00000005){
    answer->result = src1 | src2;
  }
  else if(op == 0x00000006){
    answer->result = ~ (src1 | src2);
  }
  else if(op == 0x00000007){
    answer->result = ~ (src1 ^ src2);
  }
  else {
    answer->result = 0x00000000;
  }

  /*condition code*/
  if((answer->result & 0x80000000) == 0x80000000){
    answer->cnd = 0x00000000;
  } 
  else if(answer->result == 0x00000000){
    answer->cnd = 0x00000001;
  }
  else if((answer->result & 0x80000000) == 0x00000000){
    answer->cnd = 0x00000002;
  }else {
    answer->result = 0x00000003;
  }

  return answer;
}


void print_alu_result(alu_result *answer){
  printf("result = %08X  %d\n", answer -> result,(int) answer-> result);
  printf("cnd    = %08X  %d\n", answer -> cnd, (int) answer -> cnd);
  return;
}
