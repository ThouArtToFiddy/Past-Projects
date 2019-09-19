1. `any`
type: ('a -> bool) -> 'a list -> bool
p is a function that turns 'a into a bool, and is passed into any in order to determine if the list has at least 1 that satisfies p

2. `exclude`
type: ('a -> bool) -> 'a list -> 'a list
exclude skips any 'a that passes the conditional function p and returns a list of rejects.

3. `acc2`
type: ('a -> 'b -> 'c -> 'a) -> 'a -> 'b list -> 'c list -> 'a
function f takes an accumulator of type 'a and two other 'b and 'c and continuously applies f until either lists run out of elements.

4. `red`
type: ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b
function f takes in a 'a and a 'b and returns another 'b and f is applied to each element in a 'a list resulting in 'b.
