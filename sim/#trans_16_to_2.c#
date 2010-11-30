#include <stdio.h>

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


int main(int argc,char* argv[]){
  FILE * input_fp;
  FILE * output_fp;
  unsigned int buf;
  char str[40];

  input_fp = fopen(argv[1],"r");
  output_fp = fopen(argv[2],"w");
  
  while(fscanf(input_fp,"%X",&buf) != EOF){
    printf("%d\n",buf);
    trans_unsigned_to_char(buf,str);
    fprintf(output_fp,"%s\n",str);
  }
  
  fclose(input_fp);
  fclose(output_fp);
  
  return 0;
}
