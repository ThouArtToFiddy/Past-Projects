1. let x = 17 in let f () = x in let x = "nested" in f
type: unit -> int
when f is bound in the first nested let expression, x is bound to 17, which has type int.

2. let rec funny = fun x -> funny (x+1) in funny
type: int -> 'a
funny is given type 'b -> 'a by Ocaml, and applying (+) to x means 'b = int.

3. let (<<|) f g = fun x -> g (f x) in int_of_string <<| string_of_int
type: string -> string
x is turned by string_of_int to an int, then back to string by int_of_string

4. let s f g = fun x -> (f x) (g x) in s
type: ('a -> 'b -> 'c) -> ('a -> 'b) -> 'a -> 'c
s is assigned ('a -> 'b -> 'c) which is passed to f and then g

5. let rec red f x y = match x with | [] -> y | x'::xs -> f x' (red f xs y) in red
type: ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b
red is taken in and has the function f applied to it, which will result in 'b

6. let c f g = fun x -> if (f x) then true else (g x) in c ((=) 10)
type: (int -> bool) -> int -> bool
input is compared to int, resulting in a bool, or it is compared by g still resulting in bool

7. let swap f x y = f y x in swap (^) "!" 
type: string -> string
the ^ operator is the string concatenator and "!" is also a string.

8. fun f g -> function [] -> [] | h::t -> (f h)::(g t)
type: ('a -> 'b) -> ('a list -> 'b list) -> 'a list -> 'b list
input has 'a type and has the function f : 'a -> 'b applied to each element, resulting in 'b list
