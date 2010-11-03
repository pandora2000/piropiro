open Asm
open Printf


type inst = Ret | Ldi | Fld | Sti | Fst | Call | Jump | Bne | Bgt | Blt | Fbne | Fbgt |
    Nadd | Nfadd | Nnop | Naddi | Nmuli | Npc

let ltostr (Id.L x) = x
let soii = function
  | Npc -> "ptc"
  | Nnop -> "nop"
  | Naddi -> "addi"
  | Nmuli -> "muli"
  | Ret -> "return"
  | Ldi -> "ldi"
  | Fld -> "fldi"
  | Sti -> "sti"
  | Fst -> "fsti"
  | Call -> "call"
  | Jump -> "jump"
  | Bne -> "bne"
  | Bgt -> "bgt"
  | Blt -> "blt"
  | Fbne -> "fbne"
  | Fbgt -> "fbgt"
  | Nadd -> "add"
  | Nfadd -> "fadd"
let string_of_inst = function
    (*  | Pc _ -> "ptc" | Pf _ -> "ptf" | Ri -> "rdi" | Rf -> "rdf"*)
  | Ri -> "rdi" | Rf -> "rdf" | Pc _ -> "ptc" | Pf _ -> "ptf"
  | Floor _ -> "flr" | Float_of_int _ -> "foi"
  | Nop -> (soii Nnop) | Add _ -> (soii Nadd) | Sub _ -> "sub" | Mul _ -> "mul"
  | And _ -> "and" | Or _ -> "or" | Nor _ -> "nor" | Xor _ -> "xor"
  | Addi _ -> (soii Naddi) | Subi _ -> "subi" | Muli _ -> (soii Nmuli) | Andi _ -> "andi"
  | Ori _ -> "ori" | Nori _ -> "nori" | Xori _ -> "xori" | Fadd _ -> (soii Nfadd)
  | Fsub _ -> "fsub" | Fmul _ -> "fmul" | Finv _ -> "finv" | Fsqrt _ -> "fsqrt"
  | Fdiv _ -> "fdiv" | Load _ -> (soii Ldi) | Store _ ->  (soii Sti) | Fload _ -> (soii Fld)
  | Fstore _ ->  (soii Fst) | IfEq _ -> "IfEq" | IfLE _ -> "IfLE"
  | IfFEq _ -> "IfEFq" | IfFLE _ -> "IfFLE" | CallCls _ -> "CallCls" | CallDir _ -> "CallDir"
  | Save _ -> "Save" | Restore _ -> "Restore"

