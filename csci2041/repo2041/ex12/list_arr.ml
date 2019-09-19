let rev_array a =
let len = Array.length a in
let rec helper i l =
if i < l/2 then (let temp = a.(i) in
  a.(i) <- a.(len-i-1) ;
  a.(len-i-1) <- temp)
  else ()
in helper 0 len

let zip_array u v =
let ul = Array.to_list u in
let vl = Array.to_list v in
let cl = List.map2 (fun a b -> (a,b) ) ul vl in
Array.of_list (cl)
