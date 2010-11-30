/*マシンコードをアセンブリに書き換えて出力するプログラム 
gcc -o trans_k_to_a trans_k_to_a.c でコンパイル

./trans_k_to_a inputfile outputfileで実行。
outputfileがアセンブリとして出力される*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


/*命令セット*/
#define NOP 0
#define ADD 1
#define SUB 2
#define MUL 3

#define NOR 6
#define XOR 7
#define ADDI 9
#define SUBI 10
#define MULI 11

#define NORI 14
#define XORI 15

#define FADD 16
#define FSUB 17
#define FMUL 18
#define FSQRT 20
#define FDIV 19
#define FOI 21
#define FIO 23
#define FLR 22
#define LDR 24
#define STR 26
#define FLDR 28
#define FSTR 30
#define LDI 25
#define STI 27
#define FLDI 29
#define FSTI 31

#define BEQ 32
#define BNE 33
#define BGT 34
#define BLT 35
#define FBEQ 36
#define FBNE 37
#define FBGT 38
#define FBLT 39

#define JUMP 48
#define CALL 52
#define RETURN 56


#define PTC 4
#define PTF 5

#define RDI 12
#define RDF 13

/*定数*/
#define POW_2_16 65536

/*マクロ*/
#define INST_TYPE_1(INST) \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 6;\
      arg1 = arg1 >> 27;\
      arg2 = buf_int << 11;\
      arg2 = arg2 >> 27;\
      arg3 = buf_int << 16;\
      arg3 = arg3 >> 27;\
      fprintf(fp2,"%s\tr%d r%d r%d\n",inst_w,arg1,arg2,arg3);\
      break;

#define INST_TYPE_2(INST) \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 6;\
      arg1 = arg1 >> 27;\
      arg2 = buf_int << 11;\
      arg2 = arg2 >> 27;\
      arg3 = buf_int << 16;\
      arg3 = arg3 >> 27;\
      fprintf(fp2,"%s\tf%d f%d f%d\n",inst_w,arg1,arg2,arg3);\
      break;



#define INST_TYPE_3(INST) \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 6;\
      arg1 = arg1 >> 27;\
      arg2 = buf_int << 11;\
      arg2 = arg2 >> 27;\
      fprintf(fp2,"%s\tf%d f%d\n",inst_w,arg1,arg2);\
      break;

#define INST_TYPE_3_2(INST) \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 6;\
      arg1 = arg1 >> 27;\
      arg2 = buf_int << 11;\
      arg2 = arg2 >> 27;\
      fprintf(fp2,"%s\tf%d r%d\n",inst_w,arg1,arg2);\
      break;

#define INST_TYPE_4(INST) \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 6;\
      arg1 = arg1 >> 27;\
      arg2 = buf_int << 11;\
      arg2 = arg2 >> 27;\
      arg3 = buf_int << 16;\
      arg3 = arg3 >> 27;\
      fprintf(fp2,"%s\tf%d r%d r%d\n",inst_w,arg1,arg2,arg3);\
      break;

#define INST_TYPE_5(INST) \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 6;\
      arg1 = arg1 >> 27;\
      arg2 = buf_int << 11;\
      arg2 = arg2 >> 27;\
      arg3 = buf_int << 16;\
      arg3 = arg3 >> 16;\
      if((arg3 & 0x00008000) == 0x00008000){ \
        fprintf(fp2,"%s\tr%d r%d %d\n",inst_w,arg1,arg2,arg3 - POW_2_16 );} \
      else {fprintf(fp2,"%s\tr%d r%d %d\n",inst_w,arg1,arg2,arg3);}   \
      break;

#define INST_TYPE_6(INST) \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 6;\
      arg1 = arg1 >> 27;\
      arg2 = buf_int << 11;\
      arg2 = arg2 >> 27;\
      arg3 = buf_int << 16;\
      arg3 = arg3 >> 16;\
      if((arg3 & 0x00008000) == 0x00008000){ \
        fprintf(fp2,"%s\tf%d f%d %d\n",inst_w,arg1,arg2,arg3 - POW_2_16 );} \
      else {fprintf(fp2,"%s\tf%d f%d %d\n",inst_w,arg1,arg2,arg3);}   \
      break;

#define INST_TYPE_7(INST) \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 6;\
      arg1 = arg1 >> 27;\
      arg2 = buf_int << 11;\
      arg2 = arg2 >> 27;\
      arg3 = buf_int << 16;\
      arg3 = arg3 >> 16;\
      fprintf(fp2,"%s\tf%d r%d %d\n",inst_w,arg1,arg2,arg3);\
      break;

