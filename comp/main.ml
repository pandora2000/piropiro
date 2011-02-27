open Printf

let limit = ref 1000
let run = ref false
let only = ref false
  (*let outmode = ref 0*)

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  (*Format.eprintf "iteration %d@." n;*)
  if n = 0 then e else
    let e' = EasyLoop.f (Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e))))) in
      if e = e' then e else
	iter (n - 1) e'

let lexbuf outchan foutchan pkoutchan a = 
  Id.counter := 0;
  Typing.extenv := M.empty;
  let al = (List.map (fun (x, y) -> ("min_caml_" ^ x, y)) Optt.extlist) in
    (*Syntax.print_prog stdout a;*)
  let b = Typing.f al a in
  let c = KNormal.f b in
  let d = Alpha.f c in
  let e = iter !limit d in
  let () = KNormal.print_prog pkoutchan e in
  let f = Closure.f e in
    (*Closure.print_prog stdout f;*)
  let goc = open_out "graph.dot" in
    Graph.f goc f;
    close_out goc;
    Opt.f outchan foutchan f;
    ()

let run_sim () =
  if !run then
    (printf "simulation start\n%!";
     Unix.execv "sim/a.out" [||])
      
let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let nofile = ref true in
  let files = ref [] in
  let ofile = ref "a.s" in
  let fofile = ref "fp.s" in
  let pkfile = ref "pk" in
  let t = Time.get_time () in
    Arg.parse
      [("-i", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
       ("-ni", Arg.Unit(fun _ -> Inline.optnoinline := true), "not inline functions");
       ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
       ("-ur", Arg.Unit(fun _ -> Optt.use_regdisp := true), "use register displacement");
       ("-r", Arg.Unit(fun _ -> run := true), "run simulator after compile");
       ("-or", Arg.Unit(fun _ -> run := true; only := true), "run simulator without compile");
       ("-pk", Arg.String(fun s -> pkfile := s), "specify output intermediate code file name");
       (*("-e", Arg.Int(fun i -> outmode := i), "select emit mode, 0 means native");*)
       ("-o", Arg.String(fun s -> ofile := s), "specify output binary file name");
       ("-fo", Arg.String(fun s -> fofile := s), "specify output fp table file name")]
      (fun s -> nofile := false; files := !files @ [s])
      "My Min-Caml Compiler";
    if !only then run_sim () else
      (
	files := if !nofile then ["rth"; "rt"] else !files;
	let p = List.map (fun x -> 
			    let inchan = open_in (x ^ ".ml") in
			    let a = Parser.exp Lexer.token (Lexing.from_channel inchan) in
			      close_in inchan; a) !files in
	let q = List.fold_right (fun b a ->
				   if a = Syntax.Unit then b
				   else Syntax.addexp b a) p Syntax.Unit in
	let ofile = open_out !ofile in
	let fofile = open_out !fofile in
	let pkfile = open_out !pkfile in
	  lexbuf ofile fofile pkfile q;
	  close_out ofile;
	  close_out fofile;
	  close_out pkfile;
	  printf "elapsed time: %s\n" (Time.string_of_elapsed_secs t);
	  run_sim ()	
      )
