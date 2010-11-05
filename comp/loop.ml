open Printf
open Optt
open List

(*NOTICE:新しいidを作る場合envに追加しなければいけないことに注意*)

type dtree =
  | Leaf of bid
  | Node of dtree list
      
let merge_list x y =
  fold_left (fun a b -> if mem b a then a else b :: a) x y
    
let cap_list l m =
  fold_left (fun a b -> if mem b m then b :: a else a) [] l

let rem_list l m =
  fold_left (fun a b -> if mem b m then a else b :: a) [] l

(*上位者を求める*)
let solve_doms (s, nodes) =
  let all = fst (split nodes) in
  let rec cap_lists l =
    fold_left (fun a b -> cap_list a b) all l in
    Cfg.fpfunc (map (fun x -> (x, all)) all)
      (fun prev ->
	 map
	   (fun (x, (y, _)) ->
	      if x = s then (s, [s])
	      else (x, merge_list
		      (cap_lists (map (fun x -> assoc x prev) y)) [x])) nodes)

(*(*要debug*)いる？*)
let get_imm_doms (s, nodes) =
  let doms = solve_doms (s, nodes) in
    map
      (fun (x, w) ->
	 if x = s then (s, None)
	 else 
	   (x,
	    Some (fst (find
			 (fun (y, z) -> y <> x && mem y w &&
			    not (exists (fun u -> u <> x && not (mem u z)) w))
			 doms)))) doms

(*(*要debug*)いる？*)
let get_doms_tree (s, nodes) =
  let idoms = get_imm_doms (s, nodes) in
  let rec make_tree s =
    let succs = fst (split (find_all (fun (_, x) -> x = Some s) idoms)) in
      match succs with [] -> Leaf s | x -> Node
	(map make_tree x) in
    make_tree s

let get_natural_loops (s, nodes) =
  let doms = solve_doms (s, nodes) in
  let rev_branches =
    fold_left (fun a (x, y) ->
		 (map (fun z -> (x, z))
		    (cap_list y (snd (assoc x nodes)))) @ a) [] doms in
  let nloop_of (n, h) =
    (*xからhを通らずに到達可能なノードのリスト*)
    let m x =
      Cfg.fpfunc [x]
	(fun prev ->
	   fold_left
	     (fun a b ->
		merge_list (rem_list (snd (assoc b nodes)) [h]) a) prev prev) in
      (*hを通らずにnに到達可能なノードでhを上位とするノードのリスト*)
    let m =
      fold_left (fun a b ->
		   if mem n (m b) && mem h (assoc b doms) then b :: a else a)
	[] (map fst nodes) in
      (h, m) in
    map nloop_of rev_branches

let get_loops (s, nodes) =
  let nloops = get_natural_loops (s, nodes) in
    fold_left
      (fun a b ->
	 if mem_assoc b a then a
	 else
	   (b, flatten (map snd (find_all (fun (x, _) -> x = b) nloops))) :: a)
      [] (map fst nloops)

let loops_of_func f =
  get_loops (Cfg.make f)
    
let print_cfg (_, g) =
  iter (fun (x, (_, y)) ->
	  printf "%s\n" x;
	  iter (printf "\t%s\n") y) g

let print_cfg_of_func f = print_cfg (Cfg.make f)

let print_doms d =
  iter (fun (x, y) ->
	  printf "%s\n" x;
	  iter (printf "\t%s\n") y) d

let print_doms_of_func f = print_doms (solve_doms (Cfg.make f))

let print_loop (h, l) =
  printf "%s\n" h;
  iter (fun x -> if x <> h then printf "\t%s\n" x) l

let print_loops ls = List.iter print_loop ls

let print_loops_of_func f =
  print_loops (loops_of_func f)
