open Asm

(* for register coalescing *)
(* [XXX] Call�����ä��顢�����������̵��̣�Ȥ������ո��̤ʤΤ��ɤ�ʤ���
         ���Τ���ˡ�Call�����ä����ɤ����פ��֤��ͤ���1���Ǥ˴ޤ�롣 *)
let rec target' src (dest, t) = function
  | Add(zreg, x) when x = src && is_reg dest ->
      assert (t <> Type.Unit);
      assert (t <> Type.Float);
      false, [dest]
  | Fadd(fzreg, x) when x = src && is_reg dest ->
      assert (t = Type.Float);
      false, [dest]
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | IfGE(_, _, e1, e2)
  | IfFEq(_, _, e1, e2) | IfFLE(_, _, e1, e2) ->
      let c1, rs1 = target src (dest, t) e1 in
      let c2, rs2 = target src (dest, t) e2 in
      c1 && c2, rs1 @ rs2
  | CallCls(x, ys, zs) -> raise Exit
  | CallDir(_, ys, zs) ->
      true, (target_args src regs 0 ys @
	     target_args src fregs 0 zs)
  | _ -> false, []
and target src dest = function (* register targeting (caml2html: regalloc_target) *)
  | Ans(exp) -> target' src dest exp
  | Let(xt, exp, e) ->
      let c1, rs1 = target' src xt exp in
      if c1 then true, rs1 else
      let c2, rs2 = target src dest e in
      c2, rs1 @ rs2
and target_args src all n = function (* auxiliary function for Call *)
  | [] -> []
  | y :: ys when src = y -> all.(n) :: target_args src all (n + 1) ys
  | _ :: ys -> target_args src all (n + 1) ys

type alloc_result = (* alloc�ˤ�����spilling�����ä����ɤ�����ɽ���ǡ����� *)
  | Alloc of Id.t (* allocated register *)
  | Spill of Id.t (* spilled variable *)
let rec alloc dest cont regenv x t =
  (* allocate a register or spill a variable *)
  assert (not (M.mem x regenv));
  let all =
    match t with
    | Type.Unit -> ["%g0"] (* dummy *)
    | Type.Float -> allfregs
    | _ -> allregs in
  if all = ["%g0"] then Alloc("%g0") else (* [XX] ad hoc optimization *)
  if is_reg x then Alloc(x) else
  let free = fv cont in
  try
    let (c, prefer) = target x dest cont in
    let live = (* �����Ƥ���쥸���� *)
      List.fold_left
        (fun live y ->
	  if is_reg y then S.add y live else
          try S.add (M.find y regenv) live
          with Not_found -> live)
        S.empty
        free in
    let r = (* �����Ǥʤ��쥸������õ�� *)
      List.find
        (fun r -> not (S.mem r live))
        (prefer @ all) in
    (* Format.eprintf "allocated %s to %s@." x r; *)
    Alloc(r)
  with Not_found ->
    Format.eprintf "register allocation failed for %s@." x;
    let y = (* ���ι礦�쥸�����ѿ���õ�� *)
      List.find
        (fun y ->
	  not (is_reg y) &&
          try List.mem (M.find y regenv) all
          with Not_found -> false)
        (List.rev free) in
    Format.eprintf "spilling %s from %s@." y (M.find y regenv);
    Spill(y)

