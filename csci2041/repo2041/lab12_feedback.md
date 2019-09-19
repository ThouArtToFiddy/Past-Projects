### Feedback for Lab 12

Run on April 23, 11:54:34 AM.

+ Pass: Change into directory "lab12".

+ Pass: Check that file "mutlist.ml" exists.

+ Pass: 
Check that the result of evaluating
   ```
   let ml = mlist_of_list [2;3;5;11] in insert_after_m 5 7 ml; list_of_mlist ml
   ```
   matches the pattern `[2; 3; 5; 7; 11]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try insert_after_m 0 1 (mlist_of_list []); 1 with Not_found -> (-1)
   ```
   matches the pattern `-1`.

   




+ Pass: 
Check that the result of evaluating
   ```
   let m2 = mlist_of_list [1;2;3;4;5;6;7;8;9;10] in exclude_m (fun x -> x mod 2 = 0) m2
   ```
   matches the pattern `C {hd = 1; tl = C {hd = 3; tl = C {hd = 5; tl = C {hd = 7; tl = C {hd = 9; tl = Nil}}}}}`.

   




+ Pass: 
Check that the result of evaluating
   ```
   let m2 = mlist_of_list [1;2;3;4;5;6;7;8;9;10] in let _ = exclude_m (fun x -> x mod 2 = 0) m2 in list_of_mlist m2
   ```
   matches the pattern `[1; 3; 5; 7; 9]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   let m2 = mlist_of_list [1;3;5;7;9] in exclude_m (fun x -> x mod 3 = 1) m2
   ```
   matches the pattern `C {hd = 3; tl = C {hd = 5; tl = C {hd = 9; tl = Nil}}}`.

   




+ Pass: 
Check that the result of evaluating
   ```
   let m2 = mlist_of_list [1;3;5;7;9] in let _ = exclude_m (fun x -> x mod 3 = 1) m2 in list_of_mlist m2
   ```
   matches the pattern `[1; 3; 5; 9]`.

   




