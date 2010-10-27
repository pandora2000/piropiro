open Printf

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
  | Call of id * id * (id list)
  | IfEq of id * id * bid * bid
  | IfLE of id * id * bid * bid
  | IfFEq of id * id * bid * bid
  | IfFLE of id * id * bid * bid
  | Var of id * id(* *)
  | Tuple of id * (id list)(* *)
  | Get of id * id * id
  | Put of id * id * id
  | FGet of id * id * id
  | FPut of id * id * id
  | ExtArray of id * id(* *)
  | ExtTuple of id * id(* *)
  | LetTuple of (id list) * id(* *)
type block = bid * ((t list) * (bid list))
type func = bid * (id list) * (id list) * (block list)
type ent_func = bid * block list
type prog = (func list) * ent_func
type ptyp = I | F

let merge_alist x y =
  List.fold_left (fun a b ->
		    if List.mem_assoc (fst b) a then a else b :: a) x y

let genid x = Id.genid x

let ptyp_of_type = function Type.Float -> F | _ -> I

exception IllegalPattern
exception NestedLet
exception UnsupportedComparison
exception NoExpression
exception FatalError

let rec each_conv cblk cbid nbid rid rtyp env e =
  let sel_if x y z w env = function
    | Closure.IfEq _ ->
	(match M.find x env with
	   | Type.Float -> IfFEq (x, y, z, w)
	   | Type.Int -> IfEq (x, y, z, w)
	   | _ -> raise UnsupportedComparison)
    | Closure.IfLE _ ->
	(match M.find x env with
	   | Type.Float -> IfFLE (x, y, z, w)
	   | Type.Int -> IfLE (x, y, z, w)
	   | _ -> raise UnsupportedComparison)
    | _ -> raise FatalError in
  let nextid = function Some x -> [x] | None -> [] in
  let imm_conv n t = function
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
	(*それはいろんな問題があるなぁ*)
	[Var (n, x)]
    | Closure.AppDir (Id.L x, y) -> [Call (n, x, y)]
    | Closure.Tuple x -> [Tuple (n, x)]
    | Closure.Get (x, y) ->
	(match t with
	   | Type.Float -> [FGet (n, x, y)]
	   | _ -> [Get (n, x, y)])
    | Closure.Put (x, y, z) ->
	(match t with
	   | Type.Float -> [FPut (x, y, z)]
	   | _ -> [Put (x, y, z)])
    | Closure.ExtArray (Id.L x) -> [ExtArray (n, x)]
    | Closure.ExtTuple x -> [ExtTuple (n, x)]
    | Closure.IfEq _ | Closure.IfLE _
    | Closure.Let _ | Closure.LetTuple _
    | Closure.MakeCls _ | Closure.AppCls _ -> raise FatalError in
    match e with
      | Closure.Let ((n, t), e1, e2) ->
	  let nenv = M.add n t env in
	    (match e1 with
	       | Closure.IfEq (x, y, z, w) | Closure.IfLE (x, y, z, w) ->
		   let contid = genid "cont" in
		   let thenid = genid "then" in
		   let elseid = genid "else" in
		   let contblks = each_conv [] contid nbid rid rtyp nenv e2 in
		   let thenblks = each_conv [] thenid (Some contid) n t env z in
		   let elseblks = each_conv [] elseid (Some contid) n t env w in
		     (cbid, (cblk @ [sel_if x y thenid elseid env e1], [thenid; elseid]))
		     :: (thenblks @ elseblks @ contblks)
	       | Closure.Let _ | Closure.LetTuple _ -> raise NestedLet
	       | Closure.MakeCls _ | Closure.AppCls _ -> raise IllegalPattern
	       | _ -> each_conv (cblk @ (imm_conv n t e1)) cbid nbid rid rtyp nenv e2)
      | Closure.LetTuple (x, z, w) ->
	  each_conv (cblk @ [LetTuple (List.map fst x, z)]) cbid nbid rid rtyp
	    (M.add_list x env) w
      | Closure.IfEq (x, y, z, w) | Closure.IfLE (x, y, z, w) ->
	  let thenid = genid "then" in
	  let elseid = genid "else" in
	  let thenblks = each_conv [] thenid nbid rid rtyp env z in
	  let elseblks = each_conv [] elseid nbid rid rtyp env w in
	    (cbid, (cblk @ [sel_if x y thenid elseid env e], [thenid; elseid]))
	    :: (thenblks @ elseblks)
      | Closure.MakeCls _ | Closure.AppCls _ -> raise IllegalPattern
      | _ -> [cbid, (cblk @ (imm_conv rid rtyp e), nextid nbid)]
	  
