open ListEx
open Optt
open List
open Printf

(*TODO:高速化*)

exception FatalError
exception Break1 of int
exception ColoringFailed
exception MyNotFound

let replace env cfg regs =
  let q x = try if is_anyreg x then x else regs.(assoc x env) with Not_found -> x in
  let p e =
    match e with
      | Addzi (x, y) -> Addzi (q x, y)
      | Subz (x, y) -> Subz (q x, q y)
      | Add (x, y, z) -> Add (q x, q y, q z)
      | Addi (x, y, z) -> Addi (q x, q y, z)
      | Sub (x, y, z) -> Sub (q x, q y, q z)
      | Mul (x, y, z) -> Mul (q x, q y, q z)
      | Xor (x, y, z) -> Xor (q x, q y, q z)
      | FLoad (x, y) -> FLoad (q x, y)
      | FSubz (x, y) -> FSubz (q x, q y)
      | FAdd (x, y, z) -> FAdd (q x, q y, q z)
      | FSub (x, y, z) -> FSub (q x, q y, q z)
      | FMul (x, y, z) -> FMul (q x, q y, q z)
      | FDiv (x, y, z) -> FDiv (q x, q y, q z)
      | FSqrt (x, y) -> FSqrt (q x, q y)
      | Flr (x, y) -> Flr (q x, q y)
      | Foi (x, y) -> Foi (q x, q y)
      | Call (x, y, z) -> Call (map q x, y, map q z)
      | Jump (x, y, z) -> Jump (map q x, y, map q z)
      | IfEq (x, y, z) -> IfEq (x, q y, q z)
      | IfLE (x, y, z) -> IfLE (x, q y, q z)
      | IfEqz (x, z) -> IfEqz (x, q z)
      | IfLEz (x, z) -> IfLEz (x, q z)
      | IfGEz (x, z) -> IfGEz (x, q z)
      | IfFEq (x, y, z) -> IfFEq (x, q y, q z)
      | IfFLE (x, y, z) -> IfFLE (x, q y, q z)
      | IfFEqz (x, z) -> IfFEqz (x, q z)
      | IfFLEz (x, z) -> IfFLEz (x, q z)
      | IfFGEz (x, z) -> IfFGEz (x, q z)
      | Var (x, y) -> Var (q x, q y)
      | Tuple (x, y) -> Tuple (q x, map q y)
      | Get (x, y, z) -> Get (q x, q y, q z)
      | Geti (x, y, z) -> Geti (q x, q y, z)
      | Put (x, y, z) -> Put (q x, q y, q z)
      | Puti (x, y, z) -> Puti (q x, y, q z)
      | FGet (x, y, z) -> FGet (q x, q y, q z)
      | FGeti (x, y, z) -> FGeti (q x, q y, z)
      | FPut (x, y, z) -> FPut (q x, q y, q z)
      | FPuti (x, y, z) -> FPuti (q x, y, q z)
      | ExtArray (x, y) -> ExtArray (q x, y)
      | ExtTuple (x, y) -> ExtTuple (q x, y)
      | LetTuple (x, y) -> LetTuple (map q x, q y)
      | Ret x -> Ret (map q x) in
    iter (fun x -> x.inst <- p x.inst) cfg

let set_using_regs f =
  let g l = snd (fold_left (fun (i, a) b -> (i + 1, i :: a)) (0, []) l) in
  let (a, b) = partition (fun x -> mem_assoc x f.cenv) f.rids in
    (*cenvのcupでなく、def+aidsのcupにした方が良いかも、でも同じかも*)
    f.using_regs <- cup (map snd f.cenv) (g a);
    f.using_fregs <- cup (map snd f.fcenv) (g b)

