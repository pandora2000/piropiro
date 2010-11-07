(*ocamlc -pp "camlp4o pa_extend.cmo" -I +camlp4 -c foo.ml*)

(*#load "camlp4o.cma";;
  #load "pa_extend.cmo";;*)

open Camlp4;;
EXTEND Gram
  expr: LEVEL "expr1"
    [[ "repeat"; e1 = expr; "until"; e2 = expr ->
          <:expr< do { $e1$; while not $e2$ do { $e1$; } } >> ]];
END;;
