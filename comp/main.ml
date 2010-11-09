open Printf

let limit = ref 1000
let istest = ref false

let rec iter n e = (* ��Ŭ�������򤯤꤫���� (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    let e' = (*Elim.f (ConstFold.f (Inline.f*) (Assoc.f (Beta.f e)) in
      if e = e' then e else
	iter (n - 1) e'

let prep s =
  let r = ref "" in
    for i = 0 to String.length s - 1 do
      if s.[i] = '%' then () else r := !r ^ (String.make 1 s.[i])
    done; !r

      
let memhp = 170000
let memsp = 4096
let memext = 4096
let memin = 6144
let memout = 8192(*memout���ͤ�memout+1�ǽ����*)
let floffset = 0

let extlist =
  [
    (*���Ҥ��ʤ���Ф��٤�0�ǽ����*)
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
    "dirvecs", 52;(*¿ʬ�ʤ�ǽ�������Ƥ�OK*)(*5*)
    "beam", 57;(*255.0*)(*1*)
    "tmin", 58;(*1000000000.0*)(*1*)
    "and_net", 59;(*Ĺ��1��int����,���������-1�ǽ����*)(*��Ȥ�ľ���-1��*)(*50*)
    "or_net", 159;(*Ĺ��1��int����,���������-1�ǽ����*)(*��Ȥ�ľ���and_net.(0)��*)
    "reflections", 161;(*Ĺ��3�Υ��ץ�*)
    "light_dirvec", 881;(*���Τ����ץ�,��1���Ǥ�Ĺ��3������(0),��2���Ǥ�Ĺ��60������*)
    (*dummy��float����(0, 0, 0, 0, dummy, dummy, false, dummy, dummy, dummy, dummy)*)
    "objects", 946;
  ]

let lexbuf outchan foutchan boutchan a = (* �Хåե��򥳥�ѥ��뤷�ƥ����ͥ�ؽ��Ϥ��� (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let al = (List.map (fun (x, y) -> ("min_caml_" ^ x, y)) extlist) in
    (*    Syntax.print_prog stdout a;*)
  let b = Typing.f al a in
  let c = KNormal.f b in
  let d = Alpha.f c in
  let e = iter !limit d in
  let f = Closure.f e in
  let outchan2 = open_out "b.s" in
  let pp = Opt.f outchan foutchan f in
  let g = Virtual.f memin memout memext al pp in
  let h = RegAlloc.f g in
  let goc = open_out "graph.dot" in
    Graph.f goc f;
    close_out goc;
    (*
      Closure.print_prog stdout f;
      KNormal.print_prog stdout e;
      Asm.print_prog stdout g;
      Asm.print_prog stdout h;
    *)
(*    Emit.f outchan foutchan !istest memext memin memout memsp memhp floffset h;*)
    close_out outchan2;
    (*
      let dvir = open_out "dvir" in
      let dbcls = open_out "dbcls" in
      let dacls = open_out "dacls" in
      ignore (Opt.f dvir f);
      Closure.print_prog dbcls f;
      Closure.print_prog dacls pp;
      close_out dvir;
      close_out dbcls;
      close_out dacls;
    *)
    
    (*    
	  output_string outchan (prep (Emit.string_of_alist i));

	  output_string foutchan (Emit.string_of_flist i);
    *)
    (*
      output_string boutchan (Emit.string_of_binary i);
    *)
    
    (*    
	  output_string stdout j;
    *)
    (*
      print_newline ();
      output_string stdout (sprintf "%d\n"
    *)
    ()
      (*
	let string s = lexbuf stdout (Lexing.from_string s) (* ʸ����򥳥�ѥ��뤷��ɸ����Ϥ�ɽ������ (caml2html: main_string) *)
      *)
      (*
	let file f = (* �ե�����򥳥�ѥ��뤷�ƥե�����˽��Ϥ��� (caml2html: main_file) *)
	let inchan = open_in f in
	let outchan = stdout in
	try
	lexbuf outchan (Lexing.from_channel inchan);
	close_in inchan;
	close_out outchan;
	with e -> (close_in inchan; close_out outchan; raise e)
      *)


      
let () = (* �������饳��ѥ���μ¹Ԥ����Ϥ���� (caml2html: main_entry) *)
  let files = ref [] in
    Arg.parse
      [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
       ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
       ("-test", Arg.Unit(fun () -> istest := true), "")]
      (fun s -> files := !files @ [s])
      ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
	 Printf.sprintf
	 "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
    let p = List.map (fun x -> 
			let inchan = open_in (x ^ ".ml") in
			let a = Parser.exp Lexer.token (Lexing.from_channel inchan) in
			  close_in inchan; a) !files in
    let q = List.fold_right (fun b a ->
			       if a = Syntax.Unit then b
			       else Syntax.addexp b a) p Syntax.Unit in
    let ofile = open_out "a.s" in
    let fofile = open_out "fp.s" in
    let bofile = open_out "bi" in
      lexbuf ofile fofile bofile q;
      close_out ofile;
      close_out fofile
	