let target (id, isf) f cfs fs dom k env fenv cenv =
  (*printf "a %s\n%!" id;*)
  (*idがlive outなcall先をみつける*)
  (*それら全てがcfsに含まれているときそれらに割り当てられたレジスタ以外のレジスタを割り付ける*)
  (*printf "a\n%!";*)
  (*let mreg = max (map snd cenv) (-1) in*)
  let cles =
    fold_func (fun a b ->
		 match b.inst with
		   | Call (x, y, z)
		       when mem y cfs && y <> f.fid && mem id b.lout &&
			 not (mem id x) -> cup [y] a
		   | _ -> a) [] f in
    (*printf "b\n%!";*)
  let allcles =
    cup cles (flatten (map (fun x -> (find (fun y -> y.fid = x) fs).callees) cles)) in
    (*printf "c\n%!";*)
  let regs = set_of
    (flatten (map (fun x -> let t = find (fun y -> y.fid = x) fs in
		     if isf then t.using_fregs else t.using_regs) allcles)) in
    (*printf "d\n%!";*)
  let ndom = rem dom regs in
    (*TODO:minをとるのでなく、もうすでに割り当てられてしまったレジスタで、なるべくCallの
      引数になってないものを選ぶとかだとusing_regsを変えず、かつ他のレジスタターゲッティ
      ングを邪魔しない*)
    (*printf "aaaa\n%!";*)
    (*printf "e\n%!";*)
(*  let s = (*min ndom k in*)
    max (filter (fun x -> x <= mreg) ndom) (-1) in
    let s = if s = -1 then min ndom k else s in*)
  let s = min ndom k in
    (*TODO:無理でもすぐあきらめずになるべく退避しなくていいようにした方がいい*)
    if s = k then min dom k else
      (*すでに割り当てられた関数に対するCallの引数、返り値ならその引数と同じものに割り当てる*)
      (*Varになってるやつにはなるべく同じのを割り当てる*)
      let targets =
	let h id x =
	  let (r, fr) = partition (fun x -> mem_assoc x env) x in
	    find_index (fun x -> x = id) (if isf then fr else r) in
	let tenv = if isf then fenv else env in
	  fold_func
	    (fun a b ->
	       (*printf "%s\n" (string_of_t b.inst);*)
	       (*TODO:このへんx,y,zにレジスタが直接入ってる可能性考慮*)
	       match b.inst with
		 | Call (x, y, z) | Jump (x, y, z) when mem y cfs && mem id z ->
		     let i = find_index (fun x -> x = id) z in
		     let g = find (fun x -> x.fid = y) fs in
		     let aid = nth g.aids i in
		       (if isf then assoc aid g.fcenv else assoc aid g.cenv) :: a
		 | Call (x, _, _) | Ret x when mem id x ->
		     (h id x) :: a
		 | Var (x, y) when x = id ->
		     let p = assoc y tenv in
		       if mem_assoc p cenv then (assoc p cenv) :: a else a
		 | Var (y, x) when x = id ->
		     let p = assoc y tenv in
		       if mem_assoc p cenv then (assoc p cenv) :: a else a
		 | _ -> a) [] f in
	(*printf "bbbb\n%!";*)
	(*let u = targets in*)
      let targets = filter (fun x -> mem x ndom) targets in
	(*TODO:生存区間を短くしてfailに対処*)
	(*if targets = [] && u <> [] then printf "fail %s\n" id;*)
	if targets = [] then s else
	  (*targetsの中で最も重複の多い者を選ぶ*)
	  let ts =
	    fold_left (fun a b ->
			 if mem_rassoc b a then
			   let ((i, b), t) = find_with_tail (fun (_, x) -> x = b) a in
			     (i + 1, b) :: t
			 else (1, b) :: a) [] targets in
	    (*printf "%s %d\n" id (length ts);*)
	  let (_, t) = fold_left (fun (m, a) (i, t) ->
				    if i > m then (i, t) else (m, a)) (0, 0) ts in
	    t

let push_target_scores f cfs env =
  (*実際には+1とかいうスコアは目安*)
  (*というかきちんと一番いいスコアを出すべきか*)
  (*たとえばidと等しかったら+1ではなく、割り当てるレジスタ毎にスコアを持っていて、それのmaxをとるとか*)
  (*さらに生存区間が長い変数は先に割り当てると他の多くの割り当てに影響するからペナルティをおくとか*)
  (*でも生存区間長い変数はCallを多く跨ぐからその分点高いんだよな*)
  (*生存区間の長さよりintgの次数の方がいいし簡単*)
  map (fun id ->
	 (id, fold_func
	    (fun s b ->
	       (*TODO:このへんx,y,zにレジスタが直接入ってる可能性考慮*)
	       match b.inst with
		 | Call (x, y, z)
		     when mem y cfs && mem id b.lout && not (mem id x) -> s + 2
		 | Call (x, y, z) | Jump (x, y, z) when mem y cfs && mem id z -> s + 1
		 | Call (x, _, _) | Ret x when mem id x -> s + 1
		 | Var (x, y) when x = id || y = id -> s + 1
		 | _ -> s) 0 f)) (map fst env)

