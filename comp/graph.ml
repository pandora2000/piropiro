open Printf
open Closure
open Str

let merge_list x y =
  List.fold_left (fun a b -> if List.mem b a then a else b :: a) x y

exception InvalidFormat

let rec callees_of e =
  match e with
    | Unit | Int _ | Float _ | ExtArray _ | ExtTuple _ | Neg _ | Add _ | Sub _
    | FNeg _ | Floor _ | Float_of_int _ | FAdd _ | Mul _ | FSub _ | FMul _ | Xor _
    | FDiv _ | Get _ | Var _ | Put _ | Tuple _ -> []
    | IfEq (_, _, y, z) | IfLE (_, _, y, z) | Let (_, y, z) ->
	merge_list (callees_of y) (callees_of z)
    | LetTuple (_, _, x) -> callees_of x
    | MakeCls _ | AppCls _ -> raise InvalidFormat
    | AppDir (Id.L x, _) -> [x]

let f oc (Prog (l, m)) =
  let regex x y = string_match x y 0 in
  let regex x = (regex (regexp ".*read.*") x) || (regex (regexp "^min_caml_.*") x) in
  (*なんかここの文字列分解できない*)
  fprintf oc "digraph raytrace_main {\n\tgraph [ranksep = 0.35, nodesep = 0.25]\n\tnode [shape = box, fontname = \"ARIAL\", fontsize = 10, height = 0.15]\n\tedge [fontsize = 8, arrowsize = 0.5]\n";
  List.iter (fun x -> if not (regex x) then
	       fprintf oc "\t\"main\" -> \"%s\";\n" x) (callees_of m);
  List.iter
    (fun { name = (Id.L x, _); body = y } ->
       if not (regex x) then
	 List.iter (fun z -> if not (regex z) then
		      fprintf oc "\t\"%s\" -> \"%s\";\n" x z) (callees_of y)) l;
  fprintf oc "}\n"

