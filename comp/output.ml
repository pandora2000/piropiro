open Printf
open Optt
open List

exception FatalError
exception NotImplemented
exception Break1 of int

exception MyNotFound
exception MyNotFound2
exception MyNotFound3
exception MyNotFound4
exception MyNotFound5
exception MyNotFound6
exception MyNotFound7
exception MyNotFound8

let fptable = ref []
let oc = ref stdout

let rassoc x y = try fst (find (fun (_, w) -> w = x) y) with Not_found -> raise MyNotFound

let prep_op x = if is_wereg x then String.sub x 1 (String.length x - 1) else x
    
let printl name = fprintf !oc "%s : \n%!" name
let printi0 name = fprintf !oc "\t%s\n%!" name
let printi1 name op1 = fprintf !oc "\t%s\t%s\n%!" name (prep_op op1)
let printi2 name op1 op2 = fprintf !oc "\t%s\t%s %s\n%!" name (prep_op op1) (prep_op op2)
let printi3 name op1 op2 op3 =
  fprintf !oc "\t%s\t%s %s %s\n%!" name (prep_op op1) (prep_op op2) (prep_op op3)

let each_output ((((sbid, rids, aids, g), ienv), (cg, fcg)), lout, flout) tenv =
  let find_index x y =
    try
      Array.iteri (fun i z -> if x = z then raise (Break1 i)) y; raise MyNotFound2
    with Break1 i -> i in
  let mem_array x y =
    try
      Array.iter (fun z -> if x = z then raise Exit) y; false
    with Exit -> true in
  let set_args largs =
    let set i r regs args zreg tmpreg inm =
      if args.(i) <> regs.(!r) then
	if mem_array regs.(!r) args then
	  let k = find_index regs.(!r) args in
	    printi3 inm tmpreg zreg regs.(!r);
	    printi3 inm regs.(!r) zreg args.(i);
	    printi3 inm args.(i) zreg tmpreg;
	    args.(k) <- args.(i)
	else printi3 inm regs.(!r) zreg args.(i);
      incr r in
    let r = ref 0 and fr = ref 0 in
    let p = Array.of_list largs in
      for i = 0 to Array.length p - 1 do
	if is_freg p.(i) then set i fr fregs p fzreg ftmpreg "fadd"
	else set i r regs p zreg tmpreg "add"
      done in
  let get_args largs =
    let (acnt, facnt) =
      let (a, b) = partition (fun x -> not (is_freg x)) largs in
	(length a, length b) in
    let get i r ior cnt regs args zreg tmpreg inm =
      if args.(i) <> regs.(!r) then
	let k = ior args.(i) in
	  if k < cnt then
	    (printi3 inm tmpreg zreg args.(i);
	     printi3 inm args.(i) zreg regs.(!r);
	     printi3 inm regs.(!r) zreg tmpreg;
	     args.(k) <- args.(i))
	  else printi3 inm args.(i) zreg regs.(!r);
	  incr r in
    let r = ref 0 and fr = ref 0 in
    let p = Array.of_list largs in
      for i = 0 to Array.length p - 1 do
	if is_freg p.(i) then get i fr int_of_freg facnt fregs p fzreg ftmpreg "fadd"
	else get i r int_of_reg acnt regs p zreg tmpreg "add"
      done in
  let rec loop c s g =
    let (e, _, (sucs : int list)) = g.(s) in
    let imm_out e =
      match e with
	| Addzi (x, y) -> printi3 "addi" x zreg (string_of_int y)
	| Subz (x, y) -> printi3 "sub" x zreg y
	| Add (x, y, z) -> printi3 "add" x y z
	| Sub (x, y, z) -> printi3 "sub" x y z
	| Mul (x, y, z) -> printi3 "mul" x y z
	| Xor (x, y, z) -> printi3 "xor" x y z
	| FAdd (x, y, z) -> printi3 "fadd" x y z
	| FSub (x, y, z) -> printi3 "fsub" x y z
	| FMul (x, y, z) -> printi3 "fmul" x y z
	| FDiv (x, y, z) -> printi3 "fdiv" x y z
	| FLoad (x, y) ->
	    let p =
	      try
		assoc y !fptable
	      with Not_found ->
		let id = ListSet.max (map snd !fptable) (- 1) + 1 in
		  fptable := (y, id) :: !fptable; id in
	      printi3 "fldi" x zreg (string_of_int (p + fptoffset))
	| FSubz (x, y) -> printi3 "fsub" x fzreg y
	| Flr (x, y) -> printi2 "flr" x y
	| Foi (x, y) -> printi2 "foi" x y
	| Var (x, y) -> if x <> y then printi3 "add" x zreg y
	| Get (x, y, z) -> printi3 "add" tmpreg y z; printi3 "ldi" x tmpreg "0"
	| Put (x, y, z) -> printi3 "add" tmpreg x y; printi3 "sti" z tmpreg "0"
	| FGet (x, y, z) -> printi3 "add" tmpreg y z; printi3 "fldi" x tmpreg "0"
	| FPut (x, y, z) -> printi3 "add" tmpreg x y; printi3 "fsti" z tmpreg "0"
	| Tuple (x, y) ->
	    let z = Array.of_list y in
	    let len = Array.length z in
	      printi3 "add" x zreg hpreg;
	      printi3 "addi" hpreg hpreg (string_of_int len);
	      for i = 0 to len - 1 do
		printi3
		  (if M.find z.(i) tenv = Type.Float then "fsti" else "sti")
		  z.(i) x (string_of_int i)
	      done
		(*生存解析の結果で適化可能*)
	| LetTuple (x, y) ->
	    let z = Array.of_list x in
	    let len = Array.length z in
	      for i = 0 to len - 1 do
		printi3
		  (if is_freg z.(i) then "fldi" else "ldi")
		  z.(i) y (string_of_int i)
	      done
		(*生存解析の結果で適化可能*)
	| Call (x, y, z, w) ->
	    let save_regs isfr lout g =
	      Array.of_list
		(ListSet.rem
		   (map (fun x -> g.(x)) lout)
		   (if is_freg x = isfr then [int_of_wereg x] else [])) in
	    let save_restore regs srgs inm offset =
	      for i = 0 to Array.length srgs - 1 do
		printi3 inm regs.(srgs.(i)) spreg (string_of_int (i + offset))
	      done in
	      (*callでlive outなもので返り値以外を退避*)
	    let srgs = save_regs false lout.(s) cg in
	    let sfrgs = save_regs true flout.(s) fcg in
	    let len = Array.length srgs + Array.length sfrgs in
	      (*subiは完璧にaddiでかけるのでimm-op2にしたらどうか*)
	      if len > 0 then printi3 "subi" spreg spreg (string_of_int len);
	      save_restore regs srgs "sti" 0;
	      save_restore fregs sfrgs "fsti" (Array.length srgs);
	      set_args z;
	      printi1 "call" y;
	      if is_freg x then (if fregs.(0) <> x then printi3 "fadd" x fzreg fregs.(0))
	      else (if regs.(0) <> x then printi3 "add" x zreg regs.(0));
	      save_restore regs srgs "ldi" 0;
	      save_restore fregs sfrgs "fldi" (Array.length srgs);
	      if len > 0 then printi3 "addi" spreg spreg (string_of_int len)
	| IfEq _ | IfLE _ | IfFEq _ | IfFLE _ | Ret _ -> raise FatalError
	| ExtArray _ 
	| ExtTuple _ -> raise NotImplemented in
    let if_inst e =
      match e with
	| IfEq _ -> "bne" | IfLE _ -> "bgt" | IfFEq _ -> "fbne" | IfFLE _ -> "fbgt"
	| _ -> raise FatalError in
      match e with
	| Ret _ -> printi0 "return"
	| IfEq (_, y, z, _, v, _, w) | IfLE (_, y, z, _, v, _, w)
	| IfFEq (_, y, z, _, v, _, w) | IfFLE (_, y, z, _, v, _, w) ->
	    (match sucs with
	       | [th; el] ->
		   (match w with
		      | Some ct ->
			  printi3 (if_inst e) y z v;
			  loop (Some ct) th g;
			  printi1 "jump" ct;
			  printl v;
			  loop (Some ct) el g;
			  (match c with
			     | Some x when x = ct -> ()
			     | _ ->
				printl ct;
				loop c (rassoc ct ienv) g)
		      | None ->
			  printi3 (if_inst e) y z v;
			  loop c th g;
			  printl v;
			  loop c el g);
	       | _ -> printf "aa%!"; raise FatalError)
	| Call (_, y, z, _) when sucs = [] || sucs = [sbid] ->
	    set_args z;
	    printi1 "jump" y
	| _ ->
	    imm_out e;
	    (match sucs with
	       | [ct] ->
		   if mem_assoc ct ienv then
		     (match c with
			| Some x when x = assoc ct ienv -> ()
			| _ -> loop c ct g)
		   else loop c ct g
	       | [] -> ()
	       | _ -> printf "ab%!"; raise FatalError) in
    printl (assoc sbid ienv);
    get_args aids;
    loop None sbid g

