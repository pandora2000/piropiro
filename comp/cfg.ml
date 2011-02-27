open ListEx
open Printf
open Optt
open List

exception FatalError

let reverse_topological_sort ords =
  let oid = ref 0 in
  let genoid () = let i = !oid in incr oid; i in
  let ords = ref (map (fun (a, b, c) -> { ordid = a; ordsuccs = b; ordvalue = c }) ords) in
  let res = ref [] in
  let nex = ref [] in
    while !ords <> [] do
      nex := [];
      iter (fun x ->
	      if x.ordsuccs = [] then
		(iter (fun y -> y.ordsuccs <- rem_one y.ordsuccs x.ordid) !ords;
		 res := (genoid (), x.ordvalue) :: !res)
	      else nex := x :: !nex) !ords;
      if eq_as_set !ords !nex then
	(res := (genoid (), (hd !ords).ordvalue) :: !res;
	 nex := rem_one !ords (hd !ords));
      ords := !nex
    done; !res

let make_func f =
  let nid = ref 0 in
  let geniid () = let i = !nid in incr nid; i in
  let blks =
    map (fun x ->
	   if x.Optt.insts = [] then
	     (x.Optt.bid, [geniid (), None, ref []], x.Optt.nextids)
	   else
	     (x.Optt.bid, map (fun y -> (geniid (), Some y, ref [])) x.Optt.insts,
	      x.Optt.nextids)) f.Optt.blks in
  let env = map (fun (b, c, _) -> (b, (let (e, _, _)  = (hd c) in e))) blks in
  let blks = map (fun (_, y, z) -> (y, map_assoc z env)) blks in
  let () =
    iter (fun (y, z) ->
	    ignore (fold_right (fun (b, _, d) a -> d := a; [b]) y z)) blks in
  let insts = flatten (map (fun (x, y) -> x) blks) in
  let () =
    let f v = fun (w, u, _) -> w = v && u = None in
      while exists (fun (_, _, x) -> exists (fun y -> exists (f y) insts) !x) insts do
	iter (fun (_, _, z) ->
		z := map (fun v -> if exists (f v) insts then
			    let (_, _, k) = find (f v) insts in hd !k else v) !z) insts
    done in
  let insts =
    map (fun (a, x, b) -> match x with Some y -> (a, y, b) | None -> raise FatalError)
      (filter (fun (_, x, _) -> x <> None) insts) in
  let nid = ref 0 in
  let geniid () = let i = !nid in incr nid; i in
  let ienv = map (fun (x, _, _) -> (x, geniid ())) insts in
  let env = map (fun (x, y) -> (x, try assoc y ienv with _ -> -1)) env in
  let insts = map (fun (x, y, z) -> z := map_assoc !z ienv; (assoc x ienv, y, z)) insts in
  let insts = map (fun (x, y, z) -> y.id <- x; y.succs <- !z; y) insts in
    iter (fun x ->
	    x.preds <- map (fun y -> y.id) (find_all (fun y -> mem x.id y.succs) insts)) insts;
    f.sid <- assoc f.fid env;
    insts

let rev_order l =
  let res = reverse_topological_sort (map (fun x -> (x.id, x.succs, x)) l) in
  let () = iter (fun (x, y) -> y.ord <- x) res in
  let ords =
    let a = Array.make (length l) 0 in
      iter (fun x -> a.(x.ord) <- x.id) l;
      a in
    ords

let set_live_func cfg =
  let (lin, lout) =
    Live.analyze (rev_order cfg) (map (fun x -> (x.id, (x.inst, x.succs))) cfg) in
    iter (fun (i, x) -> (find (fun x -> x.id = i) cfg).lin <- x) lin;
    iter (fun (i, x) -> (find (fun x -> x.id = i) cfg).lout <- x) lout

let make p =
  iter (fun f -> f.cfg <- make_func f) p.funcs;
  p.efunc.cfg <- make_func p.efunc

let set_live p =
  iter (fun f -> (*print_func stdout f;*) set_live_func f.cfg) p.funcs;
  (*print_func stdout p.efunc;*)
  set_live_func p.efunc.cfg
