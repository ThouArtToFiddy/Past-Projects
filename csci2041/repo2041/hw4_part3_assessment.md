## Assessment for HW4 part3

Run on April 02, 08:50:24 AM.

This file contains assessment for part3

+ Pass: Change into directory "hw4".

+ Pass: Check that file "program.ml" exists.

+ Pass: Check that file "parser.ml" exists.

+ Pass: Check that file "progOpt.ml" exists.

+ Pass: Check that file "interpreter.ml" exists.

+ Pass: Check that hw4 files compile without errors

## Feedback Tests (total possible value: 2)

+  _0.4_ / _0.4_ : Pass: 
Check that the result of evaluating
   ```
   const_fold (While (BConst false, Const 1))
   ```
   matches the pattern `Seq []`.

   




+  _0.4_ / _0.4_ : Pass: 
Check that the result of evaluating
   ```
   const_fold (If (BConst true, Const 0, Const 1))
   ```
   matches the pattern `Const 0`.

   




+  _0.4_ / _0.4_ : Pass: 
Check that the result of evaluating
   ```
   const_fold (If (BConst false, Const 0, Const 1))
   ```
   matches the pattern `Const 1`.

   




+  _0.4_ / _0.4_ : Pass: 
Check that the result of evaluating
   ```
   const_fold (Seq [Name "x"; Const 0; Const 1])
   ```
   matches the pattern `Const 1`.

   




+  _0.4_ / _0.4_ : Pass: 
Check that the result of evaluating
   ```
   const_fold (Let ("x", Const 0, Const 1))
   ```
   matches the pattern `Const 1`.

   




#### Subtotal: _2.0_ / _2.0_

## Additional automated tests

+  _0_ / _1.0_ : Fail: 
Check that the result of evaluating
   ```
    (const_fold ((Let ("y", Const 0, Let ("x", Add (Const 1, Const 2),   While (Gt (Name "x", Const 0),    Seq     [         Set ("x", Sub (Name "x", Const 1));         If (Eq (Add (Const 1, Const 0), Sub (Const 2, Const 1)), Name "y", Name "x");         If (Eq (Mul (Const 1, Const 0), Sub (Const 2, Const 2)), Name "x", Name "y");         While (Gt (Name "y", Const 4), Print (Name "y"));         Let ("z", Readint, Name "z");         Seq [                 Set ("z",  If (Gt (Const 42, Const 4), Add (Const 2, Const 3), Lt (Const 1, Const 2)))             ]     ]))))))
   ```
   matches the pattern ` (Let ("y", Const 0, Let ("x", Const 3,  While (Gt (Name "x", Const 0),   Seq    [Set ("x", Sub (Name "x", Const 1));     While (Gt (Name "y", Const 4), Print (Name "y"));     Let ("z", Readint, Name "z"); Seq [Set ("z", Const 5)]]))))`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 
```
 ;;
  - : Program.expr =
Let ("y", Const 0,
 Let ("x", Const 3,
  While (Gt (Name "x", Const 0),
   Seq
    [Set ("x", Sub (Name "x", Const 1));
     While (Gt (Name "y", Const 4), Print (Name "y"));
     Let ("z", Readint, Name "z"); Seq [Set ("z", Add (Const 2, Const 3))]])))

```



