### Feedback for HW 1

Run on February 19, 10:44:10 AM.

+ Pass: Change into directory "hw1".

+ Pass: Check that file "tables.ml" exists.

+ Pass: Check that file "slicendice.ml" exists.

+ Pass: Check that hw1 files compile without errors

+ Pass: 
Check that the result of evaluating
   ```
   table_of_stringlist "," ["a"]
   ```
   matches the pattern `[["a"]]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   table_of_stringlist "," ["a,b"]
   ```
   matches the pattern `[["a"; "b"]]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   table_of_stringlist "|" ["a|b|c"; "d"]
   ```
   matches the pattern `[["a";"b";"c"]; ["d"]]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   make_assoc []
   ```
   matches the pattern `[]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   make_assoc [[]]
   ```
   matches the pattern `[]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   make_assoc [["a"]]
   ```
   matches the pattern `[(1,1,"a")]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   List.sort compare (make_assoc [["a";"b"];["c"]])
   ```
   matches the pattern `List.sort compare [(2,1,"c"); (1,2,"b"); (1,1,"a")]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   List.sort compare (move_column 1 3 [(1,1,"a"); (1,2,"b"); (1,3,"c"); (1,4,"d")])
   ```
   matches the pattern `List.sort compare [(1,1,"b"); (1,2,"c"); (1,3,"a"); (1,4,"d")]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   List.sort compare (move_column 2 1 [(1,1,"hickory"); (1,2,"dickory"); (1,3,"dock"); (2,1,"three"); (2,2,"blind"); (2,3,"mice")])
   ```
   matches the pattern `List.sort compare [(1,1,"dickory"); (1,2,"hickory"); (1,3,"dock"); (2,1,"blind"); (2,2,"three"); (2,3,"mice")]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   move_column 1 1 [(1,1,"a")]
   ```
   matches the pattern `[(1,1,"a")]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try move_column 0 (-2) [(3,1,"a")] with Failure _ -> [(0,0,"")] 
   ```
   matches the pattern `[(0,0,"")]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try move_column 3 1 [(1,2,"a")] with Failure _ -> []
   ```
   matches the pattern `[]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   List.sort compare (delete_column 2 [(1,1,"a"); (1,2,"b"); (1,3,"c"); (2,1,"X"); (2,2,"Y"); (2,3,"Z")])
   ```
   matches the pattern `List.sort compare [(1,1,"a"); (1,2,"c"); (2,1,"X"); (2,2,"Z")]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   delete_column 2 [(1,1,"a")]
   ```
   matches the pattern `[(1,1,"a")]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   List.sort compare (transpose_table [(1,1,"a"); (1,2,"b"); (1,3,"c"); (2,1,"d"); (2,2,"e"); (2,3,"f")])
   ```
   matches the pattern `List.sort compare [(1,1,"a"); (2,1,"b"); (3,1,"c"); (1,2,"d"); (2,2,"e"); (3,2,"f")]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   transpose_table [(1,4,"h")]
   ```
   matches the pattern `[(4,1,"h")]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   transpose_table []
   ```
   matches the pattern `[]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   table_of_assoc [(1,1,"a")]
   ```
   matches the pattern `[["a"]]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   table_of_assoc [(1,1,"a"); (2,1,"b")]
   ```
   matches the pattern `[["a"]; ["b"]]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   table_of_assoc [(1,1,"a"); (1,2,"b")]
   ```
   matches the pattern `[["a"; "b"]]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   table_of_assoc [(1,1,"a"); (3,1,"b")]
   ```
   matches the pattern `[["a"]; []; ["b"]]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   table_of_assoc [(1,1,"a"); (1,3,"b")]
   ```
   matches the pattern `[["a"; ""; "b"]]`.

   




