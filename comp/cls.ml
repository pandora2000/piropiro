let rec a x =
  let b = x + 1 in
  let c =
    if x = 0 then if x = 1 then b else b else b in
    c in
  a 3
  
