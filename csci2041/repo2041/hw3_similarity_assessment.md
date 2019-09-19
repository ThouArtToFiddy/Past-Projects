## Assessment for HW3 similarity

Run on March 08, 15:35:38 PM.

This file contains assessment for `similarity`, `find_max`.

+ Pass: Change into directory "hw3".

## Feedback Tests (total possible value: 2)

+ Pass: Check that file "similar.ml" exists.

+ Pass: Check that hw3 files compile without errors FAILED with ouput:
File "similar.ml", line 11, characters 14-20:
Error: Unbound value ngrams
Hint: Did you mean ngram_n?


+ Pass: You are not allowed to use recursion.

   



+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
   similarity [("a",2); ("b",1)] [("a",1); ("c",1)]
   ```
   matches the pattern `0.25`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
   find_max [0.;0.2;0.1] ["a";"b";"c"]
   ```
   matches the pattern `(0.2, "b")`.

   




#### Subtotal: _2.0_ / _2.0_

## Additional automated tests

+ Pass: Check that file "similar.ml" exists.

+ Pass: Check that hw3 files compile without errors FAILED with ouput:
File "similar.ml", line 11, characters 14-20:
Error: Unbound value ngrams
Hint: Did you mean ngram_n?


+ Pass: You are not allowed to use recursion.

   



