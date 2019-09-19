(* Type inference examples.  These functions are "not polymorphic enough"  *)
(* Don't add or remove lines from this file, it will break gitbot *)

(* Intended type of pairwith:
   Actual type:
   Explanation:
 *)
let rec pairwith x lst =
  match lst with
  | [] -> []
  | (h::t) -> (x,h) :: pairwith x t


(* Intended type of has_any:
   Actual type:
   Explanation:
 *)
let rec has_any x lst =
  match lst with
  | [] -> false
  | (h::t) -> x=h || has_any t

(* Intended type of lookup:
   Actual type:
   Explanation:
 *)
let rec lookup key lst =
  match lst with
  | [] -> "No match"
  | (k,v)::t -> if k=key then v else lookup key t


(* Intended type of reverse :
   Actual type:
   Explanation:
 *)
let tail_rev acc ls =
  match ls with
  | [] -> acc
  | (h::t) -> tail_rev (h::acc) t
let reverse = tail_rev []
