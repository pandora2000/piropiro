open Printf

type id = string
type bid = string
type t =
  | Unit of id
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

let merge_alist x y =
  List.fold_left (fun a b -> if List.mem_assoc (fst b) a then a else b :: a) x y

let genid x = Id.genid x

let ptyp_of_type = function Type.Float -> F | _ -> I

exception IllegalPattern
exception NestedLet
exception UnsupportedComparison
exception NoExpression
exception FatalError
exception MyNotFound
exception MyNotFound2
exception MyNotFound3
exception MyNotFound4
exception MyNotFound5
exception MyNotFound6
exception MyNotFound7
exception MyNotFound8
exception MyNotFound9
exception MyNotFound10

let rec each_conv cblk cbid nbid rid rtyp env e =
  let sel_if r x y z w v env e =
    try
      match e with
	| Closure.IfEq _ ->
	    (match M.find x env with
	       | Type.Float -> IfFEq (r, x, y, z, w, v)
	       | Type.Int | Type.Bool -> IfEq (r, x, y, z, w, v)
	       | _ -> raise UnsupportedComparison)
	| Closure.IfLE _ ->
	    (match M.find x env with
	       | Type.Float -> IfFLE (r, x, y, z, w, v)
	       | Type.Int | Type.Bool -> IfLE (r, x, y, z, w, v)
	       | _ -> raise UnsupportedComparison)
	| _ -> raise FatalError 
    with Not_found -> raise MyNotFound in
  let nextid = function Some x -> [x] | None -> [] in
  let imm_conv n t = function
    | Closure.Unit -> [Unit n]
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
		     (cbid, (cblk @ [sel_if n x y thenid elseid (Some contid) env e1],
			     [thenid; elseid]))
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
	    (cbid, (cblk @ [sel_if rid x y thenid elseid None env e], [thenid; elseid]))
	    :: (thenblks @ elseblks)
      | Closure.MakeCls _ | Closure.AppCls _ -> raise IllegalPattern
      | _ -> [cbid, (cblk @ (imm_conv rid rtyp e), nextid nbid)]
	  
let each_conv rid rtyp x env z =
  each_conv [] x None rid rtyp env z
    
let conv (Closure.Prog (l, t)) =
  let mbid = "min_caml_start" in
  let mrid = genid "mret" in
  let (p, q) = List.split
    (List.map (fun { Closure.name = (Id.L x, y); Closure.args = z; Closure.formal_fv = _;
		     Closure.body = w } ->
		 let rid = genid "ret" in
		 let rtyp = match y with Type.Fun (_, w) -> w | _ -> raise FatalError in
		   ((rid, rtyp), (x, [rid],
				  List.map fst z,
				  each_conv rid rtyp x
				    (M.add x y (M.add_list z M.empty))
				    w))) l) in
    ((mrid, Type.Unit) :: p, (q, (mbid, each_conv mrid Type.Unit mbid M.empty t)))

let rec p_each_rconv bid blks tenv =
  let sel_if x y z w = function
    | IfEq _ | IfFEq _ -> Closure.IfEq (x, y, z, w)
    | IfLE _ | IfFLE _ -> Closure.IfLE (x, y, z, w)
    | _ -> raise FatalError in
  let imm_rconv e =
    try
      match e with
	| IfEq _ | IfLE _ | IfFEq _ | IfFLE _ | LetTuple _ -> raise FatalError
	| Unit x -> (x, Type.Unit, Closure.Unit)
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
	| Call (x, y, z) ->
	    (try
	       (x, M.find x tenv, Closure.AppDir (Id.L y, z))
	     with Not_found -> printf "%s %s\n" x y; raise MyNotFound10)
	| Var (x, y) ->
	    (try
	       (x, M.find x tenv, Closure.Var y)
	     with Not_found -> raise MyNotFound7)
	| Tuple (x, y) ->
	    (try
	       (x, M.find x tenv, Closure.Tuple y)
	     with Not_found -> raise MyNotFound8)
	| Get (x, y, z) | FGet (x, y, z) ->
	    (try
	       (x, M.find x tenv, Closure.Get (y, z))
	     with Not_found -> raise MyNotFound9)
	| Put (x, y, z) | FPut (x, y, z) ->
	    (try
	       (genid "put", Type.Unit, Closure.Put (x, y, z))
	     with Not_found -> raise MyNotFound6)
	| ExtArray (x, y) ->
	    (try
	       (x, M.find x tenv, Closure.ExtArray (Id.L y))
	     with Not_found -> raise MyNotFound4)
	| ExtTuple (x, y) ->
	    (try
	       (x, M.find x tenv, Closure.ExtTuple y)
	     with Not_found -> raise MyNotFound5)
    with Not_found -> raise MyNotFound2 in
  let (cblk, _) = List.assoc bid blks in
  let r =
    List.fold_right
      (fun e -> function
	 | None ->
	     Some 
	       (match e with
		  | LetTuple _ -> raise FatalError
		  | IfEq (r, x, y, z, w, v) | IfLE (r, x, y, z, w, v)
		  | IfFEq (r, x, y, z, w, v) | IfFLE (r, x, y, z, w, v) ->
		      let thenexp = p_each_rconv z blks tenv in
		      let elseexp = p_each_rconv w blks tenv in
		      let expif = sel_if x y thenexp elseexp e in
			(match v with
			   | None -> expif
			   | Some n ->
			       let contexp = p_each_rconv n blks tenv in
				 Closure.Let ((r, M.find r tenv), expif, contexp))
		  | _ -> let (_, _, ex) = imm_rconv e in ex)
	 | Some exp ->
	     Some (
	       match e with
		 | IfEq _ | IfLE _ | IfFEq _ | IfFLE _ -> raise FatalError
		 | LetTuple (x, y) ->
		     (try
			Closure.LetTuple (List.map (fun x -> (x, M.find x tenv)) x, y, exp)
		      with Not_found -> raise MyNotFound3)
		 | _ ->
		     let (n, t, ex) = imm_rconv e in
		       Closure.Let ((n, t), ex, exp))
      ) cblk None in
    match r with
      | None -> Closure.Unit
      | Some r -> r

