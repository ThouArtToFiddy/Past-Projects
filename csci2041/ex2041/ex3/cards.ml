(* Minnesota Whist *)

type card_suit = Clubs | Diamonds
type card_value = Two | Three | King | Ace
type card = { value : card_value ; suit : card_suit }

let string_of_value v = match v with
| Ace -> "A"
| King -> "K"
| Three -> "3"
| Two -> "2"

let string_of_suit s = match s with
| Clubs -> "C"
| Diamonds -> "D"

let string_of_card { value; suit } = (string_of_value value) ^ (string_of_suit suit)

let suit_of_char c = match c with
| 'C' -> Clubs
| 'D' -> Diamonds
| _ -> invalid_arg "not a suit of cards!"

let value_of_string c = match c with
| "2" -> Two
| "3" -> Three
| "K" -> King
| "A" -> Ace
| _ -> invalid_arg "not a card value!"

let card_of_string s = let l = (String.length s) - 1 in
  { value = value_of_string (String.sub s 0 l) ; suit = suit_of_char s.[l] }

let trick_winner cards = match cards with
| [] -> invalid_arg "empty trick"
| lead::t -> let rec win_helper cs cw = match cs with
  | c::t -> if c.suit = lead.suit && c.value > cw.value then win_helper t c
            else win_helper t cw
  | [] -> cw
  in win_helper t lead
