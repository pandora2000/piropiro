open Printf
open List

type id = string
type bid = string
type iid = int
type t =
  | Addzi of id * int
  | Subz of id * id
  | Add of id * id * id
  | Addi of id * id * int
  | Sub of id * id * id
  | Mul of id * id * id
  | Xor of id * id * id
  | FLoad of id * float
  | FSubz of id * id
  | FAdd of id * id * id
  | FSub of id * id * id
  | FMul of id * id * id
  | FDiv of id * id * id
  | FSqrt of id * id
  | Flr of id * id
  | Foi of id * id
  | Call of id list * bid * (id list)
  | Jump of id list * bid * (id list)
  | IfEq of id * id * id
  | IfLE of id * id * id 
  | IfEqz of id * id 
  | IfLEz of id * id 
  | IfGEz of id * id 
  | IfFEq of id * id * id 
  | IfFLE of id * id * id 
  | IfFEqz of id * id 
  | IfFLEz of id * id 
  | IfFGEz of id * id 
  | Var of id * id
  | Tuple of id * (id list)
  | Get of id * id * id
  | Geti of id * id * int
  | Put of id * id * id
  | Puti of id * int * id
  | FGet of id * id * id
  | FGeti of id * id * int
  | FPut of id * id * id
  | FPuti of id * int * id
  | ExtArray of id * id
  | ExtTuple of id * id
  | LetTuple of (id list) * id
  | Ret of id list
      (*bid listはcfgにおける次のブロック*)
      (*ただしJumpの場合、関数内にあるブロックに飛ぶ場合のみ存在する*)
      (*空ならreturnであることを示している*)
type inst = { mutable id : iid; mutable inst : t;
	      mutable preds : iid list; mutable succs : iid list;
	      mutable ord : iid;
	      mutable lin : id list; mutable lout : id list }
type block = { bid : bid; mutable insts : inst list; nextids : bid list }
type func = { fid : bid; rids : id list; mutable aids : id list; blks : block list;
	      mutable sid : iid; mutable cfg : inst list;
	      mutable cenv : (id * int) list; mutable fcenv : (id * int) list;
	      mutable callees : bid list;
	      mutable using_regs : int list; mutable using_fregs : int list }
type prog = { funcs : func list; efunc : func }

type 'a orderelem = { ordid : int; mutable ordsuccs : int list; ordvalue : 'a }

let genid x = Id.genid x
  
let get_block func id = find (fun x -> x.bid = id) func.blks

let make_inst t = { id = 0; inst = t; preds = []; succs = []; ord = 0; lin = []; lout = [] }

let make_block bid = { bid = bid; insts = []; nextids = [] }

let make_func id rids aids blks =
  { fid = id; rids = rids; aids = aids; blks = blks;
    sid = 0; cfg = []; cenv = []; fcenv = []; callees = [];
    using_regs = []; using_fregs = [] }
    
let fold_func f s func =
  let rec sub s blk = fold_left (fun a ist -> f a ist) s blk.insts in
    fold_left (fun a blk -> sub a blk) s func.blks

      (*
let fold_func2 f s func =
  let get_block = get_block func in
  let rec sub s bid =
    let blk = get_block bid in
      fold_right
	(fun ist a ->
	   match ist.inst with
	     | IfEq (_, _, _, th, el, ct) | IfLE (_, _, _, th, el, ct)
	     | IfFEq (_, _, _, th, el, ct) | IfFLE (_, _, _, th, el, ct) 
	     | IfEqz (_, _, th, el, ct) | IfLEz (_, _, th, el, ct) 
	     | IfFEqz (_, _, th, el, ct) | IfFLEz (_, _, th, el, ct) 
	     | IfGEz (_, _, th, el, ct) | IfFGEz (_, _, th, el, ct) ->
		 (match ct with
		    | Some x ->
			f a ist bid (sub s th) (sub s el) (sub s x)
		    | None ->
			f a ist bid (sub s th) (sub s el) s)
	     | _ -> f a ist bid s s s) blk.insts s in
	sub s func.fid
      *)
      
