open ListSet
open Printf
open Optt
open List

exception FatalError

let use_and_def = function
  | Nop -> ([], [])
  | Addzi (x, _) | FLoad (x, _) -> ([], [x])
  | Subz (y, x) | FSubz (y, x) | Flr (y, x) | Foi (y, x) | Var (y, x) -> ([x], [y])
  | ExtArray (y, _) | ExtTuple (y, _) -> ([], [y])
  | Add (z, x, y) | Sub (z, x, y) | Mul (z, x, y) | Xor (z, x, y)
  | FAdd (z, x, y) | FSub (z, x, y) | FMul (z, x, y) | FDiv (z, x, y)
  | Get (z, x, y) | FGet (z, x, y) -> ([x; y], [z])
  | Call (y, _, x, _) | Tuple (y, x) -> (x, [y])
  | IfEq (_, x, y, _, _, _, _) | IfLE (_, x, y, _, _, _, _) | IfFEq (_, x, y, _, _, _, _)
  | IfFLE (_, x, y, _, _, _, _) -> ([x; y], [])
  | LetTuple (y, x) -> ([x], y)
  | Put (x, y, z) | FPut (x, y, z) -> ([x; y; z], [])
  | Ret x -> (x, [])

let use x = fst (use_and_def x)
let def x = snd (use_and_def x)

let analyze f =
  let eq_as_set x y =
    (not (exists (fun a -> not (mem a y)) x)) &&
      (not (exists (fun a -> not (mem a x)) y)) in
  let ((_, _, _, g), _) as cfg = Cfg.make_no_block f in
  let ord = Array.of_list (Cfg.rev_order_no_block cfg) in
  let next_in x cout =
    let (y, _, _) = g.(x) in
      cup (use y) (rem cout.(x) (def y)) in
  let next_out x cin =
    let (_, _, z) = g.(x) in
      cups (map (fun i -> cin.(i)) z) in
  let cin = ref (Array.map (fun _ -> []) g) in
  let cout = ref (Array.copy !cin) in
  let nin = ref (Array.copy !cin) in
  let nout = ref (Array.copy !cin) in
  let t = ref !cin in
  let f = ref true in
    while !f do
      f := false;
      Array.iter
	(fun x ->
	   let pin = (!cin).(x) in
	   let pout = (!cout).(x) in
	   let nxin = next_in x !cout in
	   let nxout = next_out x !cin in
	     f := !f || ((not (eq_as_set pin nxin)) || (not (eq_as_set pout nxout)));
	     (!nin).(x) <- nxin;
	     (!nout).(x) <- nxout) ord;
      t := !cin;
      cin := !nin;
      nin := !cin;
      t := !cout;
      cout := !nout;
      nout := !t
    done;
    (*    
	  printf "in\n";
	  Array.iteri (fun i x ->
	  let (e, _, _) = g.(i) in
	  printf "%d\t%s\n%s" i (string_of_t e)
	  (String.concat "" (map (sprintf "\t%s\n") x))) !cin;
	  printf "out\n";
	  Array.iteri (fun i x ->
	  let (e, _, _) = g.(i) in
	  printf "%d\t%s\n%s" i (string_of_t e)
	  (String.concat "" (map (sprintf "\t%s\n") x))) !cout;*)
    (cfg, !cin, !cout)
      
      
