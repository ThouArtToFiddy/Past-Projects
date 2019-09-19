type suit = Hearts
type value = Simple of int | King | Ace
type card = { suit : suit; value : value }

(* fill this one in *)
let rec trick_winner_trump (cards : card list) (trump: suit option) = { suit=Hearts ; value = Simple 2}

let rec list_max (l: 'a list) : 'a option = None
