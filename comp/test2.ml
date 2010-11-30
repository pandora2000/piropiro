let rec a x =
  let p = 1.0 in
    rgb.(0) <- p;
    print_float rgb.(0) in
  a 30