+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (const_fold ((Let ("y", Mul (Const 1, Const 0), Let ("x", Sub (Const 451, Const 154),   If (Gt (Name "x", Const 134),    Seq     [         Set ("x", Sub (Name "x", Const 1));         If (Eq (Add (Const 1, Const 0), Sub (Const 2, Const 1)), Const 396, Name "x");         If (Eq (Mul (Const 1, Const 0), Sub (Const 2, Const 2)), Const 641, Name "y");         While (Gt (Name "y", Const 4), Print (Name "y"));         Let ("z", Readint, Name "z");     ],     Seq     [         Print (Name "y");         If (Eq (Add (Const 1, Const 0), Sub (Const 2, Const 1)),             Let ("z", Readint, Name "z"),             Add (Const 42, Const 17));     ]))))))
   ```
   matches the pattern ` (Let ("y", Const 0,            Let ("x", Const 297,           If (Gt (Name "x", Const 134),       Seq     [Set ("x", Sub (Name "x", Const 1));While (Gt (Name "y", Const 4), Print (Name "y"));  Let ("z", Readint, Name "z")],    Seq[Print(Name "y"); Let ("z", Readint, Name "z")]))))`.

   




+  _0_ / _1.0_ : Fail: 
Check that the result of evaluating
   ```
    (const_fold ((Let ("y", Mul (Const 1, Const 0), Let ("x", Sub (Const 451, Const 154), Let ("z", Readint,   If ( Eq (Add (Const 1, Const 0), Sub (Const 2, Const 1)),    Seq     [         If (Gt (Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1))), Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1))), Const 1, Print (Const 1));         If (Lt (Sub (Const 2, Add (Const 2, Mul (Const 2, Const 2))), Sub (Const 2, Add (Mul (Const 2, Const 2), Const 2))), Const 2, Print (Const 2));         If (Eq (Mul (Const 3, Sub (Const 3, Add (Const 3, Const 3))), Mul (Const 3, Sub (Add (Const 3, Const 3), Const 3))), Const 3, Print (Const 3));         If (Gt (Add (Const 4, Add (Const 4, Add (Const 4, Const 4))), Mul (Const 4, Mul (Add (Const 4, Const 4), Const 4))), Const 4, Print (Const 4));         If (Lt (Mul (Const 5, Add (Const 5, Add (Const 5, Const 5))), Add (Const 5, Add (Add (Const 5, Const 5), Const 5))), Const 5, Print (Const 5));         If (Eq (Mul (Const 6, Mul (Const 6, Mul (Const 6, Const 6))), Sub (Const 6, Sub (Sub (Const 6, Const 6), Const 6))), Const 6, Print (Const 6));         If (Gt (Add (Const 7, Add (Const 7, Add (Const 7, Const 7))), Mul (Const 7, Mul (Mul (Const 7, Const 7), Const 7))), Const 7, Print (Const 7));         If (Lt (Mul (Const 8, Add (Const 8, Mul (Const 8, Const 8))), Mul (Const 8, Sub (Mul (Const 8, Const 8), Const 8))), Const 8, Print (Const 8));         If (Eq (Add (Const 9, Add (Const 9, Add (Const 9, Const 9))), Sub (Const 9, Add (Add (Const 9, Const 9), Const 9))), Const 9, Print (Const 9));     ],     Seq     [         Set ("x", Sub (Name "x", Const 1));         If (Eq (Add (Const 1, Const 0), Sub (Const 2, Const 1)), Const 396, Name "x");         If (Eq (Mul (Const 1, Const 0), Sub (Const 2, Const 2)), Const 641, Name "y");         While (Gt (Name "y", Const 4), Print (Name "y"));         Let ("z", Readint, Name "z");         Set ("x", Sub (Name "x", Const 1));         If (Eq (Add (Const 1, Const 0), Sub (Const 2, Const 1)), Const 396, Name "x");         If (Eq (Mul (Const 1, Const 0), Sub (Const 2, Const 2)), Const 641, Name "y");         While (Gt (Name "y", Const 4), Print (Name "y"));         Let ("z", Readint, Name "z");     ])))))))
   ```
   matches the pattern ` (Let ("y", Const 0,         Let ("x", Const 297,       Let ("z", Readint,        Seq     [Print (Const 1); Print (Const 2); Print (Const 3); Print (Const 4);Print (Const 5); Print (Const 6); Print (Const 7); Print (Const 8);      Print(Const 9)]))))`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 
```
 ;;
        - : Program.expr =
