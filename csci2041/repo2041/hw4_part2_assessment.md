## Assessment for HW4 part2

Run on April 01, 22:02:47 PM.

This file contains assessment for part2

+ Pass: Change into directory "hw4".

+ Pass: Check that file "program.ml" exists.

+ Pass: Check that file "parser.ml" exists.

+ Pass: Check that file "progOpt.ml" exists.

+ Pass: Check that file "interpreter.ml" exists.

+ Pass: Check that hw4 files compile without errors

## Feedback Tests (total possible value: 2)

+  _0.2222222222222222_ / _0.2222222222222222_ : Pass: Check that expression `Parser.READ` following file /dev/null has type `Parser.token`

+  _0.2222222222222222_ / _0.2222222222222222_ : Pass: 
Check that the result of evaluating
   ```
   tokenize_string "readint"
   ```
   matches the pattern `READ`.

   




+  _0.2222222222222222_ / _0.2222222222222222_ : Pass: Check that expression `[Parser.LB; Parser.RB; Parser.CONS; Parser.HEAD; Parser.TAIL; Parser.LIST]` following file /dev/null has type `Parser.token list`

+  _0.2222222222222222_ / _0.2222222222222222_ : Pass: 
Check that the result of evaluating
   ```
   List.map tokenize_string ["["; "]"; "cons"; "head"; "tail"; "list"]
   ```
   matches the pattern `[LB; RB; CONS; HEAD; TAIL; LIST]`.

   




+  _0.2222222222222222_ / _0.2222222222222222_ : Pass: 
Check that the result of evaluating
   ```
   _parse_type_expr [LIST]
   ```
   matches the pattern `(ListT,[])`.

   




+  _0.2222222222222222_ / _0.2222222222222222_ : Pass: 
Check that the result of evaluating
   ```
   parse_program [READ]
   ```
   matches the pattern `Readint`.

   




+  _0.2222222222222222_ / _0.2222222222222222_ : Pass: 
Check that the result of evaluating
   ```
   try let _ = _parser [LB; OP; PLUS; CONST 1; CONST 1; CP; RB] in false with _ -> true
   ```
   matches the pattern `true`.

   




+  _0.2222222222222222_ / _0.2222222222222222_ : Pass: 
Check that the result of evaluating
   ```
   parse_program (tokens (wordlist example5))
   ```
   matches the pattern `
Let ("rev",
Fun ("in", ListT,
Let ("out", LConst [],
  Seq
    [While (Not (Eq (Name "in", LConst [])),
      Seq
        [Set ("out", Cons (Head (Name "in"), Name "out"));
          Set ("in", Tail (Name "in"))]);
            Name "out"])),
Apply (Name "rev", LConst [1; 2; 3; 4; 5]))
`.

   




+  _0.2222222222222222_ / _0.2222222222222222_ : Pass: 
Check that the result of evaluating
   ```
   try let _ = parse_program (tokens (wordlist "[1 2 ")) in false with _ -> true
   ```
   matches the pattern `true`.

   




#### Subtotal: _2.0000000000000004_ / _2.0000000000000004_

## Additional automated tests

