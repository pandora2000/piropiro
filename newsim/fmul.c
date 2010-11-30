#include "fmul.h"

/*unsigned int の a(num) を取り出してくる関数*/
unsigned int pick_int(unsigned int a,int num){
  return ((a << (31 - num)) >> 31);
}

unsigned long long int pick_long(unsigned long long int a,int num){
  return ((a << (63 - num)) >> 63);
}

unsigned int pick_line_int(unsigned int a,int start,int end){
  return ((a << (31 - start)) >> (31 - start + end));
}

unsigned long long int pick_line_long(unsigned long long a,int start,int end){
  return ((a << (63 - start)) >> (63 - start + end));
}


fmul_result * fmul(unsigned int data1,unsigned int data2){
  static unsigned int sign0,sign1,over,sign2,exp,exp1_1,exp2_1,exp1_2,exp2_2,sticky,diff,round1,round2,man_s1,man_s2,zero0,zero1,zero2;
 static unsigned long long int mul0,mul1;

 fmul_result *answer = malloc(sizeof(fmul_result));

 /*clock前処理　伝播するようにする*/
 sign0 = pick_int(data1,31) ^ pick_int(data2,31);

 mul0 = ((unsigned long long int)(pick_line_int(data1,22,0) | 0x00800000)) * ((unsigned long long int)(pick_line_int(data2,22,0) | 0x00800000));

  if(data1 == 0 || data2 == 0){
    zero0 = 0x00000001;
  }else{
    zero0 = 0x00000000;
  }

  if(pick_line_long(mul1,21,0) == 0 ){
    sticky = 0;
  }else{
    sticky = 1;
  }

  round1 = pick_long(mul1,23) & ((pick_long(mul1,24) | pick_long(mul1,22)) | sticky);
  round2 = pick_long(mul1,22) & (pick_long(mul1,23) | sticky);

  if(pick_long(mul1,47) == 1){
    man_s1 = (unsigned int) pick_line_long((pick_line_long(mul1,47,24) + round1),23,0);
  }else{
    man_s1 = (unsigned int) pick_line_long((pick_line_long(mul1,46,23) + round2),23,0);
  }
  

  /*clock処理 伝播しないように注意*/
    /*latch1*/
    sign2 = sign1;
    exp1_2 = exp1_1;
    exp2_2 = exp2_1;
    over = pick_long(mul1,47);
    man_s2 = man_s1;
    zero2 = zero1;

    /*latch0*/
    sign1 = sign0;
    mul1 = mul0;
    exp1_1 = pick_line_int(data1,30,23);
    exp2_1 = pick_line_int(data2,30,23);
    zero1 = zero0;


  /*clock後処理　result関連、伝播するように*/
    if(over == 1 && pick_int(man_s2,23) == 0){
      diff = 2;
    } 
    else if(over == 1 || pick_int(man_s2,23) == 0){
      diff = 1;
    }
    else{
      diff = 0;
    }

    exp = pick_line_int((exp1_2 + exp2_2 -127 + diff),7,0);

    if(zero2 == 1){
      answer -> result = 0;
    }
    else {
      answer -> result = (sign2 << 31) | (exp << 23) | pick_line_int(man_s2,22,0);
    }
    return answer;
}


void print_fmul_result(fmul_result * answer){
  printf("result = %08X\n",answer -> result);
  return;
}
