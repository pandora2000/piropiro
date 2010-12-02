/*マシンコードをアセンブリに書き換えて出力するプログラム 
gcc -o trans_a_to_k trans_a_to_k.c でコンパイル

./trans_a_to_k inputfile outputfileで実行。
outputfileがアセンブリとして出力される*/

#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include <ctype.h>
#include <sys/time.h>

#define NAME_MAX_COUNT 4
#define NAME_SIZE 40

#define INST_MAX_COUNT 100000

#define LABEL_MAX_COUNT 10000

#define FPT_MAX_COUNT 100

#define  ACSESS_GOOD 0
#define  ACSESS_BAD -1

typedef struct {
    char name[NAME_MAX_COUNT][NAME_SIZE];
} instruction;

typedef struct {
    char name[NAME_SIZE];
    int index;
} label;

typedef struct {
    instruction insts[INST_MAX_COUNT];
    label *labels[LABEL_MAX_COUNT];
    int label_count;
    int inst_count;
} program;


typedef struct {
    int name[NAME_SIZE];
} instruction2;

typedef struct {
    instruction2 insts[INST_MAX_COUNT];
    int inst_count;
} program2;



bool is_seperator(char c)
{
    return c == ' ' || c == '\r' || c == '\t';
}


/*1line_instructionのparse (入力は\nで終わっていることを前提とする。）*/
instruction *parse_one_line_instruction(char *str, instruction * inst)
{

    int i = 0;
    int name_number = 0;
    int name_now = 0;
    int flag = 0;


    while (str[i] != '\n') {
	/*まずフラグが立っていない場合。最初のスペースは無視する */
	while (flag == 0 && is_seperator(str[i])) {
	    i++;
	}

	if (is_seperator(str[i])) {
	    inst->name[name_number][name_now] = '\0';
	    name_number++;
	    name_now = 0;
	    flag = 0;
	    i++;
	} else {
	    if (name_number == NAME_MAX_COUNT) {
		printf("Error:operant is too many!: %s\n", str);
		exit(1);
	    }
	    inst->name[name_number][name_now] = str[i];
	    name_now++;
	    flag = 1;
	    i++;
	}
    }
    inst->name[name_number][name_now] = '\0';
    name_number++;

    //オペラント数が少ない場合残りのオペラントをnullで埋めておく。
    for (i = name_number; i < NAME_MAX_COUNT; ++i) {
	inst->name[i][0] = '\0';
    }

    return inst;
}


void print_instruction(instruction inst)
{
    printf("%s | %s | %s | %s\n", inst.name[0], inst.name[1], inst.name[2],
	   inst.name[3]);
    return;
}


void print_label(label * label)
{
    printf("%s => %d\n", label->name, label->index);
    return;
}

void print_program(program * program)
{

    int i, j;

    for (i = 0; i < program->inst_count; ++i) {
	for (j = 0; j < program->label_count; ++j) {
	    if (program->labels[j]->index == i) {
		printf("%s:\n", program->labels[j]->name);
	    }
	}
	printf("%d ", i);
	print_instruction(program->insts[i]);
    }
    return;
}




program *parse_all(char buf[][100], int buf_size)
{
    int i, now = 0;
    int pc = 0;

    program *answer;

    answer = (program *) malloc(sizeof(program));
    answer->label_count = 0;
    answer->inst_count = 0;


    for (i = 0; i < buf_size; ++i) {
	/*colonが入っていればlabelそうでなければ、instruction */
	if (strstr(buf[i], ":") != NULL) {
	    /*labelのparse */
	    answer->labels[answer->label_count] = malloc(sizeof(label));
	    now = 0;
	    while (buf[i][now] != ' ') {
		answer->labels[answer->label_count]->name[now] =
		    buf[i][now];
		now++;
	    }
	    answer->labels[answer->label_count]->name[now + 1] = '\0';
	    answer->labels[answer->label_count]->index = pc;
	    answer->label_count = answer->label_count + 1;
	} else {
	    /*instructionのparse */
	    parse_one_line_instruction(buf[i], &(answer->insts[pc]));
	    answer->inst_count = answer->inst_count + 1;;
	    pc++;
	}
    }
    return answer;
}

#define REG_COUNT 32
#define FREG_COUNT 32



/*レジスターの番号をcharからintに変換する*/
int int_of_register(char *regist)
{
    if (regist[0] == 'r' || regist[0] == 'f') {
	return atoi(regist + 1);
    }
    //r f以外の場合
    printf("Error:register name is not iligal!\n");
    exit(1);
    return -1;
}



