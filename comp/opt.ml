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
type tl_or_nto = T | N of bid

let merge_alist x y =
  List.fold_left (fun a b ->
		    if List.mem_assoc (fst b) a then a else b :: a) x y

let genid x = Id.genid x

let ptyp_of_type = function Type.Float -> F | _ -> I

exception IllegalPattern
exception NestedLet

let rec each_conv blks cblk cbid rids tl e =
  let rid = List.hd rids in
    match e with
      | Closure.Unit -> (blks, [], [])
      | Closure.Int x -> (blks, [rid, I], [Addzi (rid, x)])
      | Closure.Float x -> (blks, [rid, F], [FLoad (rid, x)])
      | Closure.Neg x -> (blks, [rid, I], [Subz (rid, x)])
      | Closure.Add (x, y) -> (blks, [rid, I], [Add (rid, x, y)])
      | Closure.Sub (x, y) -> (blks, [rid, I], [Sub (rid, x, y)])
      | Closure.Mul (x, y) -> (blks, [rid, I], [Mul (rid, x, y)])
      | Closure.FNeg x -> (blks, [rid, F], [FSubz (rid, x)])
      | Closure.FAdd (x, y) -> (blks, [rid, F], [FAdd (rid, x, y)])
      | Closure.FSub (x, y) -> (blks, [rid, F], [FSub (rid, x, y)])
      | Closure.FMul (x, y) -> (blks, [rid, F], [FMul (rid, x, y)])
      | Closure.FDiv (x, y) -> (blks, [rid, F], [FDiv (rid, x, y)])
      | Closure.Floor x -> (blks, [rid, F], [Flr (rid, x)])
      | Closure.Float_of_int x -> (blks, [rid, F], [Foi (rid, x)])
	  (*tekito kokokara*)
      | Closure.Var x -> 
	  (*本当はnをxで置き換えちゃえばいい*)
	  (blks, [rid, I(*tekito*)], [Var x])
      | Closure.AppDir (Id.L x, y) -> (blks, [rid, I(*tekito*)], [Call ([rid], x, y)])
      | Closure.Tuple x -> (blks, [rid, I], [Tuple (rid, x)])
      | Closure.Get (x, y) -> (blks, [rid, I(*tekito*)], [Get (rid, x, y)])
      | Closure.Put (x, y, z) -> (blks, [], [Put (x, y, z)])
      | Closure.ExtArray (Id.L x) -> (blks, [rid, I], [ExtArray (rid, x)])
      | Closure.ExtTuple x -> (blks, [rid, I], [ExtTuple (rid, x)])
	  (*kokomade*)
      | Closure.IfEq (x, y, z, w) ->
	  let (b, t, e) = if_conv blks rids tl z w in
	    ((cbid, (cblk @ [IfEq (x, y, t, e)], [t; e])) :: b, [], [])
      | Closure.IfLE (x, y, z, w) ->
	  let (b, t, e) = if_conv blks rids tl z w in
	    ((cbid, (cblk @ [IfLE (x, y, t, e)], [t; e])) :: b, [], [])
      | Closure.Let ((x, _), z, w) ->
	  let nbid = genid "let" in
	  let (b1, _, t1) = each_conv blks cblk cbid [x] (N nbid) z in
	  let (b2, t, t2) =
	    if List.mem_assoc nbid b1
	    then each_conv b1 t1 nbid rids tl w
	    else each_conv b1 (cblk @ t1) cbid rids tl w in
	    (b2, t, t2)
      | Closure.LetTuple (x, z, w) ->
	  let t = [LetTuple (fst (List.split x), z)] in
	    each_conv blks (cblk @ t) cbid rids tl w
      | Closure.MakeCls _
      | Closure.AppCls _ -> raise IllegalPattern
and if_conv blks rids tl z w =
  let tid = genid "then" in
  let eid = genid "else" in
  let (b1, _, q) = each_conv blks [] tid rids tl z in
  let (b2, _, s) = each_conv blks [] eid rids tl w in
  let mb = merge_alist b1 b2 in
  let b = 
    match tl with
      | T -> [tid, (q, []); eid, (s, [])]
      | N x -> [tid, (q, [x]); eid, (s, [x])] in
    (b @ mb, tid, eid)
      
let each_conv (Id.L x, _) z =
  (*TODO:ridsのセット*)
  each_conv [] [] x [genid "ret"] T z
    
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
    print_prog (List.map (fun (x, _, _) -> x) k);
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
