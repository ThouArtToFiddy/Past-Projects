type 'a btree = Node of 'a * 'a btree * 'a btree | Empty

let rec append_k lst1 lst2 k = k []

let rec filter_k f lst k = k []

let rec tree_sum_k t k = k 0

let rec tree_map_k t k = k Empty
