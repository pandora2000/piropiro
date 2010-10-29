type id = string
type bid = string
type t =
  | Addzi of id * int
  | Subz of id * id
  | Add of id * id * id
  | Sub of id * id * id
  | Mul of id * id * id
  | FLoad of id * float
  | FSubz of id * id
  | FAdd of id * id * id
  | FSub of id * id * id
  | FMul of id * id * id
  | FDiv of id * id * id
  | Flr of id * id
  | Foi of id * id
  | Call of id * bid * (id list) * (bid option)
  | IfEq of id * id * id * bid * bid * (bid option)
  | IfLE of id * id * id * bid * bid * (bid option)
  | IfFEq of id * id * id * bid * bid * (bid option)
  | IfFLE of id * id * id * bid * bid * (bid option)
  | Var of id * id
  | Tuple of id * (id list)
  | Get of id * id * id
  | Put of id * id * id
  | FGet of id * id * id
  | FPut of id * id * id
  | ExtArray of id * id
  | ExtTuple of id * id
  | LetTuple of (id list) * id
type block = bid * ((t list) * (bid list))
type func = bid * (id list) * (id list) * (block list)
type ent_func = bid * block list
type prog = (func list) * ent_func
type ptyp = I | F