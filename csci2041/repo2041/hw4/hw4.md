# Homework 4:  Advanced Program Manipulation

*CSci 2041: Advanced Programming Principles, Spring 2019 (Hopper)*

**Due:** Wednesday, March 27 at 11:59pm

## Computing With Program Representations

The `hw4` directory in the public `hw2041-s19` repo contains several files
related to program parsing and evaluation -- you should copy the entire
directory to your personal repository for use on this homework. The file
`program.ml` contains an implementation of the data structure for representing
simple programs that we covered in Lectures 14-17, along with the type-checking
algorithm and evaluation program.  The file `parser.ml` includes a parser that
transforms prefix-form programs into syntax trees and type-checks these trees. The file `progOpt.ml` contains the beginning of a definition for an optimization on program trees that you'll complete.
The file `interpreter.ml` contains code to read a program from an input file,
parse it, type-check it, and evaluate the program.  There are also three very
non-descriptively named example programs, `program1.interp`,
`program2.interp`, and `program3.interp` (this last file contains an error). Note: to see `interpreter.ml` or one of the
`program1.interp` or `program2.interp` programs in action, you'll need to build
`interpreter` by running `ocamlopt -o interpreter str.cmxa program.ml parse.ml progOpt.ml interpreter.ml` in the `hw4` directory. SubNote: this will produce a lot of binary files with
suffixes matching `.cm*`; it is best if you do not commit these to your repo, as they
take up a lot of space and thus make pushes and pulls take more time.

#### Note: prefix form

Programs in our example are expressed in *prefix form*, where operations precede their operands, and parentheses are required to make parsing unambiguous.  So instead of representing the expression `Add (Const 1, Const 1)` as `1+1`, it is represented as `(+ 1 1)`, `if` statements are represented as `(if <cond> <then> <else>)`, `let` statements as `(let <name> <value> <body>)` and so on.  Expressions in this form are often called *S-expressions*.

### 1. Adding Input Statements and Lists to `program.ml`

So far, programs in our example can do a lot of interesting things:
for instance, they can run loops, define and call (non-recursive) functions, perform
arithmetic and boolean computations, and print out the results of
these computations.  But, there's no way in our language to read an
input from the user.  Let's add a command, `readint` that reads a
single integer into the program.  Programs use this command as if it
were an integer-valued expression, so for example, `(let i readint (print
i))` is a program that reads an integer, binds it to the name `i` and
then prints out `i`.

Another shortcoming of our example programming language is that it lacks a mechanism to store and manipulate sequences of data. For this problem, let's correct that by adding lists of integers as a new kind of value in our programs.  We'll have list literals like `[1 2 3]` and `[]`, the `cons` operation that takes an element `h` and a list `t` and creates a new list with `h` in front of `t`, and the `head` and `tail` functions that return the integer at the head of a list and the tail of a list, respectively.  To keep things simpler, though, we won't use the list literal notation to build lists that involve computation, so `[(+ 1 1) 2 3]` won't be a syntactically valid program in our language (the right way to build this list would be `(cons (+ 1 1) [2 3])`).

We'll make these additions in two stages, first adding the code to `program.ml` that represents these operations and evaluates them in a program; and then in the next sub-problem, adding the code to `parser.ml` to parse these new operations from strings that represent user-input programs.

#### Adding constructors to the `expr` type

Let's start by making the following changes to the `expr` type in `program.ml`:

+ Add a new constructor for a `Readint`.  Since invoking `readint` won't involve any sub-expression, the constructor won't need to hold any values.

+ Add a new constructor for a list literal, `LConst`.  `LConst` should hold a value of type `int list`.

+ Add a new constructor for the `cons` operation, `Cons`.  `Cons` should hold two subexpressions

+ Add new constructors for the `head` and `tail` operations, `Head` and `Tail`.  These constructors should each hold a single subexpression.

When you're done, if you `#mod_use "program.ml"` and then `open Program` in `utop`, the expression `(Head (Cons (Readint, Tail (LConst [1; 2]))))` should compile without errors and have type `expr`.

