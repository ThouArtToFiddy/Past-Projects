(* functions.ml - exercise set 2, CSci 2041, Spring 2019 *)
(* Your Name Here *)

(* Complete this *)
let (++) (x:int) (y:int) = 0

(* 2d real vectors *)
let vec_add (u:float*float) (v:float*float) = u
let dot (u:float*float) (v:float*float) = 0.
let perp u v : bool = true

(* some functions on int lists *)
let rec range (m:int) (n:int) = range n m
let rec sum_positive (ls: int list) = 0

(* Fix this definition *)
let rec take m lst = match (m,lst) with
| (_,[]) -> []
| (n,h::t) -> h::(take (n-1) t)
| (0,_) -> []