Let ("y", Const 0,
 Let ("x", Const 297,
  Let ("z", Readint,
   Seq
    [If
      (Gt (Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1))),
        Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1))),
      Const 1, Print (Const 1));
     If
      (Lt (Sub (Const 2, Add (Const 2, Mul (Const 2, Const 2))),
        Sub (Const 2, Add (Mul (Const 2, Const 2), Const 2))),
      Const 2, Print (Const 2));
     If
      (Eq (Mul (Const 3, Sub (Const 3, Add (Const 3, Const 3))),
        Mul (Const 3, Sub (Add (Const 3, Const 3), Const 3))),
      Const 3, Print (Const 3));
     If
      (Gt (Add (Const 4, Add (Const 4, Add (Const 4, Const 4))),
        Mul (Const 4, Mul (Add (Const 4, Const 4), Const 4))),
      Const 4, Print (Const 4));
     If
      (Lt (Mul (Const 5, Add (Const 5, Add (Const 5, Const 5))),
        Add (Const 5, Add (Add (Const 5, Const 5), Const 5))),
      Const 5, Print (Const 5));
     If
      (Eq (Mul (Const 6, Mul (Const 6, Mul (Const 6, Const 6))),
        Sub (Const 6, Sub (Sub (Const 6, Const 6), Const 6))),
      Const 6, Print (Const 6));
     If
      (Gt (Add (Const 7, Add (Const 7, Add (Const 7, Const 7))),
        Mul (Const 7, Mul (Mul (Const 7, Const 7), Const 7))),
      Const 7, Print (Const 7));
     If
      (Lt (Mul (Const 8, Add (Const 8, Mul (Const 8, Const 8))),
        Mul (Const 8, Sub (Mul (Const 8, Const 8), Const 8))),
      Const 8, Print (Const 8));
     If
      (Eq (Add (Const 9, Add (Const 9, Add (Const 9, Const 9))),
        Sub (Const 9, Add (Add (Const 9, Const 9), Const 9))),
      Const 9, Print (Const 9))])))

