open ListSet
open Optt
open Cfg
open List
open Printf

exception FatalError
exception Break1 of int
exception ColoringFailed
exception MyNotFound

let replace ((s, rids, aids, g), ienv) gr fgr env fenv tenv =
  let env = map (fun (x, i) -> (x, gr.(i))) env in
  let fenv = map (fun (x, i) -> (x, fgr.(i))) fenv in
    printf "e%!";
    let q x =
      try
	if
	  (try M.find x tenv = Type.Float with Not_found -> printf "%s\n%!" x;raise MyNotFound) then fregs.(assoc x fenv) else regs.(assoc x env)
	    (*TODO:*)
      with Not_found -> (*printf "%s\n%!" x; *)"%r100" in
    let p e = match e with
      | Addzi (x, y) -> Addzi (q x, y)
      | Subz (x, y) -> Subz (q x, q y)
      | Add (x, y, z) -> Add (q x, q y, q z)
      | Sub (x, y, z) -> Sub (q x, q y, q z)
      | Mul (x, y, z) -> Mul (q x, q y, q z)
      | Xor (x, y, z) -> Xor (q x, q y, q z)
      | FLoad (x, y) -> FLoad (q x, y)
      | FSubz (x, y) -> FSubz (q x, q y)
      | FAdd (x, y, z) -> FAdd (q x, q y, q z)
      | FSub (x, y, z) -> FSub (q x, q y, q z)
      | FMul (x, y, z) -> FMul (q x, q y, q z)
      | FDiv (x, y, z) -> FDiv (q x, q y, q z)
      | Flr (x, y) -> Flr (q x, q y)
      | Foi (x, y) -> Foi (q x, q y)
      | Call (x, y, z, w) -> Call (q x, y, map q z, w)
      | IfEq (x, y, z, u, v, w, t) -> IfEq (x, q y, q z, u, v, w, t)
      | IfLE (x, y, z, u, v, w, t) -> IfLE (x, q y, q z, u, v, w, t)
      | IfFEq (x, y, z, u, v, w, t) -> IfFEq (x, q y, q z, u, v, w, t)
      | IfFLE (x, y, z, u, v, w, t) -> IfFLE (x, q y, q z, u, v, w, t)
      | Var (x, y) -> Var (q x, q y)
      | Tuple (x, y) -> Tuple (q x, map q y)
      | Get (x, y, z) -> Get (q x, q y, q z)
      | Put (x, y, z) -> Put (q x, q y, q z)
      | FGet (x, y, z) -> FGet (q x, q y, q z)
      | FPut (x, y, z) -> FPut (q x, q y, q z)
      | ExtArray (x, y) -> ExtArray (q x, y)
      | ExtTuple (x, y) -> ExtTuple (q x, y)
      | LetTuple (x, y) -> LetTuple (map q x, q y)
      | Ret x -> Ret (map q x) in
      Array.iteri (fun i (x, y, z) -> printf "%s\n%!" (string_of_t x);g.(i) <- (p x, y, z)) g;
      (((s, map q rids, map q aids, g), ienv), (gr, fgr))

let rec alloc_func ((bid, rids, aids, blks) as f) tenv =
  let (((s, _, _, _), _) as cfg, lin, lout) = Live.analyze f in
    printf "a%!";
    let lout = Array.of_list (lin.(s) :: (Array.to_list lout)) in
    let len = Array.length lout in
    let env = cups (Array.to_list lout) in
    let (env, fenv) = partition (fun x -> M.find x tenv <> Type.Float) env in
    let (env, fenv) =
      let t env = Array.to_list (Array.mapi (fun i x -> (x, i)) (Array.of_list env)) in
	(t env, t fenv) in
      printf "b%!";
      let ((alout : int list array), (aflout : int list array)) =
	let s f x env = map (fun y -> assoc y env) (find_all f x) in
	let (t, ft) = (Array.make len [], Array.make len []) in
	  for i = 0 to len - 1 do
	    t.(i) <- s (fun x -> M.find x tenv <> Type.Float) lout.(i) env;
	    ft.(i) <- s (fun x -> M.find x tenv = Type.Float) lout.(i) fenv
	  done; (t, ft) in
      let (lout, flout) = (Array.to_list alout, Array.to_list aflout) in
      let (cnt, fcnt) = (length env, length fenv) in
      let k = n_regs and fk = n_fregs in
      let (g, fg) =
	let s c lo =
	  let u = Array.make c [] in
	    for i = 0 to c - 1 do
	      u.(i) <- cups (filter (fun x -> mem i x) lo)
	    done; u in
	  (s cnt lout, s fcnt flout) in
	printf "c%!";
	let (s, fs) =
	  let g_is_empty g = Array.fold_left (fun a b -> b = None && a) true g in
	  let d g k l =
	    let g = Array.map (fun x -> Some x) g in
	    let s = Stack.create () in
	      while not (g_is_empty g) do
		try
		  Array.iteri (fun i x -> match x with
				 | None -> ()
				 | Some y -> if length y < k then raise (Break1 i)) g;
		  Array.iteri (fun i x -> match x with
				 | None -> ()
				 | Some y -> raise (Break1 i)) g
		with Break1 n ->
		  g.(n) <- None;
		  for i = 0 to l - 1 do
		    match g.(i) with
		      | None -> ()
		      | Some x -> g.(i) <- Some (rem n x)
		  done;
		  Stack.push n s
	      done; s in
	    (d g k cnt, d fg fk fcnt) in
	let (g, fg) =
	  let (rs, frs) =
	    let t k = Array.to_list (Array.init k (fun i -> i)) in
	      (t k, t fk) in
	  let c gr s k l rs =
	    let g = Array.make l None in
	      while not (Stack.is_empty s) do
		let i = Stack.pop s in
		let cs = cups (map
				 (fun x -> match g.(x) with
				    | None -> []
				    | Some c -> [c]) gr.(i)) in
		  if length cs >= k then raise ColoringFailed
		  else g.(i) <- Some (find (fun i -> not (mem i cs)) rs)
	      done; Array.map
		(fun x -> match x with None -> raise FatalError | Some y -> y) g in
	    (c g s k cnt rs, c fg fs fk fcnt frs) in
	  (replace cfg g fg env fenv tenv,
	   Array.sub alout 1 (len - 1) , Array.sub aflout 1 (len - 1))

let rec f (fs, (x, y)) tenv =
  (*  print_prog stdout (fs, (x, y));*)
  (map (fun x -> alloc_func x tenv) fs, alloc_func (x, [], [], y) tenv)
