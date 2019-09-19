(* Turning a string into a regular expression *)

(* Tokens (substrings that make up regular expressions) *)
type tok = LP | RP | U | DOT | Ch of char

(* turn a string into a list of regex tokens *)
let rec tokenize st i =
  if String.length st = i then []
  else if st.[i] = '\\' then read_escape st (i+1)
  else (match st.[i] with '.' -> DOT | c -> Ch c)::(tokenize st (i+1))
and read_escape st i =
  if String.length st = i then failwith "trailing backslash"
  else (match st.[i] with '(' -> [LP]
    | ')' -> [RP]
    | '|' -> [U]
    | '.' | '[' | ']' -> [Ch st.[i]]
    | c -> [Ch '\\'; Ch c]) @ (tokenize st (i+1))

type regexp = Union of regexp * regexp
| Concat of regexp * regexp
| Char of char
| Wild
| NullSet (* matches no strings at all *)


(* parse a list of tokens into a regexp *)
(* each function takes a list of tokens, tries to parse a kind of regex from the list,
  and returns the list of unused tokens *)
let rec
  (* parse a "Base" Case regexp: Empty, NullSet, Bracket, Wild, or Char *)
  parse_base_case token_list = match token_list with
  | [] -> (NullSet, [])
  | DOT::tl -> (Wild,tl)
  | LP::tl -> let (re,tl') = parse_regex tl in
    (match tl' with RP::tl'' -> (re,tl'')
    | _ -> failwith "expected close paren")
  | (Ch c)::tl -> (Char c,tl)
  | _ -> failwith "unexpected token"
and
  term_helper tl re = match tl with (* parse a "factor" in a regex of the form r1 r2 (r3 ...) *)
  | RP::tl' -> (re,tl)
  | U::tl' -> (re,tl)
  | [] -> (re,[])
  | _ -> let (re_next,tl') = parse_base_case tl in
    term_helper tl' (Concat (re,re_next))
and
  parse_terms tl = match parse_base_case tl with (* parse a regex in the form r1 r2 (r3...) *)
  | (t,RP::tl') -> (t, RP::tl')
  | (t,U::tl') -> (t, U::tl')
  | (t,[]) -> (t, [])
  | (t,tl')-> term_helper tl' t
and
  regex_helper tl re = (* helper for parsing union of terms *)
    let (t_next,tl') = parse_terms tl in match tl' with
    | U::tl'' -> regex_helper tl'' (Union (re,t_next))
    | _ -> (Union (re, t_next), tl')
and parse_regex tl = match parse_terms tl with (* parse a regex *)
  | (t,U::tl') -> regex_helper tl' t
  | (t,tl') -> t,tl'

let rex_parse s =
  let n = String.length s in
  let s' = if n > 1 && s.[0] = '^' then String.sub s 1 (n-1) else (".*"^s) in
  let n' = String.length s' in
  let s'' = if n' > 1 && s'.[n'-1] = '$' then String.sub s' 0 (n'-1) else (s'^".*") in
  let tok_list = tokenize s'' 0 in
  match parse_regex tok_list with
  | (re,[]) -> re
  | _ -> failwith ("regular expression string "^s^" is unbalanced")


(* Check if an exploded string matches a regex -  a helper function *)
(* uses "continuation"-style search: k is a "continuation function" that
   checks the rest of the string *)
let rec re_match re s k = match (re,s) with
  (* If the first character matches Char c, continue checking the rest of the string with k *)
  | (Char c, []) -> false
  | (Char c, c2::t) -> (c=c2) && (k t)
  (* Wild always eats a char *)
  | (Wild, []) -> false
  | (Wild, _::t) -> (k t)
  (* Check r1|r2 by first continuing with r1, and if that fails, continue with r2 *)
  | (Union (r1,r2), _) -> (re_match r1 s k) || (re_match r2 s k)
  (* Check r1 r2 by checking r1, and if that succeeds, "continue" with r2 *)
  | (Concat (r1,r2), _) -> (re_match r1 s (fun s' -> re_match r2 s' k))
  | NullSet, _ -> false

let explode s =
  let n = String.length s in
  let rec exphelp i acc =
    if i = n then acc else exphelp (i+1) (s.[i]::acc)
  in List.rev (exphelp 0 [])

(* given a regexp and string, decide if the string matches *)
let regex_match r s =
  re_match r (explode s) ((=) [])

(* Common ocaml idiom: other files will call the regexp type RegExpr.t *)
type t = regexp