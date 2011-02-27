open Printf
open Optt
open List
open Time

exception IllegalPattern
exception NestedLet
exception UnsupportedComparison
exception NoExpression
exception FatalError

(*let tmpenv = ref []*)

let baseenv =
  M.add_list [zreg, Type.Int; oreg, Type.Int; moreg, Type.Int; fzreg, Type.Float] M.empty

let rec exp_make_total_env = function
  | Closure.Unit | Closure.Int _ | Closure.Float _ | Closure.Neg _
  | Closure.Add _ | Closure.Sub _ | Closure.Mul _ | Closure.Xor _
  | Closure.FNeg _ | Closure.Addzi _ | Closure.Addi _ 
  | Closure.FAdd _ | Closure.FSub _ | Closure.FMul _ | Closure.FDiv _
  | Closure.Floor _ | Closure.Float_of_int _ | Closure.Var _
  | Closure.MakeCls _ | Closure.AppCls _ | Closure.AppDir _ | Closure.TailAppDir _
  | Closure.Tuple _ | Closure.Get _ | Closure.Put _ | Closure.Geti _ | Closure.Puti _
  | Closure.Getzi _ | Closure.Putzi _ | Closure.FSqrt _
  | Closure.ExtTuple _ | Closure.ExtArray _ -> M.empty
  | Closure.IfLE (_, _, x, y) | Closure.IfEq (_, _, x, y)
  | Closure.IfILEz (_, x, y) | Closure.IfIGEz (_, x, y) | Closure.IfIEqz (_, x, y)
  | Closure.IfFLEz (_, x, y) | Closure.IfFGEz (_, x, y) | Closure.IfFEqz (_, x, y) ->
      M.union (exp_make_total_env x) (exp_make_total_env y)
  | Closure.Let ((x, t), y, z) ->
      M.add x t (M.union (exp_make_total_env y) (exp_make_total_env z))
  | Closure.LetTuple (x, _, y) -> M.add_list x (exp_make_total_env y)

let each_make_total_env { Closure.name = (Id.L x, t);
			  Closure.args = l;
			  Closure.formal_fv = _;
			  Closure.body = e } =
  M.union (M.add x t (M.add_list l M.empty)) (exp_make_total_env e)

(*Closure.Progの全変数と型の対応を作る*)
let make_total_env (Closure.Prog (l, e)) =
  M.union (exp_make_total_env e)
    (List.fold_left (fun a b -> M.union (each_make_total_env b) a) baseenv l)

let ignore_unit l env = fold_right (fun b a -> match M.find b env with
				      | Type.Unit -> a
				      | _ -> b :: a) l []
  
let ignore_unit2 l = fold_right (fun (b, c) a -> match c with
				   | Type.Unit -> a
				   | _ -> (b, c) :: a) l []
  
let ignore_unit3 l = map fst (ignore_unit2 l)
  
