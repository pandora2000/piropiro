open Printf
open Optt
open Loop

let merge_alist x y =
  List.fold_left (fun a b -> if List.mem_assoc (fst b) a then a else b :: a) x y

let ptyp_of_type = function Type.Float -> F | _ -> I

exception IllegalPattern
  (*NextedLetはコードによっては来る可能性がある*)
exception NestedLet
exception UnsupportedComparison
exception NoExpression
exception FatalError

let rec each_conv cblk cbid nbid rid rtyp env e =
  let sel_if r x y z w v u env e =
    match e with
      | Closure.IfEq _ ->
	  (match M.find x env with
	     | Type.Float -> IfFEq (r, x, y, z, w, v, u)
	     | Type.Int | Type.Bool -> IfEq (r, x, y, z, w, v, u)
	     | _ -> raise UnsupportedComparison)
      | Closure.IfLE _ ->
	  (match M.find x env with
	     | Type.Float -> IfFLE (r, x, y, z, w, v, u)
	     | Type.Int | Type.Bool -> IfLE (r, x, y, z, w, v, u)
	     | _ -> raise UnsupportedComparison)
      | _ -> raise FatalError in
  let nextid = function Some x -> [x] | None -> [] in
  let imm_conv n t env = function
    | Closure.Unit -> []
    | Closure.Int x -> [Addzi (n, x)]
    | Closure.Float x -> [FLoad (n, x)]
    | Closure.Neg x -> [Subz (n, x)]
    | Closure.Add (x, y) -> [Add (n, x, y)]
    | Closure.Sub (x, y) -> [Sub (n, x, y)]
    | Closure.Mul (x, y) -> [Mul (n, x, y)]
    | Closure.Xor (x, y) -> [Xor (n, x, y)]
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
    | Closure.Tuple x -> [Tuple (n, x)]
    | Closure.Get (x, y) ->
	(match t with
	   | Type.Float -> [FGet (n, x, y)]
	   | _ -> [Get (n, x, y)])
    | Closure.Put (x, y, z) ->
	(match M.find z env with
	   | Type.Float -> [FPut (x, y, z)]
	   | _ -> [Put (x, y, z)])
    | Closure.ExtArray (Id.L x) -> [ExtArray (n, x)]
    | Closure.ExtTuple x -> [ExtTuple (n, x)]
    | Closure.IfEq _ | Closure.IfLE _ | Closure.AppDir _
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
		     (cbid, (cblk @ [sel_if n x y thenid elseid
				       (Some contid) (Some contid) env e1],
			     [thenid; elseid]))
		     :: (thenblks @ elseblks @ contblks)
	       | Closure.AppDir (Id.L x, y) ->
		   let clcontid = genid "clcont" in
		   let contblks = each_conv [] clcontid nbid rid rtyp nenv e2 in
		     (cbid, (cblk @ [Call (n, x, y, Some clcontid)], [clcontid]))
		     :: contblks
	       | Closure.Let _ | Closure.LetTuple _ -> raise NestedLet
	       | Closure.MakeCls _ | Closure.AppCls _ -> raise IllegalPattern
	       | _ -> each_conv (cblk @ (imm_conv n t env e1)) cbid nbid rid rtyp nenv e2)
      | Closure.LetTuple (x, z, w) ->
	  each_conv (cblk @ [LetTuple (List.map fst x, z)]) cbid nbid rid rtyp
	    (M.add_list x env) w
      | Closure.IfEq (x, y, z, w) | Closure.IfLE (x, y, z, w) ->
	  let thenid = genid "then" in
	  let elseid = genid "else" in
	  let thenblks = each_conv [] thenid nbid rid rtyp env z in
	  let elseblks = each_conv [] elseid nbid rid rtyp env w in
	    (cbid, (cblk @ [sel_if rid x y thenid elseid None nbid env e], [thenid; elseid]))
	    :: (thenblks @ elseblks)
      | Closure.AppDir (Id.L x, y) -> [cbid, (cblk @ [Call (rid, x, y, None)], nextid nbid)]
      | Closure.MakeCls _ | Closure.AppCls _ -> raise IllegalPattern
      | _ -> [cbid, (cblk @ (imm_conv rid rtyp env e), nextid nbid)]

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
		   ((rid, rtyp) :: z, (x, [rid],
				       List.map fst z,
				       each_conv rid rtyp x
					 (M.add x y (M.add_list z M.empty))
					 w))) l) in
    ((mrid, Type.Unit) :: (List.flatten p),
     (q, (mbid, each_conv mrid Type.Unit mbid M.empty t)))

