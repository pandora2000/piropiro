type id_or_imm = V of Id.t | C of int
type t = (* ̿����� (caml2html: sparcasm_t) *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = (* ��İ�Ĥ�̿����б����뼰 (caml2html: sparcasm_exp) *)
  | Nop
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | And of Id.t * Id.t
  | Or of Id.t * Id.t
  | Nor of Id.t * Id.t
  | Xor of Id.t * Id.t
  | Addi of Id.t * int
  | Subi of Id.t * int
  | Muli of Id.t * int
  | Andi of Id.t * int
  | Ori of Id.t * int
  | Nori of Id.t * int
  | Xori of Id.t * int
  | Fadd of Id.t * Id.t
  | Fsub of Id.t * Id.t
  | Fmul of Id.t * Id.t
  | Finv of Id.t * Id.t
  | Fsqrt of Id.t * Id.t
  | Fdiv of Id.t * Id.t
  | Float_of_int of Id.t
  | Floor of Id.t
  | Load of Id.t * int
  | Store of Id.t * Id.t * int
  | Fload of Id.t * int
  | Fstore of Id.t * Id.t * int
  | Ldr of Id.t * Id.t
  | Str of Id.t * Id.t * Id.t
  | Fldr of Id.t * Id.t
  | Fstr of Id.t * Id.t * Id.t
  | Ri | Rf | Pc of Id.t | Pf of Id.t
      (* virtual instructions *)
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
      (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* �쥸�����ѿ����ͤ򥹥��å��ѿ�����¸ (caml2html: sparcasm_save) *)
  | Restore of Id.t (* �����å��ѿ������ͤ����� (caml2html: sparcasm_restore) *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
type prog = Prog of (Id.l * float) list * fundef list * t
  (*�褯�狼�äƤʤ�*)
val fletd : Id.t * exp * t -> t (* shorthand of Let for float *)
  (*�褯�狼�äƤʤ�*)
val seq : exp * t -> t (* shorthand of Let for unit *)
  
val regs : Id.t array
val fregs : Id.t array
  
val allregs : Id.t list
val allfregs : Id.t list
  
val is_reg : Id.t -> bool
val int_of_reg : Id.t -> int
  
val zreg : Id.t
val fzreg : Id.t
val swreg : Id.t
val fswreg : Id.t
val spreg : Id.t
val hpreg : Id.t

val string_of_vinst : exp -> string


val fv : t -> Id.t list

val concat : t -> Id.t * Type.t -> t -> t
  
val align : int -> int

val print_prog : out_channel -> prog -> unit
