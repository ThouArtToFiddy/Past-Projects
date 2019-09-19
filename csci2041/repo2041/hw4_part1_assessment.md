## Assessment for HW4 part1

Run on April 02, 11:30:29 AM.

This file contains assessment for part1

+ Pass: Change into directory "hw4".

+ Pass: Check that file "program.ml" exists.

+ Pass: Check that file "parser.ml" exists.

+ Pass: Check that file "progOpt.ml" exists.

+ Pass: Check that file "interpreter.ml" exists.

+ Pass: Check that hw4 files compile without errors

## Feedback Tests (total possible value: 2)

+  _0.2_ / _0.2_ : Pass: Check that expression `Program.ListT` following file /dev/null has type `Program.expType`

+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   typeof Readint []
   ```
   matches the pattern `IntT`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   typeof (Cons(Head (LConst [1;2]), Tail (LConst [3;4]))) []
   ```
   matches the pattern `ListT`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   try let _ = typeof (Cons(BConst false, LConst [])) [] in false with Failure _ -> true
   ```
   matches the pattern `true`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   try let _ = typeof (Tail (Const 0)) [] in false with Failure _ -> true
   ```
   matches the pattern `true`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   try let _ = typeof (Head (Const 0)) [] in false with Failure _ -> true
   ```
   matches the pattern `true`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   try let _ = typeof (Cons(Const 0, Const 1)) [] in false with Failure _ -> true
   ```
   matches the pattern `true`.

   




+  _0.2_ / _0.2_ : Pass: Check that expression `Program.ListV []` following file /dev/null has type `Program.result`

+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   eval Readint []
   ```
   matches the pattern `(IntV 0, [])`.

   (with 0 on stdin)




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   eval (Tail(Cons(Head(Seq [Set ("x", Const 17); LConst [1;2]]), Cons(Name "x", LConst [])))) [("x", IntV 5); ("y", ListV [1;2])]
   ```
   matches the pattern `(ListV [17], [("x",IntV 17); ("y", ListV [1;2])])`.

   




#### Subtotal: _1.9999999999999998_ / _1.9999999999999998_

## Additional automated tests

