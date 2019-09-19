# Exercise Set 3: User-Defined types in OCaml

*CSci 2041: Advanced Programming Principles, Spring 2019 (Hopper)*

**Due:** Monday, February 11 at 11:59pm

## 1. Tail Recursion and nested functions

The file `ex3/tailrec.ml` contains some syntax to get you started on this problem.  Copy it to the `ex3` directory in your personal repository (remember to `git add` the directory and the file before you commit!) and read on:

### `msort`

The `tailrec.ml` file contains an incomplete implementation of merge sort, a
sorting algorithm that works by splitting a list into two halves, recursively
sorting each half, and then merging the sorted results.  `msort` has a few
problems: first, the body is missing some base cases (it will recurse infinitely
as written), and second, the `merge` helper function is not tail recursive, so
the function will overflow the call stack when sorting a sufficiently large
list.  

Fix the helper function (it will need an accumulator parameter) so that it only
uses a fixed number of stack frames regardless of the size of the input list,
and complete the body of the definition.  You might find the functions
`List.rev` and `List.rev_append` useful here, since they are tail recursive.

Some example evaluations:
+ `msort []` evaluates to `[]`
+ `msort [0; 17; -32]` evaluates to `[-32; 0 ; 17]`
+ `msort ["not"; "me"; "string"; "list"]` evaluates to `["list"; "me"; "not"; "string"]`

### `range` again

Most likely your implementation of `range` from part 1 was not tail recursive.  Rework it here to use a tail-recursive helper function so that it uses at most a fixed number of stack frames regardless of the input parameters.

### `*@` operator

Another way to build lists in python is with the `*` operation: `n*lst` is `n` copies of the list `lst`, so for example `3*[1,2]` is the list `[1,2,1,2,1,2]`.  Let's implement the operator `( *@ ) : int -> 'a list -> 'a list` in OCaml to have the same behavior, and use tail recursion to use a fixed number of stack frames regardless of the input parameters.  Some example evaluations:

+ `3 *@ [1;2]` evaluates to `[1;2;1;2;1;2]`
+ `0 *@ [3.14159; 2.71828]` evaluates to `[]` (the same for any negative number of copies)
+ `17 *@ []` evaluates to `[]`


**Note**: The `@` operator is not tail-recursive; it is implemented exactly as we described the function `append` in class.

### Additional test cases
+ `range 1 1` evaluates to `[]`
+ `range 13 17` evaluates to `[13; 14; 15; 16]`
+ `msort (range 0 10000000)` does not fail with `Stack_overflow` (it might take noticeable time to evaluate in an interactive REPL like `utop`, though)
+ `range 0 10000000` does not fail with `Stack_overflow`
+ `10000000 *@ [1;2]` does not fail with `Stack_overflow`

Your solution must pass at least 7/11 test cases to get full credit for this problem.


## 2. Records and enumerated unions: Card Games

The file `ex3/cards.ml` contains some syntax to help get started on this problem.  Copy it to an `ex3` directory in your personal repository to get started with them.

## Card Games

