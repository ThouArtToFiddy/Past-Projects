### Feedback for Exercise set 3

Run on February 12, 10:49:03 AM.

+ Pass: Change into directory "ex3".

+ Pass: Check that file "tailrec.ml" exists.

+ Pass: 
Check that the result of evaluating
   ```
   msort []
   ```
   matches the pattern `[]`.

   




+ Fail: 
Check that the result of evaluating
   ```
   msort [0; 17; -32]
   ```
   matches the pattern `[-32; 0 ; 17]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : 'a list = []
`


+ Fail: 
Check that the result of evaluating
   ```
   msort ["not"; "me"; "string"; "list"]
   ```
   matches the pattern `["list"; "me"; "not"; "string"]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : 'a list = []
`


+ Pass: 
Check that the result of evaluating
   ```
   range 1 1
   ```
   matches the pattern `[]`.

   




+ Fail: 
Check that the result of evaluating
   ```
   range 13 17
   ```
   matches the pattern `[13; 14; 15; 16]`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : int list = [14; 15; 16; 17]
`


+ Pass: Check that evaluating msort (range 0 10000) in file tailrec.ml does not result in a stack overflow.

+ Pass: Check that evaluating range 0 1000000 in file tailrec.ml does not result in a stack overflow.

+ Pass: 
Check that the result of evaluating
   ```
   3 *@ [1;2]
   ```
   matches the pattern `[1;2;1;2;1;2]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   0 *@ [3.14159; 2.71828]
   ```
   matches the pattern `[]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   17 *@ []
   ```
   matches the pattern `[]`.

   




+ Fail: Check that evaluating 1000000 *@ [1;2] in file tailrec.ml does not result in a stack overflow.

+ Pass: Check that file "cards.ml" exists.

+ Pass: Check that expression `Spades` following file cards.ml has type `card_suit`

+ Pass: Check that expression `Jack` following file cards.ml has type `card_value`

+ Pass: Check that expression `{ value = Four; suit = Clubs }` following file cards.ml has type `card`

+ Pass: Check that expression `{ value = Queen; suit = Diamonds }` following file cards.ml has type `card`

+ Pass: 
Check that the result of evaluating
   ```
   card_of_string "10D"
   ```
   matches the pattern `{ value = Ten; suit = Diamonds }`.

   




+ Pass: 
Check that the result of evaluating
   ```
   string_of_card (card_of_string "9H")
   ```
   matches the pattern `"9H"`.

   




+ Pass: 
Check that the result of evaluating
   ```
   trick_winner [ {value = Two; suit = Hearts}; {value = King; suit = Spades } ]
   ```
   matches the pattern `{ value = Two; suit = Hearts }`.

   




+ Pass: 
Check that the result of evaluating
   ```
   trick_winner [ { value = Two; suit = Hearts}; {value = King; suit = Hearts } ]
   ```
   matches the pattern `{ value = King; suit = Hearts }`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try (Some (trick_winner [ ])) with Invalid_argument _ -> None
   ```
   matches the pattern `None`.

   




+ Pass: Check that file "hostinfo.ml" exists.

+ Pass: Check that file "card_option.ml" exists.

+ Pass: 
Check that the result of evaluating
   ```
   tld (IP (8,8,8,8))
   ```
   matches the pattern `None`.

   




+ Pass: 
Check that the result of evaluating
   ```
   tld (DNSName "cnn.com")
   ```
   matches the pattern `Some "com"`.

   




+ Pass: 
Check that the result of evaluating
   ```
   tld (DNSName "comcast.net")
   ```
   matches the pattern `Some "net"`.

   




+ Pass: 
Check that the result of evaluating
   ```
   trick_winner_trump [{value = Simple 9; suit = Hearts}] (Some Diamonds)
   ```
   matches the pattern `{value = Simple 9; suit = Hearts}`.

   




+ Fail: 
Check that the result of evaluating
   ```
   trick_winner_trump [{value = Simple 9; suit = Hearts}; {value = Simple 2; suit = Diamonds}] (Some Diamonds)
   ```
   matches the pattern `{value = Simple 2; suit = Diamonds}`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : card = {value = Simple 9; suit = Hearts}
`


+ Pass: 
Check that the result of evaluating
   ```
   trick_winner_trump [{value = Simple 9; suit = Hearts}; {value = Simple 2; suit = Diamonds}] None
   ```
   matches the pattern `{value = Simple 9; suit = Hearts}`.

   




+ Fail: 
Check that the result of evaluating
   ```
   trick_winner_trump [{value = Simple 9; suit = Hearts}; {value = Ace; suit = Hearts}] None
   ```
   matches the pattern `{value = Ace; suit = Hearts}`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : card = {value = Simple 9; suit = Hearts}
`


