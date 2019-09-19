### Feedback for Exercise set 4

Run on February 25, 22:48:27 PM.

+ Pass: Change into directory "ex4".

+ Pass: Check that file "document.ml" exists.

+ Pass: Check that file "btree.ml" exists.

+ Pass: Check that expression `(List (Ordered,[]))` following file document.ml has type `entity`

+ Pass: 
Check that the result of evaluating
   ```
   check_rules { head = d1.head ; body = [(List (Ordered, [ListItem []]))] }
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   check_rules d_err1
   ```
   matches the pattern `false`.

   




+ Pass: 
Check that the result of evaluating
   ```
   check_rules { head = d1.head; body = d1.body @ [(ListItem [(Text "ok")])]}
   ```
   matches the pattern `false`.

   




+ Pass: 
Check that the result of evaluating
   ```
   find_headings d1
   ```
   matches the pattern `[Heading [Text "CS 2041 Document"]]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   find_headings d_err1
   ```
   matches the pattern `[]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   extract_text d1
   ```
   matches the pattern `"CS 2041 Document A short document A little more stuff Click this to go back"`.

   




+ Pass: 
Check that the result of evaluating
   ```
   tree_min Empty
   ```
   matches the pattern `None`.

   




+ Fail: 
Check that the result of evaluating
   ```
   tree_min t3
   ```
   matches the pattern `Some 3`.

   


   Test failed. The following errors were reported:
` ;;
Exception: Match_failure ("btree.ml", 39, 21).
`

+ Pass: 
Check that the result of evaluating
   ```
   tree_max Empty
   ```
   matches the pattern `None`.

   




+ Fail: 
Check that the result of evaluating
   ```
   tree_max t5
   ```
   matches the pattern `Some 12`.

   


   Test failed. The following errors were reported:
` ;;
Exception: Match_failure ("btree.ml", 43, 21).
`

+ Pass: 
Check that the result of evaluating
   ```
   is_bstree Empty
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   is_bstree (Node(0,Empty,Leaf 1))
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   is_bstree (Node(0,Leaf 1,Empty))
   ```
   matches the pattern `false`.

   




+ Fail: 
Check that the result of evaluating
   ```
   is_bstree t3
   ```
   matches the pattern `false`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
- : bool = true
`


+ Pass: Check that file "types.md" exists.

+ Pass: Item 1 of list in types.md passes correct type on line 2, and line 3 not empty test

+ Pass: Item 2 of list in types.md passes correct type on line 2, and line 3 not empty test

+ Pass: Item 3 of list in types.md passes correct type on line 2, and line 3 not empty test

+ Pass: Item 4 of list in types.md passes correct type on line 2, and line 3 not empty test

+ Pass: Item 5 of list in types.md passes correct type on line 2, and line 3 not empty test

+ Pass: Item 6 of list in types.md passes correct type on line 2, and line 3 not empty test

+ Pass: Item 7 of list in types.md passes correct type on line 2, and line 3 not empty test

+ Pass: Item 8 of list in types.md passes correct type on line 2, and line 3 not empty test

+ Pass: Check that file "hof.ml" exists.

+ Pass: 
Check that the result of evaluating
   ```
   drop_until (fun _ -> true) []
   ```
   matches the pattern `[]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   drop_until (fun _ -> true) [1]
   ```
   matches the pattern `[1]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   drop_until (fun s -> s.[0]='a') ["boring"; "as"; "always"]
   ```
   matches the pattern `["as"; "always"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   take_while (fun _ -> true) [1; 2; 3]
   ```
   matches the pattern `[1; 2; 3]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   take_while ((=) "a") ["a"; "a"; "b"; "a"]
   ```
   matches the pattern `["a"; "a"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   take_while (fun _ -> false) ["say"; "anything"]
   ```
   matches the pattern `[]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   take_until (fun _ -> false) [1; 2; 3]
   ```
   matches the pattern `[1; 2; 3]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   take_until ((<>) "a") ["a"; "a"; "b"; "a"]
   ```
   matches the pattern `["a"; "a"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   take_until (fun _ -> true) ["say"; "anything"]
   ```
   matches the pattern `[]`.

   




