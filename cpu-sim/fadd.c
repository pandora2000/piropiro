#include "fadd.h"

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

/*pencoder - faddのsub*/
unsigned int pencoder(unsigned int input){
  unsigned int i;
  for(i=27;i > 0;i--){
    if(pick_int(input,i) == 1){
      return 27 - i;
    }
  }
  return 27;
}





unsigned int  fadd(unsigned int op,unsigned int f_in1,unsigned int f_in2){
  static unsigned int n0,n1,input1,output1,sign,sticky,round,singned_sub,cmp0,cmp1,cmp2,f_inl0,f_ins0,f_inl1,f_ins1,f_inl2,f_ins2,exp,exp_dif0,exp_dif1,exp,exp_dif0,exp_dif1,man,man_t3,man_t2,man_t1,nshift1,nshift2;

  static unsigned long long int man_s,man_l,input0,output0,man_ss,man_t0;
  /*clock前処理*/
  if(pick_line_int(f_in1,30,0) > pick_line_int(f_in2,30,0)){
    cmp0 = 0;
  }else if(pick_line_int(f_in1,30,0) == pick_line_int(f_in2,30,0)){
    cmp0 = 1;
  }else{
    cmp0 = 2;
  }

  if(op == 1){
    sign_sub = (~ pick_int(f_in2,31)) & 0x00000001;
  }else{
    sign_sub = pick_int(f_in2,31);
  }

  if(pick_int(cmp0,1) == 0){
    f_inl0 = f_in1;
  }else{
    f_inl0 = (sign_sub << 31) | (pick_line_int (f_in2 ,30,0));
  }

  if(pick_int(cmp0,1) == 0){
    f_ins0 = (sign_sub << 31) | (pick_line_int (f_in2 ,30,0));
  }else{
    f_ins0 = f_in1;
  }
  
  exp_dif0 = pick_line_int(f_inl0,30,23) - pick_line_int(f_ins0,30,23);

  //前シフト処理
  man_l = 0x0002000000000000ull | (((unsigned long long int)pick_line_int(f_inl1,22,0)) << 26);
  man_ss = 0x0002000000000000ull | (((unsigned long long int)pick_line_int(f_ins1,22,0)) << 26);

  man_s = man_ss >> exp_dif1;

  if(pick_int(f_inl1,31) == pick_int(f_ins1,31)){
    man_t0 = man_l + man_s;
  }else{
    man_t0 = man_l - man_s;
  }

  if(pick_line_long(man_t0,23,0) == 0){
    sticky = 0;
  }else{
    sticky = 1;
  }

  man_t1 = ((pick_line_long (man_t0,50,24)) << 1 ) | sticky;

  nshift1 = pencoder(man_t1);  

  /*latch0*/
  f_inl1 = f_inl0;
  f_ins1 = f_ins0;
  exp_dif1 = exp_dif0;
  cmp1 = cmp0;


 

    return 1;
}


int main(){
  return 1;
}
