#include <stdio.h>
#include "fdiv.h"

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



union ubuff {
  unsigned int i;
  float f;
};


float fdiv(float data1,float data2){
  union ubuff data1_buf;
  union ubuff data2_buf;
  union ubuff result;
  
  unsigned int dr,zr,nd,q;
  unsigned long long int mul1,mul2;
  unsigned int data1s,data2s;

  unsigned int man_s,diff,exp,sign;


  int i;

  data1_buf.f = data1;
  data2_buf.f = data2;

  data1s = pick_line_int(data1_buf.i,31,23);
  data2s = pick_line_int(data2_buf.i,31,23);
   
   if(pick_line_int(data1_buf.i,30,0) == 0){
      return 0.0;
    }

    dr = 0x0000000010000000 | (((unsigned long long)(pick_line_int(data2_buf.i,22,0))) << 5);
    zr = 0x0000000010000000 | (((unsigned long long)(pick_line_int(data1_buf.i,22,0))) << 5);

    /*回路計算部分*/
    nd = pick_line_int(pick_line_int((~dr),29,0)+ 1,29,0);
     mul1 = ((unsigned long long int)dr) * ((unsigned long long int) nd);
     mul2 = ((unsigned long long int)zr) * ((unsigned long long int) nd);
    

    /*5回反復部分　(初期値があるのでroopは4回になる)*/
    for(i=0;i<4;i++){
      dr = (unsigned int)(pick_line_long(mul1,58,29));
      zr = (unsigned int)(pick_line_long(mul2,58,29));

    /*回路計算部分*/
      nd = pick_line_int(pick_line_int((~dr),29,0)+ 1,29,0);
     mul1 = ((unsigned long long int)dr) * ((unsigned long long int) nd);
     mul2 = ((unsigned long long int)zr) * ((unsigned long long int) nd);
    }

    q = (unsigned int)pick_line_long(mul2,58,33);

    /*丸めなどの計算*/
    if(pick_int(q,25) == 1){
      man_s = pick_line_int(q,25,2) + pick_int(q,1);
    }else{
      man_s = pick_line_int(q,24,1) + pick_int(q,0);
    }

    if(pick_int(q,25) == 1 && pick_int(man_s,24) == 1){
      diff = 0x00000002;}
    else if(pick_int(q,25) == 1 || pick_int(man_s,24) == 1){
      diff = 0x00000001;}
    else {
      diff = 0;
    }

    exp = pick_line_int(data1s,7,0) + (~pick_line_int(data2s,7,0)) + 127 + diff;

    sign = pick_int(data1s,8) ^ pick_int(data2s,8);

    if(pick_int(man_s,24) == 0){
      result.i = (sign << 31) | ((exp << 24) >> 1)| (pick_line_int(man_s,22,0));
    }else{
      result.i = (sign << 31) | ((exp << 24) >> 1)| (pick_line_int(man_s,23,1));
    }
                                                     
    return result.f;

}