#### Adding type-checking rules

Next, we need to modify the `expType` type and `typeof` function in `program.ml` to correctly deal with our new `expr` constructors:

+ Modify the `expType` type to include a new constructor, `ListT`, that will represent the type of list values.  Since `ListT` represents a type, it won't need to carry any additional data.

+ Modify the type checking function, `typeof`, to infer the correct type of a `Readint` constructor in an expression, using the type judgement ` => Readint : IntT`.

+ Modify `typeof` to infer the correct type of a `LConst` constructor, using the type judgement ` => LConst _ : ListT`

+ Modify `typeof` to infer the correct type of a `Head` expression, using the type judgement `e : ListT => Head e : Int`.  (Call `failwith "head of non-list"` in case the judgement fails)

+ Modify `typeof` to infer the correct type of a `Tail` expression.  Include a comment stating the type judgement that applies to this case. (Call `failwith "head of non-list"` if the judgement fails.)

+ Modify `typeof` to infer the correct type of a `Cons` expression.  Include a comment stating the type judgement that applies to this case. (Call `failwith "incompatible cons arguments"` if the judgement fails.)

+ You'll also need to add a sub-case for `ListT` in the case that type-checks `Eq` expressions.

When you're done, you should find that `typeof Readint []` evaluates to `IntT`; `typeof (Cons(Head (LConst [1;2]), Tail (LConst [3;4]))) []` evaluates to `ListT`; and `typeof (Cons(BConst false, LConst [])) []`, `typeof (Tail (Const 0)) []`, `typeof (Head (Const 0)) []`, and `typeof (Cons(Const 0, Const 1)) []`  all result in Failure exceptions.

#### Adding evaluation rules

Next, we'll need to modify the `eval` function in `program.ml` to handle our new constructors:

+ Modify the evaluation function to read an integer whenever it encounters a `Readint` expression.  You can use the ocaml function `read_int ()` to read an integer from the standard input.

+ Add a new constructor to the `result` type, `ListV`, to hold values of type `int list`

+ Add a case to handle `LConst`, wrapping the list literal in a `ListV` constructor.

+ Add cases to handle `Tail` and `Head`, which recursively evaluate their subexpressions, extract the resulting list, and wrap the head or tail in the appropriate `result` constructor.  Don't forget to return the modified state, to handle cases like `Tail(Seq [Set ("x", Const 0), LConst [1;2]])` that could modify the state of the program through side effects.

+ Add a case to handle `Cons`, which recursively evaluates its first argument, then its second argument, unwraps the values and returns a `ListV` value and the state resulting from the evaluation of the second argument.

+ Add a sub-case to the case that evaluates `Print` constructors to handle `ListV` values.  `Print`ing a list should print the integer members of the list separated by spaces, enclosed in square brackets, e.g. `"[1 2 3]"`.  (You might find the `String.concat` and `string_of_int` functions useful for this.)

When you've finished, you should find, for instance, that `eval (Tail(Cons(Head(Seq [Set ("x", Const 17); LConst [1;2]]), Cons(Name "x", LConst [])))) [("x", IntV 5); ("y", ListV [1;2])]` evaluates to `(ListV [17], [("x",IntV 17); ("y", ListV [1;2])])`.

### 2. Adding input statements and lists to `parser.ml`

Now that we can represent and manipulate these new kinds of expressions, we need to add code to `parser.ml` to allow us to create them from program files.  This will involve both the "lexing" of strings into new kinds of tokens, and the parsing of lists of tokens to expressions.

#### Tokens

Recall that lexing converts a string into a sequence of tokens from a finite set that we can then use to produce expression trees.  Because we are adding new operations and constants to our programs, we'll need to add several tokens, and code to recognize the tokens in our input:

+ Add a new constructor `READ` to the `token` type in `parse.ml` for the `readint`  keyword.

+ Modify the lexing function, `tokenize_string` to correctly detect and output `READ` tokens

+ Add new constructors to `token` for list operations: `LB`, `RB` (for `[` and `]` characters), `CONS`, `TAIL`, `HEAD`, and `LIST`.

