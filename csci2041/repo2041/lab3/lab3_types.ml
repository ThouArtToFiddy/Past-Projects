(* Type inference examples.  These functions are "not polymorphic enough"  *)
(* Don't add or remove lines from this file, it will break gitbot *)

(* Intended type of pairwith: 'a -> 'b list -> ('a, 'b) list
   Actual type:  'a -> 'b list -> ('a, 'b) list
   Explanation: this function takes 'a x and 'b lst and create a tuple list of ('a,'b)
 *)
let rec pairwith x lst =
  match lst with
  | [] -> []
  | (h::t) -> (x,h) :: pairwith x t


(* Intended type of has_any: 'a -> 'a list -> bool
   Actual type: error
   Explanation: the function is missing conditionals
 *)
let rec has_any x lst =
  match lst with
  | [] -> false
  | (h::t) -> if x=h then true else has_any x t

(* Intended type of lookup: 'a -> ('a, 'b') list -> 'b
   Actual type: 'a -> ('a, string) list -> string
   Explanation: Takes a key and a list of tuples to perform key check like a dictionary and returns the value matching the key if found added in failwith so any type works
 *)
let rec lookup key lst =
  match lst with
  | [] -> failwith "No match"
  | (k,v)::t -> if k=key then v else lookup key t


(* Intended type of reverse : 'a list -> 'a list
   Actual type: error
   Explanation: missing rec key word in tail_rev function also reverse needs input
 *)
let rec tail_rev acc ls =
  match ls with
  | [] -> acc
  | (h::t) -> tail_rev (h::acc) t
let reverse lst = tail_rev [] lst
