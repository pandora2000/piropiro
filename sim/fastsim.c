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

#define INST_MAX_COUNT 40000

#define LABEL_MAX_COUNT 10000

#define FPT_MAX_COUNT 100

#define  ACCESS_GOOD 0
#define  ACCESS_BAD -1

#define POW_2_15 32768
#define POW_2_25 33554432

#define MEMORY_SIZE 300000

#define REG_COUNT 64
#define FREG_COUNT 64

#ifdef OUTDEB
#ifdef FAST
#undef FAST
#endif
#endif

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

void fprint_label_from_index(FILE *fp, program *program, int index);

/*スタックの実装*/
#define STACK_MAX_COUNT 10000

typedef struct tstack {
  int stack_count;
  int stack[STACK_MAX_COUNT];
} stack;


void fprint_stack_label(FILE *fp, program* program, stack * stack)
{
  int i;

  for(i = 0; i < stack->stack_count; ++i)
    {
      fprint_label_from_index(fp, program, stack->stack[i]);
      fprintf(fp, ", ");
    }
  fflush(fp);
}

void push(stack * stack, int number)
{
  if (stack->stack_count >= STACK_MAX_COUNT) {
    perror("stack is full\n");
    exit(1);
  }
  stack->stack[stack->stack_count] = number;
  (stack->stack_count)++;
  return;
}

int pop(stack * stack)
{
  if (stack->stack_count == 0) {
    perror("stack is null");
    exit(1);
  }
  (stack->stack_count)--;
  return stack->stack[stack->stack_count];
}

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
	printf("Too many operand: %s\n", str);
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
  printf("%s\t%s %s %s\n", inst.name[0], inst.name[1], inst.name[2],
	 inst.name[3]);
  return;
}

void print_label(label * label)
{
  printf("%s => %d\n", label->name, label->index);
  return;
}

char *get_label_from_index(program *program, int index)
{
  int j;
     
  for (j = 0; j < program->label_count; ++j) {
    if (program->labels[j]->index == index) {
      return program->labels[j]->name;
    }
  }

  return NULL;
}

void fprint_label_from_index(FILE *fp, program *program, int index)
{
  int j;
     
  for (j = 0; j < program->label_count; ++j) {
    if (program->labels[j]->index == index) {
      fprintf(fp, "%s :\n", program->labels[j]->name);
      fflush(fp);
    }
  }

  return;
}

void print_label_from_index(program *program, int index)
{
  int j;
     
  for (j = 0; j < program->label_count; ++j) {
    if (program->labels[j]->index == index) {
      printf("%s :\n", program->labels[j]->name);
    }
  }

  return;
}

