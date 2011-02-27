open Printf
open ListEx
open Closure
open Str
open List

exception InvalidFormat

let rec callees_of e =
  match e with
    | IfEq (_, _, y, z) | IfLE (_, _, y, z)
    | IfIEqz (_, y, z) | IfILEz (_, y, z) | IfIGEz (_, y, z)
    | IfFEqz (_, y, z) | IfFLEz (_, y, z) | IfFGEz (_, y, z)
    | Let (_, y, z) -> (callees_of y) @ (callees_of z)
    | LetTuple (_, _, x) -> callees_of x
    | MakeCls _ | AppCls _ -> raise InvalidFormat
    | AppDir (Id.L x, _) | TailAppDir (Id.L x, _) -> [x]
    | _ -> []

let callees_of e =
  let cles = callees_of e in
    fold_left (fun a b ->
		 if mem_assoc b a then
		   map (fun (x, i) -> if x = b then (b, i + 1) else (x, i)) a
		 else
		   (b, 1) :: a) [] cles

let f oc (Prog (l, m)) =
  let rexp = "^\\(min_caml_\\|.*\\(read\\|create_pixel\\|calc_dirvec\\|init_dirvec\\|create_dirvec\\|init_vecset\\|tan\\|sin\\|cos\\|atan\\|sdiv10\\|setup\\|init_line\\|print_int\\|sprint_int\\|divpow10\\|sdivn\\|pow10\\|spow10\\|write\\)\\).*" in
  let regex y = string_match (regexp rexp) y 0 in
  let print oc n x i = fprintf oc "\t\"%s\" -> \"%s\" [label=%d];\n" n x i in
    (*なんかここの文字列分解できない*)
    fprintf oc "digraph raytrace_main {\n\tgraph [ranksep = 0.35, nodesep = 0.25]\n\tnode [shape = box, fontname = \"ARIAL\", fontsize = 10, height = 0.15]\n\tedge [fontsize = 8, arrowsize = 0.5]\n";
    List.iter (fun (x, i) -> if not (regex x) then
		 print oc "main" x i) (callees_of m);
    List.iter
      (fun { name = (Id.L x, _); body = y } ->
	 if not (regex x) then
	   List.iter (fun (z, i) -> if not (regex z) then
			print oc x z i) (callees_of y)) l;
    fprintf oc "}\n"


