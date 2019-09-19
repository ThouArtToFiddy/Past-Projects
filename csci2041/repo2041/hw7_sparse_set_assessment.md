## Assessment for HW7 sparse_set

Run on May 05, 14:43:51 PM.

+ Pass: Change into directory "hw7".

+ Pass: Check that file "bloom.ml" exists.

+ Pass: bloom.ml successfully compiled

+ Pass: Check that file "bloomtest.ml" exists.

## Automated Tests

+  _2.25_ / _2.25_ : Pass: 
Check that the result of evaluating
   ```
   let set = SparseSet.from_list([]) in
              List.map (fun x -> SparseSet.mem x set) [1; 2; 3; 4; 5]
            
   ```
   matches the pattern `[false; false; false; false; false]`.

   




+  _2.25_ / _2.25_ : Pass: 
Check that the result of evaluating
   ```
   let set = SparseSet.from_list([5;1;2;3;4]) in
              List.map (fun x -> SparseSet.mem x set) [1; 2; 3; 4; 5]
            
   ```
   matches the pattern `[true; true; true; true; true]`.

   




+  _2.25_ / _2.25_ : Pass: 
Check that the result of evaluating
   ```
   let set = SparseSet.from_list([5;1;2;3;4;5]) in
              List.map (fun x -> SparseSet.mem x set) [1; 2; 3; 4; 5; 6; 7; 8; 9]
            
   ```
   matches the pattern `[true; true; true; true; true; false; false; false; false]`.

   




+  _2.25_ / _2.25_ : Pass: 
Check that the result of evaluating
   ```
   let set = SparseSet.from_list([1;2;3;4;1;2;3;4]) in
              List.map (fun x -> SparseSet.mem x set) [1; 2; 3; 4; 5; 6; 7; 8; 9]
           
   ```
   matches the pattern `[true; true; true; true; false; false; false; false; false]`.

   




#### Subtotal: _9.0_ / _9.0_

+ Pass: Check that file "bloom.ml" exists.

+ Pass: bloom.ml successfully compiled

+ Pass: Check that file "bloomtest.ml" exists.

## Manual tests entered by TA: whit2267

+  _4_ / _4_ : Pass: 
    Is `Set.Make` used correctly?
    
    
     Score (out of 2): 2
    Is `from_list` implemented correctly?
    
    
     Score (out of 2): 2
    Comments: 


#### Subtotal: _4_ / _4_