let each_rconv (bid, rl, al, blks) tenv =
  { Closure.name = (Id.L bid, M.find bid tenv);
    Closure.args = List.map (fun x -> (x, M.find x tenv)) al;
    Closure.formal_fv = []; Closure.body = p_each_rconv bid blks tenv }

let ent_rconv (nm, blks) tenv =
  p_each_rconv nm blks tenv

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
    
let normal x =
  let (a, b) = conv x in
    (b, M.add_list a (make_total_env x))

let reverse (a, tenv) =
  rconv a tenv

let sotn = function
  | Addzi _ -> "Addzi" | Subz _ -> "Subz" | Unit _ -> "Unit"
  | Add _ -> "Add" | Sub _ -> "Sub" | Mul _ -> "Mul" | FLoad _ -> "FLoad"
  | FSubz _ -> "FSubz" | FAdd _ -> "FAdd" | FSub _ -> "FSub" | FMul _ -> "FMul"
  | FDiv _ -> "FDiv" | Flr _ -> "Flr" | Foi _ -> "Foi" | Call _ -> "Call"
  | IfEq _ -> "IfEq" | IfLE _ -> "IfLE" | Var _ -> "Var" | Tuple _ -> "Tuple"
  | IfFEq _ -> "IfFEq" | IfFLE _ -> "IfFLE" | FGet _ -> "FGet" | FPut _ -> "FPut"
  | Get _ -> "Get" | Put _ -> "Put" | ExtArray _ -> "ExtArray"
  | ExtTuple _ -> "ExtTuple" | LetTuple _ -> "LetTuple"

let print_t oc e =
  match e with
    | Unit x -> fprintf oc "\t\t%s %s\n" (sotn e) x
    | Addzi (x, y) -> fprintf oc "\t\t%s %s %d\n" (sotn e) x y
    | FLoad (x, y) -> fprintf oc "\t\t%s %s %f\n" (sotn e) x y
    | Subz (x, y) | FSubz (x, y) | Flr (x, y) | Foi (x, y)
    | ExtArray (x, y) | ExtTuple (x, y) ->
	fprintf oc "\t\t%s %s %s\n" (sotn e) x y
    | Add (x, y, z) | Sub (x, y, z) | Mul (x, y, z)
    | FAdd (x, y, z) | FSub (x, y, z) | FMul (x, y, z) | FDiv (x, y, z)
    | Get (x, y, z) | Put (x, y, z) | FGet (x, y, z) | FPut (x, y, z) ->
	fprintf oc "\t\t%s %s %s %s\n" (sotn e) x y z
    | IfEq (r, x, y, _, _, _) | IfLE (r, x, y, _, _, _) 
    | IfFEq (r, x, y, _, _, _) | IfFLE (r, x, y, _, _, _) ->
	fprintf oc "\t\t%s %s %s %s\n" (sotn e) r x y
    | Call (x, y, z) ->
	fprintf oc "\t\t%s (%s) <- %s (%s)\n" (sotn e) x y (String.concat ", " z)
    | _ -> fprintf oc "\t\t%s\n" (sotn e)

let print_block oc (x, (y, z)) =
  fprintf oc "\t%s -> (%s)\n" x (String.concat ", " z);
  List.iter (print_t oc) y

let print_func oc (n, x, y, z) =
  fprintf oc "%s: (%s) <- (%s)\n" n (String.concat ", " x) (String.concat ", " y);
  List.iter (print_block oc) z

let print_prog oc (x, (y, z)) =
  List.iter (print_func oc) x;
  print_func oc (y, [], [], z)

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