let rec p_each_rconv bid blks tenv =
  let sel_if x y z w = function
    | IfEq _ | IfFEq _ -> Closure.IfEq (x, y, z, w)
    | IfLE _ | IfFLE _ -> Closure.IfLE (x, y, z, w)
    | _ -> raise FatalError in
  let imm_rconv e =
    match e with
      | IfEq _ | IfLE _ | IfFEq _ | IfFLE _ | LetTuple _ | Call _ | Ret _ -> raise FatalError
      | Nop -> raise FatalError
      | Addzi (x, y) -> (x, Type.Int, Closure.Int y)
      | Subz (x, y) -> (x, Type.Int, Closure.Neg y)
      | Add (x, y, z) -> (x, Type.Int, Closure.Add (y, z))
      | Sub (x, y, z) -> (x, Type.Int, Closure.Sub (y, z))
      | Mul (x, y, z) -> (x, Type.Int, Closure.Mul (y, z))
      | Xor (x, y, z) -> (x, Type.Int, Closure.Xor (y, z))
      | FLoad (x, y) -> (x, Type.Float, Closure.Float y)
      | FSubz (x, y) -> (x, Type.Float, Closure.FNeg y)
      | FAdd (x, y, z) -> (x, Type.Float, Closure.FAdd (y, z))
      | FSub (x, y, z) -> (x, Type.Float, Closure.FSub (y, z))
      | FMul (x, y, z) -> (x, Type.Float, Closure.FMul (y, z))
      | FDiv (x, y, z) -> (x, Type.Float, Closure.FDiv (y, z))
      | Flr (x, y) -> (x, Type.Float, Closure.Floor y)
      | Foi (x, y) -> (x, Type.Float, Closure.Float_of_int y)
      | Var (x, y) -> (x, M.find x tenv, Closure.Var y)
      | Tuple (x, y) -> (x, M.find x tenv, Closure.Tuple y)
      | Get (x, y, z) | FGet (x, y, z) -> (x, M.find x tenv, Closure.Get (y, z))
      | Put (x, y, z) | FPut (x, y, z) -> (genid "put", Type.Unit, Closure.Put (x, y, z))
      | ExtArray (x, y) -> (x, M.find x tenv, Closure.ExtArray (Id.L y))
      | ExtTuple (x, y) -> (x, M.find x tenv, Closure.ExtTuple y) in
  let (cblk, _) = List.assoc bid blks in
  let r =
    List.fold_right
      (fun e -> function
	 | None ->
	     Some 
	       (match e with
		  | LetTuple _ -> raise FatalError
		  | IfEq (r, x, y, z, w, v, _) | IfLE (r, x, y, z, w, v, _)
		  | IfFEq (r, x, y, z, w, v, _) | IfFLE (r, x, y, z, w, v, _) ->
		      let thenexp = p_each_rconv z blks tenv in
		      let elseexp = p_each_rconv w blks tenv in
		      let expif = sel_if x y thenexp elseexp e in
			(match v with
			   | None -> expif
			   | Some n ->
			       let contexp = p_each_rconv n blks tenv in
				 Closure.Let ((r, M.find r tenv), expif, contexp))
		  | Call (r, x, y, z) ->
		      let expcall = Closure.AppDir (Id.L x, y) in
			(match z with
			   | None -> expcall
			   | Some n ->
			       let contexp = p_each_rconv n blks tenv in
				 Closure.Let ((r, M.find r tenv), expcall, contexp))
		  | _ -> let (_, _, ex) = imm_rconv e in ex)
	 | Some exp ->
	     Some (
	       match e with
		 | IfEq _ | IfLE _ | IfFEq _ | IfFLE _ | Call _ -> raise FatalError
		 | LetTuple (x, y) ->
		     Closure.LetTuple (List.map (fun x -> (x, M.find x tenv)) x, y, exp)
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
  | Closure.Add _ | Closure.Sub _ | Closure.Mul _ | Closure.Xor _
  | Closure.FNeg _
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

let f oc foc x =
  let (p, env) = normal x in
        print_prog stdout p;
    Output.f oc foc (Alloc.f p env) env;
    reverse (p, env)

      