+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (typeof (Let ("fact", Fun ("i", IntT,   Let ("ret", Const 1,   Seq    [While (Gt (Name "i", Const 0),      Seq       [Set ("ret", Mul (Name "ret", Name "i"));        Set ("i", Sub (Name "i", Const 1))]);     Name "ret"])), Apply (Name "fact", Const 5)))[])
   ```
   matches the pattern ` (IntT)`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (typeof (Let ("rev",  Fun ("in", ListT,  Let ("out", LConst [],   Seq    [While (Not (Eq (Name "in", LConst [])),      Seq       [Set ("out", Cons (Head (Name "in"), Name "out"));        Set ("in", Tail (Name "in"))]);     Name "out"])), Let ("append",  Fun ("l1", ListT,   Fun ("l2", ListT,    Seq     [Set ("l1", Apply (Name "rev", Name "l1"));      While (Not (Eq (Name "l1", LConst [])),       Seq        [Set ("l2", Cons (Head (Name "l1"), Name "l2"));         Set ("l1", Tail (Name "l1"))]);      Name "l2"])),  Apply (Apply (Name "append", LConst [1; 2; 3]), LConst [4; 5; 6]))))[])
   ```
   matches the pattern ` (ListT)`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (typeof (Let ("filter",  Fun ("f", FunT (IntT, BoolT),  Fun ("l", ListT,   Let ("out", LConst [],    Seq     [While (Not (Eq (Name "l", LConst [])),       Seq        [Set ("out",          If (Apply (Name "f", Head (Name "l")),           Cons (Head (Name "l"), Name "out"), Name "out"));         Set ("l", Tail (Name "l"))]);      Name "out"]))), Apply  (Apply (Name "filter",    Fun ("x", IntT, And (Lt (Name "x", Const 4), Gt (Name "x", Const 2)))),  LConst [1; 2; 3; 4; 5])))[])
   ```
   matches the pattern ` (ListT)`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (typeof (Let ("map", Fun ("f", FunT (IntT, IntT),   Fun ("l", ListT,     Let ("out", LConst [],    Seq      [While (Not (Eq (Name "l", LConst [])),        Seq        [Set ("out", Cons (Apply (Name "f", Head (Name "l")), Name "out"));         Set ("l", Tail (Name "l"))]);      Name "out"]))), Apply (Apply (Name "map", Fun ("x", IntT, Mul (Name "x", Const 2))),  LConst [1; 2; 3; 4; 5])))[])
   ```
   matches the pattern ` (ListT)`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (typeof (Let ("fold", Fun ("f", FunT (IntT, FunT (IntT, IntT)),   Fun ("init", IntT,   Fun ("l", ListT,    Seq     [While (Not (Eq (Name "l", LConst [])),       Seq        [Set ("init", Apply (Apply (Name "f", Name "init"), Head (Name "l")));         Set ("l", Tail (Name "l"))]);      Name "init"]))), Apply  (Apply    (Apply (Name "fold",      Fun ("x", IntT, Fun ("y", IntT, Add (Name "x", Name "y")))),    Const 0),  LConst [1; 2; 3; 4])))[])
   ```
   matches the pattern ` (IntT)`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (eval (Let ("fact", Fun ("i", IntT,   Let ("ret", Const 1,   Seq    [While (Gt (Name "i", Const 0),      Seq       [Set ("ret", Mul (Name "ret", Name "i"));        Set ("i", Sub (Name "i", Const 1))]);     Name "ret"])), Apply (Name "fact", Const 5)))[])
   ```
   matches the pattern ` ((IntV 120, []))`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (eval (Let ("rev",  Fun ("in", ListT,  Let ("out", LConst [],   Seq    [While (Not (Eq (Name "in", LConst [])),      Seq       [Set ("out", Cons (Head (Name "in"), Name "out"));        Set ("in", Tail (Name "in"))]);     Name "out"])), Let ("append",  Fun ("l1", ListT,   Fun ("l2", ListT,    Seq     [Set ("l1", Apply (Name "rev", Name "l1"));      While (Not (Eq (Name "l1", LConst [])),       Seq        [Set ("l2", Cons (Head (Name "l1"), Name "l2"));         Set ("l1", Tail (Name "l1"))]);      Name "l2"])),  Apply (Apply (Name "append", LConst [1; 2; 3]), LConst [4; 5; 6]))))[])
   ```
   matches the pattern ` ((ListV [1; 2; 3; 4; 5; 6], []))`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (eval (Let ("filter",  Fun ("f", FunT (IntT, BoolT),  Fun ("l", ListT,   Let ("out", LConst [],    Seq     [While (Not (Eq (Name "l", LConst [])),       Seq        [Set ("out",          If (Apply (Name "f", Head (Name "l")),           Cons (Head (Name "l"), Name "out"), Name "out"));         Set ("l", Tail (Name "l"))]);      Name "out"]))), Apply  (Apply (Name "filter",    Fun ("x", IntT, And (Lt (Name "x", Const 4), Gt (Name "x", Const 2)))),  LConst [1; 2; 3; 4; 5])))[])
   ```
   matches the pattern ` ((ListV [3], []))`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (eval (Let ("map", Fun ("f", FunT (IntT, IntT),   Fun ("l", ListT,     Let ("out", LConst [],    Seq      [While (Not (Eq (Name "l", LConst [])),        Seq        [Set ("out", Cons (Apply (Name "f", Head (Name "l")), Name "out"));         Set ("l", Tail (Name "l"))]);      Name "out"]))), Apply (Apply (Name "map", Fun ("x", IntT, Mul (Name "x", Const 2))),  LConst [1; 2; 3; 4; 5])))[])
   ```
   matches the pattern ` ((ListV [10; 8; 6; 4; 2], []) )`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (eval (Let ("fold", Fun ("f", FunT (IntT, FunT (IntT, IntT)),   Fun ("init", IntT,   Fun ("l", ListT,    Seq     [While (Not (Eq (Name "l", LConst [])),       Seq        [Set ("init", Apply (Apply (Name "f", Name "init"), Head (Name "l")));         Set ("l", Tail (Name "l"))]);      Name "init"]))), Apply  (Apply    (Apply (Name "fold",      Fun ("x", IntT, Fun ("y", IntT, Add (Name "x", Name "y")))),    Const 0),  LConst [1; 2; 3; 4])))[])
   ```
   matches the pattern ` ((IntV 10, [])  )`.

   




#### Subtotal: _10.0_ / _10.0_

## Manual tests entered by TA: yuanx254

+  _2_ / _2_ : Pass: 
    Overall code quality for `part1`
    
    
     Score (out of 2): 2


+ Pass: Other Stylistic Comments & Feedback

    Great job!

#### Subtotal: _2_ / _2_