let reg_offset = 6
let freg_offset = 2
let regs = Array.init (32 - reg_offset) (fun i -> sprintf "%%r%d" (i + reg_offset))
let fregs = Array.init (32 - freg_offset) (fun i -> sprintf "%%f%d" (i + freg_offset))
let n_regs = Array.length regs
let n_fregs = Array.length fregs
let regls = Array.to_list regs
let fregls = Array.to_list fregs
let zreg = "%r0"
let tmpreg = "%r1"
let spreg = "%r2"
let hpreg = "%r3"
let oreg = "%r4"
let moreg = "%r5"
let fzreg = "%f0"
let ftmpreg = "%f1"

let is_anyreg x = x.[0] = '%'
let is_wereg x = mem x regls || mem x fregls
let is_freg x = x.[1] = 'f'
let int_of_reg x = int_of_string (String.sub x 2 (String.length x - 2)) - reg_offset
let int_of_freg x = int_of_string (String.sub x 2 (String.length x - 2)) - freg_offset
let int_of_wereg x = if is_freg x then int_of_freg x else int_of_reg x
let int_of_outreg x = int_of_string (String.sub x 2 (String.length x - 2))

let fptoffset = 0
let memhp = 1024
let memsp = 256
let memext = memhp

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

let max_imm_int = 32767
let min_imm_int = -32768

let check_imm_range x = min_imm_int <= x && x <= max_imm_int
      
let dnames =
  ["min_caml_create_array"; "min_caml_create_float_array";
   "min_caml_read_int"; "min_caml_read_float";
   "min_caml_print_char"; "min_caml_print_float"] 
let dummies = map (fun x -> make_func x [] [] [make_block x]) dnames 
let mcca = nth dummies 0 
let mccfa = nth dummies 1 
let mcri = nth dummies 2 
let mcrf = nth dummies 3 
let mcpc = nth dummies 4 
let mcpf = nth dummies 5 
let () =
  mcca.using_regs <- [0; 1; 2; 3]; mcca.using_fregs <- [];
  mcca.aids <- ["mcca0"; "mcca1"]; mcca.cenv <- ["mcca0", 0; "mcca1", 1];
  mccfa.using_regs <- [0; 1; 3]; mccfa.using_fregs <- [0];
  mccfa.aids <- ["mccfa0"; "mccfa1"]; mccfa.cenv <- ["mccfa0", 0]; mccfa.fcenv <- ["mccfa1", 0];
  mcri.using_regs <- [0]; mcri.using_fregs <- [];
  mcrf.using_regs <- []; mcrf.using_fregs <- [0];
  mcpc.using_regs <- [0]; mcpc.using_fregs <- [];
  mcpc.aids <- ["mcpc0"]; mcpc.cenv <- ["mcpc0", 0];
  mcpf.using_regs <- []; mcpf.using_fregs <- [0];
  mcpf.aids <- ["mcpf0"]; mcpf.fcenv <- ["mcpf0", 0]

let use_regdisp = ref false

