type closure = { entry : Id.l; actual_fv : Id.t list }
type t =
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Addi of Id.t * int
  | Addzi of int
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Xor of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | Floor of Id.t
  | Float_of_int of Id.t
  | IfFEqz of Id.t * t * t
  | IfIEqz of Id.t * t * t
  | IfFLEz of Id.t * t * t
  | IfILEz of Id.t * t * t
  | IfFGEz of Id.t * t * t
  | IfIGEz of Id.t * t * t
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of (Id.t * Type.t) * closure * t
  | AppCls of Id.t * Id.t list
  | AppDir of Id.l * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | Geti of Id.t * int
  | Puti of Id.t * int * Id.t
  | ExtTuple of Id.t
  | ExtArray of Id.l
type fundef = { name : Id.l * Type.t;
		args : (Id.t * Type.t) list;
		formal_fv : (Id.t * Type.t) list;
		body : t }
type prog = Prog of fundef list * t

val fv : t -> S.t
val f : KNormal.t -> prog
(*val flat_if : prog -> prog*)
val print_prog : out_channel -> prog -> unit
