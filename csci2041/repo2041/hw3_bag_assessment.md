## Assessment for HW3 bag

Run on March 09, 15:13:49 PM.

This file contains assessment for `bag_of_list`, `intersection_size`, `union_size`.

+ Pass: Change into directory "hw3".

## Feedback Tests (total possible value: 3)

+ Pass: Check that file "similar.ml" exists.

+ Pass: Check that hw3 files compile without errors

+ Pass: You are not allowed to use recursion.

   



+  _0.75_ / _0.75_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare (bag_of_list ["a"; "b"; "a" ; "b"])
   ```
   matches the pattern `[("a",2); ("b",2)]`.

   




+  _0.75_ / _0.75_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare (bag_of_list ["a"; "a"; "b"; "c"; "b"; "a"])
   ```
   matches the pattern `[("a",3); ("b",2); ("c",1)]`.

   




+  _0.75_ / _0.75_ : Pass: 
Check that the result of evaluating
   ```
   intersection_size [("a",2); ("b",1)] [("a",1); ("c",1)]
   ```
   matches the pattern `1`.

   




+  _0.75_ / _0.75_ : Pass: 
Check that the result of evaluating
   ```
   union_size [("a",2); ("b",1)] [("a",1); ("c",1)]
   ```
   matches the pattern `4`.

   




#### Subtotal: _3.0_ / _3.0_

## Additional automated tests

+ Pass: Check that file "similar.ml" exists.

+ Pass: Check that hw3 files compile without errors

+ Pass: You are not allowed to use recursion.

   



