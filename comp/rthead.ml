
let rec isqrt a x n =
  if n = 0 then x else isqrt a (x *. (3.0 -. a *. x *. x) /. 2.0) (n - 1) in
let rec sqrt a = a *. (isqrt a
			 (if a <= 1.0 then 1.0 else 1.0 /. a)
			 15) in

sqrt 0.0
  
