type 'a ll = { mutable hd : 'a ; mutable tl : 'a mlist}
 and 'a mlist = List of 'a ll | Nil

let mlist_of_list ls =
let rec helper ll ls = match ls with
| [] -> ll
| h::t -> helper (List { hd = h; tl = ll}) t
in helper Nil (List.rev ls)

let rev_mlist l =
let rec helper ll acc = match ll with
| Nil -> acc
| List {hd = a; tl = b } -> helper b (List {hd = a; tl = acc })
in helper l Nil

let append_m l1 l2 = Nil
