(* give names to intermediate values (K-normalization) *)

open Printf
open List

type t = (* K��������μ� (caml2html: knormal_t) *)
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
  | Xor of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | Floor of Id.t
  | Float_of_int of Id.t
  | FSqrt of Id.t
  | IfEq of Id.t * Id.t * t * t 
  | IfLE of Id.t * Id.t * t * t
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

let rec effect = function (* �����Ѥ�̵ͭ (caml2html: elim_effect) *)
  | Let(_, e1, e2) | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) ->
      effect e1 || effect e2
  | LetRec(_, e) | LetTuple(_, _, e) -> effect e
      (*���餫�������Ѥ�̵��App��false�ˤǤ��뤬������ޤ���̤ʤ��Ȼפ���*)
  | App _ | Put _ | Puti _ | ExtFunApp _ -> true
  | _ -> false

let rec fv = function (* ���˽и�����ʼ�ͳ�ʡ��ѿ� (caml2html: knormal_fv) *)
  | Unit | Int(_) | Float(_) | ExtArray(_) | ExtTuple(_) | Addzi(_) -> S.empty
  | Geti(x, _) | FSqrt(x)
  | Addi(x, _) | Neg(x) | FNeg(x) | Floor(x) | Float_of_int(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | Mul(x, y) | Div(x, y) | Xor(x, y) | Puti(x, _, y)
  | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
	S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys) -> S.of_list (x :: ys)
  | Tuple(xs) | ExtFunApp(_, xs) -> S.of_list xs
  | Put(x, y, z) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

