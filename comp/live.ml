open Printf
open Optt
open List

let use_and_def = function
  | Addzi (x, _) | FLoad (x, _) -> ([], [x])
  | Subz (y, x) | FSubz (y, x) | Flr (y, x) | Foi (y, x) | Var (y, x)
  | ExtArray (y, x) | ExtTuple (y, x) -> ([x], [y])
  | Add (z, x, y) | Sub (z, x, y) | Mul (z, x, y) | Xor (z, x, y)
  | FAdd (z, x, y) | FSub (z, x, y) | FMul (z, x, y) | FDiv (z, x, y) -> ([x; y], [z])
  | Call (y, _, x, _) | Tuple (y, x) -> (x, [y])
  | IfEq (z, x, y, _, _, _) | IfLE (z, x, y, _, _, _) | IfFEq (z, x, y, _, _, _) 
  | IfFLE (z, x, y, _, _, _) | Get (z, x, y) | FGet (z, x, y) -> ([x; y], [z])
  | LetTuple (y, x) -> ([x], y)
  | Put (x, y, z) | FPut (x, y, z) -> ([x; y; z], [])
