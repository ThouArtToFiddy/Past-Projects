(* Minnesota Whist *)

type card_suit = Clubs | Diamonds | Hearts | Spades
type card_value =  Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace
type card = { value : card_value ; suit : card_suit }

let string_of_value v = match v with
| Two -> "2"
| Three -> "3"
| Four -> "4"
| Five -> "5"
| Six -> "6"
| Seven -> "7"
| Eight -> "8"
| Nine -> "9"
| Ten -> "10"
| Jack -> "11"
| Queen -> "12"
| King -> "13"
| Ace -> "1"



let string_of_suit s = match s with
| Clubs -> "C"
| Diamonds -> "D"
| Hearts -> "H"
| Spades -> "S"

let string_of_card { value; suit } = (string_of_value value) ^ (string_of_suit suit)

let suit_of_char c = match c with
| 'C' -> Clubs
| 'D' -> Diamonds
| 'H' -> Hearts
| 'S' -> Spades
| _ -> invalid_arg "not a suit of cards!"

let value_of_string c = match c with
| "2" -> Two
| "3" -> Three
| "4" -> Four
| "5" -> Five
| "6" -> Six
| "7" -> Seven
| "8" -> Eight
| "9" -> Nine
| "10" -> Ten
| "11" -> Jack
| "12" -> Queen
| "13" -> King
| "1" -> Ace
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
