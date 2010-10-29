open Printf
open Optt

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
  ただし、その関数が自分自身だけを呼んでいる場合は、最適化の余地があり、
  かつインライン展開されきらない。
*)

(*制御フローグラフ作成*)
let make_cfg ((sbid, rids, aids, blks) : func) =
  let pred x al =
    fst (List.split (List.find_all (fun (_, b) -> List.mem x b) al)) in
  let alist =
    List.fold_left
      (fun a (bid, (ts, bs)) ->
	 (bid, (match List.nth ts (List.length ts - 1) with
		  | Call (_, y, _, _) when y = sbid -> [sbid]
		  | _ -> []) @ bs) :: a) [] blks in
    List.map (fun (a, b) -> (a, (pred a alist, b))) alist

(*上位者を求める*)
let solve_doms s nodes =
  let merge_list x y =
    List.fold_left (fun a b -> if List.mem b a then a else b :: a) x y in
  let all = fst (List.split nodes) in
  let rec cap_list l m =
    List.fold_left (fun a b -> if List.mem b l then b :: a else a) [] m in
  let rec cap_lists l =
    List.fold_left (fun a b -> cap_list a b) all l in
  let prev = ref [] in
  let cur = ref (List.map (fun x -> (x, all)) all) in
    cur := List.map (fun ((x, _) as y) -> if x = s then (s, [s]) else y) !cur;
    while !prev <> !cur do
      prev := !cur;
      cur := List.map
	(fun (x, (y, _)) ->
	   if x = s then (s, [s])
	   else (x, merge_list [x] (cap_lists (List.map (fun x -> List.assoc x !cur) y)))) nodes
    done; !cur

let get_imm_doms s nodes =
  let doms = solve_doms s nodes in
    List.map
      (fun (x, w) ->
	 if x = s then (s, None)
	 else 
	   (x,
	    Some (List.find
		    (fun (y, z) -> y <> x && List.mem y w &&
		       not (List.exists (fun u -> u <> x && not (List.mem u z)) w))
		    doms))) doms
