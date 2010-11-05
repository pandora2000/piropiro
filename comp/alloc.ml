open Optt
open List
open Printf

let regs =  Array.init 29 (fun i -> Printf.sprintf "%%r%d" (i + 4))
let fregs = Array.init 30 (fun i -> Printf.sprintf "%%f%d" (i + 2))
let regls = Array.to_list regs
let fregls = Array.to_list fregs
let zreg = "%r0"
let fzreg = "%f0"
let swreg = "%r1"
let fswreg = "%f1"
let spreg = "%r2"
let hpreg = "%r3"

  (*
let rec alloc_func (bid, rids, aids, blks) =
  (*レジスタが割り当てられた基本ブロックリストを返す*)
  let rec loop cb bs cont m =
    match cb with
      | [] ->
	  let p = assoc (hd rids) m in
	    if p = regs.(0) then [] else [Add regs.(0) zreg p]
      | [t] ->
	  (match t with
    | Call (r, x, y, z) ->
  *)

(*let rec alloc_func*)


let rec f x = x