void print_program(program * program)
{
  int i, j;

  for (i = 0; i < program->inst_count; ++i) {
    for (j = 0; j < program->label_count; ++j) {
      if (program->labels[j]->index == i) {
	printf("%s :\n", program->labels[j]->name);
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


/*CPU の設定*/
static int reg[REG_COUNT];
static float freg[FREG_COUNT];

static stack call_stack = { 0 };	/*call_stackのサイズを0で初期化 */
static stack cistack = { 0 };
static stack sustack = { 0 };

union umemory {
  int i;
  float d;
};

static union umemory memory[MEMORY_SIZE];

static bool memoryf[MEMORY_SIZE];


/*メモリーの範囲内をアクセスしているか調べる*/
int check_memory(int num)
{
  if (0 <= num && num < MEMORY_SIZE) {
    return ACCESS_GOOD;
  }
  return ACCESS_BAD;
}

/*即値が16bit以内(-32768~32767)以内に入っているかどうか確かめる。
  間違っていたら、error表示をしてexitする。*/
void check_sokuti(int num) {
  if(-POW_2_15 <= num && num < POW_2_15) {
    return;
  }
  printf("error:sokkuti over 16bit:%d\n",num);
  exit(1);
  return;
}

/*ジャンプ即値が26bit以内に入っているかどうか確かめる。
  間違っていたら、error表示をしてexitする。*/
void check_jump(int num) {
  if(-POW_2_25 <= num && num < POW_2_25) {
    return;
  }
  printf("error:jump sokkuti over 26bit:%d\n",num);
  exit(1);
  return;
}

int atoic(char *str){
  int temp = atoi(str);
  check_sokuti(temp);
  return temp;
}

int atoic_jump(char *str){
  int temp = atoi(str);
  check_jump(temp);
  return temp;
}

/*print系*/
void print_memory()
{
  int i;

  printf("---- memory ----\n");
  for (i = 0; i < MEMORY_SIZE; i++) {
    if (memory[i].i != 0) {
      printf("%d\t%d\t%20f\n", i, memory[i].i, memory[i].d);
    }
  }
  return;
}


void print_register()
{
  int i;

  printf("---- regs ----\n");
  for (i = 0; i < REG_COUNT; ++i) {
    if (reg[i] != 0) {
      printf("%d\t%d\n", i, reg[i]);
    }
  }
  printf("---- fregs ----\n");
  for (i = 0; i < FREG_COUNT; ++i) {
    if (freg[i] != 0.0) {
      printf("%d\t%f\n", i, freg[i]);
    }
  }
  return;
}




/*レジスターの番号をcharからintに変換する*/
int int_of_register(char *regist)
{
  if (regist[0] == 'r' || regist[0] == 'f') {
    return atoi(regist + 1);
  }
  //r f以外の場合
  printf("Illegal register name: %s\n", regist);
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
    return atoic(label);
  }
  /*label */
  /*特殊ラベル*/

  

  for (i = 0; i < program->label_count; i++) {
    if (strcmp(label, program->labels[i]->name) == 0) {
      return program->labels[i]->index;
    }
  }
  printf("Label not found: %s\n", label);
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
  printf("Label not found: %s\n", label);
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
    return atoic_jump(label);
  }
  /*label */
  for (i = 0; i < program->label_count; i++) {
    if (strcmp(label, program->labels[i]->name) == 0) {
      return program->labels[i]->index - nowpc;
    }
  }
  printf("Label not found: %s\n", label);
  exit(1);
  return -1;
}

/*stdinからfloatを読む*/
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

/*stdinからintを読む*/
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
int ior(char *regist)
{
  if (regist[0] == 'r') {
    return atoi(regist + 1);
  }
  printf("Illegal register name: %s\n", regist);
  exit(1);
  return -1;
}

int iofr(char *regist)
{
  if (regist[0] == 'f') {
    return atoi(regist + 1);
  }
  printf("Illegal fregister name: %s\n", regist);
  exit(1);
  return -1;
}

enum einst
  {
    NOP,
    ADD, SUB, MUL, ADDI, XOR,
    FADD, FSUB, FMUL, FDIV, FSQRT, FLR, FOI,
    LDI, STI,
    FLDI, FSTI,
    BNE, BGT,
    FBNE, FBGT,
    JUMP, CALL, RETURN,
    RDI, RDF, PTC, PTF,
    BP, DEB, DEBF, INFO, INFO2, 
    ICOUNT,
  };

char instnames[][10] =
  {
    "nop",
    "add", "sub", "mul", "addi", "xor",
    "fadd", "fsub", "fmul", "fdiv", "fsqrt", "flr", "foi",
    "ldi", "sti",
    "fldi", "fsti",
    "bne", "bgt",
    "fbne", "fbgt",
    "jump", "call", "return",
    "rdi", "rdf", "ptc", "ptf",
    "bp", "deb", "debf", "info", "info2"
  };

int null_arg(char *d)
{
  return 0;
}

#define PARSE_3ARG_INST(INST_NUM,OP1,OP2,OP3)		\
  else if(strcmp(iname,instnames[INST_NUM]) == 0){	\
    answer -> insts[i].name[0] = INST_NUM;		\
    answer -> insts[i].name[1] = OP1(ist.name[1]);	\
    answer -> insts[i].name[2] = OP2(ist.name[2]);	\
    answer -> insts[i].name[3] = OP3(ist.name[3]);	\
  }

#define PARSE_2ARG_1LABEL_INST(INST_NUM,OP1,OP2)			\
  else if(strcmp(iname,instnames[INST_NUM]) == 0){			\
    answer -> insts[i].name[0] = INST_NUM;				\
    answer -> insts[i].name[1] = OP1(ist.name[1]);			\
    answer -> insts[i].name[2] = OP2(ist.name[2]);			\
    answer -> insts[i].name[3] = label_trans_soutai(ist.name[3],program,i); \
  }

#define PARSE_0ARG_1LABEL_INST(INST_NUM)				\
  else if(strcmp(iname,instnames[INST_NUM]) == 0){			\
    answer -> insts[i].name[0] = INST_NUM;				\
    answer -> insts[i].name[1] = new_label_trans(ist.name[1],program);	\
  }

#define PARSE_2ARG_INST(INST_NUM,OP1,OP2) PARSE_3ARG_INST(INST_NUM,OP1,OP2,null_arg)

#define PARSE_1ARG_INST(INST_NUM,OP1) PARSE_2ARG_INST(INST_NUM,OP1,null_arg)

#define PARSE_0ARG_INST(INST_NUM) PARSE_1ARG_INST(INST_NUM,null_arg)

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
    //printf("%s\t%s %s %s\n", ist.name[0], ist.name[1], ist.name[2], ist.name[3]);
    //print_label_from_index(program, i);
    //print_instruction(ist);
    if(false) {}
    PARSE_0ARG_INST(NOP)
      PARSE_3ARG_INST(ADD,ior,ior,ior)
      PARSE_3ARG_INST(SUB,ior,ior,ior)
      PARSE_3ARG_INST(MUL,ior,ior,ior)
      PARSE_3ARG_INST(ADDI,ior,ior,atoic)
      PARSE_3ARG_INST(XOR,ior,ior,ior)
      PARSE_3ARG_INST(FADD,iofr,iofr,iofr)
      PARSE_3ARG_INST(FSUB,iofr,iofr,iofr)
      PARSE_3ARG_INST(FMUL,iofr,iofr,iofr)
      PARSE_3ARG_INST(FDIV,iofr,iofr,iofr)
      PARSE_2ARG_INST(FLR,iofr,iofr)
      PARSE_2ARG_INST(FOI,iofr,ior)
      PARSE_3ARG_INST(LDI,ior,ior,atoic)
      PARSE_3ARG_INST(STI,ior,ior,atoic)
      PARSE_3ARG_INST(FLDI,iofr,ior,atoic)
      PARSE_3ARG_INST(FSTI,iofr,ior,atoic)
      PARSE_2ARG_1LABEL_INST(BNE,ior,ior)
      PARSE_2ARG_1LABEL_INST(BGT,ior,ior)
      PARSE_2ARG_1LABEL_INST(FBNE,iofr,iofr)
      PARSE_2ARG_1LABEL_INST(FBGT,iofr,iofr)
      PARSE_0ARG_1LABEL_INST(JUMP)
      PARSE_0ARG_1LABEL_INST(CALL)
      PARSE_0ARG_INST(RETURN)
      PARSE_1ARG_INST(RDI,ior)
      PARSE_1ARG_INST(RDF,iofr)
      PARSE_1ARG_INST(PTC,ior)
      PARSE_1ARG_INST(PTF,iofr)
      PARSE_2ARG_INST(BP,atoi,atoi)
      PARSE_3ARG_INST(DEB,ior,ior,atoi)
      PARSE_3ARG_INST(DEBF,iofr,ior,atoi)
      PARSE_2ARG_INST(FSQRT,iofr,iofr)
      PARSE_3ARG_INST(INFO, atoi, atoi, atoi)
      PARSE_3ARG_INST(INFO2, atoi, atoi, atoi)
    else {
      printf("Illegal instruction: %s\n", iname);
      exit(1);
    }
  }
  return answer;
}

