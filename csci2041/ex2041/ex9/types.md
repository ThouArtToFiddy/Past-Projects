## Types Review

1. `raise 3`
    Type:
    Explanation:

2. `try float_of_int (3/0) with _ -> infinity`
    Type:
    Explanation:

3. `let rec any p = function [] -> [] | h::t -> (p h) || (any p t) in any`
    Type:
    Explanation:

4. `let rec flip x y = flip y x in (flip 2)`
    Type:
    Explanation:

5. `let rec mop b f = function [] -> [] | h::t -> if b then ((f h)::(mop false f t)) else (mop true f t) in mop`
    Type:
    Explanation:

6. `let rec pam f = function [] -> [] | h::t -> (pam f t)::(f h) in pam`
    Type:
    Explanation:

7. `let rec dlof f = function [] -> f None None | h::t -> f (Some h) (Some (dlof f t)) in dlof`
    Type:
    Explanation:

8. `try (Invalid_argument "3") with _ -> Not_found`
    Type:
    Explanation:
