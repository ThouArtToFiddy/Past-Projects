(* data type to represent an infinite data object in a "lazy" fashion *)
type 'a stream = Cons of 'a * (unit -> 'a stream)
| End

(* Some utility functions for streams *)
let hd (Cons(h,t)) = h
let tl (Cons(h,t)) = t ()

let rec take_s n s = match (n,s) with
| (0,_) | (_,End) -> []
| (_,Cons(h,t)) -> h::(take_s (n-1) (t ()))

let rec merge s1 s2 = match (s1,s2) with
| (End, _) -> s2
| (_, End) -> s1
| _ -> Cons(hd s1, fun () -> Cons(hd s2, fun () -> merge (tl s1) (tl s2)))

let rec filter_s p = function
| End -> End
| Cons(h,t) -> if (p h) then Cons(h, fun () -> filter_s p (t ()))
  else filter_s p (t ())

let double s = merge s s

(* Some streams we have seen in lecture *)
let rec nats n = Cons(n, fun () -> nats (n+1))
let fibs = let rec fib_help f0 f1 = Cons(f0, fun () -> fib_help f1 (f0+f1))
	in fib_help 0 1
let factorials = let rec fact_help n a = Cons(n*a, fun () -> fact_help (n+1) (n*a))
	in fact_help 1 1

let rec repeating s = Cons(s, fun () -> repeating s)
(* Your solutions go here: *)

let rec map_s (f : 'a -> 'b) (s : 'a stream) = match s with
| Cons (h,t) -> Cons (f h , fun () -> map_s f (t ()))
| End -> End


let odds_s (s : 'a stream) =
let rec helper s i = match s with
| Cons (h,t) -> if i mod 2 = 1
  then Cons (h , fun () -> helper (t ()) (i+1))
  else helper (t() ) (i+1)
| End -> End
in helper s 0


let rec natpairs ((m,n) : int * int) = Cons ((m,n), fun () ->
if n = 0 then natpairs (0,m+1)
else natpairs ((m+1),(n-1))
)


let rec pal_check (s : string) = let s = String.uppercase_ascii s in
if String.length s < 2  then true
else if String.get s 0 != String.get s ((String.length s)-1) then false
else pal_check (String.sub s 1 (String.length s - 2))

let rec bstrings_s (s1 : string) (s2 : string) = End

let rec palindromes (s1 : string) (s2 : string) = End