let stackset = ref S.empty (* ���Ǥ�Save���줿�ѿ��ν��� (caml2html: emit_stackset) *)
let stackmap = ref [] (* Save���줿�ѿ��Ρ������å��ˤ�������� (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
       if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
       stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
    loc !stackmap
let offset x = List.hd (locate x)
let stacksize () = List.length !stackmap + 1

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i

(* �ؿ��ƤӽФ��Τ���˰������¤��ؤ���(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
    (* find acyclic moves *)
    match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
      | [], [] -> []
      | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
	  (y, sw) :: (x, y) :: shuffle sw (List.map
					     (function
						| (y', z) when y = y' -> (sw, z)
						| yz -> yz)
					     xys)
      | xys, acyc -> acyc @ shuffle sw xys

type a = { nm : string; ac : int; a1 : string;
	   mutable a2 : string; mutable a3 : string; mutable index : int }
      
(*����jump�ε�Υ�ˤĤ���*)
(*TODO:a1,a3�������λ��ͤ��ϰ���ˤ��뤫�Τ����*)
let finst0 n =
  { nm = n; ac = 0; a1 = ""; a2 = ""; a3 = ""; index = 0 } 
let finst1 n a =
  { nm = n; ac = 1; a1 = a; a2 = ""; a3 = ""; index = 0 } 
let finst2 n a b =
  { nm = n; ac = 2; a1 = a; a2 = b; a3 = ""; index = 0 } 
let finst3 n a b c =
  { nm = n; ac = 3; a1 = a; a2 = b; a3 = c; index = 0 } 
let flabel n =
  { nm = n; ac = - 1; a1 = ""; a2 = ""; a3 = ""; index = 0 } 


type dest = Tail | NonTail of Id.t (* �������ɤ�����ɽ���ǡ����� (caml2html: emit_dest) *)
let rec g = function (* ̿����Υ�����֥����� (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' (dest, exp)
  | dest, Let((x, t), exp, e) ->
      (*����tmp������ʤ��Ȥ�Ф�*)
      let tmp = (g' (NonTail(x), exp)) in
	tmp @ (g (dest, e))
and g' e =(* ��̿��Υ�����֥����� (caml2html: emit_gprime) *)
  (* �����Ǥʤ��ä���׻���̤�dest�˥��å� (caml2html: emit_nontail) *)
  let n = string_of_inst (snd e) in
    match e with
      | NonTail(_), Nop -> []
      | NonTail(x), Floor(y) | NonTail(x), Float_of_int(y) ->
	  [finst2 n x y]
      | NonTail(_), Pc(y) | NonTail(_), Pf(y) ->
	  [finst1 n y]
      | NonTail(x), Ri | NonTail(x), Rf ->
	  [finst1 n x]
      | NonTail(x), Sub(y, z') | NonTail(x), Mul(y, z') | NonTail(x), Or(y, z')
      | NonTail(x), Xor(y, z') | NonTail(x), Nor(y, z') | NonTail(x), And(y, z')
      | NonTail(x), Fadd(y, z') | NonTail(x), Fsub(y, z') | NonTail(x), Fmul(y, z')
      | NonTail(x), Fdiv(y, z') | NonTail(x), Finv(y, z') | NonTail(x), Fsqrt(y, z')
      | NonTail(x), Add(y, z') ->
	  [finst3 n x y z']
      | NonTail(x), Addi(y, z') | NonTail(x), Muli(y, z')
      | NonTail(x), Subi(y, z') | NonTail(x), Ori(y, z') | NonTail(x), Xori(y, z')
      | NonTail(x), Nori(y, z') | NonTail(x), Load(y, z') | NonTail(x), Fload(y, z')
      | NonTail(x), Andi(y, z') ->
	  [finst3 n x y (string_of_int z')]
      | NonTail(_), Store(x, y, z') | NonTail(_), Fstore(x, y, z') ->
	  [finst3 n x y (string_of_int z')]
	    (* ����β���̿��μ��� (caml2html: emit_save) *)
      | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
	  save y;
	  [finst3 (soii Sti) x spreg (string_of_int (offset y))]
      | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
	  savef y;
	  [finst3 (soii Fst) x spreg (string_of_int (offset y))]
      | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); []
	  (* �����β���̿��μ��� (caml2html: emit_restore) *)
      | NonTail(x), Restore(y) when List.mem x allregs ->
	  [finst3 (soii Ldi) x spreg (string_of_int (offset y))]
      | NonTail(x), Restore(y) ->
	  assert (List.mem x allfregs);
	  [finst3 (soii Fld) x spreg (string_of_int (offset y))]
	    (* �������ä���׻���̤����쥸�����˥��åȤ���ret (caml2html: emit_tailret) *)
      | Tail, (Nop | Store _ | Fstore _ | Save _ | Pc _ | Pf _ as exp) ->
	  (g' (NonTail(Id.gentmp Type.Unit), exp)) @ [finst0 (soii Ret)]
      | Tail, (Floor _ | Float_of_int _ | Rf as exp) ->
	  (g' (NonTail(fregs.(0)), exp)) @ [finst0 (soii Ret)]
      | Tail, (Add _ | Sub _ | Mul _ | And _ | Load _ 
	| Or _ | Xor _ | Nor _ | Ori _ | Nori _ | Xori _
	| Andi _ | Addi _ | Subi _ | Muli _ | Ri as exp) ->
	  (g' (NonTail(regs.(0)), exp)) @ [finst0 (soii Ret)]
      | Tail, (Fadd _ | Fmul _ | Fdiv _ | Finv _ | Fsub _ | Fsqrt _ | Fload _  as exp) ->
	  (g' (NonTail(fregs.(0)), exp)) @ [finst0 (soii Ret)]
      | Tail, (Restore(x) as exp) ->
	  (match locate x with
	     | [i] -> g' (NonTail(regs.(0)), exp)
	     | [i; j] when i + 1 = j -> g' (NonTail(fregs.(0)), exp)
	     | _ -> assert false) @ [finst0 (soii Ret)]
      | Tail, IfEq(x, y', e1, e2) ->
	  g'_tail_if e1 e2 x y' (soii Bne)
      | Tail, IfLE(x, y', e1, e2) ->
	  g'_tail_if e1 e2 x y' (soii Bgt)
      | Tail, IfFEq(x, y, e1, e2) ->
	  g'_tail_if e1 e2 x y (soii Fbne)
      | Tail, IfFLE(x, y, e1, e2) ->
	  g'_tail_if e1 e2 x y (soii Fbgt)
      | NonTail(z), IfEq(x, y', e1, e2) ->
	  g'_non_tail_if (NonTail(z)) e1 e2 x y' (soii Bne)
      | NonTail(z), IfLE(x, y', e1, e2) ->
	  g'_non_tail_if (NonTail(z)) e1 e2 x y' (soii Bgt)
      | NonTail(z), IfFEq(x, y, e1, e2) ->
	  g'_non_tail_if (NonTail(z)) e1 e2 x y (soii Fbne)
      | NonTail(z), IfFLE(x, y, e1, e2) ->
	  g'_non_tail_if (NonTail(z)) e1 e2 x y (soii Fbgt)
	    (* �ؿ��ƤӽФ��β���̿��μ��� (caml2html: emit_call) *)
      | Tail, CallCls(x, ys, zs) -> raise Exit
      | Tail, CallDir(Id.L(x), ys, zs) -> (* �����ƤӽФ� *)
	  (g'_args [] ys zs) @ [finst1 (soii Jump) x]
      | NonTail(a), CallCls(x, ys, zs) -> raise Exit
      | NonTail(a), CallDir(Id.L(x), ys, zs) ->
	  let tmp = (g'_args [] ys zs) in
	  let ss = stacksize () in
	    tmp @
	      [finst3 (soii Naddi) spreg spreg (string_of_int ss);
	       finst1 (soii Call) x;
	       finst3 "subi" spreg spreg (string_of_int ss)]
	    @
	      (if List.mem a allregs && a <> regs.(0) then
		 [finst3 (soii Nadd) a zreg regs.(0)]
	       else if List.mem a allfregs && a <> fregs.(0) then
		 [finst3 (soii Nfadd) a fzreg fregs.(0)] else [])
and g'_tail_if e1 e2 x y bn =
  let b_else = Id.genid "else" in
  let stackset_back = !stackset in
  let tmp = 
    [finst3 bn x y b_else] @
      (g (Tail, e1)) @
      [flabel b_else] in
    stackset := stackset_back;
    tmp @ (g (Tail, e2))
and g'_non_tail_if dest e1 e2 x y bn =
  let b_else = Id.genid ("else") in
  let b_cont = Id.genid ("cont") in
  let stackset_back = !stackset in
  let tmp = 
    [finst3 bn x y b_else] @
      (g (dest, e1)) in
  let stackset1 = !stackset in
  let tmp2 = 
    [finst1 (soii Jump) b_cont;
     flabel b_else] in
    stackset := stackset_back;
    let tmp3 = 
      (g (dest, e2)) @
	[flabel b_cont] in
    let stackset2 = !stackset in
      stackset := S.inter stackset1 stackset2;
      tmp @ tmp2 @ tmp3
and g'_args x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
    (List.map
       (fun (y, r) -> finst3 (soii Nadd) r zreg y)
       (shuffle swreg yrs)) @
      let (d, zfrs) =
	List.fold_left
	  (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
	  (0, [])
	  zs in
	(List.map
	   (fun (z, fr) ->
	      finst3 (soii Nfadd) fr fzreg z)
	   (shuffle fswreg zfrs))

let h { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  let tmp = [flabel x] in
    tmp @ (stackset := S.empty;
	   stackmap := [];
	   g (Tail, e))

let prep_op x =
  if is_reg x then String.sub x 1 (String.length x - 1) else x
    
let string_of_a x =
  if x.ac = - 1 then
    sprintf "%s : " x.nm
  else if x.ac = 0 then
    sprintf "\t%s" x.nm
  else if x.ac = 1 then
    sprintf "\t%s\t%s" x.nm (prep_op x.a1)
  else if x.ac = 2 then
    sprintf "\t%s\t%s %s" x.nm (prep_op x.a1) (prep_op x.a2)
  else 
    sprintf "\t%s\t%s %s %s" x.nm (prep_op x.a1) (prep_op x.a2) (prep_op x.a3)

let string_of_alist (x, _) =
  sprintf "%s\n"
    (String.concat "\n"
       (List.map (fun y -> string_of_a y) x))



let string_of_flist (_, x) =
  (*  print_endline (string_of_int (List.length x));*)
  sprintf "%s\n"
    (String.concat "\n"
       (List.map (fun y -> Int32.format "%08X" (Int32.bits_of_float y)) x))


      

      
      
let f oc foc istest memext memin memout memsp memhp floffset (Prog(fl, fundefs, e)) =
  (*���Ĥ�*)
  if istest then ignore (memext + memin + memout + memsp + memhp + floffset);
  let lmain = Id.genid "main" in
  let fli = Array.of_list fl in
    printf "fp table size is %d\n" (Array.length fli);
    let ret =
      List.flatten
	[
	  (if istest then [] else 
	     (List.flatten
		[
		  [
		    (*CPU����Τ���*)
		    finst0 (soii Nnop);
		    finst0 (soii Nnop);
		    (*0xaa����*)
		    finst3 (soii Naddi) regs.(0) zreg (string_of_int 0xaa);
		    finst1 (soii Npc) regs.(0);
		    (*�����å��ݥ��󥿽����*)
		    finst3 (soii Naddi) spreg zreg (string_of_int memsp);
		    (*�ҡ��ץݥ��󥿽����*)
		    (*memhp���礭���ΤǤȤꤢ����TODO:*)
		    finst3 (soii Naddi) hpreg zreg (string_of_int (memhp / 10));
		    finst3 (soii Nmuli) hpreg hpreg (string_of_int 10);
		    (*���ϥǡ����ݥ��󥿽����*)
		    finst3 (soii Naddi) regs.(0) zreg (string_of_int (memout + 1));
		    finst3 (soii Sti) regs.(0) zreg (string_of_int memout);
		  ];
		  (*�����ѿ��ΰ�����*)
		  [finst3 (soii Naddi) regs.(0) zreg (string_of_int (883 + memext));
		   finst3 (soii Sti) regs.(0) zreg (string_of_int (881 + memext))];
		  [finst3 (soii Naddi) regs.(0) zreg (string_of_int (886 + memext));
		   finst3 (soii Sti) regs.(0) zreg (string_of_int (882 + memext))];
		]));
	   [finst1 (soii Jump) lmain];
	   (List.flatten (List.map (fun fundef -> h fundef) fundefs));
	   [flabel lmain];
	   (stackset := S.empty;
	    stackmap := [];
	    g (NonTail(regs.(0)), e))
	  ] in
	let ret =
	  List.map (fun x ->
		      if x.nm = (soii Fld) && not (is_reg x.a2) then
			try
			  for i = 0 to Array.length fli - 1 do
			    if (match fli.(i) with (Id.L y, _) -> y) = x.a2 then
			      (x.a2 <- zreg; x.a3 <- string_of_int (i + floffset); raise Exit)
			  done; x
			with Exit -> x
		      else x) ret in
	let ret = (ret, snd (List.split fl)) in
	  output_string oc (string_of_alist ret);
	  output_string foc (string_of_flist ret);
	  output_string foc "FFFFFFFF\n"