+ Modify `tokenize_string` to convert `"["` to `LB`, `"]"` to `RB`, `"cons"` to `CONS`, `"tail"` to `TAIL`, `"head"` to `HEAD`, and `"list"` to `LIST`.


#### Parsing

Once we've added these tokens, we next need to add code to build the new expression variants when we encounter related keywords in the token stream.  Recall that the parsing function may recursively call itself (for example, to find the arguments to an operation), so it always returns the list of remaining unused tokens after it parses a (sub)-expression so that the calling site can continue to parse an expression.  In order to handle our new expression variants we'll need to make several modifications:

+ Modify `_parse_type_expr` to handle the `LIST` keyword (in the same way that `INT`,`BOOL`, and `UNIT` are handled)

+ Modify `_parser` to correctly parse the token `READ` (it is analogous to the constant cases, except there's no additional data to wrap in the `Readint`)

+ Modify `_parser` to correctly parse the `HEAD` and `TAIL` keywords (in the same way that `NOT` and `PRINT` are handled)

+ Modify `_parser` to correctly parse the `CONS` keyword (in the same way that other two-argument keywords are handled, e.g. `PLUS`, `TIMES`, `DIV`.)

+ Modify `_parser` to correctly parse list literals.  A list literal consists of a `LB` token, followed by zero or more `CONST` tokens, followed by a `RB` token.  Literals cannot contain other tokens, so for example, calling `_parser [LB; OP; PLUS; CONST 1; CONST 1; CP; RB]` (corresponding to `[(1+1)]`) should result in calling `failwith "list literal with non-int element"`.  Reaching the end of the token list without finding a `RB` token should result in calling `failwith "unclosed list literal"`.

Once you've finished with these modifications, you should find that calling `parse_program (tokens (wordlist example5))` results in

    ```
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
    ```

and calling `parse_program (tokens (wordlist "[1 2 "))` should result in an uncaught exception.  (And furthermore, calling `eval (parse_program (tokens (wordlist example5))) []` should result in `(ListV [5;4;3;2;1], [])`.

### 3. Constant Folding

A common compiler optimization is to find expressions that contain
only constants and to simplify these expressions before running the
program.  For example, if a loop contains the expression `Add(Const 1,
Mul (Const 2, Mul (Const 3, Const 7)))` the compiler might replace it
with `(Const 43)`, saving one addition and two multiplication
operations every time we execute the loop.  In this problem, we'll
write a function, `const_fold : expr -> expr` that performs this
optimization on a program tree from our language.

Your function should take as input an expression, identify all
subexpressions that consist only of constants and operations on
constants (add, multiply, divide, subtract, and, or, not, comparisons, cons, head, and tail) and return a new expression that simplifies those expressions to the
constants they represent.  In addition, your program should also
detect and simplify the following situations:

+ `While(BConst false, body)` should simplify to `Seq []`, an empty
sequence;  (so: `const_fold (While (BConst false, Const 1))` should evaluate to `Seq []`)

+ `If (BConst true, thn, els)` should simplify to `thn`; (so `const_fold (If (BConst true, Const 0, Const 1))` should evaluate to `Const 0`)

+ `If (BConst false, thn, els)` should simplify to `els`; (so `const_fold (If (BConst false, Const 0, Const 1))` should evaluate to `Const 1`)

+ Any constant expression or `Name` before the last expression in a `Seq` can be
  removed; An expression of the form `Seq [e]` where `e` is a constant
  expression can be simplified to `e`. So `const_fold (Seq [Const 0; Const 1])` should evaluate to `Const 1`

+ `Let(s,v,b)` can be simplified to `b` if both `b` and `v` can be
  simplified to constants, so for example `const_fold (Let ("x", Const 0, Const 1))` should evaluate to `Const 1`.

+ Constant folding on `Tail` and `Head` might result in a value that would have caused a run-time error.  In this case you should call `failwith` and an appropriate error message.

Some more complicated evaluations:

+ `const_fold (example3 |> wordlist |> tokens |> parse_program)` should evaluate to

    ```
    Let ("y", Const 0,
     Let ("x", Const 3,
      While (Gt (Name "x", Const 0),
       Seq [Set ("x", Sub (Name "x", Const 1)); While (BConst true, Print (Name "y")); BConst true])))
  	```

+ `const_fold (example4 |> wordlist |> tokens |> parse_program)` should evaluate to
    ```
    Let ("y", Const 0,
      Let ("z", If (Gt (Name "y", Const 4), Seq [Set ("y", Sub (Name "y", Const 1)); Const 1], Const 0),
  	  Seq [Print (Name "y"); Let ("z", Readint, Name "z")]))   
    ```

Complete the definition of `const_fold` in `progOpt.ml`.

### 4. Error messages with line numbers

Next we'll modify the parser (and the main loop in `interpreter.ml`) to print out more useful messages when parsing errors occur.  In particular, we'll change calls to `failwith` from within `_parser` to raise a new exception variant that will allow us to print an error message saying on which line of the input program the parse error occurred.  

In order to do this, we'll need to make the following adjustments:

+ In `parser.ml`, before the definition of `_parser`, declare a new exception variant, `ParseError`, that will carry a string error message and the number of tokens remaining in the input when the error was diagnosed.

+ In `_parser` and the helper functions it calls (`_parse_single`, `_parse_two`, `_parse_list`, `_parse_type_expr`, plus any functions you might have introduced earlier), replace calls to `failwith` with expressions that raise a `ParseError` exception using the same error message.  The number of remaining tokens can be computed from the token list at the point of the error.  So for example, calling `_parser [OP; NOT; BCONST true; CONST 1; CONST 1]` should raise the exception `ParseError ("parser: missing closing paren.",2)`.

+ In `parser.ml`, add definition for the function `find_line : string list -> int -> int`, which given the list of lines in a program and a token index, returns the line number in which the token occurs.  Note that text editors index line numbers starting from 1, but we'll index tokens starting from 0, so `find_line ["(+";"1";"2)"] 0` should evaluate to `1`, and `find_line ["(+";"1";"2)"] 2` should evaluate to `2` (since the token at index 2 - `"1"`, after `"("` and `"+"` - occurs in the second line.)

+ In `interpreter.ml`, wrap the portion of the final expression that starts with `let progExpr =` and ends with `let _ = eval optProg [] in ()` in a `try ... with` block that handles a `ParseError` by converting the number of remaining tokens in to the index of a token starting from the beginning of the program, calls `find_line` to compute the line number of the error, and then prints a message of the form `Parse error at line nnn : ` followed by the message in the exception and a newline (`"\n"`).

Once you're finished, you should be able to produce the following behavior in the terminal (the `-w -8` option below turns off match warnings):

```
% ocamlc -w -8 -o interpreter str.cma program.ml parser.ml progOpt.ml interpreter.ml
% ./interpreter program3.interp
Parse error at line 15 : parse failed: extra tokens in input.
%
```

## All done!

Don't forget to commit all of your changes to the various files edited
for this homework, and push them to your individual class repository
on UMN github:

+ `program.ml`
+ `parser.ml`
+ `progOpt.ml`
+ `interpreter.ml`

You can always check that your changes haved pushed
correctly by visiting the repository page on github.umn.edu.

## Late Grading

As described in the class syllabus, you may opt to have one homework turned in late but graded for full credit.  If you would like to turn in this homework late, then by 11:59pm on the original due date (Wednesday, March 27, 2019), add a file named `late_request` (the contents can be anything - e.g. your `umn.edu` username.) to the `hw4` directory in your personal repository, and commit and push this to `github.umn.edu`.  If this file is present in your repo, we will wait until *11:59pm on Monday, April 1, 2019* to pull your repo for grading.  Note that choosing this option means you will not be able to submit any other homeworks for late grading. **NOTE: the filename _MUST_ be `late_request` (no extension) in order for the gitbot to detect your request!**

(If you created this file, pushed it, and then change your mind before the original deadline, you can remove the `late_request` file from your repo using `git rm late_request` followed by `git commit` and `git push`.)
