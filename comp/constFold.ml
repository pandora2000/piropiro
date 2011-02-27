open KNormal
open List
open ListEx
open Printf

let rec isansi e =
  match e with
    | Int _ -> true
    | Unit | Float _ | Neg _ | Add _ | Addi _ | Sub _ | App _
    | Mul _ | Div _ | FNeg _ | FAdd _ | FSub _ | FMul _ | Addzi _
    | FDiv _ | Floor _ | Float_of_int _ | Var _ | Tuple _
    | Geti _ | Puti _ | FSqrt _ | Xor _
    | Get _ | Put _ | ExtArray _ | ExtTuple _ | ExtFunApp _ -> false
    | IfEq (_, _, x, y) | IfLE (_, _, x, y) -> isansi x && isansi y
    | Let (_, _, z) -> isansi z
    | LetRec (_, z) -> isansi z
    | LetTuple (_, _, z) -> isansi z
let rec sizeansi e =
  match e with
    | Int n -> 1
    | Unit | Float _ | Neg _ | Add _ | Addi _ | Sub _ | App _
    | Mul _ | Div _ | FNeg _ | FAdd _ | FSub _ | FMul _ | Addzi _
    | FDiv _ | Floor _ | Float_of_int _ | Var _ | Tuple _
    | Geti _ | Puti _ | FSqrt _ | Xor _
    | Get _ | Put _ | ExtArray _ | ExtTuple _ | ExtFunApp _ -> raise Not_found
    | IfEq (_, _, x, y) | IfLE (_, _, x, y) -> sizeansi x + sizeansi y
    | Let (_, _, z) -> sizeansi z
    | LetRec (_, z) -> sizeansi z
    | LetTuple (_, _, z) -> sizeansi z
	(*let rec sizeansi e n s1 s2 =
	  match e with
	  | Int m when n = m -> s1 - 1
	  | Int m -> s2 - 1
	  | Unit | Float _ | Neg _ | Add _ | Addi _ | Sub _ | App _
	  | Mul _ | Div _ | FNeg _ | FAdd _ | FSub _ | FMul _ | Addzi _
	  | FDiv _ | Floor _ | Float_of_int _ | Var _ | Tuple _
	  | Geti _ | Puti _ | Getzi _ | Putzi _ | FSqrt _ | Xor _
	  | Get _ | Put _ | ExtArray _ | ExtTuple _ | ExtFunApp _ -> raise Not_found
	  | IfEq (_, _, x, y) | IfLE (_, _, x, y) -> sizeansi x n s1 s2 + sizeansi y n s1 s2
	  | Let (_, _, z) -> sizeansi z n s1 s2
	  | LetRec (_, z) -> sizeansi z n s1 s2
	  | LetTuple (_, _, z) -> sizeansi z n s1 s2*)
let rec replaceansi e n e1 e2 =
  match e with
      (*Alphaしないといけない*)
    | Int m -> if m = n then Alpha.f e1 else Alpha.f e2
    | Unit | Float _ | Neg _ | Add _ | Addi _ | Sub _ | App _
    | Mul _ | Div _ | FNeg _ | FAdd _ | FSub _ | FMul _ | Addzi _
    | FDiv _ | Floor _ | Float_of_int _ | Var _ | Tuple _
    | Geti _ | Puti _ | FSqrt _ | Xor _
    | Get _ | Put _ | ExtArray _ | ExtTuple _ | ExtFunApp _ -> raise Not_found
    | IfEq (a, b, x, y) -> IfEq (a, b, replaceansi x n e1 e2, replaceansi y n e1 e2)
    | IfLE (a, b, x, y) -> IfLE (a, b, replaceansi x n e1 e2, replaceansi y n e1 e2)
    | Let (x, y, z) -> Let (x, y, replaceansi z n e1 e2)
    | LetRec (x, y) -> LetRec (x, replaceansi y n e1 e2)
    | LetTuple (x, y, z) -> LetTuple (x, y, replaceansi z n e1 e2)

(*TODO:(a+1)+1とかは？*)
let memi x env =
  try (match assoc x env with Int(_) -> true | _ -> false) with Not_found -> false
