type suit = Hearts | Spades | Clubs | Diamonds
type value = Simple of int | Jack | Queen | King | Ace
type card = { value : value; suit : suit }

(* fill this one in *)
let rec trick_winner_trump (cards : card list) (trump: suit option) = if (List.length cards) = 1 then
match cards with
|h::[] -> match h with
{value ; suit} -> {value; suit}
else 
{value = Simple 9; suit = Hearts}

let rec list_max (l: 'a list) : 'a option = None
