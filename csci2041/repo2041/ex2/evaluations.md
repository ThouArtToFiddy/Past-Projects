1. fun s -> match s with (x,[]) -> x | (_,h::t) -> h
Legal
type:  'a * 'a list -> 'a = <fun>
value: <fun>

2. let rec drip n x = match (n,x) with (0,_) -> [] | (h,t) -> drip (h-1,t) in drip
Not legal
This expression has type 'a * 'b but an expression was expected of type int

3. match [3] with h::t -> t::5
Not legal
Cannot attach a list to an int.

4. [1; 17; [1;3]]
Not legal
Cannot have different data types inside a list

5. [[]; ["hi"]; [":)"; ":("; "(o:)3"]]
Legal
type: string list list
value: [[]; ["hi"]; [":)"; ":("; "(o:)3"]]

6. let rec odds ls = match ls with [] -> [] | h::[] -> [h] | h::_::t -> h::(odds t) in odds [1;2;4;8]
Legal
type: int list
value: [1; 4]