let sotn = function
  | Addzi _ -> "Addzi" | Subz _ -> "Subz"
  | Addi _ -> "Addi" | FGeti _ -> "FGeti" | Geti _ -> "Geti"
  | FPuti _ -> "FPuti" | Puti _ -> "Puti" | Jump _ -> "Jump"
  | IfFEqz _ -> "IfFEqz" | IfFLEz _ -> "IfFLEz" | IfFGEz _ -> "IfFGEz"
  | IfEqz _ -> "IfEqz" | IfLEz _ -> "IfLEz" | IfGEz _ -> "IfGEz" 
  | Add _ -> "Add" | Sub _ -> "Sub" | Mul _ -> "Mul" | Xor _ -> "Xor" | FLoad _ -> "FLoad"
  | FSubz _ -> "FSubz" | FAdd _ -> "FAdd" | FSub _ -> "FSub" | FMul _ -> "FMul"
  | FDiv _ -> "FDiv" | FSqrt _ -> "FSqrt" | Flr _ -> "Flr" | Foi _ -> "Foi"
  | Call _ -> "Call" | IfEq _ -> "IfEq" | IfLE _ -> "IfLE"
  | Var _ -> "Var" | Tuple _ -> "Tuple" | IfFEq _ -> "IfFEq"
  | IfFLE _ -> "IfFLE" | FGet _ -> "FGet" | FPut _ -> "FPut"
  | Get _ -> "Get" | Put _ -> "Put" | ExtArray _ -> "ExtArray"
  | ExtTuple _ -> "ExtTuple" | LetTuple _ -> "LetTuple"
  | Ret _ -> "Ret"

let string_of_t e =
  match e with
    | Ret x -> sprintf "%s (%s)" (sotn e) (String.concat ", " x)
    | Addzi (x, y) -> sprintf "%s %s %d" (sotn e) x y
    | FLoad (x, y) -> sprintf "%s %s %f" (sotn e) x y
    | Subz (x, y) | FSubz (x, y) | Flr (x, y) | Foi (x, y) | Var (x, y) | FSqrt (x, y)
    | ExtArray (x, y) | ExtTuple (x, y) ->
	sprintf "%s %s %s" (sotn e) x y
    | Add (x, y, z) | Sub (x, y, z) | Mul (x, y, z) | Xor (x, y, z)
    | FAdd (x, y, z) | FSub (x, y, z) | FMul (x, y, z) | FDiv (x, y, z)
    | Get (x, y, z) | Put (x, y, z) | FGet (x, y, z) | FPut (x, y, z) ->
	sprintf "%s %s %s %s" (sotn e) x y z
    | Addi (x, y, z) -> sprintf "%s %s %s %d" (sotn e) x y z
    | Geti (x, y, z) | FGeti (x, y, z) ->
	sprintf "%s %s %s %d" (sotn e) x y z
    | Puti (x, y, z) | FPuti (x, y, z) ->
	sprintf "%s %s %d %s" (sotn e) x y z
    | IfEq (r, x, y) | IfLE (r, x, y)
    | IfFEq (r, x, y) | IfFLE (r, x, y) ->
	sprintf "%s %s %s %s" (sotn e) r x y
    | IfEqz (r, x) | IfLEz (r, x) | IfGEz (r, x)
    | IfFEqz (r, x) | IfFLEz (r, x) | IfFGEz (r, x) ->
	sprintf "%s %s %s" (sotn e) r x
    | Call (x, y, z) | Jump (x, y, z) ->
	sprintf "%s (%s) %s (%s)" (sotn e) (String.concat ", " x) y (String.concat ", " z)
    | LetTuple (x, y) ->
	sprintf "%s (%s) %s" (sotn e) (String.concat ", " x) y
    | Tuple (x, y) ->
	sprintf "%s %s (%s)" (sotn e) x (String.concat ", " y)

let print_cfg oc cfg =
  iter (fun x ->
	  fprintf oc "\t%d %s\n\t\t->(%s)\n" x.id (string_of_t x.inst)
	    (String.concat ", " (map string_of_int x.succs))) cfg
    
let print_inst_and_lout oc e =
  fprintf oc "\t\t%s (%s)\n" (string_of_t e.inst) (String.concat ", " e.lout)

let print_block oc b =
  fprintf oc "\t%s -> (%s)\n" b.bid (String.concat ", " b.nextids);
  List.iter (print_inst_and_lout oc) b.insts

let print_func oc f =
  fprintf oc "%s: (%s) <- (%s)\n" f.fid (String.concat ", " f.rids)
    (String.concat ", " f.aids);
  List.iter (print_block oc) f.blks
