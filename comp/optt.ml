open Printf

type id = string
type bid = string
type t =
  | Addzi of id * int
  | Subz of id * id
  | Add of id * id * id
  | Sub of id * id * id
  | Mul of id * id * id
  | Xor of id * id * id
  | FLoad of id * float
  | FSubz of id * id
  | FAdd of id * id * id
  | FSub of id * id * id
  | FMul of id * id * id
  | FDiv of id * id * id
  | Flr of id * id
  | Foi of id * id
  | Call of id * bid * (id list) * (bid option)
  | IfEq of id * id * id * bid * bid * (bid option) * (bid option)
  | IfLE of id * id * id * bid * bid * (bid option) * (bid option)
  | IfFEq of id * id * id * bid * bid * (bid option) * (bid option)
  | IfFLE of id * id * id * bid * bid * (bid option) * (bid option)
  | Var of id * id
  | Tuple of id * (id list)
  | Get of id * id * id
  | Put of id * id * id
  | FGet of id * id * id
  | FPut of id * id * id
  | ExtArray of id * id
  | ExtTuple of id * id
  | LetTuple of (id list) * id
  | Ret of id list
type block = bid * ((t list) * (bid list))
type func = bid * (id list) * (id list) * (block list)
type ent_func = bid * block list
type prog = (func list) * ent_func
type ptyp = I | F

let genid x = Id.genid x

let noreg = "xxx"

let reg_offset = 4
let freg_offset = 2
let regs =  Array.init (64 - reg_offset) (fun i -> Printf.sprintf "%%r%d" (i + reg_offset))
let fregs = Array.init (64 - freg_offset) (fun i -> Printf.sprintf "%%f%d" (i + freg_offset))
let n_regs = Array.length regs
let n_fregs = Array.length fregs
let regls = Array.to_list regs
let fregls = Array.to_list fregs
let zreg = "%r0"
let fzreg = "%f0"
let tmpreg = "%r1"
let ftmpreg = "%f1"
let spreg = "%r2"
let hpreg = "%r3"

let fptoffset = 0
let memhp = 170000
let memsp = 4096
let memext = 4096

let extlist =
  [
    (*記述がなければすべて0で初期化*)
    "screen", 0;(*3*)
    "screenz_dir", 3;(*3*)
    "screenx_dir", 6;(*3*)
    "screeny_dir", 9;(*3*)
    "viewpoint", 12;(*3*)
    "light", 15;(*3*)
    "intersection_point", 18;(*3*)
    "intersected_object_id", 21;(*1*)
    "nvector", 22;(*3*)
    "texture_color", 25;(*3*)
    "diffuse_ray", 28;(*3*)
    "rgb", 31;(*3*)
    "image_size", 34;(*2*)
    "image_center", 36;(*2*)
    "scan_pitch", 38;(*1*)
    "startp", 39;(*3*)
    "startp_fast", 42;(*3*)
    "ptrace_dirvec", 45;(*3*)
    "n_objects", 48;(*1*)
    "solver_dist", 49;(*1*)
    "intsec_rectside", 50;(*1*)
    "n_reflections", 51;(*1*)
    "dirvecs", 52;(*多分なんで初期化してもOK*)(*5*)
    "beam", 57;(*255.0*)(*1*)
    "tmin", 58;(*1000000000.0*)(*1*)
    "and_net", 59;(*長さ1のint配列,その配列は-1で初期化*)(*中身は直後で-1に*)(*50*)
    "or_net", 159;(*長さ1のint配列,その配列は-1で初期化*)(*中身は直後でand_net.(0)に*)
    "reflections", 161;(*長さ3のタプル*)
    "light_dirvec", 881;(*全体がタプル,第1要素は長さ3の配列(0),第2要素は長さ60の配列*)
    (*dummyはfloat配列(0, 0, 0, 0, dummy, dummy, false, dummy, dummy, dummy, dummy)*)
    "objects", 946;
  ]

let is_wereg x = x.[0] = '%'
let is_freg x = x.[1] = 'f'
let int_of_reg x = int_of_string (String.sub x 2 (String.length x - 2)) - reg_offset
let int_of_freg x = int_of_string (String.sub x 2 (String.length x - 2)) - freg_offset
let int_of_wereg x = if is_freg x then int_of_freg x else int_of_reg x

let sotn = function
  | Addzi _ -> "Addzi" | Subz _ -> "Subz"
  | Add _ -> "Add" | Sub _ -> "Sub" | Mul _ -> "Mul" | Xor _ -> "Xor" | FLoad _ -> "FLoad"
  | FSubz _ -> "FSubz" | FAdd _ -> "FAdd" | FSub _ -> "FSub" | FMul _ -> "FMul"
  | FDiv _ -> "FDiv" | Flr _ -> "Flr" | Foi _ -> "Foi" | Call _ -> "Call"
  | IfEq _ -> "IfEq" | IfLE _ -> "IfLE" | Var _ -> "Var" | Tuple _ -> "Tuple"
  | IfFEq _ -> "IfFEq" | IfFLE _ -> "IfFLE" | FGet _ -> "FGet" | FPut _ -> "FPut"
  | Get _ -> "Get" | Put _ -> "Put" | ExtArray _ -> "ExtArray"
  | ExtTuple _ -> "ExtTuple" | LetTuple _ -> "LetTuple" | Ret _ -> "Ret"

let string_of_t e =
  match e with
    | Addzi (x, y) -> sprintf "%s %s %d" (sotn e) x y
    | FLoad (x, y) -> sprintf "%s %s %f" (sotn e) x y
    | Subz (x, y) | FSubz (x, y) | Flr (x, y) | Foi (x, y) | Var (x, y)
    | ExtArray (x, y) | ExtTuple (x, y) ->
	sprintf "%s %s %s" (sotn e) x y
    | Add (x, y, z) | Sub (x, y, z) | Mul (x, y, z) | Xor (x, y, z)
    | FAdd (x, y, z) | FSub (x, y, z) | FMul (x, y, z) | FDiv (x, y, z)
    | Get (x, y, z) | Put (x, y, z) | FGet (x, y, z) | FPut (x, y, z) ->
	sprintf "%s %s %s %s" (sotn e) x y z
    | IfEq (r, x, y, _, _, _, _) | IfLE (r, x, y, _, _, _, _)
    | IfFEq (r, x, y, _, _, _, _) | IfFLE (r, x, y, _, _, _, _) ->
	sprintf "%s %s %s %s" (sotn e) r x y
    | Call (x, y, z, _) ->
	sprintf "%s %s %s (%s)" (sotn e) x y (String.concat ", " z)
    | LetTuple (x, y) ->
	sprintf "%s (%s) %s" (sotn e) (String.concat ", " x) y
    | Tuple (x, y) ->
	sprintf "%s %s (%s)" (sotn e) x (String.concat ", " y)
    | Ret x -> sprintf "%s (%s)" (sotn e) (String.concat ", " x)
  
let print_t oc e = fprintf oc "\t\t%s\n" (string_of_t e)

let print_block oc (x, (y, z)) =
  fprintf oc "\t%s -> (%s)\n" x (String.concat ", " z);
  List.iter (print_t oc) y

let print_func oc (n, x, y, z) =
  fprintf oc "%s: (%s) <- (%s)\n" n (String.concat ", " x) (String.concat ", " y);
  List.iter (print_block oc) z

let print_prog oc (x, (y, z)) =
  List.iter (print_func oc) x;
  print_func oc (y, [], [], z)