```



+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (const_fold ((While (Eq (Mul (Const 21, Mul (Const 13, Mul (Const 2, Const 1))), Sub (Const 6, Sub (Sub (Const 3, Const 1), Const 29))),     Seq      [          If (Gt (Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1))), Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1))), Const 1, Print (Const 1));          If (Lt (Sub (Const 2, Add (Const 2, Mul (Const 2, Const 2))), Sub (Const 2, Add (Mul (Const 2, Const 2), Const 2))), Const 2, Print (Const 2));          If (Eq (Mul (Const 3, Sub (Const 3, Add (Const 3, Const 3))), Mul (Const 3, Sub (Add (Const 3, Const 3), Const 3))), Const 3, Print (Const 3));          If (Gt (Add (Const 4, Add (Const 4, Add (Const 4, Const 4))), Mul (Const 4, Mul (Add (Const 4, Const 4), Const 4))), Const 4, Print (Const 4));          If (Lt (Mul (Const 5, Add (Const 5, Add (Const 5, Const 5))), Add (Const 5, Add (Add (Const 5, Const 5), Const 5))), Const 5, Print (Const 5));          If (Eq (Mul (Const 6, Mul (Const 6, Mul (Const 6, Const 6))), Sub (Const 6, Sub (Sub (Const 6, Const 6), Const 6))), Const 6, Print (Const 6));          If (Gt (Add (Const 7, Add (Const 7, Add (Const 7, Const 7))), Mul (Const 7, Mul (Mul (Const 7, Const 7), Const 7))), Const 7, Print (Const 7));          If (Lt (Mul (Const 8, Add (Const 8, Mul (Const 8, Const 8))), Mul (Const 8, Sub (Mul (Const 8, Const 8), Const 8))), Const 8, Print (Const 8));          If (Eq (Add (Const 9, Add (Const 9, Add (Const 9, Const 9))), Sub (Const 9, Add (Add (Const 9, Const 9), Const 9))), Const 9, Print (Const 9));      ]))))
   ```
   matches the pattern ` (Seq [])`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (const_fold ((While (Eq (Mul (Const 21, Mul (Const 13, Mul (Const 2, Const 1))), Mul (Const 21, Mul (Const 13, Mul (Const 2, Const 1)))),     Seq      [          If (Gt (Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1))), Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1))), Const 1, Print (Const 1));          If (Lt (Sub (Const 2, Add (Const 2, Mul (Const 2, Const 2))), Sub (Const 2, Add (Mul (Const 2, Const 2), Const 2))), Const 2, Print (Const 2));          If (Eq (Mul (Const 3, Sub (Const 3, Add (Const 3, Const 3))), Mul (Const 3, Sub (Add (Const 3, Const 3), Const 3))), Const 3, Print (Const 3));          If (Gt (Add (Const 4, Add (Const 4, Add (Const 4, Const 4))), Mul (Const 4, Mul (Add (Const 4, Const 4), Const 4))), Const 4, Print (Const 4));          If (Lt (Mul (Const 5, Add (Const 5, Add (Const 5, Const 5))), Add (Const 5, Add (Add (Const 5, Const 5), Const 5))), Const 5, Print (Const 5));          If (Eq (Mul (Const 6, Mul (Const 6, Mul (Const 6, Const 6))), Sub (Const 6, Sub (Sub (Const 6, Const 6), Const 6))), Const 6, Print (Const 6));          If (Gt (Add (Const 7, Add (Const 7, Add (Const 7, Const 7))), Mul (Const 7, Mul (Mul (Const 7, Const 7), Const 7))), Const 7, Print (Const 7));          If (Lt (Mul (Const 8, Add (Const 8, Mul (Const 8, Const 8))), Mul (Const 8, Sub (Mul (Const 8, Const 8), Const 8))), Const 8, Print (Const 8));          If (Eq (Add (Const 9, Add (Const 9, Add (Const 9, Const 9))), Sub (Const 9, Add (Add (Const 9, Const 9), Const 9))), Const 9, Print (Const 9));      ]))))
   ```
   matches the pattern ` (While (BConst true,          Seq   [Print (Const 1); Print (Const 2); Print (Const 3); Print (Const 4);Print (Const 5); Print (Const 6); Print (Const 7); Print (Const 8);    Print(Const 9)]))`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (const_fold ((While (Eq (Mul (Const 21, Mul (Const 13, Mul (Const 2, Const 1))), Mul (Const 21, Mul (Const 13, Mul (Const 2, Const 1)))), Let ("sum",     Fun ("a", IntT,       Fun ("b", IntT,         If (Eq (Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1)), Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1)))), Add (Name "a", Name "b"), Print (Const 9999)))) ,     Seq      [          Print (Apply (Apply (Name "sum", Const (1)), Const (2)));          Print (Apply (Apply (Name "sum", Const (3)), Const (4)));          Print (Apply (Apply (Name "sum", Const (5)), Const (6)));          Print (Apply (Apply (Name "sum", Const (7)), Const (8)));          Print (Apply (Apply (Name "sum", Const (9)), Const (10)))      ]) ))))
   ```
   matches the pattern ` (While (BConst true,                    Let ("sum", Fun ("a", IntT, Fun ("b", IntT, Add (Name "a", Name "b"))),         Seq    [Print (Apply (Apply (Name "sum", Const 1), Const 2));Print (Apply (Apply (Name "sum", Const 3), Const 4));  Print (Apply (Apply (Name "sum", Const 5), Const 6 )); Print(Apply(Apply (Name "sum", Const 7), Const 8));     Print(Apply(Apply(Name "sum", Const 9), Const 10))])))`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (const_fold ((Let ("sum",     Fun ("a", IntT,       Fun ("b", IntT,         If (Eq (Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1)), Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1)))), Add (Name "a", Name "b"), Print (Const 9999)))) ,     While (Gt ((Apply (Apply (Name "sum", Const (9)), Const (10))), ((Apply (Apply (Name "sum", Const (1)), Const (2))))),         Print (Let ("z", Readint, Name "z"))     )))))
   ```
   matches the pattern ` (Let ("sum", Fun ("a", IntT, Fun ("b", IntT, Add (Name "a", Name "b"))),               While       (Gt (Apply (Apply (Name "sum", Const 9), Const 10),        Apply (Apply (Name "sum", Const 1), Const 2)),    Print (Let ("z", Readint, Name "z")))))`.

   




+  _0_ / _1.0_ : Fail: 
Check that the result of evaluating
   ```
    (const_fold ((Let ("y", Mul (Const 0, Const 0), Let ("z",   If (Lt (Name "y", Const 4),    Seq    [         Set ("y", Sub (Name "y", Const 1));         Const 1;    ], Const 0),(   Seq    [         Print (Name "y");         If (Gt (Add (Const 1, Const 0), Sub (Const 2, Const 1)),             Let ("z", Readint, Name "z"),             Add (Const 42, Const 17));     ]))))))
   ```
   matches the pattern ` (Let ("y", Const 0,                   Let ("z",         If (Lt (Name "y", Const 4),    Seq [Set ("y", Sub (Name "y", Const 1)); Const 1], Const 0),Seq [Print (Name "y"); Const 59])))`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 
```
 ;;