int new_label_trans(char *label, program * program)
{
    int i;
    /*number */
    if (label[0] == '-' || label[0] == '0' || label[0] == '1'
	|| label[0] == '2' || label[0] == '3' || label[0] == '4'
	|| label[0] == '5' || label[0] == '6' || label[0] == '7'
	|| label[0] == '8' || label[0] == '9') {
	return atoi(label);
    }
    /*label */
    /*特殊ラベル
    if (strncmp(label, "L_atan", 6) == 0) {
      return -100;
    }
     else if (strncmp(label, "L_sqrt", 6) == 0) {
      return -200;
    } else if (strcmp(label, "min_caml_read_int") == 0) {
      return -300;
    } else if (strcmp(label, "min_caml_read_float") == 0) {
      return -400;
    }
    */
    for (i = 0; i < program->label_count; i++) {
	if (strcmp(label, program->labels[i]->name) == 0) {
	    return program->labels[i]->index;
	}
    }
    fprintf(stderr, "%s\n", label);
    printf("label not found");
    exit(1);
    return -1;
}



int label_trans(char *label, program * program)
{
    int i;
    /*number */
    if (label[0] == '-' || label[0] == '0' || label[0] == '1'
	|| label[0] == '2' || label[0] == '3' || label[0] == '4'
	|| label[0] == '5' || label[0] == '6' || label[0] == '7'
	|| label[0] == '8' || label[0] == '9') {
	return atoi(label);
    }
    /*label */
    for (i = 0; i < program->label_count; i++) {
	if (strcmp(label, program->labels[i]->name) == 0) {
	    return program->labels[i]->index;
	}
    }
    fprintf(stderr, "%s\n", label);
    printf("label not found");
    exit(1);
    return -1;
}


/*ラベルを相対アドレスに書き換える*/
int label_trans_soutai(char *label, program * program, int nowpc)
{
    int i;
    /*number */
    if (label[0] == '-' || label[0] == '0' || label[0] == '1'
	|| label[0] == '2' || label[0] == '3' || label[0] == '4'
	|| label[0] == '5' || label[0] == '6' || label[0] == '7'
	|| label[0] == '8' || label[0] == '9') {
	return atoi(label);
    }
    /*label */
    for (i = 0; i < program->label_count; i++) {
	if (strcmp(label, program->labels[i]->name) == 0) {
	    return program->labels[i]->index - nowpc;
	}
    }
    printf("label not found");
    exit(1);
    return -1;
}

float read_float()
{
    char s[100];
    int a, i;
    bool f;

    for (i = 0, f = false; true;) {
	a = fgetc(stdin);
	if (f) {
	    if (a == EOF || isspace(a)) {
		s[i] = '\0';
		return atof(s);
	    } else {
		s[i++] = (char) a;
	    }
	} else {
	    if (!(a == EOF || isspace(a))) {
		f = true;
		s[i++] = (char) a;
	    }
	}
    }
}

int read_int()
{
    char s[100];
    int a, i;
    bool f;

    for (i = 0, f = false; true;) {
	a = fgetc(stdin);
	if (f) {
	    if (a == EOF || isspace(a)) {
		s[i] = '\0';
		return atoi(s);
	    } else {
		s[i++] = (char) a;
	    }
	} else {
	    if (!(a == EOF || isspace(a))) {
		f = true;
		s[i++] = (char) a;
	    }
	}
    }
}

/*レジスターの番号をcharからintに変換する*/
int int_of_regi(char *regist)
{
    if (regist[0] == 'r') {
        return atoi(regist + 1);
    }
    //r f以外の場合
    printf("Error:register name is iligal!:%s\n", regist);
    exit(1);
    return -1;
}

int int_of_fregi(char *regist)
{
    if (regist[0] == 'f') {
        return atoi(regist + 1);
    }
    //r f以外の場合
    printf("Error:register name is iligal!:%s\n", regist);
    exit(1);
    return -1;
}

int null_cal(char *null)
{
    return 0;
}

//マクロ
#define PARSE_INST(INST,INST_NUM,OP1,OP2,OP3) \
    else if(strcmp(iname,INST) == 0){ \
      answer -> insts[i].name[0] = INST_NUM; \
      answer -> insts[i].name[1] = OP1(ist.name[1]); \
      answer -> insts[i].name[2] = OP2(ist.name[2]); \
      answer -> insts[i].name[3] = OP3(ist.name[3]); \
    }