+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["h"; "n"; "y"; "l"; "x"; "v"; "x"])
   ```
   matches the pattern `List.sort compare [("h", 1); ("n", 1); ("y", 1); ("l", 1); ("x", 2); ("v", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["s"; "a"; "t"; "e"; "e"; "o"; "g"; "n"])
   ```
   matches the pattern `List.sort compare [("s", 1); ("a", 1); ("t", 1); ("e", 2); ("o", 1); ("g", 1); ("n", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["l"; "r"; "g"; "h"; "k"; "k"; "z"; "o"; "t"; "h"; "e"; "j"; "h"; "w"; "l"; "m"; "h"; "z"; "c"])
   ```
   matches the pattern `List.sort compare [("l", 2); ("r", 1); ("g", 1); ("h", 4); ("k", 2); ("z", 2); ("o", 1); ("t", 1); ("e", 1); ("j", 1); ("w", 1); ("m", 1); ("c", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["o"; "p"; "z"; "b"; "u"; "z"])
   ```
   matches the pattern `List.sort compare [("o", 1); ("p", 1); ("z", 2); ("b", 1); ("u", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["f"; "r"; "f"; "d"; "u"; "m"; "c"])
   ```
   matches the pattern `List.sort compare [("f", 2); ("r", 1); ("d", 1); ("u", 1); ("m", 1); ("c", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["c"; "z"; "e"; "f"; "y"; "h"; "a"; "q"; "d"; "z"; "z"; "s"; "q"; "h"; "o"; "s"])
   ```
   matches the pattern `List.sort compare [("c", 1); ("z", 3); ("e", 1); ("f", 1); ("y", 1); ("h", 2); ("a", 1); ("q", 2); ("d", 1); ("s", 2); ("o", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["r"; "x"; "n"; "o"; "b"; "w"; "m"; "s"; "w"; "k"; "q"; "y"; "c"; "e"; "z"; "r"; "q"; "c"; "o"])
   ```
   matches the pattern `List.sort compare [("r", 2); ("x", 1); ("n", 1); ("o", 2); ("b", 1); ("w", 2); ("m", 1); ("s", 1); ("k", 1); ("q", 2); ("y", 1); ("c", 2); ("e", 1); ("z", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["h"; "f"; "h"; "q"; "g"; "x"; "a"; "t"; "e"; "u"; "s"; "d"; "i"; "l"])
   ```
   matches the pattern `List.sort compare [("h", 2); ("f", 1); ("q", 1); ("g", 1); ("x", 1); ("a", 1); ("t", 1); ("e", 1); ("u", 1); ("s", 1); ("d", 1); ("i", 1); ("l", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["n"; "q"; "c"; "r"; "k"; "n"; "q"; "r"; "d"; "a"; "b"])
   ```
   matches the pattern `List.sort compare [("n", 2); ("q", 2); ("c", 1); ("r", 2); ("k", 1); ("d", 1); ("a", 1); ("b", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["y"; "m"; "f"; "a"; "x"; "w"; "u"; "c"; "j"; "n"; "w"; "u"; "r"; "t"; "e"; "i"; "s"])
   ```
   matches the pattern `List.sort compare [("y", 1); ("m", 1); ("f", 1); ("a", 1); ("x", 1); ("w", 2); ("u", 2); ("c", 1); ("j", 1); ("n", 1); ("r", 1); ("t", 1); ("e", 1); ("i", 1); ("s", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["i"; "o"; "a"; "k"; "t"; "j"; "f"; "x"; "z"; "g"; "m"; "j"; "h"; "o"; "n"; "x"; "l"; "m"])
   ```
   matches the pattern `List.sort compare [("i", 1); ("o", 2); ("a", 1); ("k", 1); ("t", 1); ("j", 2); ("f", 1); ("x", 2); ("z", 1); ("g", 1); ("m", 2); ("h", 1); ("n", 1); ("l", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["x"; "s"; "k"; "a"; "h"; "g"; "v"; "f"; "i"; "t"; "x"; "z"; "o"])
   ```
   matches the pattern `List.sort compare [("x", 2); ("s", 1); ("k", 1); ("a", 1); ("h", 1); ("g", 1); ("v", 1); ("f", 1); ("i", 1); ("t", 1); ("z", 1); ("o", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["z"; "t"; "m"; "y"; "b"; "l"; "d"; "r"; "y"; "w"; "w"; "p"; "n"; "k"; "j"; "h"; "s"; "q"])
   ```
   matches the pattern `List.sort compare [("z", 1); ("t", 1); ("m", 1); ("y", 2); ("b", 1); ("l", 1); ("d", 1); ("r", 1); ("w", 2); ("p", 1); ("n", 1); ("k", 1); ("j", 1); ("h", 1); ("s", 1); ("q", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["k"; "u"; "j"; "u"; "i"])
   ```
   matches the pattern `List.sort compare [("k", 1); ("u", 2); ("j", 1); ("i", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["q"; "d"; "y"; "m"; "w"; "v"; "g"; "w"; "t"; "i"; "y"; "s"])
   ```
   matches the pattern `List.sort compare [("q", 1); ("d", 1); ("y", 2); ("m", 1); ("w", 2); ("v", 1); ("g", 1); ("t", 1); ("i", 1); ("s", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["g"; "l"; "n"; "c"; "f"; "t"; "s"])
   ```
   matches the pattern `List.sort compare [("g", 1); ("l", 1); ("n", 1); ("c", 1); ("f", 1); ("t", 1); ("s", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["u"; "m"; "q"; "l"; "y"; "n"; "m"; "v"; "y"; "t"; "l"; "v"; "b"; "s"; "f"; "t"; "s"; "s"])
   ```
   matches the pattern `List.sort compare [("u", 1); ("m", 2); ("q", 1); ("l", 2); ("y", 2); ("n", 1); ("v", 2); ("t", 2); ("b", 1); ("s", 3); ("f", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["z"; "t"; "i"; "h"; "f"; "j"; "w"; "d"; "f"; "i"; "m"; "s"; "k"; "e"; "e"; "f"; "y"; "x"; "y"; "q"])
   ```
   matches the pattern `List.sort compare [("z", 1); ("t", 1); ("i", 2); ("h", 1); ("f", 3); ("j", 1); ("w", 1); ("d", 1); ("m", 1); ("s", 1); ("k", 1); ("e", 2); ("y", 2); ("x", 1); ("q", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["b"; "c"; "v"; "e"; "l"; "n"; "i"; "h"; "d"; "w"; "i"; "b"; "a"; "s"; "w"; "z"; "f"; "f"])
   ```
   matches the pattern `List.sort compare [("b", 2); ("c", 1); ("v", 1); ("e", 1); ("l", 1); ("n", 1); ("i", 2); ("h", 1); ("d", 1); ("w", 2); ("a", 1); ("s", 1); ("z", 1); ("f", 2)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare  (bag_of_list ["m"; "y"; "j"; "t"; "u"; "p"; "q"; "c"; "f"; "y"])
   ```
   matches the pattern `List.sort compare [("m", 1); ("y", 2); ("j", 1); ("t", 1); ("u", 1); ("p", 1); ("q", 1); ("c", 1); ("f", 1)]`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("g", 1); ("u", 1); ("p", 1); ("h", 2); ("x", 2); ("b", 1); ("l", 1); ("q", 1); ("k", 1); ("z", 1)] [("u", 1); ("q", 1); ("n", 1); ("i", 1); ("g", 1); ("a", 1); ("r", 1); ("w", 1); ("l", 1)])
   ```
   matches the pattern `4`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("p", 1); ("c", 1); ("g", 1); ("o", 2); ("y", 1); ("l", 1); ("e", 1); ("x", 1); ("n", 1); ("k", 1); ("u", 2); ("t", 2)] [("e", 2); ("b", 2); ("p", 2); ("l", 2); ("r", 2); ("y", 1); ("n", 1); ("w", 1); ("a", 1); ("v", 1); ("x", 1); ("h", 1); ("i", 1)])
   ```
   matches the pattern `6`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("i", 1); ("h", 2); ("y", 1); ("k", 2); ("n", 1); ("z", 1); ("c", 1); ("w", 1); ("u", 1); ("t", 1); ("x", 1)] [("b", 2); ("x", 2); ("c", 1); ("q", 2); ("n", 1); ("y", 1); ("t", 1); ("l", 1); ("v", 1); ("h", 1); ("m", 1); ("k", 1); ("p", 1); ("o", 1); ("j", 1); ("u", 1)])
   ```
   matches the pattern `8`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("m", 1); ("x", 1); ("n", 3); ("j", 1); ("t", 3); ("a", 1); ("q", 1); ("c", 1); ("r", 1); ("l", 1); ("o", 1); ("g", 1); ("w", 1)] [("t", 1); ("b", 1); ("q", 1); ("z", 2); ("f", 1); ("s", 1)])
   ```
   matches the pattern `2`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("q", 1); ("a", 1); ("v", 1); ("c", 1); ("x", 1); ("t", 1); ("k", 1)] [("j", 2); ("s", 1); ("i", 1); ("k", 1); ("l", 1); ("c", 1)])
   ```
   matches the pattern `2`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("w", 2); ("k", 1); ("y", 1); ("o", 1)] [("d", 1); ("b", 2); ("n", 1); ("y", 2); ("f", 2); ("h", 1); ("w", 2); ("s", 1); ("x", 1); ("p", 1); ("o", 1)])
   ```
   matches the pattern `4`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("h", 1); ("c", 1); ("j", 2); ("g", 2); ("b", 1); ("d", 1); ("i", 1)] [("o", 1); ("n", 1); ("q", 1); ("t", 2); ("h", 1); ("c", 1)])
   ```
   matches the pattern `2`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("v", 1); ("r", 2); ("x", 1); ("k", 1); ("t", 1)] [("w", 1); ("v", 3); ("m", 1)])
   ```
   matches the pattern `1`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("l", 1); ("r", 1); ("i", 1); ("u", 2); ("y", 1); ("h", 1); ("e", 1)] [("g", 1); ("y", 1); ("z", 1); ("a", 1); ("h", 2); ("i", 1); ("m", 2); ("n", 1)])
   ```
   matches the pattern `3`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("c", 1); ("b", 2); ("y", 2); ("u", 2); ("l", 1); ("e", 1); ("v", 2); ("w", 2); ("a", 1); ("q", 1); ("p", 1); ("m", 1); ("z", 1); ("o", 1)] [("i", 2); ("a", 2); ("k", 1); ("f", 1); ("e", 1); ("n", 1); ("p", 1); ("c", 1); ("s", 1)])
   ```
   matches the pattern `4`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("s", 1); ("x", 1); ("v", 1); ("e", 1); ("d", 1); ("h", 1)] [("s", 1); ("o", 1); ("i", 1); ("u", 1); ("b", 1); ("l", 1); ("t", 1); ("w", 2); ("c", 2); ("p", 1); ("z", 1); ("h", 1); ("j", 1); ("v", 1)])
   ```
   matches the pattern `3`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("d", 2); ("t", 2); ("y", 3); ("n", 1); ("v", 1); ("b", 1); ("s", 1); ("f", 1); ("x", 1); ("k", 1); ("q", 1); ("i", 1); ("c", 1)] [("t", 1); ("v", 1); ("g", 1); ("e", 2); ("p", 1); ("o", 1)])
   ```
   matches the pattern `2`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("t", 1); ("o", 3); ("l", 1); ("f", 1); ("w", 1); ("m", 1); ("c", 1); ("z", 1); ("j", 1); ("n", 2); ("h", 1)] [("d", 1); ("v", 2); ("q", 2); ("s", 1); ("j", 2); ("w", 2); ("t", 1)])
   ```
   matches the pattern `3`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("z", 2); ("y", 1); ("k", 1); ("j", 1); ("h", 1); ("b", 1); ("r", 1); ("x", 1); ("t", 1); ("m", 1); ("u", 1); ("g", 1)] [("l", 1); ("v", 1); ("h", 1); ("m", 1); ("t", 1); ("n", 1)])
   ```
   matches the pattern `3`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("f", 1); ("g", 1); ("k", 1); ("v", 2); ("d", 1); ("e", 1); ("s", 1); ("w", 1)] [("n", 1); ("w", 2); ("u", 1); ("v", 1); ("g", 1); ("h", 1); ("s", 1); ("b", 1); ("r", 3); ("c", 1); ("j", 1); ("a", 1); ("t", 1); ("f", 1); ("z", 1)])
   ```
   matches the pattern `5`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("j", 1); ("m", 1); ("f", 1); ("u", 1); ("l", 1); ("z", 1); ("r", 1); ("i", 1)] [("k", 4); ("i", 2); ("v", 1); ("w", 1); ("e", 3); ("q", 1); ("f", 1); ("s", 1); ("b", 1); ("y", 2); ("j", 1); ("c", 1)])
   ```
   matches the pattern `3`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("y", 1); ("b", 1); ("j", 1); ("d", 1); ("u", 1); ("n", 1); ("v", 1); ("c", 1); ("s", 1)] [("q", 1); ("m", 1); ("y", 1); ("g", 2); ("i", 1)])
   ```
   matches the pattern `1`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("a", 2); ("x", 1); ("h", 1); ("f", 2); ("n", 2); ("g", 1); ("p", 2); ("k", 2); ("w", 1); ("z", 1); ("y", 1); ("i", 1); ("l", 1)] [("g", 1); ("v", 2); ("u", 1); ("x", 1); ("z", 2); ("y", 1); ("p", 1); ("t", 2); ("n", 1); ("f", 1); ("j", 1); ("o", 1); ("l", 1); ("w", 1)])
   ```
   matches the pattern `9`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("w", 1); ("x", 1); ("e", 1); ("v", 2); ("r", 2); ("m", 1); ("t", 1)] [("s", 1); ("g", 1); ("w", 1); ("z", 1); ("y", 1); ("d", 1); ("u", 1)])
   ```
   matches the pattern `1`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (intersection_size [("o", 1); ("j", 1); ("c", 1); ("p", 1); ("n", 1)] [("y", 1); ("w", 1); ("o", 2); ("q", 4); ("f", 1); ("i", 1); ("t", 1); ("p", 1); ("e", 1)])
   ```
   matches the pattern `2`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("o", 2); ("w", 1); ("u", 1); ("y", 2); ("r", 4); ("v", 1); ("c", 2); ("l", 1); ("t", 2); ("e", 2); ("n", 1)] [("j", 1); ("w", 1); ("q", 2); ("p", 2); ("e", 2); ("u", 1); ("t", 1)])
   ```
   matches the pattern `24`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("u", 2); ("n", 2); ("a", 2); ("z", 1); ("k", 1); ("p", 1)] [("n", 2); ("l", 1); ("t", 1); ("m", 1); ("k", 1); ("h", 2); ("y", 1); ("o", 1); ("i", 1); ("z", 1); ("s", 1)])
   ```
   matches the pattern `18`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("d", 3); ("o", 2); ("g", 1); ("b", 1); ("q", 1); ("y", 1); ("t", 1); ("a", 1); ("e", 2); ("z", 1); ("k", 1); ("h", 1); ("m", 1)] [("m", 2); ("y", 1); ("e", 1); ("z", 1); ("k", 1); ("g", 1); ("r", 1); ("v", 1); ("j", 1); ("a", 1); ("x", 1)])
   ```
   matches the pattern `22`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("d", 1); ("y", 2); ("x", 1); ("n", 1); ("f", 1); ("j", 1); ("p", 2)] [("y", 1); ("r", 3); ("t", 1); ("l", 1); ("j", 1); ("b", 1); ("m", 1); ("p", 2); ("x", 1); ("a", 1); ("e", 1); ("g", 1); ("d", 1); ("f", 1); ("n", 1)])
   ```
   matches the pattern `19`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("w", 1); ("z", 2); ("d", 1); ("h", 1); ("q", 1); ("f", 1); ("x", 1); ("l", 1); ("v", 1)] [("x", 1); ("d", 2); ("b", 1); ("j", 1); ("r", 1); ("c", 1)])
   ```
   matches the pattern `15`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("h", 1); ("b", 2); ("k", 1); ("f", 1); ("i", 1); ("c", 1); ("v", 1); ("u", 3); ("m", 1); ("q", 1); ("j", 1); ("r", 1); ("y", 1)] [("u", 2); ("x", 1); ("s", 1); ("f", 2); ("r", 2); ("c", 2); ("v", 1); ("z", 2); ("e", 1); ("k", 1); ("p", 1); ("y", 1)])
   ```
   matches the pattern `25`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("z", 1); ("h", 2); ("f", 2); ("b", 1); ("o", 1); ("m", 1); ("d", 1); ("k", 2); ("l", 1)] [("x", 2); ("y", 1); ("n", 1); ("i", 1); ("s", 1); ("c", 1); ("v", 1); ("b", 1); ("z", 1); ("m", 2)])
   ```
   matches the pattern `21`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("c", 1); ("v", 1); ("x", 1); ("a", 1); ("l", 1); ("g", 2); ("r", 1); ("w", 1); ("f", 2); ("m", 1); ("q", 1)] [("o", 2); ("e", 3); ("h", 4); ("c", 1); ("u", 1); ("l", 1); ("q", 1); ("j", 1); ("m", 1); ("y", 1); ("f", 1); ("v", 1)])
   ```
   matches the pattern `25`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("z", 3); ("w", 1); ("o", 1); ("x", 1); ("f", 1); ("g", 1); ("u", 1); ("d", 1); ("i", 1); ("v", 1)] [("t", 1); ("w", 2); ("c", 2); ("v", 1); ("d", 1); ("b", 1); ("s", 1); ("y", 1)])
   ```
   matches the pattern `19`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("l", 1); ("z", 1); ("q", 1); ("g", 1); ("k", 1)] [("j", 1); ("m", 2); ("o", 1); ("l", 1); ("v", 2); ("t", 1); ("i", 1); ("e", 2); ("z", 1); ("p", 1); ("f", 1); ("r", 1)])
   ```
   matches the pattern `18`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("a", 1); ("y", 1); ("t", 1); ("m", 1); ("k", 1); ("o", 1); ("l", 1); ("h", 2); ("j", 1); ("d", 1); ("w", 1)] [("z", 3); ("p", 2); ("f", 2); ("v", 2); ("n", 2); ("y", 1); ("a", 1)])
   ```
   matches the pattern `23`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("d", 2); ("i", 1); ("v", 1); ("w", 2); ("s", 1); ("n", 1); ("q", 1); ("j", 2); ("e", 1); ("f", 1); ("b", 1); ("m", 1); ("o", 1)] [("x", 1); ("e", 2); ("o", 1); ("c", 3); ("a", 1); ("w", 1); ("k", 1); ("p", 1); ("z", 1); ("q", 1); ("b", 1); ("f", 1); ("y", 1)])
   ```
   matches the pattern `26`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("d", 1); ("x", 1); ("s", 1); ("v", 1); ("q", 1); ("c", 1); ("m", 2); ("z", 1); ("t", 1); ("y", 1)] [("d", 2); ("f", 1); ("j", 1); ("i", 2); ("n", 1); ("a", 1); ("e", 2); ("g", 1); ("r", 2); ("h", 1)])
   ```
   matches the pattern `24`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("l", 1); ("w", 2); ("y", 1); ("v", 2); ("o", 1); ("p", 1); ("c", 1); ("x", 1)] [("k", 1); ("n", 1); ("t", 1); ("f", 1); ("d", 1); ("l", 1)])
   ```
   matches the pattern `15`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("s", 2); ("f", 2); ("g", 2); ("t", 1); ("b", 2); ("c", 1); ("k", 1); ("v", 1); ("q", 1); ("h", 1); ("w", 2); ("d", 1); ("p", 1); ("y", 1)] [("g", 2); ("w", 1); ("h", 1); ("r", 1); ("d", 1); ("a", 2); ("p", 1); ("f", 1); ("q", 1); ("s", 1)])
   ```
   matches the pattern `22`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("f", 1); ("v", 1); ("k", 1); ("i", 2); ("r", 1); ("u", 1); ("h", 1); ("b", 1); ("d", 1); ("a", 1); ("x", 1); ("g", 1); ("o", 1); ("y", 1); ("w", 1); ("s", 1)] [("j", 1); ("q", 2); ("e", 1); ("y", 1); ("r", 1)])
   ```
   matches the pattern `21`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("h", 1); ("m", 1); ("y", 1); ("w", 1); ("f", 1)] [("o", 1); ("i", 2); ("j", 2); ("w", 1); ("p", 1); ("f", 2); ("c", 1); ("t", 1); ("v", 2); ("x", 1); ("b", 1); ("e", 1); ("h", 2); ("a", 1)])
   ```
   matches the pattern `21`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("m", 1); ("p", 2); ("s", 1); ("l", 1); ("v", 1); ("g", 1)] [("c", 2); ("l", 1); ("e", 1); ("o", 1); ("n", 1); ("y", 1)])
   ```
   matches the pattern `13`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("e", 1); ("y", 1); ("o", 1); ("f", 1); ("h", 1)] [("m", 1); ("g", 3); ("v", 2); ("c", 1); ("y", 2); ("p", 2); ("b", 2); ("n", 1); ("h", 1); ("t", 3); ("l", 1); ("r", 1)])
   ```
   matches the pattern `23`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
    (union_size [("v", 2); ("x", 1); ("c", 1); ("g", 1); ("s", 2); ("b", 1); ("n", 1); ("d", 1); ("m", 1)] [("q", 2); ("z", 1); ("o", 2); ("b", 2); ("h", 1); ("s", 1); ("t", 1); ("d", 1); ("y", 1); ("u", 2); ("x", 1); ("v", 1); ("i", 2); ("c", 1)])
   ```
   matches the pattern `24`.

   




#### Subtotal: _11.99999999999999_ / _11.99999999999999_

## Manual tests entered by TA: whit2267

+ Pass: Check that file "similar.ml" exists.

+ Pass: Check that hw3 files compile without errors

+ Pass: You are not allowed to use recursion.

   



+  _10_ / _12_ : Pass: 
    Overall code quality for `bag_of_list`
    
    
     Score (out of 4): 3
    Overall code quality for `intersection_size`
    
    
     Score (out of 4): 3
    Overall code quality for `union_size`
    
    
     Score (out of 4): 4


+ Pass: Other Stylistic Comments & Feedback

    Try to mitigate list function calls to improve efficiency.

#### Subtotal: _10_ / _12_

