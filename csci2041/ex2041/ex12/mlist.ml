type 'a ll = { mutable hd : 'a ; mutable tl : 'a mlist}
 and 'a mlist = List of 'a ll | Nil

let mlist_of_list ls = Nil

let rev_mlist l = l

let append_m l1 l2 = Nil
