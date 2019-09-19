let rec map f lst =
  match lst with
  | [] -> []
  | h::t -> (f h)::(map f t)

(* fold_left in Ocaml *)
let rec fold f acc lst =
  match lst with
  | [] -> acc
  | h::t -> fold f (f acc h) t

(* fold_right in Ocaml *)
let rec reduce f lst init =
  match lst with
  | [] -> init
  | h::t -> f h (reduce f t init)

(* list functions from map,fold, and reduce *)
let append l1 l2 = reduce (fun x y -> x :: y) l1 l2

let filter pred lst = reduce (fun x y -> if pred x then x::y else y) lst []

let list_cat = fold (fun c acc -> c^acc ) ""

let list_fst = map (fun (x,y) -> x)

(* let mem x lst = reduce ___  (map  ___  lst) ___ *)

let mem x lst = reduce (fun h t -> if h then true else t ) ( map (fun a -> if a = x then true else false) lst ) false

let count_intersection lst1 lst2 = fold (fun x y -> if (mem y lst1) then x+1 else x) 0 lst2

let assoc_max lst = match lst with
| [] -> None
| h::t -> match (fold (fun (h',t') (h'',t'') -> if t'' > t' then (h'',t'') else (h',t')  ) h t) with
| a,b -> Some a
