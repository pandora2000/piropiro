open Printf
open Optt
open List

exception FatalError
exception NotImplemented
exception Break1 of int

let fptable = ref []
let oc = ref stdout

let printl name = fprintf !oc "%s : \n" name
let printi0 name = fprintf !oc "\t%s\n" name
let printi1 name op1 = fprintf !oc "\t%s\t%s\n" name op1
let printi2 name op1 op2 = fprintf !oc "\t%s\t%s %s\n" name op1 op2
let printi3 name op1 op2 op3 = fprintf !oc "\t%s\t%s %s %s\n" name op1 op2 op3

let each_output ((s, g), ienv) tenv =
  let find_index x y =
    try
      Array.iteri (fun i z -> if x = z then raise (Break1 i)) y; raise Not_found
    with Break1 i -> i in
  let mem_array x y =
    try
      Array.iter (fun z -> if x = z then raise Exit) y; false
    with Exit -> true in
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
		let id = ListSet.max (map snd !fptable) + 1 in
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
	    let len = n_regs + n_fregs in
	      (*subiは完璧にaddiでかけるのでimm-op2にしたらどうか*)
	      printi3 "subi" spreg spreg (string_of_int len);
	      for i = 0 to n_regs - 1 do
		printi3 "sti" regs.(i) spreg (string_of_int i)
	      done;
	      for i = 0 to n_fregs - 1 do
		printi3 "fsti" fregs.(i) spreg (string_of_int (i + n_regs))
	      done;
	      (let r = ref 0 in
	       let fr = ref 0 in
	       let p = Array.of_list z in
		 for i = 0 to Array.length p - 1 do
		   if is_freg p.(i) then
		     (if int_of_reg p.(i) <> !fr then
			if mem_array fregs.(!fr) p then
			  let k = find_index fregs.(!fr) p in
			    p.(k) <- p.(i);
			    printi3 "fadd" ftmpreg fzreg p.(k);
			    printi3 "fadd" fregs.(!fr) fzreg p.(i);
			    printi3 "fadd" p.(i) fzreg ftmpreg
			else printi3 "fadd" fregs.(!fr) fzreg p.(i);
		      incr fr)
		   else 
		     (if int_of_reg p.(i) <> !r then
			if mem_array regs.(!r) p then
			  let k = find_index regs.(!r) p in
			    p.(k) <- p.(i);
			    printi3 "fadd" tmpreg zreg p.(k);
			    printi3 "fadd" regs.(!r) zreg p.(i);
			    printi3 "fadd" p.(i) zreg tmpreg
			else printi3 "fadd" regs.(!fr) zreg p.(i);
		      incr r)
		 done);
	      printi1 "call" y;
	      if is_freg x then
		(for i = 0 to n_regs - 1 do
		   printi3 "sti" regs.(i) spreg (string_of_int i)
		 done;
		 for i = 1 to n_fregs - 1 do
		   printi3 "fsti" fregs.(i) spreg (string_of_int (i + n_regs))
		 done;
		 printi3 "fadd" x fzreg fregs.(0);
		 printi3 "fsti" fregs.(0) spreg (string_of_int (n_regs)))
	      else
		(for i = 1 to n_regs - 1 do
		   printi3 "sti" regs.(i) spreg (string_of_int i)
		 done;
		 for i = 0 to n_fregs - 1 do
		   printi3 "fsti" fregs.(i) spreg (string_of_int (i + n_regs))
		 done;
		 printi3 "add" x zreg regs.(0);
		 printi3 "sti" regs.(0) spreg (string_of_int 0));
	      printi3 "addi" spreg spreg (string_of_int len)
	| IfEq _ | IfLE _ | IfFEq _ | IfFLE _ | Ret -> raise FatalError
	| ExtArray _ 
	| ExtTuple _ -> raise NotImplemented in
    let if_inst e =
      match e with
	| IfEq _ -> "bne" | IfLE _ -> "bgt" | IfFEq _ -> "fbne" | IfFLE _ -> "fbgt"
	| _ -> raise FatalError in
      match e with
	| IfEq (_, y, z, _, v, w) | IfLE (_, y, z, _, v, w)
	| IfFEq (_, y, z, _, v, w) | IfFLE (_, y, z, _, v, w) ->
	    (match sucs with
	       | [th; el] ->
		   (match w with
		      | Some ct ->
			  printi3 (if_inst e) y z v;
			  loop (Some ct) th g;
			  printi1 "jump" ct;
			  loop None el g
		      | None ->
			  printi3 (if_inst e) y z v;
			  loop None th g;
			  loop None el g)
	       | _ -> raise FatalError)
	| Ret -> printi0 "return"
	| _ ->
	    imm_out e;
	    (match sucs with
	       | [ct] ->
		   (match c with
		      | Some x when x = (assoc ct ienv) -> ()
		      | _ -> loop None ct g)
	       | _ -> raise FatalError)
	      (*thenはcontを渡してそれがあったらおわる。*)
  in
    ()

let f (l, e) tenv =
  fptable := [];
  oc := stdout;
  iter (fun x -> each_output x tenv) l;
  each_output e tenv
