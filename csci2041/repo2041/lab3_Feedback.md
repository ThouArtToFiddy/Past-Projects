### Feedback for Lab 3

Run on February 12, 17:01:11 PM.

+ Pass: Change into directory "lab3".

+ Pass: Check that file "lab3_types.ml" exists.

+ Pass: file lab3_types.ml changed on lines {4, 5, 6}

+ Pass: file lab3_types.ml changed on lines {16, 14, 15}

+ Pass: file lab3_types.ml changed on lines {24, 25, 23}

+ Pass: file lab3_types.ml changed on lines {33, 34, 35}

+ Pass: file lab3_types.ml changed on lines {29}

+ Pass: Check that an OCaml file "lab3_types.ml" has no syntax or type errors.

    OCaml file "lab3_types.ml" has no syntax or type errors.



+ Pass: Check that name reverse in file lab3_types.ml has type 'a . 'a list -> 'a list

+ Pass: Check that file "number.ml" exists.

+ Pass: Check that an OCaml file "number.ml" has no syntax or type errors.

    OCaml file "number.ml" has no syntax or type errors.



+ Pass: Check that expression `(z1,z2,r1,r2)` following file number.ml has type `number*number*number*number`

+ Pass: 
Check that the result of evaluating
   ```
   to_int z1
   ```
   matches the pattern `Some (int_of_float (float_of_number z1))`.

   




+ Pass: 
Check that the result of evaluating
   ```
   (to_float z2)
   ```
   matches the pattern `None`.

   




+ Pass: 
Check that the result of evaluating
   ```
   (to_int r2)
   ```
   matches the pattern `None`.

   




+ Pass: 
Check that the result of evaluating
   ```
   to_float r1
   ```
   matches the pattern `Some (float_of_number r1)`.

   




+ Pass: 
Check that the result of evaluating
   ```
   float_of_number (r1 +? r2)
   ```
   matches the pattern `(float_of_number r1) +. (float_of_number r2)`.

   