+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (tokens (wordlist ("(let fact     (fun i : int         (let ret 1             (seq                 (while (> i 0)                 (seq                     (set ret (* ret i))                     (set i (- i 1)) ))                 ret)))      (app fact 5))")))
   ```
   matches the pattern ` ([OP; LET; ID "fact"; OP; FUN; ID "i"; COLON; INT; OP; LET; ID "ret"; CONST 1; OP; SEQ; OP; WHILE; OP; GT; ID "i"; CONST 0; CP; OP; SEQ; OP; SET;  ID "ret"; OP; TIMES; ID "ret"; ID "i"; CP; CP; OP; SET; ID "i"; OP; MINUS;  ID "i"; CONST 1; CP; CP; CP; CP; ID "ret"; CP; CP; CP; OP; APP; ID "fact";  CONST 5; CP; CP])`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (tokens (wordlist ("(let rev    (fun in : list      (let out []        (seq          (while (not (= in []))            (seq              (set out (cons (head in) out))              (set in (tail in))))          out)))    (let append (fun l1 : list (fun l2 : list         (seq            (set l1 (app rev l1))            (while (not (= l1 []))                 (seq                 (set l2 (cons (head l1) l2))                (set l1 (tail l1))))            l2        )))    (app (app append [1 2 3]) [4 5 6])))")))
   ```
   matches the pattern ` ([OP; LET; ID "rev"; OP; FUN; ID "in"; COLON; LIST; OP; LET; ID "out"; LB; RB; OP; SEQ; OP; WHILE; OP; NOT; OP; EQ; ID "in"; LB; RB; CP; CP; OP; SEQ; OP; SET; ID "out"; OP; CONS; OP; HEAD; ID "in"; CP; ID "out"; CP; CP; OP; SET; ID "in"; OP; TAIL; ID "in"; CP; CP; CP; CP; ID "out"; CP; CP; CP; OP; LET; ID "append"; OP; FUN; ID "l1"; COLON; LIST; OP; FUN; ID "l2"; COLON; LIST; OP; SEQ; OP; SET; ID "l1"; OP; APP; ID "rev"; ID "l1"; CP; CP; OP; WHILE; OP; NOT; OP; EQ; ID "l1"; LB; RB; CP; CP; OP; SEQ; OP; SET; ID "l2"; OP; CONS; OP; HEAD; ID "l1"; CP; ID "l2"; CP; CP; OP; SET; ID "l1"; OP; TAIL; ID "l1"; CP; CP; CP; CP; ID "l2"; CP; CP; CP; OP; APP; OP; APP; ID "append"; LB;  CONST 1; CONST 2; CONST 3; RB; CP; LB; CONST 4; CONST 5; CONST 6; RB; CP; CP; CP])`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (tokens (wordlist ("(let filter (fun f : int -> bool (fun l : list     (let out []        (seq            (while (not (= l []))                (seq                (set out (if (app f (head l)) (cons (head l) out) out))                (set l (tail l))                ))            out)        )))    (app (app filter (fun x : int (and (< x 4) (> x 2)))) [1 2 3 4 5]))")))
   ```
   matches the pattern ` ([OP; LET; ID "filter"; OP; FUN; ID "f"; COLON; INT; ARROW; BOOL; OP; FUN;  ID "l"; COLON; LIST; OP; LET; ID "out"; LB; RB; OP; SEQ; OP; WHILE; OP; NOT;  OP; EQ; ID "l"; LB; RB; CP; CP; OP; SEQ; OP; SET; ID "out"; OP; IF; OP; APP; ID "f"; OP; HEAD; ID "l"; CP; CP; OP; CONS; OP; HEAD; ID "l"; CP; ID "out"; CP; ID "out"; CP; CP; OP; SET; ID "l"; OP; TAIL; ID "l"; CP; CP; CP; CP; ID "out"; CP; CP; CP; CP; OP; APP; OP; APP; ID "filter"; OP; FUN; ID "x"; COLON; INT; OP; AND; OP; LT; ID "x"; CONST 4; CP; OP; GT; ID "x"; CONST 2; CP; CP; CP; CP; LB; CONST 1; CONST 2; CONST 3; CONST 4; CONST 5; RB; CP; CP])`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (tokens (wordlist ("(let map (fun f : int -> int (fun l : list    (let out  []        (seq            (while (not (= l []))                (seq                    (set out (cons (app f (head l)) out))                    (set l (tail l))))            out))))    (app (app map (fun x : int (* x 2))) [1 2 3 4 5]))")))
   ```
   matches the pattern ` ([OP; LET; ID "map"; OP; FUN; ID "f"; COLON; INT; ARROW; INT; OP; FUN; ID "l"; COLON; LIST; OP; LET; ID "out"; LB; RB; OP; SEQ; OP; WHILE; OP; NOT;  OP; EQ; ID "l"; LB; RB; CP; CP; OP; SEQ; OP; SET; ID "out"; OP; CONS; OP; APP; ID "f"; OP; HEAD; ID "l"; CP; CP; ID "out"; CP; CP; OP; SET; ID "l"; OP; TAIL; ID "l"; CP; CP; CP; CP; ID "out"; CP; CP; CP; CP; OP; APP; OP; APP;  ID "map"; OP; FUN; ID "x"; COLON; INT; OP; TIMES; ID "x"; CONST 2; CP; CP; CP; LB; CONST 1; CONST 2; CONST 3; CONST 4; CONST 5; RB; CP; CP])`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (tokens (wordlist ("(let fold (fun f : int -> int -> int (fun init : int (fun l : list    (seq        (while (not (= l []))            (seq                (set init (app (app f init) (head l)))                (set l (tail l))))        init))))    (app (app (app fold (fun x : int (fun y : int (+ x y)))) 0) [1 2 3 4]))")))
   ```
   matches the pattern ` ([OP; LET; ID "fold"; OP; FUN; ID "f"; COLON; INT; ARROW; INT; ARROW; INT; OP; FUN; ID "init"; COLON; INT; OP; FUN; ID "l"; COLON; LIST; OP; SEQ; OP; WHILE;  OP; NOT; OP; EQ; ID "l"; LB; RB; CP; CP; OP; SEQ; OP; SET; ID "init"; OP; APP; OP; APP; ID "f"; ID "init"; CP; OP; HEAD; ID "l"; CP; CP; CP; OP; SET;  ID "l"; OP; TAIL; ID "l"; CP; CP; CP; CP; ID "init"; CP; CP; CP; CP; OP; APP; OP; APP; OP; APP; ID "fold"; OP; FUN; ID "x"; COLON; INT; OP; FUN; ID "y"; COLON; INT; OP; PLUS; ID "x"; ID "y"; CP; CP; CP; CP; CONST 0; CP; LB; CONST 1; CONST 2; CONST 3; CONST 4; RB; CP; CP])`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (parse_program ([OP; LET; ID "fact"; OP; FUN; ID "i"; COLON; INT; OP; LET; ID "ret"; CONST 1; OP; SEQ; OP; WHILE; OP; GT; ID "i"; CONST 0; CP; OP; SEQ; OP; SET;  ID "ret"; OP; TIMES; ID "ret"; ID "i"; CP; CP; OP; SET; ID "i"; OP; MINUS;  ID "i"; CONST 1; CP; CP; CP; CP; ID "ret"; CP; CP; CP; OP; APP; ID "fact";  CONST 5; CP; CP]))
   ```
   matches the pattern ` (Let ("fact", Fun ("i", IntT,   Let ("ret", Const 1,   Seq    [While (Gt (Name "i", Const 0),      Seq       [Set ("ret", Mul (Name "ret", Name "i"));        Set ("i", Sub (Name "i", Const 1))]);     Name "ret"])), Apply (Name "fact", Const 5)))`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (parse_program ([OP; LET; ID "rev"; OP; FUN; ID "in"; COLON; LIST; OP; LET; ID "out"; LB; RB; OP; SEQ; OP; WHILE; OP; NOT; OP; EQ; ID "in"; LB; RB; CP; CP; OP; SEQ; OP; SET; ID "out"; OP; CONS; OP; HEAD; ID "in"; CP; ID "out"; CP; CP; OP; SET; ID "in"; OP; TAIL; ID "in"; CP; CP; CP; CP; ID "out"; CP; CP; CP; OP; LET; ID "append"; OP; FUN; ID "l1"; COLON; LIST; OP; FUN; ID "l2"; COLON; LIST; OP; SEQ; OP; SET; ID "l1"; OP; APP; ID "rev"; ID "l1"; CP; CP; OP; WHILE; OP; NOT; OP; EQ; ID "l1"; LB; RB; CP; CP; OP; SEQ; OP; SET; ID "l2"; OP; CONS; OP; HEAD; ID "l1"; CP; ID "l2"; CP; CP; OP; SET; ID "l1"; OP; TAIL; ID "l1"; CP; CP; CP; CP; ID "l2"; CP; CP; CP; OP; APP; OP; APP; ID "append"; LB;  CONST 1; CONST 2; CONST 3; RB; CP; LB; CONST 4; CONST 5; CONST 6; RB; CP; CP; CP]))
   ```
   matches the pattern ` (Let ("rev",  Fun ("in", ListT,  Let ("out", LConst [],   Seq    [While (Not (Eq (Name "in", LConst [])),      Seq       [Set ("out", Cons (Head (Name "in"), Name "out"));        Set ("in", Tail (Name "in"))]);     Name "out"])), Let ("append",  Fun ("l1", ListT,   Fun ("l2", ListT,    Seq     [Set ("l1", Apply (Name "rev", Name "l1"));      While (Not (Eq (Name "l1", LConst [])),       Seq        [Set ("l2", Cons (Head (Name "l1"), Name "l2"));         Set ("l1", Tail (Name "l1"))]);      Name "l2"])),  Apply (Apply (Name "append", LConst [1; 2; 3]), LConst [4; 5; 6]))))`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (parse_program ([OP; LET; ID "filter"; OP; FUN; ID "f"; COLON; INT; ARROW; BOOL; OP; FUN;  ID "l"; COLON; LIST; OP; LET; ID "out"; LB; RB; OP; SEQ; OP; WHILE; OP; NOT;  OP; EQ; ID "l"; LB; RB; CP; CP; OP; SEQ; OP; SET; ID "out"; OP; IF; OP; APP; ID "f"; OP; HEAD; ID "l"; CP; CP; OP; CONS; OP; HEAD; ID "l"; CP; ID "out"; CP; ID "out"; CP; CP; OP; SET; ID "l"; OP; TAIL; ID "l"; CP; CP; CP; CP; ID "out"; CP; CP; CP; CP; OP; APP; OP; APP; ID "filter"; OP; FUN; ID "x"; COLON; INT; OP; AND; OP; LT; ID "x"; CONST 4; CP; OP; GT; ID "x"; CONST 2; CP; CP; CP; CP; LB; CONST 1; CONST 2; CONST 3; CONST 4; CONST 5; RB; CP; CP]))
   ```
   matches the pattern ` (Let ("filter",  Fun ("f", FunT (IntT, BoolT),  Fun ("l", ListT,   Let ("out", LConst [],    Seq     [While (Not (Eq (Name "l", LConst [])),       Seq        [Set ("out",          If (Apply (Name "f", Head (Name "l")),           Cons (Head (Name "l"), Name "out"), Name "out"));         Set ("l", Tail (Name "l"))]);      Name "out"]))), Apply  (Apply (Name "filter",    Fun ("x", IntT, And (Lt (Name "x", Const 4), Gt (Name "x", Const 2)))),  LConst [1; 2; 3; 4; 5])))`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (parse_program ([OP; LET; ID "map"; OP; FUN; ID "f"; COLON; INT; ARROW; INT; OP; FUN; ID "l"; COLON; LIST; OP; LET; ID "out"; LB; RB; OP; SEQ; OP; WHILE; OP; NOT;  OP; EQ; ID "l"; LB; RB; CP; CP; OP; SEQ; OP; SET; ID "out"; OP; CONS; OP; APP; ID "f"; OP; HEAD; ID "l"; CP; CP; ID "out"; CP; CP; OP; SET; ID "l"; OP; TAIL; ID "l"; CP; CP; CP; CP; ID "out"; CP; CP; CP; CP; OP; APP; OP; APP;  ID "map"; OP; FUN; ID "x"; COLON; INT; OP; TIMES; ID "x"; CONST 2; CP; CP; CP; LB; CONST 1; CONST 2; CONST 3; CONST 4; CONST 5; RB; CP; CP]))
   ```
   matches the pattern ` (Let ("map", Fun ("f", FunT (IntT, IntT),   Fun ("l", ListT,     Let ("out", LConst [],    Seq      [While (Not (Eq (Name "l", LConst [])),        Seq        [Set ("out", Cons (Apply (Name "f", Head (Name "l")), Name "out"));         Set ("l", Tail (Name "l"))]);      Name "out"]))), Apply (Apply (Name "map", Fun ("x", IntT, Mul (Name "x", Const 2))),  LConst [1; 2; 3; 4; 5])))`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    (parse_program ([OP; LET; ID "fold"; OP; FUN; ID "f"; COLON; INT; ARROW; INT; ARROW; INT; OP; FUN; ID "init"; COLON; INT; OP; FUN; ID "l"; COLON; LIST; OP; SEQ; OP; WHILE;  OP; NOT; OP; EQ; ID "l"; LB; RB; CP; CP; OP; SEQ; OP; SET; ID "init"; OP; APP; OP; APP; ID "f"; ID "init"; CP; OP; HEAD; ID "l"; CP; CP; CP; OP; SET;  ID "l"; OP; TAIL; ID "l"; CP; CP; CP; CP; ID "init"; CP; CP; CP; CP; OP; APP; OP; APP; OP; APP; ID "fold"; OP; FUN; ID "x"; COLON; INT; OP; FUN; ID "y"; COLON; INT; OP; PLUS; ID "x"; ID "y"; CP; CP; CP; CP; CONST 0; CP; LB; CONST 1; CONST 2; CONST 3; CONST 4; RB; CP; CP]))
   ```
   matches the pattern ` (Let ("fold", Fun ("f", FunT (IntT, FunT (IntT, IntT)),   Fun ("init", IntT,   Fun ("l", ListT,    Seq     [While (Not (Eq (Name "l", LConst [])),       Seq        [Set ("init", Apply (Apply (Name "f", Name "init"), Head (Name "l")));         Set ("l", Tail (Name "l"))]);      Name "init"]))), Apply  (Apply    (Apply (Name "fold",      Fun ("x", IntT, Fun ("y", IntT, Add (Name "x", Name "y")))),    Const 0),  LConst [1; 2; 3; 4])))`.

   




#### Subtotal: _10.0_ / _10.0_

## Manual tests entered by TA: zhan5262

+  _2_ / _2_ : Pass: 
    Overall code quality for `part2`
    
    
     Score (out of 2):2 


+ Pass: Other Stylistic Comments & Feedback

    

#### Subtotal: _2_ / _2_