FILE *out_fp;
long long cnt = 0;

program *prog;
program2 *prog2;

int do_assemble2(char *tmp)
{
  int pc = 0, nextpc = 0;
  int iname, arg1, arg2, arg3, round, firstflag = 1;
  instruction2 *ist;
#ifndef FAST
  int icount[1000] = { 0 };
  int callpc = -1;
  static int callcount[50000] = { 0 };
  static int funcsize[50000] = { 0 };
  static long long transcount[4] = { 0 };
  long long stack_use = 0;
  int max_sttop = 0;
  int sttop = 256;
#endif
#ifdef OUTDEB
  long long cc = 0, targetcc = 435322;
  int a, l;
  float b;
  FILE *fp = fopen(tmp, "w");
#endif
  
  while (1) {
    pc = nextpc;

#ifdef INSTCNT
    if((cnt & 0b1111111111111111111111111) == 0)
      {
	printf("%lld\n", cnt);
      }
#endif
    cnt++;
    
    ist = &(prog2->insts[pc]);
    iname = ist->name[0];
    arg1 = ist->name[1];
    arg2 = ist->name[2];
    arg3 = ist->name[3];

#ifndef FAST    
    ++icount[iname];
    if(callpc != -1)
      {
	++funcsize[callpc];
      }
    else
      {
	++funcsize[0];
      }
#endif

    if(iname == FLDI) {
#ifndef FAST
      if(check_memory(reg[arg2] + arg3) == ACCESS_BAD) {
	printf("Bad access\n");
	exit(1);
      }
      if(!memoryf[reg[arg2] + arg3])
	{
	  printf("Access uninitialized memory: %d\n", reg[arg2] + arg3);
	  exit(1);
	}
#endif
      freg[arg1] = memory[reg[arg2] + arg3].d;
    }
    else if(iname == ADDI) {
      reg[arg1] = reg[arg2] + arg3;
    }
    else if(iname == LDI) {
#ifndef FAST
      if(check_memory(reg[arg2] + arg3) == ACCESS_BAD) {
	printf("Bad access\n");
	exit(1);
      }
      if(!memoryf[reg[arg2] + arg3])
	{
	  printf("Access uninitialized memory: %d\n", reg[arg2] + arg3);
	  exit(1);
	}
#endif
      reg[arg1] = memory[reg[arg2] + arg3].i;
    }
    else if(iname == FMUL) {
      freg[arg1] = freg[arg2] * freg[arg3];
    }
    else if(iname == BNE) {
      if (reg[arg1] != reg[arg2]) {
	nextpc = pc + arg3 - 1;
      }
    }
    else if(iname == ADD) {
      reg[arg1] = reg[arg2] + reg[arg3];
    }
    else if(iname == FADD) {
      freg[arg1] = freg[arg2] + freg[arg3];
    }
    else if(iname == FBGT) {
      if (freg[arg1] > freg[arg2]) {
	nextpc = pc + arg3 - 1;
      }
    }
    else if(iname == FSUB) {
      freg[arg1] = freg[arg2] - freg[arg3];
    }
    else if(iname == JUMP) {
#ifdef OUTDEB
      if(strncmp(prog->insts[pc].name[1], "L_cont", 6) != 0)
	{
	  if(cc == targetcc + 1)
	    {
	      fflush(fp);
	      exit(1);
	    }
	  fprintf(fp, "%s %lld\n", prog->insts[pc].name[1], cc);
	  //if(cc == targetcc)
	  //{
	  fprint_stack_label(fp, prog, &cistack);
	  fprint_label_from_index(fp, prog, callpc);
	  //}
	  ++cc;
	}
#endif
      
      nextpc = arg1 - 1;
    }
    else if(iname == CALL) {
#ifdef OUTDEB
      if(cc == targetcc + 1)
	{
	  fflush(fp);
	  exit(1);
	}
      fprintf(fp, "%s %lld\n", prog->insts[pc].name[1], cc);
      //if(cc == targetcc)
      //{
      fprint_stack_label(fp, prog, &cistack);
      fprint_label_from_index(fp, prog, callpc);
      //}
      ++cc;
#endif
      
      nextpc = arg1 - 1;
#ifndef FAST
      push(&sustack, sttop);
      if(reg[2] > sttop)
	{
	  stack_use += 2 * (reg[2] - sttop) + 2;
	  sttop = reg[2];
	}
      max_sttop = max_sttop < reg[2] ? reg[2] : max_sttop;
      push(&cistack, callpc);
      callpc = nextpc + 1;
      ++callcount[callpc];
#endif
      push(&call_stack, (pc + 1));
    }
    else if(iname == RETURN) {
#ifndef FAST
      sttop = pop(&sustack);
      callpc = pop(&cistack);
#endif
      nextpc = pop(&call_stack) - 1;
    }
    else if(iname == FDIV) {
      freg[arg1] = freg[arg2] / freg[arg3];
    }
    //ここから順番適当
    else if(iname == FSQRT) {
      freg[arg1] = sqrt(freg[arg2]);
    }
    else if(iname == SUB) {
      reg[arg1] = reg[arg2] - reg[arg3];
    }
    else if(iname == MUL) {
      reg[arg1] = reg[arg2] * reg[arg3];
    }
    else if(iname == XOR) {
      reg[arg1] = reg[arg2] ^ reg[arg3];
    }
    else if(iname == FLR) {
      freg[arg1] = floor(freg[arg2]);
    }
    else if(iname == FOI) {
      freg[arg1] = (float)reg[arg2];
    }
    else if(iname == STI) {
#ifndef FAST
      if (check_memory(reg[arg2] + arg3) == ACCESS_BAD) {
	printf("Bad access: %d\n", reg[arg2] + arg3);
	exit(1);
      }
      memoryf[reg[arg2] + arg3] = true;
#endif
      memory[reg[arg2] + arg3].i = reg[arg1];
    }
    else if(iname == FSTI) {
#ifndef FAST
      if (check_memory(reg[arg2] + arg3) == ACCESS_BAD) {
	printf("Bad access: %d\n", reg[arg2] + arg3);
	exit(1);
      }
      memoryf[reg[arg2] + arg3] = true;
#endif
      memory[reg[arg2] + arg3].d = freg[arg1];
    }
    else if(iname == BGT) {
      if (reg[arg1] > reg[arg2]) {
	nextpc = pc + arg3 - 1;
      }
    }
    else if(iname == FBNE) {
      if (freg[arg1] != freg[arg2]) {
	nextpc = pc + arg3 - 1;
      }
    }
    else if (iname == RDI) {
#ifdef OUTDEB
      a = read_int();
      fprintf(fp, "read_int %d\n", a);
      reg[arg1] = a;
#else
      reg[arg1] = read_int();
#endif
    }
    else if (iname == RDF) {
#ifdef OUTDEB
      b = read_float();
      fprintf(fp, "read_float %f\n", b);
      freg[arg1] = b;
#else
      freg[arg1] = read_float();;
#endif
    }
    else if (iname == PTC) {
      /*最初のOXAAは無視する*/
      if(firstflag == 1) {
	if(reg[arg1] != 170) {
	  printf("First char is not 0xAA: %c\n",reg[arg1]);
	  exit(1);
	}
	firstflag = 0;
      }else{
	fprintf(out_fp, "%c",reg[arg1]);
      }
    }
    else if (iname == PTF) {
      round = (int)(freg[arg1] + 0.5);
      if(round > 255) {
	round = 255;
      } else if(round < 0) {
	round = 0;
      }
      fprintf(out_fp, "%c", (char)round);
    }
    else if(iname == NOP) {
    } 
    else if(iname == BP) {
#ifdef OUTDEB
      fprintf(fp, "%d %d\n", arg1, arg2);
      for (l = 0; l < arg1; ++l) {
	fprintf(fp, "%d\n", reg[l + 4]);
      }
      for (l = 0; l < arg2; ++l) {
	fprintf(fp, "%.15f\n", freg[l + 2]);
      }
#endif
    }
    else if(iname == DEB) {
#ifdef OUTDEB
      fprintf(fp, "i %d %d %lld\n", reg[arg2] + arg3, reg[arg1], cc);
      /*      if(cc == targetcc)
	      {
	      fprint_stack_label(fp, prog, &cistack);
	      fprint_label_from_index(fp, prog, callpc);
	      }*/
      ++cc;
#endif
    }
    else if(iname == DEBF) {
#ifdef OUTDEB
      fprintf(fp, "f %d %.15f %lld\n", reg[arg2] + arg3, freg[arg1], cc);
      /*if(cc == targetcc)
	{
	fprint_stack_label(fp, prog, &cistack);
	fprint_label_from_index(fp, prog, callpc);
	}*/
      ++cc;
#endif
    }
    else if(iname == INFO) {
#ifdef OUTDEB
      if(arg1 == 0)
	{
	  fprintf(fp, "%d\n", reg[arg2]);
	}
      else if(arg1 == 1)
	{
	  fprintf(fp, "%.15f\n", freg[arg2]);
	}
      else if(arg1 == 2)
	{
	  fprintf(fp, "info\n");
	}
      else if(arg1 == 3)
	{
	  fprintf(fp, "info %d %d\n", arg2, reg[arg3]);
	}
#endif
    }
    else if(iname == INFO2) {
#ifndef FAST
      if(arg1 == 0)
	{
	  transcount[arg2]++;
	}
#endif
    }
    
#ifdef OUTINST
    print_label_from_index(prog, pc);
    print_instruction(prog->insts[pc]);
#endif
#ifdef OUTREGS
    print_register();
#endif

    ++nextpc;

    /*命令がラストの行まで行けば処理を終了する */
    if (nextpc >= prog2->inst_count) {
      break;
    }
  }

#ifndef FAST
  int i, j, k;
  char *p;
  
  for(i = 0; i < ICOUNT; ++i)
    {
      printf("%s\t\t%d\n", instnames[i], icount[i]);
    }

  printf("funcweight\n");
  for(i = 0; i < 50000; ++i)
    {
      if(funcsize[i] != 0)
	{
	  if((p = get_label_from_index(prog, i)) != NULL)
	    {
	      j = strlen(p);
	      printf("%s", p);
	      for(k = 0; k < 40 - j; ++k)
		{
		  printf(" ");
		}
	      printf("\t%d\n", funcsize[i]);
	    }
	}
    }

  printf("callcount\n");
  for(i = 0; i < 50000; ++i)
    {
      if(callcount[i] != 0)
	{
	  if((p = get_label_from_index(prog, i)) != NULL)
	    {
	      j = strlen(p);
	      printf("%s", p);
	      for(k = 0; k < 40 - j; ++k)
		{
		  printf(" ");
		}
	      printf("\t%d\n", callcount[i]);
	    }
	}
    }

  printf("trans counts: %lld %lld %lld %lld\n",
	 transcount[0], transcount[1], transcount[2], transcount[3]);

  printf("stack use: %lld\n", stack_use);
  printf("max stack top: %d\n", max_sttop);
#endif

#ifdef OUTDEB
  fclose(fp);
#endif

  return 0;
}

