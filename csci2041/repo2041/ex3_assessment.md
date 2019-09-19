## Assessment for Exercise Set 3

Run on February 12, 12:13:54 PM.

+ Pass: Change into directory "ex3".

### Part 1: Tail Recursion

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   msort []
   ```
   matches the pattern `[]`.

   




+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   msort [0; 17; -32]
   ```
   matches the pattern `[-32; 0 ; 17]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : 'a list = []
`


+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   msort ["not"; "me"; "string"; "list"]
   ```
   matches the pattern `["list"; "me"; "not"; "string"]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : 'a list = []
`


+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   range 1 1
   ```
   matches the pattern `[]`.

   




+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   range 13 17
   ```
   matches the pattern `[13; 14; 15; 16]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : int list = [14; 15; 16; 17]
`


+  _1_ / _1_ : Pass: Check that evaluating msort (range 0 10000) in file tailrec.ml does not result in a stack overflow.

+  _1_ / _1_ : Pass: Check that evaluating range 0 1000000 in file tailrec.ml does not result in a stack overflow.

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   3 *@ [1;2]
   ```
   matches the pattern `[1;2;1;2;1;2]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   0 *@ [3.14159; 2.71828]
   ```
   matches the pattern `[]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   17 *@ []
   ```
   matches the pattern `[]`.

   




+  _0_ / _1_ : Fail: Check that evaluating 1000000 *@ [1;2] in file tailrec.ml does not result in a stack overflow.

#### Subtotal: _7_ / _11_

### Part 2: Card Games

+  _1_ / _1_ : Pass: Check that expression `Spades` following file cards.ml has type `card_suit`

+  _1_ / _1_ : Pass: Check that expression `Jack` following file cards.ml has type `card_value`

+  _1_ / _1_ : Pass: Check that expression `{ value = Four; suit = Clubs }` following file cards.ml has type `card`

+  _1_ / _1_ : Pass: Check that expression `{ value = Queen; suit = Diamonds }` following file cards.ml has type `card`

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   card_of_string "10D"
   ```
   matches the pattern `{ value = Ten; suit = Diamonds }`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   string_of_card (card_of_string "9H")
   ```
   matches the pattern `"9H"`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   trick_winner [ {value = Two; suit = Hearts}; {value = King; suit = Spades } ]
   ```
   matches the pattern `{ value = Two; suit = Hearts }`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   trick_winner [ { value = Two; suit = Hearts}; {value = King; suit = Hearts } ]
   ```
   matches the pattern `{ value = King; suit = Hearts }`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (Some (trick_winner [ ])) with Invalid_argument _ -> None
   ```
   matches the pattern `None`.

   




#### Subtotal: _9_ / _9_

### Part 3: Disjoint Unions

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   tld (IP (8,8,8,8))
   ```
   matches the pattern `None`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   tld (DNSName "cnn.com")
   ```
   matches the pattern `Some "com"`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   tld (DNSName "comcast.net")
   ```
   matches the pattern `Some "net"`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   trick_winner_trump [{value = Simple 9; suit = Hearts}] (Some Diamonds)
   ```
   matches the pattern `{value = Simple 9; suit = Hearts}`.

   




+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   trick_winner_trump [{value = Simple 9; suit = Hearts}; {value = Simple 2; suit = Diamonds}] (Some Diamonds)
   ```
   matches the pattern `{value = Simple 2; suit = Diamonds}`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : card = {value = Simple 9; suit = Hearts}
`


+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   trick_winner_trump [{value = Simple 9; suit = Hearts}; {value = Simple 2; suit = Diamonds}] None
   ```
   matches the pattern `{value = Simple 9; suit = Hearts}`.

   




+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   trick_winner_trump [{value = Simple 9; suit = Hearts}; {value = Ace; suit = Hearts}] None
   ```
   matches the pattern `{value = Ace; suit = Hearts}`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : card = {value = Simple 9; suit = Hearts}
`


#### Subtotal: _5_ / _7_

#### Total score: _42_ / _54_

