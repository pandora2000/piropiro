open Printf
open Optt
open List

exception FatalError
exception Break1 of int
exception MyNotFound
  
let rec rem y x = match x with [] -> [] | h :: t -> if h = y then t else h :: (rem y t)
  
let cup x y = fold_left (fun a b -> if mem b a then a else b :: a) x y

let find_index f x =
  try
    Array.iteri (fun i y -> if f y then raise (Break1 i)) x; - 1
  with Break1 i -> i

let fpfunc s f =
  let prev = ref [] in
  let cur = ref s in
  let eq_as_set x y =
    (not (exists (fun a -> not (mem a y)) x)) &&
      (not (exists (fun a -> not (mem a x)) y)) in
    while not (eq_as_set !prev !cur) do
      prev := !cur;
      cur := f !cur
    done; !cur

(*制御フローグラフ作成*)
let make ((sbid, rids, aids, blks) : func) =
  let pred x al =
    fst (split (find_all (fun (_, b) -> mem x b) al)) in
  let alist =
    fold_left
      (fun a (bid, (ts, bs)) ->
	 (bid, (if ts = [] then bs
		else
		  match nth ts (length ts - 1) with
		      (*自分自身への末尾Callのときのみ考慮*)
		    | Call (_, y, _, _) when y = sbid && bs = [] -> [sbid]
		    | _ -> []) @ bs) :: a) [] blks in
    (sbid, map (fun (a, b) -> (a, (pred a alist, b))) alist)

let rev_order (s, nodes) =
  let ns = Array.of_list nodes in
  let l = ref [] in
  let s = ref [s] in
    while !s <> [] do
      match !s with [] -> raise FatalError | h :: t ->
	s := t;
	l := h :: !l;
	let n = find_index (fun (x, _) -> x = h) ns in
	let (sucs : string list) = snd (snd ns.(n)) in
	  iter (fun m -> 
		  (ns.(n) <- let (x, (y, _)) = ns.(n) in (x, (y, rem m sucs)));
		  let k = find_index (fun (x, _) -> x = m) ns in
		  let (x, (pred, y)) = ns.(k) in
		  let npred = rem h pred in
		    ns.(k) <- (x, (npred, y));
		    if npred = [] then s := m :: !s) sucs
    done; !s

let order x = rev (rev_order x)

let max x y = if x < y then y else x

(*基本ブロックに分けない制御フローグラフ*)
let make_block_no_block sbid rids (bid, (ts, ns)) =
  let tbl = Array.make (length ts + 1) ("", None, []) in
  let nid = ref (genid "nid") in
  let t = ref bid in
  let i = ref 0 in
  let cblk = ref ts in
  let next () = match !cblk with [] -> raise FatalError | h :: t -> cblk := t; h in
    if !cblk = [] then
      (if ns = [] then tbl.(0) <- (!t, Some (Ret rids), [])
       else tbl.(0) <- (!t, Some Nop, ns);
       incr i)
    else 
      while !cblk <> [] do
	let c = next () in
	  if !cblk = [] then
	    (match c with
	       | Call (_, y, _, _) when ns = [] && y = sbid -> tbl.(!i) <- (!t, Some c, [sbid])
	       | Call _ when ns = [] -> tbl.(!i) <- (!t, Some c, [])
	       | Ret _ -> tbl.(!i) <- (!t, Some c, [])
	       | _ when ns = [] -> tbl.(!i) <- (!t, Some c, [!nid]); cblk := [Ret rids]
	       | _ -> tbl.(!i) <- (!t, Some c, ns))
	  else tbl.(!i) <- (!t, Some c, [!nid]);
	  incr i;
	  t := !nid;
	  nid := genid "nid"
      done;
    Array.to_list (Array.sub tbl 0 !i)

let make_no_block (bid, rids, aids, blks) =
  let env = ref [] in
  let i = ref 0 in
  let p = flatten (map (fun ((id, _) as x) ->
		          env := (!i, id) :: !env;
			  printf "bid: %s %d\n%!" id !i;
			  map (fun (x, y, z) ->
				 match y with
				   | Some _ -> 
				       incr i;
				       (x, !i - 1, y, z)
				   | None -> (x, !i, y, z)) (make_block_no_block bid rids x)
		       ) blks) in
  let len = !i in
  let (_, s, _, _) = find (fun (x, _, _, _) -> x = bid) p in
  let p = map (fun (x, i, y, z) ->
		 (i,
		  (y, map
		     (fun v ->
			let (_, n, _, _) = find (fun (w, _, _, _) -> w = v) p in n) z))) p in
(*  let p =
    fold_left (fun a (i, (e, ss)) ->
		 match e with
		   | None -> map (fun ((i2, (e2, ss2)) as t) ->
				    if mem i ss2 then (i2, (e2, cup ss (rem i ss2)))
				    else t) a
		   | _ -> a) p p in*)
  let p = fold_left (fun a (i, (e, ss)) ->
		       match e with None -> a | Some x -> (i, (x, ss)) :: a) [] p in
  let p = map (fun (i, (e, sucs)) ->
		 (i, (e, fst (split (find_all (fun (_, (_, ss)) -> mem i ss) p)), sucs))) p in
  let q = Array.make len (Var ("", ""), [], []) in
    for i = 0 to len - 1 do
      try
	q.(i) <- assoc i p
      with Not_found -> raise MyNotFound
    done; ((s, rids, aids, q), !env)

let rev_order_no_block ((sid, _, _, ar), _) =
  let ary = Array.copy ar in
  let l = ref [] in
  let s = ref [sid] in
    while !s <> [] do
      match !s with [] -> raise FatalError | h :: t ->
	s := t;
	l := h :: !l;
	let (_, _, sucs) = ary.(h) in
	  iter (fun m ->
		  (ary.(h) <- let (x, y, _) = ary.(h) in (x, y, rem m sucs));
		  let (x, y, z) = let (x, y, z) = ary.(m) in (x, rem h y, z) in
		    (ary.(m) <- (x, y, z));
		    if y = [] then s := m :: !s) sucs
    done;
    !l

(*
  let rev_array a =
  for i = 0 to (Array.length a - 1) / 2 do
  let j = Array.length a - 1 - i in
  let t = a.(i) in
  a.(i) <- a.(j);
  a.(j) <- t
  done; a
*)

let order_no_block x =
  rev (rev_order_no_block x)

let print_cfg_no_block oc (_, ary) =
  for i = 0 to Array.length ary - 1 do
    let (e, p, n) = ary.(i) in
      match e with
	| None -> fprintf oc "\t%d\n" i
	| Some x ->
	    fprintf oc "\t%d\n" i;
	    print_t oc x;
	    fprintf oc "\t(%s) -> (%s)\n" (String.concat ", " (map string_of_int p))
	      (String.concat ", " (map string_of_int n))
  done
    
