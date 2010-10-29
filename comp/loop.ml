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
  末尾でないCallの場合、
  Call先までcfgを作ったとして、もし他からその関数が呼ばれてなかったら最適化の対象にできるが、
  それはインライン展開された時に関数内を最適化するので賄われるからやる必要無し。
  （他から呼ばれていない関数は必ずインライン展開するようにしよう）
  末尾であるCallの場合、
*)

(*制御フローグラフ作成*)
(*配列とforで全部やった方がいいね*)
let make_cfg ((bid, rids, aids, blks) : func) =
  let blks = get_blocks prog in
  let block_of id = List.assoc s blks in
  let next_bids_of id = let (_, (_, n)) = block_of id in n in
  let next g =
    List.fold_left
      (fun a ((id, _) as b) ->
	 let (bid, (el, bl)) = block_of id in
	   match bl with _ :: _ -> b :: a
  let prev = ref [] in
  let cur = ref [s, next_bids_of s] in
    while !prev <> !cur do
      prev := !cur;
      cur := next !cur
    done; !cur

(*
let all_doms s nodes =
  let prev = ref ([], 
    while
*)    
      
