let f outchan (l, e) tenv =
  printf "g%!";
  fptable := [];
  oc := stdout;(*outchan;*)
  (*CPU安定のため*)
  printi0 "nop";
  printi0 "nop";
  (*0xaa送信*)
  printi3 "addi" regs.(0) zreg (string_of_int 0xaa);
  printi1 "ptc" regs.(0);
  (*スタックポインタ初期化*)
  printi3 "addi" spreg zreg (string_of_int memsp);
  (*ヒープポインタ初期化*)
  (*memhpは大きいTODO:*)
  printi3 "addi" hpreg zreg (string_of_int (memhp / 10));
  printi3 "muli" hpreg hpreg (string_of_int 10);
  (*外部変数領域初期化*)
  printi3 "addi" regs.(0) zreg (string_of_int (883 + memext));
  printi3 "sti" regs.(0) zreg (string_of_int (881 + memext));
  printi3 "addi" regs.(0) zreg (string_of_int (886 + memext));
  printi3 "sti" regs.(0) zreg (string_of_int (882 + memext));
  let ((((s, _, _, _), ienv), _), _, _) = e in
    printi1 "jump" (try (assoc s ienv) with Not_found -> raise MyNotFound4);
    iter (fun x -> each_output x tenv) l;
    each_output e tenv