(* auxiliary function for g and g'_and_restore *)
let add x r regenv =
  if is_reg x then (assert (x = r); regenv) else
  M.add x r regenv

(* auxiliary functions for g' *)
exception NoReg of Id.t * Type.t
let find x t regenv =
  if is_reg x then x else
  try M.find x regenv
  with Not_found -> raise (NoReg(x, t))
let find' x' regenv =
  match x' with
  | V(x) -> V(find x Type.Int regenv)
  | c -> c
    
let rec g dest cont regenv = function (* ̿����Υ쥸����������� (caml2html: regalloc_g) *)
  | Ans(exp) -> g'_and_restore dest cont regenv exp
  | Let((x, t) as xt, exp, e) ->
      assert (not (M.mem x regenv));
      let cont' = concat e dest cont in
      let (e1', regenv1) = g'_and_restore xt cont' regenv exp in
      (match alloc dest cont' regenv1 x t with
	 | Spill(y) ->
	     let r = M.find y regenv1 in
	     let (e2', regenv2) = g dest cont (add x r (M.remove y regenv1)) e in
	     let save =
	       try Save(M.find y regenv, y)
	       with Not_found -> Nop in	    
	       (seq(save, concat e1' (r, t) e2'), regenv2)
	 | Alloc(r) ->
	     let (e2', regenv2) = g dest cont (add x r regenv1) e in
	       (concat e1' (r, t) e2', regenv2))
and g'_and_restore dest cont regenv exp = (* ���Ѥ�����ѿ��򥹥��å�����쥸������Restore (caml2html: regalloc_unspill) *)
  try g' dest cont regenv exp
  with NoReg(x, t) ->
    ((* Format.eprintf "restoring %s@." x; *)
     g dest cont regenv (Let((x, t), Restore(x), Ans(exp))))
and g' dest cont regenv = function (* ��̿��Υ쥸����������� (caml2html: regalloc_gprime) *)
  | Nop | Restore _ | Ri | Rf as exp ->
      (Ans(exp), regenv)
  | Addi(p, _) | Subi(p, _) | Muli(p, _)
  | Xori(p, _) | Nori(p, _) | Ori(p, _) | Andi(p, _) as exp when p = zreg ->
      (Ans(exp), regenv)
      (*Add r0 rx = Addi rx 0��Ʊ��������ԤϤʤ��褦�ˤ��Ƥ���Ϥ�*)
  | Add(p, x) when p = zreg -> (Ans(Add(zreg, find x Type.Int regenv)), regenv)
  | Sub(p, x) when p = zreg -> (Ans(Sub(zreg, find x Type.Int regenv)), regenv)
  | Mul(p, x) when p = zreg -> (Ans(Mul(zreg, find x Type.Int regenv)), regenv)
  | And(p, x) when p = zreg -> (Ans(And(zreg, find x Type.Int regenv)), regenv)
  | Or(p, x) when p = zreg -> (Ans(Or(zreg, find x Type.Int regenv)), regenv)
  | Xor(p, x) when p = zreg -> (Ans(Xor(zreg, find x Type.Int regenv)), regenv)
  | Nor(p, x) when p = zreg -> (Ans(Nor(zreg, find x Type.Int regenv)), regenv)
  | Add(x, y') -> (Ans(Add(find x Type.Int regenv, find y' Type.Int regenv)), regenv)
  | Sub(x, y') -> (Ans(Sub(find x Type.Int regenv, find y' Type.Int regenv)), regenv)
  | Mul(x, y') -> (Ans(Mul(find x Type.Int regenv, find y' Type.Int regenv)), regenv)
  | And(x, y') -> (Ans(And(find x Type.Int regenv, find y' Type.Int regenv)), regenv)
  | Or(x, y') -> (Ans(Or(find x Type.Int regenv, find y' Type.Int regenv)), regenv)
  | Xor(x, y') -> (Ans(Xor(find x Type.Int regenv, find y' Type.Int regenv)), regenv)
  | Nor(x, y') -> (Ans(Nor(find x Type.Int regenv, find y' Type.Int regenv)), regenv)
  | Addi(x, y) -> (Ans(Addi(find x Type.Int regenv, y)), regenv)
  | Subi(x, y) -> (Ans(Subi(find x Type.Int regenv, y)), regenv)
  | Muli(x, y) -> (Ans(Muli(find x Type.Int regenv, y)), regenv)
  | Andi(x, y) -> (Ans(Andi(find x Type.Int regenv, y)), regenv)
  | Ori(x, y) -> (Ans(Ori(find x Type.Int regenv, y)), regenv)
  | Xori(x, y) -> (Ans(Xori(find x Type.Int regenv, y)), regenv)
  | Nori(x, y) -> (Ans(Nori(find x Type.Int regenv, y)), regenv)
  | Load(x, y) -> (Ans(Load(find x Type.Int regenv, y)), regenv)
  | Store(x, y, z) -> (Ans(Store(find x Type.Int regenv, find y Type.Int regenv, z)), regenv)
  | Fadd(fp, x) when fp = fzreg -> (Ans(Fadd(fzreg, find x Type.Float regenv)), regenv)
  | Fsub(fp, x) when fp = fzreg -> (Ans(Fsub(fzreg, find x Type.Float regenv)), regenv)
  | Fmul(fp, x) when fp = fzreg -> (Ans(Fmul(fzreg, find x Type.Float regenv)), regenv)
      (*TODO:*)
  | Fdiv(fp, x) when fp = fzreg -> (Ans(Fdiv(fzreg, find x Type.Float regenv)), regenv)
      (*TODO:�����դϤ⤦����ʬ���äƤ�*)
  | Floor(fp) when fp = fzreg -> (Ans(Floor(fzreg)), regenv)
  | Float_of_int(p) when p = zreg -> (Ans(Float_of_int(fzreg)), regenv)
  | Pc x -> (Ans(Pc(find x Type.Int regenv)), regenv)
  | Pf x -> (Ans(Pf(find x Type.Float regenv)), regenv)
  | Fadd(y, x) -> (Ans(Fadd(find y Type.Float regenv, find x Type.Float regenv)), regenv)
  | Fsub(y, x) -> (Ans(Fsub(find y Type.Float regenv, find x Type.Float regenv)), regenv)
  | Fmul(y, x) -> (Ans(Fmul(find y Type.Float regenv, find x Type.Float regenv)), regenv)
      (*TODO:*)
  | Fdiv(y, x) -> (Ans(Fdiv(find y Type.Float regenv, find x Type.Float regenv)), regenv)
  | Floor(x) -> (Ans(Floor(find x Type.Float regenv)), regenv)
  | Float_of_int(x) -> (Ans(Float_of_int(find x Type.Int regenv)), regenv)
  | Fload(x, y') when (String.sub x 0 4) = "P_fd" ->
      (Ans(Fload(x, y')), regenv)
  | Fload(x, y') -> (Ans(Fload(find x Type.Int regenv, y')), regenv)
  | Fstore(x, y, z') ->
      (Ans(Fstore(find x Type.Float regenv, find y Type.Int regenv, z')), regenv)
  | IfEq(x, y, e1, e2) as exp -> g'_if dest cont regenv exp
      (fun e1' e2' -> IfEq(find x Type.Int regenv, find y Type.Int regenv, e1', e2')) e1 e2
  | IfLE(x, y, e1, e2) as exp -> g'_if dest cont regenv exp
      (fun e1' e2' -> IfLE(find x Type.Int regenv, find y Type.Int regenv, e1', e2')) e1 e2
  | IfGE(x, y, e1, e2) as exp -> g'_if dest cont regenv exp
      (fun e1' e2' -> IfGE(find x Type.Int regenv, find y Type.Int regenv, e1', e2')) e1 e2
  | IfFEq(x, y, e1, e2) as exp -> g'_if dest cont regenv exp
      (fun e1' e2' -> IfFEq(find x Type.Float regenv, find y Type.Float regenv, e1', e2')) e1 e2
  | IfFLE(x, y, e1, e2) as exp -> g'_if dest cont regenv exp
      (fun e1' e2' -> IfFLE(find x Type.Float regenv, find y Type.Float regenv, e1', e2')) e1 e2
  | CallCls(x, ys, zs) as exp -> g'_call dest cont regenv exp
      (fun ys zs -> CallCls(find x Type.Int regenv, ys, zs)) ys zs
  | CallDir(l, ys, zs) as exp -> g'_call dest cont regenv exp
      (fun ys zs -> CallDir(l, ys, zs)) ys zs
  | Save(x, y) -> assert false
  | Fsqrt _ | Finv _ -> raise Exit
and g'_if dest cont regenv exp constr e1 e2 = (* if�Υ쥸����������� (caml2html: regalloc_if) *)
  let (e1', regenv1) = g dest cont regenv e1 in
  let (e2', regenv2) = g dest cont regenv e2 in
  let regenv' = (* ξ���˶��̤Υ쥸�����ѿ��������� *)
    List.fold_left
      (fun regenv' x ->
        try
	  if is_reg x then regenv' else
            let r1 = M.find x regenv1 in
            let r2 = M.find x regenv2 in
              if r1 <> r2 then regenv' else
		M.add x r1 regenv'
        with Not_found -> regenv')
      M.empty
      (fv cont) in
  (List.fold_left
     (fun e x ->
       if x = fst dest || not (M.mem x regenv) || M.mem x regenv' then e else
       seq(Save(M.find x regenv, x), e)) (* �����Ǥʤ��ѿ���ʬ��ľ���˥����� *)
     (Ans(constr e1' e2'))
     (fv cont),
   regenv')
and g'_call dest cont regenv exp constr ys zs = (* �ؿ��ƤӽФ��Υ쥸����������� (caml2html: regalloc_call) *)
  (List.fold_left
     (fun e x ->
	if x = fst dest || not (M.mem x regenv) then e else
	  seq(Save(M.find x regenv, x), e))
     (Ans(constr
	    (List.map (fun y -> find y Type.Int regenv) ys)
	    (List.map (fun z -> find z Type.Float regenv) zs)))
     (fv cont),
   M.empty)

let h { name = Id.L(x); args = ys; fargs = zs; body = e; ret = t } = (* �ؿ��Υ쥸����������� (caml2html: regalloc_h) *)
  let regenv = M.empty in
  let (i, arg_regs, regenv) =
    List.fold_left
      (fun (i, arg_regs, regenv) y ->
        let r = regs.(i) in
        (i + 1,
	 arg_regs @ [r],
	 (assert (not (is_reg y));
	  M.add y r regenv)))
      (0, [], regenv)
      ys in
  let (d, farg_regs, regenv) =
    List.fold_left
      (fun (d, farg_regs, regenv) z ->
        let fr = fregs.(d) in
        (d + 1,
	 farg_regs @ [fr],
	 (assert (not (is_reg z));
	  M.add z fr regenv)))
      (0, [], regenv)
      zs in
  let a =
    match t with
      | Type.Unit -> Id.gentmp Type.Unit
      | Type.Float -> fregs.(0)
      | _ -> regs.(0) in
  let (e', regenv') = g (a, t) (Ans(Add(zreg, a))) regenv e in
    { name = Id.L(x); args = arg_regs; fargs = farg_regs; body = e'; ret = t }

let f (Prog(data, fundefs, e)) = (* �ץ�������ΤΥ쥸����������� (caml2html: regalloc_f) *)
  Format.eprintf "register allocation: may take some time (up to a few minutes, depending on the size of functions)@.";
  let fundefs' = List.map h fundefs in
  let e', regenv' = g (Id.gentmp Type.Unit, Type.Unit) (Ans(Nop)) M.empty e in
  Prog(data, fundefs', e')