let each_conv rid rtyp x env z =
  each_conv [] x None rid rtyp env z
    
let conv (Closure.Prog (l, t)) =
  let mbid = "min_caml_start" in
  let mrid = genid "mret" in
    ((List.map (fun { Closure.name = (Id.L x, y); Closure.args = z; Closure.formal_fv = _;
		      Closure.body = w } ->
		  let rid = genid "ret" in
		  let rtyp = match y with Type.Fun (z, w) -> w | _ -> raise FatalError in
		    (x, [rid],
		     List.map fst z,
		     each_conv rid rtyp x
		       (M.add x y (M.add_list z M.empty))
		       w)) l),
     (mbid, each_conv mrid Type.Unit mbid M.empty t))

(*次のラベルと式を返す*)
let peach_rconv bid blks tenv = 
  let (cblk, _) = List.assoc bid blks in
  let r =
    List.fold_right
      (fun e -> function
	 | None -> None
	 | Some (nbid, exp) ->
	     let (n, t, e) =
	       match e with
		 | Addzi (x, y) -> (x, Type.Int, Closure.Int y)
		 | Subz (x, y) -> (x, Type.Int, Closure.Neg y)
		 | Add (x, y, z) -> (x, Type.Int, Closure.Add (y, z))
		 | Sub (x, y, z) -> (x, Type.Int, Closure.Sub (y, z))
		 | Mul (x, y, z) -> (x, Type.Int, Closure.Mul (y, z))
		 | FLoad (x, y) -> (x, Type.Float, Closure.Float y)
		 | FSubz (x, y) -> (x, Type.Float, Closure.FNeg y)
		 | FAdd (x, y, z) -> (x, Type.Float, Closure.FAdd (y, z))
		 | FSub (x, y, z) -> (x, Type.Float, Closure.FSub (y, z))
		 | FMul (x, y, z) -> (x, Type.Float, Closure.FMul (y, z))
		 | FDiv (x, y, z) -> (x, Type.Float, Closure.FDiv (y, z))
		 | Flr (x, y) -> (x, Type.Float, Closure.Floor y)
		 | Foi (x, y) -> (x, Type.Float, Closure.Float_of_int y)
		 | Call (x, y, z) -> (x, M.find y tenv, Closure.AppDir (Id.L y, z))
		 | Var (x, y) -> (x, M.find x tenv, Closure.Var y)
	     in
	       Some (n, e)
      ) cblk None in
    match r with
      | None -> raise NoExpression
      | Some r -> r

let each_rconv (bid, rl, al, blks) tenv =
  let (_, b) = peach_rconv bid blks tenv in
    { Closure.name = (Id.L bid, Type.Unit); Closure.args = [];
      Closure.formal_fv = []; Closure.body = b }

let ent_rconv (nm, blks) t = Closure.Int 0

let rconv (l, t) tenv =
  Closure.Prog (List.map (fun x -> each_rconv x tenv) l, ent_rconv t tenv)

