## Assessment for HW7 bool_set

Run on May 05, 15:49:03 PM.

+ Pass: Change into directory "hw7".

+ Pass: Check that file "bloom.ml" exists.

+ Pass: bloom.ml successfully compiled

+ Pass: Check that file "bloomtest.ml" exists.

## Automated Tests

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let set = BoolSet.empty in
              BoolSet.mem 1 set
           
   ```
   matches the pattern `false`.

   


   Test failed. The following errors were reported:
` ;;
    Exception: Invalid_argument "index out of bounds".
`

+  _0.8_ / _0.8_ : Pass: 
Check that the result of evaluating
   ```
   let set = BoolSet.empty in
              BoolSet.is_empty set
           
   ```
   matches the pattern `true`.

   




+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let set = BoolSet.add 1 BoolSet.empty in
              List.map (fun x -> BoolSet.mem x set) [1; 2]
           
   ```
   matches the pattern `[true; false]`.

   


   Test failed. The following errors were reported:
` ;;
    Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let set = BoolSet.add 1 (BoolSet.add 2 (BoolSet.add 3 BoolSet.empty)) in
              List.map (fun x -> BoolSet.mem x set) [1;2;3;4;5]
           
   ```
   matches the pattern `[true; true; true; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
    Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let set = BoolSet.from_list([]) in
              List.map (fun x -> BoolSet.mem x set) [1;2;3;4;5]
            
   ```
   matches the pattern `[false; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
    Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let set = BoolSet.from_list([1;2;3;4]) in
              List.map (fun x -> BoolSet.mem x set) [1;2;3;4;5]
            
   ```
   matches the pattern `[true; true; true; true; false]`.

   


   Test failed. The following errors were reported:
` ;;
    Exception: Invalid_argument "index out of bounds".
`

+  _0.8_ / _0.8_ : Pass: 
Check that the result of evaluating
   ```
   let set = BoolSet.from_list([5;1;2;3;4;5]) in
              List.map (fun x -> BoolSet.mem x set) [1;2;3;4;5]
            
   ```
   matches the pattern `[true; true; true; true; true]`.

   




+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let set = BoolSet.from_list([1;2;3;4;1;2;3;4]) in
              List.map (fun x -> BoolSet.mem x set) [1;2;3;4;5;6;7;8]
           
   ```
   matches the pattern `[true; true; true; true; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
    Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let set = BoolSet.from_list([1;2;3;4;1;2;3;4]) in
              List.map (fun x -> BoolSet.mem x set) [1;2;3;4;5;6;7;8]
           
   ```
   matches the pattern `[true; true; true; true; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
    Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([]) in
              let s2 = BoolSet.from_list([]) in
              let union = BoolSet.union s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9]
           
   ```
   matches the pattern `[false; false; false; false; false; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([1;2;3;4]) in
              let s2 = BoolSet.from_list([5;6;7;8]) in
              let union = BoolSet.union s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9;]
           
   ```
   matches the pattern `[true; true; true; true; true; true; true; true; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([1;2;3;4;5;6]) in
              let s2 = BoolSet.from_list([7;8]) in
              let union = BoolSet.union s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9;]
           
   ```
   matches the pattern `[true; true; true; true; true; true; true; true; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([7;8]) in
              let s2 = BoolSet.from_list([1;2;3;4;5;6]) in
              let union = BoolSet.union s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9;]
           
   ```
   matches the pattern `[true; true; true; true; true; true; true; true; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([]) in
              let s2 = BoolSet.from_list([]) in
              let union = BoolSet.inter s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9;]
           
   ```
   matches the pattern `[false; false; false; false; false; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([1;2;3;4]) in
              let s2 = BoolSet.from_list([3;4;5;6]) in
              let union = BoolSet.inter s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9;]
           
   ```
   matches the pattern `[false; false; true; true; false; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([1;2;3;4]) in
              let s2 = BoolSet.from_list([5;6;7;8]) in
              let union = BoolSet.inter s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9;]
           
   ```
   matches the pattern `[false; false; false; false; false; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([1;2;3;4;5;6]) in
              let s2 = BoolSet.from_list([3;4]) in
              let union = BoolSet.inter s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9;]
           
   ```
   matches the pattern `[false; false; true; true; false; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([1;2;3;4;5;6]) in
              let s2 = BoolSet.from_list([7;8]) in
              let union = BoolSet.inter s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9;]
           
   ```
   matches the pattern `[false; false; false; false; false; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([3;4]) in
              let s2 = BoolSet.from_list([1;2;3;4;5;6]) in
              let union = BoolSet.inter s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9;]
           
   ```
   matches the pattern `[false; false; true; true; false; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

+  _0_ / _0.8_ : Fail: 
Check that the result of evaluating
   ```
   let s1 = BoolSet.from_list([7;8]) in
              let s2 = BoolSet.from_list([1;2;3;4;5;6]) in
              let union = BoolSet.inter s1 s2 in
              List.map (fun x -> BoolSet.mem x union) [1;2;3;4;5;6;7;8;9;]
           
   ```
   matches the pattern `[false; false; false; false; false; false; false; false; false]`.

   


   Test failed. The following errors were reported:
` ;;
        Exception: Invalid_argument "index out of bounds".
`

#### Subtotal: _1.6_ / _16.000000000000004_

+ Pass: Check that file "bloom.ml" exists.

+ Pass: bloom.ml successfully compiled

+ Pass: Check that file "bloomtest.ml" exists.

## Manual tests entered by TA: omdal007

+  _13_ / _15_ : Pass: 
    Correctness of signature annotation and type sharing constraint
    
    
     Score (out of 2):2 
    Are `t` and `elt` defined correctly?
    
    
     Score (out of 2):2 
    Is `&@` implemented correctly?
    
    
     Score (out of 1):1 
    Is `make_arr_t` implemented correctly?
    
    
     Score (out of 2):2 
    Are `mem`, `empty`, `is_empty` implemented correctly?
    
    
     Score (out of 3):2 
    Are `add`, `from_list` implemented correctly?
    
    
     Score (out of 3):3 
    Are `union`, `inter` implemented correctly?
    
    
     Score (out of 2):1 
    Comments: @ makes function an operator and it must be used as such 


#### Subtotal: _13_ / _15_

