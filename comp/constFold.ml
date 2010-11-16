open KNormal

let memi x env =
  try (match M.find x env with Int(_) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with Float(_) -> true | _ -> false)
  with Not_found -> false
let memt x env =
  try (match M.find x env with Tuple(_) -> true | _ -> false)
  with Not_found -> false

let findi x env = (match M.find x env with Int(i) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with Float(d) -> d | _ -> raise Not_found)
let findt x env = (match M.find x env with Tuple(ys) -> ys | _ -> raise Not_found)

let rec g env = function (* 定数畳み込みルーチン本体 (caml2html: constfold_g) *)
  | Var(x) when memi x env -> Int(findi x env)
      (*TODO:これでロードが増える可能性あり。共通部分式除去で消そう*)
      (* | Var(x) when memf x env -> Float(findf x env) *)
      (* | Var(x) when memt x env -> Tuple(findt x env) *)
  | Neg(x) when memi x env -> Int(-(findi x env))
  | Add(x, y) when memi x env && memi y env -> Int(findi x env + findi y env)
  | Add(x, y) when memi x env -> Addi(y, findi x env)
  | Add(x, y) when memi y env -> Addi(x, findi y env)
  | Addi(x, i) when memi x env -> Int(findi x env + i)
  | Sub(x, y) when memi x env && memi y env -> Int(findi x env - findi y env)
  | Sub(x, y) when memi y env -> Addi(x, - (findi y env))
  | Mul(x, y) when memi x env && memi y env -> Int(findi x env * findi y env)
      (*  | Mul(x, y) when memi x env -> Muli(y, findi x env)
	  | Mul(x, y) when memi y env -> Muli(x, findi y env)*)
  | Div(x, y) when memi x env && memi y env -> Int(findi x env / findi y env)
  | FNeg(x) when memf x env -> Float(-.(findf x env))
  | FAdd(x, y) when memf x env && memf y env -> Float(findf x env +. findf y env)
  | FAdd(x, y) when memf x env && findf x env = 0.0 -> Var(y)
  | FAdd(x, y) when memf y env && findf y env = 0.0 -> Var(x)
  | FSub(x, y) when memf x env && memf y env -> Float(findf x env -. findf y env)
  | FMul(x, y) when memf x env && memf y env -> Float(findf x env *. findf y env)
  | FDiv(x, y) when memf x env && memf y env -> Float(findf x env /. findf y env)
  | IfIEqz(x, e1, e2) when memi x env -> if findi x env = 0 then g env e1 else g env e2
  | IfIEqz(x, e1, e2) -> IfIEqz(x, g env e1, g env e2)
  | IfFEqz(x, e1, e2) when memf x env -> if findf x env = 0.0 then g env e1 else g env e2
  | IfFEqz(x, e1, e2) -> IfFEqz(x, g env e1, g env e2)
  | IfILEz(x, e1, e2) when memi x env -> if findi x env <= 0 then g env e1 else g env e2
  | IfILEz(x, e1, e2) -> IfILEz(x, g env e1, g env e2)
  | IfFLEz(x, e1, e2) when memf x env -> if findf x env <= 0.0 then g env e1 else g env e2
  | IfFLEz(x, e1, e2) -> IfFLEz(x, g env e1, g env e2)
  | IfIGEz(x, e1, e2) when memi x env -> if findi x env >= 0 then g env e1 else g env e2
  | IfIGEz(x, e1, e2) -> IfIGEz(x, g env e1, g env e2)
  | IfFGEz(x, e1, e2) when memf x env -> if findf x env >= 0.0 then g env e1 else g env e2
  | IfFGEz(x, e1, e2) -> IfFGEz(x, g env e1, g env e2)
  | IfEq(x, y, e1, e2) when memi x env && memi y env -> if findi x env = findi y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2) when memf x env && memf y env -> if findf x env = findf y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2) when memi x env && findi x env = 0 -> IfIEqz(y, e1, e2)
  | IfEq(x, y, e1, e2) when memf x env && findf x env = 0.0 -> IfFEqz(y, e1, e2)
  | IfEq(x, y, e1, e2) when memi y env && findi y env = 0 -> IfIEqz(x, e1, e2)
  | IfEq(x, y, e1, e2) when memf y env && findf y env = 0.0 -> IfFEqz(x, e1, e2)
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env e1, g env e2)
  | IfLE(x, y, e1, e2) when memi x env && memi y env -> if findi x env <= findi y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2) when memf x env && memf y env -> if findf x env <= findf y env then g env e1 else g env e2
      
  | IfLE(x, y, e1, e2) when memi x env && findi x env = 0 -> IfIGEz(y, e1, e2)
  | IfLE(x, y, e1, e2) when memf x env && findf x env = 0.0 -> IfFGEz(y, e1, e2)
  | IfLE(x, y, e1, e2) when memi y env && findi y env = 0 -> IfILEz(x, e1, e2)
  | IfLE(x, y, e1, e2) when memf y env && findf y env = 0.0 -> IfFLEz(x, e1, e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env e1, g env e2)
  | Let((x, t), e1, e2) -> (* letのケース (caml2html: constfold_let) *)
      let e1' = g env e1 in
      let e2' = g (M.add x e1' env) e2 in
	Let((x, t), e1', e2')
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
      LetRec({ name = x; args = ys; body = g env e1 }, g env e2)
  | LetTuple(xts, y, e) when memt y env ->
      List.fold_left2
	(fun e' xt z -> Let(xt, Var(z), e'))
	(g env e)
	xts
	(findt y env)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env e)
  | e -> e

let f = g M.empty
