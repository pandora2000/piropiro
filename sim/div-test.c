#include <stdio.h>
#include <math.h>
#include <stdlib.h>

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


union umemory {
  int i;
  float d;
};


union umemory u_buff[10];//一時的なumemory　共用体を使いたいときに使用している。

int main(){
  unsigned int my_answer;
  FILE *input_fp;
  FILE *output_fp;
  char buf1_c[33];
  char buf2_c[33];
  char answer_c[33];
  char my_answer_c[33];
  unsigned int buf1,buf2;
  
  input_fp = fopen("fdiv-result.txt","r");
  output_fp = fopen("fdiv-result2.txt","w");



  while(1){
    if(fscanf(input_fp,"%s",buf1_c) == EOF){
      printf("file end\n");
      break;
    }
    fscanf(input_fp,"%s",buf2_c);
    fscanf(input_fp,"%s",answer_c);

    buf1 = trans_char_to_unsigned(buf1_c);
    buf2 = trans_char_to_unsigned(buf2_c);

    u_buff[1].i = buf1;
    u_buff[2].i = buf2;
    u_buff[3].d = u_buff[1].d / u_buff[2].d;
    my_answer = u_buff[3].i;
    trans_unsigned_to_char(my_answer,my_answer_c);
    trans_unsigned_to_char(u_buff[1].i,buf1_c);
    trans_unsigned_to_char(u_buff[2].i,buf2_c);

    

    fprintf(output_fp,"%s\n",buf1_c);
    fprintf(output_fp,"%s\n",buf2_c);
    fprintf(output_fp,"%s\n",my_answer_c);
  }

  fclose(input_fp);
  fclose(output_fp);

  return 1;


}
