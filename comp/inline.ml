open KNormal

(* ����饤��Ÿ������ؿ��κ��祵���� (caml2html: inline_threshold) *)
let threshold = ref 0 (* Main��-inline���ץ����ˤ�ꥻ�åȤ���� *)

  
let rec size = function
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2)
  | Let(_, e1, e2) | LetRec({ body = e1 }, e2) -> 1 + size e1 + size e2
  | LetTuple(_, _, e) -> 1 + size e
  | _ -> 1

let merge_list x y =
  List.fold_left (fun a b -> if List.mem b a then a else b :: a) x y
    
(*������ͤˤϹ��ʤ������¼�Ū�ˤϥ�������Ͻ���ʤ�����er������Ū��ee��ƤФʤ��¤�
  ����Ĵ������OK*)
(*�⤷����Ǥ��̤ˤɤ��򥤥�饤��Ÿ�����뤫�ϥ���ѥ���ξ���Ȥ�����*)
(*f��Ƥִؿ�����İʲ��ǡ����Ĥ��줬��ʬ���ȤǤʤ��Ȥ���*)
let rec h f e =
  (*f��Ƥִؿ��Υꥹ��*)
  let rec callers_of f er = function
    | App (x, _) when x = f -> [er]
    | Unit | Int _ | Float _ | Neg _ | Add _ | Sub _ | App _
    | Mul _ | Div _ | FNeg _ | FAdd _ | FSub _ | FMul _
    | FDiv _ | Floor _ | Float_of_int _ | Var _ | Tuple _
    | Get _ | Put _ | ExtArray _ | ExtTuple _ | ExtFunApp _ -> []
    | IfEq (_, _, y, z) | IfLE (_, _, y, z)
    | Let (_, y, z) -> merge_list (callers_of f er y) (callers_of f er z)
    | LetRec ({ name = (x, _); body = y }, z) ->
	merge_list (callers_of f (Some x) y) (callers_of f None z)
    | LetTuple (_, _, z) -> callers_of f er z in
    match callers_of f None e with
      | [] | [None] -> true
      | [Some x] when x <> f -> true
      | _ -> false

let rec g we env = function (* ����饤��Ÿ���롼�������� (caml2html: inline_g) *)
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g we env e1, g we env e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g we env e1, g we env e2)
  | Let(xt, e1, e2) -> Let(xt, g we env e1, g we env e2)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) -> (* �ؿ�����ξ�� (caml2html: inline_letrec) *)
      let env =
	if size e1 > !threshold && (not (h x we)) then env
	else M.add x (yts, e1) env in
	LetRec({ name = (x, t); args = yts; body = g we env e1}, g we env e2)
  | App(x, ys) when M.mem x env -> (* �ؿ�Ŭ�Ѥξ�� (caml2html: inline_app) *)
      let (zs, e) = M.find x env in
	Format.eprintf "inlining %s@." x;
	let env' =
	  List.fold_left2
	    (fun env' (z, t) y -> M.add z y env')
	    M.empty
	    zs
	    ys in
	  Alpha.g env' e
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g we env e)
  | e -> e

let f e = g e M.empty e
