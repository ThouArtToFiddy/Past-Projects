type 'a lazylist = LzCons of 'a * 'a lazylist lazy_t | EmptyLL
let (@@) h t = LzCons(h,t)

let rec lztake n ll = match (n,ll) with
| (0,_) | (_,EmptyLL) -> []
| (_,LzCons(h,t)) -> h::(lztake (n-1) (Lazy.force t))

let rec eq_ll l1 l2 = match (l1,l2) with
| (EmptyLL,EmptyLL) -> true
| (_,EmptyLL) | (EmptyLL,_) -> false
| (LzCons(h1,t1), LzCons(h2,t2)) -> (h1=h2) && (eq_ll (Lazy.force t1) (Lazy.force t2))

let rec lzmerge lst1 lst2 = match (lst1,lst2) with
| (EmptyLL,ll) | (ll,EmptyLL) -> ll
| (LzCons(h1,t1), LzCons(h2,t2)) -> h1 @@ lazy(h2 @@ lazy(lzmerge (Lazy.force t1) (Lazy.force t2)))

let rec lzfilter f = function
| EmptyLL -> EmptyLL
| LzCons(h,lazy(t)) -> if (f h) then h @@ lazy(lzfilter f t)
  else lzfilter f t

let rec lzdouble s = lzmerge s s

let rec lznats n = n @@ lazy(lznats (n+1))

let lzfibs = let rec fibhelp f0 f1 = f0 @@ lazy(fibhelp f1 (f0+f1))
  in fibhelp 0 1

let lzfact = let rec fact_h n a = (n*a) @@ lazy(fact_h (n+1) (n*a))
  in fact_h 1 1

let rec lzrepeat s = s @@ lazy(lzrepeat s)
(* put your lazylist functions right here: *)

let lzmap (f : 'a -> 'b) (ll : 'a lazylist) =
let rec map_h f ll = match ll with
| EmptyLL -> EmptyLL
| LzCons(h,lazy(t)) -> (f h) @@ lazy (map_h f t)
in map_h f ll

let lz_odds (ll : 'a lazylist) =
let rec odds_h ll i = match ll with
| EmptyLL -> EmptyLL
| LzCons(h,lazy(t)) -> if i mod 2 = 1 then
  h @@ lazy (odds_h t (i+1))
  else odds_h t (i+1)
in odds_h ll 0



let lz_natpairs ((m,n) : int * int) =
let rec nats_h (m,n) = (m,n) @@ lazy(if n = 0 then nats_h (0,m+1) else nats_h ((m+1),(n-1)) )


in nats_h (m,n)

let pal_check (s : string) = false
let lz_bstrings (s1 : string) (s2 : string) = EmptyLL
let lz_palindromes (s1: string) (s2: string) = EmptyLL
