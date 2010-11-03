let rec add x y =
  if y = 0 then x else add (x + 1) (y - 1) in
let rec mul10 x =
  x + x + x + x + add x x + x + x + x + x in
  mul10 4
    