let insert_let (e, t) k = (* let��������������ؿ� (caml2html: knormal_insert) *)
  match e with
    | Var(x) -> k x
    | _ ->
	let x = Id.gentmp t in
	let e', t' = k x in
	  Let((x, t), e, e'), t'

exception Exit10

let rec g env = function (* K�������롼�������� (caml2html: knormal_g) *)
  | Syntax.Info(_, x) -> raise Exit10
  | Syntax.Add(Syntax.Int(0), Syntax.Int(i))
  | Syntax.Add(Syntax.Int(i), Syntax.Int(0)) -> Int(i), Type.Int
  | Syntax.Add(Syntax.Int(0), e) | Syntax.Add(e, Syntax.Int(0)) -> g env e
  | Syntax.Add(e, Syntax.Int(i)) | Syntax.Add(Syntax.Int(i), e) ->
      insert_let (g env e)
	(fun y -> Addi(y, i), Type.Int)
  | Syntax.Unit -> Unit, Type.Unit
  | Syntax.Bool(b) -> raise Exit10
  | Syntax.Int(i) -> Int(i), Type.Int
  | Syntax.Float(d) -> Float(d), Type.Float
  | Syntax.Not(e) -> g env (Syntax.Sub(Syntax.Int(1), e))
  | Syntax.Neg(e) ->
      insert_let (g env e)
	(fun x -> Neg(x), Type.Int)
  | Syntax.Floor(e) ->
      insert_let (g env e)
	(fun x -> Floor(x), Type.Float)
  | Syntax.Float_of_int(e) ->
      insert_let (g env e)
	(fun x -> Float_of_int(x), Type.Float)
  | Syntax.Add(e1, e2) -> (* ­������K������ (caml2html: knormal_add) *)
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> Add(x, y), Type.Int))
  | Syntax.Sub(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> Sub(x, y), Type.Int))
  | Syntax.Mul(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> Mul(x, y), Type.Int))
  | Syntax.Div(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> Div(x, y), Type.Int))
  | Syntax.FNeg(e) ->
      insert_let (g env e)
	(fun x -> FNeg(x), Type.Float)
  | Syntax.FAdd(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> FAdd(x, y), Type.Float))
  | Syntax.FSub(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> FSub(x, y), Type.Float))
  | Syntax.FMul(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> FMul(x, y), Type.Float))
  | Syntax.FDiv(e1, e2) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> FDiv(x, y), Type.Float))
  | Syntax.Eq _ | Syntax.LE _ as cmp ->
      g env (Syntax.If(cmp, Syntax.Int(1), Syntax.Int(0)))
  | Syntax.If(Syntax.Not(e1), e2, e3) -> g env (Syntax.If(e1, e3, e2)) (* not�ˤ��ʬ�����Ѵ� (caml2html: knormal_not) *)
  | Syntax.If(Syntax.Eq(e1, Syntax.Float(0.0)), e3, e4)
  | Syntax.If(Syntax.Eq(Syntax.Float(0.0), e1), e3, e4) ->
      insert_let (g env e1)
	(fun y ->
	   let e3', t3 = g env e3 in
	   let e4', t4 = g env e4 in
	     IfEq(y, Optt.fzreg, e3', e4'), t3)
  | Syntax.If(Syntax.Eq(e1, Syntax.Int(0)), e3, e4) 
  | Syntax.If(Syntax.Eq(Syntax.Int(0), e1), e3, e4) ->
      insert_let (g env e1)
	(fun y ->
	   let e3', t3 = g env e3 in
	   let e4', t4 = g env e4 in
	     IfEq(y, Optt.zreg, e3', e4'), t3)
  | Syntax.If(Syntax.Eq(e1, e2), e3, e4) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y ->
	      let e3', t3 = g env e3 in
	      let e4', t4 = g env e4 in
		IfEq(x, y, e3', e4'), t3))
  | Syntax.If(Syntax.LE(e1, e2), e3, e4) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y ->
	      let e3', t3 = g env e3 in
	      let e4', t4 = g env e4 in
		IfLE(x, y, e3', e4'), t3))
  | Syntax.If(e1, e2, e3) -> g env (Syntax.If(Syntax.Eq(e1, Syntax.Int(0)), e3, e2))
  | Syntax.Let((x, t), e1, e2) ->
      let e1', t1 = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
	Let((x, t), e1', e2'), t2
  | Syntax.Var(x) when M.mem x env -> Var(x), M.find x env
  | Syntax.Var(x) -> (* ��������λ��� (caml2html: knormal_extarray) *)
      (match M.find x !Typing.extenv with
	 | Type.Array(_) as t -> ExtArray x, t
	 | Type.Tuple(_) as t -> ExtTuple x, t
	 | _ -> failwith (Printf.sprintf "external variable %s does not have an array type" x))
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2) ->
      let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let e1', t1 = g (M.add_list yts env') e1 in
	LetRec({ name = (x, t); args = yts; body = e1' }, e2'), t2
  | Syntax.App(Syntax.Var(f), e2s) when not (M.mem f env) -> (* �����ؿ��θƤӽФ� (caml2html: knormal_extfunapp) *)
      (match f with
	 | "sqrt" ->
	     insert_let (g env (hd e2s))
	       (fun y -> FSqrt y, Type.Float)
	 | "float_of_int" ->
	     insert_let (g env (hd e2s))
	       (fun y -> Float_of_int y, Type.Float)
	 | "floor" ->
	     insert_let (g env (hd e2s))
	       (fun y -> Floor y, Type.Float)
	 | "xor" ->
	     insert_let (g env (hd e2s))
	       (fun x -> insert_let (g env (nth e2s 1))
		  (fun y -> Xor(x, y), Type.Int))
	 | _ ->
	     (match M.find f !Typing.extenv with
		| Type.Fun(_, t) ->
		    let rec bind xs = function (* "xs" are identifiers for the arguments *)
		      | [] -> ExtFunApp(f, xs), t
		      | e2 :: e2s ->
			  insert_let (g env e2)
			    (fun x -> bind (xs @ [x]) e2s) in
		      bind [] e2s (* left-to-right evaluation *)
		| _ -> assert false))
  | Syntax.App(e1, e2s) ->
      (match g env e1 with
	 | _, Type.Fun(_, t) as g_e1 ->
	     insert_let g_e1
	       (fun f ->
		  let rec bind xs = function (* "xs" are identifiers for the arguments *)
		    | [] -> App(f, xs), t
		    | e2 :: e2s ->
			insert_let (g env e2)
			  (fun x -> bind (xs @ [x]) e2s) in
		    bind [] e2s) (* left-to-right evaluation *)
	 | _ -> assert false)
  | Syntax.Tuple(es) ->
      let rec bind xs ts = function
	| [] -> Tuple(xs), Type.Tuple(ts)
	| e :: es ->
	    let _, t as g_e = g env e in
	      insert_let g_e
		(fun x -> bind (xs @ [x]) (ts @ [t]) es) in
	bind [] [] es
  | Syntax.LetTuple(xts, e1, e2) ->
      insert_let (g env e1)
	(fun y ->
	   let e2', t2 = g (M.add_list xts env) e2 in
	     LetTuple(xts, y, e2'), t2)
  | Syntax.Array(e1, e2) ->
      insert_let (g env e1)
	(fun x ->
	   let _, t2 as g_e2 = g env e2 in
	     insert_let g_e2
	       (fun y ->
		  let l =
		    match t2 with
		      | Type.Float -> "create_float_array"
		      | _ -> "create_array" in
		    ExtFunApp(l, [x; y]), Type.Array(t2)))
  | Syntax.Get(e1, Syntax.Int(i)) ->
      (match g env e1 with
	 | _, Type.Array(t) as g_e1 ->
	     insert_let g_e1
	       (fun y -> Geti(y, i), t)
	 | _ -> assert false)
  | Syntax.Get(e1, e2) ->
      (match g env e1 with
	 | _, Type.Array(t) as g_e1 ->
	     insert_let g_e1
	       (fun x -> insert_let (g env e2)
		  (fun y -> Get(x, y), t))
	 | _ -> assert false)
  | Syntax.Put(e1, Syntax.Int(i), e3) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e3)
	   (fun z -> Puti(x, i, z), Type.Unit))
  | Syntax.Put(e1, e2, e3) ->
      insert_let (g env e1)
	(fun x -> insert_let (g env e2)
	   (fun y -> insert_let (g env e3)
	      (fun z -> Put(x, y, z), Type.Unit)))
	(*TODO:Putz�ϸ��̤���Ȼפ�*)

let rec bf e =
  match e with
    | Syntax.Info (_, x) -> bf x
    | Syntax.Not(e) ->Syntax.Not(bf e)
    | Syntax.Neg(e) ->Syntax.Neg(bf e)
    | Syntax.Add(e1, e2) ->  Syntax.Add(bf e1,bf e2)
    | Syntax.Sub(e1, e2) -> Syntax.Sub(bf e1,bf e2)
    | Syntax.Mul(e1, e2) -> Syntax.Mul(bf e1,bf e2)
    | Syntax.Div(e1, e2) -> Syntax.Div(bf e1,bf e2)
    | Syntax.FNeg(e) ->Syntax.FNeg(bf e)
    | Syntax.Floor(e) ->Syntax.Floor(bf e)
    | Syntax.Float_of_int(e) ->Syntax.Float_of_int(bf e)
    | Syntax.FAdd(e1, e2) -> Syntax.FAdd(bf e1,bf e2)
    | Syntax.FSub(e1, e2) -> Syntax.FSub(bf e1,bf e2)
    | Syntax.FMul(e1, e2) -> Syntax.FMul(bf e1,bf e2)
    | Syntax.FDiv(e1, e2) -> Syntax.FDiv(bf e1,bf e2)
    | Syntax.Eq(x,y) -> Syntax.Eq(bf x,bf y)
    | Syntax.LE(x,y) -> Syntax.LE(bf x,bf y)
    | Syntax.If(e1, e3, e4) -> Syntax.If(bf e1, bf e3, bf e4)
    | Syntax.Let((x, t), e1, e2) -> Syntax.Let((x, t), bf e1, bf e2)
    | Syntax.Int _
    | Syntax.Float _
    | Syntax.Unit  
    | Syntax.Bool _ 
    | Syntax.Var _ -> e
    | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2) ->
	Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = bf e1 }, bf e2) 
    | Syntax.App(e1, e2s) -> Syntax.App(bf e1, List.map (fun x -> bf x) e2s)
    | Syntax.Tuple(es) -> Syntax.Tuple(List.map (fun x -> bf x) es)
    | Syntax.LetTuple(xts, e1, e2) -> Syntax.LetTuple(xts, bf e1, bf e2)
    | Syntax.Array(e1, e2) -> Syntax.Array(bf e1, bf e2)
    | Syntax.Get(e1, e2) -> Syntax.Get(bf e1, bf e2)
    | Syntax.Put(e1, e2, e3) -> Syntax.Put(bf e1, bf e2, bf e3)