let memf x env =
  try (match assoc x env with Float(_) -> true | _ -> false) with Not_found -> false
let memt x env =
  try (match assoc x env with Tuple(_) -> true | _ -> false) with Not_found -> false
let memxa x env =
  try (match assoc x env with ExtArray(_) -> true | _ -> false) with Not_found -> false
let memaddi x env =
  try (match assoc x env with Addi(_) -> true | _ -> false) with Not_found -> false
let memifi x env =
  try (match assoc x env with
	 | IfEq(_, _, Int(_), Int(_)) | IfLE(_, _, Int(_), Int(_)) -> true
	 | _ -> false) with Not_found -> false

let findi x env = (match assoc x env with Int(i) -> i | _ -> raise Not_found)
let findf x env = (match assoc x env with Float(d) -> d | _ -> raise Not_found)
let findt x env = (match assoc x env with Tuple(ys) -> ys | _ -> raise Not_found)
let findxa x env = (match assoc x env with ExtArray(xa) -> xa | _ -> raise Not_found)
let findaddi x env = (match assoc x env with Addi(y, i) -> (y, i) | _ -> raise Not_found)
let findifi x env =
  let e = assoc x env in
    match e with
      | IfEq(_, _, Int(n), Int(m)) | IfLE(_, _, Int(n), Int(m)) -> (e, n, m)
      | _ -> raise Not_found

let replaceif e e1 e2 =
  match e with
    | IfEq(x, y, _, _) -> IfEq(x, y, e1, e2)
    | IfLE(x, y, _, _) -> IfLE(x, y, e1, e2)
    | _ -> raise Exit

let rec valid env = function
  | Let(_, e1, e2) | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) -> valid env e1 && valid env e2
  | LetRec(_, e) | LetTuple(_, _, e) -> valid env e
  | App _ | Put _ | Puti _ | ExtFunApp _ | Get _ | Geti _ -> false
  | Int(_) (*as e when mem_rassoc e env && Optt.is_anyreg (rassoc e env)*) -> false
  | Float(_) (*as e when mem_rassoc e env && Optt.is_anyreg (rassoc e env)*) -> false
  | _ -> true

