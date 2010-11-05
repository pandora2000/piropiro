open Printf
open Optt
open List

exception FatalError
exception Break1 of int

let rec rem y x = match x with [] -> [] | h :: t -> if h = y then t else h :: (rem y t)

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