#define INST_TYPE_8(INST) \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 6;\
      arg1 = arg1 >> 6;\
      fprintf(fp2,"%s\t%d\n",inst_w,arg1);\
      break;

#define INST_TYPE_9(INST,REGIST)                      \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 6;\
      arg1 = arg1 >> 27;\
      fprintf(fp2,"%s\t%s%d\n",inst_w,REGIST,arg1);  \
      break;

#define INST_TYPE_10(INST,REGIST)                      \
      strcpy(inst_w,INST);\
      arg1 = buf_int << 11;\
      arg1 = arg1 >> 27;\
      fprintf(fp2,"%s\t%s%d\n",inst_w,REGIST,arg1);  \
      break;


/*機械後をparseしてアセンブラに直す*/
int parse_all(char *input_filename ,char * output_filename){
  FILE *fp,*fp2;
  char buf[1000];
  unsigned int buf_int;

  unsigned int inst,arg1,arg2,arg3;
  char inst_w[10];

  fp = fopen(input_filename,"r");

  if (fp == NULL) {
    printf("%sが開けません\n", input_filename);
    return 1;
  }

  fp2 = fopen(output_filename,"w");

  while(1) {
    if (fgets(buf, 20, fp) == NULL) {	/* １行読み込み */
      break;		/* 末尾まで完了したか、エラー発生で終了 */
    }

    buf_int = (unsigned int) strtoll(buf, NULL, 16);
    //    fprintf(fp2,"%08X\n",buf_int);
    inst = buf_int >> 26;
    
    switch(inst){
    case NOP:
      strcpy(inst_w,"nop");
      fprintf(fp2,"%s\n",inst_w);
      break;
    case ADD:
      INST_TYPE_1("add");      
    case SUB:
      INST_TYPE_1("sub");
    case MUL:
      INST_TYPE_1("mul");
    case NOR:
      INST_TYPE_1("nor");
    case XOR:
      INST_TYPE_1("xor");
    case FADD:
      INST_TYPE_2("fadd");
    case FSUB:
      INST_TYPE_2("fsub");
    case FMUL:
      INST_TYPE_2("fmul");
    case FSQRT:
      INST_TYPE_3("fsqrt"); 
    case FDIV:
      INST_TYPE_2("fdiv"); 
    case FOI:
      INST_TYPE_3_2("foi"); 
    case FIO:
      INST_TYPE_3("fio"); 
    case FLR:
      INST_TYPE_3("flr"); 
    case LDR:
      INST_TYPE_1("ldr");
    case STR:
      INST_TYPE_1("str");
    case FLDR:
      INST_TYPE_4("fldr");
    case FSTR:
      INST_TYPE_4("fstr");
    case RETURN:
      strcpy(inst_w,"return");
      fprintf(fp2,"%s\n",inst_w);
      break;
    case ADDI:
      INST_TYPE_5("addi");
    case SUBI:
      INST_TYPE_5("subi");
    case MULI:
      INST_TYPE_5("muli");
    case NORI:
      INST_TYPE_5("nori");
    case XORI:
      INST_TYPE_5("xori");
    case BEQ:
      INST_TYPE_5("beq");
    case BNE:
      INST_TYPE_5("bne");
    case BGT:
      INST_TYPE_5("bgt");
    case BLT:
      INST_TYPE_5("blt");
    case FBEQ:
      INST_TYPE_6("fbeq");
    case FBNE:
      INST_TYPE_6("fbne");
    case FBGT:
      INST_TYPE_6("fbgt");
    case FBLT:
      INST_TYPE_6("fblt");
    case LDI:
      INST_TYPE_5("ldi");
    case STI:
      INST_TYPE_5("sti");
    case FLDI:
      INST_TYPE_7("fldi");
    case FSTI:
      INST_TYPE_7("fsti");
    case JUMP:
      INST_TYPE_8("jump");
    case CALL:
      INST_TYPE_8("call");
    case RDI:
      INST_TYPE_9("rdi","r");
    case RDF:
      INST_TYPE_9("rdf","f");
    case PTC:
      INST_TYPE_10("ptc","r");
    case PTF:
      INST_TYPE_10("ptf","f");
    }

  }

  fclose(fp);
  fclose(fp2);

  return 0;
}


int main(int argc,char *argv[]){

  if(argc != 3){
    printf("Useage: %s input_file output_file\n",argv[0]);
    exit(1);
  }

  parse_all(argv[1],argv[2]);
  return 0;
}
