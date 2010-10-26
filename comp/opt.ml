open Printf

type id = string
type bid = string
type t =
  | Addzi of id * int
  | Subz of id * id
  | Addi of id * id * int
  | Subi of id * id * int
  | Muli of id * id * int
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
  | Call of (id list) * id * (id list)
  | Ret of id
  | IfEq of id * id * bid * bid
  | IfLE of id * id * bid * bid
  | Var of id
  | Tuple of id * (id list)
  | Get of id * id * id
  | Put of id * id * id
  | ExtArray of id * id
  | ExtTuple of id * id
  | LetTuple of (id list) * id
type block = bid * ((t list) * (bid list))
type func = block list
type prog = func list
type ptyp = I | F

let merge_alist x y =
  List.fold_left (fun a b ->
		    if List.mem_assoc (fst b) a then a else b :: a) x y

let genid x = Id.genid x

let ptyp_of_type = function Type.Float -> F | _ -> I

exception IllegalPattern
exception NestedLet
exception FatalError

let rec each_conv cblk cbid nbid rid e =
  let sel_if x y z w = function
    | Closure.IfEq _ -> IfEq (x, y, z, w)
    | Closure.IfLE _ -> IfLE (x, y, z, w)
    | _ -> raise FatalError in
  let nextid = function Some x -> [x] | None -> [] in
  let imm_conv n = function
    | Closure.Unit -> []
    | Closure.Int x -> [Addzi (n, x)]
    | Closure.Float x -> [FLoad (n, x)]
    | Closure.Neg x -> [Subz (n, x)]
    | Closure.Add (x, y) -> [Add (n, x, y)]
    | Closure.Sub (x, y) -> [Sub (n, x, y)]
    | Closure.Mul (x, y) -> [Mul (n, x, y)]
    | Closure.FNeg x -> [FSubz (n, x)]
    | Closure.FAdd (x, y) -> [FAdd (n, x, y)]
    | Closure.FSub (x, y) -> [FSub (n, x, y)]
    | Closure.FMul (x, y) -> [FMul (n, x, y)]
    | Closure.FDiv (x, y) -> [FDiv (n, x, y)]
    | Closure.Floor x -> [Flr (n, x)]
    | Closure.Float_of_int x -> [Foi (n, x)]
    | Closure.Var x -> 
	(*本当はnをxで置き換えちゃえばいい*)
	(*てかこの操作はClosureのままでもできるだろう*)
	[Var x]
    | Closure.AppDir (Id.L x, y) -> [Call ([n], x, y)]
    | Closure.Tuple x -> [Tuple (n, x)]
    | Closure.Get (x, y) -> [Get (n, x, y)]
    | Closure.Put (x, y, z) -> [Put (x, y, z)]
    | Closure.ExtArray (Id.L x) -> [ExtArray (n, x)]
    | Closure.ExtTuple x -> [ExtTuple (n, x)]
    | Closure.IfEq _ | Closure.IfLE _
    | Closure.Let _ | Closure.LetTuple _
    | Closure.MakeCls _ | Closure.AppCls _ -> raise FatalError in
    match e with
      | Closure.Let ((n, t), e1, e2) ->
	  (match e1 with
	     | Closure.IfEq (x, y, z, w) | Closure.IfLE (x, y, z, w) ->
		 let contid = genid "cont" in
		 let thenid = genid "then" in
		 let elseid = genid "else" in
		 let contblks = each_conv [] contid nbid rid e2 in
		 let thenblks = each_conv [] thenid (Some contid) n z in
		 let elseblks = each_conv [] elseid (Some contid) n w in
		   (cbid, (cblk @ [sel_if x y thenid elseid e1], [thenid; elseid]))
		   :: (thenblks @ elseblks @ contblks)
	     | Closure.Let _ | Closure.LetTuple _ -> raise NestedLet
	     | Closure.MakeCls _ | Closure.AppCls _ -> raise IllegalPattern
	     | _ -> each_conv (cblk @ (imm_conv n e1)) cbid nbid rid e2
	  )
      | Closure.LetTuple (x, z, w) ->
	  each_conv (cblk @ [LetTuple (List.map fst x, z)]) cbid nbid rid w
      | Closure.IfEq (x, y, z, w) | Closure.IfLE (x, y, z, w) ->
	  let thenid = genid "then" in
	  let elseid = genid "else" in
	  let thenblks = each_conv [] thenid nbid rid z in
	  let elseblks = each_conv [] elseid nbid rid w in
	    (cbid, (cblk @ [sel_if x y thenid elseid e], [thenid; elseid]))
	    :: (thenblks @ elseblks)
      | Closure.MakeCls _ | Closure.AppCls _ -> raise IllegalPattern
      | _ -> [cbid, (cblk @ (imm_conv rid e), nextid nbid)]
	  