(*jidsにはjump先としてありうるidをいれないといけない*)
let each_conv cblk cbid nbid rid rtyp env e (*jids*) =
  let rec each_conv cblk cbid nbid rid rtyp env e =
    let sel_if r x y env e =
      match e with
	| Closure.IfEq _ ->
	    (match M.find x env with
	       | Type.Float -> IfFEq (r, x, y)
	       | Type.Int | Type.Bool -> IfEq (r, x, y)
	       | _ -> raise UnsupportedComparison)
	| Closure.IfLE _ ->
	    (match M.find x env with
	       | Type.Float -> IfFLE (r, x, y)
	       | Type.Int | Type.Bool -> IfLE (r, x, y)
	       | _ -> raise UnsupportedComparison)
	| _ -> raise FatalError in
    let sel_ifz r x e =
      match e with
	| Closure.IfIEqz _ -> IfEqz (r, x)
	| Closure.IfILEz _ -> IfLEz (r, x)
	| Closure.IfIGEz _ -> IfGEz (r, x)
	| Closure.IfFEqz _ -> IfFEqz (r, x)
	| Closure.IfFLEz _ -> IfFLEz (r, x)
	| Closure.IfFGEz _ -> IfFGEz (r, x)
	| _ -> raise FatalError in
    let sel_if r x y env e =
      match y with
	| Some y -> sel_if r x y env e
	| None -> sel_ifz r x e in
    let sel_f t f g = match t with Type.Float -> f | _ -> g in
    let conv_if nbid rid rtyp env cbid cblk e x y z w =
      let thenid = genid "then" in
      let elseid = genid "else" in
      let thenblks = each_conv [] thenid nbid rid rtyp env z in
      let elseblks = each_conv [] elseid nbid rid rtyp env w in
	{ bid = cbid;
	  insts = cblk @ [make_inst (sel_if rid x y env e)];
	  nextids = [thenid; elseid] } :: (thenblks @ elseblks) in
    let conv_cif nbid rid rtyp env nenv e1 e2 n t x y z w =
      let contid = genid "cont" in
      let thenid = genid "then" in
      let elseid = genid "else" in
      let contblks = each_conv [] contid nbid rid rtyp nenv e2 in
      let thenblks = each_conv [] thenid (Some contid) n t env z in
      let elseblks = each_conv [] elseid (Some contid) n t env w in
	{ bid = cbid;
	  insts = cblk @ [make_inst (sel_if n x y env e1)];
	  nextids = [thenid; elseid] } :: (thenblks @ elseblks @ contblks) in
      (*    let jumpnext x = if List.mem x jids then [x] else [] in*)
    let imm_conv n t env e =
      match e with
	| Closure.Unit -> []
	    (*| Closure.Get (x, y) ->
	      let tid = genid "get" in
	      tmpenv := (tid, Type.Int) :: !tmpenv;
	      [make_inst (Add (tid, x, y));
	      make_inst (sel_f t (FGeti (n, tid, 0)) (Geti (n, tid, 0)))]
	      | Closure.Put (x, y, z) ->
	      let tid = genid "put" in
	      tmpenv := (tid, Type.Int) :: !tmpenv;
	      [make_inst (Add (tid, x, y));
	      make_inst (sel_f (M.find z env) (FPuti (tid, 0, z)) (Puti (tid, 0, z)))]*)
	| _ ->
	    [make_inst
	       (match e with
		  | Closure.Int x -> Addzi (n, x)
		  | Closure.Float x -> FLoad (n, x)
		  | Closure.Neg x -> Subz (n, x)
		  | Closure.Add (x, y) -> Add (n, x, y)
		  | Closure.Addi (x, y) -> Addi (n, x, y)
		  | Closure.Sub (x, y) -> Sub (n, x, y)
		  | Closure.Mul (x, y) -> Mul (n, x, y)
		  | Closure.Xor (x, y) -> Xor (n, x, y)
		  | Closure.FNeg x -> FSubz (n, x)
		  | Closure.FAdd (x, y) -> FAdd (n, x, y)
		  | Closure.FSub (x, y) -> FSub (n, x, y)
		  | Closure.FMul (x, y) -> FMul (n, x, y)
		  | Closure.FDiv (x, y) -> FDiv (n, x, y)
		  | Closure.Floor x -> Flr (n, x)
		  | Closure.Float_of_int x -> Foi (n, x)
		  | Closure.FSqrt x -> FSqrt (n, x)
		  | Closure.Var x -> (*printf "var %s\n" x; *)Var (n, x)
		  | Closure.Tuple x -> Tuple (n, ignore_unit x env)
		  | Closure.Get (x, y) -> sel_f t (FGet (n, x, y)) (Get (n, x, y))
		  | Closure.Geti (x, y) -> sel_f t (FGeti (n, x, y)) (Geti (n, x, y))
		  | Closure.Getzi (x) -> sel_f t (FGeti (n, zreg, x)) (Geti (n, zreg, x))
		  | Closure.Put (x, y, z) ->
		      sel_f (M.find z env) (FPut (x, y, z)) (Put (x, y, z))
		  | Closure.Puti (x, y, z) ->
		      sel_f (M.find z env) (FPuti (x, y, z)) (Puti (x, y, z))
		  | Closure.Putzi (x, y) ->
		      sel_f (M.find y env) (FPuti (zreg, x, y)) (Puti (zreg, x, y))
		  | Closure.ExtArray (Id.L x) -> ExtArray (n, x)
		  | Closure.ExtTuple x -> ExtTuple (n, x)
		  | Closure.AppDir (Id.L x, y) ->
		      Call (ignore_unit3 [n, t], x, ignore_unit y env)
			(*		  | Closure.Get _ | Closure.Put _*)
		  | Closure.Unit _ | Closure.TailAppDir _
		  | Closure.Addzi _ | Closure.IfEq _ | Closure.IfLE _
		  | Closure.IfIGEz _ | Closure.IfFGEz _ | Closure.IfILEz _
		  | Closure.IfFLEz _ | Closure.IfIEqz _ | Closure.IfFEqz _
		  | Closure.Let _ | Closure.LetTuple _
		  | Closure.MakeCls _ | Closure.AppCls _ -> raise FatalError)] in
      match e with
	| Closure.Let ((n, t), e1, e2) ->
	    let nenv = M.add n t env in
	      (match e1 with
		 | Closure.IfIEqz (x, z, w) | Closure.IfFEqz (x, z, w)
		 | Closure.IfILEz (x, z, w) | Closure.IfFLEz (x, z, w)
		 | Closure.IfIGEz (x, z, w) | Closure.IfFGEz (x, z, w) ->
		     conv_cif nbid rid rtyp env nenv e1 e2 n t x None z w
		 | Closure.IfEq (x, y, z, w) | Closure.IfLE (x, y, z, w) ->
		     conv_cif nbid rid rtyp env nenv e1 e2 n t x (Some y) z w
		 | Closure.Let _ | Closure.LetTuple _ -> raise NestedLet
		 | Closure.MakeCls _ | Closure.AppCls _ -> raise IllegalPattern
		 | _ -> each_conv (cblk @ (imm_conv n t env e1)) cbid nbid rid rtyp nenv e2)
	| Closure.LetTuple (x, z, w) ->
	    let x = ignore_unit2 x in
	      each_conv (cblk @ [make_inst (LetTuple (List.map fst x, z))]) cbid nbid rid rtyp
		(M.add_list x env) w
	| Closure.IfEq (x, y, z, w) | Closure.IfLE (x, y, z, w) ->
	    conv_if nbid rid rtyp env cbid cblk e x (Some y) z w
	| Closure.IfIEqz (x, z, w) | Closure.IfILEz (x, z, w) | Closure.IfIGEz (x, z, w)
	| Closure.IfFEqz (x, z, w) | Closure.IfFLEz (x, z, w) | Closure.IfFGEz (x, z, w) ->
	    conv_if nbid rid rtyp env cbid cblk e x None z w
	| Closure.AppDir (Id.L x, y) when nbid = None ->
	    [{ bid = cbid; insts = cblk @
		 [make_inst (Jump (ignore_unit3 [rid, rtyp], x, ignore_unit y env))];
	       nextids = [](*jumpnext x*) }]
	| Closure.MakeCls _ | Closure.AppCls _ -> raise IllegalPattern
	| _ ->
	    (match nbid with
	       | None -> [{ bid = cbid;
			    insts = cblk @ (imm_conv rid rtyp env e) @
			      [make_inst (Ret (if rtyp = Type.Unit then [] else [rid]))];
			    nextids = [] }]
	       | Some x -> [{ bid = cbid;
			      insts = cblk @ (imm_conv rid rtyp env e);
			      nextids = [x] }]) in
    each_conv cblk cbid nbid rid rtyp env e