let rec g env e =
  match e with
      (*なるべくVarにする*)
      (*Varを変換するのは無駄といえる*)
      (*| Var(x) when memi x env -> Int(findi x env)*)
      (*これでロードが増える可能性あり。*)
      (*| Var(x) when memf x env -> Float(findf x env) *)
      (*| Var(x) when memt x env -> Tuple(findt x env) *)
      (*この辺でIntにされる前に共通部分式除去をやるべきか・・・*)
    | Neg(x) when memi x env -> Int(-(findi x env))
    | Add(x, y) when memi x env && memi y env -> Int(findi x env + findi y env)
    | Add(x, y) when memi x env -> Addi(y, findi x env)
    | Add(x, y) when memi y env -> Addi(x, findi y env)
    | Addi(x, i) when memi x env -> Int(findi x env + i)
    | Addi(x, 0) -> Var(x)
	(*これいれると生存区間広がってか命令数増える*)
	(*| Addi(x, i) when memaddi x env -> let (y, j) =
	  findaddi x env in printf "addi\n"; Addi(y, i + j)*)
    | Sub(x, y) when memi x env && memi y env -> Int(findi x env - findi y env)
    | Sub(x, y) when memi x env && findi x env = 1 -> Sub(Optt.oreg, y)
    | Sub(x, y) when memi y env -> Addi(x, - (findi y env))
    | Mul(x, y) when memi x env && memi y env &&
	Optt.check_imm_range (findi x env * findi y env) -> Int(findi x env * findi y env)
    | Mul(x, y) when memi x env && findi x env = 1 -> Var(y)
    | Mul(x, y) when memi y env && findi y env = 1 -> Var(x)
    | Mul(x, y) when memi x env && findi x env = 0 -> Int(0)
    | Mul(x, y) when memi y env && findi y env = 0 -> Int(0)
	(*TODO:どうせならMuli導入(コード量ちょっと減るかな？)*)
	(*  | Mul(x, y) when memi x env -> Muli(y, findi x env)
	    | Mul(x, y) when memi y env -> Muli(x, findi y env)*)
    | Div(x, y) when memi x env && memi y env -> Int(findi x env / findi y env)
    | Div(x, y) when memi y env && findi y env = 1 -> Var(x)
    | Div(x, y) when memi x env && findi x env = 0 -> Int(0)
    | FNeg(x) when memf x env -> Float(-.(findf x env))
    | FAdd(x, y) when memf x env && memf y env -> Float(findf x env +. findf y env)
    | FAdd(x, y) when memf x env && findf x env = 0.0 -> Var(y)
    | FAdd(x, y) when memf y env && findf y env = 0.0 -> Var(x)
    | FSub(x, y) when memf x env && memf y env -> Float(findf x env -. findf y env)
	(*  | FSub(x, y) when memf x env && findf x env = 0.0 -> FSubz(y)*)
    | FSub(x, y) when memf y env && findf y env = 0.0 -> Var(x)
    | FMul(x, y) when memf x env && memf y env -> Float(findf x env *. findf y env)
    | FMul(x, y) when memf x env && findf x env = 1.0 -> Var(y)
    | FMul(x, y) when memf y env && findf y env = 1.0 -> Var(x)
    | FMul(x, y) when memf x env && findf x env = 0.0 -> Float(0.0)
    | FMul(x, y) when memf y env && findf y env = 0.0 -> Float(0.0)
    | FDiv(x, y) when memf x env && memf y env -> Float(findf x env /. findf y env)
    | FDiv(x, y) when memf y env && findf y env = 1.0 -> Var(x)
    | FDiv(x, y) when memf x env && findf x env = 0.0 -> Float(0.0)
    | FSqrt(x) when memf x env -> Float(sqrt (findf x env))
    | IfEq(x, y, e1, e2) when memi x env && memifi y env ->
	let e1 = g env e1 and e2 = g env e2 in
	let k = findi x env in
	let (e, n, m) = findifi y env in
	  if n = k then if m = k then e1 else replaceif e e1 e2
	  else if m = k then replaceif e e2 e1 else e2
    | IfEq(y, x, e1, e2) when memi x env && memifi y env ->
	let e1 = g env e1 and e2 = g env e2 in
	let k = findi x env in
	let (e, n, m) = findifi y env in
	  if n = k then if m = k then e1 else replaceif e e1 e2
	  else if m = k then replaceif e e2 e1 else e2
    | IfEq(x, y, e1, e2) when memi x env && memi y env ->
	if findi x env = findi y env then g env e1 else g env e2
    | IfEq(x, y, e1, e2) when memf x env && memf y env ->
	if findf x env = findf y env then g env e1 else g env e2
    | IfEq(x, y, e1, e2) when memi x env && findi x env = 1 ->
	IfEq(y, Optt.oreg, g env e1, g env e2)
    | IfEq(y, x, e1, e2) when memi x env && findi x env = 1 ->
	IfEq(y, Optt.oreg, g env e1, g env e2)
    | IfEq(x, y, e1, e2) when memi x env && findi x env = -1 ->
	IfEq(y, Optt.moreg, g env e1, g env e2)
    | IfEq(y, x, e1, e2) when memi x env && findi x env = -1 ->
	IfEq(y, Optt.moreg, g env e1, g env e2)
    | IfEq(x, y, e1, e2) when memi x env && findi x env = 0 ->
	IfEq(y, Optt.zreg, g env e1, g env e2)
    | IfEq(x, y, e1, e2) when memf x env && findf x env = 0.0 ->
	IfEq(y, Optt.fzreg, g env e1, g env e2)
    | IfEq(x, y, e1, e2) when memi y env && findi y env = 0 ->
	IfEq(x, Optt.zreg, g env e1, g env e2)
    | IfEq(x, y, e1, e2) when memf y env && findf y env = 0.0 ->
	IfEq(x,Optt.fzreg,  g env e1, g env e2)
    | IfEq(x, y, e1, e2) -> IfEq(x, y, g env e1, g env e2)
    | IfLE(x, y, e1, e2) when memi x env && memifi y env ->
	let e1 = g env e1 and e2 = g env e2 in
	let k = findi x env in
	let (e, n, m) = findifi y env in
	  if n >= k then if m >= k then e1 else replaceif e e1 e2
	  else if m >= k then replaceif e e2 e1 else e2
    | IfLE(y, x, e1, e2) when memi x env && memifi y env ->
	let e1 = g env e1 and e2 = g env e2 in
	let k = findi x env in
	let (e, n, m) = findifi y env in
	  if n <= k then if m <= k then e1 else replaceif e e1 e2
	  else if m <= k then replaceif e e2 e1 else e2
    | IfLE(x, y, e1, e2) when memi x env && memi y env ->
	if findi x env <= findi y env then g env e1 else g env e2
    | IfLE(x, y, e1, e2) when memf x env && memf y env ->
	if findf x env <= findf y env then g env e1 else g env e2
    | IfLE(x, y, e1, e2) when memi x env && findi x env = 0 ->
	IfLE(Optt.zreg, y, g env e1, g env e2)
    | IfLE(x, y, e1, e2) when memf x env && findf x env = 0.0 ->
	IfLE(Optt.fzreg, y, g env e1, g env e2)
    | IfLE(x, y, e1, e2) when memi y env && findi y env = 0 ->
	IfLE(x, Optt.zreg, g env e1, g env e2)
    | IfLE(x, y, e1, e2) when memf y env && findf y env = 0.0 ->
	IfLE(x, Optt.fzreg, g env e1, g env e2)
    | IfLE(x, y, e1, e2) -> IfLE(x, y, g env e1, g env e2)
    | Let((x, t), e1, e2) ->
	let e1' = g env e1 in
	let e2' = g ((x, e1') :: env) e2 in
	let r = Let((x, t), e1', e2') in
	  (match e1' with
	     | IfEq(y, z, e3, e4) when isansi e1' && sizeansi e1' <= 3 ->
		 (match e2' with
		    | IfEq(u, v, e5, e6) when u = x && v = Optt.zreg &&
			not (S.mem x (fv e5)) && not (S.mem x (fv e6))
			(*&&
			(*普通にsizeansi <= 3とかのがコード量少ないけどこっちのが良心的*)
			  sizeansi e1' 0 (Inline.size e5)
			  (Inline.size e6) - (Inline.size r) <= -10 *)
			-> IfEq(y, z, replaceansi e3 0 e5 e6, replaceansi e4 0 e5 e6)
		    | _ -> r)
	     | _ -> r)
    | LetRec({ name = x; args = ys; body = e1 }, e2) ->
	LetRec({ name = x; args = ys; body = g env e1 }, g env e2)
    | LetTuple(xts, y, e) when memt y env ->
	List.fold_left2
	  (fun e' xt z -> Let(xt, Var(z), e'))
	  (g env e)
	  xts
	  (findt y env)
    | LetTuple(xts, y, e) -> LetTuple(xts, y, g env e)
	(*実はもうGetzi,Putziはできないはず*)
    | Geti(xa, i) when memxa xa env ->
	Geti(Optt.zreg, Optt.memext + assoc (findxa xa env) Optt.extlist + i)
    | Puti(xa, i, v) when memxa xa env ->
	Puti(Optt.zreg, Optt.memext + assoc (findxa xa env) Optt.extlist + i, v)
    | Get(x, y) when memxa x env ->
	Geti(y, Optt.memext + assoc (findxa x env) Optt.extlist)
    | Get(y, x) when memxa x env ->
	Geti(y, Optt.memext + assoc (findxa x env) Optt.extlist)
    | Get(x, y) when memi y env -> Geti(x, findi y env)
	(*ダメ、間にPutしてるかも*)
	(*| Get(x, y) when mem_rassoc e env -> Var(rassoc e env)*)
    | e when valid env e && mem_rassoc e env -> Var(rassoc e env)
    | e -> e

let f = g [Optt.zreg, Int(0); Optt.oreg, Int(1); Optt.moreg, Int(-1); Optt.fzreg, Float(0.0)]
