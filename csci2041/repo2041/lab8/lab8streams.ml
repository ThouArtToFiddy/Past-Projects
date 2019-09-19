type 'a stream = Cons of 'a * (unit -> 'a stream)
type 'a lazylist = End | Lz of 'a * 'a lazylist lazy_t

let rec take_s n s = match (n,s) with
  | (0,_) -> []
  | (_,Cons(h,t)) -> h::(take_s (n-1) (t ()))

let rec lztake n ll = match(n,ll) with
  | (0,_) | (_,End) -> []
  | (_,Lz(h,t)) -> h::(lztake (n-1) (Lazy.force t))

(* your definition of ustrings goes here: *)
let ustring_s (s : string) =
	let rec ustring_h s a = Cons (a , fun () -> ustring_h s (a^s))
in ustring_h s ""


(* Add definitions for drop_while_s and take_until_s here: *)
let take_until_s s f =
let rec take_h s f = match s with
| Cons (a, b) -> if (f a) then [] else a :: (take_h  (b ()) f)
in take_h s f

(* now add lz_ustring and lztake_until here: *)
let lz_ustring s =
	let rec lzstring_h s a = Lz (a , lazy (lzstring_h s (a^s)))
	in lzstring_h s ""

let lz_take_until s f =
let rec lztake_h s f = match s with
| Lz (a, b) -> if (f a) then [] else a :: (lztake_h (Lazy.force b) f)
| End -> []
in lztake_h s f
