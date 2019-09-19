type 'a btree = Node of 'a * 'a btree * 'a btree | Empty

let rec append_k lst1 lst2 k = match lst1 with
| [] -> k lst2
| h::t -> append_k t lst2 (fun r -> k (h::r))


let rec filter_k f lst k = match lst with
| [] -> k []
| h::t -> filter_k f t (fun r -> k (if (f h) then h::r else r) )


let rec tree_sum_k t k = match t with
| Empty -> k 0
| Node (v, a, b) -> tree_sum_k a (fun r -> tree_sum_k b (fun x -> k (v + x + r ) ))

let rec tree_map_k f t k = Empty