- : Program.expr =
Let ("y", Const 0,
 Let ("z",
  If (Lt (Name "y", Const 4),
   Seq [Set ("y", Sub (Name "y", Const 1)); Const 1], Const 0),
  Seq [Print (Name "y"); Add (Const 42, Const 17)]))

```



+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (const_fold ((If (Lt (Name "y", Const 4),         While (Eq (Mul (Const 21, Mul (Const 13, Mul (Const 2, Const 1))), Sub (Const 6, Sub (Sub (Const 3, Const 1), Const 29))),             Seq              [                  If (Gt (Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1))), Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1))), Const 1, Print (Const 1));                  If (Lt (Sub (Const 2, Add (Const 2, Mul (Const 2, Const 2))), Sub (Const 2, Add (Mul (Const 2, Const 2), Const 2))), Const 2, Print (Const 2));                  If (Eq (Mul (Const 3, Sub (Const 3, Add (Const 3, Const 3))), Mul (Const 3, Sub (Add (Const 3, Const 3), Const 3))), Const 3, Print (Const 3));                  If (Gt (Add (Const 4, Add (Const 4, Add (Const 4, Const 4))), Mul (Const 4, Mul (Add (Const 4, Const 4), Const 4))), Const 4, Print (Const 4));                  If (Lt (Mul (Const 5, Add (Const 5, Add (Const 5, Const 5))), Add (Const 5, Add (Add (Const 5, Const 5), Const 5))), Const 5, Print (Const 5));                  If (Eq (Mul (Const 6, Mul (Const 6, Mul (Const 6, Const 6))), Sub (Const 6, Sub (Sub (Const 6, Const 6), Const 6))), Const 6, Print (Const 6));                  If (Gt (Add (Const 7, Add (Const 7, Add (Const 7, Const 7))), Mul (Const 7, Mul (Mul (Const 7, Const 7), Const 7))), Const 7, Print (Const 7));                  If (Lt (Mul (Const 8, Add (Const 8, Mul (Const 8, Const 8))), Mul (Const 8, Sub (Mul (Const 8, Const 8), Const 8))), Const 8, Print (Const 8));                  If (Eq (Add (Const 9, Add (Const 9, Add (Const 9, Const 9))), Sub (Const 9, Add (Add (Const 9, Const 9), Const 9))), Const 9, Print (Const 9));              ]),   Seq    [         Let ("sum",             Fun ("a", IntT,               Fun ("b", IntT,                 If (Eq (Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1)), Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1)))), Add (Name "a", Name "b"), Print (Const 9999)))) ,             While (Gt ((Apply (Apply (Name "sum", Const (9)), Const (10))), ((Apply (Apply (Name "sum", Const (1)), Const (2))))),                 Print (Let ("z", Readint, Name "z"))             ))     ]))))
   ```
   matches the pattern ` (If (Lt (Name "y", Const 4), Seq [],         Seq         [Let ("sum", Fun ("a", IntT, Fun ("b", IntT, Add (Name "a", Name "b"))),         While         (Gt (Apply (Apply (Name "sum", Const 9), Const 10),           Apply (Apply (Name "sum", Const 1), Const 2)),       Print (Let ("z", Readint, Name "z"))))]))`.

   




