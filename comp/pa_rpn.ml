(* ocamlc -c -I +camlp4 -pp "camlp4o q_MLast.cmo" pa_rpn.ml *)

let _ =
Pcaml.parse_implem := function strm ->
  let _loc = Token.dummy_loc in
  let stack = Stack.create () in
  let rec process stack strm = 
    match (Stream.peek strm) with 
      | Some ('0'..'9')
        -> let c = String.make 1 (Stream.next strm) in
           Stack.push <:expr<$int:c$>> stack;
           process stack strm
      | Some ('+')
        -> Stream.junk strm;
           let x = Stack.pop stack and y = Stack.pop stack in
           Stack.push <:expr< $y$ + $x$ >> stack;
           process stack strm
      | Some ('-')
        -> Stream.junk strm;
           let x = Stack.pop stack and y = Stack.pop stack in
           Stack.push <:expr< $y$ - $x$ >> stack;
           process stack strm
      | Some ('*')
        -> Stream.junk strm;
           let x = Stack.pop stack and y = Stack.pop stack in
           Stack.push <:expr< $y$ * $x$ >> stack;
           process stack strm
      | Some ('/')
        -> Stream.junk strm;
           let x = Stack.pop stack and y = Stack.pop stack in
           Stack.push <:expr< $y$ / $x$ >> stack;
           process stack strm
      | Some _
        -> raise (Failure "unknown char")
      | None
        -> let e = Stack.pop stack in
           <:str_item< print_int $e$ >>
  in
  [(process stack strm), _loc], false;
