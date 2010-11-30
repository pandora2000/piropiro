#include "alu.h"
#include "fmul.h"
#include "fdiv.h"
#include <stdio.h>
#include <math.h>


unsigned int trans_char_to_unsigned(char *str){
  unsigned int answer = 0;
  int i;
  for(i = 0;i<32;i++){
    if(str[i] == '1'){
      answer = answer + pow(2,(31-i));
    }
  }
  return answer;
}

void trans_unsigned_to_char(unsigned int num,char *str){
  int i;
  for(i=0;i<32;i++){
    if(num % 2 == 1){
      str[31-i] = '1';
    }
    else{
      str[31-i] = '0';
    }
    num = num /2;
  }
  str[32] = '\0';
  return;
}

union ubuff{
  unsigned int i;
  float f;
};


int main(){
  FILE *input_fp;
  FILE *output_fp;

  union ubuff buf1;
  union ubuff buf2;
  union ubuff my_answer;

  char buf1_c[33];
  char buf2_c[33];
  char answer_c[33];
  char my_answer_c[33];

  
  input_fp = fopen("fdiv-result.txt","r");
  output_fp = fopen("fdiv-result3.txt","w");



  while(1){
    if(fscanf(input_fp,"%s",buf1_c) == EOF){
      printf("file end\n");
      break;
    }
    fscanf(input_fp,"%s",buf2_c);
    fscanf(input_fp,"%s",answer_c);

    buf1.i = trans_char_to_unsigned(buf1_c);
    buf2.i = trans_char_to_unsigned(buf2_c);

    my_answer.f = fdiv(buf1.f,buf2.f);
    trans_unsigned_to_char(my_answer.i,my_answer_c);
    
    fprintf(output_fp,"%s\n",buf1_c);
    fprintf(output_fp,"%s\n",buf2_c);
    fprintf(output_fp,"%s\n",my_answer_c);
  }

  fclose(input_fp);
  fclose(output_fp);

  return 1;
}