#define PARSE_INST_1(INST,INST_NUM) PARSE_INST(INST,INST_NUM,int_of_regi,int_of_regi,int_of_regi)
#define PARSE_INST_2(INST,INST_NUM) PARSE_INST(INST,INST_NUM,int_of_regi,int_of_regi,atoi)
#define PARSE_INST_9(INST,INST_NUM) PARSE_INST(INST,INST_NUM,int_of_fregi,int_of_regi,atoi)
#define PARSE_INST_3(INST,INST_NUM) PARSE_INST(INST,INST_NUM,int_of_fregi,int_of_fregi,int_of_fregi)
#define PARSE_INST_4(INST,INST_NUM) PARSE_INST(INST,INST_NUM,int_of_fregi,int_of_fregi,null_cal)


#define PARSE_INST_5(INST,INST_NUM) \
      else if(strcmp(iname,INST) == 0){             \
      answer -> insts[i].name[0] = INST_NUM;\
      answer -> insts[i].name[1] = int_of_regi(ist.name[1]);                    \
      answer -> insts[i].name[2] = int_of_regi(ist.name[2]);                    \
      answer -> insts[i].name[3] =  label_trans_soutai(ist.name[3],program,i); \
        }

#define PARSE_INST_6(INST,INST_NUM) \
      else if(strcmp(iname,INST) == 0){             \
      answer -> insts[i].name[0] = INST_NUM; \
      answer -> insts[i].name[1] = int_of_fregi(ist.name[1]);                    \
      answer -> insts[i].name[2] = int_of_fregi(ist.name[2]);                    \
      answer -> insts[i].name[3] =  label_trans_soutai(ist.name[3],program,i); \
        }

#define PARSE_INST_7(INST,INST_NUM) \
      else if(strcmp(iname,INST) == 0){             \
      answer -> insts[i].name[0] = INST_NUM; \
      answer -> insts[i].name[1] = new_label_trans(ist.name[1],program);    \
      answer -> insts[i].name[2] = null_cal(ist.name[2]);  \
      answer -> insts[i].name[3] = null_cal(ist.name[3]); \
        }

#define PARSE_INST_8(INST,INST_NUM)             \
 else if(strcmp (iname,INST) == 0){             \
   answer -> insts[i].name[0] = INST_NUM;        \
      answer -> insts[i].name[1] = null_cal(ist.name[1]);  \
      answer -> insts[i].name[2] = null_cal(ist.name[2]);   \
      answer -> insts[i].name[3] = null_cal(ist.name[3]); \
 }

#define PARSE_INST_10(INST,INST_NUM) PARSE_INST(INST,INST_NUM,int_of_fregi,int_of_regi,null_cal)

#define PARSE_INST_11(INST,INST_NUM) PARSE_INST(INST,INST_NUM,int_of_fregi,int_of_regi,int_of_regi)

#define PARSE_INST_12(INST,INST_NUM) PARSE_INST(INST,INST_NUM,int_of_regi,null_cal,null_cal)
#define PARSE_INST_13(INST,INST_NUM) PARSE_INST(INST,INST_NUM,int_of_fregi,null_cal,null_cal)


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


program2 *parse_all2(program * program)
{
    int i;
    program2 *answer;
    char *iname;
    instruction ist;
    char *arg1, *arg2, *arg3;

    answer = malloc(sizeof(program2));
    answer->inst_count = program->inst_count;

    for (i = 0; i < program->inst_count; i++) {
        ist = program->insts[i];
        iname = ist.name[0];
        arg1 = ist.name[1];
        arg2 = ist.name[2];
        arg3 = ist.name[3];

        if (strcmp(iname, "nop") == 0) {
            answer->insts[i].name[0] = 0;
        }
        PARSE_INST_1("add", ADD)
            PARSE_INST_1("sub", SUB)
            PARSE_INST_1("mul", MUL)
            PARSE_INST_12("rdi", RDI)
            PARSE_INST_13("rdf", RDF)
            PARSE_INST_1("nor", NOR)
          PARSE_INST_1("xor", XOR)
            PARSE_INST_2("addi", ADDI)
            PARSE_INST_2("subi", SUBI)
            PARSE_INST_2("muli", MULI)
            PARSE_INST_12("ptc", PTC)
            PARSE_INST_13("ptf", PTF)
            PARSE_INST_2("nori", NORI)
            PARSE_INST_2("xori", XORI)
            PARSE_INST_3("fadd", FADD)
            PARSE_INST_3("fsub", FSUB)
            PARSE_INST_3("fmul", FMUL)
            PARSE_INST_3("fdiv", FDIV)
          //PARSE_INST_4("finv", )
            PARSE_INST_4("fsqrt",FSQRT)
            PARSE_INST_4("flr",FLR)
            PARSE_INST_10("foi", FOI)
            PARSE_INST_2("ldi", LDI)
            PARSE_INST_2("sti", STI)
            PARSE_INST_9("fldi", FLDI)
            PARSE_INST_9("fsti", FSTI)
            PARSE_INST_1("ldr", LDR)
            PARSE_INST_1("str", STR)
            PARSE_INST_11("fldr", FLDR)
            PARSE_INST_11("fstr", FSTR)
            PARSE_INST_5("beq", BEQ)
            PARSE_INST_5("bne", BNE)
            PARSE_INST_5("bgt", BGT)
            PARSE_INST_5("blt", BLT)
          //            PARSE_INST_5("bge", 31)
          //            PARSE_INST_5("ble", 32)
            PARSE_INST_6("fbeq", FBEQ)
            PARSE_INST_6("fbne", FBNE)
            PARSE_INST_6("fbgt", FBGT)
            PARSE_INST_6("fblt", FBLT)
          //            PARSE_INST_6("fbge", 37)
          //            PARSE_INST_6("fble", 38)
            PARSE_INST_7("jump", JUMP)
            PARSE_INST_7("call", CALL)
            PARSE_INST_8("return", RETURN)
            else {
            printf("Error : this is iligal inst!: %s\n", iname);
            exit(1);
        }
    }
    return answer;
}