A "standard" card deck consists of 52 cards, each suit (Hearts, Clubs, Spades, Diamonds) having thirteen cards (2 through 10, Jack, Queen, King, Ace).  The file `cards.ml` contains incomplete definitions for three types: `card_suit`, `card_value`, and `card` (a record with suit and value fields.)  It also has incomplete definitions for functions to convert string representations of cards, like `"KD"` for Jack of Diamonds, into values of type `card`. (We're too lazy to look up how to represent a diamond, heart, club, or spade as a unicode character in OCaml.  If you want, you can add `unicode_string_of_card` and `card_of_unicode_string` functions to handle these fancier string representations.)

### `card_suit`, `card_value`, `string_of_card`, `card_of_string`

Complete the definitions of the `card_suit` and `card_value` types, along with the `card_of_string` and `string_of_card` functions.  Your definitions should allow comparisons between values of type `card_value` so that, for example, `Two < Five` and `Three < Queen` evaluate to true.  Some sample evaluations:

+ `let s : card_suit = Spades` should compile without errors

+ `let v : card_value = Jack` should compile without errors

+ `let c4c = { value = Four; suit = Clubs }` should compile without errors

+ `let cqd = { value = Queen; suit = Diamonds }` should compile without errors

+ `card_of_string "10D"` should evaluate to the record `{ value = Ten; suit = Diamonds }`

+ `string_of_card (card_of_string "9H")` should evaluate to `"9H"`


### `trick_winner`

Many card games involve play in "tricks" (eg. Spades, Hearts, Bridge, Whist), in which a player leads with a card, and other players also lay out cards, of the same suit if possible.  Once all players have played cards, the highest card of the same suit as the lead card "wins" or "takes" the "trick."  (and typically becomes the leader for the next trick.)  In `cards.ml` there is a prototype for the function `trick_winner : card list -> card` which should return the value of the winning `card` from a list of `card` values, assuming the cards were played in the order given.  (Assuming there are no "trump" cards, and Aces are "high".)  Fill in the definition for this function.  Some sample evaluations:

+ `trick_winner [ {value = Two; suit = Hearts}; {value = King; suit = Spades } ]` should evaluate to `{ value = Two; suit = Hearts }` because the lead suit was Hearts.

+ `trick_winner [ {value = Two; suit = Hearts}; {value = King; suit = Hearts } ]` should evaluate to `{ value = King; suit = Hearts }` because the King had the same suit as the lead card.

+ `trick_winner []` should raise an exception with `invalid_arg "empty trick"` because there can't be a winner in a trick with no cards.

### Test cases

To get full credit for this section, your solution should produce correct results on at least 8/9 sample evaluations.

## 3. Disjoint unions

### TLD of hostinfo

In lecture, we defined a type `hostinfo` that is either a 4-byte "IP
address" (like `(134,84,159,182)`) or a string-valued "DNS name" (like
`"www.myu.umn.edu"`):

```
type hostinfo = IP of int * int * int * int | DNSName of string
```
We've conveniently placed this type definition in the file
`ex3/hostinfo.ml`.

An important property of a DNS name is the _top level domain_ - the
string after the last `'.'` character. For example the top-level
domain (or TLD) of "www.myu.umn.edu" is "edu", the TLD of
"www.google.com" is "com", and the TLD of "cs2041.org" is "org".
In `hostinfo.ml`, add the OCaml definition for the function `tld : hostinfo -> string
option`, which returns the TLD of a hostinfo value that is a DNS
name, and `None` if its argument is an IP address.   Some example
evaluations:

+ `tld (IP (8,8,8,8))` evaluates to `None` because its argument is an
IP value.
+ `tld (DNSName "cnn.com")` evaluates to `Some "com"`
+ `tld (DNSName "comcast.net")` evaluates to `Some "net"`

Hint: you might find the functions `String.sub` and `String.rindex` in the
[`String` module](http://caml.inria.fr/pub/docs/manual-ocaml/libref/String.html)
to be useful here.

### Card_option: Trump cards

The file `card_option.ml` contains the start of a similar set of types to represent playing cards as in the first problem: here we'll represent a card value as either `Simple of int`, or one of the "Face cards".  Here we'll extend the problem of determining the winner of a trick to consider the idea of "trump cards."  When a trick is played with a trump suit, the winner is the highest card of the lead suit, if no cards of the trump suit are played, or the highest card of the trump suit, if at least one such trump card is played.  

Fill in the definition of `trick_winner_trump : card list -> card_suit option -> card`, which can determine the winner of a trick when there is no trump suit (the second parameter is `None`) or when there is a trump suit (the second parameter is `Some s`).  Some sample evaluations:

+ `trick_winner_trump [{value = Simple 9; suit = Hearts}] (Some Diamonds)` should evaluate to `{value = Simple 9; suit = Hearts}`

+ `trick_winner_trump [{value = Simple 9; suit = Hearts}; {value = Simple 2; suit = Diamonds}] (Some Diamonds)` should evaluate to `{value = Simple 2; suit = Diamonds}`

+ `trick_winner_trump [{value = Simple 9; suit = Hearts}; {value = Simple 2; suit = Diamonds}] None` should evaluate to `{value = Simple 9; suit = Hearts}`

+ `trick_winner_trump [{value = Simple 9; suit = Hearts}; {value = Ace; suit = Hearts}] None` should evaluate to `{value = Ace; suit = Hearts}`

### Test cases

In order to receive full credit for this section, your solutions should produce correct results on 5/7 example evaluations.
