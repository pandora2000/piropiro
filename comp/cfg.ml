open Printf
open Optt
open List

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

let order (s, nodes) =
  let l = ref [] in
  let s = ref [s] in
    while s <> [] do
      rem

