## Assessment for Exercise Set 4

Run on February 19, 10:55:42 AM.

+ Pass: Change into directory "ex4".

### Part 1: Recursive Types

+  _1_ / _1_ : Pass: Check that expression `(List (Ordered,[]))` following file document.ml has type `entity`

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   check_rules { head = d1.head ; body = [(List (Ordered, [ListItem []]))] }
   ```
   matches the pattern `true`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   check_rules d_err1
   ```
   matches the pattern `false`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   check_rules { head = d1.head; body = d1.body @ [(ListItem [(Text "ok")])]}
   ```
   matches the pattern `false`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   find_headings d1
   ```
   matches the pattern `[Heading [Text "CS 2041 Document"]]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   find_headings d_err1
   ```
   matches the pattern `[]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   extract_text d1
   ```
   matches the pattern `"CS 2041 Document A short document A little more stuff Click this to go back"`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   tree_min Empty
   ```
   matches the pattern `None`.

   




+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   tree_min t3
   ```
   matches the pattern `Some 3`.

   


   Test failed. The following errors were reported:
` ;;
Exception: Match_failure ("btree.ml", 39, 21).
`

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   tree_max Empty
   ```
   matches the pattern `None`.

   




+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   tree_max t5
   ```
   matches the pattern `Some 12`.

   


   Test failed. The following errors were reported:
` ;;
Exception: Match_failure ("btree.ml", 43, 21).
`

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   is_bstree Empty
   ```
   matches the pattern `true`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   is_bstree (Node(0,Empty,Leaf 1))
   ```
   matches the pattern `true`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   is_bstree (Node(0,Leaf 1,Empty))
   ```
   matches the pattern `false`.

   




+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   is_bstree t3
   ```
   matches the pattern `false`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : bool = true
`


#### Subtotal: _12_ / _15_

### Part 2: Types and eval

+  _1_ / _1_ : Pass: Item 1 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 2 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 3 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 4 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 5 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 6 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 7 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 8 of list in types.md passes correct type on line 2, and line 3 not empty test

#### Subtotal: _8_ / _8_

### Part 3: Functions and arguments

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   drop_until (fun _ -> true) []
   ```
   matches the pattern `[]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   drop_until (fun _ -> true) [1]
   ```
   matches the pattern `[1]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   drop_until (fun s -> s.[0]='a') ["boring"; "as"; "always"]
   ```
   matches the pattern `["as"; "always"]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   take_while (fun _ -> true) [1; 2; 3]
   ```
   matches the pattern `[1; 2; 3]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   take_while ((=) "a") ["a"; "a"; "b"; "a"]
   ```
   matches the pattern `["a"; "a"]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   take_while (fun _ -> false) ["say"; "anything"]
   ```
   matches the pattern `[]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   take_until (fun _ -> false) [1; 2; 3]
   ```
   matches the pattern `[1; 2; 3]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   take_until ((<>) "a") ["a"; "a"; "b"; "a"]
   ```
   matches the pattern `["a"; "a"]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   take_until (fun _ -> true) ["say"; "anything"]
   ```
   matches the pattern `[]`.

   




#### Subtotal: _9_ / _9_

#### Total score: _58_ / _64_