/*parseして機械語に直す*/
void parse_all3(program2* program2, char *filename){
  FILE *fp;
  int i;
  unsigned int buf = 0x0;
  unsigned int buf2 = 0x0;

  fp = fopen(filename,"w");
  for(i=0;i<program2 -> inst_count;i++){
    switch(program2-> insts[i].name[0]){
    case NOP:
    case ADD:
    case SUB:
    case MUL:
    case RDI:
    case RDF:
    case NOR:
    case XOR:
    case FADD:
    case FSUB:
    case FMUL:
    case FSQRT:
    case FDIV:
    case FOI:
    case FIO:
    case FLR:
    case LDR:
    case STR:
    case FLDR:
    case FSTR:
    case RETURN:
      buf = (program2->insts[i].name[0] * pow(2,26)) 
        + (program2->insts[i].name[1] * pow(2,21)) 
        + (program2-> insts[i].name[2] * pow(2,16)) 
        + (program2-> insts[i].name[3] * pow(2,11)); 
      break;
    case PTC:
    case PTF:
      buf = (program2->insts[i].name[0] * pow(2,26)) 
        + (program2->insts[i].name[1] * pow(2,16)) ;
        break;
  case ADDI:
  case SUBI:
  case MULI:
  case NORI:
  case XORI:
  case BEQ:
  case BNE:
  case BGT:
  case BLT:
  case FBEQ:
  case FBNE:
  case FBGT:
  case FBLT:
  case LDI:
  case STI:
  case FLDI:
  case FSTI:
    if(program2 -> insts[i].name[3] < 0){
      buf2 = ((program2 -> insts[i].name[3] & 0x0000FFFF) | 0x00008000);
      buf = (program2->insts[i].name[0] * pow(2,26)) 
        + (program2->insts[i].name[1] * pow(2,21)) 
        + (program2-> insts[i].name[2] * pow(2,16)) 
        + buf2;
    break;
  }else{
    buf = (program2->insts[i].name[0] * pow(2,26)) 
      + (program2->insts[i].name[1] * pow(2,21)) 
      + (program2-> insts[i].name[2] * pow(2,16)) 
      + (program2-> insts[i].name[3]); 
    break;
  }
 case JUMP:
    case CALL:
    buf = (program2->insts[i].name[0] * pow(2,26)) 
      + (program2->insts[i].name[1]); 
    break;
    }
    fprintf(fp,"%08X\n",buf);
  }

  fprintf(fp,"%08X\n",0xFFFFFFFF);
  fclose(fp);

  return;
}




int main(int argc,char *argv[]){
  FILE *fp;
  char buf[INST_MAX_COUNT][100];/*命令 読み込み用バッファ */
  program *answer;
  program2 *answer2;
  int i;

  if(argc != 3){
    printf("Useage: %s input_file output_file\n",argv[0]);
    exit(1);
  }

  fp = fopen(argv[1],"r");
  
  for(i=0;i<INST_MAX_COUNT;i++){
	if (fgets(buf[i], 81, fp) == NULL) {	/* 1行読み込み */
      break;		/* 末尾まで完了したか、エラー発生で終了 */
	}  
  }

  fclose(fp);

  answer = parse_all(buf, i);
  answer2 = parse_all2(answer);
  print_program(answer);

  parse_all3(answer2,argv[2]);

  return 0;
}