let each_conv (Id.L x, _) z =
  each_conv [] x None (genid "ret") z
    
let conv (Closure.Prog (l, t)) =
  let mbid = "min_caml_start" in
    (List.map (fun x -> each_conv x.Closure.name x.Closure.body) l) @
      [each_conv (Id.L mbid, Type.Unit) t]

let sotn = function
  | Addzi _ -> "Addzi" | Subz _ -> "Subz" | Addi _ -> "Addi" | Subi _ -> "Subi"
  | Muli _ -> "Muli" | Add _ -> "Add" | Sub _ -> "Sub" | Mul _ -> "Mul" | FLoad _ -> "FLoad"
  | FSubz _ -> "FSubz" | FAdd _ -> "FAdd" | FSub _ -> "FSub" | FMul _ -> "FMul"
  | FDiv _ -> "FDiv" | Flr _ -> "Flr" | Foi _ -> "Foi" | Call _ -> "Call" | Ret _ -> "Ret"
  | IfEq _ -> "IfEq" | IfLE _ -> "IfLE" | Var _ -> "Var" | Tuple _ -> "Tuple"
  | Get _ -> "Get" | Put _ -> "Put" | ExtArray _ -> "ExtArray"
  | ExtTuple _ -> "ExtTuple" | LetTuple _ -> "LetTuple"

let print_t e =
  match e with
    | Addzi (x, y) -> printf "\t%s %s %d\n" (sotn e) x y
    | FLoad (x, y) -> printf "\t%s %s %f\n" (sotn e) x y
    | Subz (x, y) | FSubz (x, y) | Flr (x, y) | Foi (x, y)
    | ExtArray (x, y) | ExtTuple (x, y) ->
	printf "\t%s %s %s\n" (sotn e) x y
    | Addi (x, y, z) | Subi (x, y, z) | Muli (x, y, z) ->
	printf "\t%s %s %s %d\n" (sotn e) x y z
    | Add (x, y, z) | Sub (x, y, z) | Mul (x, y, z)
    | FAdd (x, y, z) | FSub (x, y, z) | FMul (x, y, z) | FDiv (x, y, z)
    | Get (x, y, z) | Put (x, y, z) ->
	printf "\t%s %s %s %s\n" (sotn e) x y z
    | Ret x | Var x -> printf "\t%s %s\n" (sotn e) x
    | _ -> printf "\t%s\n" (sotn e)

let print_block (x, (y, z)) =
  printf "%s -> (%s)\n" x (String.concat ", " z);
  List.iter print_t y

let print_func x =
  List.iter print_block x

let print_prog x =
  List.iter print_func x
    
let f x =
  let k = conv x in
    print_prog k;
    k
      
(*タプル最適化*)
(*
  ・関数呼び出し
  引数を全て展開する
  ・関数定義
  引数を全て展開する
  要素を全て束縛し直し、環境にTupleが束縛されている変数と新たに束縛された変数のペアを追加
  ・Tuple
  要素を全て束縛し直し、環境にTupleが束縛されている変数と新たに束縛された変数のペアを追加
  ・LetTuple
  ・関数全体
  Tupleが使われているところに要素毎の変数を使う
  ・返り値
  複数取れるようにする
  タプルの場合は全ての要素
*)