let rec exp_make_total_env = function
  | Closure.Unit | Closure.Int _ | Closure.Float _ | Closure.Neg _
  | Closure.Add _ | Closure.Sub _ | Closure.Mul _ | Closure.FNeg _
  | Closure.FAdd _ | Closure.FSub _ | Closure.FMul _ | Closure.FDiv _
  | Closure.Floor _ | Closure.Float_of_int _ | Closure.Var _
  | Closure.MakeCls _ | Closure.AppCls _ | Closure.AppDir _
  | Closure.Tuple _ | Closure.Get _ | Closure.Put _ | Closure.ExtTuple _
  | Closure.ExtArray _ -> M.empty
  | Closure.IfLE (_, _, x, y) | Closure.IfEq (_, _, x, y) ->
      M.union (exp_make_total_env x) (exp_make_total_env y)
  | Closure.Let ((x, t), y, z) ->
      M.add x t (M.union (exp_make_total_env y) (exp_make_total_env z))
  | Closure.LetTuple (x, _, y) ->
      M.add_list x (exp_make_total_env y)

let each_make_total_env { Closure.name = (Id.L x, t);
			  Closure.args = l;
			  Closure.formal_fv = _;
			  Closure.body = e } =
  M.union (M.add x t (M.add_list l M.empty)) (exp_make_total_env e)

(*Closure.Progの全変数と型の対応を作る*)
let make_total_env (Closure.Prog (l, e)) =
  M.union (exp_make_total_env e)
    (List.fold_left (fun a b -> M.union (each_make_total_env b) a) M.empty l)

let sotn = function
  | Addzi _ -> "Addzi" | Subz _ -> "Subz"
  | Add _ -> "Add" | Sub _ -> "Sub" | Mul _ -> "Mul" | FLoad _ -> "FLoad"
  | FSubz _ -> "FSubz" | FAdd _ -> "FAdd" | FSub _ -> "FSub" | FMul _ -> "FMul"
  | FDiv _ -> "FDiv" | Flr _ -> "Flr" | Foi _ -> "Foi" | Call _ -> "Call"
  | IfEq _ -> "IfEq" | IfLE _ -> "IfLE" | Var _ -> "Var" | Tuple _ -> "Tuple"
  | IfFEq _ -> "IfFEq" | IfFLE _ -> "IfFLE" | FGet _ -> "FGet" | FPut _ -> "FPut"
  | Get _ -> "Get" | Put _ -> "Put" | ExtArray _ -> "ExtArray"
  | ExtTuple _ -> "ExtTuple" | LetTuple _ -> "LetTuple"

let print_t e =
  match e with
    | Addzi (x, y) -> printf "\t\t%s %s %d\n" (sotn e) x y
    | FLoad (x, y) -> printf "\t\t%s %s %f\n" (sotn e) x y
    | Subz (x, y) | FSubz (x, y) | Flr (x, y) | Foi (x, y)
    | ExtArray (x, y) | ExtTuple (x, y) ->
	printf "\t\t%s %s %s\n" (sotn e) x y
    | Add (x, y, z) | Sub (x, y, z) | Mul (x, y, z)
    | FAdd (x, y, z) | FSub (x, y, z) | FMul (x, y, z) | FDiv (x, y, z)
    | Get (x, y, z) | Put (x, y, z) | FGet (x, y, z) | FPut (x, y, z) ->
	printf "\t\t%s %s %s %s\n" (sotn e) x y z
    | IfEq (x, y, _, _) | IfLE (x, y, _, _) 
    | IfFEq (x, y, _, _) | IfFLE (x, y, _, _) ->
	printf "\t\t%s %s %s\n" (sotn e) x y
    | Call (x, y, z) ->
	printf "\t\t%s (%s) <- %s (%s)\n" (sotn e) x y (String.concat ", " z)
    | _ -> printf "\t\t%s\n" (sotn e)

let print_block (x, (y, z)) =
  printf "\t%s -> (%s)\n" x (String.concat ", " z);
  List.iter print_t y

let print_func (n, x, y, z) =
  printf "%s: (%s) <- (%s)\n" n (String.concat ", " x) (String.concat ", " y);
  List.iter print_block z

let print_prog (x, (y, z)) =
  List.iter print_func x;
  print_func (y, [], [], z)
    
let f x =
  let k = conv x in
    print_prog k;
    k
      
let g x =
  let k = conv x in
  let tenv = make_total_env x in
    rconv k tenv
      
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
