open Printf
open Optt
open List
open ListEx
open Alloc

(*TODO:sdiv10など無駄な関数が多くinline展開されてる*)

exception FatalError
exception NotImplemented
exception Break1 of int

let fptable = ref []
let oc = ref stdout
let inst_count = ref 0

let exceps = ["deb"; "debf"; "info"; "bp"; "info2"]
let noouts = ["deb"; "debf"; "info"; "bp"; "info2"]

let prep_op x = if is_anyreg x then String.sub x 1 (String.length x - 1) else x
  
let printl name = fprintf !oc "%s : \n%!" name
let printi name str =
  if not (mem name noouts) then
    (if not (mem name exceps) then incr inst_count;
     fprintf !oc "%s" str)
let printi0 name = printi name (sprintf "\t%s\n%!" name)
let printi1 name op1 = printi name (sprintf "\t%s\t%s\n%!" name (prep_op op1))
let printi2 name op1 op2 = printi name
  (sprintf "\t%s\t%s %s\n%!" name (prep_op op1) (prep_op op2))
let printi3 name op1 op2 op3 = printi name
  (sprintf "\t%s\t%s %s %s\n%!" name (prep_op op1) (prep_op op2) (prep_op op3))

let each_output p f =
  (*printf "function\n%!";*)
  (*print_func stdout f;*)
  (*printf "%s\n" f.fid;*)
  let outblks = ref [] in
  let obstack = Stack.create () in
    (*  printf "%s\n%!" f.fid;*)
  let cenv = f.cenv and fcenv = f.fcenv in
  let rec shuffle swreg trs =
    let trs = find_all (fun (x, y) -> x <> y) trs in
      match partition (fun (_, y) -> mem_assoc y trs) trs with
	| [], [] -> []
	| (x, y) :: trs, [] -> 
	    (y, swreg) :: (x, y) :: shuffle swreg (map
						     (function
							| (y', z) when y = y' -> (swreg, z)
							| yz -> yz)
						     trs)
	| trs, acyc -> acyc @ shuffle swreg trs in
  let get_label_args p l =
    let f = find (fun x -> x.fid = l) (dummies @ p.funcs) in
      map (fun x -> if mem_assoc x f.cenv then regs.(assoc x f.cenv)
	   else fregs.(assoc x f.fcenv)) f.aids in
  let set_args args l kkk =
    let f = partition (fun x -> not (is_freg x)) in
    let sub args toargs regs zreg swreg iname =
      let trs = combine args toargs in
	iter (fun (x, y) -> printi3 iname y zreg x;
		printi3 "info2" "0" (string_of_int kkk) "0")
	  (shuffle swreg trs) in
    let (args, fargs) = f args in
    let (toargs, tofargs) = f (get_label_args p l) in
      sub args toargs regs zreg tmpreg "add";
      sub fargs tofargs fregs fzreg ftmpreg "fadd" in
  let ret_regs x =
    partition (fun x -> not (is_freg x)) (filter (fun x -> is_anyreg x) x) in
  let (get_rets, set_rets) =
    let s iscall (rregs, rfregs) =
      let sub args regs zreg swreg iname =
	let trs = 
	  snd (fold_left
		 (fun (i, a) b ->
		    (i + 1, (if iscall then (regs.(i), b) else (b, regs.(i))) :: a))
		 (0, []) args) in
	  iter (fun (x, y) -> printi3 iname y zreg x;
		  printi3 "info2" "0" (if iscall then "2" else "3") "0")
	    (shuffle swreg trs) in
	sub rregs regs zreg tmpreg "add";
	sub rfregs fregs fzreg ftmpreg "fadd" in
      (s true, s false) in
  let get_block id = get_block f id in
  let rec sub bid =
    (*printf "%s\n%!" bid;*)
    outblks := bid :: !outblks;
    let blk = get_block bid in
    let imm ist =
      let e = ist.inst in
	match e with
	  | Addzi (x, y) -> printi3 "addi" x zreg (string_of_int y)
	  | Subz (x, y) -> printi3 "sub" x zreg y
	  | Add (x, y, z) -> printi3 "add" x y z
	  | Addi (x, y, z) -> printi3 "addi" x y (string_of_int z)
	  | Sub (x, y, z) -> printi3 "sub" x y z
	  | Mul (x, y, z) -> printi3 "mul" x y z
	  | Xor (x, y, z) -> printi3 "xor" x y z
	  | FAdd (x, y, z) -> printi3 "fadd" x y z
	  | FSub (x, y, z) -> printi3 "fsub" x y z
	  | FMul (x, y, z) -> printi3 "fmul" x y z
	  | FDiv (x, y, z) -> printi3 "fdiv" x y z
	  | FSqrt (x, y) -> printi2 "fsqrt" x y
	  | FSubz (x, y) -> printi3 "fsub" x fzreg y
	  | Flr (x, y) -> printi2 "flr" x y
	  | Foi (x, y) -> printi2 "foi" x y
	  | FLoad (x, y) -> 
	      let p = try assoc y !fptable with Not_found ->
		let id = max (map snd !fptable) (- 1) + 1 in
		  fptable := (y, id) :: !fptable; id in
		printi3 "info2" "1" "0" "0";
		printi3 "fldi" x zreg (string_of_int (p + fptoffset))
	  | Var (x, y) ->
	      if x <> y then
		if is_freg x then printi3 "fadd" x fzreg y else printi3 "add" x zreg y
	  | Get (x, y, z) ->
	      if !use_regdisp then printi3 "ldr" x y z else
		(printi3 "add" tmpreg y z; printi3 "ldi" x tmpreg "0")
	  | Geti (x, y, z) -> printi3 "ldi" x y (string_of_int z)
	  | FGet (x, y, z) ->
	      if !use_regdisp then printi3 "fldr" x y z else
		(printi3 "add" tmpreg y z; printi3 "fldi" x tmpreg "0")
	  | FGeti (x, y, z) -> printi3 "fldi" x y (string_of_int z)
	  | Put (x, y, z) ->
	      if !use_regdisp then
		printi3 "str" z x y
	      else
		(printi3 "add" tmpreg x y;
		 printi3 "deb" z tmpreg "0";
		 printi3 "sti" z tmpreg "0")
	  | Puti (x, y, z) ->
	      printi3 "deb" z x (string_of_int y);
	      printi3 "sti" z x (string_of_int y)
	  | FPut (x, y, z) ->
	      if !use_regdisp then
		printi3 "fstr" z x y
	      else
		(printi3 "add" tmpreg x y;
		 printi3 "debf" z tmpreg "0";
		 printi3 "fsti" z tmpreg "0")
	  | FPuti (x, y, z) ->
	      printi3 "debf" z x (string_of_int y);
	      printi3 "fsti" z x (string_of_int y)
	  | Call (x, y, z) ->
	      let save_regs (rreg, rfreg) =
		let (live, flive) = partition (fun x -> mem_assoc x cenv) ist.lout in
		let t isf live env rreg =
		  let fs = dummies @ p.funcs in
		  let s = rem (map_assoc live env) (map int_of_wereg rreg) in
		  let cles = cup [y] (find (fun x -> x.fid = y) fs).callees in
		  let a = set_of
		    (flatten (map (fun x ->
				     let t = find (fun y -> y.fid = x) fs in
				       if isf then t.using_fregs else t.using_regs) cles)) in
		    filter (fun x -> mem x a) s in
		  (t false live cenv rreg, t true flive fcenv rfreg) in
	      let save_restore regs sregs iname offset =
		let i = ref offset in
		  iter (fun x ->
			  printi3 iname regs.(x) spreg (string_of_int !i); incr i) sregs in
	      let rreg = ret_regs x in
	      let (sregs, sfregs) = save_regs rreg in
	      let (off, foff) = (0, length sregs) in
	      let len = foff + length sfregs in
		save_restore regs sregs "sti" off;
		save_restore fregs sfregs "fsti" foff;
		set_args z y 0;
		(*TODO:統一してaddした方が良い(コード量的にも)*)
		if len > 0 then printi3 "addi" spreg spreg (string_of_int len);
		printi1 "call" y;
		if len > 0 then printi3 "addi" spreg spreg (string_of_int (- len));
		get_rets rreg;
		save_restore regs sregs "ldi" off;
		save_restore fregs sfregs "fldi" foff
	  | ExtArray (x, y) | ExtTuple (x, y) ->
	      printi3 "addi" x zreg (string_of_int (assoc y extlist + memext))
	  | IfEq (_, x, y) -> printi3 "bne" x y (nth blk.nextids 1)
	  | IfLE (_, x, y) -> printi3 "bgt" x y (nth blk.nextids 1)
	  | IfEqz (_, x) -> printi3 "bne" x zreg (nth blk.nextids 1)
	  | IfLEz (_, x) -> printi3 "bgt" x zreg (nth blk.nextids 1)
	  | IfGEz (_, x) -> printi3 "bgt" zreg x (nth blk.nextids 1)
	  | IfFEq (_, x, y) -> printi3 "fbne" x y (nth blk.nextids 1)
	  | IfFLE (_, x, y) -> printi3 "fbgt" x y (nth blk.nextids 1)
	  | IfFEqz (_, x) -> printi3 "fbne" x fzreg (nth blk.nextids 1)
	  | IfFLEz (_, x) -> printi3 "fbgt" x fzreg (nth blk.nextids 1)
	  | IfFGEz (_, x) -> printi3 "fbgt" fzreg x (nth blk.nextids 1)
	  | Ret x -> set_rets (ret_regs x); printi0 "return"
	  | Jump (_, y, z) -> set_args z y 1; printi1 "jump" y
	  | Tuple _ | LetTuple _ -> raise FatalError in
      iter (fun x -> imm x) blk.insts;
      match blk.nextids with
	| [th; el] ->
	    Stack.push el obstack;
	    sub th
	| [ct] ->
	    if Stack.is_empty obstack ||
	      (rem (map (fun x -> x.bid)
		      (find_all (fun x -> mem ct x.nextids) f.blks)) !outblks) = []
	    then
	      (printl ct;
	       sub ct)
	    else
	      let l = Stack.pop obstack in
		printi1 "jump" ct;
		printl l;
		sub l
	| [] ->
	    if not (Stack.is_empty obstack) then
	      let l = Stack.pop obstack in
		printl l;
		sub l
	| _ -> raise FatalError in
    (*let ic = !inst_count in*)
    printl f.fid;
    let (p, q) = partition (fun x -> mem_assoc x f.cenv) f.aids in
      iter (fun x -> printi3 "info" "0"
	      (string_of_int (int_of_outreg regs.(assoc x f.cenv))) "0") p;
      iter (fun x -> printi3 "info" "1"
	      (string_of_int (int_of_outreg fregs.(assoc x f.fcenv))) "0") q;
      sub f.fid;
      (*printf "%s %d\n" f.fid (!inst_count - ic);*)
      ()

let f outchan foutchan p=
  fptable := [];
  oc := outchan;
  inst_count := 0;
  (*CPU安定のため*)
  printi0 "nop";
  printi0 "nop";
  (*0xAA送信*)
  printi3 "addi" regs.(0) zreg (string_of_int 0xAA);
  printi1 "ptc" regs.(0);
  (*レジスタ初期化*)
  printi3 "addi" oreg zreg "1";
  printi3 "addi" moreg zreg "-1";
  (*スタックポインタ初期化*)
  printi3 "addi" spreg zreg (string_of_int memsp);
  (*ヒープポインタ初期化*)
  printi3 "addi" hpreg zreg (string_of_int memhp);
  (*外部変数領域初期化*)
  printi3 "addi" regs.(0) zreg "1006";
  printi3 "addi" regs.(1) zreg "0";
  printi1 "call" "min_caml_create_array";
  printi3 "addi" regs.(0) zreg (string_of_int (883 + memext));
  printi3 "sti" regs.(0) zreg (string_of_int (881 + memext));
  printi3 "addi" regs.(0) zreg (string_of_int (886 + memext));
  printi3 "sti" regs.(0) zreg (string_of_int (882 + memext));
  let mend = "min_caml_end" in
    printi1 "jump" mend;
    (*配列関係の関数*)
    printl "min_caml_create_array";
    printi2 "bp" "2" "0";
    printi3 "add" regs.(3) zreg hpreg;
    printi3 "add" hpreg regs.(0) hpreg;
    printi3 "sub" regs.(0) hpreg regs.(0);
    printi3 "add" regs.(2) zreg regs.(1);
    printi3 "sub" regs.(1) hpreg regs.(0);
    printi1 "call" "min_caml_init_array";
    printi3 "add" regs.(0) zreg regs.(3);
    printi0 "return";
    (let el = genid "else" in
       printl "min_caml_init_array";
       printi3 "bne" zreg regs.(1) el;
       printi0 "return";
       printl el;
       printi3 "sti" regs.(2) regs.(0) "0";
       printi3 "addi" regs.(1) regs.(1) "-1";
       printi3 "addi" regs.(0) regs.(0) "1";
       printi1 "jump" "min_caml_init_array");
    printl "min_caml_create_float_array";
    printi2 "bp" "1" "1";
    printi3 "add" regs.(3) zreg hpreg;
    printi3 "add" hpreg regs.(0) hpreg;
    printi3 "sub" regs.(0) hpreg regs.(0);
    printi3 "sub" regs.(1) hpreg regs.(0);
    printi1 "call" "min_caml_init_float_array";
    printi3 "add" regs.(0) zreg regs.(3);
    printi0 "return";
    (let el = genid "else" in
       printl "min_caml_init_float_array";
       printi3 "bne" zreg regs.(1) el;
       printi0 "return";
       printl el;
       printi3 "fsti" fregs.(0) regs.(0) "0";
       printi3 "addi" regs.(1) regs.(1) "-1";
       printi3 "addi" regs.(0) regs.(0) "1";
       printi1 "jump" "min_caml_init_float_array");
    (*read,print系の関数*)
    printl "min_caml_read_int";
    printi2 "bp" "0" "0";
    printi1 "rdi" regs.(0);
    printi0 "return";
    printl "min_caml_read_float";
    printi2 "bp" "0" "0";
    printi1 "rdf" fregs.(0);
    printi0 "return";
    printl "min_caml_print_char";
    printi2 "bp" "1" "0";
    printi1 "ptc" regs.(0);
    printi0 "return";
    printl "min_caml_print_float";
    printi2 "bp" "0" "1";
    printi1 "ptf" fregs.(0);
    printi0 "return";
    iter (each_output p) p.funcs;
    each_output p p.efunc;
    printl mend;
    printi1 "call" p.efunc.fid;
    for i = 0 to length !fptable - 1 do
      fprintf foutchan "%s\n" (Int32.format "%08X" (Int32.bits_of_float (rassoc i !fptable)))
    done;
    fprintf foutchan "FFFFFFFF\n";
    printf "%d instructions, %d fp entries\n" !inst_count (length !fptable)
