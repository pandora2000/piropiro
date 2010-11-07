open List

let cup x y = fold_left (fun a b -> if mem b a then a else b :: a) x y
let cups x = fold_left (fun a b -> cup b a) [] x
let cap l m = fold_left (fun a b -> if mem b m then b :: a else a) [] l
let caps x whole = fold_left (fun a b -> cap b a) whole x
let rem l m = fold_left (fun a b -> if mem b m then a else b :: a) [] l
let max l = fold_left (fun a b -> if a > b then a else b) min_int l
