
open Printf
open Asm

let data = ref [] (* 浮動小数点数の定数テーブル (caml2html: virtual_data) *)

(*intとfloatに分類*)
let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
       match t with
	 | Type.Unit -> acc
	 | Type.Float -> addf acc x
	 | _ -> addi acc x t)
    ini
    xts
    
let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))
    
(*classifyしてアドレスとのタプルをつくってる*)
(*ini : int * *)
let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->
       (offset + 1, addf x offset acc))
    (fun (offset, acc) x t ->
       (offset + 1, addi x t offset acc))

exception NoExtArray of string
exception NoExtTuple of string

exception Exit3

exception MyNotFound
exception MyNotFound1
exception MyNotFound2
exception MyNotFound3
exception MyNotFound4
exception MyNotFound5
exception MyNotFound6
exception MyNotFound7
exception MyNotFound8

let rec g al env = function (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
  | Closure.Unit -> Ans(Nop)
      (*TODO:即値のサイズ計算*)
  | Closure.Addzi(i) -> Ans(Addi(zreg, i))
  | Closure.Int(i) -> Ans(Addi(zreg, i))
  | Closure.Float(d) ->
      let l =
	try
	  (* すでに定数テーブルにあったら再利用 *)
	  let (l, _) = List.find (fun (_, d') -> d = d') !data in
	    l
	with Not_found ->
	  let l = Id.L(Id.genid2 "fd") in
	    data := (l, d) :: !data;
	    l in
	(match l with Id.L x ->
	   (*メモリにあらかじめ入れておくことに*)
	   Ans(Fload(x, 0)))
	  (*Let((x, Type.Int), SetL(l), Ans(LdDF(x, C(0))))*)
  | Closure.Neg(x) -> Ans(Sub(zreg, x))
  | Closure.Add(x, y) -> Ans(Add(x, y))
  | Closure.Addi(x, y) -> Ans(Addi(x, y))
  | Closure.Sub(x, y) -> Ans(Sub(x, y))
  | Closure.Mul(x, y) -> Ans(Mul(x, y))
  | Closure.Xor(x, y) -> Ans(Xor(x, y))
  | Closure.FNeg(x) -> Ans(Fsub(fzreg, x))
  | Closure.Floor(x) -> Ans(Floor(x))
  | Closure.Float_of_int(x) -> Ans(Float_of_int(x))
  | Closure.FAdd(x, y) -> Ans(Fadd(x, y))
  | Closure.FSub(x, y) -> Ans(Fsub(x, y))
  | Closure.FMul(x, y) -> Ans(Fmul(x, y))
  | Closure.FDiv(x, y) -> Ans(Fdiv(x, y))
  | Closure.IfFLEz(x, e1, e2) ->
      (match M.find x env with
	 | Type.Float -> Ans(IfFLE(x, fzreg, g al env e1, g al env e2))
	 | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfILEz(x, e1, e2) ->
      (match M.find x env with
	 | Type.Bool | Type.Int -> Ans(IfLE(x, zreg, g al env e1, g al env e2))
	 | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfFGEz(x, e1, e2) ->
      (match M.find x env with
	 | Type.Float -> Ans(IfFLE(fzreg, x, g al env e1, g al env e2))
	 | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfIGEz(x, e1, e2) ->
      (match M.find x env with
	 | Type.Bool | Type.Int -> Ans(IfLE(zreg, x, g al env e1, g al env e2))
	 | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfFEqz(x, e1, e2) ->
      (match M.find x env with
	 | Type.Float -> Ans(IfFEq(x, fzreg, g al env e1, g al env e2))
	 | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfIEqz(x, e1, e2) ->
      (match M.find x env with
	 | Type.Bool | Type.Int -> Ans(IfEq(x, zreg, g al env e1, g al env e2))
	 | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfEq(x, y, e1, e2) ->
      (try
	 (match M.find x env with
	    | Type.Bool | Type.Int -> Ans(IfEq(x, y, g al env e1, g al env e2))
	    | Type.Float -> Ans(IfFEq(x, y, g al env e1, g al env e2))
	    | _ -> failwith "equality supported only for bool, int, and float")
       with Not_found -> printf "%s %s\n" x y; raise MyNotFound)
  | Closure.IfLE(x, y, e1, e2) ->
      (try
	 (match M.find x env with
	    | Type.Bool | Type.Int -> Ans(IfLE(x, y, g al env e1, g al env e2))
	    | Type.Float -> Ans(IfFLE(x, y, g al env e1, g al env e2))
	    | _ -> failwith "inequality supported only for bool, int, and float")
       with Not_found -> raise MyNotFound2)
  | Closure.Let((x, t1), e1, e2) ->
      let e1' = g al env e1 in
      let e2' = g al (M.add x t1 env) e2 in
	concat e1' (x, t1) e2'
  | Closure.Var(x) ->
      (try
	 (match M.find x env with
	    | Type.Unit -> Ans(Nop)
	    | Type.Float -> Ans(Fadd(fzreg, x))
	    | _ -> Ans(Add(zreg, x)))
       with Not_found -> raise MyNotFound3)
  | Closure.MakeCls _ | Closure.AppCls _ -> raise Exit3
  | Closure.AppDir(Id.L(x), ys) ->
      (*引数をint listとfloat listに分けてるだけ*)
      (try
	 let (int, float) = separate (List.map (fun y ->
						  (*Unit型は消すので環境に無い可能性あり*)
						  try
						    (y, M.find y env)
						  with Not_found -> (y, Type.Unit)
					       ) ys) in
	   Ans(CallDir(Id.L(x), int, float))
       with Not_found -> printf "%s\n" (String.concat ", " ys); raise MyNotFound4)
	
  | Closure.Tuple(xs) -> (* 組の生成 (caml2html: virtual_tuple) *)
      (try
	 let y = Id.genid "tpl" in
	 let (offset, store) =
	   expand
	     (List.map (fun x -> (x, M.find x env)) xs)
	     (0, Ans(Add(zreg, y)))
	     (fun x offset store -> seq(Fstore(x, y, offset), store))
	     (fun x _ offset store -> seq(Store(x, y, offset), store)) in
	   Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Add(zreg, hpreg),
	       Let((hpreg, Type.Int), Addi(hpreg, offset),
		   store))
       with Not_found -> raise MyNotFound5)
  | Closure.LetTuple(xts, y, e2) ->
      let s = Closure.fv e2 in
      let (offset, load) =
	expand
	  xts
	  (0, g al (M.add_list xts env) e2)
	  (fun x offset load ->
	     if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
	       fletd(x, Fload(y, offset), load))
	  (fun x t offset load ->
	     if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
	       Let((x, t), Load(y, offset), load)) in
	load
  | Closure.Geti(x, y) -> (* 配列の読み出し (caml2html: virtual_get) *)
      (match M.find x env with
	 | Type.Array(Type.Unit) -> Ans(Nop)
	 | Type.Array(Type.Float) -> Ans(Fload(x, y))
	 | Type.Array(_) -> Ans(Load(x, y))
	 | _ -> assert false)
  | Closure.Get(x, y) -> (* 配列の読み出し (caml2html: virtual_get) *)
      (try
	 let offset = Id.genid "get" in
	   (match M.find x env with
	      | Type.Array(Type.Unit) -> Ans(Nop)
	      | Type.Array(Type.Float) -> (*Ans(Fldr(x, y))*)
		  (*TODO:WATCH:たとえばディスプレースメントをレジスタで出来ればこの辺が速くなる*)
		  Let((offset, Type.Int), Add(x, y),
		      Ans(Fload(offset, 0)))
	      | Type.Array(_) -> (*Ans(Ldr(x, y))*)
		  Let((offset, Type.Int), Add(x, y),
		      Ans(Load(offset, 0)))
	      | _ -> assert false)
       with Not_found -> raise MyNotFound6)
  | Closure.Puti(x, y, z) ->
      (match M.find x env with
	 | Type.Array(Type.Unit) -> Ans(Nop)
	 | Type.Array(Type.Float) -> Ans(Fstore(z, x, y))
	 | Type.Array(_) -> Ans(Store(z, x, y))
	 | _ -> assert false)
  | Closure.Put(x, y, z) ->
      (try
	 let offset = Id.genid "put" in
	   (match M.find x env with
	      | Type.Array(Type.Unit) -> Ans(Nop)
	      | Type.Array(Type.Float) -> (*Ans(Fstr(z, x, y))*)
		  Let((offset, Type.Int), Add(x, y),
		      Ans(Fstore(z, offset, 0)))
	      | Type.Array(_) -> (*Ans(Str(z, x, y))*)
		  Let((offset, Type.Int), Add(x, y),
		      Ans(Store(z, offset, 0)))
	      | _ -> assert false)
       with Not_found -> raise MyNotFound7)
	(*TODO:*)
  | Closure.ExtArray(Id.L(x)) ->
      let y = "min_caml_" ^ x in
	(
	  try
	    let p = List.assoc y al in
	      Ans(Addi(zreg, p))
	  with Not_found -> raise (NoExtArray y)
	)
	  (*タプル最適化の時大丈夫かな*)
  | Closure.ExtTuple(x) ->
      let y = "min_caml_" ^ x in
	(
	  try
	    let p = List.assoc y al in
	      Ans(Addi(zreg, p))
	  with Not_found -> raise (NoExtTuple y)
	)
	  
(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
(*TODO:ここは何をやってるのか？*)
let h al { Closure.name = (Id.L(x), t); Closure.args = yts;
	   Closure.formal_fv = zts; Closure.body = e } = 
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (0, g al (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (*渡された引数を受け取ってるLetを重ねて*)
      (fun z offset load -> fletd(z, Fload(zreg, offset), load))
      (fun z t offset load -> Let((z, t), Load(zreg, offset), load)) in
    match t with
      | Type.Fun(_, t2) ->
	  { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
      | _ -> assert false

(*
  type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
*)
(*TODO:もっと早い段階で埋め込んだ方が早いと思うがとりあえず*)
	  
let caf =
  let ar = Id.genid "ar" and num = Id.genid "num" and init = Id.genid "init" in
    { name = Id.L "min_caml_create_float_array"; args = [num]; fargs = [init];
      body =
	(Let((ar, Type.Array(Type.Float)), Add(zreg, hpreg),
	     Let((hpreg, Type.Int), Add(hpreg, num),
		 Let((Id.gentmp Type.Unit, Type.Unit),
		     CallDir(Id.L "min_caml_init_float_array", [ar; num], [init]),
		     (*TODO:ここで指定するとアセンブラではロードの直後となって無駄*)
		     (*これはemitで簡単に解消できそう*)
		     Ans(Add(zreg, ar))))));
      ret = Type.Array(Type.Float) }
      
let cafi =
  let ar = Id.genid "ar" and num = Id.genid "num" and init = Id.genid "init" in
  let nnum = Id.genid "num" and nar = Id.genid "ar" in
    { name = Id.L "min_caml_init_array"; args = [ar; num; init]; fargs = [];
      body =
	Ans(IfEq(num, zreg, Ans(Nop),
		 Let((Id.gentmp Type.Unit, Type.Unit), Store(init, ar, 0),
		     Let((nnum, Type.Int), Subi(num, 1),
			 Let((nar, Type.Array(Type.Int)), Addi(ar, 1),
			     Ans(CallDir(Id.L "min_caml_init_array", [nar; nnum; init], []
					)))))));
      ret = Type.Unit }
      
let cai =
  let ar = Id.genid "ar" and num = Id.genid "num" and init = Id.genid "init" in
  let nnum = Id.genid "num" and nar = Id.genid "ar" in
    { name = Id.L "min_caml_init_float_array"; args = [ar; num]; fargs = [init];
      body =
	Ans(IfEq(num, zreg, Ans(Nop),
		 Let((Id.gentmp Type.Unit, Type.Unit), Fstore(init, ar, 0),
		     Let((nnum, Type.Int), Subi(num, 1),
			 Let((nar, Type.Array(Type.Int)), Addi(ar, 1),
			     Ans(CallDir(Id.L "min_caml_init_float_array", [nar; nnum], [init]
					)))))));
      ret = Type.Unit }
      
let ca =
  let ar = Id.genid "ar" and num = Id.genid "num" and init = Id.genid "init" in
    { name = Id.L "min_caml_create_array"; args = [num; init]; fargs = [];
      body =
	(Let((ar, Type.Array(Type.Int)), Add(zreg, hpreg),
	     Let((hpreg, Type.Int), Add(hpreg, num),
		 Let((Id.gentmp Type.Unit, Type.Unit),
		     CallDir(Id.L "min_caml_init_array", [ar; num; init], []),
		     Ans(Add(zreg, ar))))));
      ret = Type.Array(Type.Int) }

let ri =
  { name = Id.L "min_caml_read_int"; args = []; fargs = [];
    body = Ans(Ri);
    ret = Type.Int }

let rf =
  { name = Id.L "min_caml_read_float"; args = []; fargs = [];
    body = Ans(Rf);
    ret = Type.Float }

let pi =
  let num = Id.genid "num" in
    { name = Id.L "min_caml_print_char"; args = [num]; fargs = [];
      body = Ans(Pc num);
      ret = Type.Unit }

let pf =
  let num = Id.genid "num" in
    { name = Id.L "min_caml_print_float"; args = []; fargs = [num];
      body = Ans(Pf num);
      ret = Type.Unit }
      
      
(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f memin memout memext al (Closure.Prog(fundefs, e)) =
  data := [];
  let al =
    List.map (fun (x, y) -> (x, y + memext)) al in
  let fundefs =
    pf :: pi :: ri :: rf
    :: cai :: ca :: cafi :: caf :: (List.map (h al) fundefs) in
  let e = g al M.empty e in
    Prog(!data, fundefs, e)
      
