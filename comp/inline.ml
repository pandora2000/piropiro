open KNormal
open ListEx
open Str

(*TODO:コールグラフの葉の方からインライン展開*)

(* インライン展開する関数の最大サイズ (caml2html: inline_threshold) *)
let threshold = ref 0 (* Mainで-inlineオプションによりセットされる *)
let optnoinline = ref false
  
let rec size = function
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2)
  | Let(_, e1, e2) | LetRec({ body = e1 }, e2) -> 1 + size e1 + size e2
  | LetTuple(_, _, e) -> 1 + size e
  | _ -> 1

let rec noinline = function
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2)
  | Let(_, e1, e2) | LetRec({ body = e1 }, e2) -> noinline e1 || noinline e2
  | LetTuple(_, _, e) -> noinline e
  | App(n, _) ->
      let rexp = Printf.sprintf "^%s\\(psin\\|pcos\\|sin\\|cos\\|atan\\|sdiv10\\|print_int\\|sprint_int\\|divpow10\\|sdivn\\|pow10\\|spow10\\).*" Id.prefix in
	string_match (regexp rexp) n 0
  | ExtFunApp _ -> true
  | _ -> false

      
(*言語仕様には合わないが、実質的にはクロージャは出来ないからerが明示的にeeを呼ばない限り
  下の調べ方でOK*)
(*もしダメでも別にどこをインライン展開するかはコンパイラの勝手といえる*)
let rec h f e =
  let rec callers_of f er = function
    | App (x, _) when x = f -> [er]
    | Unit | Int _ | Float _ | Neg _ | Add _ | Addi _ | Sub _ | App _
    | Mul _ | Div _ | FNeg _ | FAdd _ | FSub _ | FMul _ | Addzi _
    | FDiv _ | Floor _ | Float_of_int _ | Var _ | Tuple _
    | Geti _ | Puti _ | FSqrt _ | Xor _
    | Get _ | Put _ | ExtArray _ | ExtTuple _ | ExtFunApp _ -> []
    | IfEq (_, _, y, z) | IfLE (_, _, y, z)
    | Let (_, y, z) -> (callers_of f er y) @ (callers_of f er z)
    | LetRec ({ name = (x, _); body = y }, z) ->
	(callers_of f (Some x) y) @ (callers_of f None z)
    | LetTuple (_, _, z) -> callers_of f er z in
    match callers_of f None e with
      | [] | [None] -> true
      | [Some x] when x <> f -> true
      | _ -> false

let rec i e =
  let rec callees_of = function
    | App (x, _) -> [x]
    | Unit | Int _ | Float _ | Neg _ | Add _ | Addi _ | Sub _
    | Mul _ | Div _ | FNeg _ | FAdd _ | FSub _ | FMul _ | Addzi _
    | FDiv _ | Floor _ | Float_of_int _ | Var _ | Tuple _
    | Geti _ | Puti _ | FSqrt _ | Xor _
    | Get _ | Put _ | ExtArray _ | ExtTuple _ | ExtFunApp _ -> []
    | IfEq (_, _, y, z) | IfLE (_, _, y, z)
    | Let (_, y, z) -> (callees_of y) @ (callees_of z)
    | LetRec (_, z) -> callees_of z
    | LetTuple (_, _, z) -> callees_of z in
    set_of (callees_of e) = []

let rec g we env = function (* インライン展開ルーチン本体 (caml2html: inline_g) *)
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g we env e1, g we env e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g we env e1, g we env e2)
  | Let(xt, e1, e2) -> Let(xt, g we env e1, g we env e2)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
      let rexp = Printf.sprintf "^%s\\(psin\\|pcos\\|sin\\|cos\\|atan\\|sdiv10\\|print_int\\|sprint_int\\|divpow10\\|sdivn\\|pow10\\|spow10\\).*" Id.prefix in
      let regex y = string_match (regexp rexp) y 0 in
      let env =
	if (size e1 > !threshold && (not (h x we)) && (not (i e1))) ||
	  regex x || noinline e1 || !optnoinline then env
	else M.add x (yts, e1) env in
	LetRec({ name = (x, t); args = yts; body = g we env e1}, g we env e2)
  | App(x, ys) when M.mem x env ->
      let (zs, e) = M.find x env in
	(*Format.eprintf "inlining %s@." x;*)
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