let push_target f cfs intg k env =
  (*xsが空ならys,そうでなければxsに対し、選択する*)
  (*スコアが一番低い者を選ぶ*)
  let (xs, ys) = partition (fun (_, _, x) -> length x < k) intg in
  let (ts, rs) = if xs = [] then (ys, []) else (xs, ys) in
  let (_, h, rs) =
    fold_left (fun (i, x, y) z ->
		 let (_, j, _) = z in
		 let (u, _, _) = x in
		   if i >= j then if u = -1 then (j, z, y) else (j, z, x :: y)
		   else (i, x, z :: y)) (max_int, (-1, 0, []), rs) ts in
    (h, rs)
      (*force_find_with_tail (fun (_, x) -> length x < k) intg*)
      
let rec alloc_func f cfs fs tenv =
  (*printf "%s\n%!" f.fid;*)
  (*printf "%s\n%!" f.fid;*)
  (*print_func stdout f;*)
  (*TODO:跨ぐCallの引数がループ不変だと分かっている場合、ターゲッティングできる*)
  (*これをする場合、outputで退避するものの中でループ不変のものを除く処理と、
    push_targetなどの変更が必要*)
  (*出来ると思ったけど、ループ不変だからといってreturn側ではliveでなくなるので潰される
    可能性あり*)
  (*やはりループ埋め込みかなぁ,500をしきい値としてやればcheck_all_inside消えてcall set減る*)
  let lin = map (fun x -> (x.id, x.lin)) f.cfg in
  let lout = map (fun x -> (x.id, x.lout)) f.cfg in
  let live = (assoc f.sid lin) :: (snd (split lout)) in
    (*ループが無ければ、次の値で塗り分け可能*)
    (*printf "%d\n" (max (map (fun y -> length y) live) min_int);*)
  let env = let i = ref 0 in map (fun x -> (x, let j = !i in incr i; j)) (cups live) in
  let live = map (fun x -> map (fun y -> assoc y env) x) live in
  let (env, fenv) = partition (fun (x, _) -> M.find x tenv <> Type.Float) env in
    (*printf "a %s\n%!" f.fid;*)
  let (live, flive) = split (map (fun x -> partition (fun y -> mem_rassoc y env) x) live) in
    (*printf "b %s\n%!" f.fid;*)
  let sub aenv live k regs isf aids =
    (*TODO:Varになってるやつはintg作る時点で同じにするとか*)
    let intg =
      map (fun x -> (x, rem_one (cups (find_all (fun y -> mem x y) live)) x)) (map snd aenv) in
      (*printf "c %s\n%!" f.fid;*)
      (*printf "%d\n" (max (map (fun (_, y) -> length y) intg) min_int);*)
      (*printf "%s\n" (String.concat "\n"
	(map (fun (x, y) -> sprintf "%s (%s)" (rassoc x aenv)
	(String.concat ", " (map (fun z -> rassoc z aenv) y))) intg));*)
      (*SOLVED:自己再帰の場合、自分を呼び出すときターゲッティングされず、損*)
    let scores = push_target_scores f cfs aenv in
    let rintg = ref (map (fun (x, y) -> (x, assoc (rassoc x aenv) scores, y)) intg) in
      (*printf "d %s\n%!" f.fid;*)
    let s = Stack.create () in
    let cenv = ref [] in
    let colors = Array.to_list (Array.init k (fun x -> x)) in
      iter
	(fun aid ->
	   let i = assoc aid aenv in
	     rintg := map (fun (x, z, y) -> (x, z, rem_one y i))
	       (find_rem (fun (x, y, z) -> x = i) !rintg);
	     let c = target
	       (aid, isf)
	       f cfs fs
	       (rem colors
		  (map (fun x -> assoc x !cenv)
		     (find_all (fun x -> mem_assoc x !cenv) (assoc i intg)))) k env fenv !cenv in
	       if c = k then raise ColoringFailed else cenv := (i, c) :: !cenv
	) aids;
      (*printf "e %s\n%!" f.fid;*)
      let acenv = map (fun (x, y) -> (rassoc x aenv, y)) !cenv in
	if isf then f.fcenv <- acenv else f.cenv <- acenv;
	let ncfs = f.fid :: cfs in
	  (*TODO:わざわざ言語処理系論の方法でやる必要ある？ループがないからNP完全じゃないし*)
	  (*easyallocでやってみた。ちょっと命令数増えたけど誤差レベルだと思われる*)
	  (*そもそもこのアルゴリズムはk以下で塗り分ける方法を与えているのでなるべく小さい値で
	    塗り分けれるわけではない*)
	  (*一度完全に好きな順番で割り当ててみるといいかも*)
	  while !rintg <> [] do
	    let ((t, _, _), r) = push_target f ncfs !rintg k aenv in
	      Stack.push t s;
	      rintg := map (fun (x, z, y) -> (x, z, rem_one y t)) r;
	      (*printf "%s\n" (String.concat "\n"
		(map (fun (x, y) -> sprintf "%s (%s)" (rassoc x aenv)
		(String.concat ", " (map (fun z -> rassoc z aenv) y))) !rintg))*)
	  done;
	  (*printf "f %s\n%!" f.fid;*)
	  (*printf "aa\n%!";*)
	  while not (Stack.is_empty s) do
	    let i = Stack.pop s in
	      (*printf "%s\n%!" (rassoc i aenv);*)
	    let c = target
	      (rassoc i aenv, isf)
	      f ncfs fs
	      (rem colors
		 (map (fun x -> assoc x !cenv)
		    (find_all (fun x -> mem_assoc x !cenv)
		       (assoc i intg)))) k env fenv !cenv in
	      if c = k then raise ColoringFailed else cenv := (i, c) :: !cenv
	  done;
	  (*printf "g %s\n%!" f.fid;*)
	  (*printf "bb\n%!";*)
	  let cenv = map (fun (x, y) -> (rassoc x aenv, y)) !cenv in
	    replace cenv f.cfg regs;
	    (*if f.fid = "min_caml_start" then printf "%s\n"
	      (String.concat "\n" (map (fun (x, y) -> sprintf "%s -> %d" x y) cenv));*)
	    cenv in
    (*print_func stdout f;*)
  let (aids, faids) = partition (fun x -> mem_assoc x env) f.aids in
    f.cenv <- sub env live n_regs regs false aids;
    f.fcenv <- sub fenv flive n_fregs fregs true faids;
    set_using_regs f
      (*printf "%d %d\n%!" (max (map snd f.cenv) 0) (max (map snd f.fcenv) 0)*)

let callees_of f fs =
  let dc f =
    fold_func (fun a b ->
		 match b.inst with
		   | Call (x, y, z) | Jump (x, y, z) -> cup [y] a
		   | _ -> a) [] f in
  let p = ref (dc f) in
  let pp = ref [] in
    while not (eq_as_set !p !pp) do
      pp := !p;
      p := cup !p (flatten (map (fun x -> dc (find (fun y -> y.fid = x) fs)) !p))
    done; !p

let rec f p tenv =
  let fs = dummies @ (p.efunc :: p.funcs) in
  let () = iter (fun x -> x.callees <- callees_of x fs) fs in
  let sfs = map (fun x -> x.fid) fs in
  let rfs = ref (rem sfs dnames) in
    while !rfs <> [] do
      let (h, t) = force_find_with_tail
	(fun x ->
	   let x = find (fun y -> y.fid = x) fs in
	   let p = rem x.callees (rem sfs !rfs) in p = [] || p = [x.fid]) !rfs in
	alloc_func (find (fun x -> x.fid = h) fs) (rem sfs !rfs) fs tenv;
	rfs := t
    done
