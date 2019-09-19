# Exercise Set 1: Git and Beginning OCaml

*CSci 2041: Advanced Programming Principles, Spring 2019*

**Due:** Monday, January 28 at 11:59pm

## 1. Git "Cheat Sheet"

Modified from Professor Van Wyk's Homework 1, Fall 2014*

### Introduction

Using Git and GitHub can be confusing at first.  There are several Git
commands to learn.  We covered many in lab 0.  For a more complete explanation of `git` and its commands, you may want to read or bookmark the first few chapters of [The Pro Git Book](https://git-scm.com/book/en/v2)

In this problem, you will learn one more command (`git add`) and create
a cheat-sheet that you can refer to in the future when you have
questions about using Git.

### Using git add

In your CSE Labs account, go to the directory with your individual
repository.  Something like the following:


```
% cd csci2041/repo-user0123/ex1
```

Create a file with the name *cheat-sheet.md*.  The "md" extension
indicates that this file a a Markdown file.  This is the file format
used on GitHub for many documentation files.

Edit this file and add the following line:
>  # Git Cheat Sheet

Exit your editor and check the status of your repository with the
following command:
```
% git status
```
This will tell you that your newly created file is "Untracked."  It
even suggests using the "git add" command to tell Git to track this
file.  

There may be files that are temporary, such as generated executable
file, that you don't want Git to track and we thus would not *add*
those files.

Try the following:
```
% git pull
% git commit -a -m "Adding my Git cheat sheet"
% git push
```

The *git pull* is the make sure you have any changes on the server
copied down to your local repository.

Now go to https://github.umn.edu and see what is in your newly
committed and pushed file.

It should be an empty file with just a title.  You can now click the
"Edit" button and edit this file.

The file is to be written using the Markdown language, a easy to use
language for formatting documentation.  Take a look at the
documentation for writing basic Markdown files:

https://help.github.com/articles/markdown-basics

Below the editing window you will see a place to enter commit comments
and a button for committing your changes directly to the repository on
the central server.  In general, however, it is best to edit files in a
local copy of your repository, then commit and push them to the central
server.  Many text editors (such as `gedit`, `atom`, or `emacs`) support
syntax highlighting for Markdown, and if you edit in your local copy, your
"submission" process can be uniform for both markdown and OCaml files.

### Your assignment

So far we've covered several *Git* commands:
+ config
+ clone
+ remote
+ status
+ commit
+ push
+ pull
+ add

For each of these, write a short description (perhaps just 2 or 3 sentences)
of what the command does and when or how often this command is to be used.
You might order this list of command descriptions so that the most useful ones are
towards the beginning.  Give each command its own section, e.g. the description
for the "config" command should start with `## config` on its own line.

### Test cases

+ The file `ex1/cheat-sheet.md` exists
+ The first line is `# Git Cheat Sheet`
+ The file contains `## config` on a single line
+ The file contains `## clone` on a single line
+ The file contains `## remote` on a single line
+ The file contains `## status` on a single line
+ The file contains `## commit` on a single line
+ The file contains `## push` on a single line
+ The file contains `## pull` on a single line
+ The file contains `## add` on a single line

Your solution must pass 10/10 test cases to get full credit for this question.

## 2. Evaluating expressions

In your terminal, change directory to the ex1 directory within your personal class repository, something like:

```
% cd csci2041/repo-user0123/ex1
```
And create a file with the name `evaluations.md` to record your answers to
this problem.  Remember to run `git add evaluations.md` before you commit.

For each of the following expressions, indicate
whether OCaml will consider the expression legal or not.  If it is not
a legal expression, explain what the problem is; otherwise, present
its type and value.  Assume there are no bindings preceding these
expressions, that is, treat each expression as an independent OCaml
program.

1. `3 - 2 + 4`

2. `3.14 * 6 * 6`

3. `if 1 then 3 else 4`

4. `if 1 > 0 then 1 else "no"`

5. `let x = 42 in 42 + y`

6. `let circ d = 3.14 *. d in circ 4`

7. `let circ d = 3.14 *. d in circ, 4.0`

8. `let x = 2 in let y = x + 3 in let x = y + x in x`

9. `let z z = z ^ "z" in z "cheez"`

10.  `let x = "one" in let y = 1,x in let x = 2 in y+x`

Your solution file should include each numbered expression, followed by the Legal/Not legal decision on a new line, followed by one or more lines of "answer", as follows:

```md
1. 3 - 2 + 4
Legal
type: int
value: 5

2. 3.14 * 6 * 6
Not legal
The * operator has type int -> int -> int but 3.14 has type float
```

### Test cases
+ One for each expression above: correct Legal/Not legal label and one or more non-empty lines of explanation. (10 cases)

Your solution must pass 6/10 test cases to get full credit for this problem.


## 3. Compiling Ocaml Code

Within the `ex2041-s19/ex1` directory, there are five very similar programs, `willitcompile1.ml`,`willitcompile2.ml`,...,`willitcompile5.ml`  Copy and add these files to the `ex1` directory in your repository.  You can compile any of these files (say `willitcompile1.ml`) using `ocamlc` (or `ocamlopt`) on the command line from a CSELabs machine as follows:

```
% cd csci2041/repo-user0123/ex1
% ocamlc -o willitcompile1 willitcompile1.ml
```

Here, the `-o <NAME>` option tells the compiler what to name the executable file it will build.
If the compiler doesn't find any compile-time errors, you can run the resulting executable (e.g. `willitcompile1`) on the command line with arguments of your choice to see the output, e.g.:

```
% ./willitcompile1 ""
```

However, for this exercise, you will find that:

+ One of the programs won't compile because of a syntax error.

+ Two of the programs won't compile because of type errors.

+ One of the programs will compile, but will always crash with a run-time error.

+ One of the programs will "work" (but it doesn't do something very interesting)

### Find the syntax error

After attempting to compile all five of the files, you'll know which file belongs to which of the categories above.  In your `ex1` directory, create a file named `syntax.txt` that has exactly three lines:
- The first line has the name of the OCaml file with a syntax error (e.g. `willitcompileN.ml`)
- The second and third lines are the output of `ocamlc` from compiling this file.

Make sure you add `syntax.txt` to your repo.

### Type errors in the "right" place

For one of the files with a type error, the compiler will report a type error on the line of the file that is different from the other files.  In your `ex1` directory, create a file named `rightline.txt` that has exactly four lines:
- The first line has the name of the Ocaml file with this type error.
- The next 3 lines are the output of `ocamlc` from compiling this file.

Make sure you add `rightline.txt` to your repo.

### Type errors in the wrong place

For the other file with a type error, the compiler notices a problem in a slightly different place than the "mistake" is, reporting an error on a line of the file that is the same as it is in the working version. In your `ex1` directory, create a file named `wrongline.txt` that has four lines:
- The first line is just the name of the Ocaml file with this type error.
- The next 3 lines are the output of `ocamlc` from compiling this file.

Make sure you add `wrongline.txt` to your repo.

### A runtime error

One of the two versions of the file that *compiles* without errors will *always* produce an error when it is executed.  In your `ex1` directory, create a file named `runtime.txt` that has two lines:
- The first line is the name of the Ocaml file that produces an error when run
- The second line is the error output when the program is run with no command-line arguments

Make sure you add `runtime.txt` to your repo.

### Test cases

+ `ex1/syntax.txt` exists
+ `ex1/syntax.txt` contains the correct program name and compiler output
+ `ex1/rightline.txt` exists
+ `ex1/rightline.txt` contains the correct program name and compiler output
+ `ex1/wrongline.txt` exists
+ `ex1/wrongline.txt` contains the correct program name and compiler output
+ `ex1/runtime.txt` exists
+ `ex1/runtime.txt` contains the correct progam name and error output.

Your solution must pass 5/8 test cases to get full credit for this problem.