+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("d", 1); ("k", 1); ("y", 1); ("x", 2); ("f", 1); ("e", 1)] [("f", 2); ("j", 1); ("r", 2); ("e", 1)])
   ```
   matches the pattern `0.18181818181818182`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("g", 3); ("b", 3); ("o", 1); ("h", 2); ("a", 2); ("c", 1); ("n", 1); ("x", 1); ("w", 1); ("d", 1)] [("y", 1); ("j", 1); ("z", 1); ("a", 1); ("n", 1); ("f", 1); ("l", 1); ("p", 1); ("o", 1)])
   ```
   matches the pattern `0.13636363636363635`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("y", 1); ("c", 1); ("e", 3); ("u", 2); ("r", 1); ("i", 1); ("t", 1); ("q", 1); ("a", 1)] [("x", 2); ("y", 1); ("k", 2); ("p", 1); ("e", 1); ("v", 1); ("r", 1); ("a", 1); ("z", 1)])
   ```
   matches the pattern `0.21052631578947367`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("f", 3); ("i", 1); ("a", 1); ("e", 2); ("k", 1); ("v", 1); ("q", 1); ("t", 1)] [("q", 3); ("g", 1); ("i", 1); ("x", 1); ("e", 1); ("l", 2); ("v", 1); ("w", 1); ("z", 1); ("h", 1); ("s", 1)])
   ```
   matches the pattern `0.19047619047619047`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("f", 2); ("k", 1); ("z", 1); ("c", 2); ("i", 1); ("u", 2); ("s", 1); ("l", 1); ("n", 1)] [("u", 1); ("z", 1); ("o", 1); ("j", 1); ("w", 1); ("a", 1); ("l", 1)])
   ```
   matches the pattern `0.1875`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("y", 1); ("j", 1); ("p", 2); ("z", 3); ("n", 1); ("o", 1)] [("l", 1); ("r", 3); ("t", 2); ("b", 2); ("m", 2); ("k", 1); ("w", 1); ("s", 1); ("a", 1)])
   ```
   matches the pattern `0.0`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("q", 1); ("t", 1); ("d", 1); ("z", 2); ("x", 1); ("l", 2); ("u", 2); ("m", 1); ("a", 1); ("j", 1)] [("d", 2); ("c", 1); ("l", 2); ("v", 1); ("s", 1); ("t", 2); ("q", 1); ("u", 1); ("o", 2); ("j", 1); ("f", 1)])
   ```
   matches the pattern `0.3333333333333333`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("s", 1); ("u", 1); ("m", 2); ("d", 2); ("q", 1); ("g", 3); ("z", 2)] [("v", 1); ("s", 1); ("u", 1); ("l", 1); ("t", 1); ("d", 2); ("k", 1); ("h", 1); ("b", 1)])
   ```
   matches the pattern `0.2222222222222222`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("t", 3); ("l", 1); ("y", 3); ("g", 2); ("i", 1); ("s", 2); ("c", 1); ("q", 1); ("r", 1); ("k", 1); ("o", 1); ("a", 1)] [("f", 1); ("u", 1); ("e", 1); ("k", 1); ("x", 2); ("v", 1); ("t", 1); ("i", 1); ("a", 2); ("b", 1); ("o", 1); ("j", 1); ("q", 1); ("n", 1); ("d", 1); ("g", 1); ("r", 1); ("w", 1)])
   ```
   matches the pattern `0.26666666666666666`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("t", 1); ("c", 1); ("j", 3); ("w", 1); ("s", 2); ("b", 1); ("i", 1); ("e", 1); ("z", 1); ("k", 1)] [("d", 1); ("t", 1); ("e", 1); ("o", 1); ("q", 1)])
   ```
   matches the pattern `0.125`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("x", 2); ("w", 1); ("c", 1); ("n", 1); ("a", 1); ("p", 1)] [("o", 1); ("c", 2); ("v", 1); ("h", 2); ("y", 1); ("i", 1); ("g", 1); ("q", 1); ("l", 2); ("z", 1)])
   ```
   matches the pattern `0.05263157894736842`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("a", 1); ("e", 1); ("r", 1); ("d", 1); ("x", 1); ("s", 1)] [("s", 2); ("g", 1); ("p", 1); ("z", 2); ("k", 1); ("o", 3); ("e", 2); ("x", 1); ("t", 1); ("b", 1); ("f", 1)])
   ```
   matches the pattern `0.15789473684210525`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("m", 2); ("u", 2); ("l", 4); ("v", 1); ("o", 1); ("r", 1); ("g", 1); ("d", 1)] [("j", 1); ("m", 1); ("s", 2); ("e", 1); ("l", 1); ("d", 1); ("c", 1); ("r", 3); ("p", 2); ("u", 1); ("q", 1); ("f", 2); ("a", 1); ("v", 1)])
   ```
   matches the pattern `0.23076923076923078`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("r", 2); ("l", 1); ("a", 1); ("x", 1); ("k", 1); ("h", 1); ("p", 1); ("b", 1); ("z", 1)] [("j", 1); ("p", 1); ("a", 1); ("f", 1); ("s", 1); ("q", 1); ("u", 1); ("c", 2); ("g", 1); ("z", 1); ("l", 2); ("e", 1); ("o", 1); ("h", 1)])
   ```
   matches the pattern `0.23809523809523808`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("o", 2); ("j", 1); ("t", 1); ("z", 1); ("s", 1); ("q", 2); ("c", 1); ("d", 1); ("g", 1); ("e", 2)] [("d", 1); ("l", 1); ("s", 1); ("k", 1); ("e", 1)])
   ```
   matches the pattern `0.2`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("m", 2); ("k", 1); ("s", 2); ("p", 1); ("j", 1); ("n", 2)] [("g", 2); ("e", 1); ("r", 1); ("p", 1); ("v", 3); ("t", 1); ("w", 2); ("y", 1); ("j", 1); ("x", 1)])
   ```
   matches the pattern `0.09523809523809523`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("b", 2); ("h", 3); ("g", 2); ("k", 1); ("w", 2); ("f", 2); ("c", 1); ("p", 1); ("y", 1)] [("k", 1); ("i", 1); ("t", 1); ("a", 1); ("f", 1); ("e", 1); ("l", 1)])
   ```
   matches the pattern `0.1`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("t", 2); ("d", 3); ("q", 1); ("x", 1); ("m", 1); ("l", 1); ("f", 1); ("j", 1); ("w", 1); ("b", 1); ("u", 1)] [("d", 2); ("a", 1); ("o", 1); ("w", 1); ("b", 1); ("n", 1); ("c", 1); ("t", 1); ("x", 1); ("p", 1)])
   ```
   matches the pattern `0.3157894736842105`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("y", 1); ("n", 3); ("u", 1); ("t", 1); ("b", 1); ("s", 2); ("g", 1); ("q", 1); ("k", 1); ("a", 1)] [("e", 2); ("f", 1); ("p", 2); ("t", 1); ("l", 2); ("j", 1); ("a", 1)])
   ```
   matches the pattern `0.09523809523809523`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (similarity [("d", 1); ("v", 1); ("h", 1); ("g", 1); ("m", 1); ("a", 1)] [("i", 1); ("f", 2); ("u", 3); ("y", 2); ("c", 1); ("r", 3); ("g", 2); ("e", 1); ("t", 1); ("l", 1); ("p", 1); ("o", 1); ("m", 1)])
   ```
   matches the pattern `0.08333333333333333`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.42; 0.09; 0.01; 0.14; 0.01] ["e"; "w"; "c"; "A"; "F"])
   ```
   matches the pattern `(0.42, "e")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.34; 0.03; 0.44; 0.5; 0.24] ["i"; "O"; "u"; "R"; "P"])
   ```
   matches the pattern `(0.5, "R")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.44; 0.08; 0.98; 0.04; 0.93; 0.47; 0.9; 0.02; 0.55; 0.66] ["m"; "f"; "r"; "o"; "b"; "b"; "Y"; "i"; "n"; "n"])
   ```
   matches the pattern `(0.98, "r")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.04; 0.66; 0.28; 0.73; 0.81; 0.7; 0.69; 0.48; 0.4] ["z"; "z"; "V"; "x"; "X"; "q"; "r"; "s"; "U"])
   ```
   matches the pattern `(0.81, "X")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.18; 0.96; 0.86; 0.46; 0.55; 0.9; 0.46] ["m"; "I"; "W"; "c"; "p"; "u"; "U"])
   ```
   matches the pattern `(0.96, "I")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.24; 0.88; 0.73; 0.59; 0.97; 0.59; 0.48; 0.71; 0.37] ["Y"; "K"; "E"; "y"; "w"; "G"; "W"; "N"; "S"])
   ```
   matches the pattern `(0.97, "w")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.46; 0.64; 0.48] ["T"; "b"; "t"])
   ```
   matches the pattern `(0.64, "b")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.9; 0.02; 0.67; 0.13; 1.0; 0.31; 0.57] ["f"; "w"; "E"; "d"; "T"; "n"; "e"])
   ```
   matches the pattern `(1.0, "T")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.45; 0.41; 0.63; 0.65; 0.75; 0.42; 0.41; 0.67; 0.69] ["J"; "X"; "H"; "t"; "a"; "P"; "b"; "f"; "S"])
   ```
   matches the pattern `(0.75, "a")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.07; 0.89; 0.93; 0.79; 0.5; 0.12; 0.62; 0.97; 0.98] ["v"; "Y"; "V"; "t"; "q"; "Y"; "E"; "u"; "u"])
   ```
   matches the pattern `(0.98, "u")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.9; 0.94; 0.65; 0.65; 0.8; 0.21; 0.23; 0.58; 0.71; 0.57] ["g"; "R"; "n"; "w"; "e"; "A"; "s"; "m"; "o"; "o"])
   ```
   matches the pattern `(0.94, "R")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.39; 0.25; 0.58; 0.07; 0.4; 0.88; 0.7] ["J"; "K"; "D"; "F"; "C"; "i"; "t"])
   ```
   matches the pattern `(0.88, "i")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.56; 1.0; 0.15; 0.12; 0.56; 0.4] ["H"; "Q"; "p"; "F"; "u"; "T"])
   ```
   matches the pattern `(1.0, "Q")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.31; 0.96; 0.62; 0.35; 0.72; 0.14; 0.24] ["l"; "D"; "s"; "B"; "D"; "Q"; "t"])
   ```
   matches the pattern `(0.96, "D")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.08; 0.66; 0.43] ["y"; "G"; "J"])
   ```
   matches the pattern `(0.66, "G")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.77; 0.54; 0.39; 0.57; 0.59; 0.42; 0.96; 0.02; 0.25] ["n"; "J"; "Y"; "m"; "V"; "M"; "F"; "V"; "q"])
   ```
   matches the pattern `(0.96, "F")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.31; 0.98; 0.23; 0.26; 0.77; 0.53; 0.36; 0.83; 0.5] ["n"; "b"; "s"; "F"; "t"; "x"; "H"; "q"; "D"])
   ```
   matches the pattern `(0.98, "b")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.62; 0.7; 0.03; 0.37; 0.75; 0.04; 0.58; 0.03] ["Z"; "W"; "p"; "t"; "o"; "A"; "O"; "g"])
   ```
   matches the pattern `(0.75, "o")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.95; 0.23; 0.51; 0.26; 0.46; 0.4] ["B"; "I"; "u"; "W"; "E"; "A"])
   ```
   matches the pattern `(0.95, "B")`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (find_max [0.07; 0.67; 0.62] ["P"; "h"; "w"])
   ```
   matches the pattern `(0.67, "h")`.

   




#### Subtotal: _8.000000000000004_ / _8.000000000000004_

## Manual tests entered by TA: omdal007

+ Pass: Check that file "similar.ml" exists.

+ Pass: Check that hw3 files compile without errors FAILED with ouput:
File "similar.ml", line 11, characters 14-20:
Error: Unbound value ngrams
Hint: Did you mean ngram_n?


+ Pass: You are not allowed to use recursion.

   



+  _8_ / _8_ : Pass: 
    Overall code quality for `similarity`
    
    
     Score (out of 4):4 
    Overall code quality for `find_max`
    
    
     Score (out of 4):4 


+ Pass: Other Stylistic Comments & Feedback

    

#### Subtotal: _8_ / _8_