let f e =
  fst (g M.empty (bf e))
    
    
let ltostr (Id.L x) = x

let num = ref 0
  
let rec sop level e =
  incr num;
  let nl = level + 1 in
  let nsop = sop nl in
  let psol l s = sprintf "%s%s" (String.make l ' ') s in
  let sol = psol level in
  let tostr = function
    | FSqrt _ -> "FSqrt"
    | Geti _ -> "Geti" | Puti _ -> "Puti" 
    | Unit -> "Unit" | Int _ -> "Int" | Float _ -> "Float" | Addi _ -> "Addi"
    | Neg _ -> "Neg" | Add _ -> "Add" | Sub _ -> "Sub" | FNeg _ -> "FNeg"
    | Mul _ -> "Mul" | Div _ -> "Div" | Floor _ -> "Floor" | Xor _ -> "Xor"
    | Float_of_int _ -> "Float_of_int" | Addzi _ -> "Addzi"
    | FAdd _ -> "FAdd" | FSub _ -> "FSub" | FMul _ -> "FMul" | FDiv _ -> "FDiv"
    | IfEq _ -> "IfEq" | IfLE _ -> "IfLE" | Let _ -> "Let" | Var _ -> "Var"
    | Tuple _ -> "Tuple" | LetTuple _ -> "LetTuple" | Get _ -> "Get"
    | Put _ -> "Put" | ExtFunApp _ -> "ExtFunApp" | App _ -> "App"
    | ExtArray _ -> "ExtArray" | LetRec _ -> "LetRec" | ExtTuple _ -> "ExtTuple" in
  let str = tostr e in
    match e with
      | Unit -> sol (sprintf "%s\n" str)
      | Int x | Addzi x -> sol (sprintf "%s(%d)\n" str x)
      | Float x -> sol (sprintf "%s(%f)\n" str x)
      | Neg x | FNeg x | Var x | ExtArray x | ExtTuple x | Floor x
      | Float_of_int x | FSqrt x ->
	  sol (sprintf "%s(%s)\n" str x)
      | Addi (x, i) -> sol (sprintf "%s(%s, %d)\n" str x i)
      | Add (x, y) | Sub (x, y) | FAdd (x, y) | FSub (x, y) | Mul (x, y) | Div (x, y)
      | Xor (x, y) | FMul (x, y) | FDiv (x, y) | Get (x, y) ->
	  sol (sprintf "%s(%s, %s)\n" str x y)
      | Geti (x, y) ->
	  sol (sprintf "%s(%s, %d)\n" str x y)
      | Puti (x, y, z) -> sol (sprintf "%s(%s, %d, %s)\n" str x y z)
      | Put (x, y, z) -> sol (sprintf "%s(%s, %s, %s)\n" str x y z)
      | IfEq (x, y, z, w) | IfLE (x, y, z, w) ->
	  sol (sprintf "%s(%s, %s)\n%s%s\n%s" str x y (nsop z) (sol "Else") (nsop w))
      | Let ((x, y), z, w) ->
	  sol (sprintf "%s(%s : %s)\n%s%s\n%s"
		 str x (Type.string_of_t y) (nsop z) (sol "In") (sop level w))
      | LetRec ({ name = (x, y); args = z; body = w}, u) ->
	  sol (sprintf "%s(%s : %s, (%s))\n%s%s\n%s"
		 str x (Type.string_of_t y)
		 (String.concat ", "
		    (List.map (fun (a, b) -> sprintf "%s : %s" a (Type.string_of_t b)) z))
		 (nsop w) (sol "In") (sop level u))
      | Tuple x ->
	  sol (sprintf "%s(%s)\n" str (String.concat ", " x))
      | LetTuple (x, y, z) ->
	  sol (sprintf "%s((%s), %s)\n%s" str
		 (String.concat ", "
		    (List.map (fun (a, b) -> sprintf "%s : %s" a (Type.string_of_t b)) x))
		 y (nsop z))
      | App (x, y) | ExtFunApp (x, y) ->
	  sol (sprintf "%s(%s, (%s))\n" str x (String.concat ", " y))
	    
let print_prog outchan e =
  num := 0;
  fprintf outchan "%s" (sop 0 e);
  fprintf outchan "%s" (sprintf "%d\n" !num)

    
