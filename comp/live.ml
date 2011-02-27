open ListEx
open Printf
open Optt
open List

exception FatalError

let use_and_def e =
  let (p, q) =
    match e with
      | Addzi (x, _) | FLoad (x, _) | ExtArray (x, _) | ExtTuple (x, _) -> ([], [x])
      | Subz (y, x) | FSubz (y, x) | Flr (y, x) | Foi (y, x) | Var (y, x)
      | Geti (y, x, _) | FGeti (y, x, _) | Addi (y, x, _) | FSqrt (y, x) -> ([x], [y])
      | Add (z, x, y) | Sub (z, x, y) | Mul (z, x, y) | Xor (z, x, y)
      | FAdd (z, x, y) | FSub (z, x, y) | FMul (z, x, y) | FDiv (z, x, y)
      | Get (z, x, y) | FGet (z, x, y) -> ([x; y], [z])
      | Call (y, _, x) | Jump (y, _, x) -> (x, y)
      | Tuple (y, x) -> (x, [y])
      | IfEq (_, x, y) | IfLE (_, x, y) | IfFEq (_, x, y)
      | IfFLE (_, x, y) | Puti (x, _, y) | FPuti (x, _, y) -> ([x; y], []) 
      | LetTuple (y, x) -> ([x], y)
      | Put (x, y, z) | FPut (x, y, z) -> ([x; y; z], [])
      | IfEqz (_, x) | IfFEqz (_, x) | IfLEz (_, x)
      | IfFLEz (_, x) | IfGEz (_, x) | IfFGEz (_, x) ->
	  ([x], [])
      | Ret x -> (x, []) in
  let rec f = filter (fun x -> not (is_anyreg x)) in
    (f p, f q)

let use x = fst (use_and_def x)
let def x = snd (use_and_def x)

(*gはidとのタプルで、idは0からのlength g - 1まででなくてはならない！*)
let analyze ord g =
  let g = map (fun (i, (x, y)) -> (i, (use x, def x, y))) g in
  let g = Array.init (length g) (fun i -> assoc i g) in
  let tolist a =
    let l = ref [] in Array.iteri (fun i x -> l := (i, x) :: !l) a; !l in
  let next_in x lout =
    let (u, d, _) = g.(x) in cup u (rem lout.(x) d) in
  let next_out x lin =
    let (_, _, s) = g.(x) in cups (map (fun i -> lin.(i)) s) in
  let lin = ref (Array.map (fun _ -> []) g) in
  let lout = ref (Array.copy !lin) in
  let f = ref true in
    while !f do
      f := false;
      for j = 0 to Array.length ord - 1 do
	let x = ord.(j) in
	let pin = (!lin).(x) in
	let pout = (!lout).(x) in
	let nxout = next_out x !lin in
	  (!lout).(x) <- nxout;
	  let nxin = next_in x !lout in
	    f := !f || ((not (eq_as_set pin nxin)) || (not (eq_as_set pout nxout)));
	    (!lin).(x) <- nxin
      done
    done;
    (tolist !lin, tolist !lout)
      
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