let func_conv rid rtyp x env z =
  each_conv [] x None rid rtyp env z (*[x]*)


let conv (Closure.Prog (l, t)) =
  let mbid = "min_caml_start" in
  let mrid = genid "mret" in
  let (p, q) = List.split
    (List.map (fun { Closure.name = (Id.L x, y); Closure.args = z; Closure.formal_fv = _;
		     Closure.body = w } ->
		 let z = ignore_unit2 z in
		 let rid = genid "ret" in
		 let rtyp = match y with Type.Fun (_, w) -> w | _ -> raise FatalError in
		   (*printf "%s\n" x;*)
		   ((rid, rtyp) :: z,
		    make_func x (if rtyp = Type.Unit then [] else [rid]) (List.map fst z)
		      (func_conv rid rtyp x (M.add x y (M.add_list z baseenv)) w)
		   )) l) in
    (*printf "main\n";*)
    ((mrid, Type.Unit) :: (List.flatten p),
     { funcs = q; efunc = make_func mbid [] []
	 (func_conv mrid Type.Unit mbid baseenv t) })
      
let conv x =
  (*tmpenv := [];*)
  let (a, b) = conv x in
    (b, M.add_list (*(a @ !tmpenv)*)a (make_total_env x))

(*TODO:生存区間の分割。例えばb=a+1,...,c=a+2とかあったらb=a+1,...,c=b+1にするとか*)
(*blt,beq,fblt,fbeqは使えるかもthen節が無かったりすると...*)
(*TODO:if文の片方でしか使われない計算の移動*)

let f oc foc x =
  printf "opt start\n%!";
  let (p, env) = conv x in
    printf "translatetpl start\n%!";
    TranslateTpl.f p env;
    printf "translatetpl end\n%!";
    (*let t = get_time () in*)
    Cfg.make p;
    (*printf "%s s\n%!" (string_of_elapsed_secs t);*)
    Cfg.set_live p;
    (*printf "%s s\n%!" (string_of_elapsed_secs t);*)
    printf "elimarg start\n%!";
    ElimArgs.f p;
    printf "elimarg end\nelimexp start\n%!";
    ElimExp.f p env;
    printf "elimexp end\n%!";
    

    (*elimexp強化版と(elimargと)コピー伝播とPREを繰り返す*)
    (*Cfg.make p;
      Cfg.set_live p;
      printf "pre start\n%!";
      Pre.f p;
      printf "pre end\n%!";
      Cfg.make p;
      Cfg.set_live p;
      printf "elimexp start\n%!";
      ElimExp.f p env;
      printf "elimexp end\n%!";*)
    
    Cfg.make p;
    Cfg.set_live p;
    printf "alloc start\n%!";
    Alloc.f p env;
    printf "alloc end\nopt end\n%!";
    Output.f oc foc p
