#include <stdio.h>

int main(){

  unsigned int a = 0x00000001;
  unsigned long long int b = 0x0001000000000002ull;

  printf("a = %08x\n",a);
  printf("b = %016llx\n",b);


  printf("a + b = %016llx\n",a + b);
  printf("a'  = %016llx\n",(unsigned long long int)a);
  printf("b' = %08x\n",(unsigned int) b);

  return 1;
}