+  _0_ / _1.0_ : Fail: 
Check that the result of evaluating
   ```
    (const_fold ((If (Eq (Const 3, Const 3),         While (Eq (Mul (Const 21, Mul (Const 13, Mul (Const 2, Const 1))), Sub (Const 6, Sub (Sub (Const 3, Const 1), Const 29))),             Seq              [                  If (Gt (Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1))), Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1))), Const 1, Print (Const 1));                  If (Lt (Sub (Const 2, Add (Const 2, Mul (Const 2, Const 2))), Sub (Const 2, Add (Mul (Const 2, Const 2), Const 2))), Const 2, Print (Const 2));                  If (Eq (Mul (Const 3, Sub (Const 3, Add (Const 3, Const 3))), Mul (Const 3, Sub (Add (Const 3, Const 3), Const 3))), Const 3, Print (Const 3));                  If (Gt (Add (Const 4, Add (Const 4, Add (Const 4, Const 4))), Mul (Const 4, Mul (Add (Const 4, Const 4), Const 4))), Const 4, Print (Const 4));                  If (Lt (Mul (Const 5, Add (Const 5, Add (Const 5, Const 5))), Add (Const 5, Add (Add (Const 5, Const 5), Const 5))), Const 5, Print (Const 5));                  If (Eq (Mul (Const 6, Mul (Const 6, Mul (Const 6, Const 6))), Sub (Const 6, Sub (Sub (Const 6, Const 6), Const 6))), Const 6, Print (Const 6));                  If (Gt (Add (Const 7, Add (Const 7, Add (Const 7, Const 7))), Mul (Const 7, Mul (Mul (Const 7, Const 7), Const 7))), Const 7, Print (Const 7));                  If (Lt (Mul (Const 8, Add (Const 8, Mul (Const 8, Const 8))), Mul (Const 8, Sub (Mul (Const 8, Const 8), Const 8))), Const 8, Print (Const 8));                  If (Eq (Add (Const 9, Add (Const 9, Add (Const 9, Const 9))), Sub (Const 9, Add (Add (Const 9, Const 9), Const 9))), Const 9, Print (Const 9));              ]),   Seq    [         Let ("sum",             Fun ("a", IntT,               Fun ("b", IntT,                 If (Eq (Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1)), Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1)))), Add (Name "a", Name "b"), Print (Const 9999)))) ,             While (Gt ((Apply (Apply (Name "sum", Const (9)), Const (10))), ((Apply (Apply (Name "sum", Const (1)), Const (2))))),                 Print (Let ("z", Readint, Name "z"))             ))     ]))))
   ```
   matches the pattern ` (Seq [])`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 
```
 ;;
        - : Program.expr =
While
 (Eq (Mul (Const 21, Mul (Const 13, Mul (Const 2, Const 1))),
   Sub (Const 6, Sub (Sub (Const 3, Const 1), Const 29))),
 Seq
  [If
    (Gt (Add (Const 1, Mul (Const 1, Sub (Const 1, Const 1))),
      Add (Const 1, Mul (Sub (Const 1, Const 1), Const 1))),
    Const 1, Print (Const 1));
   If
    (Lt (Sub (Const 2, Add (Const 2, Mul (Const 2, Const 2))),
      Sub (Const 2, Add (Mul (Const 2, Const 2), Const 2))),
    Const 2, Print (Const 2));
   If
    (Eq (Mul (Const 3, Sub (Const 3, Add (Const 3, Const 3))),
      Mul (Const 3, Sub (Add (Const 3, Const 3), Const 3))),
    Const 3, Print (Const 3));
   If
    (Gt (Add (Const 4, Add (Const 4, Add (Const 4, Const 4))),
      Mul (Const 4, Mul (Add (Const 4, Const 4), Const 4))),
    Const 4, Print (Const 4));
   If
    (Lt (Mul (Const 5, Add (Const 5, Add (Const 5, Const 5))),
      Add (Const 5, Add (Add (Const 5, Const 5), Const 5))),
    Const 5, Print (Const 5));
   If
    (Eq (Mul (Const 6, Mul (Const 6, Mul (Const 6, Const 6))),
      Sub (Const 6, Sub (Sub (Const 6, Const 6), Const 6))),
    Const 6, Print (Const 6));
   If
    (Gt (Add (Const 7, Add (Const 7, Add (Const 7, Const 7))),
      Mul (Const 7, Mul (Mul (Const 7, Const 7), Const 7))),
    Const 7, Print (Const 7));
   If
    (Lt (Mul (Const 8, Add (Const 8, Mul (Const 8, Const 8))),
      Mul (Const 8, Sub (Mul (Const 8, Const 8), Const 8))),
    Const 8, Print (Const 8));
   If
    (Eq (Add (Const 9, Add (Const 9, Add (Const 9, Const 9))),
      Sub (Const 9, Add (Add (Const 9, Const 9), Const 9))),
    Const 9, Print (Const 9))])

```



#### Subtotal: _6.0_ / _10.0_

## Manual tests entered by TA: seife178

+  _1_ / _2_ : Pass: 
    Overall code quality for `part3`
    
    
     Score (out of 2):1 


+ Pass: Other Stylistic Comments & Feedback

    Need comments throughout to help explain intricate sections of code

#### Subtotal: _1_ / _2_

