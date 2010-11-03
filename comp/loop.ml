open Printf
open Optt
open List

(*NOTICE:新しいidを作る場合envに追加しなければいけないことに注意*)

(*末尾Callかそうでないかでどう分けるかについて*)
(*まったく分けない*)
(*末尾Callの場合、Jumpに置き換えて、Jump後の関数が他の関数からも呼ばれているならば、関数を複製する*)
(*複製を作らない場合はCallを残せば良い*)
(*後者の方が良さげだが、実際そのようなLoopがどれほどあるだろうか？*)
(*というか末尾じゃなくても同じようなことできるか*)

(*
  Callを全部Jumpにすることは可能。だがコード量はかなり増える
  この変換がなされれば、すべてGlobalに考えればよくなる
*)

(*
  Call先までcfgを作ったとして、もし他からその関数が呼ばれてなかったら最適化の対象にできるが、
  それはインライン展開された時に関数内を最適化するので賄われるからやる必要無し。
  他から呼ばれていない関数（正確に言えば、どこからも呼ばれていないか、
  唯一の関数から呼ばれてかつその関数は自分自身ではないような関数）
  は必ずインライン展開するようにしておけば、コード量の増加もそれほどない。
  ただし、その関数が自分自身と他の唯一の関数からのみ呼ばれている場合は、最適化の余地があり、
  かつインライン展開されきらない。
  もし、その関数が自分自身を呼ぶ場所が末尾であるならば、その関数をループとしてそれを呼ぶ
  唯一の他の関数に埋め込むという方法でCallをなくすことが出来る。
*)

(*
  関数型言語なのでループは常に関数の先頭がヘッダとなる！！
*)

type dtree =
  | Leaf of bid
  | Node of dtree list
      
let merge_list x y =
  fold_left (fun a b -> if mem b a then a else b :: a) x y
    
let cap_list l m =
  fold_left (fun a b -> if mem b m then b :: a else a) [] l

let rem_list l m =
  fold_left (fun a b -> if mem b m then a else b :: a) [] l

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
let make_cfg ((sbid, rids, aids, blks) : func) =
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
    map (fun (a, b) -> (a, (pred a alist, b))) alist

(*上位者を求める*)
let solve_doms s nodes =
  let all = fst (split nodes) in
  let rec cap_lists l =
    fold_left (fun a b -> cap_list a b) all l in
    fpfunc (map (fun x -> (x, all)) all)
      (fun prev ->
	 map
	   (fun (x, (y, _)) ->
	      if x = s then (s, [s])
	      else (x, merge_list
		      (cap_lists (map (fun x -> assoc x prev) y)) [x])) nodes)

(*(*要debug*)いる？*)
let get_imm_doms s nodes =
  let doms = solve_doms s nodes in
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
let get_doms_tree s nodes =
  let idoms = get_imm_doms s nodes in
  let rec make_tree s =
    let succs = fst (split (find_all (fun (_, x) -> x = Some s) idoms)) in
      match succs with [] -> Leaf s | x -> Node
	(map make_tree x) in
    make_tree s

let get_natural_loops s nodes =
  let doms = solve_doms s nodes in
  let rev_branches =
    fold_left (fun a (x, y) ->
		 (map (fun z -> (x, z))
		    (cap_list y (snd (assoc x nodes)))) @ a) [] doms in
  let nloop_of (n, h) =
    (*xからhを通らずに到達可能なノードのリスト*)
    let m x =
      fpfunc [x]
	(fun prev ->
	   fold_left
	     (fun a b ->
(*		if x = "L_else_8944" then iter (printf "%s\n%!") a;*)
		merge_list (rem_list (snd (assoc b nodes)) [h]) a) prev prev) in
      (*hを通らずにnに到達可能なノードでhを上位とするノードのリスト*)
    let m =
      fold_left (fun a b ->
		   if mem n (m b) && mem h (assoc b doms) then b :: a else a)
	[] (map fst nodes) in
      (h, m) in
    map nloop_of rev_branches

let get_loops s nodes =
  let nloops = get_natural_loops s nodes in
    fold_left
      (fun a b ->
	 if mem_assoc b a then a
	 else
	   (b, flatten (map snd (find_all (fun (x, _) -> x = b) nloops))) :: a)
      [] (map fst nloops)

let loops_of_func ((sbid, _, _, _) as f) =
  get_loops sbid (make_cfg f)
    
let print_cfg g =
  iter (fun (x, (_, y)) ->
	  printf "%s\n" x;
	  iter (printf "\t%s\n") y) g

let print_cfg_of_func f = print_cfg (make_cfg f)

let print_doms d =
  iter (fun (x, y) ->
	  printf "%s\n" x;
	  iter (printf "\t%s\n") y) d

let print_doms_of_func ((s, _, _, _) as f) = print_doms (solve_doms s (make_cfg f))

let print_loop (h, l) =
  printf "%s\n" h;
  iter (fun x -> if x <> h then printf "\t%s\n" x) l
    
let print_loops ls = List.iter print_loop ls

let print_loops_of_func f =
ignore(  (loops_of_func f))