double gettimeofday_sec()
{
  struct timeval tv;
  gettimeofday(&tv, NULL);
  return tv.tv_sec + (double)tv.tv_usec*1e-6;
}

int main(int argc, char *argv[])
{
  FILE *fp, *fp2;
  char buf[100000][100];	/*命令 読み込み用バッファ */
  char fpt[FPT_MAX_COUNT][20];
  char ofname[1000] = "result";
  char tmpname[1000] = "tmp";
  int i = 0, j;
  //メモリ上の浮動小数点テーブルの位置
  int fpmemoffset = 0;
  int result;
  bool doprintregs = false, doprintmem = false;
  double t2, t1;
  union umemory t;

  while ((result = getopt(argc, argv, "rmo:t:")) != -1) {
    switch (result) {

      /* 値をとらないオプション */
    case 'r':
      /* getoptの返り値は見付けたオプションである. */
      doprintregs = true;
      break;
    case 'm':
      doprintmem = true;
      break;

    case 'o':
      /* 値を取る引数の場合は外部変数optargにその値を格納する. */
      strcpy(ofname, optarg);
      break;
    case 't':
      strcpy(tmpname, optarg);
      break;
    }
  }
  argc -= optind;
  argv += optind;

  for(j = 0; j < REG_COUNT; ++j)
    {
      reg[j] = rand() * rand();
    }
  for(j = 0; j < FREG_COUNT; ++j)
    {
      t.i = rand() * rand();
      freg[j] = t.d;
    }
  reg[0] = 0;
  freg[0] = 0.0;

  for(j = 0; j < MEMORY_SIZE; ++j)
    {
      memory[j].i = rand() * rand();
      memoryf[j] = false;
    }

  /*assembler-file open and read */
  fp = fopen(argv[0], "r");
  if (fp == NULL) {
    printf("%sが開けませんaa\n", argv[0]);
    return 1;
  }

  fp2 = fopen(argv[1], "r");
  if (fp2 == NULL) {
    printf("%sが開けません\n", argv[1]);
    return 1;
  }
  for (i = 0; i < FPT_MAX_COUNT; ++i) {
    if (fgets(fpt[i], 20, fp2) == NULL) {	/* １行読み込み */
      break;		/* 末尾まで完了したか、エラー発生で終了 */
    }
  }

  for (j = 0; j < i; ++j) {
    //エラーが起こっても関係ない
    //printf("%s\n", fpt[j]);
    memoryf[j + fpmemoffset] = true;
    memory[j + fpmemoffset].i = (int) strtoll(fpt[j], NULL, 16);
  }
  //print_memory();

  i = 0;
  while (1) {
    if (fgets(buf[i], 81, fp) == NULL) {	/* 1行読み込み */
      break;		/* 末尾まで完了したか、エラー発生で終了 */
    }
    i++;
  }

  out_fp = fopen(ofname, "w");

  prog = parse_all(buf, i);
  prog2 = parse_all2(parse_all(buf, i));

#ifdef OUTPROG
  print_program(prog);
#endif

  t1 = gettimeofday_sec();
  do_assemble2(tmpname);
  t2 = gettimeofday_sec();
  
  printf("elapsed time: %f\n", t2 - t1);
  printf("instruction count: %lld\n", cnt);
  printf("MIPS: %f\n", (double)cnt / 1000000.0 / (t2 - t1));

  if (doprintregs)
    print_register();
  if (doprintmem)
    print_memory();

  fclose(fp);
  fclose(fp2);
  fclose(out_fp);
    
  return 0;
}
