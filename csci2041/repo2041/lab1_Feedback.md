### Feedback for Lab 1

Run on February 07, 18:24:21 PM.

+ Pass: Change into directory "lab1".

+ Pass: Check that file "lab1.ml" exists.

+ Pass: Check that an OCaml file "lab1.ml" has no syntax or type errors.

    OCaml file "lab1.ml" has no syntax or type errors.



+ Fail: 
Check that the result of evaluating
   ```
   scale 3. (1., 2.)
   ```
   matches the pattern `(3., 6.)`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 
   ```
 ;;
[24m[1;31mError[0m: This expression has type float but an expression was expected of type
         int

   ```



+ Fail: 
Check that the result of evaluating
   ```
   scale 2. (-1.,4.)
   ```
   matches the pattern `(-2.,8.)`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 
   ```
 ;;
[24m[1;31mError[0m: This expression has type float but an expression was expected of type
         int

   ```



+ Fail: 
Check that the result of evaluating
   ```
   length (3.,4.)
   ```
   matches the pattern `5.`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 
   ```
 ;;
[24m[1;31mError[0m: This expression has type 'a * 'b
       but an expression was expected of type float

   ```



+ Fail: 
Check that the result of evaluating
   ```
   length (5.,12.)
   ```
   matches the pattern `13.`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 
   ```
 ;;
[24m[1;31mError[0m: This expression has type 'a * 'b
       but an expression was expected of type float

   ```



+ Pass: 
Check that the result of evaluating
   ```
   unit_vector (0.0,1.0)
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   unit_vector (1.5,2.7)
   ```
   matches the pattern `false`.

   




+ Pass: 
Check that the result of evaluating
   ```
   unit_vector (0.6,0.8)
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   unit_vector (0.,0.5)
   ```
   matches the pattern `false`.

   




