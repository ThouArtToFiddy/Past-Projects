(* lab 9 examples to convert to CPS *)
let rec map f lst = match lst with
  | [] -> []
  | h::t -> (f h)::(map f t)

let rec append l1 l2 = match l1 with
  | [] -> l2
  | h::t -> h::(append t l2)

let rec assoc_update k v lst = match lst with
  | [] -> [(k,v)]
  | (k',_)::t when k'=k -> (k,v)::t
  | kv::t -> kv::(assoc_update k v t)


(* some helper functions for testing *)
let rec long_assoc n acc = if (n=0) then acc else
  long_assoc (n-1) ((("v"^(string_of_int n)),n)::acc)

(* CPS versions go here: *)
let map_k f lst =
  let rec kmap lst k = match lst with
    | [] -> k []
    | h::t -> kmap t (fun result -> k ((f h)::result)) in
  kmap lst (fun x -> x)
