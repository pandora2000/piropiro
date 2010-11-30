type t = (* K正規化後の式 (caml2html: knormal_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Addi of Id.t * int
  | Addzi of int
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | Floor of Id.t
  | Float_of_int of Id.t
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | IfIEqz of Id.t * t * t
  | IfFEqz of Id.t * t * t
  | IfILEz of Id.t * t * t
  | IfFLEz of Id.t * t * t
  | IfIGEz of Id.t * t * t
  | IfFGEz of Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Geti of Id.t * int
  | Put of Id.t * Id.t * Id.t
  | Puti of Id.t * int * Id.t
  | ExtArray of Id.t
  | ExtTuple of Id.t
  | ExtFunApp of Id.t * Id.t list
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

val fv : t -> S.t
val f : Syntax.t -> t
val print_prog : out_channel -> t -> unit
