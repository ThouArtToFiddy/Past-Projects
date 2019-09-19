### Feedback for HW 4

Run on March 29, 13:46:44 PM.

+ Pass: Change into directory "hw4".

+ Pass: Check that file "program.ml" exists.

+ Pass: Check that file "parser.ml" exists.

+ Pass: Check that file "progOpt.ml" exists.

+ Pass: Check that file "interpreter.ml" exists.

+ Pass: Check that hw4 files compile without errors

Found late_request.  If present at submission deadline your final submission is due the following Monday by 11:59pm.

+ Pass: Check that expression `Program.Readint` following file /dev/null has type `Program.expr`

+ Pass: Check that expression `(Program.LConst [])` following file /dev/null has type `Program.expr`

+ Pass: Check that expression `(Program.Head (Program.Cons (Program.Readint, Program.Tail (Program.LConst [1; 2]))))` following file /dev/null has type `Program.expr`

+ Pass: Check that expression `Program.ListT` following file /dev/null has type `Program.expType`

+ Pass: 
Check that the result of evaluating
   ```
   typeof Readint []
   ```
   matches the pattern `IntT`.

   




+ Pass: 
Check that the result of evaluating
   ```
   typeof (Cons(Head (LConst [1;2]), Tail (LConst [3;4]))) []
   ```
   matches the pattern `ListT`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try let _ = typeof (Cons(BConst false, LConst [])) [] in false with Failure _ -> true
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try let _ = typeof (Tail (Const 0)) [] in false with Failure _ -> true
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try let _ = typeof (Head (Const 0)) [] in false with Failure _ -> true
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try let _ = typeof (Cons(Const 0, Const 1)) [] in false with Failure _ -> true
   ```
   matches the pattern `true`.

   




+ Pass: Check that expression `Program.ListV []` following file /dev/null has type `Program.result`

+ Pass: 
Check that the result of evaluating
   ```
   eval Readint []
   ```
   matches the pattern `(IntV 0, [])`.

   (with 0 on stdin)




+ Pass: 
Check that the result of evaluating
   ```
   eval (Tail(Cons(Head(Seq [Set ("x", Const 17); LConst [1;2]]), Cons(Name "x", LConst [])))) [("x", IntV 5); ("y", ListV [1;2])]
   ```
   matches the pattern `(ListV [17], [("x",IntV 17); ("y", ListV [1;2])])`.

   




+ Pass: Check that expression `Parser.READ` following file /dev/null has type `Parser.token`

+ Pass: 
Check that the result of evaluating
   ```
   tokenize_string "readint"
   ```
   matches the pattern `READ`.

   




+ Pass: Check that expression `[Parser.LB; Parser.RB; Parser.CONS; Parser.HEAD; Parser.TAIL; Parser.LIST]` following file /dev/null has type `Parser.token list`

+ Pass: 
Check that the result of evaluating
   ```
   List.map tokenize_string ["["; "]"; "cons"; "head"; "tail"; "list"]
   ```
   matches the pattern `[LB; RB; CONS; HEAD; TAIL; LIST]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   _parse_type_expr [LIST]
   ```
   matches the pattern `(ListT,[])`.

   




+ Pass: 
Check that the result of evaluating
   ```
   parse_program [READ]
   ```
   matches the pattern `Readint`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try let _ = _parser [LB; OP; PLUS; CONST 1; CONST 1; CP; RB] in false with _ -> true
   ```
   matches the pattern `true`.

   




+ Pass: 
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

   




+ Pass: 
Check that the result of evaluating
   ```
   try let _ = parse_program (tokens (wordlist "[1 2 ")) in false with _ -> true
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   const_fold (While (BConst false, Const 1))
   ```
   matches the pattern `Seq []`.

   




+ Pass: 
Check that the result of evaluating
   ```
   const_fold (If (BConst true, Const 0, Const 1))
   ```
   matches the pattern `Const 0`.

   




+ Pass: 
Check that the result of evaluating
   ```
   const_fold (If (BConst false, Const 0, Const 1))
   ```
   matches the pattern `Const 1`.

   




+ Pass: 
Check that the result of evaluating
   ```
   const_fold (Seq [Name "x"; Const 0; Const 1])
   ```
   matches the pattern `Const 1`.

   




+ Pass: 
Check that the result of evaluating
   ```
   const_fold (Let ("x", Const 0, Const 1))
   ```
   matches the pattern `Const 1`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try (raise (ParseError ("",0))) with ParseError _ -> 1 | _ -> 2
   ```
   matches the pattern `1`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try `No (_parser [OP; NOT; BCONST true; CONST 1; CONST 1]) with (ParseError ("parser: missing closing paren.",2)) -> `Yes
   ```
   matches the pattern ``Yes`.

   




+ Pass: 
Check that the result of evaluating
   ```
   find_line ["(+";"1";"2)"] 0
   ```
   matches the pattern `1`.

   




+ Pass: 
Check that the result of evaluating
   ```
   find_line ["(+";"1";"2)"] 2
   ```
   matches the pattern `2`.

   




