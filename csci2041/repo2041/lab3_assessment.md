## Assessment for Lab 3

Run on February 15, 12:08:51 PM.

+ Pass: Change into directory "lab3".

+  _2_ / _2_ : Pass: file lab3_types.ml changed on lines {4, 5, 6}

+  _2_ / _2_ : Pass: file lab3_types.ml changed on lines {16, 14, 15}

+  _2_ / _2_ : Pass: file lab3_types.ml changed on lines {24, 25, 23}

+  _2_ / _2_ : Pass: file lab3_types.ml changed on lines {33, 34, 35}

+  _2_ / _2_ : Pass: file lab3_types.ml changed on lines {29}

+  _2_ / _2_ : Pass: Check that an OCaml file "lab3_types.ml" has no syntax or type errors.

    OCaml file "lab3_types.ml" has no syntax or type errors.



+  _2_ / _2_ : Pass: Check that name reverse in file lab3_types.ml has type 'a . 'a list -> 'a list

+  _6_ / _6_ : Pass: Check that an OCaml file "number.ml" has no syntax or type errors.

    OCaml file "number.ml" has no syntax or type errors.



+  _1_ / _1_ : Pass: Check that expression `(z1,z2,r1,r2)` following file number.ml has type `number*number*number*number`

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   to_int z1
   ```
   matches the pattern `Some (int_of_float (float_of_number z1))`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   (to_float z2)
   ```
   matches the pattern `None`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   (to_int r2)
   ```
   matches the pattern `None`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   to_float r1
   ```
   matches the pattern `Some (float_of_number r1)`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   float_of_number (r1 +? r2)
   ```
   matches the pattern `(float_of_number r1) +. (float_of_number r2)`.

   




#### Total score: _26_ / _26_

