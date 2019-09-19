(* functions.ml - exercise set 2, CSci 2041, Spring 2019 *)
(* Jerry Wu *)

(* Complete this *)
let (++) (x:int) (y:int) =
  if x+y>32767
    then 32767
  else if x + y < -32768
    then -32768 else x + y


(* 2d real vectors *)
let vec_add (u:float*float) (v:float*float) =
  let a, b = u in
  let c, d = v in
  (a+.c),(b+.d)


let dot (u:float*float) (v:float*float) =
  let a, b = u in
  let c, d = v in
    a*.c+.b*.d

let perp u v : bool =
  if dot u v = 0.0
    then true
  else false

(* some functions on int lists *)
let rec range (m:int) (n:int) =
  if m >= n
    then []
  else m::(range (m+1) n)

let rec sum_positive = function
  | [] -> 0
  | head :: tail -> if head > 0 then head + sum_positive tail else sum_positive tail

(* Fix this definition *)
let rec take m lst = match (m,lst) with
| (_,[]) -> []
| (0,_) -> []
| (n,h::t) -> h::(take (n-1) t)
