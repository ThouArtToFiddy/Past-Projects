## Types Review

1. `raise 3`
    Type: Error
    Explanation: raise expects exn but got an int

2. `try float_of_int (3/0) with _ -> infinity`
    Type: float
    Explanation: results in a Division_by_zero which will turn into infinity, which is a float

3. `let rec any p = function [] -> [] | h::t -> (p h) || (any p t) in any`
    Type: Error
    Explanation: any's base case results in [], but it compares booleans, so it should be false instead of []

4. `let rec flip x y = flip y x in (flip 2)`
    Type: int -> 'a
    Explanation: it will result in an infinite loop if another input is added, but it is a valid function

5. `let rec mop b f = function [] -> [] | h::t -> if b then ((f h)::(mop false f t)) else (mop true f t) in mop`
    Type: bool -> ('a -> 'b) -> 'a list -> 'b list
    Explanation: it is a function that maps f to every other element in the input function

6. `let rec pam f = function [] -> [] | h::t -> (pam f t)::(f h) in pam`
    Type: Error
    Explanation: pam tries to cons a list onto an element

7. `let rec dlof f = function [] -> f None None | h::t -> f (Some h) (Some (dlof f t)) in dlof`
    Type: ('a option -> 'b option-> 'b) -> 'a list -> 'b
    Explanation: takes each element of a list and applies the function f to each and or

8. `try (Invalid_argument "3") with _ -> Not_found`
    Type: exn
    Explanation: Invalid_argument "3" is a valid statement, which does not raise an exception to go to Not_found
